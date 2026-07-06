package com.hinnka.mycamera.ui.camera

import kotlin.math.abs

internal data class ContinuousZoomStopSettlement(
    val customZoomStop: Float?,
    val replacedStopIndex: Int,
    val originalStopRatio: Float,
    val snapZoomStop: Float?
)

internal fun settleContinuousZoomStop(
    zoomStops: List<Float>,
    zoomRatio: Float,
    snapThreshold: Float = 0.05f
): ContinuousZoomStopSettlement {
    val closestIndex = zoomStops.indices.minByOrNull { abs(zoomStops[it] - zoomRatio) } ?: -1
    if (closestIndex == -1) {
        return ContinuousZoomStopSettlement(
            customZoomStop = null,
            replacedStopIndex = -1,
            originalStopRatio = 0f,
            snapZoomStop = null
        )
    }

    val closestStop = zoomStops[closestIndex]
    return if (abs(closestStop - zoomRatio) > snapThreshold) {
        ContinuousZoomStopSettlement(
            customZoomStop = zoomRatio,
            replacedStopIndex = closestIndex,
            originalStopRatio = closestStop,
            snapZoomStop = null
        )
    } else {
        ContinuousZoomStopSettlement(
            customZoomStop = null,
            replacedStopIndex = -1,
            originalStopRatio = 0f,
            snapZoomStop = closestStop
        )
    }
}
