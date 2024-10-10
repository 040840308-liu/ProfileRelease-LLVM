# This file allows users to call find_package(LLD) and pick up our targets.



find_package(LLVM REQUIRED CONFIG
             HINTS "/home/test/workspace-15/llvm/build/lib/cmake/llvm")

set(LLD_EXPORTED_TARGETS "lldCommon;lld;lldCOFF;lldELF;lldMachO;lldMinGW;lldWasm")
set(LLD_CMAKE_DIR "/home/test/workspace-15/llvm/build/lib/cmake/lld")
set(LLD_INCLUDE_DIRS "/home/test/workspace-15/llvm/lld/include;/home/test/workspace-15/llvm/build/tools/lld/include")

# Provide all our library targets to users.
include("/home/test/workspace-15/llvm/build/lib/cmake/lld/LLDTargets.cmake")
