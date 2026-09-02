package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class PhotonCoreImagingTuningTest {
    @Test
    fun domainControlsKeepIndependentFixedLayouts() {
        val tuning = PhotonCoreImagingTuning(
            denoise = PhotonDenoiseTuning(
                lumaStrengthScale = PhotonPyramidScales(1f, 2f, 3f, 4f, 5f),
                detailReconstructionScale = PhotonPyramidScales(6f, 7f, 8f, 9f, 10f),
                outlierRejectionScale = PhotonPyramidScales(2f, 3f, 4f, 5f, 6f),
                chromaStrengthScale = PhotonPyramidScales(5f, 4f, 3f, 2f, 1f),
            ),
        )

        assertArrayEquals(
            floatArrayOf(1f, 2f, 3f, 4f, 5f),
            tuning.denoise.lumaStrengthScale.toFloatArray(),
            0f,
        )
        assertArrayEquals(
            floatArrayOf(6f, 7f, 8f, 9f, 10f),
            tuning.denoise.detailReconstructionScale.toFloatArray(),
            0f,
        )
    }

    @Test
    fun persistedAndCapturePropertiesRoundTripPhotonModel() {
        val tuning = PhotonCoreImagingTuning(
            fusion = PhotonFusionTuning(
                mergeGradientThreshold = 0.02f,
                missingReferenceSignal = 0.12f,
                noiseCorrelationScale = 0.75f,
            ),
            denoise = PhotonDenoiseTuning(
                lumaStrengthScale = PhotonPyramidScales(0.8f, 0.9f, 1f, 1.1f, 1.2f),
                frequencyResponse = PhotonDenoiseFrequencyResponse(2f, -0.5f),
                sabreLumaNodes = PhotonSabreLumaTuningNodes(
                    snr5 = PhotonPyramidOverrides(0.8f, null, 0.5f, null, 0.7f),
                ),
            ),
            dehaze = PhotonDehazeTuning(
                enabled = true,
                strength = 0.5f,
                dynamicHighlightStrength = 0.75f,
            ),
        )

        assertEquals(tuning, PhotonCoreImagingTuning.fromPersistedString(tuning.toPersistedString()))
        assertEquals(tuning, PhotonCoreImagingTuning.fromCustomProperties(tuning.toCustomProperties()))
    }

    @Test
    fun unrelatedPropertiesAreIgnored() {
        assertEquals(
            PhotonCoreImagingTuning.DEFAULT,
            PhotonCoreImagingTuning.fromCustomProperties(
                mapOf("unknownOldControl" to "4.0"),
            ),
        )
    }

    @Test
    fun normalizationKeepsControlsInsideOperationalRanges() {
        val normalized = PhotonCoreImagingTuning(
            fusion = PhotonFusionTuning(
                mergeGradientThreshold = -2f,
                missingReferenceSignal = 2f,
                noiseCorrelationScale = Float.NaN,
            ),
            denoise = PhotonDenoiseTuning(
                lumaStrengthScale = PhotonPyramidScales(-1f, 100f, 1f, 1f, 1f),
            ),
        ).normalized()

        assertEquals(0f, requireNotNull(normalized.fusion.mergeGradientThreshold), 0f)
        assertEquals(1f, normalized.fusion.missingReferenceSignal, 0f)
        assertEquals(1f, normalized.fusion.noiseCorrelationScale, 0f)
        assertArrayEquals(
            floatArrayOf(0f, 16f, 1f, 1f, 1f),
            normalized.denoise.lumaStrengthScale.toFloatArray(),
            0f,
        )
        assertNull(PhotonCoreImagingTuning.DEFAULT.fusion.mergeGradientThreshold)
    }

    @Test
    fun dehazeNormalizationKeepsIndependentOperationalControls() {
        val normalized = PhotonDehazeTuning(
            enabled = true,
            strength = 9f,
            dynamicHighlightStrength = -1f,
        ).normalized()

        assertEquals(4f, normalized.strength, 0f)
        assertEquals(0f, normalized.dynamicHighlightStrength, 0f)
        assertEquals(false, normalized.isActive)
    }

    @Test
    fun missingOperationalDehazeValuesUseHiddenDefault() {
        val tuning = PhotonCoreImagingTuning.fromCustomProperties(
            mapOf(
                PhotonCoreImagingTuning.DEHAZE_ENABLED_PROPERTY to "true",
                "photonDehazeExposureBiasStops" to "1.0",
                "photonDehazeAtmosphericRegulation" to "2.0",
            ),
        )

        assertEquals(true, tuning.dehaze.enabled)
        assertEquals(1f, tuning.dehaze.strength, 0f)
        assertEquals(1f, tuning.dehaze.dynamicHighlightStrength, 0f)
        assertEquals(false, tuning.dehaze.isActive)
    }

    @Test
    fun missingReferenceSignalUsesPhotonFallbackDirectly() {
        assertEquals(0.12f, resolveFusionReferenceSignal(0.12f, 0.3f), 0f)
        assertEquals(0.3f, resolveFusionReferenceSignal(null, 0.3f), 0f)
        assertEquals(0.18f, resolveFusionReferenceSignal(null, Float.NaN), 0f)
    }
}
