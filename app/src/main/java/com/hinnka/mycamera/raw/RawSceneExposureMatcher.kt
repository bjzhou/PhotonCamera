package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog

/**
 * Capture-side Photon HDR ratio estimator.
 *
 * Despite the historical class name, this path no longer compares a viewfinder thumbnail with a
 * rendered RAW preview. The renderer supplies one colorized, scene-linear 64 x 64 image from the
 * selected base RAW before fusion. A device-independent scene model predicts the final long/short
 * TET ratio from the full spatial image and its physical scene-brightness coordinate. This path is
 * Fast Moments mode 2 and never produces or changes BaselineExposure.
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
                finalShortTetMs = estimate.finalShortTetMs,
                finalLongTetMs = estimate.finalLongTetMs,
                safeUnderexposure = estimate.safeUnderexposure,
                fractionPixelsClippedAtFinalShortTet =
                    estimate.fractionPixelsClippedAtFinalShortTet,
            )
        }
    }
}

internal fun interface RawSceneExposureRequest {
    fun solve(frame: RawSceneLinearFrame): RawSceneExposureResult?
}

internal data class RawSceneExposureResult(
    val hdrRatio: Float,
    val finalShortTetMs: Float,
    val finalLongTetMs: Float,
    val safeUnderexposure: Float,
    val fractionPixelsClippedAtFinalShortTet: Float,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
        require(finalShortTetMs.isFinite() && finalShortTetMs > 0f)
        require(finalLongTetMs.isFinite() && finalLongTetMs >= finalShortTetMs)
        require(safeUnderexposure.isFinite() && safeUnderexposure >= 1f)
        require(
            fractionPixelsClippedAtFinalShortTet.isFinite() &&
                fractionPixelsClippedAtFinalShortTet in 0f..1f,
        )
    }
}
