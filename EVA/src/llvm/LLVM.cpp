/**
 * LLVM.cpp:
 *      @Author         :   Margoo(qiuzhengyu@acm.org)
 *      @Date           :   5/10/2025
 */

#include <include/llvm/LLVM.h>

namespace EVA {
std::string LLVMAnonyExtractor::Extract(const llvm::Value *Value) {
	if (Value->hasName()) {
		return Value->getName().str();
	}

	static std::string buffer;
	static llvm::raw_string_ostream rso(buffer);

	buffer.clear();
	Value->printAsOperand(rso, false);

	return buffer;
}
}