cmake_minimum_required(VERSION 3.22.1)
project("native-tool")

set(ADOBE_DNG_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/dng_sdk/source)
set(ADOBE_XMP_STUB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/XMPStub/include)
set(ULTRAHDR_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libultrahdr)
option(PHOTON_ENABLE_DNG_JXL "Enable Adobe DNG SDK JPEG XL support" OFF)

# 4. 添加头文件路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/LibRaw)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo/src)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/libjpeg-turbo)
include_directories(${ULTRAHDR_SOURCE_DIR})
include_directories(${ADOBE_DNG_SOURCE_DIR})
include_directories(${ADOBE_XMP_STUB_DIR})

# 启用 OpenMP
find_package(OpenMP REQUIRED)
find_package(Threads REQUIRED)

# LibRaw sources
file(GLOB_RECURSE LIBRAW_SOURCES LibRaw/src/*.cpp LibRaw/src/*.c)
list(FILTER LIBRAW_SOURCES EXCLUDE REGEX ".*_ph\\.cpp$")
file(GLOB ADOBE_DNG_SOURCES "${ADOBE_DNG_SOURCE_DIR}/*.cpp")
list(FILTER ADOBE_DNG_SOURCES EXCLUDE REGEX ".*/dng_validate\\.cpp$")
file(GLOB ULTRAHDR_CORE_SOURCES "${ULTRAHDR_SOURCE_DIR}/lib/src/*.cpp")
file(GLOB ULTRAHDR_NEON_SOURCES "${ULTRAHDR_SOURCE_DIR}/lib/src/dsp/arm/*.cpp")
file(
    GLOB_RECURSE
    ULTRAHDR_IMAGE_IO_SOURCES
    "${ULTRAHDR_SOURCE_DIR}/third_party/image_io/src/*.cc"
)

if(PHOTON_ENABLE_DNG_JXL)
    list(FILTER ADOBE_DNG_SOURCES EXCLUDE REGEX ".*/dng_jxl_disabled\\.cpp$")
else()
    list(FILTER ADOBE_DNG_SOURCES EXCLUDE REGEX ".*/dng_jxl\\.cpp$")
endif()

# 6. 将你的 native 库链接到 libyuv
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O3 -ffast-math")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O3 -ffast-math")
set(REQUIRE_SIMD ON CACHE BOOL "Require SIMD" FORCE)
set(WITH_SIMD ON CACHE BOOL "Enable SIMD" FORCE)
add_subdirectory(libjpeg-turbo)
add_library(
    ultrahdr-static
    STATIC
    ${ULTRAHDR_CORE_SOURCES}
    ${ULTRAHDR_NEON_SOURCES}
    ${ULTRAHDR_IMAGE_IO_SOURCES}
)
target_include_directories(
    ultrahdr-static
    PRIVATE
    ${ULTRAHDR_SOURCE_DIR}/lib/include
    ${ULTRAHDR_SOURCE_DIR}/third_party/image_io/includes
    ${ULTRAHDR_SOURCE_DIR}/third_party/image_io/src/modp_b64
    ${ULTRAHDR_SOURCE_DIR}/third_party/image_io/src/modp_b64/modp_b64
    ${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo/src
    ${CMAKE_CURRENT_BINARY_DIR}/libjpeg-turbo
    PUBLIC
    ${ULTRAHDR_SOURCE_DIR}
)
target_compile_definitions(
    ultrahdr-static
    PRIVATE
    UHDR_ENABLE_INTRINSICS
    UHDR_WRITE_ISO
    UHDR_WRITE_XMP
)
target_compile_options(
    ultrahdr-static
    PRIVATE
    -O3
    -fno-lax-vector-conversions
)
target_link_libraries(
    ultrahdr-static
    PRIVATE
    jpeg-static
    Threads::Threads
    log
)
add_library(my-native-lib SHARED 
    native-lib.cpp
    jpeg_export_jni.cpp
    jpeg_r_encoder.cpp
    yuv_utils.cpp
    lut_processor.cpp
    dcp_parser.cpp
    ${LIBRAW_SOURCES}
    ${ADOBE_DNG_SOURCES}
)

# 启用优化和 OpenMP
target_compile_definitions(
    my-native-lib
    PRIVATE
    LIBRAW_USE_OPENMP
    qAndroid=1
    qDNGUseStdInt=1
    qDNGReportErrors=1
    qDNGXMPFiles=0
    qDNGXMPDocOps=0
    qDNGUseLibJPEG=0
    qDNGValidate=0
    qDNGValidateTarget=0
    qDNGThreadSafe=0
    PHOTON_ENABLE_DNG_JXL=$<BOOL:${PHOTON_ENABLE_DNG_JXL}>
)
target_compile_options(my-native-lib PRIVATE -O3 -ffast-math -w ${OpenMP_CXX_FLAGS})

target_link_libraries(
    my-native-lib
    turbojpeg-static
    ultrahdr-static
    OpenMP::OpenMP_CXX
    log
    jnigraphics
    android
    EGL
    GLESv3
    z
)
