package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ln

internal data class RawRadianceExposurePlan(
    val baseExposureProduct: Double?,
    val normalIndices: IntArray,
    val shortIndex: Int?,
    val longIndices: IntArray,
    val excludedIndices: IntArray,
) {
    val acceptedIndices: IntArray
        get() {
            val shortIndices = shortIndex?.let { intArrayOf(it) } ?: IntArray(0)
            return intArrayOf(*normalIndices, *shortIndices, *longIndices)
        }
}

internal object RawRadianceExposurePlanner {
    private val LN_2 = ln(2.0)
    private const val NORMAL_EXPOSURE_TOLERANCE_EV = 0.12
    private const val SHORT_EXPOSURE_TOLERANCE_EV = 0.35

    fun plan(
        exposureProducts: List<Double>,
        frameRoles: List<RawBurstFrameRole> = List(exposureProducts.size) {
            RawBurstFrameRole.NORMAL
        },
    ): RawRadianceExposurePlan {
        require(frameRoles.size == exposureProducts.size) {
            "Exposure products and frame roles must have the same size"
        }
        if (exposureProducts.isEmpty()) {
            return RawRadianceExposurePlan(
                baseExposureProduct = null,
                normalIndices = IntArray(0),
                shortIndex = null,
                longIndices = IntArray(0),
                excludedIndices = IntArray(0),
            )
        }
        val taggedShortIndices = frameRoles.indices.filter { index ->
            frameRoles[index] == RawBurstFrameRole.HIGHLIGHT_SHORT
        }
        val taggedLongIndices = frameRoles.indices.filter { index ->
            frameRoles[index] == RawBurstFrameRole.SHADOW_LONG
        }
        val taggedShortIndex = taggedShortIndices.firstOrNull()
        val validIndices = exposureProducts.indices.filter { index ->
            index !in taggedShortIndices && index !in taggedLongIndices &&
                exposureProducts[index].isFinite() && exposureProducts[index] > 0.0
        }
        if (validIndices.isEmpty()) {
            val normalIndices = exposureProducts.indices.filter { index ->
                index !in taggedShortIndices && index !in taggedLongIndices
            }
            return RawRadianceExposurePlan(
                baseExposureProduct = null,
                normalIndices = normalIndices.toIntArray(),
                shortIndex = taggedShortIndex,
                longIndices = taggedLongIndices.toIntArray(),
                excludedIndices = taggedShortIndices.drop(1).toIntArray(),
            )
        }

        val sortedExposures = validIndices.map(exposureProducts::get).sorted()
        val baseExposure = sortedExposures[sortedExposures.size / 2]
        val normalIndices = exposureProducts.indices.filter { index ->
            if (index in taggedShortIndices || index in taggedLongIndices) return@filter false
            val exposure = exposureProducts[index]
            !exposure.isFinite() || exposure <= 0.0 ||
                exposureDeltaEv(exposure, baseExposure) <= NORMAL_EXPOSURE_TOLERANCE_EV
        }
        val targetShortEv = -ln(MultiFrameConfig.SHORT_FRAME_EXPOSURE_DIVISOR) / LN_2
        val shortIndex = taggedShortIndex ?: validIndices
            .asSequence()
            .filterNot(normalIndices::contains)
            .map { index ->
                index to abs(signedExposureDeltaEv(exposureProducts[index], baseExposure) - targetShortEv)
            }
            .filter { (_, targetDeltaEv) -> targetDeltaEv <= SHORT_EXPOSURE_TOLERANCE_EV }
            .minByOrNull { (_, targetDeltaEv) -> targetDeltaEv }
            ?.first
        val excludedIndices = exposureProducts.indices.filter { index ->
            index !in normalIndices && index != shortIndex && index !in taggedLongIndices
        }
        return RawRadianceExposurePlan(
            baseExposureProduct = baseExposure,
            normalIndices = normalIndices.toIntArray(),
            shortIndex = shortIndex,
            longIndices = taggedLongIndices.toIntArray(),
            excludedIndices = excludedIndices.toIntArray(),
        )
    }

    private fun exposureDeltaEv(exposure: Double, reference: Double): Double {
        return abs(signedExposureDeltaEv(exposure, reference))
    }

    private fun signedExposureDeltaEv(exposure: Double, reference: Double): Double {
        return ln(exposure / reference) / LN_2
    }
}

internal data class RawRadianceHighlightFrame(
    val shortFrame: RawStackFrame,
    val anchorFrameIndex: Int,
    val exposureRatio: Float,
    val baselineExposureEv: Float,
)

internal data class RawRadianceLongFramePlan(
    val sourceFrameIndex: Int,
    val longFrame: RawStackFrame,
    val anchorFrameIndex: Int,
    val exposureRatio: Float,
    val exposureScale: Float,
    val exposureDeltaEv: Float,
)

internal fun hasRadianceHighlightAlignmentSupport(
    validTileCount: Int,
    coveredQuadrants: Int,
    minimumValidTiles: Int,
    minimumQuadrants: Int,
): Boolean {
    return validTileCount >= minimumValidTiles.coerceAtLeast(1) &&
        coveredQuadrants >= minimumQuadrants.coerceIn(1, 4)
}

internal enum class RawRadianceLongAdmissionMode {
    REJECTED,
    VALIDATED_FLOW,
}

internal data class RawRadianceLongAdmissionEvidence(
    val validTileCount: Int,
    val coveredQuadrants: Int,
    val eligibleTileCount: Int,
    val eligibleQuadrants: Int,
    val referenceObservableTileCount: Int,
    val currentObservableTileCount: Int,
)

internal data class RawRadianceLongAdmissionRequirements(
    val minimumValidTiles: Int,
    val minimumQuadrants: Int,
    val minimumEligibleCoverage: Float,
    val validatedPrecisionWeightCap: Float,
)

internal enum class RawRadianceLongRejectionReason {
    REFERENCE_PROXY_UNOBSERVABLE,
    LONG_PROXY_UNOBSERVABLE,
    MUTUAL_OBSERVABILITY_INSUFFICIENT,
    VALID_FLOW_INSUFFICIENT,
    SPATIAL_COVERAGE_INSUFFICIENT,
    ELIGIBLE_COVERAGE_INSUFFICIENT,
}

internal data class RawRadianceLongAdmission(
    val mode: RawRadianceLongAdmissionMode,
    val frameWeight: Float,
    val precisionWeightCap: Float,
    val eligibleCoverage: Float,
    val requiredQuadrants: Int,
    val rejectionReasons: List<RawRadianceLongRejectionReason>,
)

internal fun planRadianceLongAdmission(
    evidence: RawRadianceLongAdmissionEvidence,
    requirements: RawRadianceLongAdmissionRequirements,
): RawRadianceLongAdmission {
    val eligibleCoverage = if (evidence.eligibleTileCount > 0) {
        evidence.validTileCount.toFloat() / evidence.eligibleTileCount
    } else {
        0f
    }
    val normalizedEligibleQuadrants = evidence.eligibleQuadrants.coerceIn(0, 4)
    val requiredQuadrants = minOf(
        requirements.minimumQuadrants.coerceIn(1, 4),
        normalizedEligibleQuadrants,
    ).coerceAtLeast(2)
    val validatedFlowAccepted = normalizedEligibleQuadrants >= 2 &&
        evidence.validTileCount >= requirements.minimumValidTiles.coerceAtLeast(1) &&
        evidence.coveredQuadrants >= requiredQuadrants &&
        eligibleCoverage >= requirements.minimumEligibleCoverage.coerceIn(0f, 1f)
    val minimumValidTiles = requirements.minimumValidTiles.coerceAtLeast(1)
    val rejectionReasons = if (validatedFlowAccepted) {
        emptyList()
    } else {
        buildList {
            if (evidence.referenceObservableTileCount < minimumValidTiles) {
                add(RawRadianceLongRejectionReason.REFERENCE_PROXY_UNOBSERVABLE)
            }
            if (evidence.currentObservableTileCount < minimumValidTiles) {
                add(RawRadianceLongRejectionReason.LONG_PROXY_UNOBSERVABLE)
            }
            if (evidence.eligibleTileCount < minimumValidTiles) {
                add(RawRadianceLongRejectionReason.MUTUAL_OBSERVABILITY_INSUFFICIENT)
            }
            if (evidence.validTileCount < minimumValidTiles) {
                add(RawRadianceLongRejectionReason.VALID_FLOW_INSUFFICIENT)
            }
            if (normalizedEligibleQuadrants < 2 || evidence.coveredQuadrants < requiredQuadrants) {
                add(RawRadianceLongRejectionReason.SPATIAL_COVERAGE_INSUFFICIENT)
            }
            if (eligibleCoverage < requirements.minimumEligibleCoverage.coerceIn(0f, 1f)) {
                add(RawRadianceLongRejectionReason.ELIGIBLE_COVERAGE_INSUFFICIENT)
            }
        }
    }
    val mode = if (validatedFlowAccepted) {
        RawRadianceLongAdmissionMode.VALIDATED_FLOW
    } else {
        RawRadianceLongAdmissionMode.REJECTED
    }
    return RawRadianceLongAdmission(
        mode = mode,
        frameWeight = if (validatedFlowAccepted) 1f else 0f,
        precisionWeightCap = if (validatedFlowAccepted) {
            requirements.validatedPrecisionWeightCap.coerceAtLeast(1f)
        } else {
            0f
        },
        eligibleCoverage = eligibleCoverage,
        requiredQuadrants = requiredQuadrants,
        rejectionReasons = rejectionReasons,
    )
}

/**
 * Unified same-exposure RAW fusion.
 *
 * One optional one-third-exposure frame is identified and reserved for the dedicated
 * highlight-reconstruction stage. Tagged long exposures are also isolated and planned against
 * the nearest accepted normal anchor. They enter Radiance RGB through an exposure-normalized,
 * noise-weighted auxiliary path and may not participate in the normal Radiance frame cluster.
 *
 * The reconstruction algorithm is independent of output scale: every accepted RAW frame
 * contributes a wide-kernel denoise estimate and a narrow-kernel detail estimate in the
 * sensor-linear RGB domain. Standard Bayer references use the full VGN demosaic core while
 * non-reference frames use phase-safe dense-G/R-G/B-G semantic reconstruction. Non-standard
 * CFAs retain the region RCD backend. [outputScale] only selects the output sampling grid.
 */
