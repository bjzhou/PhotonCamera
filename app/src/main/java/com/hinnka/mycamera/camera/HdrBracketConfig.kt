package com.hinnka.mycamera.camera

import kotlin.math.pow
import kotlin.math.roundToInt
import kotlin.math.roundToLong

internal object HdrBracketConfig {
    const val YUV_LONG_EV = 2.2f
    const val YUV_SHORT_EV = -1.5f
    const val YUV_LONG_MAX_SHUTTER_NS = 10_000_000L

    fun planManualExposure(
        baseIso: Int,
        baseShutterNs: Long,
        evOffset: Float,
        isoLower: Int,
        isoUpper: Int,
        shutterLowerNs: Long,
        shutterUpperNs: Long,
    ): Pair<Int, Long> {
        val multiplier = 2.0.pow(evOffset.toDouble())
        val targetProduct = baseIso.toDouble() * baseShutterNs.toDouble() * multiplier
        val effectiveShutterUpperNs = if (evOffset > 0f) {
            minOf(shutterUpperNs, YUV_LONG_MAX_SHUTTER_NS).coerceAtLeast(shutterLowerNs)
        } else {
            shutterUpperNs
        }
        val shutterFirst = (baseShutterNs.toDouble() * multiplier)
            .roundToLong()
            .coerceIn(shutterLowerNs, effectiveShutterUpperNs)
        val isoForShutter = (targetProduct / shutterFirst.toDouble())
            .roundToInt()
            .coerceIn(isoLower, isoUpper)
        val shutterForIso = (targetProduct / isoForShutter.toDouble())
            .roundToLong()
            .coerceIn(shutterLowerNs, effectiveShutterUpperNs)

        return Pair(isoForShutter, shutterForIso)
    }
}
