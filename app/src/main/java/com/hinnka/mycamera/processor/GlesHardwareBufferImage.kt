package com.hinnka.mycamera.processor

import android.hardware.HardwareBuffer

/** Shared EGLImage import used by capture and EIS, on the current EGL display/GL thread. */
internal object GlesHardwareBufferImage {
    init {
        System.loadLibrary("my-native-lib")
    }

    /** Owns a native buffer reference; the source Image must stay acquired until sampling ends. */
    external fun create(buffer: HardwareBuffer): Long

    /** The texture must be GL_TEXTURE_EXTERNAL_OES. Does not wait for GPU completion. */
    external fun bind(handle: Long, textureId: Int): Boolean

    /** Call after the consumer has finished sampling, before destroying the EGL display. */
    external fun destroy(handle: Long)
}
