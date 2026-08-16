package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EmbeddedDngProfilePolicyTest {
    @Test
    fun embeddedProfileAppliesOnlyWithAdobeDefaultAndNoExternalDcp() {
        val active = resolve()

        assertTrue(active.hasEmbeddedProfile)
        assertTrue(active.applyEmbeddedProfile)
        assertTrue(active.shouldRetainEmbeddedPgtm())
        assertFalse(active.shouldGeneratePhotonPgtm(photonHdrRequested = true))

        val inactiveBranches = listOf(
            resolve(colorEngine = RawRenderingEngine.AgX),
            resolve(profileToneMapMode = RawProfileToneMapMode.OppoMaster),
            resolve(hasDcpSelection = true),
        )
        inactiveBranches.forEach { decision ->
            assertFalse(decision.applyEmbeddedProfile)
            assertFalse(decision.shouldRetainEmbeddedPgtm())
            assertTrue(decision.shouldGeneratePhotonPgtm(photonHdrRequested = true))
        }
    }

    @Test
    fun photonHdrGeneratesIndependentPgtmWhenEmbeddedProfileIsDisabled() {
        val decision = resolve(colorEngine = RawRenderingEngine.DarktableFilmic)

        assertFalse(decision.shouldRetainEmbeddedPgtm())
        assertTrue(decision.shouldGeneratePhotonPgtm(photonHdrRequested = true))
        assertFalse(decision.shouldGeneratePhotonPgtm(photonHdrRequested = false))
    }

    @Test
    fun dngWithoutEmbeddedProfileKeepsPhotonHdrBehavior() {
        val decision = resolve(hasEmbeddedProfile = false)

        assertFalse(decision.hasEmbeddedProfile)
        assertFalse(decision.shouldRetainEmbeddedPgtm())
        assertTrue(decision.shouldGeneratePhotonPgtm(photonHdrRequested = true))
    }

    private fun resolve(
        hasEmbeddedProfile: Boolean = true,
        colorEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Default,
        hasDcpSelection: Boolean = false,
    ): EmbeddedDngProfileDecision {
        return EmbeddedDngProfilePolicy.resolve(
            hasEmbeddedProfile = hasEmbeddedProfile,
            colorEngine = colorEngine,
            profileToneMapMode = profileToneMapMode,
            hasDcpSelection = hasDcpSelection,
        )
    }
}
