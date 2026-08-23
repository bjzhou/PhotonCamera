package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.PLog

/**
 * Capture-side scene exposure estimator.
 *
 * Despite the historical class name, this path no longer compares a viewfinder thumbnail with a
 * rendered RAW preview. The renderer supplies one colorized, scene-linear 64 x 64 image from the
 * exact RAW frame being written. A device-independent scene model then predicts the exposure
 * offset from the full spatial image and its physical scene-brightness coordinate.
 */
internal object RawSceneExposureMatcher {
    private const val TAG = "RawSceneExposureMatcher"

    suspend fun prepareCaptureProfile(
        renderer: RawDemosaicProcessor,
        context: Context,
        input: RawDngCaptureProfileInput,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        estimateSceneExposure: Boolean,
        generatePhotonPgtm: Boolean,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
    ): RawDngCaptureProfileResult? {
        val request = if (estimateSceneExposure) {
            RawSceneExposureRequest { frame ->
                val result = RawSceneExposureEstimator.estimate(
                    context = context.applicationContext,
                    frame = frame,
                    metadata = input.metadata,
                    deviceLimits = input.sceneExposureDeviceLimits,
                )
                if (result == null) {
                    PLog.w(TAG, "RAW scene exposure unavailable; automatic offset omitted")
                }
                result
            }
        } else {
            null
        }
        return renderer.prepareCaptureProfile(
            context = context,
            input = input,
            aspectRatio = aspectRatio,
            cropRegion = cropRegion,
            rotation = rotation,
            request = request,
            generatePhotonPgtm = generatePhotonPgtm,
            statsBounds = statsBounds,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
            applyLensShadingCorrection = applyLensShadingCorrection,
            rawBlackBorderCrop = rawBlackBorderCrop,
            rawNoiseProfileId = rawNoiseProfileId,
        )
    }
}

internal fun interface RawSceneExposureRequest {
    fun solve(frame: RawSceneLinearFrame): Float?
}
