package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonCoreImagingTuning
import com.hinnka.mycamera.processor.PhotonSharpenTuning

/** MGC FinishRaw sharpening: the GLES SharpenTo16Bit port, or the GLES GuidedUpsample when prepared. */
internal class MgcSharpen {
    val guided = MgcGuidedUpsample()
    private val sharpen = GlesMgcSharpen()

    fun render(
        sourceTexture: Int,
        targetTexture: Int,
        width: Int,
        height: Int,
        snr: Float,
        curveStrength: Float,
        haloSuppression: Float,
        tuning: PhotonSharpenTuning = PhotonCoreImagingTuning.sharpen,
    ) {
        require(width > 0 && height > 0 && snr.isFinite() && snr >= 0f)
        require(haloSuppression.isFinite() && haloSuppression >= 0f)
        val curves = MgcSharpenCurveBuilder.build(snr, tuning, curveStrength)
        if (guided.isPrepared) {
            guided.render(sourceTexture, targetTexture, width, height, haloSuppression, curves.points)
            return
        }
        sharpen.render(sourceTexture, targetTexture, width, height, curves.points, haloSuppression)
    }

    fun releaseBuffers() {
        guided.releaseBuffers()
        sharpen.releaseBuffers()
    }

    fun release() {
        guided.release()
        sharpen.release()
    }
}
