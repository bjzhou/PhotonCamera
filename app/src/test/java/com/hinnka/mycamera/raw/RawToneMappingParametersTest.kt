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

    @Test
    fun profileAndAcr3ToneMapsRemainDistinctSelections() {
        val profile = RawToneMappingParameters.DEFAULT
            .withProfileToneMapMode(RawProfileToneMapMode.Profile)
        val acr3 = profile.withProfileToneMapMode(RawProfileToneMapMode.Default)

        assertTrue(profile.useProfileToneMap)
        assertEquals(RawProfileToneMapMode.Profile, profile.profileToneMapMode)
        assertEquals(false, acr3.useProfileToneMap)
        assertEquals(RawProfileToneMapMode.Default, acr3.profileToneMapMode)
    }
}
