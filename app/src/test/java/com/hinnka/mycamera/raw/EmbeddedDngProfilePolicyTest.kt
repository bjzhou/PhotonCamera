package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EmbeddedDngProfilePolicyTest {
    @Test
    fun embeddedProfileAppliesOnlyWithAdobeProfileModeAndNoExternalDcp() {
        val active = resolve()

        assertTrue(active.hasEmbeddedProfile)
        assertTrue(active.applyEmbeddedProfile)
        assertTrue(active.shouldRetainEmbeddedPgtm())

        val inactiveBranches = listOf(
            resolve(colorEngine = RawRenderingEngine.AgX),
            resolve(profileToneMapMode = RawProfileToneMapMode.Default),
            resolve(profileToneMapMode = RawProfileToneMapMode.OppoMaster),
            resolve(hasDcpSelection = true),
        )
        inactiveBranches.forEach { decision ->
            assertFalse(decision.applyEmbeddedProfile)
            assertFalse(decision.shouldRetainEmbeddedPgtm())
        }
    }

    @Test
    fun disabledEmbeddedProfileDoesNotRetainItsPgtm() {
        val decision = resolve(colorEngine = RawRenderingEngine.DarktableFilmic)

        assertFalse(decision.shouldRetainEmbeddedPgtm())
    }

    @Test
    fun dngWithoutEmbeddedProfileHasNoPgtmToRetain() {
        val decision = resolve(hasEmbeddedProfile = false)

        assertFalse(decision.hasEmbeddedProfile)
        assertFalse(decision.shouldRetainEmbeddedPgtm())
    }

    private fun resolve(
        hasEmbeddedProfile: Boolean = true,
        colorEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Profile,
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
