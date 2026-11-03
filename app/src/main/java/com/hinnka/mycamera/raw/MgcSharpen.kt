package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonCoreImagingTuning
import com.hinnka.mycamera.processor.PhotonSharpenTuning

/** MGC FinishRaw sharpening: the GLES SharpenTo16Bit port, or the GLES GuidedUpsample when prepared. */
internal class MgcSharpen {
    val guided = MgcGuidedUpsample()
    private val sharpen = GlesMgcSharpen()

    fun render(sourceTexture: Int, targetTexture: Int, width: Int, height: Int,
               snr: Float, attenuation: Float,
               tuning: PhotonSharpenTuning = PhotonCoreImagingTuning.sharpen) {
        require(width > 0 && height > 0 && snr.isFinite() && snr >= 0f)
        require(attenuation.isFinite() && attenuation >= 0f)
        val curves = MgcSharpenCurveBuilder.build(snr, tuning)
        if (guided.isPrepared) {
            guided.render(sourceTexture, targetTexture, width, height, attenuation, curves.points)
            return
        }
        sharpen.render(sourceTexture, targetTexture, width, height, curves.points, attenuation)
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
