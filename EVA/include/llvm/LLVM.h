/**
 * LLVM.h:
 *      @Descripiton    :   The LLVM include collection header and provides some utilities about LLVM
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */
#ifndef LLVM_H
#define LLVM_H

#include <llvm/ADT/APFloat.h>
#include <llvm/ADT/SmallString.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Operator.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

namespace EVA {
/**
 * Extracting the anonymous ID of a llvm::Value object,
 * like the anonymous register %1, %2
 */
class LLVMAnonyExtractor {
public:
	/**
	 * Extracting the ID of a value, returning in a sensible ID in PPL
	 * @param Value The value to be extracted
	 * @return The ID of the value
	 */
	static std::string Extract(const llvm::Value *Value);
};
}

#endif //LLVM_H
