package com.hinnka.mycamera.processor

/**
 * GPU passes dedicated to the ultrashort highlight observation.
 *
 * Direct normal-to-short flow remains the only geometric measurement. Saturated tiles never
 * become alignment seeds: their flow is inferred once from a mutually observable collar, then a
 * separate rejection field decides whether the resulting hole may be filled. Rejection may spread
 * through the saturated core, inferred flow may not.
 */
internal object GlesRadianceHighlightShaders {
    /**
     * Builds dense evidence for direct or collar-inferred flow.
     *
     * R: fraction of normal samples lacking highlight headroom.
     * G: minimum short-frame headroom validity in the sampled tile.
     * B: exposure-normalized photometric agreement where both observations are valid.
     * A: geometric confidence carried by the supplied flow.
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
            vec4 flow = texelFetch(
                uComposedFlow,
                clamp(tile, ivec2(0), uGridSize - ivec2(1)),
                0
            );
            float normalNeedSum = 0.0;
            float shortValidityMin = 1.0;
            float photometricSum = 0.0;
            float photometricWeightSum = 0.0;
            float sampleCount = 0.0;
            float sigmaStart2 = uPhotometricSigmaStart * uPhotometricSigmaStart;
            float sigmaFull2 = max(
                uPhotometricSigmaFull * uPhotometricSigmaFull,
                sigmaStart2 + 1e-4
            );
            const int MAX_TILE_SIZE = 32;
            for (int y = 0; y < MAX_TILE_SIZE; ++y) {
                for (int x = 0; x < MAX_TILE_SIZE; ++x) {
                    if (x >= uTileSize || y >= uTileSize) continue;
                    vec2 referencePosition = vec2(
                        tile * uTileSize + ivec2(x, y)
                    );
                    if (!insidePlane(referencePosition)) continue;
                    vec2 shortPosition = referencePosition + flow.rg;
                    bool shortInside = insidePlane(shortPosition);
                    vec4 referenceSample = proxyAt(uReferenceProxy, referencePosition);
                    vec4 shortSample = proxyAt(uShortProxy, shortPosition);
                    normalNeedSum += 1.0 - referenceSample.g;
                    shortValidityMin = min(
                        shortValidityMin,
                        shortInside ? shortSample.g : 0.0
                    );
                    float overlap = referenceSample.g * shortSample.g *
                        (shortInside ? 1.0 : 0.0);
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
                    sampleCount += 1.0;
                }
            }
            float denominator = max(sampleCount, 1.0);
            fragColor = vec4(
                normalNeedSum / denominator,
                shortValidityMin,
                photometricWeightSum > 1e-5 ?
                    photometricSum / photometricWeightSum : 0.0,
                clamp(flow.a, 0.0, 1.0)
            );
        }
    """.trimIndent()

    /**
     * Produces a continuous collar-consensus flow without recursive propagation.
     *
     * Only direct forward/backward-validated samples outside the saturated core can contribute.
     * Angular coverage and flow variance make a one-sided or multi-motion collar lose confidence.
     */
    val inferFlowFromCollar: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uDirectFlow;
        uniform sampler2D uDirectSupport;
        uniform ivec2 uGridSize;
        uniform int uRadiusTiles;
        uniform float uNeedStart;
        uniform float uNeedFull;
        uniform float uDirectConfidenceStart;
        uniform float uDirectConfidenceFull;
        uniform float uShortValidityThreshold;
        uniform float uPhotometricThreshold;
        uniform float uMinimumSampleWeight;
        uniform float uFullSampleWeight;
        uniform float uMinimumSectorWeight;
        uniform int uMinimumSectors;
        uniform float uFlowSigmaStart;
        uniform float uFlowSigmaFull;
        out vec4 fragColor;

        const int MAX_RADIUS_TILES = 4;

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            float radius2 = float(max(uRadiusTiles * uRadiusTiles, 1));
            float sampleWeightSum = 0.0;
            vec2 weightedFlowSum = vec2(0.0);
            float weightedFlowNormSum = 0.0;
            vec4 sectorWeights = vec4(0.0);

            for (int y = -MAX_RADIUS_TILES; y <= MAX_RADIUS_TILES; ++y) {
                for (int x = -MAX_RADIUS_TILES; x <= MAX_RADIUS_TILES; ++x) {
                    if (x == 0 && y == 0) continue;
                    if (abs(x) > uRadiusTiles || abs(y) > uRadiusTiles) continue;
                    ivec2 sampleTile = tile + ivec2(x, y);
                    if (any(lessThan(sampleTile, ivec2(0))) ||
                        any(greaterThanEqual(sampleTile, uGridSize))) {
                        continue;
                    }
                    vec4 directFlow = texelFetch(uDirectFlow, sampleTile, 0);
                    vec4 support = texelFetch(uDirectSupport, sampleTile, 0);
                    float normalObservable = 1.0 - smoothstep(
                        min(uNeedStart, uNeedFull),
                        max(uNeedStart, uNeedFull),
                        support.r
                    );
                    float flowConfidence = smoothstep(
                        min(uDirectConfidenceStart, uDirectConfidenceFull),
                        max(uDirectConfidenceStart, uDirectConfidenceFull),
                        directFlow.a
                    );
                    float shortValidity = smoothstep(
                        min(uShortValidityThreshold, 0.999),
                        1.0,
                        support.g
                    );
                    float photometricAgreement = smoothstep(
                        min(uPhotometricThreshold, 0.999),
                        1.0,
                        support.b
                    );
                    float spatialWeight = exp(
                        -0.5 * float(x * x + y * y) / radius2
                    );
                    float weight = normalObservable * flowConfidence *
                        shortValidity * photometricAgreement * spatialWeight;
                    sampleWeightSum += weight;
                    weightedFlowSum += directFlow.rg * weight;
                    weightedFlowNormSum += dot(directFlow.rg, directFlow.rg) * weight;

                    if (abs(x) >= abs(y)) {
                        if (x < 0) sectorWeights.x += weight;
                        else sectorWeights.y += weight;
                    } else {
                        if (y < 0) sectorWeights.z += weight;
                        else sectorWeights.w += weight;
                    }
                }
            }

