/**
 * CFGBuilder.h:
 *      @Descripiton    :   Providing a CFGBuilder class to build a CFG from a llvm::Function object
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */
#ifndef CFGBUILDER_H
#define CFGBUILDER_H

#include <include/CFG/CFG.h>

namespace EVA {
/**
 * Building a CFG from a llvm::Function object
 */
class CFGBuilder {
public:
    /**
     * Constructing the CFGBuilder from a llvm:Function pointer
     * @param Function The function to build a CFG
     */
    CFGBuilder(llvm::Function *Function);

    ~CFGBuilder() = default;

public:
    /**
     * Building a CFG with the specified function
     * @return The start node of the CFG
     */
    CFGStartNode Build();

private:
    /**
     * Building a CFG node from a block
     * @param Block The block to be built
     * @param Nodes The sets of existing nodes
     * @return The CFG node of the block
     */
    CFGNode* BuildNode(llvm::BasicBlock *Block, std::vector<CFGNode *> Nodes = {});

    /**
     * Finding a node with the specified block
     * @param Block The block to be found
     * @param Nodes The sets of existing nodes
     * @return The node with the specified block, if there doesn't exist,
     * returning nullptr
     */
    CFGNode* FindNode(llvm::BasicBlock *Block, std::vector<CFGNode *> Nodes = {});

private:
    llvm::Function *_function;
};
}

#endif //CFGBUILDER_H
