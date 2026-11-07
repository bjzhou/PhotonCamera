cmake_minimum_required(VERSION 3.22.1)
project("native-tool")
enable_language(ASM)

set(ADOBE_DNG_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/dng_sdk/source)
set(ADOBE_XMP_STUB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcp/XMPStub/include)
set(ULTRAHDR_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libultrahdr)
set(
    MGC_EIS_RECONSTRUCTION_DIR
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_eis_reconstruction"
)
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
    message(
        FATAL_ERROR
        "MGC denoise capsule hash mismatch; regenerate it with "
        "scripts/research/generate_mgc_denoise_static_asm.py"
    )
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
    message(
        FATAL_ERROR
        "MGC MeasureMoire capsule hash mismatch; regenerate it with "
        "scripts/research/generate_mgc_demoire_static_asm.py"
    )
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
    MGC_RAISR_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_raisr_capsule.bin"
)
set(
    MGC_RAISR_CAPSULE_SHA256
    "d6c952ed507e340fb4e8075d7277126453d0faef35803d1add9a2e76e835f7cb"
)
if(NOT EXISTS "${MGC_RAISR_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC RAISR capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_raisr_static_asm.py"
    )
endif()
file(SHA256 "${MGC_RAISR_CAPSULE}" MGC_RAISR_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_RAISR_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_RAISR_CAPSULE_SHA256)
    message(
        FATAL_ERROR
        "MGC RAISR capsule hash mismatch; regenerate it with "
        "scripts/research/generate_mgc_raisr_static_asm.py"
    )
endif()
set(
    MGC_RAISR_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_raisr_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_raisr_static.S.in"
    "${MGC_RAISR_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_RAISR_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_RAISR_CAPSULE}"
)

set(
    MGC_POLYSHARP_CAPSULE
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_polysharp_capsule.bin"
)
set(
    MGC_POLYSHARP_CAPSULE_SHA256
    "9972245659a83ba2debc392054b3b8de95efa58f2a6eb6ae15ccd891cbb6c49c"
)
if(NOT EXISTS "${MGC_POLYSHARP_CAPSULE}")
    message(
        FATAL_ERROR
        "MGC Polysharp capsule is missing; regenerate it with "
        "scripts/research/generate_mgc_polysharp_static_asm.py"
    )
endif()
file(SHA256 "${MGC_POLYSHARP_CAPSULE}" MGC_POLYSHARP_CAPSULE_ACTUAL_SHA256)
if(NOT MGC_POLYSHARP_CAPSULE_ACTUAL_SHA256 STREQUAL MGC_POLYSHARP_CAPSULE_SHA256)
    message(
        FATAL_ERROR
        "MGC Polysharp capsule hash mismatch; regenerate it with "
        "scripts/research/generate_mgc_polysharp_static_asm.py"
    )
endif()
set(
    MGC_POLYSHARP_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_polysharp_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_polysharp_static.S.in"
    "${MGC_POLYSHARP_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_POLYSHARP_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_POLYSHARP_CAPSULE}"
)

set(
    MGC_RAISR_FILTERS
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_raisr_filters.bin"
)
set(
    MGC_RAISR_FILTERS_SHA256
    "0ace2b67b820732dd0cccebeea867521cf9144721196574918f618a1da9ed3c6"
)
set(
    MGC_RAISR_RANDOMNESS_LUT
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_raisr_randomness_lut.bin"
)
set(
    MGC_RAISR_RANDOMNESS_LUT_SHA256
    "dd3e825c6571e9371bc94c3b781b6b6a652eaeb3a1b20544a61e0f573519398b"
)
if(NOT EXISTS "${MGC_RAISR_FILTERS}")
    message(
        FATAL_ERROR
        "MGC RAISR filter bank is missing; regenerate it with "
        "scripts/research/extract_mgc_raisr_filters.py"
    )
endif()
file(SHA256 "${MGC_RAISR_FILTERS}" MGC_RAISR_FILTERS_ACTUAL_SHA256)
if(NOT MGC_RAISR_FILTERS_ACTUAL_SHA256 STREQUAL MGC_RAISR_FILTERS_SHA256)
    message(
        FATAL_ERROR
        "MGC RAISR filter bank hash mismatch; regenerate it with "
        "scripts/research/extract_mgc_raisr_filters.py"
    )
endif()
if(NOT EXISTS "${MGC_RAISR_RANDOMNESS_LUT}")
    message(
        FATAL_ERROR
        "MGC RAISR randomness LUT is missing; regenerate it with "
        "scripts/research/extract_mgc_raisr_randomness_lut.py"
    )
endif()
file(
    SHA256
    "${MGC_RAISR_RANDOMNESS_LUT}"
    MGC_RAISR_RANDOMNESS_LUT_ACTUAL_SHA256
)
if(
    NOT MGC_RAISR_RANDOMNESS_LUT_ACTUAL_SHA256
        STREQUAL MGC_RAISR_RANDOMNESS_LUT_SHA256
)
    message(
        FATAL_ERROR
        "MGC RAISR randomness LUT hash mismatch; regenerate it with "
        "scripts/research/extract_mgc_raisr_randomness_lut.py"
    )
endif()
set(
    MGC_RAISR_TABLES_ASM
    "${CMAKE_CURRENT_BINARY_DIR}/mgc_raisr_tables_static.S"
)
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/mgc_denoise_static/mgc_raisr_tables_static.S.in"
    "${MGC_RAISR_TABLES_ASM}"
    @ONLY
)
set_source_files_properties(
    "${MGC_RAISR_TABLES_ASM}"
    PROPERTIES
    GENERATED TRUE
    OBJECT_DEPENDS "${MGC_RAISR_FILTERS};${MGC_RAISR_RANDOMNESS_LUT}"
)

