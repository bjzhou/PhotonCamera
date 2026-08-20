package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import kotlin.math.abs

/**
 * Numeric fixture transcribed from the ISO 8305 MGC capture summary.
 *
 * This is deliberately not a production device profile. It locks down the coordinate system and
 * transformations visible in that log so a UI ISO value cannot accidentally be used as MGC's
 * tuning gain again.
 */
class CalibratedRawNoiseProfileTest {
    private val gcamC = """
        double compute_noise_model_entry_S(int plane, int sens) {
            static double noise_model_A[] = { 1e-6, 2e-6, 3e-6, 4e-6 };
            static double noise_model_B[] = { 1e-5, 2e-5, 3e-5, 4e-5 };
            return noise_model_A[plane] * sens + noise_model_B[plane];
        }
        double compute_noise_model_entry_O(int plane, int sens) {
            static double noise_model_C[] = { 1e-10, 2e-10, 3e-10, 4e-10 };
            static double noise_model_D[] = { 1e-6, 2e-6, 3e-6, 4e-6 };
            double digital_gain = (sens / 800.0) < 1.0 ? 1.0 : (sens / 800.0);
            return noise_model_C[plane] * sens * sens +
                noise_model_D[plane] * digital_gain * digital_gain;
        }
    """.trimIndent()

    private data class LinearModel(
        val scale: Double,
        val offset: Double,
    ) {
        fun evaluate(coordinate: Double): Double = scale * coordinate + offset
    }

    private data class LogFixture(
        val gains: DoubleArray,
        val shotRed: DoubleArray,
        val shotGreen: DoubleArray,
        val readRed: DoubleArray,
        val readGreen: DoubleArray,
    )

    private val fixture = LogFixture(
        gains = doubleArrayOf(1.0, 2.0, 4.0, 8.0, 16.0, 32.0),
        shotRed = doubleArrayOf(
            0.000154162160,
            0.000296297338,
            0.000580567692,
            0.00114910840,
            0.00228618970,
            0.00456035277,
        ),
        shotGreen = doubleArrayOf(
            0.000146571285,
            0.000294094643,
            0.000589141389,
            0.00117923482,
            0.00235942169,
            0.00471979519,
        ),
        readRed = doubleArrayOf(
            3.47444058e-7,
            5.17427907e-7,
            1.19736319e-6,
            3.91710410e-6,
            1.47960682e-5,
            5.83119254e-5,
        ),
        readGreen = doubleArrayOf(
            7.38918175e-7,
            1.05932259e-6,
            2.34094000e-6,
            7.46740989e-6,
            2.79732903e-5,
            1.09996807e-4,
        ),
    )

    @Test
    fun parsesStandardGcamCAbcdArraysAndDeclaredThreshold() {
        val profile = CalibratedRawNoiseProfile.parseGcamC("fixture", gcamC)

        assertEquals(800, profile.maxAnalogSensitivity)
        assertTrue(profile.shotSlopeA.contentEquals(doubleArrayOf(1e-6, 2e-6, 3e-6, 4e-6)))
        assertTrue(profile.shotInterceptB.contentEquals(doubleArrayOf(1e-5, 2e-5, 3e-5, 4e-5)))
        assertTrue(profile.readQuadraticC.contentEquals(doubleArrayOf(1e-10, 2e-10, 3e-10, 4e-10)))
        assertTrue(profile.readDigitalGainD.contentEquals(doubleArrayOf(1e-6, 2e-6, 3e-6, 4e-6)))
    }

    @Test
    fun rejectsCoefficientDumpWithoutProfileMaxAnalogSensitivity() {
        val source = """
            static double noise_model_A
            1e-6
            2e-6
            3e-6
            4e-6
            static double noise_model_B
            1e-5
            2e-5
            3e-5
            4e-5
            static double noise_model_C
            1e-10
            2e-10
            3e-10
            4e-10
            static double noise_model_D
            1e-6
            2e-6
            3e-6
            4e-6
        """.trimIndent()

        try {
            CalibratedRawNoiseProfile.parseGcamC("loose", source)
            fail("A calibrated profile without its digital-gain divisor must be rejected")
        } catch (expected: IllegalArgumentException) {
            assertTrue(expected.message.orEmpty().contains("maxAnalogSensitivity"))
        }
    }

