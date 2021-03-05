message(STATUS "I am in 'test' directory")

ADD_TEST_UNIT(TestAdd 
              SOURCES TestAdd.cpp TestMain.cpp)

ADD_TEST_UNIT(TestString 
              SOURCES TestString.cpp TestMain.cpp)

# set(name TestAdd)
# add_executable(${name} TestMain.cpp TestAdd.cpp)
# target_link_libraries(${name} PRIVATE CONAN_PKG::catch2 CONAN_PKG::spdlog add)
# target_compile_options(${name} PRIVATE -g)
# target_include_directories(${name} PRIVATE "${CMAKE_SOURCE_DIR}/src")
# add_test(NAME ${name} COMMAND ${name})

# include()
# catch_discover_tests(${name})
