package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
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

    @Test
    fun photonPgtmIsNotExposedAsEmbeddedProfileToneCurve() {
        val photonCurve = DcpToneCurve(DngProfileToneCurve.photonPgtmToneCurvePoints())
        val regularCurve = DcpToneCurve(floatArrayOf(0f, 0f, 0.5f, 0.62f, 1f, 1f))

        assertNull(
            DngEmbeddedProfile.resolveEmbeddedProfileToneCurve(
                DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME,
                regularCurve,
            )
        )
        assertNull(
            DngEmbeddedProfile.resolveEmbeddedProfileToneCurve(
                "Legacy generated profile",
                photonCurve,
            )
        )
        assertNotNull(
            DngEmbeddedProfile.resolveEmbeddedProfileToneCurve(
                "Camera embedded profile",
                regularCurve,
            )
        )
    }
}