class GlesRawRadianceFusion(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    private val blackLevel: FloatArray,
    private val whiteLevel: Int,
    private val whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
    private val noiseModel: FloatArray,
    private val rawNoiseModel: RawNoiseModel = RawNoiseModel.fromLegacyNoiseModel(noiseModel),
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    outputScale: Float,
    private val debugConfig: RawStackDebugConfig = RawStackDebugConfig.Disabled,
    private val fusionTuning: RawRadianceFusionTuning = RawRadianceFusionTuning(),
    private val useCurrentGlContext: Boolean = false,
    private val exportGpuLinearRgbSource: Boolean = false,
) {
    private val outputScale = MultiFrameConfig.normalizeOutputScale(outputScale)

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        if (frames.isEmpty()) return null
        val exposurePlan = RawRadianceExposurePlanner.plan(
            exposureProducts = frames.map { it.exposureProduct },
            frameRoles = frames.map { it.role },
        )
        exposurePlan.excludedIndices.forEach { index ->
            frames[index].image.close()
        }
        val fusionFrames = exposurePlan.normalIndices.map { index ->
            frames[index].copy(role = RawBurstFrameRole.NORMAL)
        }
        val shortFrame = exposurePlan.shortIndex?.let(frames::get)
        val longFrames = exposurePlan.longIndices.map(frames::get)
        if (fusionFrames.isEmpty()) {
            shortFrame?.image?.close()
            longFrames.forEach { it.image.close() }
            return null
        }
        if (exposurePlan.excludedIndices.isNotEmpty()) {
            PLog.w(
                TAG,
                "Radiance fusion excluded ${exposurePlan.excludedIndices.size} unsupported-exposure " +
                    "frames; baseExposure=${exposurePlan.baseExposureProduct}",
            )
        }
        val highlightFrame = shortFrame?.let { short ->
            createHighlightFrame(
                normalFrames = fusionFrames,
                shortFrame = short,
                baseExposureProduct = exposurePlan.baseExposureProduct,
            )
        }
        if (highlightFrame != null) {
            PLog.i(
                TAG,
                "Radiance highlight frame index=${exposurePlan.shortIndex} " +
                    "exposure=${highlightFrame.shortFrame.exposureProduct} " +
                    "base=${exposurePlan.baseExposureProduct} " +
                    "ratio=${highlightFrame.exposureRatio} " +
                    "anchor=${highlightFrame.anchorFrameIndex} " +
                    "normalFrames=${exposurePlan.normalIndices.size}; normal fusion excluded",
            )
        } else if (shortFrame != null) {
            PLog.w(
                TAG,
                "Radiance short frame has no usable exposure ratio; highlight reconstruction disabled",
            )
            shortFrame.image.close()
        } else {
            PLog.w(TAG, "Radiance fusion received no valid one-third short frame")
        }

        val longFramePlans = longFrames.mapIndexedNotNull { planIndex, longFrame ->
            val sourceFrameIndex = exposurePlan.longIndices[planIndex]
            val longFramePlan = createLongFramePlan(
                sourceFrameIndex = sourceFrameIndex,
                normalFrames = fusionFrames,
                longFrame = longFrame,
                baseExposureProduct = exposurePlan.baseExposureProduct,
            )
            if (longFramePlan != null) {
                PLog.i(
                    TAG,
                    "Radiance long fusion plan index=$sourceFrameIndex " +
                        "exposure=${longFramePlan.longFrame.exposureProduct} " +
                        "base=${exposurePlan.baseExposureProduct} " +
                        "actualRatio=${longFramePlan.exposureRatio} " +
                        "exposureScale=${longFramePlan.exposureScale} " +
                        "actualDeltaEv=${longFramePlan.exposureDeltaEv} " +
                        "anchor=${longFramePlan.anchorFrameIndex}",
                )
                longFramePlan
            } else {
                PLog.w(
                    TAG,
                    "Radiance long frame index=$sourceFrameIndex has no usable actual " +
                        "exposure ratio; excluded",
                )
                longFrame.image.close()
                null
            }
        }

        val tuning = RawStackTuningProfile(
            requestedFrameCount = exposurePlan.normalIndices.size,
            superResolution = RawStackSuperResolutionTuning(
                outputScale = outputScale,
            ),
        )
        return GlesRawRadianceStacker(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            noiseModel = noiseModel,
            rawNoiseModel = rawNoiseModel,
            lensShading = lensShading,
            lensShadingWidth = lensShadingWidth,
            lensShadingHeight = lensShadingHeight,
            tuning = tuning,
            debugConfig = debugConfig,
            radianceFusionTuning = fusionTuning,
            useCurrentGlContext = useCurrentGlContext,
            exportGpuLinearRgbSource = exportGpuLinearRgbSource,
        ).processFrames(
            frames = fusionFrames,
            highlightFrame = highlightFrame,
            longFrames = longFramePlans,
        )
    }

    private fun createHighlightFrame(
        normalFrames: List<RawStackFrame>,
        shortFrame: RawStackFrame,
        baseExposureProduct: Double?,
    ): RawRadianceHighlightFrame? {
        if (normalFrames.isEmpty()) return null
        val normalExposure = baseExposureProduct
            ?.takeIf { it.isFinite() && it > 0.0 }
            ?: return null
        val shortExposure = shortFrame.exposureProduct
            .takeIf { it.isFinite() && it > 0.0 }
            ?: return null
        val ratio = (normalExposure / shortExposure).toFloat()
        if (!ratio.isFinite() || ratio < fusionTuning.highlightMinExposureRatio ||
            ratio > fusionTuning.highlightMaxExposureRatio
        ) {
            return null
        }
        val anchorIndex = normalFrames.indices.minByOrNull { index ->
            timestampDistance(normalFrames[index].sensorTimestampNs, shortFrame.sensorTimestampNs)
        } ?: return null
        return RawRadianceHighlightFrame(
            shortFrame = shortFrame.copy(role = RawBurstFrameRole.HIGHLIGHT_SHORT),
            anchorFrameIndex = anchorIndex,
            exposureRatio = ratio,
            baselineExposureEv = (ln(ratio.toDouble()) / ln(2.0)).toFloat(),
        )
    }

    private fun createLongFramePlan(
        sourceFrameIndex: Int,
        normalFrames: List<RawStackFrame>,
        longFrame: RawStackFrame,
        baseExposureProduct: Double?,
    ): RawRadianceLongFramePlan? {
        if (normalFrames.isEmpty()) return null
        val normalExposure = baseExposureProduct
            ?.takeIf { it.isFinite() && it > 0.0 }
            ?: return null
        val longExposure = longFrame.exposureProduct
            .takeIf { it.isFinite() && it > 0.0 }
            ?: return null
        val exposureRatio = (longExposure / normalExposure).toFloat()
        if (!exposureRatio.isFinite() ||
            exposureRatio < fusionTuning.longMinExposureRatio ||
            exposureRatio > fusionTuning.longMaxExposureRatio
        ) {
            return null
        }
        val anchorIndex = normalFrames.indices.minByOrNull { index ->
            timestampDistance(normalFrames[index].sensorTimestampNs, longFrame.sensorTimestampNs)
        } ?: return null
        return RawRadianceLongFramePlan(
            sourceFrameIndex = sourceFrameIndex,
            longFrame = longFrame.copy(role = RawBurstFrameRole.SHADOW_LONG),
            anchorFrameIndex = anchorIndex,
            exposureRatio = exposureRatio,
            exposureScale = 1f / exposureRatio,
            exposureDeltaEv = (ln(exposureRatio.toDouble()) / ln(2.0)).toFloat(),
        )
    }

    private fun timestampDistance(first: Long, second: Long): Long {
        if (first <= 0L || second <= 0L) return Long.MAX_VALUE
        return if (first >= second) first - second else second - first
    }

    companion object {
        private const val TAG = "GlesRawRadianceFusion"
    }
}

/**
 * Parameters are expressed in input RAW pixels, so changing output scale does not silently
 * change denoise radius, detail radius, or confidence behavior.
 */
data class RawRadianceFusionTuning(
    val tileCoreSizeRawPx: Int = 1024,
    val vgnChromaPostprocessEnabled: Boolean = true,
    val denoiseSigmaRawPx: Float = 1.10f,
    val denoiseSteeringStrength: Float = 0.48f,
    val robustnessSpatialMix: Float = 0.68f,
    val nrConfidenceStart: Float = 0.15f,
    val nrConfidenceFull: Float = 1.35f,
    val detailConfidenceStart: Float = 0.18f,
    val detailConfidenceFull: Float = 1.45f,
    val referenceDetailFloor: Float = 0.18f,
    val detailChromaStrength: Float = 0.0f,
    val chromaConsistencySigmaStart: Float = 3.0f,
    val chromaConsistencySigmaFull: Float = 6.0f,
    val longMinExposureRatio: Float = 1.05f,
    val longMaxExposureRatio: Float = 64.0f,
    val longClipStart: Float = 0.90f,
    val longClipFull: Float = 0.985f,
    val longPrecisionWeightCap: Float = 24.0f,
    val longNrWeightScale: Float = 3.0f,
    val longDetailWeightScale: Float = 0.25f,
    val longMergeFactorTarget: Float = 0.70f,
    val longFlowFbConsistencyStartPx: Float = 0.75f,
    val longFlowFbConsistencyFullPx: Float = 2.0f,
    val longFlowMinimumConfidence: Float = 0.01f,
    val longFlowFullConfidence: Float = 0.05f,
    val longFlowMinimumValidTiles: Int = 64,
    val longFlowMinimumQuadrants: Int = 3,
    val longEligibilityMinimumSupport: Float = 0.02f,
    val longEligibilityMinimumTilesPerQuadrant: Int = 16,
    val longFlowMinimumEligibleCoverage: Float = 0.01f,
    val longRegionalStructureSnrStart: Float = 1.0f,
    val longRegionalStructureSnrFull: Float = 2.0f,
    val longFineRefinementConfidenceStart: Float = 0.01f,
    val longFineRefinementConfidenceFull: Float = 0.05f,
    val highlightMinExposureRatio: Float = 1.2f,
    val highlightMaxExposureRatio: Float = 8.0f,
    val highlightNormalClipStart: Float = 0.90f,
    val highlightNormalClipFull: Float = 0.985f,
    val highlightShortClipStart: Float = 0.94f,
    val highlightShortClipFull: Float = 0.99f,
    val highlightShortSignalStart: Float = 0.01f,
    val highlightShortSignalFull: Float = 0.04f,
    val highlightFlowFbConsistencyStartPx: Float = 0.75f,
    val highlightFlowFbConsistencyFullPx: Float = 2.0f,
    val highlightFlowPropagationPasses: Int = 48,
    val highlightFlowPropagationDecay: Float = 0.96f,
    val highlightFlowGuideEdgeSigma: Float = 0.08f,
    val highlightFlowSeedConfidence: Float = 0.05f,
    val highlightFlowMinimumConfidence: Float = 0.005f,
    val highlightFlowFullConfidence: Float = 0.05f,
    val highlightFlowMinimumValidTiles: Int = 16,
    val highlightFlowMinimumQuadrants: Int = 2,
)

/** Returns a sensor-linear RGB value that becomes neutral after the capture WB is applied. */
internal fun radianceDebugNeutralRgb(calculationWbGains: FloatArray): FloatArray {
    require(calculationWbGains.size >= 4) { "Radiance debug WB gains must contain RGGB channels" }
    val rgbGains = floatArrayOf(
        calculationWbGains[0],
        1f,
        calculationWbGains[3],
    )
    require(rgbGains.all { it.isFinite() && it > 0f }) {
        "Radiance debug WB gains must be finite and positive"
    }
    val neutral = FloatArray(3) { index -> 1f / rgbGains[index] }
    val peak = neutral.maxOrNull()?.coerceAtLeast(1e-6f) ?: 1f
    return FloatArray(3) { index -> neutral[index] / peak }
}

