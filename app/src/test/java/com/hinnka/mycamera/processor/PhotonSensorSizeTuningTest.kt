package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import kotlin.math.log2

class PhotonSensorSizeTuningTest {
    @Test
    fun runtimeCoefficientsMatchLeastSquaresCalibration() {
        val areas = floatArrayOf(128f, 20.48f, 24.5f, 62.9442f)
        val atReference = requireNotNull(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.REFERENCE_AREA_MM2,
            ),
        )
        val oneAreaStopLarger = requireNotNull(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.REFERENCE_AREA_MM2 * 2f,
            ),
        )

        assertFit(
            areas = areas,
            samples = floatArrayOf(0.5f, 0.875f, 0.875f, 0.5f),
            actualAtReference = atReference.fusion.noiseCorrelationScale,
            actualOneStopLarger = oneAreaStopLarger.fusion.noiseCorrelationScale,
        )
        assertFit(
            areas = areas,
            samples = floatArrayOf(0.3125f, 0.171875f, 0.234375f, 0.40625f),
            actualAtReference = atReference.denoise.lumaStrengthScale.level1,
            actualOneStopLarger = oneAreaStopLarger.denoise.lumaStrengthScale.level1,
        )
        assertFit(
            areas = areas,
            samples = floatArrayOf(6.5f, 14.5f, 20f, 3.5f),
            actualAtReference = atReference.denoise.frequencyResponse.responseOffset,
            actualOneStopLarger = oneAreaStopLarger.denoise.frequencyResponse.responseOffset,
        )
        assertFit(
            areas = areas,
            samples = floatArrayOf(0.7f, 0.6f, 0.6f, 0.6f),
            actualAtReference = atReference.denoise.sabreLumaNodes.snr20.level1
                ?: error("missing SNR20 L1"),
            actualOneStopLarger = oneAreaStopLarger.denoise.sabreLumaNodes.snr20.level1
                ?: error("missing SNR20 L1"),
        )
    }

    @Test
    fun referenceAreaEvaluatesStoredModelCoefficients() {
        val tuning = requireNotNull(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.REFERENCE_AREA_MM2,
            ),
        )

        assertEquals(0.767513962f, tuning.fusion.noiseCorrelationScale, EPSILON)
        assertEquals(0.252164225f, tuning.denoise.lumaStrengthScale.level1, EPSILON)
        assertEquals(13.499369928f, tuning.denoise.frequencyResponse.responseOffset, EPSILON)
        assertEquals(
            0.608876213f,
            tuning.denoise.sabreLumaNodes.snr20.level1 ?: error("missing SNR20 L1"),
            EPSILON,
        )
    }

    @Test
    fun largerAreaMovesOnlyTheSupportedFittedDimensions() {
        val small = requireNotNull(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
        )
        val large = requireNotNull(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.MAX_CALIBRATED_AREA_MM2,
            ),
        )

        assertEquals(0.873362f, small.fusion.noiseCorrelationScale, 0.00001f)
        assertEquals(0.438721f, large.fusion.noiseCorrelationScale, 0.00001f)
        assertEquals(0.213688f, small.denoise.lumaStrengthScale.level1, 0.00001f)
        assertEquals(0.371683f, large.denoise.lumaStrengthScale.level1, 0.00001f)
        assertEquals(16.640339f, small.denoise.frequencyResponse.responseOffset, 0.00001f)
        assertEquals(3.742630f, large.denoise.frequencyResponse.responseOffset, 0.00001f)

        assertEquals(
            small.denoise.chromaStrengthScale,
            large.denoise.chromaStrengthScale,
        )
    }

    @Test
    fun fitClampsRatherThanExtrapolatingOutsideCalibrationRange() {
        assertEquals(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
            PhotonSensorSizeTuning.forSensorAreaMm2(1f),
        )
        assertEquals(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.MAX_CALIBRATED_AREA_MM2,
            ),
            PhotonSensorSizeTuning.forSensorAreaMm2(1_000f),
        )
    }

    @Test
    fun invalidPhysicalSizeFallsBackAndExplicitOverrideWins() {
        assertNull(PhotonSensorSizeTuning.forPhysicalSizeMm(Float.NaN, 4f))
        assertNull(PhotonSensorSizeTuning.forSensorAreaMm2(0f))
        assertEquals(
            PhotonCoreImagingTuning.DEFAULT,
            PhotonSensorSizeTuning.resolve(
                explicitTuning = null,
                sensorPhysicalAreaMm2 = null,
            ),
        )

        val explicit = PhotonCoreImagingTuning(
            fusion = PhotonFusionTuning(noiseCorrelationScale = 1.25f),
        )
        assertEquals(
            explicit,
            PhotonSensorSizeTuning.resolve(
                explicitTuning = explicit,
                sensorPhysicalAreaMm2 = PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
        )
    }

    @Test
    fun rawMaxSwitchCleanlySelectsTunedOrDefaultConfiguration() {
        val explicit = PhotonCoreImagingTuning(
            fusion = PhotonFusionTuning(noiseCorrelationScale = 1.25f),
        )
        assertEquals(
            PhotonCoreImagingTuning.DEFAULT,
            PhotonSensorSizeTuning.resolveForRawMax(
                enabled = false,
                explicitTuning = explicit,
                sensorPhysicalAreaMm2 = PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
        )

        assertEquals(
            PhotonSensorSizeTuning.forSensorAreaMm2(
                PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
            PhotonSensorSizeTuning.resolveForRawMax(
                enabled = true,
                explicitTuning = null,
                sensorPhysicalAreaMm2 = PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
        )
        assertEquals(
            explicit,
            PhotonSensorSizeTuning.resolveForRawMax(
                enabled = true,
                explicitTuning = explicit,
                sensorPhysicalAreaMm2 = PhotonSensorSizeTuning.MIN_CALIBRATED_AREA_MM2,
            ),
        )
    }

    companion object {
        private const val EPSILON = 0.000001f

        private fun assertFit(
            areas: FloatArray,
            samples: FloatArray,
            actualAtReference: Float,
            actualOneStopLarger: Float,
        ) {
            val x = areas.map {
                log2((it / PhotonSensorSizeTuning.REFERENCE_AREA_MM2).toDouble()).toFloat()
            }
            val xMean = x.average().toFloat()
            val yMean = samples.average().toFloat()
            val slope = x.indices.sumOf { index ->
                ((x[index] - xMean) * (samples[index] - yMean)).toDouble()
            }.toFloat() / x.sumOf { value ->
                ((value - xMean) * (value - xMean)).toDouble()
            }.toFloat()
            val valueAtReference = yMean - slope * xMean

            assertEquals(valueAtReference, actualAtReference, EPSILON)
            assertEquals(slope, actualOneStopLarger - actualAtReference, EPSILON)
        }
    }
}
