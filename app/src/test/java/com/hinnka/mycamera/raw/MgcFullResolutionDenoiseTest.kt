package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonPyramidScales
import com.hinnka.mycamera.processor.PhotonPyramidOverrides
import com.hinnka.mycamera.processor.PhotonDenoiseTuning
import com.hinnka.mycamera.processor.PhotonSabreLumaTuningNodes
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class MgcFullResolutionDenoiseTest {
    // Historical fixture for native interpolation; deliberately independent of runtime defaults.
    private val agcP0Fixture = run {
        // Audited p0 A/B controls: A fills levels 1–4, B fills level 5.
        val strengthScale = PhotonPyramidScales(2.5f, 2.5f, 2.5f, 2.5f, 1.25f)
        val revertScale = PhotonPyramidScales.uniform(2f)
        val outlierScale = PhotonPyramidScales.uniform(0.75f)
        val strengthNodes = PhotonSabreLumaTuningNodes(
            snr5 = PhotonPyramidOverrides(0.60f, 0.45f, 0.30f, 0.15f, 0.15f),
            snr20 = PhotonPyramidOverrides(0.35f, 0.20f, 0.10f, 0.50f, 0f),
            snr40 = PhotonPyramidOverrides(0.65f, 0.35f, 0.35f, 0.20f, 0.05f),
        )
        val revertNodes = PhotonSabreLumaTuningNodes(
            // The protobuf's fifth layer has no revert field. AGC's L5A is outlier.
            snr5 = PhotonPyramidOverrides(-1f, -1f, -1f, 0f, null),
            snr20 = PhotonPyramidOverrides(-1f, -1f, 0f, -1f, null),
            snr40 = PhotonPyramidOverrides(0f, 0f, 0f, 0f, null),
        )
        val outlierNodes = PhotonSabreLumaTuningNodes(
            snr5 = PhotonPyramidOverrides(0.05f, 0f, 0f, 0.05f, 0f),
            snr20 = PhotonPyramidOverrides(0.05f, -1f, 0f, 0f, -1f),
            snr40 = PhotonPyramidOverrides(0f, 0.05f, 0f, 0f, 0f),
        )

        PhotonDenoiseTuning(
            lumaStrengthScale = strengthScale,
            detailReconstructionScale = revertScale,
            outlierRejectionScale = outlierScale,
            sabreLumaNodes = strengthNodes,
            sabreLumaRevertNodes = revertNodes,
            sabreLumaOutlierNodes = outlierNodes,
        ).normalized()
    }

    @Test
    fun p0NodeLookupAndInterpolationMatchOriginalArm64Bits() {
        val rows = requireNotNull(javaClass.getResourceAsStream(
            "/noise_profiles/agc96_p0_luma_interpolation.csv",
        )).bufferedReader().use { it.readLines().drop(1) }
        assertEquals(180, rows.size)
        val points = p0Points()
        for (line in rows) {
            val row = line.split(',')
            val snr = Float.fromBits(row[0].toLong(16).toInt())
            val actual = MgcFullResolutionDenoise.interpolateTuning(snr, points)
            val values = when (row[1]) {
                "strength" -> actual.strength
                "revert" -> actual.revertFactor
                "outlier" -> actual.outlierDistance
                else -> error(line)
            }
            assertEquals(line, row[3].toLong(16).toInt(), values[row[2].toInt()].toRawBits())
        }
    }

    @Test
    fun p0OverridesAllSnrNodesAndPreservesSignedFieldsThroughScaling() {
        val expectedStrength = listOf(
            floatArrayOf(1.5f, 1.125f, 0.75f, 0.375f, 0.1875f),
            floatArrayOf(0.875f, 0.5f, 0.25f, 1.25f, 0f),
            floatArrayOf(1.625f, 0.875f, 0.875f, 0.5f, 0.0625f),
        )
        val expectedRevert = listOf(
            floatArrayOf(-2f, -2f, -2f, 0f, 0f),
            floatArrayOf(-2f, -2f, 0f, -2f, 0f),
            floatArrayOf(0f, 0f, 0f, 0f, 0f),
        )
        val expectedOutlier = listOf(
            floatArrayOf(0.0375f, 0f, 0f, 0.0375f, 0f),
            floatArrayOf(0.0375f, -0.75f, 0f, 0f, -0.75f),
            floatArrayOf(0f, 0.0375f, 0f, 0f, 0f),
        )
        p0Points().forEachIndexed { index, point ->
            val actual = scaleP0(point.tuning)
            assertArrayEquals(expectedStrength[index], actual.strength, 1e-7f)
            assertArrayEquals(expectedRevert[index], actual.revertFactor, 0f)
            assertArrayEquals(expectedOutlier[index], actual.outlierDistance, 1e-7f)
        }
    }

    @Test
    fun p0InterpolatesSignedFieldsBeforeMultipliersAndClampsOutsideSnrRange() {
        val points = p0Points()
        fun at(snr: Float) = scaleP0(MgcFullResolutionDenoise.interpolateTuning(snr, points))
        val lowMid = at(12.5f)
        assertArrayEquals(floatArrayOf(1.1875f, 0.8125f, 0.5f, 0.8125f, 0.09375f), lowMid.strength, 2e-7f)
        assertArrayEquals(floatArrayOf(-2f, -2f, -1f, -1f, 0f), lowMid.revertFactor, 0f)
        assertArrayEquals(floatArrayOf(0.0375f, -0.375f, 0f, 0.01875f, -0.375f), lowMid.outlierDistance, 1e-7f)
        val highMid = at(30f)
        assertArrayEquals(floatArrayOf(1.25f, 0.6875f, 0.5625f, 0.875f, 0.03125f), highMid.strength, 2e-7f)
        assertArrayEquals(floatArrayOf(-1f, -1f, 0f, -1f, 0f), highMid.revertFactor, 0f)
        assertArrayEquals(floatArrayOf(0.01875f, -0.35625f, 0f, 0f, -0.375f), highMid.outlierDistance, 1e-7f)
        assertArrayEquals(at(5f).strength, at(0f).strength, 0f)
        assertArrayEquals(at(40f).strength, at(60f).strength, 0f)
        // Interpolating cannot modify the stored nodes for the next frame.
        assertArrayEquals(floatArrayOf(-1f, -1f, -1f, 0f, 0f), points[0].tuning.revertFactor, 0f)
    }

    private fun p0Points(): List<MgcFullResolutionDenoise.TuningPoint> {
        val defaults = agcP0Fixture
        return listOf(5f, 20f, 40f).map { snr ->
            MgcFullResolutionDenoise.TuningPoint(
                snr,
                MgcFullResolutionDenoise.applySabreLumaNodeOverrides(
                    tuning = MgcFullResolutionDenoise.Tuning(FloatArray(5) { 9f }, FloatArray(5), FloatArray(5) { 9f }),
                    snr = snr,
                    nodes = defaults.sabreLumaNodes,
                    revertNodes = defaults.sabreLumaRevertNodes,
                    outlierNodes = defaults.sabreLumaOutlierNodes,
                ),
            )
        }
    }

    private fun scaleP0(tuning: MgcFullResolutionDenoise.Tuning): MgcFullResolutionDenoise.Tuning {
        val defaults = agcP0Fixture
        return MgcFullResolutionDenoise.applyCoreDenoiseScales(
            tuning = tuning,
            globalStrengthScale = 1f,
            strengthLevelScales = defaults.lumaStrengthScale.toFloatArray(),
            revertLevelScales = defaults.detailReconstructionScale.toFloatArray(),
            outlierLevelScales = defaults.outlierRejectionScale.toFloatArray(),
        )
    }

    @Test
    fun userAdjustmentNoiseModelMapsCamera2CfaPhasesToCanonicalRgb() {
        val metadata = metadata(
            cfaPattern = RawMetadata.CFA_BGGR,
            noiseProfileLayout = RawNoiseProfileLayout.CAMERA2_CFA,
            channelNoiseProfile = floatArrayOf(
                8f, 80f,
                4f, 40f,
                2f, 20f,
                1f, 10f,
            ),
        )

        val noise = requireNotNull(
            MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata),
        )

        assertArrayEquals(floatArrayOf(10f, 30f, 80f), noise.read, 0f)
        assertArrayEquals(floatArrayOf(1f, 3f, 8f), noise.shot, 0f)
    }

    @Test
    fun userAdjustmentNoiseModelRejectsIncompleteCanonicalProfile() {
        val metadata = metadata(
            cfaPattern = RawMetadata.CFA_RGGB,
            noiseProfileLayout = RawNoiseProfileLayout.CANONICAL_BAYER,
            channelNoiseProfile = floatArrayOf(1f, 10f, 2f, 20f, 4f, 40f),
        )

        assertNull(MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata))
    }

    @Test
    fun lumaStrengthScalesChangeOnlyFiveLevelStrengthFields() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = floatArrayOf(6f, 7f, 8f, 9f, 10f),
            outlierDistance = floatArrayOf(11f, 12f, 13f, 14f, 15f),
        )

        val patched = MgcFullResolutionDenoise.applyLumaStrengthScales(
            tuning = original,
            globalScale = 0.5f,
            levelScales = floatArrayOf(2f, 2f, 2f, 2f, 3f),
        )

        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f, 7.5f), patched.strength, 0f)
        assertArrayEquals(original.revertFactor, patched.revertFactor, 0f)
        assertArrayEquals(original.outlierDistance, patched.outlierDistance, 0f)
    }

    @Test
    fun denoiseDomainsMultiplyTheirIndependentProtoFields() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = floatArrayOf(2f, 3f, 4f, 5f, 6f),
            outlierDistance = floatArrayOf(3f, 4f, 5f, 6f, 7f),
        )

        val patched = MgcFullResolutionDenoise.applyCoreDenoiseScales(
            tuning = original,
            globalStrengthScale = 0.5f,
            strengthLevelScales = floatArrayOf(2f, 2f, 2f, 2f, 3f),
            revertLevelScales = floatArrayOf(0.25f, 0.25f, 0.25f, 0.25f, 0.5f),
            outlierLevelScales = floatArrayOf(4f, 4f, 4f, 4f, 5f),
        )

        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f, 7.5f), patched.strength, 0f)
        assertArrayEquals(floatArrayOf(0.5f, 0.75f, 1f, 1.25f, 3f), patched.revertFactor, 0f)
        assertArrayEquals(floatArrayOf(12f, 16f, 20f, 24f, 35f), patched.outlierDistance, 0f)
    }

    @Test
    fun sabreLumaOverridesReplaceTuningNodeBeforeInterpolation() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = FloatArray(5) { 6f },
            outlierDistance = FloatArray(5) { 7f },
        )
        val nodes = PhotonSabreLumaTuningNodes(
            snr5 = PhotonPyramidOverrides(0.8f, null, 0.5f, null, 0.7f),
        )

        val patched = MgcFullResolutionDenoise.applySabreLumaNodeOverrides(
            tuning = original,
            snr = PhotonSabreLumaTuningNodes.SNR_5,
            nodes = nodes,
        )

        assertArrayEquals(floatArrayOf(0.8f, 2f, 0.5f, 4f, 0.7f), patched.strength, 0f)
        assertArrayEquals(original.revertFactor, patched.revertFactor, 0f)
        assertArrayEquals(original.outlierDistance, patched.outlierDistance, 0f)
    }

    @Test
    fun fusionCorrelationControlScalesSpectrumNotNoiseCoefficients() {
        val identity = MgcFullResolutionDenoise.applyFusionCorrelationScale(
            correlation = null,
            scale = 0.5f,
            enabled = true,
        )
        assertArrayEquals(FloatArray(128) { 0.5f }, requireNotNull(identity), 0f)

        val untouched = FloatArray(128) { 2f }
        assertArrayEquals(
            untouched,
            requireNotNull(
                MgcFullResolutionDenoise.applyFusionCorrelationScale(
                    correlation = untouched,
                    scale = 0.5f,
                    enabled = false,
                ),
            ),
            0f,
        )
    }

    private fun metadata(
        cfaPattern: Int,
        noiseProfileLayout: RawNoiseProfileLayout,
        channelNoiseProfile: FloatArray,
    ): RawMetadata = RawMetadata(
        width = 64,
        height = 64,
        cfaPattern = cfaPattern,
        blackLevel = FloatArray(4),
        whiteLevel = 65535f,
        whiteBalanceGains = FloatArray(4) { 1f },
        colorCorrectionMatrix = floatArrayOf(
            1f, 0f, 0f,
            0f, 1f, 0f,
            0f, 0f, 1f,
        ),
        channelNoiseProfile = channelNoiseProfile,
        noiseProfileLayout = noiseProfileLayout,
    )
}
