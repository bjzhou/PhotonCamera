package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class RawExposureMathTest {
    @Test
    fun rawExposureProductContainsOnlyTimeAndSensorSensitivity() {
        assertEquals(800_000_000.0, RawExposureMath.product(10_000_000L, 80), 0.0)
    }

    @Test
    fun invalidRawExposureMetadataDoesNotProduceNormalizationScale() {
        assertNull(RawExposureMath.productOrNull(0L, 80))
        assertNull(RawExposureMath.productOrNull(10_000_000L, 0))
        assertNull(RawExposureMath.productOrNull(null, 80))
    }
}
