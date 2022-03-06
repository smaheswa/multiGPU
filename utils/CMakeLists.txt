set(UTILS_SRC
	${PROJECT_SOURCE_DIR}/utils/printDeviceProps.cu
)

add_library(libutils STATIC ${UTILS_SRC})
set_target_properties(libutils PROPERTIES OUTPUT_NAME utils)

target_include_directories(libutils PUBLIC ${PROJECT_SOURCE_DIR})
set_target_properties(libutils PROPERTIES CUDA_SEPARABLE_COMPILATION ON)
set_target_properties(libutils PROPERTIES CUDA_ARCHITECTURES "75;80")
