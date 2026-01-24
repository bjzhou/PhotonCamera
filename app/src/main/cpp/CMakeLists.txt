cmake_minimum_required(VERSION 3.22.1)
project("native-tool")

set(LIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty)

# 4. 添加头文件路径
include_directories(${LIB_PATH}/include)

file(GLOB JXL_LIBS "${LIB_PATH}/lib/${ANDROID_ABI}/*.a")

# 6. 将你的 native 库链接到 libyuv
add_library(my-native-lib SHARED 
    native-lib.cpp
    dng_parser.cpp
    yuv_utils.cpp
    jxl_utils.cpp
)

# 启用优化
target_compile_options(my-native-lib PRIVATE -O3 -ffast-math)

target_link_libraries(
    my-native-lib
    ${JXL_LIBS}
    log
    jnigraphics
    android
)