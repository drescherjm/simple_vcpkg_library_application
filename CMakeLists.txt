cmake_minimum_required(VERSION 3.20)
cmake_policy(SET CMP0074 NEW)

set(CMAKE_CXX_STANDARD 17)

project(simple_vcpkg_library_application)

find_package(SimpleLibraryExample REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)

# Link to the target created in the simple_vcpkg_library repository!
# Notice: We link with the alias using the LibEX:: prefix.
# SimpleLibraryExample_LibB was the library created in the 
# simple_vcpkg_library repository.
target_link_libraries(${PROJECT_NAME} PUBLIC LibEX::SimpleLibraryExample_LibB)