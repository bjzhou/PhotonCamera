package com.hinnka.mycamera.processor

internal data class RawRadianceHighlightAdmissionEvidence(
    val eligibleTileCount: Int,
    val supportedTileCount: Int,
)

internal data class RawRadianceHighlightAdmissionRequirements(
    val minimumEligibleTiles: Int,
    val minimumEligibleCoverage: Float,
)

internal data class RawRadianceHighlightAdmission(
    val accepted: Boolean,
    val eligibleCoverage: Float,
)

/** Selects the temporally ranked anchor that survived normal-frame registration. */
internal fun selectRadianceHighlightAnchor(
    candidateIndices: IntArray,
    frameCount: Int,
    acceptedFrameIndices: Set<Int>,
): Int? {
    if (frameCount <= 0 || acceptedFrameIndices.isEmpty()) return null
    return candidateIndices.firstOrNull { candidate ->
        candidate in 0 until frameCount && candidate in acceptedFrameIndices
    }
}

/**
 * Admits the ultrashort observation against the area that actually needs highlight recovery.
 * Whole-frame quadrant coverage is deliberately irrelevant: a valid highlight may occupy one
 * small corner, while good flow elsewhere says nothing about that highlight.
 */
internal fun planRadianceHighlightAdmission(
    evidence: RawRadianceHighlightAdmissionEvidence,
    requirements: RawRadianceHighlightAdmissionRequirements,
): RawRadianceHighlightAdmission {
    val eligibleTiles = evidence.eligibleTileCount.coerceAtLeast(0)
    val supportedTiles = evidence.supportedTileCount.coerceIn(0, eligibleTiles)
    val coverage = if (eligibleTiles > 0) {
        supportedTiles.toFloat() / eligibleTiles
    } else {
        0f
    }
    val accepted = eligibleTiles >= requirements.minimumEligibleTiles.coerceAtLeast(1) &&
        supportedTiles > 0 &&
        coverage >= requirements.minimumEligibleCoverage.coerceIn(0f, 1f)
    return RawRadianceHighlightAdmission(
        accepted = accepted,
        eligibleCoverage = coverage,
    )
}

/** GPU passes dedicated to the ultrashort highlight observation. */
internal object GlesRadianceHighlightShaders {
    /**
     * Builds evidence on the flow grid after reference -> short flow composition.
     *
     * R: fraction of normal samples lacking highlight headroom.
     * G: fraction of short samples retaining headroom.
     * B: exposure-normalized photometric agreement where both observations are valid.
     * A: final geometric path confidence.
     */
    val buildSupport: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uReferenceProxy;
        uniform sampler2D uShortProxy;
        uniform sampler2D uComposedFlow;
        uniform ivec2 uGridSize;
        uniform ivec2 uPlaneSize;
        uniform int uTileSize;
        uniform float uPhotometricSigmaStart;
        uniform float uPhotometricSigmaFull;
        out vec4 fragColor;

        vec4 proxyAt(sampler2D proxyTexture, vec2 planePosition) {
            vec2 uv = (clamp(
                planePosition,
                vec2(0.0),
                vec2(uPlaneSize - ivec2(1))
            ) + vec2(0.5)) / vec2(uPlaneSize);
            return texture(proxyTexture, uv);
        }

        bool insidePlane(vec2 planePosition) {
            return planePosition.x >= 0.0 && planePosition.y >= 0.0 &&
                planePosition.x <= float(uPlaneSize.x - 1) &&
                planePosition.y <= float(uPlaneSize.y - 1);
        }

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec2 center = min(
                vec2(tile * uTileSize + ivec2(uTileSize / 2)),
                vec2(uPlaneSize - ivec2(1))
            );
            vec4 flow = texelFetch(
                uComposedFlow,
                clamp(tile, ivec2(0), uGridSize - ivec2(1)),
                0
            );
            int sampleSpacing = max(uTileSize / 4, 1);
            float normalNeedSum = 0.0;
            float shortValiditySum = 0.0;
            float photometricSum = 0.0;
            float photometricWeightSum = 0.0;
            float sampleCount = 0.0;
            float sigmaStart2 = uPhotometricSigmaStart * uPhotometricSigmaStart;
            float sigmaFull2 = max(
                uPhotometricSigmaFull * uPhotometricSigmaFull,
                sigmaStart2 + 1e-4
            );
            for (int y = -2; y <= 2; ++y) {
                for (int x = -2; x <= 2; ++x) {
                    vec2 referencePosition = center +
                        vec2(x * sampleSpacing, y * sampleSpacing);
                    vec2 shortPosition = referencePosition + flow.rg;
                    bool inside = insidePlane(referencePosition) &&
                        insidePlane(shortPosition);
                    vec4 referenceSample = proxyAt(uReferenceProxy, referencePosition);
                    vec4 shortSample = proxyAt(uShortProxy, shortPosition);
                    float insideWeight = inside ? 1.0 : 0.0;
                    normalNeedSum += (1.0 - referenceSample.g) * insideWeight;
                    shortValiditySum += shortSample.g * insideWeight;
                    float overlap = referenceSample.g * shortSample.g * insideWeight;
                    float difference = referenceSample.r - shortSample.r;
                    float differenceVariance = max(
                        referenceSample.a + shortSample.a,
                        1e-7
                    );
                    float normalizedResidual = difference * difference / differenceVariance;
                    float agreement = 1.0 - smoothstep(
                        sigmaStart2,
                        sigmaFull2,
                        normalizedResidual
                    );
                    photometricSum += agreement * overlap;
                    photometricWeightSum += overlap;
                    sampleCount += insideWeight;
                }
            }
            float denominator = max(sampleCount, 1.0);
            fragColor = vec4(
                normalNeedSum / denominator,
                shortValiditySum / denominator,
                photometricWeightSum > 1e-5 ?
                    photometricSum / photometricWeightSum : 0.0,
                clamp(flow.a, 0.0, 1.0)
            );
        }
    """.trimIndent()
}
