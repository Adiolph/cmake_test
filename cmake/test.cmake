#################################################
#
# central macro to register unit tests in cmake
#
# 1) Simple use:
# Pass the name of the test.cc file as the first
# argument, without the ".cc" extention.
#
# Example: ADD_TEST(testSomething)
#
# This generates target testSomething from file testSomething.cc.
#
# 2) Customize sources:
# If 1) doesn't work, use the SOURCES keyword to explicitly
# specify the sources.
#
# Example: ADD_TEST(testSomething
#              SOURCES source1.cc source2.cc someheader.h)
function(FUNC_ADD_TEST)
  cmake_parse_arguments(PARSE_ARGV 1 TESTS "" "SANITIZE" "SOURCES")
  set(name ${ARGV0})

  if(NOT TESTS_SOURCES)
    message(STATUS "Only single source file")
    set(sources ${name}.cc)
  else()
    set(sources ${TESTS_SOURCES})
  endif()

  message(STATUS "name is: ${name}")
  message(STATUS "sources is: ${sources}")
  add_executable(${name} ${sources})
  target_link_libraries(${name} CONAN_PKG::catch2 CONAN_PKG::spdlog)
  target_compile_options(${name} PRIVATE -g) # do not skip asserts
  target_include_directories(${name} PRIVATE "${CMAKE_SOURCE_DIR}/src")
  file(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/test_outputs/)
  add_test(NAME ${name} COMMAND ${name} -o ${PROJECT_BINARY_DIR}/test_outputs/junit-${name}.xml -s -r junit)
endfunction()
