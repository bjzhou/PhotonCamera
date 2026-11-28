package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop

/** Routes capture-time adaptive exposure into one complete, mutually exclusive processing path. */
internal object RawCaptureProfileCoordinator {
    suspend fun prepareCaptureProfile(
        renderer: RawDemosaicProcessor,
        context: Context,
        input: RawDngCaptureProfileInput,
        mode: RawAdaptiveExposureMode,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        maxHdrRatio: Float = RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
    ): RawDngCaptureProfileResult? {
        return renderer.prepareCaptureProfile(
            context = context,
            input = input,
            aspectRatio = aspectRatio,
            cropRegion = cropRegion,
            rotation = rotation,
            hdrNetMaxRatio = maxHdrRatio,
            generatePhotonPgtm = mode.generatesProfileGainTableMap,
            useQualcommAdrcPgtm = mode.usesQualcommAdrc,
            statsBounds = statsBounds,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            applyLensShadingCorrection = applyLensShadingCorrection,
            rawBlackBorderCrop = rawBlackBorderCrop,
            rawNoiseProfileId = rawNoiseProfileId,
        )
    }
}
