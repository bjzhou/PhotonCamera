package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawToneMappingParametersTest {
    @Test
    fun photonHdrIsIndependentFromAdobeProfileToneMap() {
        val parameters = RawToneMappingParameters.DEFAULT
            .withPhotonHdr(true)
            .withOppoMasterToneMap(true)

        assertTrue(parameters.usePhotonHdr)
        assertTrue(parameters.useOppoMasterToneMap)
        assertEquals(RawProfileToneMapMode.OppoMaster, parameters.profileToneMapMode)
    }

    @Test
    fun changingAdobeProfileToneMapPreservesPhotonHdr() {
        val parameters = RawToneMappingParameters.DEFAULT
            .withPhotonHdr(true)
            .withProfileToneMapMode(RawProfileToneMapMode.Default)

        assertTrue(parameters.usePhotonHdr)
        assertEquals(RawProfileToneMapMode.Default, parameters.profileToneMapMode)
    }
}
