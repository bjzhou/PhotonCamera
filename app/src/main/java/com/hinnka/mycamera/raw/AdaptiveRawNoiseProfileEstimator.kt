package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import kotlin.math.pow

internal data class AdaptiveRawNoiseProfileTarget(
    val sensorPhysicalWidthMm: Float,
    val sensorPhysicalHeightMm: Float,
    val sensorPixelArrayWidth: Int,
    val sensorPixelArrayHeight: Int,
    val aperture: Float,
    val maximumAnalogSensitivityIso: Int,
)

internal data class AdaptiveRawNoiseProfileEstimate(
    val profile: CalibratedRawNoiseProfile,
    val relativeNoiseDriver: Double,
    val shotScale: Double,
    val readQuadraticScale: Double,
    val readFloorScale: Double,
)

/**
 * Estimates a per-lens noise model from the bundled X9 Ultra main-camera calibration.
 *
 * The hardware proxy is the inverse per-photosite light collection at a fixed scene exposure:
 * sensor area / photosite count / f-number^2. The response exponents are anchored by the known
 * X9 Ultra main/3X calibration pair. They preserve the template's channel ratios while matching
 * the pair's mean A, C and D coefficient changes. B follows A so the template's shot-noise zero
 * crossing is preserved instead of treating a fitted negative intercept as an independent noise
 * source.
 *
 * This is deliberately an estimate. Sensor process, quantum efficiency, conversion gain and ADC
 * read noise are not exposed by Camera2 and cannot be inferred from lens geometry.
 */
internal object AdaptiveRawNoiseProfileEstimator {
    private const val REFERENCE_SENSOR_OPTICAL_DENOMINATOR = 1.12
    private const val OPTICAL_FORMAT_ONE_INCH_DIAGONAL_MM = 16.0
    private const val FOUR_BY_THREE_AREA_FROM_DIAGONAL = 12.0 / 25.0
    private const val REFERENCE_SENSOR_PIXEL_COUNT = 200_000_000.0
    private const val REFERENCE_APERTURE = 1.5

    // Derived from the mean X9Ultra3X / X9Ultra coefficient ratios and the corresponding
    // 1/1.28-inch, 200 MP, f/2.2 versus 1/1.12-inch, 200 MP, f/1.5 light-collection ratio.
    private const val SHOT_RESPONSE_EXPONENT = 0.5718385613683723
    private const val READ_QUADRATIC_RESPONSE_EXPONENT = 1.0935780217134652
    private const val READ_FLOOR_RESPONSE_EXPONENT = 0.3686003701156199

    fun estimate(
        id: String,
        template: CalibratedRawNoiseProfile,
        target: AdaptiveRawNoiseProfileTarget,
    ): AdaptiveRawNoiseProfileEstimate? {
        val physicalWidth = target.sensorPhysicalWidthMm.toDouble()
        val physicalHeight = target.sensorPhysicalHeightMm.toDouble()
        val aperture = target.aperture.toDouble()
        if (
            !physicalWidth.isFinite() || physicalWidth <= 0.0 ||
            !physicalHeight.isFinite() || physicalHeight <= 0.0 ||
            target.sensorPixelArrayWidth <= 0 || target.sensorPixelArrayHeight <= 0 ||
            !aperture.isFinite() || aperture <= 0.0
        ) {
            return null
        }

        val targetPixelCount =
            target.sensorPixelArrayWidth.toDouble() * target.sensorPixelArrayHeight.toDouble()
        val targetCollection = physicalWidth * physicalHeight / targetPixelCount / (aperture * aperture)
        val referenceDiagonal =
            OPTICAL_FORMAT_ONE_INCH_DIAGONAL_MM / REFERENCE_SENSOR_OPTICAL_DENOMINATOR
        val referenceArea =
            referenceDiagonal * referenceDiagonal * FOUR_BY_THREE_AREA_FROM_DIAGONAL
        val referenceCollection =
            referenceArea / REFERENCE_SENSOR_PIXEL_COUNT / (REFERENCE_APERTURE * REFERENCE_APERTURE)
        val relativeNoiseDriver = referenceCollection / targetCollection
        if (!relativeNoiseDriver.isFinite() || relativeNoiseDriver <= 0.0) return null

        val shotScale = relativeNoiseDriver.pow(SHOT_RESPONSE_EXPONENT)
        val readQuadraticScale = relativeNoiseDriver.pow(READ_QUADRATIC_RESPONSE_EXPONENT)
        val readFloorScale = relativeNoiseDriver.pow(READ_FLOOR_RESPONSE_EXPONENT)
        if (sequenceOf(shotScale, readQuadraticScale, readFloorScale).any { !it.isFinite() || it <= 0.0 }) {
            return null
        }

        val profile = CalibratedRawNoiseProfile(
            id = id,
            shotSlopeA = template.shotSlopeA.scaledBy(shotScale),
            shotInterceptB = template.shotInterceptB.scaledBy(shotScale),
            readQuadraticC = template.readQuadraticC.scaledBy(readQuadraticScale),
            readDigitalGainD = template.readDigitalGainD.scaledBy(readFloorScale),
            maxAnalogSensitivity = target.maximumAnalogSensitivityIso
                .takeIf { it > 0 }
                ?: template.maxAnalogSensitivity,
        )
        return AdaptiveRawNoiseProfileEstimate(
            profile = profile,
            relativeNoiseDriver = relativeNoiseDriver,
            shotScale = shotScale,
            readQuadraticScale = readQuadraticScale,
            readFloorScale = readFloorScale,
        )
    }

    private fun DoubleArray.scaledBy(scale: Double): DoubleArray =
        DoubleArray(size) { index -> this[index] * scale }
}
