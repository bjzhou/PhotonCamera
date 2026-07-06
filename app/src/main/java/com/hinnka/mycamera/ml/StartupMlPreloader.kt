package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.data.AiFocusTargetMode
import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

object StartupMlPreloader {
    private const val TAG = "StartupMlPreloader"

    suspend fun preloadForStartup(context: Context, preferences: UserPreferences) = withContext(Dispatchers.Default) {
        val appContext = context.applicationContext
        StartupTrace.mark(
            "StartupMlPreloader.preloadForStartup start",
            "useRaw=${preferences.useRaw}, defaultVirtualAperture=${preferences.defaultVirtualAperture}, aiFocus=${preferences.aiFocusTargetMode}"
        )

        if (preferences.useRaw || preferences.defaultVirtualAperture > 0f) {
            prewarm("DepthEstimator") {
                SharedDepthEstimator.prewarm(appContext)
            }
        } else {
            PLog.d(TAG, "Skip DepthEstimator preload")
        }

        if (preferences.aiFocusTargetMode != AiFocusTargetMode.OFF) {
            prewarm("YoloXObjectDetector") {
                SharedYoloXObjectDetector.prewarm(appContext)
            }
            prewarm("FaceDetLiteFocusDetector") {
                SharedFaceDetLiteFocusDetector.prewarm(appContext)
            }
        } else {
            PLog.d(TAG, "Skip AI focus detector preload")
        }

        StartupTrace.mark("StartupMlPreloader.preloadForStartup end")
    }

    private suspend fun prewarm(name: String, block: suspend () -> Unit) {
        val startMs = System.currentTimeMillis()
        try {
            StartupTrace.measure("StartupMlPreloader.$name") {
                block()
            }
            PLog.d(TAG, "$name preloaded, took=${System.currentTimeMillis() - startMs}ms")
        } catch (e: Exception) {
            PLog.e(TAG, "$name preload failed", e)
        }
    }
}
