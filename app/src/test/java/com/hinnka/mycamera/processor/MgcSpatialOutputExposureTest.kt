package com.hinnka.mycamera.processor

import kotlin.math.pow
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialOutputExposureTest {
    @Test
    fun acceptedUltrashortPreservesHeadroomAndRestoresReferenceBrightnessInMetadata() {
        val plan = MgcSpatialOutputExposure.forAcceptedUltrashort(exposureRatio = 8f)

        assertEquals(0.125f, plan.normalizationScale, 1e-6f)
        assertEquals(3f, plan.baselineExposureEv ?: Float.NaN, 1e-6f)
        assertEquals(0.125f, plan.shotNoiseScale, 1e-6f)
        assertEquals(0.015625f, plan.readNoiseVarianceScale, 1e-6f)
        assertEquals(
            1f,
            plan.normalizationScale * 2f.pow(plan.baselineExposureEv ?: Float.NaN),
            1e-6f,
        )
        assertTrue(4f * plan.normalizationScale < 1f)
    }

    @Test
    fun rejectedUltrashortKeepsReferenceExposureDomain() {
        val plan = MgcSpatialOutputExposure.forAcceptedUltrashort(exposureRatio = null)

        assertEquals(1f, plan.normalizationScale, 0f)
        assertNull(plan.baselineExposureEv)
    }
}
