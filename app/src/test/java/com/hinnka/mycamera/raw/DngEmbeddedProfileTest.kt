package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DngEmbeddedProfileTest {
    @Test
    fun photonHdrProfileUsesExactPersistedProfileName() {
        assertTrue(
            DngEmbeddedProfile.isPhotonHdrProfileName(
                DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
            )
        )
        assertTrue(DngEmbeddedProfile.isPhotonHdrProfileName(" photon hdr "))
        assertFalse(DngEmbeddedProfile.isPhotonHdrProfileName("Photon PGTM"))
        assertFalse(DngEmbeddedProfile.isPhotonHdrProfileName(null))
    }

    @Test
    fun profileSelectionUsesRequestedIdAndFallsBackToPrimaryOnlyWhenUnset() {
        val primary = entry(DngEmbeddedProfile.PRIMARY_PROFILE_ID, "Primary")
        val extra = entry("extra:0", "Extra")
        val profiles = listOf(primary, extra)

        assertEquals(
            extra,
            DngEmbeddedProfile.resolveSelection(profiles, extra.id),
        )
        assertEquals(
            primary,
            DngEmbeddedProfile.resolveSelection(profiles, null),
        )
        assertEquals(
            primary,
            DngEmbeddedProfile.resolveSelection(profiles, "missing"),
        )
    }

    private fun entry(id: String, name: String): DngEmbeddedProfileEntry {
        return DngEmbeddedProfileEntry(
            id = id,
            profileName = name,
            profile = null,
            profileGainTableMap = null,
        )
    }
}
