cmake_minimum_required(VERSION 3.18 FATAL_ERROR)
if(NOT_DEFINED_CMAKE_CUDA_ARCHITECTURES)
	set(CMAKE_CUDA_ARCHITECTURES 75)
endif()

project(multiGPUs LANGUAGES CXX CUDA VERSION 0.0.1)

include(CheckLanguage)
check_language(CUDA)

if(NOT_DEFINED_CMAKE_CUDA_STANDARD)
	set(CMAKE_CUDA_STANDARD 11)
	set(CMAKE_CUDA_STANDARD_REQUIRED ON)
endif()

execute_process(
  COMMAND git rev-parse --abbrev-ref HEAD
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
  OUTPUT_VARIABLE GIT_BRANCH
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
  COMMAND git log -1 --format=%h
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
  OUTPUT_VARIABLE GIT_COMMIT_HASH
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

## configure.in information
configure_file("${CMAKE_SOURCE_DIR}/config.h.in"
				"${CMAKE_BINARY_DIR}/config.h")
## Defining the bin directory allows the "config.h" file to be used throughout
## the program
include_directories(${CMAKE_BINARY_DIR})
add_subdirectory(utils)

message(STATUS "Cuda Include directories: ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}")

add_executable(testPrint ${CMAKE_SOURCE_DIR}/src/testPrint.cpp)
target_link_libraries(testPrint PRIVATE libutils)


