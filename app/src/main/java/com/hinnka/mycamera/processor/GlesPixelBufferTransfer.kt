package com.hinnka.mycamera.processor

/** GLES pixel-buffer operations missing from Android's Java GLES bindings. */
internal object GlesPixelBufferTransfer {
    init {
        System.loadLibrary("my-native-lib")
    }

    /** Queues an RGBA16F upload from PBO offset zero into an existing 2D texture. */
    external fun uploadRgba16fPboToTexture(
        pixelBufferObject: Int,
        textureId: Int,
        width: Int,
        height: Int,
    ): Boolean
}
