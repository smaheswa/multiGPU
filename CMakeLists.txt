cmake_minimum_required(VERSION 3.18 FATAL_ERROR)
if(NOT_DEFINED_CMAKE_CUDA_ARCHITECTURES)
	set(CMAKE_CUDA_ARCHITECTURES 75)
endif()

project(cmake_and_cuda LANGUAGES CXX CUDA)

include(CheckLanguage)
check_language(CUDA)

if(NOT_DEFINED_CMAKE_CUDA_STANDARD)
	set(CMAKE_CUDA_STANDARD 11)
	set(CMAKE_CUDA_STANDARD_REQUIRED ON)
endif()

add_subdirectory(utils)

message(STATUS "Cuda Include directories: ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}")
add_executable(testPrint ${CMAKE_SOURCE_DIR}/src/testPrint.cpp)
target_link_libraries(testPrint PRIVATE libutils)