internal object GlesRawRadianceFusionShaders {
    val longEligibility: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uReferenceProxy;
        uniform sampler2D uCurrentProxy;
        uniform sampler2D uComposedFlow;
        uniform ivec2 uGridSize;
        uniform ivec2 uPlaneSize;
        uniform int uTileSize;
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
            vec2 flow = texelFetch(
                uComposedFlow,
                clamp(tile, ivec2(0), uGridSize - ivec2(1)),
                0
            ).rg;
            int sampleSpacing = max(uTileSize / 4, 1);
            float eligibilitySum = 0.0;
            float validitySum = 0.0;
            float referenceObservabilitySum = 0.0;
            float currentObservabilitySum = 0.0;
            float sampleCount = 0.0;
            for (int y = -2; y <= 2; ++y) {
                for (int x = -2; x <= 2; ++x) {
                    vec2 referencePosition = center +
                        vec2(x * sampleSpacing, y * sampleSpacing);
                    vec2 currentPosition = referencePosition + flow;
                    bool inside = insidePlane(referencePosition) &&
                        insidePlane(currentPosition);
                    vec4 referenceSample = proxyAt(uReferenceProxy, referencePosition);
                    vec4 currentSample = proxyAt(uCurrentProxy, currentPosition);
                    float validity = inside ?
                        min(referenceSample.g, currentSample.g) : 0.0;
                    float referenceObservability = inside ? referenceSample.b : 0.0;
                    float currentObservability = inside ? currentSample.b : 0.0;
                    float observability = min(
                        referenceObservability,
                        currentObservability
                    );
                    eligibilitySum += validity * observability;
                    validitySum += validity;
                    referenceObservabilitySum += referenceObservability;
                    currentObservabilitySum += currentObservability;
                    sampleCount += 1.0;
                }
            }
            fragColor = vec4(
                eligibilitySum,
                validitySum,
                referenceObservabilitySum,
                currentObservabilitySum
            ) / max(sampleCount, 1.0);
        }
    """.trimIndent()

    val validateHighlightFlow: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uForwardFlow;
        uniform sampler2D uReverseFlow;
        uniform ivec2 uGridSize;
        uniform ivec2 uPlaneSize;
        uniform int uTileSize;
        uniform float uFbConsistencyStart;
        uniform float uFbConsistencyFull;
        out vec4 fragColor;

        vec4 flowAt(sampler2D flowTexture, vec2 planePosition) {
            vec2 grid = planePosition / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            return texture(flowTexture, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec2 referencePosition = min(
                vec2(tile * uTileSize + ivec2(uTileSize / 2)),
                vec2(uPlaneSize - ivec2(1))
            );
            vec4 forward = texelFetch(uForwardFlow, tile, 0);
            vec2 currentPosition = referencePosition + forward.rg;
            bool inside = currentPosition.x >= 0.0 && currentPosition.y >= 0.0 &&
                currentPosition.x <= float(uPlaneSize.x - 1) &&
                currentPosition.y <= float(uPlaneSize.y - 1);
            vec4 reverse = inside ? flowAt(uReverseFlow, currentPosition) : vec4(0.0);
            float error = length(forward.rg + reverse.rg);
            float consistency = 1.0 - smoothstep(
                min(uFbConsistencyStart, uFbConsistencyFull),
                max(uFbConsistencyStart, uFbConsistencyFull),
                error
            );
            float confidence = min(forward.a, reverse.a) * consistency * (inside ? 1.0 : 0.0);
            fragColor = vec4(forward.rg, max(forward.b, error), clamp(confidence, 0.0, 1.0));
        }
    """.trimIndent()

    val propagateHighlightFlow: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInputFlow;
        uniform sampler2D uGuideProxy;
        uniform ivec2 uGridSize;
        uniform ivec2 uPlaneSize;
        uniform int uTileSize;
        uniform float uConfidenceDecay;
        uniform float uDirectConfidence;
        uniform float uMinimumConfidence;
        uniform float uFlowConsistencySigma;
        uniform float uGuideEdgeSigma;
        out vec4 fragColor;

        vec4 readFlow(ivec2 position) {
            return texelFetch(
                uInputFlow,
                clamp(position, ivec2(0), uGridSize - ivec2(1)),
                0
            );
        }

        vec4 guideAt(ivec2 tilePosition) {
            ivec2 planePosition = min(
                tilePosition * uTileSize + ivec2(uTileSize / 2),
                uPlaneSize - ivec2(1)
            );
            return texelFetch(
                uGuideProxy,
                clamp(planePosition, ivec2(0), uPlaneSize - ivec2(1)),
                0
            );
        }

        void main() {
            ivec2 position = ivec2(gl_FragCoord.xy);
            vec4 center = readFlow(position);
            vec4 centerGuide = guideAt(position);
            float minimumConfidence = clamp(uMinimumConfidence, 0.0, 1.0);
            float directConfidence = max(
                clamp(uDirectConfidence, 0.0, 1.0),
                minimumConfidence + 1e-4
            );
            if (center.a >= directConfidence) {
                fragColor = center;
                return;
            }

            vec2 flowSum = vec2(0.0);
            float residualSum = 0.0;
            float weightSum = 0.0;
            float maxConfidence = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    if (x == 0 && y == 0) continue;
                    vec4 sampleValue = readFlow(position + ivec2(x, y));
                    vec4 neighborGuide = guideAt(
                        clamp(position + ivec2(x, y), ivec2(0), uGridSize - ivec2(1))
                    );
                    float spatial = (x == 0 || y == 0) ? 1.0 : 0.70710678;
                    float guideDelta = neighborGuide.r - centerGuide.r;
                    float edgeSigma = max(uGuideEdgeSigma, 1e-3);
                    float edgeWeight = min(centerGuide.g, neighborGuide.g) < 0.5 ?
                        1.0 : exp(-(guideDelta * guideDelta) / (edgeSigma * edgeSigma));
                    float support = smoothstep(
                        minimumConfidence,
                        directConfidence,
                        sampleValue.a
                    );
                    float weight = sampleValue.a * support * spatial * edgeWeight;
                    flowSum += sampleValue.rg * weight;
                    residualSum += sampleValue.b * weight;
                    weightSum += weight;
                    maxConfidence = max(maxConfidence, sampleValue.a);
                }
            }
            if (weightSum <= 1e-6) {
                fragColor = vec4(center.rgb, 0.0);
                return;
            }

            vec2 propagatedFlow = flowSum / weightSum;
            float variance = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    if (x == 0 && y == 0) continue;
                    vec4 sampleValue = readFlow(position + ivec2(x, y));
                    vec4 neighborGuide = guideAt(
                        clamp(position + ivec2(x, y), ivec2(0), uGridSize - ivec2(1))
                    );
                    float spatial = (x == 0 || y == 0) ? 1.0 : 0.70710678;
                    float guideDelta = neighborGuide.r - centerGuide.r;
                    float edgeSigma = max(uGuideEdgeSigma, 1e-3);
                    float edgeWeight = min(centerGuide.g, neighborGuide.g) < 0.5 ?
                        1.0 : exp(-(guideDelta * guideDelta) / (edgeSigma * edgeSigma));
                    float support = smoothstep(
                        minimumConfidence,
                        directConfidence,
                        sampleValue.a
                    );
                    float weight = sampleValue.a * support * spatial * edgeWeight;
                    vec2 delta = sampleValue.rg - propagatedFlow;
                    variance += dot(delta, delta) * weight;
                }
            }
            variance /= weightSum;
            float sigma = max(uFlowConsistencySigma, 0.25);
            float consistency = exp(-variance / (sigma * sigma));
            float propagatedConfidence = maxConfidence *
                clamp(uConfidenceDecay, 0.0, 1.0) * consistency;
            fragColor = vec4(
                propagatedFlow,
                residualSum / weightSum,
                clamp(propagatedConfidence, 0.0, 1.0)
            );
        }
    """.trimIndent()

    val composeHighlightFlow: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uReferenceToAnchorFlow;
        uniform sampler2D uAnchorToShortFlow;
        uniform ivec2 uGridSize;
        uniform ivec2 uPlaneSize;
        uniform int uTileSize;
        uniform int uAnchorIsReference;
        uniform int uUseBottleneckConfidence;
        uniform float uConfidenceStart;
        uniform float uConfidenceFull;
        out vec4 fragColor;

        vec4 flowAt(sampler2D flowTexture, vec2 planePosition) {
            vec2 grid = planePosition / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            return texture(flowTexture, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        float normalizedEdgeConfidence(float confidence) {
            return smoothstep(
                min(uConfidenceStart, uConfidenceFull),
                max(uConfidenceStart, uConfidenceFull),
                confidence
            );
        }

        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec2 referencePosition = min(
                vec2(tile * uTileSize + ivec2(uTileSize / 2)),
                vec2(uPlaneSize - ivec2(1))
            );
            vec4 referenceToAnchorFlow = uAnchorIsReference != 0 ?
                vec4(0.0, 0.0, 0.0, 1.0) :
                texelFetch(uReferenceToAnchorFlow, tile, 0);
            vec2 anchorPosition = referencePosition + referenceToAnchorFlow.rg;
            bool inside = anchorPosition.x >= 0.0 && anchorPosition.y >= 0.0 &&
                anchorPosition.x <= float(uPlaneSize.x - 1) &&
                anchorPosition.y <= float(uPlaneSize.y - 1);
            vec4 anchorToShortFlow = inside ?
                flowAt(uAnchorToShortFlow, anchorPosition) : vec4(0.0);
            float multipliedConfidence = referenceToAnchorFlow.a * anchorToShortFlow.a;
            float bottleneckConfidence = min(
                uAnchorIsReference != 0 ? 1.0 :
                    normalizedEdgeConfidence(referenceToAnchorFlow.a),
                normalizedEdgeConfidence(anchorToShortFlow.a)
            );
            float pathConfidence = uUseBottleneckConfidence != 0 ?
                bottleneckConfidence : multipliedConfidence;
            fragColor = vec4(
                referenceToAnchorFlow.rg + anchorToShortFlow.rg,
                max(referenceToAnchorFlow.b, anchorToShortFlow.b),
                clamp(
                    pathConfidence * (inside ? 1.0 : 0.0),
                    0.0,
                    1.0
                )
            );
        }
    """.trimIndent()

    fun clearAccumulator(
        trackRejections: Boolean,
        trackLongParticipation: Boolean = false,
    ): String {
        val rejectionDeclaration = if (trackRejections) {
            "layout(rgba16f, binding = 6) writeonly uniform highp image2D uFusionRejections;"
        } else {
            ""
        }
        val rejectionClear = if (trackRejections) {
            "imageStore(uFusionRejections, p, vec4(0.0));"
        } else {
            ""
        }
        val longParticipationDeclaration = if (trackLongParticipation) {
            "layout(r32ui, binding = 7) writeonly uniform highp uimage2D uLongParticipation;"
        } else {
            ""
        }
        val longParticipationClear = if (trackLongParticipation) {
            "imageStore(uLongParticipation, p, uvec4(0u));"
        } else {
            ""
        }
        return """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 16, local_size_y = 16) in;
        layout(r32ui, binding = 0) writeonly uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) writeonly uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) writeonly uniform highp uimage2D uNrWeightRg;
        layout(r32ui, binding = 3) writeonly uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 4) writeonly uniform highp uimage2D uDetailSumBw;
        layout(r32ui, binding = 5) writeonly uniform highp uimage2D uDetailWeightRg;
        $rejectionDeclaration
        $longParticipationDeclaration
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            imageStore(uNrSumRg, p, uvec4(0u));
            imageStore(uNrSumBw, p, uvec4(0u));
            imageStore(uNrWeightRg, p, uvec4(0u));
            imageStore(uDetailSumRg, p, uvec4(0u));
            imageStore(uDetailSumBw, p, uvec4(0u));
            imageStore(uDetailWeightRg, p, uvec4(0u));
            $rejectionClear
            $longParticipationClear
        }
        """.trimIndent()
    }

    fun accumulate(
        rawCommon: String,
        trackRejections: Boolean = false,
        trackParticipation: Boolean = false,
        trackLongParticipation: Boolean = false,
    ): String {
        val rejectionDeclaration = if (trackRejections) {
            """
            uniform highp sampler2D uPreviousFusionRejections;
            layout(rgba16f, binding = 6) writeonly uniform highp image2D uNextFusionRejections;
            uniform int uRecordFusionRejections;
            """.trimIndent()
        } else {
            ""
        }
        val rejectionHelper = if (trackRejections) {
            """
            const float MATERIAL_REJECTION_THRESHOLD = 0.5;

            bool shouldReplaceFusionRejection(vec3 previous, vec3 candidate) {
                if (candidate.x <= 0.0 || candidate.z <= 0.0) return false;
                if (previous.x <= 0.0 || previous.z <= 0.0) return true;
                bool previousMaterial = previous.z >= MATERIAL_REJECTION_THRESHOLD;
                bool candidateMaterial = candidate.z >= MATERIAL_REJECTION_THRESHOLD;
                if (candidateMaterial != previousMaterial) return candidateMaterial;
                if (candidateMaterial && candidate.y != previous.y) {
                    return candidate.y > previous.y;
                }
                return candidate.z > previous.z;
            }

            float fusionRejectionPriority(float reasonId) {
                if (reasonId < 1.5) return 110.0;
                if (reasonId < 5.5) return 70.0;
                if (reasonId < 6.5) return 60.0;
                if (reasonId < 7.5) return 50.0;
                return 0.0;
            }

            void considerFusionRejection(
                inout vec3 selected,
                float reasonId,
                float priority,
                float rejectionStrength
            ) {
                vec3 candidate = vec3(
                    reasonId,
                    priority,
                    clamp(rejectionStrength, 0.0, 1.0)
                );
                if (shouldReplaceFusionRejection(selected, candidate)) {
                    selected = candidate;
                }
            }

            void storeFusionRejection(ivec2 p, vec3 rejection) {
                vec4 previousSample = texelFetch(
                    uPreviousFusionRejections,
                    p,
                    0
                );
                if (uRecordFusionRejections == 0) {
                    imageStore(uNextFusionRejections, p, previousSample);
                    return;
                }
                vec3 selected = previousSample.rgb;
                if (shouldReplaceFusionRejection(selected, rejection)) {
                    selected = rejection;
                }
                imageStore(
                    uNextFusionRejections,
                    p,
                    vec4(selected, previousSample.a + (rejection.x > 0.0 ? 1.0 : 0.0))
                );
            }
            """.trimIndent()
        } else {
            ""
        }
        val longParticipationDeclaration = if (trackLongParticipation) {
            "layout(r32ui, binding = 7) writeonly uniform highp uimage2D uLongParticipation;"
        } else {
            ""
        }
        val participationDeclaration = if (trackParticipation) {
            """
            layout(std430, binding = 0) buffer RadianceFusionParticipationStats {
                uint uFusionParticipationStats[];
            };
            uniform int uFusionStatsIndex;
            uniform int uFusionStatsSampleStep;
            uniform ivec2 uFusionStatsCoreOrigin;
            uniform ivec2 uFusionStatsCoreSize;
            """.trimIndent()
        } else {
            ""
        }
        val participationHelper = if (trackParticipation) {
            """
            const int FUSION_STATS_STRIDE = 5;
            const float FUSION_WEIGHT_QUANTIZATION = 63.0;

            bool shouldSampleFusionParticipation(ivec2 outputP) {
                ivec2 coreEnd = uFusionStatsCoreOrigin + uFusionStatsCoreSize;
                bool insideCore = all(greaterThanEqual(outputP, uFusionStatsCoreOrigin)) &&
                    all(lessThan(outputP, coreEnd));
                int step = max(uFusionStatsSampleStep, 1);
                return insideCore && (outputP.x % step) == 0 && (outputP.y % step) == 0;
            }

            void recordFusionParticipation(
                ivec2 outputP,
                vec3 nrWeight,
                vec3 detailWeight
            ) {
                if (!shouldSampleFusionParticipation(outputP)) return;
                int offset = uFusionStatsIndex * FUSION_STATS_STRIDE;
                float meanNrWeight = dot(nrWeight, vec3(0.3333333));
                float meanDetailWeight = dot(detailWeight, vec3(0.3333333));
                atomicAdd(uFusionParticipationStats[offset + 0], 1u);
                if (meanNrWeight > 1e-7) {
                    atomicAdd(uFusionParticipationStats[offset + 1], 1u);
                }
                atomicAdd(
                    uFusionParticipationStats[offset + 2],
                    uint(floor(clamp(meanNrWeight, 0.0, 32.0) * FUSION_WEIGHT_QUANTIZATION + 0.5))
                );
                if (meanDetailWeight > 1e-7) {
                    atomicAdd(uFusionParticipationStats[offset + 3], 1u);
                }
                atomicAdd(
                    uFusionParticipationStats[offset + 4],
                    uint(floor(clamp(meanDetailWeight, 0.0, 32.0) * FUSION_WEIGHT_QUANTIZATION + 0.5))
                );
            }
            """.trimIndent()
        } else {
            ""
        }
        val outOfBoundsHandling = buildString {
            if (trackRejections) {
                // reason 9: the warped RAW sample is outside the source frame.
                appendLine("storeFusionRejection(accumulatorP, vec3(9.0, 120.0, 1.0));")
            }
            if (trackParticipation) {
                append("recordFusionParticipation(outputP, vec3(0.0), vec3(0.0));")
            }
        }
        val rejectionVariable = if (trackRejections) {
            "vec3 fusionRejection = vec3(0.0);"
        } else {
            ""
        }
        val rejectionAssignment = if (trackRejections) {
            """
            // BA contains the NR rejection reason and severity selected while the
            // reference/current proxy pair is still available. Patch evidence lives only in
            // the detail-confidence channel and therefore cannot reject NR.
            fusionRejection = vec3(
                tileConfidence.b,
                fusionRejectionPriority(tileConfidence.b),
                tileConfidence.a
            );
            // reason 8: the accepted frame has been reduced to zero by frame registration quality.
            considerFusionRejection(
                fusionRejection,
                8.0,
                40.0,
                1.0 - clamp(uRegistrationNrWeight, 0.0, 1.0)
            );
            // reason 10: relative per-channel sensor precision reduced the sample.
            considerFusionRejection(
                fusionRejection,
                10.0,
                30.0,
                1.0 - min(min(
                    clamp(channelPrecision.r, 0.0, 1.0),
                    clamp(channelPrecision.g, 0.0, 1.0)
                ), clamp(channelPrecision.b, 0.0, 1.0))
            );
            // reason 11: highlight protection eliminated the sample.
            considerFusionRejection(
                fusionRejection,
                11.0,
                20.0,
                1.0 - min(min(highlight.r, highlight.g), highlight.b)
            );
            // reason 12: noise-normalized R-G or B-G consistency reduced its channel.
            considerFusionRejection(
                fusionRejection,
                12.0,
                65.0,
                1.0 - min(channelConsistency.r, channelConsistency.b)
            );
            // reason 13: a long-exposure RAW sample is saturated before radiometric scaling.
            considerFusionRejection(
                fusionRejection,
                13.0,
                115.0,
                uIsLongFrame != 0 ? 1.0 - longClipConfidence : 0.0
            );
            """.trimIndent()
        } else {
            ""
        }
        val rejectionStore = if (trackRejections) {
            """
            storeFusionRejection(
                accumulatorP,
                uIsReference == 0 && fusionRejection.z >= MATERIAL_REJECTION_THRESHOLD ?
                    fusionRejection : vec3(0.0)
            );
            """.trimIndent()
        } else {
            ""
        }
        val participationStore = if (trackParticipation) {
            "recordFusionParticipation(outputP, nrWeight, detailWeight);"
        } else {
            ""
        }
        val longParticipationStore = if (trackLongParticipation) {
            """
            if (uIsLongFrame != 0 && any(greaterThan(nrWeight, vec3(1e-7)))) {
                imageStore(uLongParticipation, accumulatorP, uvec4(1u));
            }
            """.trimIndent()
        } else {
            ""
        }
        return """
        #version 310 es
        $rawCommon
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform sampler2D uRcdRgbTile;
        uniform sampler2D uFlowGrid;
        uniform sampler2D uRobustness;
        uniform sampler2D uTileMask;
        uniform sampler2D uKernel;
        uniform sampler2D uLensShadingMap;
        uniform sampler2D uReferenceBase;
        uniform highp usampler2D uRawRegion;
        layout(r32ui, binding = 0) uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) uniform highp uimage2D uNrWeightRg;
        layout(r32ui, binding = 3) uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 4) uniform highp uimage2D uDetailSumBw;
        layout(r32ui, binding = 5) uniform highp uimage2D uDetailWeightRg;
        $rejectionDeclaration
        $longParticipationDeclaration
        $participationDeclaration
        uniform ivec2 uImageSize;
        uniform ivec2 uSourceSize;
        uniform ivec2 uSourceOrigin;
        uniform ivec2 uOutputSize;
        uniform ivec2 uPlaneSize;
        uniform ivec2 uGridSize;
        uniform int uTileSize;
        uniform int uIsReference;
        uniform int uIsLongFrame;
        uniform int uSemanticEncoding;
        uniform int uCfaPattern;
        uniform vec3 uCalculationGains;
        uniform float uBlackLevel[4];
        uniform float uWhiteLevel;
        uniform float uNoiseAlphaByChannel[4];
        uniform float uNoiseBetaByChannel[4];
        uniform float uReferenceNoiseAlpha[4];
        uniform float uReferenceNoiseBeta[4];
        uniform float uCurrentNoiseAlpha[4];
        uniform float uCurrentNoiseBeta[4];
        uniform float uFrameWeight;
        uniform float uExposureScale;
        uniform float uRegistrationNrWeight;
        uniform float uRegistrationDetailWeight;
        uniform float uLongClipStart;
        uniform float uLongClipFull;
        uniform float uLongPrecisionWeightCap;
        uniform float uLongNrWeightScale;
        uniform float uLongDetailWeightScale;
        uniform float uDenoiseSigmaRawPx;
        uniform float uDenoiseSteeringStrength;
        uniform float uRobustnessSpatialMix;
        uniform float uPrecisionReferenceSignal;
        uniform float uLscNoiseGainMax;
        uniform float uDenoiseSignalLow;
        uniform float uDenoiseSignalHigh;
        uniform float uDenoiseStaticRobustStart;
        uniform float uDenoiseStaticRobustEnd;
        uniform float uDenoiseStaticTileStart;
        uniform float uDenoiseStaticTileEnd;
        uniform float uDenoiseNonReferenceWeightBoost;
        uniform float uDenoiseReferenceDarkWeightScale;
        uniform float uHighlightSuppressionStrength;
        uniform float uHighlightSuppressionStart;
        uniform float uHighlightSuppressionEnd;
        uniform float uChromaConsistencySigmaStart;
        uniform float uChromaConsistencySigmaFull;
        uniform ivec2 uAccumulatorOrigin;
        uniform ivec2 uAccumulatorSize;

        $rejectionHelper
        $participationHelper

        struct DualRgb {
            vec3 detail;
            vec3 denoise;
        };

        vec2 referenceRawPos(ivec2 outputPos) {
            return (vec2(outputPos) + vec2(0.5)) * vec2(uImageSize) /
                vec2(uOutputSize) - vec2(0.5);
        }

        vec4 flowEvidenceAt(vec2 planePos) {
            vec2 grid = planePos / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        float mapAt(sampler2D tex, vec2 planePos, ivec2 size) {
            vec2 uv = (clamp(planePos, vec2(0.0), vec2(size - ivec2(1))) + vec2(0.5)) /
                vec2(size);
            return texture(tex, uv).r;
        }

        vec4 tileConfidenceAt(vec2 planePos) {
            vec2 grid = planePos / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            vec2 confidence = texture(
                uTileMask,
                clamp(uv, vec2(0.0), vec2(1.0))
            ).rg;
            ivec2 reasonTile = clamp(
                ivec2(round(grid)),
                ivec2(0),
                uGridSize - ivec2(1)
            );
            return vec4(confidence, texelFetch(uTileMask, reasonTile, 0).ba);
        }

        float spatiallySmoothedRobustness(vec2 planePos) {
            ivec2 centerP = clamp(ivec2(round(planePos)), ivec2(0), uPlaneSize - ivec2(1));
            float center = texelFetch(uRobustness, centerP, 0).r;
            float sum = 0.0;
            float weightSum = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = clamp(centerP + ivec2(x, y), ivec2(0), uPlaneSize - ivec2(1));
                    float spatial = (x == 0 && y == 0) ? 4.0 :
                        ((x == 0 || y == 0) ? 2.0 : 1.0);
                    sum += texelFetch(uRobustness, q, 0).r * spatial;
                    weightSum += spatial;
                }
            }
            float smoothed = sum / max(weightSum, 1e-6);
            return clamp(mix(center, smoothed, clamp(uRobustnessSpatialMix, 0.0, 1.0)), 0.0, 1.0);
        }

        vec4 lscAt(ivec2 samplePos) {
            vec2 uv = (vec2(samplePos) + vec2(0.5)) / vec2(uImageSize);
            return texture(uLensShadingMap, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        vec3 reconstructedRgbAt(vec2 globalRawPos) {
            vec2 localPos = globalRawPos - vec2(uSourceOrigin);
            vec2 maxPos = vec2(max(uSourceSize - ivec2(1), ivec2(0)));
            vec2 storageSize = vec2(textureSize(uRcdRgbTile, 0));
            vec2 uv = (clamp(localPos, vec2(0.0), maxPos) + vec2(0.5)) /
                storageSize;
            vec3 encoded = texture(uRcdRgbTile, uv).rgb;
            if (uIsReference != 0 || uSemanticEncoding == 0) {
                // The reconstruction texture is FP16 and intentionally carries linear
                // overrange. A long exposure can exceed the normal-frame output domain after
                // LSC while every sensor sample is still below white level. Clamping here would
                // clip the channels independently before exposure normalization and permanently
                // turn a neutral bright sample magenta/green.
                return max(encoded, vec3(0.0));
            }
            // Non-reference tiles encode calculation-WB (G, R-G, B-G). Keep that semantic
            // representation through texture interpolation and flow warping, then decode and
            // return to the same un-white-balanced camera-RGB contract as the VGN reference.
            vec3 calculationRgb = vec3(
                encoded.r + encoded.g,
                encoded.r,
                encoded.r + encoded.b
            );
            // Preserve the semantic proxy's overrange for the same reason. The caller applies
            // uExposureScale to both detail and denoise estimates before the only [0, 1] clamp.
            return max(
                calculationRgb / max(uCalculationGains, vec3(1e-6)),
                vec3(0.0)
            );
        }

        vec3 kernelMatrix(vec4 params) {
            float sumK = params.x + params.y;
            float diffK = params.x - params.y;
            return vec3(
                0.5 * (sumK + diffK * params.z),
                0.5 * diffK * params.w,
                0.5 * (sumK - diffK * params.z)
            );
        }

        float steeringWeight(vec2 tap, vec4 params) {
            vec3 k = kernelMatrix(params);
            float d = k.x * tap.x * tap.x + 2.0 * k.y * tap.x * tap.y +
                k.z * tap.y * tap.y;
            return exp(-0.5 * max(d, 0.0));
        }

        DualRgb reconstructRgb(vec2 rawPos, vec4 steeringKernel) {
            vec3 detail = reconstructedRgbAt(rawPos);
            float sigma = max(uDenoiseSigmaRawPx, 0.5);
            vec2 offsets[5] = vec2[5](
                vec2(0.0),
                vec2(-1.0, 0.0),
                vec2(1.0, 0.0),
                vec2(0.0, -1.0),
                vec2(0.0, 1.0)
            );
            vec3 denoiseSum = vec3(0.0);
            float denoiseWeightSum = 0.0;
            for (int i = 0; i < 5; ++i) {
                vec2 offset = offsets[i];
                float steered = steeringWeight(offset * 0.5, steeringKernel);
                float steering = mix(
                    1.0,
                    steered,
                    clamp(uDenoiseSteeringStrength, 0.0, 1.0)
                );
                float weight = exp(
                    -0.5 * dot(offset, offset) / (sigma * sigma)
                ) * steering;
                vec3 sampleRgb = i == 0 ? detail : reconstructedRgbAt(rawPos + offset);
                denoiseSum += sampleRgb * weight;
                denoiseWeightSum += weight;
            }
            return DualRgb(detail, denoiseSum / max(denoiseWeightSum, 1e-6));
        }

        float noiseVariance(
            float signal,
            int bayerIndex,
            float lscGainForNoise,
            bool referenceModel
        ) {
            float alpha = referenceModel ?
                uReferenceNoiseAlpha[bayerIndex] : uCurrentNoiseAlpha[bayerIndex];
            float beta = referenceModel ?
                uReferenceNoiseBeta[bayerIndex] : uCurrentNoiseBeta[bayerIndex];
            if (alpha <= 0.0 && beta <= 0.0) return 1e-10;
            float gain = clamp(lscGainForNoise, 1e-3, max(uLscNoiseGainMax, 1.0));
            return max(alpha * clamp(signal, 0.0, 1.0) * gain + beta * gain * gain, 1e-10);
        }

        vec3 cameraNoiseVariance(vec3 signal, vec4 lsc, bool referenceModel) {
            return vec3(
                noiseVariance(signal.r, 0, lsc.r, referenceModel),
                0.5 * (
                    noiseVariance(signal.g, 1, lsc.g, referenceModel) +
                    noiseVariance(signal.g, 2, lsc.b, referenceModel)
                ),
                noiseVariance(signal.b, 3, lsc.a, referenceModel)
            );
        }

        float rawSensorNormAt(ivec2 globalSample) {
            globalSample = clamp(globalSample, ivec2(0), uImageSize - ivec2(1));
            ivec2 localSample = clamp(
                globalSample - uSourceOrigin,
                ivec2(0),
                uSourceSize - ivec2(1)
            );
            int bayerIndex = bayerIndexAt(uCfaPattern, globalSample);
            float raw = float(texelFetch(uRawRegion, localSample, 0).r);
            float range = max(uWhiteLevel - uBlackLevel[bayerIndex], 1.0);
            return clamp(max(raw - uBlackLevel[bayerIndex], 0.0) / range, 0.0, 1.0);
        }

        float longHeadroomConfidence(vec2 sourceRaw) {
            if (uIsLongFrame == 0) return 1.0;
            ivec2 center = ivec2(round(sourceRaw));
            ivec2 phaseOrigin = center - ivec2(center.x & 1, center.y & 1);
            float rawPeak = 0.0;
            for (int y = 0; y <= 1; ++y) {
                for (int x = 0; x <= 1; ++x) {
                    rawPeak = max(rawPeak, rawSensorNormAt(phaseOrigin + ivec2(x, y)));
                }
            }
            return 1.0 - smoothstep(
                min(uLongClipStart, uLongClipFull),
                max(uLongClipStart, uLongClipFull),
                rawPeak
            );
        }

        vec2 opponentChromaConfidence(
            vec3 referenceRgb,
            vec3 currentRgb,
            vec3 differenceVariance
        ) {
            vec2 referenceChroma = referenceRgb.rb - referenceRgb.gg;
            vec2 currentChroma = currentRgb.rb - currentRgb.gg;
            vec2 chromaDelta = currentChroma - referenceChroma;
            // R-G and B-G are differences of independent sensor channels, therefore their
            // variances add. Keeping the two opponent axes separate prevents red noise from
            // reducing blue/green fusion weight and vice versa.
            vec2 opponentVariance = max(
                vec2(
                    differenceVariance.r + differenceVariance.g,
                    differenceVariance.b + differenceVariance.g
                ),
                vec2(1e-10)
            );
            vec2 normalizedSquaredResidual = chromaDelta * chromaDelta / opponentVariance;
            float sigmaStart = max(uChromaConsistencySigmaStart, 0.0);
            float sigmaFull = max(uChromaConsistencySigmaFull, sigmaStart + 1e-3);
            return vec2(1.0) - smoothstep(
                vec2(sigmaStart * sigmaStart),
                vec2(sigmaFull * sigmaFull),
                normalizedSquaredResidual
            );
        }

        float denoiseNeed(float signal) {
            return 1.0 - smoothstep(
                min(uDenoiseSignalLow, uDenoiseSignalHigh),
                max(uDenoiseSignalLow, uDenoiseSignalHigh),
                signal
            );
        }

        float denoiseStaticConfidence(float tile, float robust) {
            float tileConfidence = smoothstep(
                min(uDenoiseStaticTileStart, uDenoiseStaticTileEnd),
                max(uDenoiseStaticTileStart, uDenoiseStaticTileEnd),
                tile
            );
            float robustConfidence = smoothstep(
                min(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                max(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                robust
            );
            return clamp(tileConfidence * robustConfidence, 0.0, 1.0);
        }

        void main() {
            ivec2 accumulatorP = ivec2(gl_GlobalInvocationID.xy);
            ivec2 outputP = accumulatorP + uAccumulatorOrigin;
            if (accumulatorP.x >= uAccumulatorSize.x ||
                accumulatorP.y >= uAccumulatorSize.y ||
                outputP.x >= uOutputSize.x || outputP.y >= uOutputSize.y) {
                return;
            }

            vec2 refRaw = referenceRawPos(outputP);
            vec2 planePos = refRaw * 0.5;
            vec2 sourceRaw = refRaw;
            vec4 tileConfidence = vec4(1.0, 1.0, 0.0, 0.0);
            vec4 flowEvidence = vec4(0.0, 0.0, 0.0, 1.0);
            float robust = 1.0;
            if (uIsReference == 0) {
                flowEvidence = flowEvidenceAt(planePos);
                sourceRaw += flowEvidence.rg * 2.0;
                if (sourceRaw.x < -0.5 || sourceRaw.y < -0.5 ||
                    sourceRaw.x > float(uImageSize.x) - 0.5 ||
                    sourceRaw.y > float(uImageSize.y) - 0.5) {
                    $outOfBoundsHandling
                    return;
                }
                tileConfidence = tileConfidenceAt(planePos);
                robust = spatiallySmoothedRobustness(planePos);
            }

            vec2 kernelUv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) +
                vec2(0.5)) / vec2(uPlaneSize);
            vec4 steeringKernel = texture(uKernel, kernelUv);
            DualRgb sourceRgb = reconstructRgb(sourceRaw, steeringKernel);
            float longClipConfidence = longHeadroomConfidence(sourceRaw);
            float radiometricScale = max(uExposureScale, 1e-4);
            DualRgb rgb = DualRgb(
                clamp(sourceRgb.detail * radiometricScale, 0.0, 1.0),
                clamp(sourceRgb.denoise * radiometricScale, 0.0, 1.0)
            );
            float signal = dot(rgb.denoise, vec3(0.2126, 0.7152, 0.0722));
            ivec2 nearestSource = clamp(ivec2(round(sourceRaw)), ivec2(0), uImageSize - ivec2(1));
            vec4 lsc = lscAt(nearestSource);
            float shadow = denoiseNeed(signal);
            vec3 highlight = vec3(1.0) - uHighlightSuppressionStrength *
                smoothstep(uHighlightSuppressionStart, uHighlightSuppressionEnd,
                    rgb.denoise);

            vec3 channelPrecision = vec3(1.0);
            vec3 channelConsistency = vec3(1.0);
            vec3 nrWeight;
            vec3 detailWeight;
            $rejectionVariable
            if (uIsReference != 0) {
                nrWeight = vec3(1.0);
                detailWeight = vec3(1.0);
            } else {
                vec3 referenceRgb = clamp(
                    texelFetch(uReferenceBase, accumulatorP, 0).rgb,
                    0.0,
                    1.0
                );
                ivec2 nearestReference = clamp(
                    ivec2(round(refRaw)),
                    ivec2(0),
                    uImageSize - ivec2(1)
                );
                vec4 referenceLsc = lscAt(nearestReference);
                vec3 referenceVariance = cameraNoiseVariance(
                    referenceRgb,
                    referenceLsc,
                    true
                );
                // Both estimates use the reference signal so shot-noise weighting cannot be
                // biased by the current frame's random positive/negative noise excursion.
                vec3 currentExpectedSignal = clamp(
                    referenceRgb / max(radiometricScale, 1e-4),
                    0.0,
                    1.0
                );
                vec3 currentExpectedVariance = cameraNoiseVariance(
                    currentExpectedSignal,
                    lsc,
                    false
                ) * radiometricScale * radiometricScale;
                float precisionUpper = uIsLongFrame != 0 ?
                    max(uLongPrecisionWeightCap, 1.0) : 4.0;
                channelPrecision = clamp(
                    referenceVariance / max(currentExpectedVariance, vec3(1e-10)),
                    vec3(0.25),
                    vec3(precisionUpper)
                );
                vec2 chromaConfidence = opponentChromaConfidence(
                    referenceRgb,
                    rgb.denoise,
                    referenceVariance + currentExpectedVariance
                );
                channelConsistency = vec3(chromaConfidence.x, 1.0, chromaConfidence.y);
                // Keep the noise model channel-specific, but couple the final color support.
                // Independent RGB weights let G keep accumulating while R/B fall back to the
                // reference at chromatic or slightly misregistered edges. That combines channels
                // from different effective frame sets and creates green/magenta fringes. The
                // conservative shared support preserves the reconstructed RGB triplet as a unit.
                float sharedPrecision = min(
                    min(channelPrecision.r, channelPrecision.g),
                    channelPrecision.b
                );
                // Long brackets are deliberately allowed to carry more denoise precision than
                // a normal non-reference frame. Keep this role boost inside the validated
                // precision cap; all geometric, chroma, clipping, and robustness gates remain
                // downstream and can still reduce the final weight to zero.
                float nrPrecision = uIsLongFrame != 0 ?
                    min(
                        sharedPrecision * max(uLongNrWeightScale, 1.0),
                        precisionUpper
                    ) : sharedPrecision;
                float sharedConsistency = min(chromaConfidence.x, chromaConfidence.y);
                float sharedHighlight = min(min(highlight.r, highlight.g), highlight.b);
                float longNrRoleWeight = uIsLongFrame != 0 ? longClipConfidence : 1.0;
                float longDetailRoleWeight = uIsLongFrame != 0 ?
                    longClipConfidence * clamp(uLongDetailWeightScale, 0.0, 1.0) : 1.0;
                // Long frames may be reached through reference -> normal anchor -> long. Their
                // composed confidence is normalized per validated edge and represents whether
                // the complete geometric path is locally supported. Applying it after final
                // reference-domain refinement prevents a high precision weight from reviving a
                // weak hand-shake alignment at static high-contrast edges.
                float longPathConfidence = uIsLongFrame != 0 ?
                    clamp(flowEvidence.a, 0.0, 1.0) : 1.0;
                float nrCoverage = clamp(tileConfidence.r * robust, 0.0, 1.0) *
                    clamp(uRegistrationNrWeight, 0.0, 1.0) * longPathConfidence;
                float detailCoverage = clamp(tileConfidence.g * robust, 0.0, 1.0) *
                    longPathConfidence;
                $rejectionAssignment
                float staticConfidence = denoiseStaticConfidence(tileConfidence.r, robust);
                float sharedNrWeight = uFrameWeight * nrPrecision * sharedConsistency *
                    nrCoverage * sharedHighlight * longNrRoleWeight * mix(
                    1.0,
                    max(uDenoiseNonReferenceWeightBoost, 1.0),
                    shadow * staticConfidence
                );
                float sharedDetailWeight = uFrameWeight * sharedPrecision * sharedConsistency *
                    detailCoverage * sharedHighlight *
                    clamp(uRegistrationDetailWeight, 0.0, 1.0) * longDetailRoleWeight;
                nrWeight = vec3(sharedNrWeight);
                detailWeight = vec3(sharedDetailWeight);
            }
            $rejectionStore
            $participationStore
            $longParticipationStore

            if (any(greaterThan(nrWeight, vec3(1e-7)))) {
                vec2 nrRg = unpackHalf2x16(imageLoad(uNrSumRg, accumulatorP).r);
                vec2 nrBw = unpackHalf2x16(imageLoad(uNrSumBw, accumulatorP).r);
                vec2 nrWeightRg = unpackHalf2x16(imageLoad(uNrWeightRg, accumulatorP).r);
                nrRg += rgb.denoise.rg * nrWeight.rg;
                nrBw += vec2(rgb.denoise.b * nrWeight.b, nrWeight.b);
                nrWeightRg += nrWeight.rg;
                imageStore(
                    uNrSumRg,
                    accumulatorP,
                    uvec4(packHalf2x16(nrRg), 0u, 0u, 0u)
                );
                imageStore(
                    uNrSumBw,
                    accumulatorP,
                    uvec4(packHalf2x16(nrBw), 0u, 0u, 0u)
                );
                imageStore(
                    uNrWeightRg,
                    accumulatorP,
                    uvec4(packHalf2x16(nrWeightRg), 0u, 0u, 0u)
                );
            }
            if (any(greaterThan(detailWeight, vec3(1e-7)))) {
                vec2 detailRg = unpackHalf2x16(imageLoad(uDetailSumRg, accumulatorP).r);
                vec2 detailBw = unpackHalf2x16(imageLoad(uDetailSumBw, accumulatorP).r);
                vec2 detailWeightRg = unpackHalf2x16(
                    imageLoad(uDetailWeightRg, accumulatorP).r
                );
                detailRg += rgb.detail.rg * detailWeight.rg;
                detailBw += vec2(rgb.detail.b * detailWeight.b, detailWeight.b);
                detailWeightRg += detailWeight.rg;
                imageStore(
                    uDetailSumRg,
                    accumulatorP,
                    uvec4(packHalf2x16(detailRg), 0u, 0u, 0u)
                );
                imageStore(
                    uDetailSumBw,
                    accumulatorP,
                    uvec4(packHalf2x16(detailBw), 0u, 0u, 0u)
                );
                imageStore(
                    uDetailWeightRg,
                    accumulatorP,
                    uvec4(packHalf2x16(detailWeightRg), 0u, 0u, 0u)
                );
            }
        }
        """.trimIndent()
    }

    val captureReferenceBase: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        uniform highp usampler2D uNrWeightRg;
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uReferenceBase;
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            vec2 rg = unpackHalf2x16(texelFetch(uNrSumRg, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(uNrSumBw, p, 0).r);
            vec2 weightRg = max(
                unpackHalf2x16(texelFetch(uNrWeightRg, p, 0).r),
                vec2(1e-6)
            );
            float weightB = max(bw.y, 1e-6);
            imageStore(
                uReferenceBase,
                p,
                vec4(clamp(vec3(rg / weightRg, bw.x / weightB), 0.0, 1.0), 1.0)
            );
        }
    """.trimIndent()

    fun normalize(
        showRejections: Boolean,
        showSrDetail: Boolean = false,
        reconstructHighlights: Boolean = false,
        showHighlightReconstruction: Boolean = false,
        showLongParticipation: Boolean = false,
    ): String {
        val rejectionUniforms = if (showRejections) {
            """
            uniform highp sampler2D uFusionRejections;
            uniform float uGlobalAlignmentRejectCount;
            uniform float uAcceptedFusionFrameCount;
            """.trimIndent()
        } else {
            ""
        }
        val debugColorUniform = if (showRejections || showSrDetail) {
            "uniform vec3 uDebugNeutralRgb;"
        } else {
            ""
        }
        val longParticipationUniform = if (showLongParticipation) {
            "uniform highp usampler2D uLongParticipation;"
        } else {
            ""
        }
        val highlightDeclarations = if (reconstructHighlights) {
            """
            uniform sampler2D uHighlightRgb;
            uniform highp usampler2D uHighlightRaw;
            uniform highp usampler2D uReferenceRaw;
            uniform sampler2D uHighlightFlow;
            uniform ivec2 uHighlightSourceOrigin;
            uniform ivec2 uHighlightSourceSize;
            uniform ivec2 uHighlightFlowGridSize;
            uniform ivec2 uInputSize;
            uniform ivec2 uOutputSize;
            uniform int uHighlightFlowTileSize;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uHighlightExposureRatio;
            uniform float uHighlightNormalClipStart;
            uniform float uHighlightNormalClipFull;
            uniform float uHighlightShortClipStart;
            uniform float uHighlightShortClipFull;
            uniform float uHighlightShortSignalStart;
            uniform float uHighlightShortSignalFull;
            uniform float uHighlightFlowMinimumConfidence;
            uniform float uHighlightFlowFullConfidence;
            """.trimIndent()
        } else {
            ""
        }
        val highlightHelpers = if (reconstructHighlights) {
            """
            int highlightBaseCfaPattern() {
                if (uCfaPattern >= 8) return uCfaPattern - 8;
                if (uCfaPattern >= 4) return uCfaPattern - 4;
                return uCfaPattern;
            }

            int highlightCfaBlockSize() {
                if (uCfaPattern >= 8) return 4;
                if (uCfaPattern >= 4) return 2;
                return 1;
            }

            int highlightBayerIndexForPhase(int pattern, int phase) {
                if (pattern == 0) return phase;
                if (pattern == 1) {
                    if (phase == 0) return 1;
                    if (phase == 1) return 0;
                    if (phase == 2) return 3;
                    return 2;
                }
                if (pattern == 2) {
                    if (phase == 0) return 2;
                    if (phase == 1) return 3;
                    if (phase == 2) return 0;
                    return 1;
                }
                if (phase == 0) return 3;
                if (phase == 1) return 2;
                if (phase == 2) return 1;
                return 0;
            }

            int highlightBayerIndexAt(ivec2 p) {
                int blockSize = highlightCfaBlockSize();
                int phase = ((p.y / blockSize) & 1) * 2 + ((p.x / blockSize) & 1);
                return highlightBayerIndexForPhase(highlightBaseCfaPattern(), phase);
            }

            vec4 highlightFlowAt(vec2 planePosition) {
                vec2 grid = planePosition / float(uHighlightFlowTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uHighlightFlowGridSize);
                return texture(uHighlightFlow, clamp(uv, vec2(0.0), vec2(1.0)));
            }

            vec3 highlightRgbAt(vec2 localRawPosition) {
                vec2 maximum = vec2(max(uHighlightSourceSize - ivec2(1), ivec2(0)));
                vec2 storageSize = vec2(textureSize(uHighlightRgb, 0));
                vec2 uv = (clamp(localRawPosition, vec2(0.0), maximum) + vec2(0.5)) /
                    storageSize;
                return clamp(texture(uHighlightRgb, uv).rgb, 0.0, 1.0);
            }

            float highlightRawNormAt(ivec2 localPosition) {
                localPosition = clamp(
                    localPosition,
                    ivec2(0),
                    uHighlightSourceSize - ivec2(1)
                );
                ivec2 globalPosition = localPosition + uHighlightSourceOrigin;
                int bayerIndex = highlightBayerIndexAt(globalPosition);
                float raw = float(texelFetch(uHighlightRaw, localPosition, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[bayerIndex], 1.0);
                return clamp((raw - uBlackLevel[bayerIndex]) / range, 0.0, 1.0);
            }

            float referenceRawNormAt(ivec2 globalPosition) {
                globalPosition = clamp(globalPosition, ivec2(0), uInputSize - ivec2(1));
                int bayerIndex = highlightBayerIndexAt(globalPosition);
                float raw = float(texelFetch(uReferenceRaw, globalPosition, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[bayerIndex], 1.0);
                return clamp((raw - uBlackLevel[bayerIndex]) / range, 0.0, 1.0);
            }

            vec2 highlightRawSignalAndPeak(vec2 localRawPosition) {
                ivec2 center = ivec2(round(localRawPosition));
                ivec2 block = (center / 2) * 2;
                float signal = 0.0;
                float peak = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        float sampleValue = highlightRawNormAt(block + ivec2(x, y));
                        signal += sampleValue;
                        peak = max(peak, sampleValue);
                    }
                }
                return vec2(signal * 0.25, peak);
            }

            float referenceRawPeak(vec2 globalRawPosition) {
                ivec2 center = ivec2(round(globalRawPosition));
                ivec2 block = (center / 2) * 2;
                float peak = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        peak = max(peak, referenceRawNormAt(block + ivec2(x, y)));
                    }
                }
                return peak;
            }
            """.trimIndent()
        } else {
            ""
        }
        val highlightComposition = if (reconstructHighlights) {
            val highlightDebugOverlay = if (showHighlightReconstruction) {
                """
                if (highlightWeight > 1e-4) {
                    rgb = vec3(0.0, 1.0, 0.0);
                }
                """.trimIndent()
            } else {
                ""
            }
            """
            vec2 referenceRawPosition = (vec2(outputP) + vec2(0.5)) *
                vec2(uInputSize) / vec2(uOutputSize) - vec2(0.5);
            vec4 highlightFlow = highlightFlowAt(referenceRawPosition * 0.5);
            vec2 highlightGlobalPosition = referenceRawPosition + 2.0 * highlightFlow.rg;
            vec2 highlightLocalPosition = highlightGlobalPosition - vec2(uHighlightSourceOrigin);
            float highlightInside = highlightLocalPosition.x >= 0.0 &&
                highlightLocalPosition.y >= 0.0 &&
                highlightLocalPosition.x <= float(uHighlightSourceSize.x - 1) &&
                highlightLocalPosition.y <= float(uHighlightSourceSize.y - 1) ? 1.0 : 0.0;
            vec3 highlightRgb = highlightRgbAt(highlightLocalPosition);
            vec2 highlightRawStats = highlightRawSignalAndPeak(highlightLocalPosition);
            float normalPeak = referenceRawPeak(referenceRawPosition);
            float normalClipped = smoothstep(
                min(uHighlightNormalClipStart, uHighlightNormalClipFull),
                max(uHighlightNormalClipStart, uHighlightNormalClipFull),
                normalPeak
            );
            float shortNotClipped = 1.0 - smoothstep(
                min(uHighlightShortClipStart, uHighlightShortClipFull),
                max(uHighlightShortClipStart, uHighlightShortClipFull),
                highlightRawStats.y
            );
            float shortHasSignal = smoothstep(
                min(uHighlightShortSignalStart, uHighlightShortSignalFull),
                max(uHighlightShortSignalStart, uHighlightShortSignalFull),
                highlightRawStats.x
            );
            float highlightFlowConfidence = smoothstep(
                uHighlightFlowMinimumConfidence,
                max(
                    uHighlightFlowMinimumConfidence + 1e-4,
                    uHighlightFlowFullConfidence
                ),
                highlightFlow.a
            );
            float shortReliability = clamp(
                shortNotClipped * shortHasSignal * highlightFlowConfidence * highlightInside,
                0.0,
                1.0
            );
            // A confirmed RAW-clipped normal sample contains no radiance information. In that
            // core region choose one source: a sufficiently reliable short sample replaces it
            // completely; otherwise retain the normal fallback. Never average the two, because
            // the clipped normal value biases recovered highlights toward dirty gray.
            float saturatedCore = step(uHighlightNormalClipFull, normalPeak);
            float coreShortSelection = saturatedCore * step(0.5, shortReliability);
            // The soft shoulder lies below confirmed sensor clipping, where the normal sample is
            // still physically meaningful and can safely hide exposure-boundary seams.
            float shoulderBlend = (1.0 - saturatedCore) * normalClipped * shortReliability;
            float highlightWeight = max(coreShortSelection, shoulderBlend);
            vec3 normalInShortDomain = rgb / max(uHighlightExposureRatio, 1.0);
            rgb = clamp(mix(normalInShortDomain, highlightRgb, highlightWeight), 0.0, 1.0);
            $highlightDebugOverlay
            """.trimIndent()
        } else {
            ""
        }
        val rejectionOverlay = if (showRejections) {
            """
            {
                vec4 rejection = texelFetch(uFusionRejections, p, 0);
                float reasonId = rejection.x;
                float displayStrength = 0.0;
                if (reasonId > 0.0 && rejection.a > 0.0) {
                    float rejectedFrameFraction = clamp(
                        rejection.a / max(uAcceptedFusionFrameCount, 1.0),
                        0.0,
                        1.0
                    );
                    displayStrength = sqrt(rejectedFrameFraction);
                } else if (center.lumaConfidence <= 1e-6 &&
                    uGlobalAlignmentRejectCount > 0.0) {
                    reasonId = 8.0;
                    displayStrength = 1.0;
                }
                vec3 displayColor = vec3(0.5);
                if (reasonId < 1.5) {
                    displayColor = vec3(1.0, 1.0, 0.0);       // proxy validity: yellow
                } else if (reasonId < 2.5) {
                    displayColor = vec3(1.0, 0.35, 0.0);      // patch peak: orange
                } else if (reasonId < 3.5) {
                    displayColor = vec3(1.0, 0.0, 1.0);       // patch score: magenta
                } else if (reasonId < 4.5) {
                    displayColor = vec3(0.0, 1.0, 1.0);       // absolute flow: cyan
                } else if (reasonId < 5.5) {
                    displayColor = vec3(0.0, 0.0, 1.0);       // local flow range: blue
                } else if (reasonId < 6.5) {
                    displayColor = vec3(1.0, 0.0, 0.0);       // photometric residual: red
                } else if (reasonId < 7.5) {
                    displayColor = vec3(0.0, 1.0, 0.0);       // tile aggregation: green
                } else if (reasonId < 8.5) {
                    displayColor = vec3(0.45, 0.0, 1.0);      // frame gate: violet
                } else if (reasonId < 9.5) {
                    displayColor = vec3(0.0, 1.0, 0.35);      // out of bounds: turquoise
                } else if (reasonId < 10.5) {
                    displayColor = vec3(1.0, 0.20, 0.45);     // sensor precision: pink
                } else if (reasonId < 11.5) {
                    displayColor = vec3(0.45, 1.0, 0.0);      // highlight suppression: lime
                } else if (reasonId < 12.5) {
                    displayColor = vec3(1.0, 0.0, 1.0);       // opponent chroma: magenta
                } else if (reasonId < 13.5) {
                    displayColor = vec3(1.0, 0.55, 0.0);      // saturated long RAW: amber
                }
                if (reasonId > 0.0 && displayStrength > 0.0) {
                    rgb = mix(
                        rgb,
                        displayColor * uDebugNeutralRgb,
                        displayStrength
                    );
                }
            }
            """.trimIndent()
        } else {
            ""
        }
        val srDetailOverlay = if (showSrDetail) {
            """
            if (srDetailConfidence > 1e-6) {
                vec3 srDetailColor = vec3(0.0, 1.0, 1.0) * uDebugNeutralRgb;
                rgb = mix(rgb, srDetailColor, srDetailConfidence);
            }
            """.trimIndent()
        } else {
            ""
        }
        val longParticipationOverlay = if (showLongParticipation) {
            """
            if (texelFetch(uLongParticipation, p, 0).r != 0u) {
                rgb = vec3(0.0, 1.0, 0.0);
            }
            """.trimIndent()
        } else {
            ""
        }
        return """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        in vec2 vTexCoord;
        layout(location = 0) out highp uvec4 fragColor;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        uniform highp usampler2D uNrWeightRg;
        uniform highp usampler2D uDetailSumRg;
        uniform highp usampler2D uDetailSumBw;
        uniform highp usampler2D uDetailWeightRg;
        uniform sampler2D uReferenceBase;
        $rejectionUniforms
        $longParticipationUniform
        $debugColorUniform
        $highlightDeclarations
        uniform float uNoiseAlphaByChannel[4];
        uniform float uNoiseBetaByChannel[4];
        uniform float uNrConfidenceStart;
        uniform float uNrConfidenceFull;
        uniform float uDetailConfidenceStart;
        uniform float uDetailConfidenceFull;
        uniform float uReferenceDetailFloor;
        uniform float uDetailChromaStrength;
        uniform vec3 uCalculationGains;
        uniform ivec2 uAccumulatorOrigin;
        uniform ivec2 uAccumulatorSize;
        uniform ivec2 uOutputOrigin;

        $highlightHelpers

        struct NrState {
            vec3 base;
            vec3 nr;
            vec3 noise;
            vec3 confidence;
            vec3 consistency;
            vec3 effectiveSupport;
            vec3 weight;
            float lumaConfidence;
        };

        struct WeightedRgb {
            vec3 value;
            vec3 weight;
        };

        ivec2 clampAccumulatorPos(ivec2 p) {
            return clamp(p, ivec2(0), uAccumulatorSize - ivec2(1));
        }

        vec3 referenceBaseAt(ivec2 p) {
            return clamp(
                texelFetch(uReferenceBase, clampAccumulatorPos(p), 0).rgb,
                0.0,
                1.0
            );
        }

        vec3 sensorNoise(vec3 rgb) {
            return max(vec3(
                uNoiseAlphaByChannel[0] * rgb.r + uNoiseBetaByChannel[0],
                0.5 * (
                    uNoiseAlphaByChannel[1] + uNoiseAlphaByChannel[2]
                ) * rgb.g + 0.5 * (
                    uNoiseBetaByChannel[1] + uNoiseBetaByChannel[2]
                ),
                uNoiseAlphaByChannel[3] * rgb.b + uNoiseBetaByChannel[3]
            ), vec3(1e-10));
        }

        WeightedRgb packedRgbWeightAt(
            highp usampler2D rgTexture,
            highp usampler2D bwTexture,
            highp usampler2D weightRgTexture,
            ivec2 p
        ) {
            p = clampAccumulatorPos(p);
            vec2 rg = unpackHalf2x16(texelFetch(rgTexture, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(bwTexture, p, 0).r);
            vec2 weightRg = max(
                unpackHalf2x16(texelFetch(weightRgTexture, p, 0).r),
                vec2(0.0)
            );
            vec3 weight = vec3(weightRg, max(bw.y, 0.0));
            vec3 value = vec3(
                weight.r > 1e-7 ? rg.r / weight.r : 0.0,
                weight.g > 1e-7 ? rg.g / weight.g : 0.0,
                weight.b > 1e-7 ? bw.x / weight.b : 0.0
            );
            return WeightedRgb(clamp(value, 0.0, 1.0), weight);
        }

        NrState nrStateAt(ivec2 p) {
            p = clampAccumulatorPos(p);
            vec3 base = referenceBaseAt(p);
            WeightedRgb sampleValue = packedRgbWeightAt(
                uNrSumRg,
                uNrSumBw,
                uNrWeightRg,
                p
            );
            vec3 weight = sampleValue.weight;
            vec3 nr = vec3(
                weight.r > 1e-7 ? sampleValue.value.r : base.r,
                weight.g > 1e-7 ? sampleValue.value.g : base.g,
                weight.b > 1e-7 ? sampleValue.value.b : base.b
            );
            vec3 noise = sensorNoise(nr);
            vec3 noiseStd = sqrt(max(noise + sensorNoise(base), vec3(1e-10)));
            vec3 residual = abs(nr - base);
            vec3 channelConsistency = vec3(1.0) - smoothstep(
                3.0 * noiseStd + vec3(0.002),
                10.0 * noiseStd + vec3(0.015),
                residual
            );
            vec3 additionalWeight = max(weight - vec3(1.0), vec3(0.0));
            vec3 channelSupport = smoothstep(
                vec3(min(uNrConfidenceStart, uNrConfidenceFull)),
                vec3(max(uNrConfidenceStart, uNrConfidenceFull)),
                additionalWeight
            );
            // Accumulation uses one shared color weight. Keep reference fallback coupled as
            // well; per-channel fallback would recreate the same effective-frame mismatch here.
            float sharedConsistency = min(
                min(channelConsistency.r, channelConsistency.g),
                channelConsistency.b
            );
            float sharedSupport = min(min(channelSupport.r, channelSupport.g), channelSupport.b);
            float sharedConfidence = clamp(
                sharedSupport * mix(0.35, 1.0, sharedConsistency),
                0.0,
                1.0
            );
            vec3 consistency = vec3(sharedConsistency);
            vec3 confidence = vec3(sharedConfidence);
            return NrState(
                base,
                nr,
                noise,
                clamp(confidence, 0.0, 1.0),
                clamp(consistency, 0.0, 1.0),
                max(weight, vec3(1.0)),
                weight,
                sharedConfidence
            );
        }

        void main() {
            ivec2 outputP = ivec2(gl_FragCoord.xy) + uOutputOrigin;
            ivec2 p = outputP - uAccumulatorOrigin;
            NrState center = nrStateAt(p);
            // Keep normalization point-local. Post-fusion spatial denoise is owned exclusively by
            // GlesRadianceVgnChromaPostprocessor; neighboring reference samples below only classify
            // structure for detail confidence and never contribute color to this output pixel.
            vec3 safeCenter = mix(center.base, center.nr, center.confidence);
            vec3 baseLeft = referenceBaseAt(p + ivec2(-1, 0));
            vec3 baseRight = referenceBaseAt(p + ivec2(1, 0));
            vec3 baseUp = referenceBaseAt(p + ivec2(0, 1));
            vec3 baseDown = referenceBaseAt(p + ivec2(0, -1));
            vec3 gradientX = 0.5 * (baseRight - baseLeft);
            vec3 gradientY = 0.5 * (baseUp - baseDown);
            float gradient = sqrt(
                dot(gradientX, gradientX) + dot(gradientY, gradientY)
            );
            float finalNoiseStd = sqrt(max(
                dot(center.noise / center.effectiveSupport, vec3(0.3333333)),
                1e-10
            ));
            float structure = smoothstep(
                1.5 * finalNoiseStd,
                6.0 * finalNoiseStd + 1e-5,
                gradient
            );

            WeightedRgb detailSample = packedRgbWeightAt(
                uDetailSumRg,
                uDetailSumBw,
                uDetailWeightRg,
                p
            );
            vec3 detail = vec3(
                detailSample.weight.r > 1e-7 ? detailSample.value.r : center.base.r,
                detailSample.weight.g > 1e-7 ? detailSample.value.g : center.base.g,
                detailSample.weight.b > 1e-7 ? detailSample.value.b : center.base.b
            );
            vec3 additionalDetailWeight = max(
                detailSample.weight - vec3(1.0),
                vec3(0.0)
            );
            vec3 detailSupport = smoothstep(
                vec3(min(uDetailConfidenceStart, uDetailConfidenceFull)),
                vec3(max(uDetailConfidenceStart, uDetailConfidenceFull)),
                additionalDetailWeight
            );
            vec3 lumaWeights = vec3(0.2126, 0.7152, 0.0722);
            float detailLumaSupport = dot(detailSupport, lumaWeights);
            float centerLumaConsistency = dot(center.consistency, lumaWeights);
            float srDetailConfidence = detailLumaSupport * centerLumaConsistency;
            float referenceFloor = clamp(uReferenceDetailFloor, 0.0, 1.0) * structure;
            float detailConfidence = max(
                referenceFloor,
                detailLumaSupport * centerLumaConsistency
            );
            vec3 calculationGains = max(uCalculationGains, vec3(1e-6));
            vec3 nrCalculation = safeCenter * calculationGains;
            vec3 detailCalculation = detail * calculationGains;
            float detailLumaDelta = abs(dot(
                detailCalculation - nrCalculation,
                vec3(0.2126, 0.7152, 0.0722)
            ));
            float flatStability = 1.0 - smoothstep(
                3.0 * finalNoiseStd + 0.003,
                10.0 * finalNoiseStd + 0.020,
                detailLumaDelta
            );
            float detailStability = mix(flatStability, 1.0, structure);
            detailConfidence *= detailStability;
            srDetailConfidence = clamp(srDetailConfidence * detailStability, 0.0, 1.0);
            detailConfidence = clamp(detailConfidence, 0.0, 1.0);
            // Radiance is stored as un-white-balanced camera RGB. Equal RGB deltas are not
            // achromatic in that domain: after capture WB they turn into complementary
            // magenta/green edge ringing. Extract, limit and inject luma detail in the
            // calculation-WB domain, then return to the camera-RGB output contract.
            float signedLumaDetail = dot(
                detailCalculation - nrCalculation,
                lumaWeights
            ) *
                detailConfidence;
            float lowerHeadroom = min(
                min(nrCalculation.r, nrCalculation.g),
                nrCalculation.b
            );
            vec3 calculationCeiling = calculationGains;
            vec3 availableHeadroom = max(calculationCeiling - nrCalculation, vec3(0.0));
            float upperHeadroom = min(
                min(availableHeadroom.r, availableHeadroom.g),
                availableHeadroom.b
            );
            signedLumaDetail = clamp(
                signedLumaDetail,
                -lowerHeadroom,
                upperHeadroom
            );
            vec3 lumaDetail =
                (nrCalculation + vec3(signedLumaDetail)) / calculationGains;
            vec3 fullRgbDetail = safeCenter + detailConfidence * (detail - safeCenter);
            float chromaConfidence = clamp(uDetailChromaStrength, 0.0, 1.0) *
                min(min(detailSupport.r, detailSupport.g), detailSupport.b) *
                min(min(center.consistency.r, center.consistency.g), center.consistency.b);
            vec3 rgb = clamp(
                mix(lumaDetail, fullRgbDetail, chromaConfidence),
                0.0,
                1.0
            );
            $highlightComposition
            $srDetailOverlay
            $rejectionOverlay
            $longParticipationOverlay
            fragColor = uvec4(
                uvec3(floor(rgb * 65535.0 + vec3(0.5))),
                65535u
            );
        }
        """.trimIndent()
    }
}
