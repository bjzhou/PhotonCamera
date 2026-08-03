package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class GlesGraphicsShaderSourcesTest {
    @Test
    fun fullscreenVertexLanguageMatchesEveryRadianceFragmentLanguage() {
        val fragments = listOf(
            GlesRawRadianceFusionShaders.accumulate(rawCommon = ""),
            GlesRawRadianceFusionShaders.normalize(showRejections = false),
            GlesRawRadianceFusionShaders.validateHighlightFlow,
            GlesRawRadianceFusionShaders.longEligibility,
            GlesRadianceHighlightShaders.buildSupport,
        )

        fragments.forEach { fragment ->
            val vertex = GlesGraphicsShaderSources.fullscreenVertexFor(fragment)
            assertEquals(
                GlesGraphicsShaderSources.languageVersionOf(fragment),
                GlesGraphicsShaderSources.languageVersionOf(vertex),
            )
        }
    }

    @Test
    fun radianceAccumulatorUsesGlslEs310Pair() {
        val fragment = GlesRawRadianceFusionShaders.accumulate(rawCommon = "")
        val vertex = GlesGraphicsShaderSources.fullscreenVertexFor(fragment)

        assertEquals(310, GlesGraphicsShaderSources.languageVersionOf(fragment))
        assertEquals(310, GlesGraphicsShaderSources.languageVersionOf(vertex))
    }
}
