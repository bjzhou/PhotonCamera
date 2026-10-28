package com.hinnka.mycamera.raw.denoise

import com.hinnka.mycamera.raw.RawDenoiseHistory
import com.hinnka.mycamera.raw.RawDenoisePipeline

/**
 * §2.2 merge variance ratios from the merge's nominal frame weights
 * (docs/photon-multiscale-denoise.md).
 *
 * Every frame is described by its camera-RGB read / shot coefficients already scaled to the
 * reference exposure; the reference frame's coefficients are the profile the denoiser reads
 * from the metadata. A merge output multiplied by [outputScale] scales read variance by its
 * square and the shot coefficient by itself.
 */
internal class PhotonMergeNoise(
    private val pipeline: RawDenoisePipeline,
    referenceRead: FloatArray,
    referenceShot: FloatArray,
) {
    private val referenceRead = referenceRead.sum()
    private val referenceShot = referenceShot.sum()
    private var weightSum = 0.0
    private var readSum = 0.0
    private var shotSum = 0.0

    fun add(weight: Float, read: FloatArray, shot: FloatArray) {
        require(weight.isFinite() && weight > 0f) { "Merge frame weight must be positive, got $weight" }
        val w = weight.toDouble()
        weightSum += w
        readSum += w * w * ratio(read.sum(), referenceRead)
        shotSum += w * w * ratio(shot.sum(), referenceShot)
    }

    fun history(outputScale: Float = 1f): RawDenoiseHistory {
        check(weightSum > 0.0) { "No merge frame was added" }
        val norm = weightSum * weightSum
        return RawDenoiseHistory(
            pipeline = pipeline,
            mergeRead = (outputScale.toDouble() * outputScale * readSum / norm).toFloat(),
            mergeShot = (outputScale.toDouble() * shotSum / norm).toFloat(),
        )
    }

    private fun ratio(value: Float, reference: Float): Double =
        if (reference > 0f) value.toDouble() / reference else 1.0
}
