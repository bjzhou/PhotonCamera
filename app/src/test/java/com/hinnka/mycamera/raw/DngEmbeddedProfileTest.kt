package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DngEmbeddedProfileTest {
    @Test
    fun canonicalPhotonHdrProfileNameIsRecognized() {
        assertTrue(
            DngEmbeddedProfile.isPhotonPgtmProfileName(
                DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
            )
        )
        assertTrue(DngEmbeddedProfile.isPhotonPgtmProfileName("Photon PGTM"))
        assertFalse(DngEmbeddedProfile.isPhotonPgtmProfileName("Google Embedded Camera Profile"))
        assertFalse(DngEmbeddedProfile.isPhotonPgtmProfileName(null))
    }
}
