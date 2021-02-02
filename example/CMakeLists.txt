message(STATUS "I am in 'example' directory")
add_executable(HelloWorld HelloWorld.cpp)
target_link_libraries(HelloWorld PUBLIC 
                      print 
                      CONAN_PKG::spdlog)
