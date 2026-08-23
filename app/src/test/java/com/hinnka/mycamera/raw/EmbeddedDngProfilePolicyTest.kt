package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EmbeddedDngProfilePolicyTest {
    @Test
    fun embeddedProfileApplicationUsesOnlyEngineAndDcpSelection() {
        val active = resolve()

        assertTrue(active.hasEmbeddedProfile)
        assertTrue(active.applyEmbeddedProfile)

        val inactiveBranches = listOf(
            resolve(colorEngine = RawRenderingEngine.AgX),
            resolve(hasDcpSelection = true),
        )
        inactiveBranches.forEach { decision ->
            assertFalse(decision.applyEmbeddedProfile)
        }
    }

    @Test
    fun dngWithoutEmbeddedProfileHasNoProfileToApply() {
        val decision = resolve(hasEmbeddedProfile = false)

        assertFalse(decision.hasEmbeddedProfile)
        assertFalse(decision.applyEmbeddedProfile)
    }

    private fun resolve(
        hasEmbeddedProfile: Boolean = true,
        colorEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        hasDcpSelection: Boolean = false,
    ): EmbeddedDngProfileDecision {
        return EmbeddedDngProfilePolicy.resolve(
            hasEmbeddedProfile = hasEmbeddedProfile,
            colorEngine = colorEngine,
            hasDcpSelection = hasDcpSelection,
        )
    }
}
