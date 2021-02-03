message(STATUS "I am in 'src' directory")
add_library(add SHARED
            ${CMAKE_CURRENT_SOURCE_DIR}/add/MyAdd.hpp
            ${CMAKE_CURRENT_SOURCE_DIR}/add/MyAdd.cpp)
target_include_directories(add PUBLIC
                           ${CMAKE_CURRENT_SOURCE_DIR})

add_library(print SHARED
            ${CMAKE_CURRENT_SOURCE_DIR}/print/MyPrint.hpp
            ${CMAKE_CURRENT_SOURCE_DIR}/print/MyPrint.cpp)
target_include_directories(print PUBLIC
                           ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(print PUBLIC
                      CONAN_PKG::spdlog)
