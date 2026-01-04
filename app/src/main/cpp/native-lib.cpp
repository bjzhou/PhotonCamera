/**
 * native-lib.cpp
 * 
 * 使用 libyuv 实现 YUV 图像处理：旋转、裁切、转换为 ARGB
 */

#include <jni.h>
#include <android/log.h>
#include <cstring>
#include <cstdlib>
#include <algorithm>
#include "libyuv.h"

#define LOG_TAG "YuvProcessor"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" {

/**
 * 处理 YUV_420_888 图像：旋转、裁切、转换为 ARGB
 * 
 * @param yBuffer Y 平面数据
 * @param uBuffer U 平面数据
 * @param vBuffer V 平面数据
 * @param width 原始宽度
 * @param height 原始高度
 * @param yRowStride Y 平面行跨度
 * @param uvRowStride UV 平面行跨度
 * @param uvPixelStride UV 平面像素跨度
 * @param rotation 旋转角度 (0, 90, 180, 270)
 * @param targetRatio 目标宽高比 (长边/短边)
 * @return ARGB 像素数组
 */
JNIEXPORT jintArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processYuv(
        JNIEnv *env,
        jobject /* this */,
        jobject yBuffer,
        jobject uBuffer,
        jobject vBuffer,
        jint width,
        jint height,
        jint yRowStride,
        jint uvRowStride,
        jint uvPixelStride,
        jint rotation,
        jfloat targetRatio) {
    
    // 获取 buffer 指针
    auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
    auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
    auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));
    
    if (yData == nullptr || uData == nullptr || vData == nullptr) {
        LOGE("Failed to get buffer addresses");
        return nullptr;
    }
    
    LOGI("Processing YUV: %dx%d, rotation=%d, targetRatio=%.2f", 
         width, height, rotation, targetRatio);
    
    // === Step 1: 将 YUV_420_888 转换为 I420 ===
    int i420Size = width * height * 3 / 2;
    auto *i420Data = static_cast<uint8_t *>(malloc(i420Size));
    if (i420Data == nullptr) {
        LOGE("Failed to allocate I420 buffer");
        return nullptr;
    }
    
    uint8_t *i420Y = i420Data;
    uint8_t *i420U = i420Data + width * height;
    uint8_t *i420V = i420U + (width / 2) * (height / 2);
    
    // 处理 Y 平面
    if (yRowStride == width) {
        memcpy(i420Y, yData, width * height);
    } else {
        for (int row = 0; row < height; row++) {
            memcpy(i420Y + row * width, yData + row * yRowStride, width);
        }
    }
    
    // 处理 UV 平面
    int uvWidth = width / 2;
    int uvHeight = height / 2;
    
    if (uvPixelStride == 1 && uvRowStride == uvWidth) {
        // 已经是紧凑格式
        memcpy(i420U, uData, uvWidth * uvHeight);
        memcpy(i420V, vData, uvWidth * uvHeight);
    } else if (uvPixelStride == 2) {
        // NV21/NV12 交错格式
        for (int row = 0; row < uvHeight; row++) {
            for (int col = 0; col < uvWidth; col++) {
                i420U[row * uvWidth + col] = uData[row * uvRowStride + col * uvPixelStride];
                i420V[row * uvWidth + col] = vData[row * uvRowStride + col * uvPixelStride];
            }
        }
    } else {
        // 通用情况
        for (int row = 0; row < uvHeight; row++) {
            for (int col = 0; col < uvWidth; col++) {
                i420U[row * uvWidth + col] = uData[row * uvRowStride + col * uvPixelStride];
                i420V[row * uvWidth + col] = vData[row * uvRowStride + col * uvPixelStride];
            }
        }
    }
    
    // === Step 2: 旋转 I420 ===
    int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
    int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;
    
    auto *rotatedI420 = static_cast<uint8_t *>(malloc(rotatedWidth * rotatedHeight * 3 / 2));
    if (rotatedI420 == nullptr) {
        LOGE("Failed to allocate rotated I420 buffer");
        free(i420Data);
        return nullptr;
    }
    
    uint8_t *rotatedY = rotatedI420;
    uint8_t *rotatedU = rotatedI420 + rotatedWidth * rotatedHeight;
    uint8_t *rotatedV = rotatedU + (rotatedWidth / 2) * (rotatedHeight / 2);
    
    libyuv::RotationMode mode;
    switch (rotation) {
        case 90: mode = libyuv::kRotate90; break;
        case 180: mode = libyuv::kRotate180; break;
        case 270: mode = libyuv::kRotate270; break;
        default: mode = libyuv::kRotate0; break;
    }
    
    if (mode == libyuv::kRotate0) {
        // 无需旋转，直接复制
        memcpy(rotatedI420, i420Data, rotatedWidth * rotatedHeight * 3 / 2);
    } else {
        libyuv::I420Rotate(
            i420Y, width,
            i420U, width / 2,
            i420V, width / 2,
            rotatedY, rotatedWidth,
            rotatedU, rotatedWidth / 2,
            rotatedV, rotatedWidth / 2,
            width, height,
            mode
        );
    }
    
    free(i420Data);
    
    // === Step 3: 计算裁切区域 ===
    int visualWidth = rotatedWidth;
    int visualHeight = rotatedHeight;
    int finalWidth, finalHeight;
    
    // 判断是横图还是竖图
    if (visualWidth > visualHeight) {
        // 横图
        float expectedWidth = visualHeight * targetRatio;
        if (expectedWidth <= visualWidth) {
            finalHeight = visualHeight;
            finalWidth = static_cast<int>(expectedWidth);
        } else {
            finalWidth = visualWidth;
            finalHeight = static_cast<int>(visualWidth / targetRatio);
        }
    } else {
        // 竖图
        float expectedHeight = visualWidth * targetRatio;
        if (expectedHeight <= visualHeight) {
            finalWidth = visualWidth;
            finalHeight = static_cast<int>(expectedHeight);
        } else {
            finalHeight = visualHeight;
            finalWidth = static_cast<int>(visualHeight / targetRatio);
        }
    }
    
    // 确保尺寸为偶数（YUV 要求）
    finalWidth = (finalWidth / 2) * 2;
    finalHeight = (finalHeight / 2) * 2;
    
    int cropX = (rotatedWidth - finalWidth) / 2;
    int cropY = (rotatedHeight - finalHeight) / 2;
    cropX = (cropX / 2) * 2;  // 确保偶数
    cropY = (cropY / 2) * 2;
    
    LOGI("Crop: %dx%d at (%d, %d) from %dx%d", 
         finalWidth, finalHeight, cropX, cropY, rotatedWidth, rotatedHeight);
    
    // === Step 4: 裁切并转换为 ARGB ===
    int argbSize = finalWidth * finalHeight;
    auto *argbData = static_cast<uint8_t *>(malloc(argbSize * 4));
    if (argbData == nullptr) {
        LOGE("Failed to allocate ARGB buffer");
        free(rotatedI420);
        return nullptr;
    }
    
    // 计算裁切后的 Y/U/V 起始位置
    uint8_t *croppedY = rotatedY + cropY * rotatedWidth + cropX;
    uint8_t *croppedU = rotatedU + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);
    uint8_t *croppedV = rotatedV + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);
    
    // I420 to ARGB
    libyuv::I420ToARGB(
        croppedY, rotatedWidth,
        croppedU, rotatedWidth / 2,
        croppedV, rotatedWidth / 2,
        argbData, finalWidth * 4,
        finalWidth, finalHeight
    );
    
    free(rotatedI420);
    
    // === Step 5: 创建 Java int 数组并返回 ===
    // ARGB 格式：每个像素 4 字节，转换为 int
    jintArray result = env->NewIntArray(argbSize + 2);
    if (result == nullptr) {
        LOGE("Failed to create result array");
        free(argbData);
        return nullptr;
    }
    
    // 前两个元素存储宽高
    jint dimensions[2] = {finalWidth, finalHeight};
    env->SetIntArrayRegion(result, 0, 2, dimensions);
    
    // 转换 ARGB 字节为 int 数组
    auto *pixels = static_cast<jint *>(malloc(argbSize * sizeof(jint)));
    if (pixels == nullptr) {
        LOGE("Failed to allocate pixels buffer");
        free(argbData);
        return nullptr;
    }
    
    for (int i = 0; i < argbSize; i++) {
        int offset = i * 4;
        // ARGB 格式: B, G, R, A (libyuv 输出)
        uint8_t b = argbData[offset];
        uint8_t g = argbData[offset + 1];
        uint8_t r = argbData[offset + 2];
        uint8_t a = argbData[offset + 3];
        pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
    }
    
    env->SetIntArrayRegion(result, 2, argbSize, pixels);
    
    free(argbData);
    free(pixels);
    
    LOGI("YUV processing completed: output %dx%d", finalWidth, finalHeight);
    
    return result;
}

} // extern "C"
