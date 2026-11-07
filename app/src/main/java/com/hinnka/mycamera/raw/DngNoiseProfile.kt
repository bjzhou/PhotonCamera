package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult

/**
 * DNG NoiseProfile (tag 0xC761) in color-plane order R, G, B: variance(x) = S * x + O for a
 * normalized sample x, stored as [S_r, O_r, S_g, O_g, S_b, O_b].
 */
internal object DngNoiseProfile {
    /**
     * Camera2 SENSOR_NOISE_PROFILE lists one (S, O) pair per CFA phase in the sensor's
     * row-major 2x2 order (the same order as SENSOR_BLACK_LEVEL_PATTERN), so the color of each
     * pair follows SENSOR_INFO_COLOR_FILTER_ARRANGEMENT. The two green phases are averaged,
     * which is the variance model of one green sample.
     */
    fun fromCamera2(
        captureResult: CaptureResult,
        characteristics: CameraCharacteristics,
    ): FloatArray? {
        val source = captureResult.get(CaptureResult.SENSOR_NOISE_PROFILE) ?: return null
        fun pair(index: Int): Pair<Float, Float>? {
            val value = source.getOrNull(index) ?: return null
            val slope = value.first.takeIf { it.isFinite() && it >= 0.0 }?.toFloat() ?: return null
            val offset = value.second.takeIf { it.isFinite() && it >= 0.0 }?.toFloat() ?: return null
            return slope to offset
        }
        if (source.size < 4) {
            // Non-Bayer sensors report one pair per color channel in R, G, B order.
            if (source.size < 3) return null
            val r = pair(0) ?: return null
            val g = pair(1) ?: return null
            val b = pair(2) ?: return null
            return floatArrayOf(r.first, r.second, g.first, g.second, b.first, b.second)
        }
        val cfa = characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT)
            ?: return null
        // Phase index of R, G_a, G_b, B in the 2x2 row-major CFA.
        val (red, greenA, greenB, blue) = when (cfa) {
            CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB -> listOf(0, 1, 2, 3)
            CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG -> listOf(1, 0, 3, 2)
            CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG -> listOf(2, 0, 3, 1)
            CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR -> listOf(3, 1, 2, 0)
            else -> return null
        }
        val r = pair(red) ?: return null
        val ga = pair(greenA) ?: return null
        val gb = pair(greenB) ?: return null
        val b = pair(blue) ?: return null
        return floatArrayOf(
            r.first, r.second,
            0.5f * (ga.first + gb.first), 0.5f * (ga.second + gb.second),
            b.first, b.second,
        )
    }

    /**
     * Noise model of merged pixels in normalized, un-white-balanced camera RGB
     * (variance = read + shot * x per channel), as emitted by the Spatial/Sabre merge.
     */
    fun fromMergedModel(read: FloatArray?, shot: FloatArray?): FloatArray? {
        if (read == null || shot == null || read.size != 3 || shot.size != 3) return null
        if ((read + shot).any { !it.isFinite() || it < 0f }) return null
        return floatArrayOf(shot[0], read[0], shot[1], read[1], shot[2], read[2])
    }
}
