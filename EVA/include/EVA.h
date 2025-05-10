/**
 * EVA.h:
 *      @Descripiton    :   The EVA main header
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */
#ifndef EVA_H
#define EVA_H

#include <include/llvm/LLVM.h>

namespace EVA {
/**
 * The analyzer class in EVA
 */
class Analyzer {
public:
    /**
     * Constructing the analyzer by the LLVM IR module
     * @param Module The LLVM IR module to be analyzed
     */
    Analyzer(llvm::Module *Module);

public:
    /**
     * Analyzing the module which was provided to the analyzer
     */
    void Analyze();

private:
    llvm::Module *_module;
};
}

#endif //EVA_H
