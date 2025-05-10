cmake_minimum_required(VERSION 3.31)
project(VEA)

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

add_executable(VEA
        VEA/main.cpp)
target_include_directories(VEA SYSTEM PRIVATE
        ${LLVM_INCLUDE_DIRS}
        EVA/
)
target_compile_options(VEA PRIVATE
        ${LLVM_REQUIRED_CXX_FLAGS}
)
target_link_libraries(VEA PRIVATE
        ${llvm_libs}
)