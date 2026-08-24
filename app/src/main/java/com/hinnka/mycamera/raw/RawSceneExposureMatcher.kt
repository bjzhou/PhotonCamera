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
        // HDRNet needs the final long/short TET ratio even when automatic BaselineExposure is
        // disabled. Run the shared MGC AE estimator whenever either consumer needs its result.
        val request = if (estimateSceneExposure || generatePhotonPgtm) {
            createRequest(
                context = context,
                metadata = input.metadata,
                deviceLimits = input.sceneExposureDeviceLimits,
                includeExposureOffset = estimateSceneExposure,
            )
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

    internal fun createRequest(
        context: Context,
        metadata: RawMetadata,
        deviceLimits: RawSceneExposureDeviceLimits?,
        includeExposureOffset: Boolean,
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
                exposureOffsetEv = estimate.shortCaptureEv.takeIf { includeExposureOffset },
                hdrRatio = estimate.hdrRatio,
            )
        }
    }
}

internal fun interface RawSceneExposureRequest {
    fun solve(frame: RawSceneLinearFrame): RawSceneExposureResult?
}

internal data class RawSceneExposureResult(
    val exposureOffsetEv: Float?,
    val hdrRatio: Float,
) {
    init {
        require(exposureOffsetEv == null || exposureOffsetEv.isFinite())
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
    }
}
