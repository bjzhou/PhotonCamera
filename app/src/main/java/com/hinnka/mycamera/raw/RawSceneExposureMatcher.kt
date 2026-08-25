package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog

/**
 * Capture-side Photon HDR ratio estimator.
 *
 * Despite the historical class name, this path no longer compares a viewfinder thumbnail with a
 * rendered RAW preview. The renderer supplies one colorized, scene-linear 64 x 64 image from the
 * exact RAW frame being written. A device-independent scene model predicts the final long/short
 * TET ratio from the full spatial image and its physical scene-brightness coordinate. This path
 * never produces or changes BaselineExposure.
 */
internal object RawSceneExposureMatcher {
    private const val TAG = "RawSceneExposureMatcher"

    internal fun createRequest(
        context: Context,
        metadata: RawMetadata,
        deviceLimits: RawSceneExposureDeviceLimits? = null,
    ): RawSceneExposureRequest = RawSceneExposureRequest { frame ->
        val result = RawSceneExposureEstimator.estimate(
            context = context.applicationContext,
            frame = frame,
            metadata = metadata,
            deviceLimits = deviceLimits,
        )
        if (result == null) {
            PLog.w(TAG, "RAW scene exposure unavailable; MGC AE result omitted")
        }
        result?.let { estimate ->
            RawSceneExposureResult(
                hdrRatio = estimate.hdrRatio,
            )
        }
    }
}

internal fun interface RawSceneExposureRequest {
    fun solve(frame: RawSceneLinearFrame): RawSceneExposureResult?
}

internal data class RawSceneExposureResult(
    val hdrRatio: Float,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
    }
}
