package com.hinnka.mycamera.video

/**
 * SurfaceTexture 的变换矩阵已经把 Camera2 buffer 转到自然显示方向，因此容器只需要记录
 * 设备相对自然方向的旋转；不能再次叠加 SENSOR_ORIENTATION。
 */
internal fun resolveSurfaceTextureVideoOrientationDegrees(
    deviceRotationDegrees: Int,
    calibrationOffsetDegrees: Int,
): Int {
    return Math.floorMod(deviceRotationDegrees + calibrationOffsetDegrees, 360)
}
