package com.hinnka.mycamera.agc

object EglOesBridge {
    init {
        System.loadLibrary("photon_oes")
    }

    @JvmStatic
    fun imageTargetTexture2DOES(target: Int, imageHandle: Long) {
        nativeImageTargetTexture2DOES(imageHandle, target)
    }

    private external fun nativeImageTargetTexture2DOES(imageHandle: Long, target: Int)
}
