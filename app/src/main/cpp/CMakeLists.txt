cmake_minimum_required(VERSION 3.18.1)
project("yuv-tool")

# 1. 设置 libyuv 的选项 (关闭测试和 JPEG 以简化编译)
set(LIBYUV_DISABLE_JPEG ON CACHE BOOL "" FORCE)
set(TEST OFF CACHE BOOL "" FORCE)

# 2. 添加 libyuv 子目录
# 假设你把源码放到了 cpp/libyuv_source
add_subdirectory(libyuv_source)

# 3. 添加 libyuv 头文件路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libyuv_source/include)

# 4. 将你的 native 库链接到 libyuv
add_library(my-native-lib SHARED native-lib.cpp)

target_link_libraries(
    my-native-lib
    yuv # libyuv 在 CMake 中定义的 target 名字通常是 'yuv'
    log
    android
)