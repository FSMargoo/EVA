cmake_minimum_required(VERSION 3.31)
project(EVA)

set(CMAKE_CXX_STANDARD 20)

# Adding the LLVM supporting
list(APPEND CMAKE_PREFIX_PATH "D:/llvm-project-llvmorg-19.1.5/llvm/cmake-build-release/lib/cmake/llvm")

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION} at ${LLVM_DIR}")

llvm_map_components_to_libnames(llvm_libs
        core
        executionengine
        native
        support
)

set(EVASource EVA/main.cpp
        EVA/include/llvm/LLVM.h
        EVA/src/llvm/LLVM.cpp
        EVA/include/EVA.h
        EVA/src/EVA.cpp
        EVA/include/CFG/CFGBuilder.h
        EVA/src/CFG/CFGBuilder.cpp
        EVA/include/CFG/CFG.h)

add_library(EVALib
        ${EVASource})

target_include_directories(EVALib SYSTEM PRIVATE
        ${LLVM_INCLUDE_DIRS}
        EVA/
)
target_compile_options(EVALib PRIVATE
        ${LLVM_REQUIRED_CXX_FLAGS}
)
target_link_libraries(EVALib PRIVATE
        ${llvm_libs}
)

add_executable(EVATestCFG EVA/test/CFG/main.cpp)
target_link_libraries(EVATestCFG EVALib)
target_include_directories(EVATestCFG SYSTEM PRIVATE
        ${LLVM_INCLUDE_DIRS}
        EVA/
)