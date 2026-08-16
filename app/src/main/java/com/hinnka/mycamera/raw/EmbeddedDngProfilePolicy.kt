package com.hinnka.mycamera.raw

internal data class EmbeddedDngProfileDecision(
    val hasEmbeddedProfile: Boolean,
    val applyEmbeddedProfile: Boolean,
) {
    fun shouldRetainEmbeddedPgtm(): Boolean {
        return applyEmbeddedProfile
    }

    fun shouldGeneratePhotonPgtm(photonHdrRequested: Boolean): Boolean {
        return photonHdrRequested && !applyEmbeddedProfile
    }
}

/** Treats every component of an embedded DNG profile as one indivisible render profile. */
internal object EmbeddedDngProfilePolicy {
    fun resolve(
        hasEmbeddedProfile: Boolean,
        colorEngine: RawRenderingEngine,
        profileToneMapMode: RawProfileToneMapMode,
        hasDcpSelection: Boolean,
    ): EmbeddedDngProfileDecision {
        val applyEmbeddedProfile = hasEmbeddedProfile &&
            colorEngine == RawRenderingEngine.AdobeCurve &&
            profileToneMapMode == RawProfileToneMapMode.Default &&
            !hasDcpSelection
        return EmbeddedDngProfileDecision(
            hasEmbeddedProfile = hasEmbeddedProfile,
            applyEmbeddedProfile = applyEmbeddedProfile,
        )
    }
}
