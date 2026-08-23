package com.hinnka.mycamera.raw

internal data class EmbeddedDngProfileDecision(
    val hasEmbeddedProfile: Boolean,
    val applyEmbeddedProfile: Boolean,
)

/** Resolves embedded profile data independently from the selected Adobe tone curve. */
internal object EmbeddedDngProfilePolicy {
    fun resolve(
        hasEmbeddedProfile: Boolean,
        colorEngine: RawRenderingEngine,
        hasDcpSelection: Boolean,
    ): EmbeddedDngProfileDecision {
        val applyEmbeddedProfile = hasEmbeddedProfile &&
            colorEngine == RawRenderingEngine.AdobeCurve &&
            !hasDcpSelection
        return EmbeddedDngProfileDecision(
            hasEmbeddedProfile = hasEmbeddedProfile,
            applyEmbeddedProfile = applyEmbeddedProfile,
        )
    }
}
