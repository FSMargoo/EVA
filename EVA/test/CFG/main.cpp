/**
 * main.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */

#include <include/CFG/CFGBuilder.h>

#include <sstream>
#include <format>
#include <map>

/**
 * Printing the EVA::CFGNode object
 * @param Node The node to be printed
 * @param Space The space in the front of the printed string
 */
void PrintNode(EVA::CFGNode *Node, std::map<EVA::CFGNode*, std::string> Record = {}) {
    if (Node == nullptr || Record.contains(Node)) {
        return;
    }

    std::stringstream ptrStream;
    ptrStream << "N" << (void *)Node;

    Record.insert(std::pair<EVA::CFGNode*, std::string>(Node, ptrStream.str()));

    llvm::outs() << std::format("{}[\"<pre>", ptrStream.str());
    Node->Block->print(llvm::outs());
    llvm::outs() << "</pre>\"]\n";

    if (Node->Edge != nullptr) {
        if (Node->Edge->IsIf()) {
            auto ifEdge = static_cast<EVA::CFGIfEdge*>(Node->Edge);

            if (ifEdge->FalseBlock != nullptr) {
                std::stringstream blockPtrStream;
                blockPtrStream << "N" << (void *)ifEdge->FalseBlock;

                llvm::outs() << std::format("{}-->", ptrStream.str());
                if (ifEdge->Condition != nullptr) {
                    llvm::outs() << "|\"<pre>else";
                    ifEdge->Condition->print(llvm::outs());
                    llvm::outs() << "</pre>\"|";
                }

                llvm::outs() << blockPtrStream.str() << "\n";

                PrintNode(ifEdge->FalseBlock, Record);
            }
            if (ifEdge->TrueBlock != nullptr) {
                std::stringstream blockPtrStream;
                blockPtrStream << "N" << (void *)ifEdge->TrueBlock;

                llvm::outs() << std::format("{}-->", ptrStream.str());
                if (ifEdge->Condition != nullptr) {
                    llvm::outs() << "|\"<pre>If ";
                    ifEdge->Condition->print(llvm::outs());
                    llvm::outs() << " is true</pre>\"|";
                }

                llvm::outs() << blockPtrStream.str() << "\n";

                PrintNode(ifEdge->TrueBlock, Record);
            }
        }
        if (Node->Edge->IsSwitch()) {
            auto switchEdge = static_cast<EVA::CFGSwitchEdge*>(Node->Edge);

            for (auto& caseHandle : switchEdge->Cases) {
                llvm::outs() << std::format("{}-->", ptrStream.str()) << "|\"<pre>case : ";
                caseHandle.first->print(llvm::outs());
                llvm::outs() << "</pre>\"|";

                std::stringstream blockPtrStream;
                blockPtrStream << "N" << (void *)caseHandle.second;
                llvm::outs() << blockPtrStream.str() << "\n";

                PrintNode(caseHandle.second, Record);
            }
        }
    }
}

int main() {
    auto               context = llvm::LLVMContext{};
    llvm::SMDiagnostic error;
    auto               module = llvm::parseIRFile("../EVA/sample/CFG/main.ll", error, context);

    if (module == nullptr) {
        llvm::errs() << "Failed to load LLVM module.\n" << error.getMessage() << "\n";

        return -1;
    }

    for (auto &function : *module) {
        EVA::CFGBuilder builder(&function);
        auto node = builder.Build();

        PrintNode(node);
    }

    return 0;
}
