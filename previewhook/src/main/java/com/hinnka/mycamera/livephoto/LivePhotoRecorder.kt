package com.hinnka.mycamera.livephoto

import android.opengl.EGLContext
import android.opengl.EGLDisplay
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams

open class LivePhotoRecorder {
    open fun onPreviewFrame(
        textureId: Int,
        transformMatrix: FloatArray,
        width: Int,
        height: Int,
        timestampNs: Long,
        lutConfig: LutConfig?,
        params: ColorRecipeParams,
        sharedContext: EGLContext,
        sharedDisplay: EGLDisplay,
    ) {
    }
}
