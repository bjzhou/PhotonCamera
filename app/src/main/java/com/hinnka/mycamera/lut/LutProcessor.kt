package com.hinnka.mycamera.lut

object LutProcessor {
    init {
        try {
            System.loadLibrary("my-native-lib")
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    external fun resampleLutNative(srcData: ShortArray, size: Int, curveType: Int): ShortArray?
}
