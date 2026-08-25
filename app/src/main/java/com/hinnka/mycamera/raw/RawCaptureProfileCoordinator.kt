package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop

/** Owns the mutually exclusive capture-time Photon HDR and classic auto-exposure paths. */
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
            )
        } else {
            null
        }
        val legacyRequest = if (mode.usesLegacyAutoExposure) {
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
            generatePhotonPgtm = mode.usesPhotonHdr,
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
