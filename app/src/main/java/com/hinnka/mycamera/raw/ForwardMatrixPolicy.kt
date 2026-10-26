package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.params.ColorSpaceTransform
import com.hinnka.mycamera.utils.PLog

/** Select at the metadata boundary, before Float conversion or DNG normalization. */
internal object ForwardMatrixPolicy {
    // Bradford-adapted sRGB -> XYZ(D50), rounded to multiples of 1/128.
    // Keep in sync with the native RAW reader's exact rational signature.
    private val SRGB_TO_XYZ_D50_128 = intArrayOf(
        56, 49, 18,
        28, 92, 8,
        2, 12, 91
    )

    fun fromCharacteristics(
        characteristics: CameraCharacteristics
    ): Pair<ColorSpaceTransform?, ColorSpaceTransform?> {
        val first = characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX1)
        val second = characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX2)
        if (isSrgbPlaceholderPair(first?.rationalWords(), second?.rationalWords())) {
            PLog.d("ForwardMatrixPolicy", "Ignoring identical 1/128-quantized sRGB-to-XYZ(D50) ForwardMatrix pair")
            return null to null
        }
        // Usability is decided with the whole calibration set in RawColorCalibrationPolicy.
        return first to second
    }

    /** Original numerator/denominator words, not numerically equivalent fractions. */
    fun isSrgbPlaceholderPair(
        first: IntArray?,
        second: IntArray?,
        unsigned: Boolean = false
    ): Boolean {
        if (first == null || second == null || first.size != 18 ||
            !first.contentEquals(second)) return false
        return SRGB_TO_XYZ_D50_128.indices.all { index ->
            val numerator = if (unsigned) first[index * 2].toLong() and 0xFFFFFFFFL
                else first[index * 2].toLong()
            val denominator = if (unsigned) first[index * 2 + 1].toLong() and 0xFFFFFFFFL
                else first[index * 2 + 1].toLong()
            denominator != 0L &&
                numerator * 128L == SRGB_TO_XYZ_D50_128[index].toLong() * denominator
        }
    }

    private fun ColorSpaceTransform.rationalWords(): IntArray =
        IntArray(18).also { copyElements(it, 0) }
}
