package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonCoreImagingTuning
import com.hinnka.mycamera.processor.PhotonSharpenTuning
import com.hinnka.mycamera.utils.LargeDirectBuffer
import java.nio.ByteBuffer

/** Original MGC AOT kernels, retaining float RGB until their U12 boundary. */
internal class MgcSharpen {
    private val transfer = RawFloatTextureTransfer()
    val guided = MgcGuidedUpsample(transfer)
    private var scratch: ByteBuffer? = null

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
        val pixels = width.toLong() * height
        val outputPixels = width.toLong() * ((height.toLong() + 1) and -2L)
        val scratchBytes = (pixels + outputPixels) * 6
        require(scratchBytes <= Int.MAX_VALUE)
        if ((scratch?.capacity()?.toLong() ?: 0) < scratchBytes) {
            LargeDirectBuffer.free(scratch)
            scratch = null
            scratch = checkNotNull(LargeDirectBuffer.allocate(scratchBytes, "MGC sharpen YUV/RGB"))
        }
        transfer.read(sourceTexture, width, height) { mapped ->
            val result = nativeSharpenRgbaFloat(mapped, checkNotNull(scratch), width, height,
                snr, attenuation, curves.points)
            check(result == 0) { "MGC original sharpen failed: $result" }
        }
        transfer.upload(targetTexture, width, height)
    }

    fun releaseBuffers() {
        guided.release()
        LargeDirectBuffer.free(scratch)
        scratch = null
        transfer.releaseBuffers()
    }

    fun release() {
        releaseBuffers()
        transfer.release()
    }

    private external fun nativeSharpenRgbaFloat(rgba: ByteBuffer, scratch: ByteBuffer,
        width: Int, height: Int, snr: Float, attenuation: Float, curves: FloatArray): Int

    companion object { init { System.loadLibrary("my-native-lib") } }
}
