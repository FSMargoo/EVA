/**
 * CFGBuilder.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */

#include <include/CFG/CFGBuilder.h>

namespace EVA {
CFGBuilder::CFGBuilder(llvm::Function *Function) :
    _function(Function) {
}

CFGNode *CFGBuilder::BuildNode(llvm::BasicBlock *Block, std::vector<CFGNode *> Nodes) {
    CFGNode *node      = new CFGNode();
    node->Block        = Block;
    node->Edge         = nullptr;

    Nodes.push_back(node);

    for (auto &inst: *Block) {
        if (llvm::isa<llvm::BranchInst>(inst)) {
            auto br   = llvm::dyn_cast<llvm::BranchInst>(&inst);
            auto edge = new CFGIfEdge();
            if (br->isConditional()) {
                auto trueNode  = FindNode(br->getSuccessor(0), Nodes);
                auto falseNode = FindNode(br->getSuccessor(1), Nodes);

                edge->Condition  = br->getCondition();
                edge->TrueBlock  = trueNode == nullptr ? BuildNode(br->getSuccessor(0), Nodes) : trueNode;
                edge->FalseBlock = falseNode == nullptr ? BuildNode(br->getSuccessor(1), Nodes) : falseNode;
            } else {
                auto blockNode = FindNode(br->getSuccessor(0), Nodes);

                edge->Condition  = nullptr;
                edge->TrueBlock  = blockNode == nullptr ? BuildNode(br->getSuccessor(0), Nodes) : blockNode;
                edge->FalseBlock = nullptr;
            }

            node->Edge = edge;
        }
        if (llvm::isa<llvm::SwitchInst>(inst)) {
            auto switchInst = llvm::dyn_cast<llvm::SwitchInst>(&inst);
            auto edge       = new CFGSwitchEdge();
            for (auto caseHandle: switchInst->cases()) {
                auto blockNode = FindNode(caseHandle.getCaseSuccessor(), Nodes);
                edge->Cases.emplace_back(std::pair<llvm::Value *, CFGNode *>{
                        caseHandle.getCaseValue(), blockNode == nullptr ? BuildNode(caseHandle.getCaseSuccessor()) : blockNode
                });
            }

            node->Edge = edge;
        }
    }

    return node;
}

CFGNode *CFGBuilder::FindNode(llvm::BasicBlock *Block, std::vector<CFGNode *> Nodes) {
    for (auto &node : Nodes) {
        if (node->Block == Block) {
            return node;
        }
    }

    return nullptr;
}

CFGStartNode CFGBuilder::Build() {
    if (_function->isDeclaration()) {
        return nullptr;
    }

    return BuildNode(&_function->getEntryBlock());
}

}
