package com.hinnka.mycamera.video

import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.util.Size

interface VideoRecorder {
    val targetSize: Size?

    fun isRecording(): Boolean

    fun onPreviewFrame(
        textureId: Int,
        transformMatrix: FloatArray,
        timestampNs: Long,
        sharedContext: EGLContext,
        sharedDisplay: EGLDisplay
    )
}
