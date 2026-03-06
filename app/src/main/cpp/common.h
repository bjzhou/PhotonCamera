#ifndef COMMON_H
#define COMMON_H

#include <android/log.h>
#include <chrono>

#define LOG_TAG "PLog_NativeLib"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)

#define TIME_START(name)                                                       \
//  auto start_##name = std::chrono::high_resolution_clock::now()

#define TIME_END(name)                                                         \
//  do {                                                                         \
//    auto end_##name = std::chrono::high_resolution_clock::now();               \
//    std::chrono::duration<double, std::milli> elapsed_##name =                 \
//        end_##name - start_##name;                                             \
//    LOGI("%s took %.3f ms", #name, elapsed_##name.count());                    \
//  } while (0)

#endif // COMMON_H
