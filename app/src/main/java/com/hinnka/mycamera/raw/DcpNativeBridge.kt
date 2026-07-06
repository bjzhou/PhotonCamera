package com.hinnka.mycamera.raw

object DcpNativeBridge {
    init {
        System.loadLibrary("my-native-lib")
    }

    external fun parseDcpToJson(filePath: String): String
}
