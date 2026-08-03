package com.hinnka.mycamera.processor

import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog

internal object RawStackRuntimeDebug {
    val enabled: Boolean
        get() = BuildConfig.DEBUG

    val debugConfig: RawStackDebugConfig
        get() = RawStackDebugConfig.forCurrentBuild()

    inline fun d(tag: String, message: () -> String) {
        if (enabled) {
            PLog.d(tag, message())
        }
    }

    inline fun i(tag: String, message: () -> String) {
        if (enabled) {
            PLog.i(tag, message())
        }
    }
}