# These are configure-time outputs, so do not mark them GENERATED: Ninja clean
# would delete them without a build-time command to recreate them. Track them
# as configure dependencies so a missing output also causes CMake to regenerate it.
set_property(
    DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS
    "${MGC_RAISR_ASM}"
    "${MGC_RAISR_TABLES_ASM}"
    "${MGC_POLYSHARP_ASM}"
    "${MGC_DENOISE_ASM}"
    "${MGC_DEMOIRE_ASM}"
)

# 4. 添加头文件路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/LibRaw)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo/src)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/libjpeg-turbo)
include_directories(${ULTRAHDR_SOURCE_DIR})
include_directories(${ADOBE_DNG_SOURCE_DIR})
include_directories(${ADOBE_XMP_STUB_DIR})
include_directories(${MGC_EIS_RECONSTRUCTION_DIR})

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
# Fotufilm engine core (C++ port of FotufilmCore); see docs/fotufilm-rendering-engine.md.
file(GLOB FOTUFILM_CORE_SOURCES CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/fotufilm/core/*.cpp)
add_library(my-native-lib SHARED 
    ${FOTUFILM_CORE_SOURCES}
    fotufilm/fotufilm_jni.cpp
    native_runtime.cpp
    native-lib.cpp
    spektrafilm/spectral_data.cpp
    spektrafilm/spectral_filming.cpp
    spektrafilm/spectral_gamut.cpp
    spektrafilm/spectral_printing.cpp
    spektrafilm/spectral_generator.cpp
    spektrafilm/spectral_jni.cpp
    gles_gpu_timer_query_jni.cpp
    gles_hardware_buffer_jni.cpp
    dng_hdrnet_pgtm_jni.cpp
    raw_signal_stats_jni.cpp
    raw10_unpack.cpp
    raw10_unpack_jni.cpp
    raw_legacy_auto_exposure_solver.cpp
    mgc_strength_map_scaler.cpp
    mgc_eis_reconstruction_jni.cpp
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_eis_reconstruction.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_engine.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_gyro.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_lookahead.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_projection.cpp"
    jpeg_export_jni.cpp
    jpeg_r_encoder.cpp
    yuv_utils.cpp
    lut_processor.cpp
    dcp_parser.cpp
    mgc_denoise_static/mgc_halide_runtime.cpp
    mgc_denoise_static/mgc_denoise_static.cpp
    mgc_denoise_static/mgc_full_resolution_denoise_jni.cpp
    mgc_denoise_static/mgc_spatial_strength_jni.cpp
    raw_float_texture_transfer_jni.cpp
    mgc_denoise_static/mgc_raisr_jni.cpp
    mgc_denoise_static/mgc_raisr_driver.cpp
    mgc_denoise_static/mgc_polysharp_driver.cpp
    "${MGC_RAISR_ASM}"
    "${MGC_RAISR_TABLES_ASM}"
    "${MGC_POLYSHARP_ASM}"
    "${MGC_DENOISE_ASM}"
    "${MGC_DEMOIRE_ASM}"
    ${LIBRAW_SOURCES}
    ${ADOBE_DNG_SOURCES}
)

# Fotufilm mirrors Swift Float semantics: no fast-math reassociation and no FMA contraction.
set_source_files_properties(
    ${FOTUFILM_CORE_SOURCES}
    fotufilm/fotufilm_jni.cpp
    PROPERTIES COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# Spectral curves/CAM16 and model validation require IEEE NaN/Inf semantics.
set_source_files_properties(
    spektrafilm/spectral_data.cpp
    spektrafilm/spectral_filming.cpp
    spektrafilm/spectral_gamut.cpp
    spektrafilm/spectral_printing.cpp
    spektrafilm/spectral_generator.cpp
    spektrafilm/spectral_jni.cpp
    PROPERTIES COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
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

# RAW signal statistics define MGC's physical tuning coordinate, while PGTM validation must
# reliably reject non-finite values. Keep these independent of fast-math.
set_source_files_properties(
    raw_signal_stats_jni.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# The robust exposure solver relies on finite/NaN state and deterministic score comparisons.
set_source_files_properties(
    raw_legacy_auto_exposure_solver.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# The reconstructed MGC type-18 state machine relies on ordered quaternion,
# crop-feasibility and homography arithmetic. It also rejects non-finite JNI
# output. Keep that path independent of the target-wide fast-math setting.
set_source_files_properties(
    mgc_eis_reconstruction_jni.cpp
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_eis_reconstruction.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_engine.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_gyro.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_lookahead.cpp"
    "${MGC_EIS_RECONSTRUCTION_DIR}/mgc_type18_projection.cpp"
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# The MGC Halide runtime and the denoise host-side tuning/noise-model builders
# rely on scalar IEEE behavior. Keep them independent of the target-wide fast-math flags.
set_source_files_properties(
    mgc_denoise_static/mgc_halide_runtime.cpp
    mgc_denoise_static/mgc_denoise_static.cpp
    PROPERTIES
    COMPILE_OPTIONS "-fno-fast-math;-ffp-contract=off"
)

# RAISR fixed-point conversions and Polysharp kernel normalization must keep
# the original scalar float order. BlurHaloMask uses explicit FMA where the
# original Halide pipeline does, without reassociating its accumulation.
set_source_files_properties(
    mgc_denoise_static/mgc_raisr_driver.cpp
    mgc_denoise_static/mgc_polysharp_driver.cpp
    mgc_denoise_static/mgc_raisr_jni.cpp
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
