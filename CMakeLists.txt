cmake_minimum_required(VERSION 3.0.0)
project(HelloCICD VERSION 0.1.0)


add_executable(HelloCICD main.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
