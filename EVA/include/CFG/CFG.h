/**
 * CFG.h:
 *      @Descripiton    :   The CFG definition
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */
#ifndef CFG_H
#define CFG_H

#include <include/llvm/LLVM.h>

namespace EVA {

struct CFGNode;

/**
 * The branch basic class of the CFG edge
 */
class CFGEdge {
public:
    virtual ~CFGEdge() = default;

    /**
     * Judging whether this edge is an if-styled edge
     * @return If the function returning true, it is an if-styled edge
     */
    virtual bool IsIf() = 0;

    /**
     * Judging whether this edge is a switch-styled edge
     * @return If the function returning true, it is a switch-styled edge
     */
    virtual bool IsSwitch() = 0;
};

/**
 * The if-styled edge of the CFG, which only provide two branches
 */
class CFGIfEdge : public CFGEdge {
public:
    bool IsIf() override {
        return true;
    }

    bool IsSwitch() override {
        return false;
    }

public:
    llvm::Value *Condition;
    CFGNode *    TrueBlock;
    CFGNode *    FalseBlock;
};

/**
 * The switch-styled edge of the CFG, which has mutiple cases
 */
class CFGSwitchEdge : public CFGEdge {
public:
    bool IsIf() override {
        return false;
    }

    bool IsSwitch() override {
        return true;
    }

public:
    std::vector<std::pair<llvm::Value *, CFGNode *> > Cases;
};

/**
 * The CFG node structure in EVA
 */
struct CFGNode {
    /**
     * The successor set of the node
     */
    CFGEdge *Edge;

    /**
     * The block of the node
     */
    llvm::BasicBlock *Block;
};

/**
 * The alias of the CFGNode pointer, which is used just for free coding
 */
using CFGStartNode = CFGNode *;
}

#endif //CFG_H
