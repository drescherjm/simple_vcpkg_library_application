cmake_minimum_required(VERSION 3.20)
cmake_policy(SET CMP0074 NEW)

set(CMAKE_CXX_STANDARD 17)

project(simple_vcpkg_library_application)

find_package(simple_vcpkg_library REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} PUBLIC LibEX::simple_vcpkg_library_LibB)