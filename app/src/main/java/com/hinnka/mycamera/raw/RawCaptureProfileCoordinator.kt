package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.preview.PortraitMaskSnapshot

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
        capturePreviewThumbnail: Bitmap?,
        capturePortraitMask: PortraitMaskSnapshot?,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
    ): RawDngCaptureProfileResult? {
        val photonRequest = if (mode.usesPhotonHdr) {
            RawSceneExposureMatcher.createRequest(
                context = context,
                metadata = input.metadata,
                deviceLimits = input.sceneExposureDeviceLimits,
                portraitMask = capturePortraitMask,
            )
        } else {
            null
        }
        val legacyRequest = if (mode.usesLegacyAutoExposure || mode.usesPhotonHdr) {
            RawLegacyAutoExposureMatcher.createRequest(capturePreviewThumbnail)
        } else {
            null
        }
        return renderer.prepareCaptureProfile(
            context = context,
            input = input,
            aspectRatio = aspectRatio,
            cropRegion = cropRegion,
            rotation = rotation,
            sceneExposureRequest = photonRequest,
            legacyAutoExposureRequest = legacyRequest,
            generatePhotonPgtm = mode.usesPhotonHdr || mode.usesLegacyAutoExposure,
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
