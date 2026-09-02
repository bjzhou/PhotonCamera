package com.hinnka.mycamera.stabilization

import android.hardware.HardwareBuffer

/** JNI boundary for Photon’s source-reconstructed MGC EIS engine. */
internal object MgcEisNativeBridge {
    init {
        System.loadLibrary("my-native-lib")
    }

    external fun create(
        width: Int,
        height: Int,
        frontFacing: Boolean,
        strength: Float,
        lookaheadFrames: Int,
    ): Long

    external fun release(handle: Long)

    external fun processGyro(
        handle: Long,
        x: Float,
        y: Float,
        z: Float,
        timestampNs: Long,
    ): Boolean

    external fun processLensOffset(
        handle: Long,
        xShiftPixels: Float,
        yShiftPixels: Float,
        timestampNs: Long,
        cameraType: Int,
    ): Boolean

    external fun processFrame(
        handle: Long,
        sourceTimestampNs: Long,
        firstRowCenterTimestampNs: Long,
        exposureTimeNs: Long,
        rollingShutterSkewNs: Long,
        inverseFocalLength: Float,
        activeWidth: Int,
        activeHeight: Int,
        cropWidth: Int,
        cropHeight: Int,
        rowHomographies: FloatArray,
        state: FloatArray,
    ): Long

    /**
     * Imports a Camera2 [HardwareBuffer] into the current EGL context as an EGLImage.
     *
     * The returned handle owns the acquired native buffer reference and must be released on the
     * same GL thread with [destroyHardwareBufferImage] after the draw that samples it.
     */
    external fun createHardwareBufferImage(buffer: HardwareBuffer): Long

    /** Binds an imported EGLImage to [textureId], which must be a GL_TEXTURE_EXTERNAL_OES. */
    external fun bindHardwareBufferImage(imageHandle: Long, textureId: Int): Boolean

    external fun destroyHardwareBufferImage(imageHandle: Long)
}
