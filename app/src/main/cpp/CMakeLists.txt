cmake_minimum_required(VERSION 3.22.1)
project("native-tool")
enable_language(ASM)

set(ADOBE_DNG_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/dng_sdk/source)
set(ADOBE_XMP_STUB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/XMPStub/include)
set(ULTRAHDR_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libultrahdr)
option(PHOTON_ENABLE_DNG_JXL "Enable Adobe DNG SDK JPEG XL support" OFF)

set(
    MGC_DENOISE_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_full_resolution_denoise_capsule.bin"
)
set(
    MGC_DENOISE_CAPSULE_SHA256
    "3ee5c92d2b830448de6270ec0c71ac64a484885a6bd7440d1c53f8695afc55ec"
)
if(NOT EXISTS "${MGC_DENOISE_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC denoise capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_denoise_static_asm.py"
    )
endif()
file(SHA256 "${MGC_DENOISE_CAPSULE}" MGC_DENOISE_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_DENOISE_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_DENOISE_CAPSULE_SHA256)
    message(FATAL_ERROR "MGC denoise capsule hash mismatch")
endif()
set(
    MGC_DENOISE_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_full_resolution_denoise_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_full_resolution_denoise_static.S.in"
    "${MGC_DENOISE_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_DENOISE_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_DENOISE_CAPSULE}"
)

set(
    MGC_DEMOIRE_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_demoire_capsule.bin"
)
set(
    MGC_DEMOIRE_CAPSULE_SHA256
    "769d656725b445c356b9f3e44341e101806bb201fcd2e5681c0ab92173a68c9a"
)
if(NOT EXISTS "${MGC_DEMOIRE_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC MeasureMoire capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_demoire_static_asm.py"
    )
endif()
file(SHA256 "${MGC_DEMOIRE_CAPSULE}" MGC_DEMOIRE_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_DEMOIRE_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_DEMOIRE_CAPSULE_SHA256)
    message(FATAL_ERROR "MGC MeasureMoire capsule hash mismatch")
endif()
set(
    MGC_DEMOIRE_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_demoire_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_demoire_static.S.in"
    "${MGC_DEMOIRE_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_DEMOIRE_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_DEMOIRE_CAPSULE}"
)

set(
    MGC_SABRE_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_sabre_resolve_capsule.bin"
)
set(
    MGC_SABRE_CAPSULE_SHA256
    "725c5ac2c2de63e7f17c8fb3516fe176d2387c6eed579da25e35df12588e0e69"
)
if(NOT EXISTS "${MGC_SABRE_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC Sabre Resolve capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_sabre_resolve_static_asm.py"
    )
endif()
file(SHA256 "${MGC_SABRE_CAPSULE}" MGC_SABRE_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_SABRE_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_SABRE_CAPSULE_SHA256)
    message(FATAL_ERROR "MGC Sabre Resolve capsule hash mismatch")
endif()
set(
    MGC_SABRE_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_sabre_resolve_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_sabre_resolve_static.S.in"
    "${MGC_SABRE_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_SABRE_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_SABRE_CAPSULE}"
)

set(
    MGC_SHARPEN_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_sharpen_capsule.bin"
)
set(
    MGC_SHARPEN_CAPSULE_SHA256
    "733065cfec32ac752cc2088ea284b44a55b24a6171e5829f6971dcb098b1d7ce"
)
if(NOT EXISTS "${MGC_SHARPEN_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC SharpenTo16Bit capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_sharpen_static_asm.py"
    )
endif()
file(SHA256 "${MGC_SHARPEN_CAPSULE}" MGC_SHARPEN_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_SHARPEN_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_SHARPEN_CAPSULE_SHA256)
    message(FATAL_ERROR "MGC SharpenTo16Bit capsule hash mismatch")
endif()
set(
    MGC_SHARPEN_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_sharpen_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_sharpen_static.S.in"
    "${MGC_SHARPEN_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_SHARPEN_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_SHARPEN_CAPSULE}"
)

set(
    MGC_SPATIAL_RGB_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_spatial_rgb_merge_capsule.bin"
)
set(
    MGC_SPATIAL_RGB_CAPSULE_SHA256
    "196c4fb671a4c1e0667518d334474afd6f81a35a01acfd9d385089630a58eddd"
)
if(NOT EXISTS "${MGC_SPATIAL_RGB_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC Spatial RGB Merge capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_spatial_rgb_merge_static_asm.py"
    )
endif()
file(
    SHA256
    "${MGC_SPATIAL_RGB_CAPSULE}"
    MGC_SPATIAL_RGB_CAPSULE_ACTUAL_SHA256
)
if(NOT MGC_SPATIAL_RGB_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_SPATIAL_RGB_CAPSULE_SHA256)
    message(FATAL_ERROR "MGC Spatial RGB Merge capsule hash mismatch")
endif()
set(
    MGC_SPATIAL_RGB_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_spatial_rgb_merge_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_spatial_rgb_merge_static.S.in"
    "${MGC_SPATIAL_RGB_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_SPATIAL_RGB_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_SPATIAL_RGB_CAPSULE}"
)

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
    dng_hdrnet_pgtm_jni.cpp
    mgc_strength_map_scaler.cpp
    jpeg_export_jni.cpp
    jpeg_r_encoder.cpp
    yuv_utils.cpp
    lut_processor.cpp
    dcp_parser.cpp
    mgc_denoise_static/mgc_denoise_static.cpp
    mgc_denoise_static/mgc_full_resolution_denoise_jni.cpp
    mgc_denoise_static/mgc_sabre_resolve_jni.cpp
    mgc_denoise_static/mgc_spatial_rgb_merge_jni.cpp
    mgc_denoise_static/mgc_sharpen_jni.cpp
    mgc_denoise_static/mgc_spatial_strength_jni.cpp
    "${MGC_DENOISE_ASM}"
    "${MGC_DEMOIRE_ASM}"
    "${MGC_SABRE_ASM}"
    "${MGC_SHARPEN_ASM}"
    "${MGC_SPATIAL_RGB_ASM}"
    ${LIBRAW_SOURCES}
    ${ADOBE_DNG_SOURCES}
)

# Match the former Kotlin Float bilinear path exactly at Q8 rounding boundaries.
# This host-side scaler is deliberately independent of the MGC AOT/capsule sources.
set_source_files_properties(
    mgc_strength_map_scaler.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# The HDRNet PGTM path rejects non-finite model output and follows the Kotlin
# reference interpolation order. Keep those invariants independent of fast math.
set_source_files_properties(
    dng_hdrnet_pgtm_jni.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# FinishRaw builds the sharpen curves with scalar IEEE float interpolation.
# Keep the host-side curve builder independent of the target-wide fast-math flags.
set_source_files_properties(
    mgc_denoise_static/mgc_denoise_static.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# Preserve MGC's scalar matrix and nearest-even U12 boundary conversion exactly.
set_source_files_properties(
    mgc_denoise_static/mgc_sharpen_jni.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
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