    @Test
    fun profileDeclaredMaxAnalogSensitivityControlsDigitalGain() {
        val profile = CalibratedRawNoiseProfile.parseGcamC("fixture", gcamC)
        val sensitivity = 1600
        val model = requireNotNull(profile.evaluate(sensitivity))

        // The generated `.c` profile declares sens/800, so ISO 1600 has digitalGain=2.
        assertEquals(Int.MAX_VALUE, profile.maximumCompatibleSensitivity)
        assertEquals(1e-10f * sensitivity * sensitivity + 4e-6f,
            model.readNoise[0], 1e-10f)
    }

    @Test
    fun sensitivityAboveCompatibleReadNoiseRangeUsesItsUpperBound() {
        val source = """
            static double noise_model_A[] = { 1e-6, 1e-6, 1e-6, 1e-6 };
            static double noise_model_B[] = { 0.0, 0.0, 0.0, 0.0 };
            static double noise_model_C[] = { -1e-12, -1e-12, -1e-12, -1e-12 };
            static double noise_model_D[] = { 1e-6, 1e-6, 1e-6, 1e-6 };
            double digital_gain = (sens / 3200.0) < 1.0 ? 1.0 : (sens / 3200.0);
        """.trimIndent()
        val profile = CalibratedRawNoiseProfile.parseGcamC("upper-bounded", source)
        val modelAtLimit = requireNotNull(profile.evaluate(999))
        val modelAboveLimit = requireNotNull(profile.evaluate(13_592))

        assertEquals(999, profile.maximumCompatibleSensitivity)
        assertEquals(999, profile.compatibleSensitivityAt(13_592))
        assertTrue(modelAtLimit.shotNoise.contentEquals(modelAboveLimit.shotNoise))
        assertTrue(modelAtLimit.readNoise.contentEquals(modelAboveLimit.readNoise))
        assertTrue(modelAboveLimit.readNoise.all { it > 0f })
    }

    @Test
    fun pixel8ProCoefficientsUseTheAttachedProfileDivisor() {
        val source = """
            static double noise_model_A[] = { 8.4642446458204e-07, 7.885580710116388e-07, 7.913266061026989e-07, 8.050064129709212e-07 };
            static double noise_model_B[] = { -3.3548195112894123e-06, -6.809009788763011e-07, -7.872168829134742e-07, -2.1650529662197835e-06 };
            static double noise_model_C[] = { 1.869442572495001e-12, 1.450600972594844e-12, 1.5203739200556638e-12, 1.7126408145869544e-12 };
            static double noise_model_D[] = { 9.084048689765456e-07, 8.720875192909893e-07, 8.823589207357054e-07, 8.763068694811695e-07 };
            double digital_gain = (sens / 666.0) < 1.0 ? 1.0 : (sens / 666.0);
        """.trimIndent()
        val profile = CalibratedRawNoiseProfile.parseGcamC("pixel8pro", source)
        val model = requireNotNull(profile.evaluate(666))

        assertEquals(666, profile.maxAnalogSensitivity)
        assertEquals(
            (8.4642446458204e-07 * 666 - 3.3548195112894123e-06).toFloat(),
            model.shotNoise[0],
            1e-10f,
        )
        assertEquals(
            (1.869442572495001e-12 * 666 * 666 + 9.084048689765456e-07).toFloat(),
            model.readNoise[0],
            1e-10f,
        )
    }

    @Test
    fun tuningAnchorsAreExactlyAnAbcdNoiseModelInGainDomain() {
        val shotRed = fitLinear(fixture.gains, fixture.shotRed)
        val shotGreen = fitLinear(fixture.gains, fixture.shotGreen)
        val squaredGains = fixture.gains.map { it * it }.toDoubleArray()
        val readRed = fitLinear(squaredGains, fixture.readRed)
        val readGreen = fitLinear(squaredGains, fixture.readGreen)

        assertMaximumRelativeError(shotRed, fixture.gains, fixture.shotRed, 3e-7)
        assertMaximumRelativeError(shotGreen, fixture.gains, fixture.shotGreen, 3e-7)
        assertMaximumRelativeError(readRed, squaredGains, fixture.readRed, 3e-7)
        assertMaximumRelativeError(readGreen, squaredGains, fixture.readGreen, 3e-7)
    }

