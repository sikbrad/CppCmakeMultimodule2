cmake_minimum_required(VERSION 3.7.2)
project(CppCmakeMultimodule VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# include(CTest)
# enable_testing()

add_subdirectory(src)

add_executable(CppCmakeMultimodule main.cpp src/random_module/test/random_module_tester.cpp)

target_link_libraries(CppCmakeMultimodule PUBLIC random_module)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
