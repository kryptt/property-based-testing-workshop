cmake_minimum_required (VERSION 2.8)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11")
add_executable(test main.cc)
include_directories(/usr/include/rapidcheck)
include_directories(/usr/include/gtest)
target_link_libraries(test /usr/lib/librapidcheck.a)
target_link_libraries(test /usr/lib/libgtest.a)
target_link_libraries(test pthread)
