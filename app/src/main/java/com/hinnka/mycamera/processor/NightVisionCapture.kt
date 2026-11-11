package com.hinnka.mycamera.processor

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.ml.NightVisionToneModel
import com.hinnka.mycamera.utils.PLog

/**
 * Night vision post-processing of the stacked YUV frame, baked into the internal original before
 * any LUT or recipe:
 * 1. Estimate the tone curve on the stacked frame itself (not the preview curve: the capture
 *    exposure and ISP processing differ from the preview stream).
 * 2. Extra MGC bitmap denoise whose strength follows the noise amplification of that curve; a
 *    daylight scene gets the identity curve and therefore no extra denoise.
 * 3. Apply the curve.
 *
 * Denoise runs before the curve, while the noise is still at the level the ISO model describes.
 * Steps 2 and 3 run on the GPU in one upload/readback ([PhotoProcessor.applyNightVision]).
 */
internal object NightVisionCapture {
    private const val TAG = "NightVisionCapture"

    /** Returns the processed bitmap; [bitmap] is recycled when a new one replaces it. */
    suspend fun process(
        context: Context,
        bitmap: Bitmap,
        sensorIso: Int?,
        photoProcessor: PhotoProcessor,
    ): Bitmap {
        val input = NightVisionTone.modelInputFrom(bitmap)
        val curve = NightVisionToneModel.estimate(context, input) ?: return bitmap
        if (curve.isIdentity) {
            PLog.d(TAG, "Scene bright enough; night vision curve is identity, no extra denoise")
            return bitmap
        }
        val strength = NightVisionTone.denoiseStrength(input, curve)
        PLog.d(
            TAG,
            "curve strength=${curve.strength} whitePoint=${curve.whitePoint} " +
                "denoise luma=${strength.luma} chroma=${strength.chroma} iso=$sensorIso",
        )

        val result = photoProcessor.applyNightVision(
            bitmap = bitmap,
            lumaStrength = strength.luma,
            chromaStrength = strength.chroma,
            sensorIso = sensorIso,
            curve = curve,
        )
        if (result !== bitmap) bitmap.recycle()
        return result
    }
}
