cmake_minimum_required(VERSION 3.22.1)
project("photon-oes")

add_library(photon_oes SHARED oes_texture_jni.c)
target_link_libraries(photon_oes android log EGL GLESv2)
