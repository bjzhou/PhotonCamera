package com.hinnka.mycamera.previewhook.api

import android.hardware.HardwareBuffer
import android.util.Log
import java.util.concurrent.ConcurrentHashMap

object MgcMtkPreviewDebug {
    private val onceKeys = ConcurrentHashMap.newKeySet<String>()

    fun logOnce(tag: String, key: String, message: () -> String) {
        if (onceKeys.add("$tag|$key")) {
            Log.d(tag, message())
        }
    }

    fun describeBuffer(buffer: HardwareBuffer?): String {
        if (buffer == null) return "null"
        return runCatching {
            "fmt=${buffer.format} ${buffer.width}x${buffer.height} usage=${buffer.usage}"
        }.getOrElse { "fmt=? closedOrInvalid" }
    }

    fun invokeInt(target: Any?, methodName: String): Int? {
        if (target == null) return null
        return runCatching { target.javaClass.getMethod(methodName).invoke(target) as? Int }.getOrNull()
    }

    fun invokeBuffer(target: Any?, methodName: String): HardwareBuffer? {
        if (target == null) return null
        return runCatching { target.javaClass.getMethod(methodName).invoke(target) as? HardwareBuffer }.getOrNull()
    }
}
