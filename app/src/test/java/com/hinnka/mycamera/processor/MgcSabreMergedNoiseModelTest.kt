package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreMergedNoiseModelTest {
    @Test
    fun identicalFramesFollowClassicSnrCurveAndInverseFrameCount() {
        val frame = MgcSabreMergedNoiseModel.Frame(
            floatArrayOf(0.001f, 0.002f, 0.003f),
            floatArrayOf(0.01f, 0.02f, 0.03f),
        )
        for ((snr, correction) in listOf(0f to 0.8f, 0.5f to 0.8f,
            2.25f to 0.9f, 4f to 1f, 7f to 0.85f, 10f to 0.7f, 30f to 0.7f)) {
            for (count in listOf(1, 2, 3, 8)) {
                val output = MgcSabreMergedNoiseModel.merge(List(count) { frame }, snr, 1f)
                assertArrayEquals(FloatArray(3) { frame.read[it] * correction / count },
                    output.read, 1e-9f)
                assertArrayEquals(FloatArray(3) { frame.shot[it] * correction / count },
                    output.shot, 1e-8f)
                assertArrayEquals(FloatArray(128) { 1f }, output.correlation, 0f)
            }
        }
    }

    @Test
    fun heterogeneousExposureNormalizedFramesRetainBothNoiseModels() {
        // Frame 2 has already been transported by gain=2: read*4, shot*2.
        // Independent equal-weight averaging yields (model1 + model2)/4 at SNR=4.
        val output = MgcSabreMergedNoiseModel.merge(listOf(
            MgcSabreMergedNoiseModel.Frame(
                floatArrayOf(0.001f, 0.002f, 0.004f),
                floatArrayOf(0.01f, 0.02f, 0.04f),
            ),
            MgcSabreMergedNoiseModel.Frame(
                floatArrayOf(0.008f, 0.024f, 0.032f),
                floatArrayOf(0.06f, 0.08f, 0.16f),
            ),
        ), 4f, 1f)
        assertArrayEquals(floatArrayOf(0.00225f, 0.0065f, 0.009f), output.read, 1e-9f)
        assertArrayEquals(floatArrayOf(0.0175f, 0.025f, 0.05f), output.shot, 1e-8f)
        assertEquals(0.2f / kotlin.math.sqrt(0.0115f),
            MgcSpatialMergeTuning.outputNoiseModelSnr(0.2f, output.read[1], output.shot[1])!!,
            1e-6f)
    }

    @Test
    fun constructorSeedChangesOnlySpectrumAndSurvivesFrameComposition() {
        val frame = MgcSabreMergedNoiseModel.Frame(
            floatArrayOf(0.001f, 0.002f, 0.003f),
            floatArrayOf(0.01f, 0.02f, 0.03f),
        )
        for (count in listOf(1, 3, 8)) {
            val frames = List(count) { frame }
            val classic = MgcSabreMergedNoiseModel.merge(frames, 20f, 1f)
            val configured = MgcSabreMergedNoiseModel.merge(
                frames, 20f, PhotonDenoiseTuning(noiseSpectrumSeed = 0.5f).noiseSpectrumSeed,
            )
            assertArrayEquals(classic.read, configured.read, 0f)
            assertArrayEquals(classic.shot, configured.shot, 0f)
            assertArrayEquals(FloatArray(128) { 0.5f }, configured.correlation, 0f)
        }
    }
}