            vec2 consensusFlow = weightedFlowSum / max(sampleWeightSum, 1e-6);
            float flowVariance = max(
                weightedFlowNormSum / max(sampleWeightSum, 1e-6) -
                    dot(consensusFlow, consensusFlow),
                0.0
            );
            float flowSigma = sqrt(flowVariance);
            float sectorCount =
                step(uMinimumSectorWeight, sectorWeights.x) +
                step(uMinimumSectorWeight, sectorWeights.y) +
                step(uMinimumSectorWeight, sectorWeights.z) +
                step(uMinimumSectorWeight, sectorWeights.w);
            float sampleConfidence = smoothstep(
                min(uMinimumSampleWeight, uFullSampleWeight),
                max(uMinimumSampleWeight, uFullSampleWeight),
                sampleWeightSum
            );
            float sectorConfidence = step(
                float(max(uMinimumSectors, 1)) - 0.5,
                sectorCount
            );
            float consistencyConfidence = 1.0 - smoothstep(
                min(uFlowSigmaStart, uFlowSigmaFull),
                max(uFlowSigmaStart, uFlowSigmaFull),
                flowSigma
            );
            bool canBeEnclosed =
                tile.x >= uRadiusTiles && tile.y >= uRadiusTiles &&
                tile.x < uGridSize.x - uRadiusTiles &&
                tile.y < uGridSize.y - uRadiusTiles;
            float confidence = sampleConfidence * sectorConfidence *
                consistencyConfidence * (canBeEnclosed ? 1.0 : 0.0);
            fragColor = vec4(
                consensusFlow,
                flowSigma,
                clamp(confidence, 0.0, 1.0)
            );
        }
    """.trimIndent()

    /**
     * Seeds rejection inside a saturated core whenever its collar model or mapped short-frame
     * headroom is not trustworthy. G stores the core mask so later passes cannot cross it.
     */
    val buildHoleRejectionSeed: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInferredFlow;
        uniform sampler2D uCandidateSupport;
        uniform float uNeedThreshold;
        uniform float uAcceptanceConfidence;
        uniform float uShortValidityThreshold;
        out vec4 fragColor;

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec4 inferredFlow = texelFetch(uInferredFlow, tile, 0);
            vec4 support = texelFetch(uCandidateSupport, tile, 0);
            float core = step(uNeedThreshold, support.r);
            float localAccepted =
                step(uAcceptanceConfidence, inferredFlow.a) *
                step(uShortValidityThreshold, support.g);
            float rejection = core * (1.0 - localAccepted);
            fragColor = vec4(rejection, core, 0.0, 1.0);
        }
    """.trimIndent()

    /**
     * Spreads only rejection through the connected saturated core. This prevents a locally valid
     * outer ring from surrounding a deeper unsupported center without ever promoting inferred
     * flow into a new geometric seed.
     */
    val propagateHoleRejection: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInputRejection;
        uniform ivec2 uGridSize;
        out vec4 fragColor;

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec4 center = texelFetch(uInputRejection, tile, 0);
            if (center.g < 0.5) {
                fragColor = center;
                return;
            }
            float rejection = center.r;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 neighborTile = tile + ivec2(x, y);
                    if (any(lessThan(neighborTile, ivec2(0))) ||
                        any(greaterThanEqual(neighborTile, uGridSize))) {
                        continue;
                    }
                    vec4 neighbor = texelFetch(uInputRejection, neighborTile, 0);
                    rejection = max(
                        rejection,
                        neighbor.r * step(0.5, neighbor.g)
                    );
                }
            }
            fragColor = vec4(rejection, center.g, 0.0, 1.0);
        }
    """.trimIndent()

    /**
     * Converts the continuous collar model and propagated region decision into a binary geometric
     * gate. Accepted cores are one all the way to their center; rejected cores are zero.
     */
    val applyHoleDecision: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInferredFlow;
        uniform sampler2D uCandidateSupport;
        uniform sampler2D uRejection;
        uniform float uNeedThreshold;
        uniform float uAcceptanceConfidence;
        uniform float uShortValidityThreshold;
        out vec4 fragColor;

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec4 inferredFlow = texelFetch(uInferredFlow, tile, 0);
            vec4 support = texelFetch(uCandidateSupport, tile, 0);
            vec4 rejection = texelFetch(uRejection, tile, 0);
            float core = step(uNeedThreshold, support.r);
            float accepted = core *
                step(uAcceptanceConfidence, inferredFlow.a) *
                step(uShortValidityThreshold, support.g) *
                (1.0 - step(0.5, rejection.r));
            // Premultiplication prevents rejected neighbors from corrupting bilinear flow at the
            // accepted boundary. The normalize shader divides RG by the interpolated gate.
            fragColor = vec4(inferredFlow.rgb * accepted, accepted);
        }
    """.trimIndent()
}
