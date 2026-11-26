package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.params.ColorSpaceTransform
import android.hardware.camera2.params.RggbChannelVector
import com.hinnka.mycamera.raw.DngSdkColorSpec
import com.hinnka.mycamera.raw.RawCameraCalibration
import kotlin.math.abs
import kotlin.math.ln

/** Converts absolute color temperatures to camera-native white balance gains. */
internal class CameraWhiteBalanceCalibration private constructor(
    private val calibration: DngSdkColorSpec.TemperatureCalibration,
    private val samples: List<TemperatureSample>,
) {
    private data class TemperatureSample(
        val kelvin: Int,
        val gains: RggbChannelVector,
        val logRedBlueRatio: Float,
    )

    fun gainsForTemperature(kelvin: Int): RggbChannelVector? {
        if (kelvin !in MIN_TEMPERATURE..MAX_TEMPERATURE) return null
        val offset = kelvin - MIN_TEMPERATURE
        if (offset % TEMPERATURE_STEP == 0) return samples[offset / TEMPERATURE_STEP].gains
        return calculateGains(calibration, kelvin)
    }

    fun estimateTemperature(gains: RggbChannelVector): Int? {
        val logRatio = logRedBlueRatio(gains)
        if (!logRatio.isFinite()) return null
        return samples.minBy { abs(it.logRedBlueRatio - logRatio) }.kelvin
    }

    companion object {
        const val MIN_TEMPERATURE = 2000
        const val MAX_TEMPERATURE = 10000
        const val TEMPERATURE_STEP = 100
        private const val MAX_CHANNEL_GAIN = 8f

        fun fromCharacteristics(characteristics: CameraCharacteristics): CameraWhiteBalanceCalibration? {
            val colorMatrix1 = characteristics.readMatrix(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
            val colorMatrix2 = characteristics.readMatrix(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
            if (colorMatrix1 == null && colorMatrix2 == null) return null
            val metadata = RawCameraCalibration(
                colorMatrix1 = colorMatrix1,
                colorMatrix2 = colorMatrix2,
                calibrationIlluminant1 = characteristics.readMetadataOrNull(
                    CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1,
                ) ?: 0,
                calibrationIlluminant2 = characteristics.readMetadataOrNull(
                    CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2,
                )?.toInt() ?: 0,
                cameraCalibration1 = characteristics.readMatrix(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM1),
                cameraCalibration2 = characteristics.readMatrix(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM2),
            )
            val calibration = DngSdkColorSpec.TemperatureCalibration(metadata)
            val samples = (MIN_TEMPERATURE..MAX_TEMPERATURE step TEMPERATURE_STEP).map { kelvin ->
                val gains = calculateGains(calibration, kelvin) ?: return null
                TemperatureSample(kelvin, gains, logRedBlueRatio(gains))
            }
            return CameraWhiteBalanceCalibration(calibration, samples)
        }

        private fun calculateGains(
            calibration: DngSdkColorSpec.TemperatureCalibration,
            kelvin: Int,
        ): RggbChannelVector? {
            val neutral = calibration.cameraNeutralForTemperature(kelvin) ?: return null
            val red = (1f / neutral[0]).coerceIn(1f, MAX_CHANNEL_GAIN)
            val green = (1f / neutral[1]).coerceIn(1f, MAX_CHANNEL_GAIN)
            val blue = (1f / neutral[2]).coerceIn(1f, MAX_CHANNEL_GAIN)
            return RggbChannelVector(red, green, green, blue)
        }

        private fun logRedBlueRatio(gains: RggbChannelVector): Float = ln(gains.red) - ln(gains.blue)

        private fun CameraCharacteristics.readMatrix(
            key: CameraCharacteristics.Key<ColorSpaceTransform>,
        ): FloatArray? {
            val transform = readMetadataOrNull(key) ?: return null
            val matrix = FloatArray(9) { transform.getElement(it % 3, it / 3).toFloat() }
            return matrix.takeIf { DngSdkColorSpec.invertMatrix3x3(it) != null }
        }
    }
}
