package com.hinnka.mycamera.lut

object LutProcessor {
    @JvmStatic
    fun resampleLutNative(data: ShortArray, size: Int, curveOrdinal: Int): ShortArray? = null

    @JvmStatic
    fun resampleSizeNative(data: ShortArray, originalSize: Int, targetSize: Int): ShortArray? = null
}
