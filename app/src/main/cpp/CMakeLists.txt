cmake_minimum_required(VERSION 3.22.1)
project("native-tool")

set(LIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty)

# 4. 添加头文件路径
include_directories(${LIB_PATH}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/LibRaw)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo/src)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/libjpeg-turbo)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../../../../rawtherapee-5.12/rtengine)

file(GLOB JXL_LIBS "${LIB_PATH}/lib/${ANDROID_ABI}/*.a")

# 启用 OpenMP
find_package(OpenMP REQUIRED)

# --- Shaders Compilation ---
# Find glslc (more modern) or glslangValidator in NDK
find_program(GLSL_COMPILER 
    NAMES glslc glslangValidator 
    HINTS "${ANDROID_NDK}/shader-tools/${ANDROID_HOST_TAG}"
          "${ANDROID_NDK}/prebuilt/${ANDROID_HOST_TAG}/bin"
)

if(NOT GLSL_COMPILER)
    message(WARNING "GLSL compiler (glslc or glslangValidator) not found in NDK. Shaders will not be compiled!")
endif()

set(SHADER_SOURCES
    shaders/accumulate.comp
    shaders/align_tiles.comp
    shaders/build_pyramid.comp
    shaders/normalize.comp
    shaders/accumulate_raw.comp
    shaders/normalize_raw.comp
    shaders/structure_tensor.comp
    shaders/align_lk.comp
    shaders/raw_structure_tensor.comp
    shaders/robustness_raw.comp
    shaders/green_scatter_raw.comp
    shaders/normalize_green_hr.comp
    shaders/color_scatter_raw.comp
    shaders/normalize_color_hr.comp
    shaders/yuv_to_rgba.comp
)

set(GENERATED_SHADER_HEADERS "")
foreach(SHADER_PATH ${SHADER_SOURCES})
    get_filename_component(SHADER_NAME ${SHADER_PATH} NAME)
    set(HEADER_PATH "${CMAKE_CURRENT_BINARY_DIR}/generated_shaders/${SHADER_NAME}.h")
    
    # Sanitize variable name: replace . and - with _
    string(REPLACE "." "_" VAR_NAME_BASE ${SHADER_NAME})
    string(REPLACE "-" "_" VAR_NAME "${VAR_NAME_BASE}_spv")
    
    add_custom_command(
        OUTPUT ${HEADER_PATH}
        COMMAND ${CMAKE_COMMAND} -E make_directory "${CMAKE_CURRENT_BINARY_DIR}/generated_shaders"
        COMMAND ${GLSL_COMPILER} --target-env=vulkan1.2 "${CMAKE_CURRENT_SOURCE_DIR}/${SHADER_PATH}" -o "${HEADER_PATH}.spv"
        COMMAND ${CMAKE_COMMAND} -DINPUT_FILE=${HEADER_PATH}.spv -DOUTPUT_FILE=${HEADER_PATH} -DVAR_NAME=${VAR_NAME} -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/bin2c.cmake"
        DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/${SHADER_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake/bin2c.cmake"
        COMMENT "Compiling and converting shader ${SHADER_NAME}"
    )
    list(APPEND GENERATED_SHADER_HEADERS ${HEADER_PATH})
endforeach()

# Add a target for shaders
add_custom_target(compile_shaders DEPENDS ${GENERATED_SHADER_HEADERS})
include_directories("${CMAKE_CURRENT_BINARY_DIR}/generated_shaders")

# LibRaw sources
file(GLOB_RECURSE LIBRAW_SOURCES LibRaw/src/*.cpp LibRaw/src/*.c)
list(FILTER LIBRAW_SOURCES EXCLUDE REGEX ".*_ph\\.cpp$")

# 6. 将你的 native 库链接到 libyuv
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O3 -ffast-math")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O3 -ffast-math")
set(REQUIRE_SIMD ON CACHE BOOL "Require SIMD" FORCE)
set(WITH_SIMD ON CACHE BOOL "Enable SIMD" FORCE)
add_subdirectory(libjpeg-turbo)
add_library(my-native-lib SHARED 
    native-lib.cpp
    yuv_utils.cpp
    jxl_utils.cpp
    stacking_utils.cpp
    lut_processor.cpp
    vulkan_manager.cpp
    vulkan_utils.cpp
    vulkan_stacker.cpp
    vulkan_raw_stacker.cpp
    ${LIBRAW_SOURCES}
    ${GENERATED_SHADER_HEADERS}
)
add_dependencies(my-native-lib compile_shaders)

# 启用优化和 OpenMP
target_compile_definitions(my-native-lib PRIVATE VK_USE_PLATFORM_ANDROID_KHR LIBRAW_USE_OPENMP)
target_compile_options(my-native-lib PRIVATE -O3 -ffast-math -w ${OpenMP_CXX_FLAGS})

target_link_libraries(
    my-native-lib
    ${JXL_LIBS}
    turbojpeg-static
    OpenMP::OpenMP_CXX
    log
    jnigraphics
    android
    vulkan
)