    @Test
    fun mgcGoogleBluelineRearProfileReproducesRuntimeOverrideTable() {
        val profile = CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR
        val sensitivities = fixture.gains.map { (it * 100.0).toInt() }

        assertNull(profile.maxAnalogSensitivity)
        assertEquals(1.0, profile.digitalGainAt(32_000)!!, 0.0)

        sensitivities.indices.forEach { index ->
            val model = requireNotNull(profile.evaluate(sensitivities[index]))
            assertRelativeError(model.shotNoise[0].toDouble(), fixture.shotRed[index], 3e-7)
            assertRelativeError(model.shotNoise[1].toDouble(), fixture.shotGreen[index], 3e-7)
            assertRelativeError(model.shotNoise[2].toDouble(), fixture.shotGreen[index], 3e-7)
            assertRelativeError(model.shotNoise[3].toDouble(), fixture.shotRed[index], 3e-7)
            assertRelativeError(model.readNoise[0].toDouble(), fixture.readRed[index], 3e-7)
            assertRelativeError(model.readNoise[1].toDouble(), fixture.readGreen[index], 3e-7)
            assertRelativeError(model.readNoise[2].toDouble(), fixture.readGreen[index], 3e-7)
            assertRelativeError(model.readNoise[3].toDouble(), fixture.readRed[index], 3e-7)
        }
    }

    @Test
    fun finishRawNoiseClosesThroughTuningGainMergeAndExposureGain() {
        val tuningGain = 17.6108112
        val overallGain = 83.190
        val exposureGain = overallGain / tuningGain
        val mergedFrameCount = 5.0

        val shotRed = fitLinear(fixture.gains, fixture.shotRed).evaluate(tuningGain)
        val shotGreen = fitLinear(fixture.gains, fixture.shotGreen).evaluate(tuningGain)
        val squaredGains = fixture.gains.map { it * it }.toDoubleArray()
        val readRed = fitLinear(squaredGains, fixture.readRed).evaluate(tuningGain * tuningGain)
        val readGreen = fitLinear(squaredGains, fixture.readGreen).evaluate(tuningGain * tuningGain)

        // MGC's FinishRaw log is [R, G, G, B]. Its green model is the variance of the
        // average of the two independent Bayer greens, hence the factor 1/2.
        val loggedFinishShot = doubleArrayOf(0.00241424, 0.00127646)
        val loggedFinishRead = doubleArrayOf(8.00370e-5, 7.69503e-5)
        val inferredShotFrameCounts = doubleArrayOf(
            shotRed * exposureGain / loggedFinishShot[0],
            0.5 * shotGreen * exposureGain / loggedFinishShot[1],
        )
        val inferredReadFrameCounts = doubleArrayOf(
            readRed * exposureGain * exposureGain / loggedFinishRead[0],
            0.5 * readGreen * exposureGain * exposureGain / loggedFinishRead[1],
        )

        (inferredShotFrameCounts + inferredReadFrameCounts).forEach { effectiveFrames ->
            assertEquals(mergedFrameCount, effectiveFrames, 0.20)
        }
    }

    @Test
    fun uiIsoIsNotTheTuningProfileCoordinate() {
        val tuningGain = 17.6108112
        val uiIso = 8305.0
        val shotModel = fitLinear(fixture.gains, fixture.shotRed)

        assertTrue(shotModel.evaluate(uiIso) > shotModel.evaluate(tuningGain) * 400.0)
    }

    private fun fitLinear(x: DoubleArray, y: DoubleArray): LinearModel {
        require(x.size == y.size && x.isNotEmpty())
        val meanX = x.average()
        val meanY = y.average()
        var covariance = 0.0
        var variance = 0.0
        for (index in x.indices) {
            covariance += (x[index] - meanX) * (y[index] - meanY)
            variance += (x[index] - meanX) * (x[index] - meanX)
        }
        val scale = covariance / variance
        return LinearModel(scale = scale, offset = meanY - scale * meanX)
    }

    private fun assertMaximumRelativeError(
        model: LinearModel,
        x: DoubleArray,
        expected: DoubleArray,
        tolerance: Double,
    ) {
        x.indices.forEach { index ->
            val relativeError = abs(model.evaluate(x[index]) - expected[index]) / expected[index]
            assertTrue("relativeError=$relativeError at index=$index", relativeError <= tolerance)
        }
    }

    private fun assertRelativeError(actual: Double, expected: Double, tolerance: Double) {
        val relativeError = abs(actual - expected) / expected
        assertTrue("actual=$actual expected=$expected relativeError=$relativeError", relativeError <= tolerance)
    }
}
