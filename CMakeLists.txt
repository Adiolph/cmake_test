# This project contains log, test modules
# It use conan to fulfill packages

cmake_minimum_required(VERSION 3.18)
project(MyProject VERSION 0.0)

enable_testing()

# CMAKE modules
set (CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
include(conan)
include(test)

# download and build all dependencies
conan_cmake_run(CONANFILE conanfile.txt
                BASIC_SETUP CMAKE_TARGETS
                BUILD missing
                BUILD_TYPE "Release")


add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(example)

