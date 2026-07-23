package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.raw.RcdShaders
import com.hinnka.mycamera.raw.VgnShaders
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.roundToInt

internal class GlesRawRadianceStacker(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    blackLevel: FloatArray,
    whiteLevel: Int,
    whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
    noiseModel: FloatArray,
    private val rawNoiseModel: RawNoiseModel = RawNoiseModel.fromLegacyNoiseModel(noiseModel),
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    private val tuning: RawStackTuningProfile = RawStackTuningProfile(),
    debugConfig: RawStackDebugConfig = RawStackDebugConfig.Disabled,
    private val radianceFusionTuning: RawRadianceFusionTuning = RawRadianceFusionTuning(),
    private val useCurrentGlContext: Boolean = false,
    private val exportGpuLinearRgbSource: Boolean = false,
    private val prewarmHighlightPrograms: Boolean = false,
    private val prewarmLongPrograms: Boolean = false,
) {
    private data class TextureLevel(val texture: Int, val width: Int, val height: Int)
    private data class TemporalGraphSeedResources(
        val texturesByFrame: IntArray,
        val summariesByFrame: List<RawTemporalFrameFlowSummary?>,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileSpacing: Int,
    )
    private data class AcceptedSuperResolutionFrame(
        val frameIndex: Int,
        val image: SafeImage,
        val exposureScale: Float,
        val registrationWeight: Float,
        val detailWeight: Float,
        val flowTexture: Int,
        val robustnessTexture: Int,
        val tileMaskTexture: Int,
        val minFlowXPlanePx: Float,
        val maxFlowXPlanePx: Float,
        val minFlowYPlanePx: Float,
        val maxFlowYPlanePx: Float,
    )
    private data class RadianceHighlightAlignment(
        val frame: RawRadianceHighlightFrame,
        val flowTexture: Int,
        val minFlowXPlanePx: Float,
        val maxFlowXPlanePx: Float,
        val minFlowYPlanePx: Float,
        val maxFlowYPlanePx: Float,
    ) {
        fun flowBounds(): RadianceFlowBounds = RadianceFlowBounds(
            minXPlanePx = minFlowXPlanePx,
            maxXPlanePx = maxFlowXPlanePx,
            minYPlanePx = minFlowYPlanePx,
            maxYPlanePx = maxFlowYPlanePx,
        )
    }
    private data class RadianceLongAlignment(
        val plan: RawRadianceLongFramePlan,
        val anchorFrameIndex: Int,
        val flowTexture: Int,
        val robustnessTexture: Int,
        val tileMaskTexture: Int,
        val registrationWeight: Float,
        val detailWeight: Float,
        val precisionWeightCap: Float,
        val minFlowXPlanePx: Float,
        val maxFlowXPlanePx: Float,
        val minFlowYPlanePx: Float,
        val maxFlowYPlanePx: Float,
        val validTileFraction: Float,
        val coveredQuadrants: Int,
    ) {
        fun flowBounds(): RadianceFlowBounds = RadianceFlowBounds(
            minXPlanePx = minFlowXPlanePx,
            maxXPlanePx = maxFlowXPlanePx,
            minYPlanePx = minFlowYPlanePx,
            maxYPlanePx = maxFlowYPlanePx,
        )
    }
    private data class RadianceFlowSupport(
        val validTileFraction: Float,
        val validTileCount: Int,
        val coveredQuadrants: Int,
        val eligibleTileCount: Int,
        val eligibleQuadrants: Int,
        val eligibleCoverage: Float,
        val requiredQuadrants: Int,
        val admissionMode: RawRadianceLongAdmissionMode,
        val frameWeight: Float,
        val precisionWeightCap: Float,
        val minFlowXPlanePx: Float,
        val maxFlowXPlanePx: Float,
        val minFlowYPlanePx: Float,
        val maxFlowYPlanePx: Float,
    )
    private data class RadianceLongObservabilitySummary(
        val meanSignal: Float,
        val meanDetail: Float,
        val meanNoiseSigma: Float,
        val meanDetailSnr: Float,
        val meanAlignmentObservability: Float,
        val observableTileCount: Int,
        val totalTileCount: Int,
    )
    private data class RadianceLongTrackingSeedResources(
        val anchorTrackingTexture: Int,
        val longTrackingTexture: Int,
        val forwardSeedTexture: Int,
        val reverseSeedTexture: Int,
        val trackingWidth: Int,
        val trackingHeight: Int,
        val trackingScale: Int,
        val seedGridWidth: Int,
        val seedGridHeight: Int,
        val seedTileSpacing: Int,
    )
    private data class ReadOutputTiming(
        val elapsedMs: Long,
        val glReadMs: Long,
        val copyMs: Long,
        val allocMs: Long,
        val mode: String,
    )
    private data class ReconstructionResult(
        val readTiming: ReadOutputTiming,
        val exportedTextureId: Int = 0,
    )
    private data class RadianceVgnImageBinding(
        val unit: Int,
        val texture: Int,
        val access: Int,
        val format: Int,
    )
    private data class RegistrationAcceptance(
        val accepted: Boolean,
        val transform: RawStackPerspectiveTransform,
        val reason: String,
        val srTransform: RawStackPerspectiveTransform,
        val srTransformSource: String,
        val srWeight: Float,
        val srSeedWeight: Float,
        val srConsistencyWeight: Float,
    )
    private data class RegistrationSrGate(
        val weight: Float,
        val seedWeight: Float,
        val consistencyWeight: Float,
    ) {
        companion object {
            val Zero = RegistrationSrGate(
                weight = 0.0f,
                seedWeight = 0.0f,
                consistencyWeight = 0.0f,
            )
        }
    }
    private data class SuperResolutionOutputDecision(
        val mode: String,
        val fallbackReason: String?,
        val detailFrameCount: Int,
        val detailWeightSum: Float,
        val phaseBinCount: Int,
        val phaseBinTotal: Int,
        val phaseBinSamples: List<Int>,
    ) {
        companion object {
            val Disabled = SuperResolutionOutputDecision(
                mode = "n/a",
                fallbackReason = null,
                detailFrameCount = 0,
                detailWeightSum = Float.NaN,
                phaseBinCount = 0,
                phaseBinTotal = 0,
                phaseBinSamples = emptyList(),
            )
        }
    }
    private data class RegistrationTranslation(
        val dx: Float,
        val dy: Float,
    ) {
        val magnitude: Float
            get() = kotlin.math.sqrt(dx * dx + dy * dy)

        fun distanceTo(other: RegistrationTranslation): Float {
            val ddx = dx - other.dx
            val ddy = dy - other.dy
            return kotlin.math.sqrt(ddx * ddx + ddy * ddy)
        }
    }

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var ownsEglContext = false

    private val textures = ArrayList<Int>()
    private val programs = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()
    private val buffers = ArrayList<Int>()
    private val uniformLocations = HashMap<Int, MutableMap<String, Int>>()
    private var readbackScratchBuffer = 0
    private var readbackScratchCapacityBytes = 0

    private val normalizedBlackLevel = FloatArray(4) { index ->
        blackLevel.getOrElse(index) { blackLevel.firstOrNull() ?: 0f }
    }
    private val normalizedWhiteLevel = whiteLevel.coerceAtLeast(1).toFloat()
    private val demosaicCalculationWbGains = run {
        fun safeGain(index: Int, fallback: Float): Float {
            val value = whiteBalanceGains.getOrElse(index) { fallback }
            return if (value.isFinite() && value > 0f) value else fallback
        }
        val greenEven = safeGain(1, 1f)
        val greenOdd = safeGain(2, greenEven)
        val greenBase = ((greenEven + greenOdd) * 0.5f)
            .takeIf { it.isFinite() && it > 0f }
            ?: 1f
        fun relative(value: Float): Float =
            (value / greenBase.coerceAtLeast(1e-6f)).coerceIn(1e-3f, 64f)
        floatArrayOf(
            relative(safeGain(0, greenBase)),
            1f,
            1f,
            relative(safeGain(3, greenBase)),
        )
    }
    private val radianceDebugNeutralColor = radianceDebugNeutralRgb(demosaicCalculationWbGains)
    private val normalizedNoiseAlphaByChannel = rawNoiseModel.normalizedShotNoiseForShader(cfaPattern)
    private val normalizedNoiseBetaByChannel = rawNoiseModel.normalizedReadNoiseForShader(cfaPattern)
    private val noiseAlpha = 0.5f * (
        normalizedNoiseAlphaByChannel[1] + normalizedNoiseAlphaByChannel[2]
        )
    private val noiseBeta = 0.5f * (
        normalizedNoiseBetaByChannel[1] + normalizedNoiseBetaByChannel[2]
        )
    private val hwmfPrefilter = tuning.prefilter
    private val hwmfBlend = tuning.blend
    private val hwmfSr = tuning.superResolution
    private val hwmfDebug = debugConfig.normalized()
    private val registrationSetup = RawStackRegistrationResolver.resolve(width, height)
    private val registrationSummary = registrationSetup.toSummary()
    private val radianceUsesVgnSemanticBackend = cfaPattern in 0..3
    private val radianceVgnChromaPostprocessEnabled =
        radianceUsesVgnSemanticBackend && radianceFusionTuning.vgnChromaPostprocessEnabled
    private val visualizeRadianceFusionRejections =
        hwmfDebug.visualizeRadianceFusionRejections
    private val visualizeRadianceSrDetail =
        hwmfDebug.visualizeRadianceSrDetail
    private val visualizeRadianceHighlightReconstruction =
        hwmfDebug.visualizeRadianceHighlightReconstruction
    private val visualizeRadianceLongParticipation =
        hwmfDebug.visualizeRadianceLongParticipation
    private val logRadianceFusionParticipation =
        hwmfDebug.logRadianceFusionParticipation
    private val superResolutionScale = MultiFrameConfig.normalizeOutputScale(hwmfSr.outputScale)
        .coerceAtMost(MultiFrameConfig.normalizeOutputScale(hwmfSr.internalScale))
    private val outputWidth = MultiFrameConfig.scaledRawOutputDimension(width, superResolutionScale)
    private val outputHeight = MultiFrameConfig.scaledRawOutputDimension(height, superResolutionScale)
    private val rawCfaPeriod = when {
        cfaPattern >= 8 -> 8
        cfaPattern >= 4 -> 4
        else -> 2
    }
    private val radianceTiles = RadianceTilePlanner.plan(
        rawWidth = width,
        rawHeight = height,
        outputWidth = outputWidth,
        outputHeight = outputHeight,
        coreSizeRawPx = radianceFusionTuning.tileCoreSizeRawPx,
        outputSpatialRadiusPx = SUPER_RESOLUTION_SPATIAL_RADIUS,
        cfaPeriod = rawCfaPeriod,
    )
    private val superResolutionAccumulatorWidth = radianceTiles.maxOf { it.outputWorking.width }
    private val superResolutionAccumulatorHeight = radianceTiles.maxOf { it.outputWorking.height }
    private val radianceOutputTileWidth = radianceTiles.maxOf { it.outputCore.width }
    private val radianceOutputTileHeight = radianceTiles.maxOf { it.outputCore.height }
    private val superResolutionPhaseTracker = RawStackSuperResolutionPhaseTracker(
        cfaPeriod = rawCfaPeriod,
        outputScale = superResolutionScale,
        noveltyStartPx = hwmfSr.phaseNoveltyStartPx,
        noveltyFullPx = hwmfSr.phaseNoveltyFullPx,
    )
    private val pyramidLevels = max(
        hwmfPrefilter.pyramidLevels.coerceAtLeast(1),
        registrationSetup.requiredPyramidLevels(),
    )
    private val alignLevel = hwmfPrefilter.alignLevel.coerceAtLeast(0)
    private val flowGridSpacing = hwmfPrefilter.flowGridSpacing.coerceAtLeast(1)
    private val lkRefinePasses = hwmfBlend.lkRefinePasses.coerceAtLeast(0)
    private val flowSmoothPasses = hwmfBlend.flowSmoothPasses.coerceAtLeast(0)

    private val planeWidth = max(1, width / 2)
    private val planeHeight = max(1, height / 2)
    private var gridWidth = 0
    private var gridHeight = 0

    private var proxyProgram = 0
    private var trackingProxyProgram = 0
    private var downsampleProgram = 0
    private var alignProgram = 0
    private var flowReadbackProgram = 0
    private var registrationGlobalAlignProgram = 0
    private var lkRefineProgram = 0
    private var smoothFlowProgram = 0
    private var copyScalarProgram = 0
    private var copyRgbaProgram = 0
    private var structureProgram = 0
    private var robustnessProgram = 0
    private var tileMaskProgram = 0
    private var registrationSampleProgram = 0
    private var clearSuperResolutionAccumulatorProgram = 0
    private var accumulateSuperResolutionProgram = 0
    private var normalizeSuperResolutionProgram = 0
    private var radianceHighlightNormalizeProgram = 0
    private var radianceHighlightValidateFlowProgram = 0
    private var radianceHighlightPropagateFlowProgram = 0
    private var radianceHighlightComposeFlowProgram = 0
    private var radianceHighlightSupportProgram = 0
    private var radianceHighlightInferFlowProgram = 0
    private var radianceHighlightRejectionSeedProgram = 0
    private var radianceHighlightRejectionPropagateProgram = 0
    private var radianceHighlightApplyHoleDecisionProgram = 0
    private var radianceLongEligibilityProgram = 0
    private var radianceLongObservabilityDiagnosticProgram = 0
    private var radianceReferenceBaseProgram = 0
    private val radianceVgnPrograms = IntArray(VgnShaders.PROGRAM_3 + 1)
    private var radianceVgnFinalProgram = 0
    private var radianceSemanticSeedProgram = 0
    private var radianceSemanticResolveProgram = 0
    private var rcdRegionPopulateProgram = 0
    private var rcdRegionStep1Program = 0
    private var rcdRegionStep2Program = 0
    private var rcdRegionStep3Program = 0
    private var rcdRegionStep40Program = 0
    private var rcdRegionStep41Program = 0
    private var rcdRegionStep42Program = 0
    private var rcdRegionStep43Program = 0
    private var rcdRegionBorderPpgProgram = 0
    private var rcdStoreRgbProgram = 0
    private var diagnosticAlignmentProgram = 0
    private var diagnosticBuffer = 0
    private var diagnosticsFailed = false

    private var renderFbo = 0
    private var readbackFbo = 0
    private var renderFboTargetTexture = 0
    private val checkedRenderTargetTextures = HashSet<Int>()
    private val colorAttachment0 = intArrayOf(GLES30.GL_COLOR_ATTACHMENT0)

    private var refRaw = 0
    private var curRaw = 0
    private var refProxy = 0
    private var curProxy = 0
    private var flowTexture = 0
    private var flowScratchTexture = 0
    private var radianceHighlightReverseFlowTexture = 0
    private var radianceHighlightAnchorFlowTexture = 0
    private var radianceHighlightComposedFlowTexture = 0
    private var radianceHighlightSupportTexture = 0
    private var kernelTexture = 0
    private var robustnessTexture = 0
    private var tileMaskTexture = 0
    private var superResolutionAccumulatorTexture = 0
    private var superResolutionAccumulatorBwTexture = 0
    private var radianceNrWeightRgTexture = 0
    private var superResolutionAccumulatorBTexture = 0
    private var radianceDetailBwTexture = 0
    private var radianceDetailWeightRgTexture = 0
    private var radianceReferenceBaseTexture = 0
    private var radianceFusionRejectionTexture = 0
    private var radianceFusionRejectionScratchTexture = 0
    private var radianceLongParticipationTexture = 0
    private var radianceRgbTileTexture = 0
    private var radianceSemanticSeedTexture = 0
    private var radianceVgnPackedFloatTexture = 0
    private var radianceVgnPackedBayerTexture = 0
    private var radianceVgnPackedSmoothTexture = 0
    private var radianceVgnScaleTexture = 0
    private var radianceVgnMedianTexture = 0
    private var radianceVgnEdgeTexture = 0
    private var radianceVgnFull0Texture = 0
    private var radianceVgnFull1Texture = 0
    private var radianceVgnUbo = 0
    private var radianceVgnCapacityGeometry: RadianceVgnGeometry? = null
    private var radianceVgnChromaPostprocessor: GlesRadianceVgnChromaPostprocessor? = null
    private var rcdRawRegionTexture = 0
    private var rcdRegionCapacityWidth = 0
    private var rcdRegionCapacityHeight = 0
    private val rcdRegionBuffers = IntArray(9)
    private var outputTexture = 0
    private var lensShadingTexture = 0
    private var currentRegistrationTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
    private var currentRegistrationSrTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
    private var currentRegistrationSrWeight = 1.0f
    private var currentRegistrationNrWeight = 1.0f
    private var currentRegistrationSrDetailWeight = 1.0f
    private var currentTemporalFlowPhase: RegistrationTranslation? = null
    private var registrationEstimateCount = 0
    private var registrationConfidenceSum = 0f
    private var registrationConfidenceMin = Int.MAX_VALUE
    private var registrationForceIdentityCount = 0
    private var registrationInlierRatioSum = 0f
    private var registrationResidualP90Max = Float.NaN
    private var registrationGlobalScoreSum = 0f
    private var registrationGlobalScoreCount = 0
    private var registrationGlobalMarginMin = Float.POSITIVE_INFINITY
    private var registrationGlobalCoverageSum = 0f
    private val acceptedRegistrationTranslations = ArrayList<RegistrationTranslation>()
    private val acceptedSrRegistrationTranslations = ArrayList<RegistrationTranslation>()
    private var superResolutionDetailFrameCount = 0
    private var superResolutionDetailWeightSum = 0f
    private var superResolutionDetailWeightMax = 0f
    private var activeRadianceHighlightFrame: RawRadianceHighlightFrame? = null
    private var activeRadianceLongFrames: List<RawRadianceLongFramePlan> = emptyList()

    /** Compiles RAW Max programs and executes representative GPU paths in the idle GL context. */
    internal fun prewarmCapturePipeline(frameCount: Int) {
        require(useCurrentGlContext) {
            "RAW Max capture prewarm requires the caller-owned current EGL context"
        }
        val start = System.currentTimeMillis()
        try {
            attachCurrentEgl()
            ensureGles31()
            initPrograms()
            applyRawRenderState()
            prewarmAlignmentProgramExecution()
            PLog.d(
                TAG,
                "RAW Max reusable programs prewarmed size=${width}x$height frames=$frameCount " +
                    "took=${System.currentTimeMillis() - start}ms",
            )
        } finally {
            release()
        }
    }

    private fun prewarmAlignmentProgramExecution() {
        renderFbo = createFramebuffer()
        val trackingTextures = IntArray(2) {
            createTexture2D(
                PREWARM_TRACKING_WIDTH,
                PREWARM_TRACKING_HEIGHT,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
        }
        // Program execution is deliberately representative rather than production-sized. Real
        // RAW uploads, temporal graph construction and CPU flow solving depend on captured frames
        // and cannot produce reusable results during prewarm.
        val syntheticRawTexture = createTexture2D(
            PREWARM_RAW_WIDTH,
            PREWARM_RAW_HEIGHT,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        trackingTextures.forEachIndexed { index, texture ->
            buildTrackingProxy(
                rawTexture = syntheticRawTexture,
                outputTexture = texture,
                outputWidth = PREWARM_TRACKING_WIDTH,
                outputHeight = PREWARM_TRACKING_HEIGHT,
                levelScale = PREWARM_TRACKING_SCALE,
                exposureScale = 1f,
                label = "program prewarm frame $index",
            )
        }
        val edgeTexture = createTexture2D(
            PREWARM_GRID_WIDTH,
            PREWARM_GRID_HEIGHT,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        drawAlignment(
            reference = TextureLevel(
                trackingTextures[0],
                PREWARM_TRACKING_WIDTH,
                PREWARM_TRACKING_HEIGHT,
            ),
            current = TextureLevel(
                trackingTextures[1],
                PREWARM_TRACKING_WIDTH,
                PREWARM_TRACKING_HEIGHT,
            ),
            levelScale = PREWARM_TRACKING_SCALE,
            outputTexture = edgeTexture,
            outputGridWidth = PREWARM_GRID_WIDTH,
            outputGridHeight = PREWARM_GRID_HEIGHT,
            outputTileSpacing = PREWARM_GRID_SPACING,
            preAlignment = null,
            alignWindowSize = max(
                hwmfPrefilter.alignWindowSize,
                PREWARM_TRACKING_SCALE * MIN_TEMPORAL_WINDOW_LEVEL_PIXELS,
            ),
            label = "program prewarm edge",
        )
        readFlowTextures(
            textures = listOf(edgeTexture),
            textureWidth = PREWARM_GRID_WIDTH,
            textureHeight = PREWARM_GRID_HEIGHT,
            label = "program prewarm readback",
        )
        PLog.d(
            TAG,
            "RAW Max alignment programs executed during prewarm: " +
                "tracking=${PREWARM_TRACKING_WIDTH}x$PREWARM_TRACKING_HEIGHT " +
                "grid=${PREWARM_GRID_WIDTH}x$PREWARM_GRID_HEIGHT",
        )
    }

    internal fun processFrames(
        frames: List<RawStackFrame>,
        highlightFrame: RawRadianceHighlightFrame? = null,
        longFrames: List<RawRadianceLongFramePlan> = emptyList(),
    ): RawStackResult? {
        require(!exportGpuLinearRgbSource || useCurrentGlContext) {
            "A GPU LinearRaw export requires the caller-owned current EGL context"
        }
        val images = frames.map { it.image }
        activeRadianceHighlightFrame = highlightFrame
        activeRadianceLongFrames = longFrames
        val ownedImages = buildList {
            addAll(images)
            activeRadianceHighlightFrame?.shortFrame?.image?.let(::add)
            activeRadianceLongFrames.forEach { add(it.longFrame.image) }
        }
        if (images.isEmpty() || width <= 0 || height <= 0) {
            ownedImages.forEach { it.close() }
            return null
        }
        if (images.any { it.width != width || it.height != height }) {
            PLog.w(TAG, "GLES RAW stack got mixed frame sizes")
            ownedImages.forEach { it.close() }
            return null
        }
        if (ownedImages.any { it.format != ImageFormat.RAW_SENSOR }) {
            PLog.w(TAG, "GLES RAW stack only supports RAW_SENSOR input")
            ownedImages.forEach { it.close() }
            return null
        }

        val outputByteCount = outputWidth.toLong() * outputHeight.toLong() * 6L
        val referenceExposureProduct = validExposureProduct(frames.first().exposureProduct)
        val referenceFocusDistance = frames.first().focusDistanceDiopters
        val frameExposureScales = List(frames.size) { 1f }
        var outputBuffer: ByteBuffer? = null
        var exportedTextureId = 0
        var returned = false
        val startTime = System.currentTimeMillis()
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        return try {
            outputBuffer = LargeDirectBuffer.allocate(
                outputByteCount,
                "GLES RAW Radiance fused linear RGB16",
            )
                ?.order(ByteOrder.nativeOrder()) ?: return null

            if (useCurrentGlContext) {
                attachCurrentEgl()
            } else {
                initEgl()
            }
            ensureGles31()
            validateGpuResourceLimits()
            initPrograms()
            initResources()
            applyRawRenderState()
            RawStackRuntimeDebug.d(TAG) {
                "Radiance RAW stack frames=${images.size} " +
                    "out=${outputWidth}x$outputHeight srScale=${superResolutionScale.formatScale()} " +
                    "${registrationSummary.compactSummary()} regProxy=REG_OUT " +
                    "regCtx=${registrationSetup.referenceContextSummary()} " +
                    "prefilterLevels=$pyramidLevels flowGrid=$flowGridSpacing " +
                    "blendLk=$lkRefinePasses blendSmooth=$flowSmoothPasses"
            }
            RawStackRuntimeDebug.d(TAG) {
                "Radiance same-exposure fusion ref=$referenceExposureProduct normalization=disabled"
            }
            var referenceTrackingTexture = 0
            uploadRawTexture(images[0], refRaw, "reference")
            RawStackRuntimeDebug.i(TAG) {
                "Radiance reference listIndex=0 frameNumber=${frames[0].frameNumber} " +
                    "sensorTimestampNs=${frames[0].sensorTimestampNs} " +
                    "imageTimestampNs=${images[0].timestamp} exposure=${frames[0].exposureProduct}"
            }
            if (frames.size >= MIN_TEMPORAL_GRAPH_FRAME_COUNT) {
                    val trackingScale = temporalTrackingLevelScale(frames.size)
                    val trackingWidth = scaledTrackingDimension(planeWidth, trackingScale)
                    val trackingHeight = scaledTrackingDimension(planeHeight, trackingScale)
                    referenceTrackingTexture = createTexture2D(
                        trackingWidth,
                        trackingHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    buildTrackingProxy(
                        rawTexture = refRaw,
                        outputTexture = referenceTrackingTexture,
                        outputWidth = trackingWidth,
                        outputHeight = trackingHeight,
                        levelScale = trackingScale,
                        exposureScale = 1f,
                        label = "reference",
                    )
            }
            buildProxy(refRaw, refProxy, "reference")
            val refPyramid = createPyramid(refProxy)
            val curPyramid = createPyramid(curProxy)
            buildPyramid(refPyramid)
            val temporalGraphSeeds = if (referenceTrackingTexture != 0) {
                runCatching {
                    buildTemporalGraphSeeds(
                        frames = frames,
                        images = images,
                        frameExposureScales = frameExposureScales,
                        referenceTrackingTexture = referenceTrackingTexture,
                    )
                }.onFailure { error ->
                    PLog.w(TAG, "Temporal flow graph disabled after setup failure", error)
                }.getOrNull()
            } else {
                null
            }
            computeStructureTensor()
            currentRegistrationTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
            currentRegistrationSrTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
            currentRegistrationSrWeight = 1.0f
            currentRegistrationNrWeight = 1.0f
            currentRegistrationSrDetailWeight = 1.0f
            currentTemporalFlowPhase = RegistrationTranslation(0f, 0f)
            acceptedRegistrationTranslations.clear()
            acceptedSrRegistrationTranslations.clear()
            superResolutionPhaseTracker.reset()
            resetSuperResolutionDecisionStats()
            val acceptedSuperResolutionFrames = ArrayList<AcceptedSuperResolutionFrame>()
            GlesGpuScheduler.yieldToUiRenderer()

            var alignedFrameCount = 0
            for (index in 1 until images.size) {
                val frameFocusDistance = frames[index].focusDistanceDiopters
                if (!isFocusCompatibleWithReference(frames.first(), frames[index])) {
                    PLog.w(
                        TAG,
                        "Rejecting RAW stack frame $index due to focus breathing " +
                            "reference=$referenceFocusDistance current=$frameFocusDistance",
                    )
                    images[index].close()
                    continue
                }
                uploadRawTexture(images[index], curRaw, "frame $index")
                val exposureScale = frameExposureScales[index]
                buildProxy(curRaw, curProxy, "frame $index", exposureScale = exposureScale)
                buildPyramid(curPyramid)
                alignCurrentToReference(
                    reference = refPyramid,
                    current = curPyramid,
                    preAlignment = frames[index].preAlignmentToReference,
                    temporalGraphSeeds = temporalGraphSeeds,
                    frameIndex = index,
                )
                refineFlow()
                smoothFlow()
                computeRobustness()
                computeTileMask()
                val registrationAccepted = if (temporalGraphSeeds != null) {
                    applyTemporalGraphFrameQuality(temporalGraphSeeds, frameIndex = index)
                } else {
                    estimateCurrentRegistration(refPyramid, curPyramid, frameIndex = index)
                }
                if (!registrationAccepted) {
                    GlesGpuScheduler.yieldToUiRenderer()
                    continue
                }
                if (shouldAccumulateSuperResolutionFrame()) {
                    // Phase novelty is a ranking signal, not an admission gate. Temporal graph
                    // summaries may legitimately quantize the global phase to zero while the
                    // refined local flow still contains useful sub-pixel observations.
                    val continuousDetailWeight = max(
                        currentRegistrationSrDetailWeight,
                        currentRegistrationSrWeight * 0.35f,
                    )
                    recordSuperResolutionDetailFrame(continuousDetailWeight)
                    acceptedSuperResolutionFrames += cacheAcceptedSuperResolutionFrame(
                        frameIndex = index,
                        image = images[index],
                        exposureScale = exposureScale,
                        registrationWeight = currentRegistrationNrWeight,
                        detailWeight = continuousDetailWeight,
                    )
                    recordAccumulatedSuperResolutionPhase()
                }
                if (hwmfDebug.collectMetrics) {
                    recordAlignmentDiagnostics()
                }
                alignedFrameCount += 1
                GlesGpuScheduler.yieldToUiRenderer()
            }

            val longAlignmentStartMs = System.currentTimeMillis()
            val longAlignments = prepareRadianceLongAlignments(
                longFrames = activeRadianceLongFrames,
                frames = frames,
                acceptedFrames = acceptedSuperResolutionFrames,
                referencePyramid = refPyramid,
                currentPyramid = curPyramid,
            )
            val longAlignmentElapsedMs = System.currentTimeMillis() - longAlignmentStartMs
            // Highlight is prepared last because its composed flow currently occupies the shared
            // auxiliary-flow texture. Long flows have already been copied into dedicated caches.
            val highlightAlignmentStartMs = System.currentTimeMillis()
            val highlightAlignment = activeRadianceHighlightFrame?.let { highlight ->
                prepareRadianceHighlightAlignment(
                    highlight = highlight,
                    referencePyramid = refPyramid,
                    currentPyramid = curPyramid,
                )
            }
            val highlightAlignmentElapsedMs = System.currentTimeMillis() - highlightAlignmentStartMs
            RawStackRuntimeDebug.i(TAG) {
                "Radiance long/highlight alignment completed " +
                    "long=${longAlignmentElapsedMs}ms " +
                    "highlight=${highlightAlignmentElapsedMs}ms " +
                    "requestedLong=${activeRadianceLongFrames.size} " +
                    "acceptedLong=${longAlignments.size} " +
                    "highlightAccepted=${highlightAlignment != null}"
            }
            val superResolutionDecision = decideSuperResolutionOutput(alignedFrameCount)
            val reconstructionResult = reconstructRadianceTiles(
                referenceImage = images[0],
                frames = frames,
                acceptedFrames = acceptedSuperResolutionFrames,
                candidateFrameCount = (images.size - 1).coerceAtLeast(0) +
                    activeRadianceLongFrames.size,
                outputBuffer = outputBuffer,
                highlightAlignment = highlightAlignment,
                longAlignments = longAlignments,
            )
            GlesGpuScheduler.yieldToUiRenderer()
            val readTiming = reconstructionResult.readTiming
            exportedTextureId = reconstructionResult.exportedTextureId
            outputBuffer.rewind()
            val diagnostics = if (hwmfDebug.collectMetrics) {
                collectFinalDiagnostics(
                    frameCount = images.size,
                    alignedFrameCount = alignedFrameCount,
                    elapsedMs = System.currentTimeMillis() - startTime,
                    superResolutionDecision = superResolutionDecision,
                )
            } else {
                null
            }
            returned = true
            RawStackRuntimeDebug.i(TAG) {
                "GLES RAW stacking completed in ${System.currentTimeMillis() - startTime}ms " +
                    "readback=${readTiming.elapsedMs}ms glRead=${readTiming.glReadMs}ms " +
                    "copy=${readTiming.copyMs}ms alloc=${readTiming.allocMs}ms " +
                    "gpuHandoff=${exportedTextureId != 0} mode=${readTiming.mode}"
            }
            RawStackResult(
                fusedBayerBuffer = outputBuffer,
                width = outputWidth,
                height = outputHeight,
                isNormalizedSensorData = true,
                blackLevel = FloatArray(4),
                fusedBayerUsesNativeAllocator = true,
                diagnostics = diagnostics,
                bufferLayout = RawStackBufferLayout.LINEAR_RGB,
                inputRowStepSamples = outputWidth * 3,
                inputColStepSamples = 3,
                baselineExposureEv = highlightAlignment?.frame?.baselineExposureEv,
                gpuLinearRgbSource = exportedTextureId.takeIf { it != 0 }?.let { textureId ->
                    GpuLinearRgbSource(
                        textureId = textureId,
                        width = outputWidth,
                        height = outputHeight,
                    )
                },
            )
        } catch (e: Exception) {
            PLog.e(TAG, "GLES RAW stacking failed", e)
            null
        } finally {
            ownedImages.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            if (!returned) {
                LargeDirectBuffer.free(outputBuffer)
                if (exportedTextureId != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(exportedTextureId), 0)
                }
            }
        }
    }

    private fun initEgl() {
        ownsEglContext = true
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
            throw IllegalStateException("eglGetDisplay failed")
        }
        val version = IntArray(2)
        if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
            throw IllegalStateException("eglInitialize failed: ${EGL14.eglGetError()}")
        }
        val config = chooseConfig(EGL_OPENGL_ES3_BIT_KHR) ?: chooseConfig(EGL14.EGL_OPENGL_ES2_BIT)
            ?: throw IllegalStateException("No EGL config for GLES")
        eglContext = GlesGpuScheduler.createBackgroundContext(eglDisplay, config, TAG)
        if (eglContext == EGL14.EGL_NO_CONTEXT) {
            throw IllegalStateException("eglCreateContext failed: ${EGL14.eglGetError()}")
        }
        eglSurface = EGL14.eglCreatePbufferSurface(
            eglDisplay,
            config,
            intArrayOf(EGL14.EGL_WIDTH, 1, EGL14.EGL_HEIGHT, 1, EGL14.EGL_NONE),
            0,
        )
        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            throw IllegalStateException("eglCreatePbufferSurface failed: ${EGL14.eglGetError()}")
        }
        if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            throw IllegalStateException("eglMakeCurrent failed: ${EGL14.eglGetError()}")
        }
    }

    private fun attachCurrentEgl() {
        eglDisplay = EGL14.eglGetCurrentDisplay()
        eglContext = EGL14.eglGetCurrentContext()
        eglSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW)
        ownsEglContext = false
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) {
            "GLES RAW stack requires a current EGL display"
        }
        check(eglContext != EGL14.EGL_NO_CONTEXT) {
            "GLES RAW stack requires a current EGL context"
        }
        check(eglSurface != EGL14.EGL_NO_SURFACE) {
            "GLES RAW stack requires a current EGL draw surface"
        }
    }

    private fun chooseConfig(renderableType: Int): EGLConfig? {
        val attribs = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, renderableType,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        val configs = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        return if (EGL14.eglChooseConfig(eglDisplay, attribs, 0, configs, 0, configs.size, count, 0) &&
            count[0] > 0
        ) {
            configs[0]
        } else {
            null
        }
    }

    private fun ensureGles31() {
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        if (!version.contains("OpenGL ES 3.1") && !version.contains("OpenGL ES 3.2")) {
            throw IllegalStateException("GLES RAW stack requires OpenGL ES 3.1+, got: $version")
        }
    }

    private fun initPrograms() {
        val needsHighlightPrograms = activeRadianceHighlightFrame != null || prewarmHighlightPrograms
        val needsLongPrograms = activeRadianceLongFrames.isNotEmpty() || prewarmLongPrograms
        proxyProgram = linkComputeProgram(RAW_PROXY_COMPUTE_SHADER, "raw_proxy")
        trackingProxyProgram = linkComputeProgram(RAW_TRACKING_PROXY_COMPUTE_SHADER, "raw_tracking_proxy")
        downsampleProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, DOWNSAMPLE_FRAGMENT_SHADER, "raw_downsample")
        alignProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ALIGN_FRAGMENT_SHADER, "raw_align")
        flowReadbackProgram = linkComputeProgram(FLOW_READBACK_COMPUTE_SHADER, "raw_flow_readback")
        lkRefineProgram = linkComputeProgram(LK_REFINE_COMPUTE_SHADER, "raw_lk_refine")
        smoothFlowProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, SMOOTH_FLOW_FRAGMENT_SHADER, "raw_smooth_flow")
        structureProgram = linkComputeProgram(STRUCTURE_COMPUTE_SHADER, "raw_structure")
        robustnessProgram = linkComputeProgram(ROBUSTNESS_COMPUTE_SHADER, "raw_robustness")
        tileMaskProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            tileMaskFragmentShader(
                dualConfidence = true,
                trackRejectionReasons = visualizeRadianceFusionRejections,
            ),
            if (visualizeRadianceFusionRejections) {
                "raw_tile_mask_with_rejection_reasons"
            } else {
                "raw_tile_mask"
            },
        )
        registrationSampleProgram = linkComputeProgram(
            REGISTRATION_SAMPLE_COMPUTE_SHADER,
            "raw_registration_samples",
        )
        registrationGlobalAlignProgram = linkComputeProgram(
            REGISTRATION_GLOBAL_ALIGN_COMPUTE_SHADER,
            "raw_registration_global_align",
        )
        copyScalarProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            COPY_SCALAR_FRAGMENT_SHADER,
            "raw_copy_scalar",
        )
        copyRgbaProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            COPY_RGBA_FRAGMENT_SHADER,
            "raw_copy_rgba",
        )
        clearSuperResolutionAccumulatorProgram = linkComputeProgram(
            GlesRawRadianceFusionShaders.clearAccumulator(
                trackRejections = visualizeRadianceFusionRejections,
                trackLongParticipation = visualizeRadianceLongParticipation,
            ),
            if (visualizeRadianceFusionRejections) {
                "raw_radiance_clear_r32ui_rgba16f_writeonly"
            } else {
                "raw_radiance_clear_r32ui_writeonly"
            },
        )
        accumulateSuperResolutionProgram = linkComputeProgram(
            GlesRawRadianceFusionShaders.accumulate(
                RAW_COMMON,
                trackRejections = visualizeRadianceFusionRejections,
                trackParticipation = logRadianceFusionParticipation,
                trackLongParticipation = visualizeRadianceLongParticipation,
            ),
            if (visualizeRadianceFusionRejections) {
                "raw_radiance_accumulate_r32ui_read_write_rgba16f_ping_pong_writeonly"
            } else {
                "raw_radiance_accumulate_r32ui_read_write"
            },
        )
        radianceReferenceBaseProgram = linkComputeProgram(
            GlesRawRadianceFusionShaders.captureReferenceBase,
            "raw_radiance_reference_base_rgba16f_writeonly",
        )
        normalizeSuperResolutionProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesRawRadianceFusionShaders.normalize(
                showRejections = visualizeRadianceFusionRejections,
                showSrDetail = visualizeRadianceSrDetail,
                showLongParticipation = visualizeRadianceLongParticipation,
            ),
            "raw_radiance_normalize_r32ui_usampler",
        )
        if (needsHighlightPrograms) {
            radianceHighlightNormalizeProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesRawRadianceFusionShaders.normalize(
                    showRejections = visualizeRadianceFusionRejections,
                    showSrDetail = visualizeRadianceSrDetail,
                    reconstructHighlights = true,
                    showHighlightReconstruction = visualizeRadianceHighlightReconstruction,
                    showLongParticipation = visualizeRadianceLongParticipation,
                ),
                "raw_radiance_highlight_normalize_r32ui_usampler",
            )
        }
        if (needsHighlightPrograms || needsLongPrograms) {
            radianceHighlightValidateFlowProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesRawRadianceFusionShaders.validateHighlightFlow,
                "raw_radiance_highlight_validate_flow",
            )
            radianceHighlightPropagateFlowProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesRawRadianceFusionShaders.propagateHighlightFlow,
                "raw_radiance_highlight_propagate_flow",
            )
            radianceHighlightComposeFlowProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesRawRadianceFusionShaders.composeHighlightFlow,
                "raw_radiance_highlight_compose_flow",
            )
            if (needsHighlightPrograms) {
                radianceHighlightSupportProgram = linkGraphicsProgram(
                    FULLSCREEN_VERTEX_SHADER,
                    GlesRadianceHighlightShaders.buildSupport,
                    "raw_radiance_highlight_support",
                )
                radianceHighlightInferFlowProgram = linkGraphicsProgram(
                    FULLSCREEN_VERTEX_SHADER,
                    GlesRadianceHighlightShaders.inferFlowFromCollar,
                    "raw_radiance_highlight_infer_flow",
                )
                radianceHighlightRejectionSeedProgram = linkGraphicsProgram(
                    FULLSCREEN_VERTEX_SHADER,
                    GlesRadianceHighlightShaders.buildHoleRejectionSeed,
                    "raw_radiance_highlight_rejection_seed",
                )
                radianceHighlightRejectionPropagateProgram = linkGraphicsProgram(
                    FULLSCREEN_VERTEX_SHADER,
                    GlesRadianceHighlightShaders.propagateHoleRejection,
                    "raw_radiance_highlight_rejection_propagate",
                )
                radianceHighlightApplyHoleDecisionProgram = linkGraphicsProgram(
                    FULLSCREEN_VERTEX_SHADER,
                    GlesRadianceHighlightShaders.applyHoleDecision,
                    "raw_radiance_highlight_apply_hole_decision",
                )
            }
        }
        if (needsLongPrograms) {
            radianceLongEligibilityProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesRawRadianceFusionShaders.longEligibility,
                "raw_radiance_long_eligibility",
            )
            radianceLongObservabilityDiagnosticProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                RAW_LONG_OBSERVABILITY_DIAGNOSTIC_FRAGMENT_SHADER,
                "raw_radiance_long_observability_diagnostic",
            )
        }
        if (radianceUsesVgnSemanticBackend) {
            initRadianceReconstructionPrograms()
            if (radianceVgnChromaPostprocessEnabled) {
                radianceVgnChromaPostprocessor = createRadianceVgnChromaPostprocessor().also {
                    it.initPrograms()
                }
            }
        } else {
            // VGN is defined only for the four standard 2x2 Bayer layouts. Preserve Quad/Nona
            // support through the phase-aware region RCD backend.
            initRcdRegionPrograms("raw_radiance_fallback")
            initRcdStoreRgbProgram()
        }
        initDiagnosticPrograms()
    }

    private fun initRcdRegionPrograms(labelPrefix: String) {
        if (rcdRegionPopulateProgram != 0) return
        rcdRegionPopulateProgram = linkComputeProgram(
            RcdShaders.regionPopulate(RAW_COMMON),
            "${labelPrefix}_rcd_populate",
        )
        rcdRegionStep1Program = linkComputeProgram(RcdShaders.STEP_1, "${labelPrefix}_rcd_step1")
        rcdRegionStep2Program = linkComputeProgram(RcdShaders.STEP_2, "${labelPrefix}_rcd_step2")
        rcdRegionStep3Program = linkComputeProgram(RcdShaders.STEP_3, "${labelPrefix}_rcd_step3")
        rcdRegionStep40Program = linkComputeProgram(RcdShaders.STEP_4_0, "${labelPrefix}_rcd_step40")
        rcdRegionStep41Program = linkComputeProgram(RcdShaders.STEP_4_1, "${labelPrefix}_rcd_step41")
        rcdRegionStep42Program = linkComputeProgram(RcdShaders.STEP_4_2, "${labelPrefix}_rcd_step42")
        rcdRegionStep43Program = linkComputeProgram(RcdShaders.STEP_4_3, "${labelPrefix}_rcd_step43")
        rcdRegionBorderPpgProgram = linkComputeProgram(
            RcdShaders.REGION_BORDER_PPG,
            "${labelPrefix}_rcd_border_ppg",
        )
    }
    private fun initRcdStoreRgbProgram() {
        if (rcdStoreRgbProgram != 0) return
        rcdStoreRgbProgram = linkComputeProgram(
            GlesRawRcdShaders.workingRgbStore,
            "raw_rcd_store_rgb",
        )
    }

    private fun initRadianceReconstructionPrograms() {
        check(radianceUsesVgnSemanticBackend)
        if (radianceVgnPrograms[0] != 0) return
        radianceVgnPrograms[VgnShaders.PROGRAM_PREPARE] = linkComputeProgram(
            GlesRadianceReconstructionShaders.vgnPrepareRegion,
            "raw_radiance_vgn_prepare_region",
        )
        for (index in VgnShaders.PROGRAM_NEUTRAL..VgnShaders.PROGRAM_3) {
            val (name, source) = VgnShaders.PROGRAM_SOURCES[index]
            radianceVgnPrograms[index] = linkComputeProgram(
                source,
                "raw_radiance_vgn_$name",
            )
        }
        radianceVgnFinalProgram = linkComputeProgram(
            GlesRadianceReconstructionShaders.vgnYccdToCameraRgb,
            "raw_radiance_vgn_yccd_to_camera_rgb",
        )
        radianceSemanticSeedProgram = linkComputeProgram(
            GlesRadianceReconstructionShaders.semanticSeed,
            "raw_radiance_semantic_seed",
        )
        radianceSemanticResolveProgram = linkComputeProgram(
            GlesRadianceReconstructionShaders.semanticResolve,
            "raw_radiance_semantic_resolve",
        )
    }

    private fun createRadianceVgnChromaPostprocessor(): GlesRadianceVgnChromaPostprocessor {
        return GlesRadianceVgnChromaPostprocessor(
            imageWidth = outputWidth,
            imageHeight = outputHeight,
            tiles = radianceTiles,
            calculationWbGains = demosaicCalculationWbGains,
            outputScale = superResolutionScale,
            exportFullSizeTexture = exportGpuLinearRgbSource,
            backend = object : GlesRadianceVgnChromaPostprocessor.Backend {
                override fun linkComputeProgram(source: String, name: String): Int =
                    this@GlesRawRadianceStacker.linkComputeProgram(source, name)

                override fun uniformLocation(program: Int, name: String): Int =
                    this@GlesRawRadianceStacker.uniformLocation(program, name)

                override fun checkGlError(label: String) {
                    this@GlesRawRadianceStacker.checkGlError(label)
                }

                override fun yieldToUiRenderer() {
                    GlesGpuScheduler.yieldToUiRenderer()
                }
            },
        )
    }

    private fun validateGpuResourceLimits() {
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        val maxSize = maxTextureSize[0].coerceAtLeast(1)
        val requiredTextureWidth = maxOf(width, radianceOutputTileWidth, superResolutionAccumulatorWidth)
        val requiredTextureHeight = maxOf(height, radianceOutputTileHeight, superResolutionAccumulatorHeight)
        if (requiredTextureWidth > maxSize || requiredTextureHeight > maxSize) {
            throw IllegalStateException(
                "Radiance texture ${requiredTextureWidth}x$requiredTextureHeight " +
                    "exceeds GL_MAX_TEXTURE_SIZE=$maxSize",
            )
        }

        val maxSsboBindings = IntArray(1)
        GLES30.glGetIntegerv(
            GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS,
            maxSsboBindings,
            0,
        )
        val requiredSsboBindings = if (radianceUsesVgnSemanticBackend) {
            TRANSIENT_SSBO_BINDING_COUNT
        } else {
            RCD_SSBO_BINDING_COUNT
        }
        if (maxSsboBindings[0] < requiredSsboBindings) {
            throw IllegalStateException(
                "Radiance backend requires $requiredSsboBindings shader storage buffer " +
                    "bindings, got GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS=${maxSsboBindings[0]}",
            )
        }
        if (RawStackRuntimeDebug.enabled) {
            val accumulatorBytesPerPixel = 4L * 4L + 8L +
                (if (visualizeRadianceFusionRejections) 16L else 0L) +
                (if (visualizeRadianceLongParticipation) 4L else 0L)
            val accumulatorBytes = superResolutionAccumulatorWidth.toLong() *
                superResolutionAccumulatorHeight.toLong() *
                accumulatorBytesPerPixel
            val outputBytes = outputWidth.toLong() * outputHeight.toLong() * 6L
            RawStackRuntimeDebug.d(TAG) {
                "Radiance resources out=${outputWidth}x$outputHeight maxTex=$maxSize " +
                    "maxSsboBindings=${maxSsboBindings[0]} requiredSsboBindings=$requiredSsboBindings " +
                    "srAccumulatorWindow=${superResolutionAccumulatorWidth}x" +
                    "$superResolutionAccumulatorHeight/${accumulatorBytes.mibString()} " +
                    "output=${outputBytes.mibString()}"
            }
        }
    }

    private fun initDiagnosticPrograms() {
        if (!hwmfDebug.collectMetrics || diagnosticsFailed) return
        try {
            diagnosticAlignmentProgram = linkComputeProgram(
                DIAGNOSTIC_ALIGNMENT_COMPUTE_SHADER,
                "raw_stack_diagnostic_alignment",
            )
        } catch (e: Exception) {
            diagnosticsFailed = true
            diagnosticAlignmentProgram = 0
            PLog.w(TAG, "RAW stack diagnostics disabled after shader setup failure", e)
        }
    }

    private fun initResources() {
        gridWidth = (planeWidth + flowGridSpacing - 1) / flowGridSpacing
        gridHeight = (planeHeight + flowGridSpacing - 1) / flowGridSpacing

        refRaw = createTexture2D(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
        curRaw = createTexture2D(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
        refProxy = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        curProxy = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        flowTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        flowScratchTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        if (activeRadianceHighlightFrame != null || activeRadianceLongFrames.isNotEmpty()) {
            radianceHighlightReverseFlowTexture = createTexture2D(
                gridWidth,
                gridHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            radianceHighlightAnchorFlowTexture = createTexture2D(
                gridWidth,
                gridHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            radianceHighlightComposedFlowTexture = createTexture2D(
                gridWidth,
                gridHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            if (activeRadianceHighlightFrame != null) {
                radianceHighlightSupportTexture = createTexture2D(
                    gridWidth,
                    gridHeight,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_LINEAR,
                )
            }
        }
        kernelTexture = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        robustnessTexture = createTexture2D(planeWidth, planeHeight, GLES30.GL_R32F, GLES30.GL_NEAREST)
        tileMaskTexture = createTexture2D(
            gridWidth,
            gridHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        superResolutionAccumulatorTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        superResolutionAccumulatorBwTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        superResolutionAccumulatorBTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        radianceNrWeightRgTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        radianceDetailBwTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        radianceReferenceBaseTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        radianceDetailWeightRgTexture = createTexture2D(
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        if (visualizeRadianceFusionRejections) {
            radianceFusionRejectionTexture = createTexture2D(
                superResolutionAccumulatorWidth,
                superResolutionAccumulatorHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            radianceFusionRejectionScratchTexture = createTexture2D(
                superResolutionAccumulatorWidth,
                superResolutionAccumulatorHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
        }
        if (visualizeRadianceLongParticipation) {
            radianceLongParticipationTexture = createTexture2D(
                superResolutionAccumulatorWidth,
                superResolutionAccumulatorHeight,
                GLES30.GL_R32UI,
                GLES30.GL_NEAREST,
            )
        }
        outputTexture = createTexture2D(
            radianceOutputTileWidth,
            radianceOutputTileHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        lensShadingTexture = createLensShadingTexture()
        renderFbo = createFramebuffer()
        readbackFbo = createFramebuffer()
        radianceVgnChromaPostprocessor?.initStorage()
        initDiagnosticResources()
    }

    private fun initDiagnosticResources() {
        if (!hwmfDebug.collectMetrics ||
            diagnosticsFailed ||
            diagnosticAlignmentProgram == 0
        ) {
            return
        }
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        diagnosticBuffer = ids[0]
        if (diagnosticBuffer == 0) {
            diagnosticsFailed = true
            PLog.w(TAG, "RAW stack diagnostics disabled: failed to allocate stats buffer")
            return
        }
        buffers += diagnosticBuffer
        val zero = ByteBuffer
            .allocateDirect(DIAGNOSTIC_UINT_COUNT * 4)
            .order(ByteOrder.nativeOrder())
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, diagnosticBuffer)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            DIAGNOSTIC_UINT_COUNT * 4,
            zero,
            GLES31.GL_DYNAMIC_READ,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        checkGlError("initDiagnosticResources")
    }

    private fun createPyramid(baseTexture: Int): List<TextureLevel> {
        val levels = ArrayList<TextureLevel>(pyramidLevels)
        levels += TextureLevel(baseTexture, planeWidth, planeHeight)
        var levelWidth = planeWidth
        var levelHeight = planeHeight
        repeat(pyramidLevels - 1) {
            levelWidth = max(1, (levelWidth + 1) / 2)
            levelHeight = max(1, (levelHeight + 1) / 2)
            levels += TextureLevel(
                createTexture2D(levelWidth, levelHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR),
                levelWidth,
                levelHeight,
            )
        }
        return levels
    }

    private fun uploadRawTexture(image: SafeImage, texture: Int, label: String) {
        uploadRawTextureRows(image, texture, firstRow = 0, rowCount = height, label = label)
    }

    private fun uploadRawTextureRows(
        image: SafeImage,
        texture: Int,
        firstRow: Int,
        rowCount: Int,
        label: String,
    ) {
        val plane = image.planes.firstOrNull() ?: throw IllegalArgumentException("$label has no RAW plane")
        require(plane.pixelStride == 2) {
            "$label RAW pixel stride ${plane.pixelStride} is not 16-bit unpackable"
        }
        require(plane.rowStride >= width * 2) {
            "$label RAW row stride ${plane.rowStride} is smaller than width $width"
        }
        require(plane.rowStride % 2 == 0) {
            "$label RAW row stride must be 16-bit aligned: ${plane.rowStride}"
        }
        require(firstRow in 0 until height && rowCount > 0 && firstRow + rowCount <= height) {
            "$label RAW row band $firstRow+${rowCount} exceeds height $height"
        }
        val byteOffset = firstRow * plane.rowStride
        val uploadBuffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder()).apply { position(byteOffset) }
        uploadRawBufferRows(
            uploadBuffer = uploadBuffer,
            texture = texture,
            rowStridePixels = plane.rowStride / RAW_BYTES_PER_PIXEL,
            firstRow = firstRow,
            rowCount = rowCount,
            label = label,
        )
    }

    private fun uploadRawBufferRows(
        uploadBuffer: ByteBuffer,
        texture: Int,
        rowStridePixels: Int,
        firstRow: Int,
        rowCount: Int,
        label: String,
    ) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowStridePixels)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            firstRow,
            width,
            rowCount,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            uploadBuffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("uploadRawTexture $label")
    }

    private fun ensureRawRegionTexture(capacityWidth: Int, capacityHeight: Int) {
        val requestedWidth = capacityWidth.coerceIn(1, width)
        val requestedHeight = capacityHeight.coerceIn(1, height)
        if (rcdRawRegionTexture != 0) {
            require(
                requestedWidth <= rcdRegionCapacityWidth &&
                    requestedHeight <= rcdRegionCapacityHeight,
            ) {
                "RCD region capacity ${rcdRegionCapacityWidth}x$rcdRegionCapacityHeight is " +
                    "smaller than required ${requestedWidth}x$requestedHeight"
            }
            return
        }
        rcdRegionCapacityWidth = requestedWidth
        rcdRegionCapacityHeight = requestedHeight
        rcdRawRegionTexture = createTexture2D(
            rcdRegionCapacityWidth,
            rcdRegionCapacityHeight,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
    }

    private fun ensureRcdRegionResources(capacityWidth: Int, capacityHeight: Int) {
        ensureRawRegionTexture(capacityWidth, capacityHeight)
        if (rcdRegionBuffers[0] != 0) return
        GLES31.glGenBuffers(rcdRegionBuffers.size, rcdRegionBuffers, 0)
        val byteCount = rcdRegionCapacityWidth.toLong() * rcdRegionCapacityHeight.toLong() * 4L
        require(byteCount <= Int.MAX_VALUE) { "RCD region buffer exceeds GLES allocation range: $byteCount" }
        rcdRegionBuffers.forEach { buffer ->
            require(buffer != 0) { "Failed to allocate RCD region SSBO" }
            buffers += buffer
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                byteCount.toInt(),
                null,
                GLES31.GL_DYNAMIC_DRAW,
            )
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        RawStackRuntimeDebug.i(TAG) {
            "RCD region=${rcdRegionCapacityWidth}x$rcdRegionCapacityHeight " +
                "ssbo=${(byteCount * 9L).mibString()}"
        }
    }

    private fun ensureRadianceTileResources(capacityWidth: Int, capacityHeight: Int) {
        if (!radianceUsesVgnSemanticBackend) {
            ensureRcdRegionResources(capacityWidth, capacityHeight)
            if (radianceRgbTileTexture == 0) {
                radianceRgbTileTexture = createTexture2D(
                    rcdRegionCapacityWidth,
                    rcdRegionCapacityHeight,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_LINEAR,
                )
            }
            return
        }
        ensureRawRegionTexture(capacityWidth, capacityHeight)
        if (radianceRgbTileTexture != 0) return
        radianceRgbTileTexture = createTexture2D(
            rcdRegionCapacityWidth,
            rcdRegionCapacityHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        radianceSemanticSeedTexture = createTexture2D(
            rcdRegionCapacityWidth,
            rcdRegionCapacityHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        val geometry = RadianceVgnGeometry.forRegion(
            rcdRegionCapacityWidth,
            rcdRegionCapacityHeight,
            cfaPattern,
        )
        radianceVgnCapacityGeometry = geometry
        radianceVgnPackedFloatTexture = createTexture2D(
            geometry.packedWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        radianceVgnPackedBayerTexture = createTexture2D(
            geometry.packedWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        radianceVgnPackedSmoothTexture = createTexture2D(
            geometry.packedWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        radianceVgnScaleTexture = createTexture2D(
            geometry.workWidth,
            geometry.halfHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        radianceVgnMedianTexture = createTexture2D(
            geometry.packedWidth,
            geometry.halfHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        radianceVgnEdgeTexture = createTexture2D(
            geometry.packedWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16I,
            GLES30.GL_NEAREST,
        )
        radianceVgnFull0Texture = createTexture2D(
            geometry.workWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        radianceVgnFull1Texture = createTexture2D(
            geometry.workWidth,
            geometry.workHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        check(ids[0] != 0) { "Failed to allocate Radiance VGN UBO" }
        radianceVgnUbo = ids[0]
        buffers += radianceVgnUbo
        RawStackRuntimeDebug.i(TAG) {
            "Radiance reconstruction=VGN-reference/semantic-nonreference " +
                "region=${rcdRegionCapacityWidth}x$rcdRegionCapacityHeight " +
                "vgnWork=${geometry.workWidth}x${geometry.workHeight} " +
                "perFrameColorDenoise=false postFusionChromaIir=" +
                radianceVgnChromaPostprocessEnabled
        }
    }

    private fun uploadRcdRawRegion(image: SafeImage, region: RadianceTileRect, label: String) {
        require(
            rcdRawRegionTexture != 0 &&
                region.width <= rcdRegionCapacityWidth &&
                region.height <= rcdRegionCapacityHeight,
        )
        val plane = image.planes.firstOrNull() ?: throw IllegalArgumentException("$label has no RAW plane")
        require(plane.pixelStride == 2 && plane.rowStride >= width * 2 && plane.rowStride % 2 == 0)
        require(region.right <= width && region.bottom <= height)
        val uploadBuffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder()).apply {
            position(region.top * plane.rowStride + region.left * plane.pixelStride)
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rcdRawRegionTexture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, plane.rowStride / 2)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            region.width,
            region.height,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            uploadBuffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("uploadRcdRawRegion $label")
    }

    private fun bindRcdRegionBuffers() {
        for (index in 0..7) {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, index, rcdRegionBuffers[index])
        }
    }

    private fun runRcdRegion(
        region: RadianceTileRect,
        label: String,
        reconstructHighlights: Boolean = true,
    ) {
        require(region.left % rawCfaPeriod == 0 && region.top % rawCfaPeriod == 0) {
            "RCD region must preserve CFA phase: $region period=$rawCfaPeriod"
        }
        bindRcdRegionBuffers()
        GLES31.glUseProgram(rcdRegionPopulateProgram)
        bindTexture(rcdRegionPopulateProgram, "uRawRegion", 0, rcdRawRegionTexture)
        bindTexture(rcdRegionPopulateProgram, "uLensShadingMap", 1, lensShadingTexture)
        GLES31.glUniform2i(
            uniformLocation(rcdRegionPopulateProgram, "uRegionSize"),
            region.width,
            region.height,
        )
        GLES31.glUniform2i(uniformLocation(rcdRegionPopulateProgram, "uFullImageSize"), width, height)
        GLES31.glUniform2i(
            uniformLocation(rcdRegionPopulateProgram, "uGlobalOrigin"),
            region.left,
            region.top,
        )
        GLES31.glUniform1i(uniformLocation(rcdRegionPopulateProgram, "uCfaPattern"), cfaPattern)
        GLES31.glUniform4fv(
            uniformLocation(rcdRegionPopulateProgram, "uBlackLevel"),
            1,
            normalizedBlackLevel,
            0,
        )
        GLES31.glUniform1f(
            uniformLocation(rcdRegionPopulateProgram, "uWhiteLevel"),
            normalizedWhiteLevel,
        )
        GLES31.glUniform1i(
            uniformLocation(rcdRegionPopulateProgram, "uReconstructHighlights"),
            if (reconstructHighlights) 1 else 0,
        )
        GLES31.glUniform4fv(
            uniformLocation(rcdRegionPopulateProgram, "uCalculationWbGains"),
            1,
            demosaicCalculationWbGains,
            0,
        )
        GLES31.glDispatchCompute(groupCount(region.width), groupCount(region.height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        completeRcdRegionWithPpgBorder(region, label)
    }

    /**
     * Completes one shared demosaic operation. RCD owns the reliable interior and PPG owns the
     * physical photo border; callers cannot dispatch one without the other.
     */
    private fun completeRcdRegionWithPpgBorder(region: RadianceTileRect, label: String) {
        require(region.left % rawCfaPeriod == 0 && region.top % rawCfaPeriod == 0)
        check(rcdRegionBorderPpgProgram != 0) { "RCD region PPG border program is not initialized" }
        bindRcdRegionBuffers()

        fun dispatch(program: Int, halfWidth: Boolean, step: String) {
            GLES31.glUseProgram(program)
            GLES31.glUniform2i(uniformLocation(program, "uImageSize"), region.width, region.height)
            val cfaLocation = uniformLocation(program, "uCfaPattern")
            if (cfaLocation >= 0) GLES31.glUniform1i(cfaLocation, cfaPattern)
            GLES31.glDispatchCompute(
                groupCount(if (halfWidth) (region.width + 1) / 2 else region.width),
                groupCount(region.height),
                1,
            )
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD region $step $label")
        }

        dispatch(rcdRegionStep1Program, false, "step1")
        dispatch(rcdRegionStep2Program, true, "step2")
        dispatch(rcdRegionStep3Program, true, "step3")
        dispatch(rcdRegionStep40Program, true, "step40")
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 5, rcdRegionBuffers[8])
        dispatch(rcdRegionStep41Program, true, "step41")
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 4, rcdRegionBuffers[8])
        dispatch(rcdRegionStep42Program, true, "step42")
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 4, rcdRegionBuffers[4])
        dispatch(rcdRegionStep43Program, true, "step43")

        GLES31.glUseProgram(rcdRegionBorderPpgProgram)
        GLES31.glUniform2i(
            uniformLocation(rcdRegionBorderPpgProgram, "uRegionSize"),
            region.width,
            region.height,
        )
        GLES31.glUniform2i(
            uniformLocation(rcdRegionBorderPpgProgram, "uFullImageSize"),
            width,
            height,
        )
        GLES31.glUniform2i(
            uniformLocation(rcdRegionBorderPpgProgram, "uGlobalOrigin"),
            region.left,
            region.top,
        )
        GLES31.glUniform1i(
            uniformLocation(rcdRegionBorderPpgProgram, "uCfaPattern"),
            cfaPattern,
        )
        GLES31.glDispatchCompute(groupCount(region.width), groupCount(region.height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("RCD region border PPG $label")
    }

    private fun validExposureProduct(exposureProduct: Double): Double {
        return exposureProduct.takeIf { it.isFinite() && it > 0.0 } ?: 1.0
    }

    private fun relativeExposureScale(referenceExposureProduct: Double, frameExposureProduct: Double): Float {
        return (referenceExposureProduct / frameExposureProduct)
            .toFloat()
            .coerceIn(0.0001f, 64.0f)
    }

    private fun buildProxy(
        rawTexture: Int,
        proxyTexture: Int,
        label: String,
        exposureScale: Float = 1.0f,
        noiseModel: RawNoiseModel = rawNoiseModel,
        useRegionalObservability: Boolean = false,
    ) {
        GLES31.glUseProgram(proxyProgram)
        bindTexture(proxyProgram, "uRaw", 0, rawTexture)
        bindImage(1, proxyTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        setCommonUniforms(proxyProgram)
        GLES31.glUniform1fv(
            uniformLocation(proxyProgram, "uNoiseAlphaByChannel[0]"),
            4,
            noiseModel.normalizedShotNoiseForShader(cfaPattern),
            0,
        )
        GLES31.glUniform1fv(
            uniformLocation(proxyProgram, "uNoiseBetaByChannel[0]"),
            4,
            noiseModel.normalizedReadNoiseForShader(cfaPattern),
            0,
        )
        GLES31.glUniform2i(GLES31.glGetUniformLocation(proxyProgram, "uProxySize"), planeWidth, planeHeight)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(proxyProgram, "uExposureScale"), exposureScale)
        GLES31.glUniform1i(
            uniformLocation(proxyProgram, "uUseRegionalObservability"),
            if (useRegionalObservability) 1 else 0,
        )
        GLES31.glUniform1f(
            uniformLocation(proxyProgram, "uRegionalStructureSnrStart"),
            radianceFusionTuning.longRegionalStructureSnrStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(proxyProgram, "uRegionalStructureSnrFull"),
            radianceFusionTuning.longRegionalStructureSnrFull.coerceAtLeast(
                radianceFusionTuning.longRegionalStructureSnrStart + 1e-3f,
            ),
        )
        GLES31.glDispatchCompute(groupCount(planeWidth), groupCount(planeHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("buildProxy $label")
    }

    private fun buildPyramid(levels: List<TextureLevel>) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(downsampleProgram)
        for (index in 1 until levels.size) {
            val input = levels[index - 1]
            val output = levels[index]
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                output.texture,
                0,
            )
            // buildPyramid bypasses bindFramebufferOutput, so it must keep the attachment cache
            // coherent. Otherwise the next pass may skip reattaching its requested texture and
            // render into the last pyramid level while reading stale diagnostics.
            renderFboTargetTexture = output.texture
            GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
            checkFramebuffer("buildPyramid level $index")
            GLES30.glViewport(0, 0, output.width, output.height)
            bindTexture(downsampleProgram, "uInput", 0, input.texture)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(downsampleProgram, "uInputSize"), input.width, input.height)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            checkGlError("buildPyramid level $index")
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun buildTrackingProxy(
        rawTexture: Int,
        outputTexture: Int,
        outputWidth: Int,
        outputHeight: Int,
        levelScale: Int,
        exposureScale: Float,
        label: String,
    ) {
        GLES31.glUseProgram(trackingProxyProgram)
        bindTexture(trackingProxyProgram, "uRaw", 0, rawTexture)
        bindImage(1, outputTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        setCommonUniforms(trackingProxyProgram)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(trackingProxyProgram, "uPlaneSize"),
            planeWidth,
            planeHeight,
        )
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(trackingProxyProgram, "uTrackingSize"),
            outputWidth,
            outputHeight,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(trackingProxyProgram, "uLevelScale"),
            levelScale,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(trackingProxyProgram, "uExposureScale"),
            exposureScale,
        )
        GLES31.glDispatchCompute(groupCount(outputWidth), groupCount(outputHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("buildTrackingProxy $label")
    }

    private fun createRadianceLongTrackingSeedResources(): RadianceLongTrackingSeedResources {
        val trackingScale = temporalTrackingLevelScale(2)
        val trackingWidth = scaledTrackingDimension(planeWidth, trackingScale)
        val trackingHeight = scaledTrackingDimension(planeHeight, trackingScale)
        val configuredSpacing = max(
            hwmfPrefilter.temporalGraphTileSpacing,
            flowGridSpacing * MIN_TEMPORAL_GRAPH_SPACING_MULTIPLIER,
        )
        val budgetSpacing = kotlin.math.ceil(
            kotlin.math.sqrt(
                planeWidth.toDouble() * planeHeight.toDouble() / MAX_TEMPORAL_GRAPH_TILES,
            ),
        ).toInt()
        val seedTileSpacing = roundUpToMultiple(
            max(configuredSpacing, budgetSpacing),
            flowGridSpacing,
        )
        val seedGridWidth = (planeWidth + seedTileSpacing - 1) / seedTileSpacing
        val seedGridHeight = (planeHeight + seedTileSpacing - 1) / seedTileSpacing
        return RadianceLongTrackingSeedResources(
            anchorTrackingTexture = createTexture2D(
                trackingWidth,
                trackingHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            ),
            longTrackingTexture = createTexture2D(
                trackingWidth,
                trackingHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            ),
            forwardSeedTexture = createTexture2D(
                seedGridWidth,
                seedGridHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            ),
            reverseSeedTexture = createTexture2D(
                seedGridWidth,
                seedGridHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            ),
            trackingWidth = trackingWidth,
            trackingHeight = trackingHeight,
            trackingScale = trackingScale,
            seedGridWidth = seedGridWidth,
            seedGridHeight = seedGridHeight,
            seedTileSpacing = seedTileSpacing,
        )
    }

    private fun buildRadianceLongTrackingSeeds(
        frameIndex: Int,
        anchor: RawStackFrame,
        longFrame: RawStackFrame,
        resources: RadianceLongTrackingSeedResources,
    ) {
        val trackingLevel = TextureLevel(
            resources.anchorTrackingTexture,
            resources.trackingWidth,
            resources.trackingHeight,
        )
        val longTrackingLevel = TextureLevel(
            resources.longTrackingTexture,
            resources.trackingWidth,
            resources.trackingHeight,
        )
        val trackingWindow = max(
            hwmfPrefilter.alignWindowSize,
            resources.trackingScale * MIN_TEMPORAL_WINDOW_LEVEL_PIXELS,
        )
        drawAlignment(
            reference = trackingLevel,
            current = longTrackingLevel,
            levelScale = resources.trackingScale,
            outputTexture = resources.forwardSeedTexture,
            outputGridWidth = resources.seedGridWidth,
            outputGridHeight = resources.seedGridHeight,
            outputTileSpacing = resources.seedTileSpacing,
            preAlignment = relativePreAlignment(anchor, longFrame),
            alignWindowSize = trackingWindow,
            label = "Radiance long tracking anchor-to-source $frameIndex",
        )
        drawAlignment(
            reference = longTrackingLevel,
            current = trackingLevel,
            levelScale = resources.trackingScale,
            outputTexture = resources.reverseSeedTexture,
            outputGridWidth = resources.seedGridWidth,
            outputGridHeight = resources.seedGridHeight,
            outputTileSpacing = resources.seedTileSpacing,
            preAlignment = relativePreAlignment(longFrame, anchor),
            alignWindowSize = trackingWindow,
            label = "Radiance long tracking source-to-anchor $frameIndex",
        )
        if (hwmfDebug.collectMetrics) {
            val (forward, reverse) = readFlowTextures(
                textures = listOf(resources.forwardSeedTexture, resources.reverseSeedTexture),
                textureWidth = resources.seedGridWidth,
                textureHeight = resources.seedGridHeight,
                label = "Radiance long tracking seeds $frameIndex",
            )
            val confidenceThreshold = hwmfPrefilter.temporalGraphMinimumSeedConfidence
                .coerceIn(0f, 1f)
            fun supported(values: FloatArray): Int {
                var count = 0
                var offset = 3
                while (offset < values.size) {
                    if (values[offset].isFinite() && values[offset] >= confidenceThreshold) count++
                    offset += 4
                }
                return count
            }
            PLog.i(
                TAG,
                "Radiance long tracking seed frame=$frameIndex " +
                    "scale=${resources.trackingScale} grid=${resources.seedGridWidth}x" +
                    "${resources.seedGridHeight} supported=${supported(forward)}/" +
                    "${supported(reverse)} requiredConfidence=$confidenceThreshold",
            )
        }
    }

    private fun releaseRadianceLongTrackingSeedResources(
        resources: RadianceLongTrackingSeedResources,
    ) {
        deleteTexture(resources.anchorTrackingTexture)
        deleteTexture(resources.longTrackingTexture)
        deleteTexture(resources.forwardSeedTexture)
        deleteTexture(resources.reverseSeedTexture)
    }

    private fun buildTemporalGraphSeeds(
        frames: List<RawStackFrame>,
        images: List<SafeImage>,
        frameExposureScales: List<Float>,
        referenceTrackingTexture: Int,
    ): TemporalGraphSeedResources? {
        if (frames.size < MIN_TEMPORAL_GRAPH_FRAME_COUNT || images.size != frames.size) return null
        val eligibleFrameIndices = frames.indices.filter { frameIndex ->
            frameIndex == 0 || isFocusCompatibleWithReference(frames[0], frames[frameIndex])
        }
        if (eligibleFrameIndices.size < MIN_TEMPORAL_GRAPH_FRAME_COUNT) {
            deleteTexture(referenceTrackingTexture)
            return null
        }
        val eligibleFrames = eligibleFrameIndices.map(frames::get)
        val trackingScale = temporalTrackingLevelScale(frames.size)
        val trackingWidth = scaledTrackingDimension(planeWidth, trackingScale)
        val trackingHeight = scaledTrackingDimension(planeHeight, trackingScale)
        val trackingTextures = IntArray(frames.size)
        trackingTextures[0] = referenceTrackingTexture
        val edgeOutputTextures = ArrayList<Int>()
        try {
            eligibleFrameIndices.drop(1).forEach { index ->
                val texture = createTexture2D(
                    trackingWidth,
                    trackingHeight,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_LINEAR,
                )
                trackingTextures[index] = texture
                uploadRawTexture(images[index], curRaw, "temporal tracking frame $index")
                buildTrackingProxy(
                    rawTexture = curRaw,
                    outputTexture = texture,
                    outputWidth = trackingWidth,
                    outputHeight = trackingHeight,
                    levelScale = trackingScale,
                    exposureScale = frameExposureScales[index],
                    label = "frame $index",
                )
                GlesGpuScheduler.yieldToUiRenderer()
            }

            val graph = RawTemporalAlignmentGraphBuilder.build(
                frames = eligibleFrames,
                referenceFrameIndex = 0,
                includeSkipOne = eligibleFrames.size <= MAX_TEMPORAL_GRAPH_SKIP_FRAME_COUNT,
            )
            val configuredGraphSpacing = max(
                hwmfPrefilter.temporalGraphTileSpacing,
                flowGridSpacing * MIN_TEMPORAL_GRAPH_SPACING_MULTIPLIER,
            )
            val budgetSpacing = kotlin.math.ceil(
                kotlin.math.sqrt(
                    planeWidth.toDouble() * planeHeight.toDouble() / MAX_TEMPORAL_GRAPH_TILES,
                ),
            ).toInt()
            val graphTileSpacing = roundUpToMultiple(
                max(configuredGraphSpacing, budgetSpacing),
                flowGridSpacing,
            )
            val graphGridWidth = (planeWidth + graphTileSpacing - 1) / graphTileSpacing
            val graphGridHeight = (planeHeight + graphTileSpacing - 1) / graphTileSpacing
            graph.edges.forEachIndexed { edgeIndex, edge ->
                val fromFrameIndex = eligibleFrameIndices[edge.fromFrameIndex]
                val toFrameIndex = eligibleFrameIndices[edge.toFrameIndex]
                val edgeOutputTexture = createTexture2D(
                    graphGridWidth,
                    graphGridHeight,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_LINEAR,
                )
                edgeOutputTextures += edgeOutputTexture
                drawAlignment(
                    reference = TextureLevel(
                        trackingTextures[fromFrameIndex],
                        trackingWidth,
                        trackingHeight,
                    ),
                    current = TextureLevel(
                        trackingTextures[toFrameIndex],
                        trackingWidth,
                        trackingHeight,
                    ),
                    levelScale = trackingScale,
                    outputTexture = edgeOutputTexture,
                    outputGridWidth = graphGridWidth,
                    outputGridHeight = graphGridHeight,
                    outputTileSpacing = graphTileSpacing,
                    preAlignment = relativePreAlignment(
                        frames = frames,
                        fromFrameIndex = fromFrameIndex,
                        toFrameIndex = toFrameIndex,
                    ),
                    alignWindowSize = max(
                        hwmfPrefilter.alignWindowSize,
                        trackingScale * MIN_TEMPORAL_WINDOW_LEVEL_PIXELS,
                    ),
                    label = "temporal edge $edgeIndex",
                )
                GlesGpuScheduler.yieldToUiRenderer()
            }
            val edgeValues = readFlowTextures(
                textures = edgeOutputTextures,
                textureWidth = graphGridWidth,
                textureHeight = graphGridHeight,
                label = "temporal graph edges",
            )
            val edgeFields = ArrayList<RawTemporalEdgeFlowField>(graph.edges.size)
            graph.edges.forEachIndexed { edgeIndex, edge ->
                edgeFields += RawTemporalEdgeFlowField(
                    edge = edge,
                    width = graphGridWidth,
                    height = graphGridHeight,
                    values = edgeValues[edgeIndex],
                )
            }

            val fallbackFlow = buildTemporalFallbackFlow(
                frames = eligibleFrames,
                gridWidth = graphGridWidth,
                gridHeight = graphGridHeight,
                tileSpacing = graphTileSpacing,
            )
            val solved = RawTemporalFlowFieldSolver.solve(
                graph = graph,
                edgeFields = edgeFields,
                fallbackFlowByFrame = fallbackFlow,
                scoreFullConfidence = hwmfBlend.patchScoreFullConfidence,
                scoreReject = hwmfBlend.patchScoreReject,
                minimumObservationConfidence = hwmfPrefilter.temporalGraphMinimumSeedConfidence,
            ) ?: return null
            val seedTextures = IntArray(frames.size)
            val summaries = MutableList<RawTemporalFrameFlowSummary?>(frames.size) { null }
            for (localIndex in 1 until eligibleFrames.size) {
                val originalIndex = eligibleFrameIndices[localIndex]
                summaries[originalIndex] = RawTemporalFlowFieldSolver.summarize(
                    field = solved[localIndex].copy(frameIndex = originalIndex),
                    minimumConfidence = hwmfPrefilter.temporalGraphMinimumSeedConfidence,
                )
                seedTextures[originalIndex] = uploadTemporalSeedTexture(
                    solved[localIndex].copy(frameIndex = originalIndex),
                )
            }
            RawStackRuntimeDebug.d(TAG) {
                "Temporal flow graph frames=${eligibleFrames.size}/${frames.size} edges=${graph.edges.size} " +
                    "grid=${graphGridWidth}x$graphGridHeight spacing=$graphTileSpacing"
            }
            return TemporalGraphSeedResources(
                texturesByFrame = seedTextures,
                summariesByFrame = summaries,
                gridWidth = graphGridWidth,
                gridHeight = graphGridHeight,
                tileSpacing = graphTileSpacing,
            )
        } finally {
            trackingTextures.filter { it != 0 }.forEach(::deleteTexture)
            edgeOutputTextures.forEach(::deleteTexture)
        }
    }

    private fun relativePreAlignment(
        frames: List<RawStackFrame>,
        fromFrameIndex: Int,
        toFrameIndex: Int,
    ): RawFramePreAlignment? {
        val from = if (fromFrameIndex == 0) {
            RawFramePreAlignment.Identity
        } else {
            frames[fromFrameIndex].preAlignmentToReference
        } ?: return null
        val to = if (toFrameIndex == 0) {
            RawFramePreAlignment.Identity
        } else {
            frames[toFrameIndex].preAlignmentToReference
        } ?: return null
        return RawFramePreAlignment(
            translationXPlanePx = to.translationXPlanePx - from.translationXPlanePx,
            translationYPlanePx = to.translationYPlanePx - from.translationYPlanePx,
            rotationDegrees = to.rotationDegrees - from.rotationDegrees,
            confidence = minOf(from.confidence, to.confidence),
        )
    }

    private fun relativePreAlignment(
        from: RawStackFrame,
        to: RawStackFrame,
    ): RawFramePreAlignment? {
        val fromAlignment = from.preAlignmentToReference ?: return null
        val toAlignment = to.preAlignmentToReference ?: return null
        return RawFramePreAlignment(
            translationXPlanePx =
                toAlignment.translationXPlanePx - fromAlignment.translationXPlanePx,
            translationYPlanePx =
                toAlignment.translationYPlanePx - fromAlignment.translationYPlanePx,
            rotationDegrees = toAlignment.rotationDegrees - fromAlignment.rotationDegrees,
            confidence = minOf(fromAlignment.confidence, toAlignment.confidence),
        )
    }

    private fun isFocusCompatibleWithReference(
        reference: RawStackFrame,
        current: RawStackFrame,
    ): Boolean {
        val referenceFocus = reference.focusDistanceDiopters
        val currentFocus = current.focusDistanceDiopters
        return !referenceFocus.isFinite() || !currentFocus.isFinite() ||
            kotlin.math.abs(currentFocus - referenceFocus) <=
            hwmfBlend.focusDistanceRejectDeltaDiopters.coerceAtLeast(0f)
    }

    private fun buildTemporalFallbackFlow(
        frames: List<RawStackFrame>,
        gridWidth: Int,
        gridHeight: Int,
        tileSpacing: Int,
    ): List<FloatArray> = List(frames.size) { frameIndex ->
        val values = FloatArray(gridWidth * gridHeight * 4)
        val preAlignment = if (frameIndex == 0) {
            RawFramePreAlignment.Identity
        } else {
            frames[frameIndex].preAlignmentToReference
        }
        for (y in 0 until gridHeight) {
            for (x in 0 until gridWidth) {
                val planeX = minOf(planeWidth - 1, x * tileSpacing + tileSpacing / 2).toFloat()
                val planeY = minOf(planeHeight - 1, y * tileSpacing + tileSpacing / 2).toFloat()
                val flow = preAlignment?.flowAtPlanePosition(
                    planeX,
                    planeY,
                    planeWidth,
                    planeHeight,
                ) ?: (0f to 0f)
                val offset = (y * gridWidth + x) * 4
                values[offset] = flow.first
                values[offset + 1] = flow.second
            }
        }
        values
    }

    private fun readFlowTexture(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        label: String,
    ): FloatArray = readFlowTextures(
        textures = listOf(texture),
        textureWidth = textureWidth,
        textureHeight = textureHeight,
        label = label,
    ).single()

    private fun readFlowTextures(
        textures: List<Int>,
        textureWidth: Int,
        textureHeight: Int,
        label: String,
    ): List<FloatArray> {
        if (textures.isEmpty()) return emptyList()
        val sampleCount = textureWidth * textureHeight
        val floatCountPerTexture = sampleCount * 4
        val totalFloatCount = floatCountPerTexture.toLong() * textures.size.toLong()
        val byteCount = totalFloatCount * 4L
        require(byteCount <= Int.MAX_VALUE) { "Flow readback exceeds GLES allocation range: $byteCount" }
        val bufferId = prepareReadbackScratchBuffer(byteCount.toInt())
        try {
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                FLOW_READBACK_BUFFER_BINDING,
                bufferId,
            )
            GLES31.glUseProgram(flowReadbackProgram)
            GLES31.glUniform2i(
                uniformLocation(flowReadbackProgram, "uGridSize"),
                textureWidth,
                textureHeight,
            )
            textures.forEachIndexed { index, texture ->
                bindTexture(flowReadbackProgram, "uFlow", 0, texture)
                GLES31.glUniform1i(
                    uniformLocation(flowReadbackProgram, "uSampleOffset"),
                    index * sampleCount,
                )
                GLES31.glDispatchCompute(groupCount(textureWidth), groupCount(textureHeight), 1)
            }
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            checkGlError("readFlowTextures dispatch $label")
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount.toInt(),
                GLES31.GL_MAP_READ_BIT,
            ) as? ByteBuffer ?: throw IllegalStateException("Flow readback map failed for $label")
            return try {
                val values = mapped.order(ByteOrder.nativeOrder()).asFloatBuffer()
                List(textures.size) {
                    FloatArray(floatCountPerTexture).also { output -> values.get(output) }
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
        } finally {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, FLOW_READBACK_BUFFER_BINDING, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun uploadTemporalSeedTexture(field: RawTemporalFrameFlowField): Int {
        val texture = createTexture2D(
            field.width,
            field.height,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        val buffer = ByteBuffer.allocateDirect(field.values.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(field.values)
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            field.width,
            field.height,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("uploadTemporalSeedTexture frame ${field.frameIndex}")
        return texture
    }

    private fun temporalTrackingLevelScale(frameCount: Int): Int {
        var scale = 1 shl max(alignLevel, MIN_TEMPORAL_TRACKING_LEVEL)
        while (scale < MAX_TEMPORAL_TRACKING_SCALE) {
            val trackingPixels = scaledTrackingDimension(planeWidth, scale).toLong() *
                scaledTrackingDimension(planeHeight, scale)
            val totalBytes = trackingPixels * frameCount.coerceAtLeast(1) * TRACKING_TEXTURE_BYTES_PER_PIXEL
            if (totalBytes <= MAX_TEMPORAL_TRACKING_BYTES) break
            scale *= 2
        }
        return scale
    }

    private fun scaledTrackingDimension(dimension: Int, scale: Int): Int =
        max(1, (dimension + scale - 1) / scale)

    private fun roundUpToMultiple(value: Int, multiple: Int): Int {
        val safeMultiple = multiple.coerceAtLeast(1)
        return ((value.coerceAtLeast(1) + safeMultiple - 1) / safeMultiple) * safeMultiple
    }

    private fun computeStructureTensor() {
        GLES31.glUseProgram(structureProgram)
        bindTexture(structureProgram, "uProxy", 0, refProxy)
        bindImage(1, kernelTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        setCommonUniforms(structureProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(structureProgram, "uProxySize"), planeWidth, planeHeight)
        setPrefilterStructureUniforms(structureProgram)
        GLES31.glDispatchCompute(groupCount(planeWidth), groupCount(planeHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("computeStructureTensor")
    }

    private fun alignCurrentToReference(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
        preAlignment: RawFramePreAlignment? = null,
        temporalGraphSeeds: TemporalGraphSeedResources? = null,
        frameIndex: Int = -1,
    ) {
        val levelIndex = alignLevel.coerceAtMost(reference.lastIndex).coerceAtMost(current.lastIndex)
        val ref = reference[levelIndex]
        val cur = current[levelIndex]
        val graphSeedTexture = temporalGraphSeeds
            ?.texturesByFrame
            ?.getOrNull(frameIndex)
            ?.takeIf { it != 0 }
        drawAlignment(
            reference = ref,
            current = cur,
            levelScale = 1 shl levelIndex,
            outputTexture = flowTexture,
            outputGridWidth = gridWidth,
            outputGridHeight = gridHeight,
            outputTileSpacing = flowGridSpacing,
            preAlignment = preAlignment,
            graphSeedTexture = graphSeedTexture,
            graphSeedGridWidth = temporalGraphSeeds?.gridWidth ?: 1,
            graphSeedGridHeight = temporalGraphSeeds?.gridHeight ?: 1,
            graphSeedTileSpacing = temporalGraphSeeds?.tileSpacing ?: 1,
            // Frame admission is based on the graph-consistent seed summary. Preserve the same
            // evidence in the cached fine flow: a noisy high-resolution patch may be unable to
            // refine a valid graph displacement, which must not erase its path confidence.
            retainGraphSeedEvidence = graphSeedTexture != null,
            label = "alignCurrentToReference",
        )
    }

    private fun drawAlignment(
        reference: TextureLevel,
        current: TextureLevel,
        levelScale: Int,
        outputTexture: Int,
        outputGridWidth: Int,
        outputGridHeight: Int,
        outputTileSpacing: Int,
        preAlignment: RawFramePreAlignment?,
        graphSeedTexture: Int? = null,
        graphSeedGridWidth: Int = 1,
        graphSeedGridHeight: Int = 1,
        graphSeedTileSpacing: Int = 1,
        retainGraphSeedEvidence: Boolean = false,
        alignWindowSize: Int = hwmfPrefilter.alignWindowSize,
        label: String,
    ) {
        bindFramebufferOutput(outputTexture, label)
        GLES30.glViewport(0, 0, outputGridWidth, outputGridHeight)
        GLES30.glUseProgram(alignProgram)
        bindTexture(alignProgram, "uReference", 0, reference.texture)
        bindTexture(alignProgram, "uCurrent", 1, current.texture)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(alignProgram, "uLevelSize"),
            reference.width,
            reference.height,
        )
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(alignProgram, "uGridSize"),
            outputGridWidth,
            outputGridHeight,
        )
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uTileSize"), outputTileSpacing)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uAlignWindowSize"), alignWindowSize)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uLevelScale"), levelScale)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uSearchRadius"), hwmfPrefilter.alignSearchRadiusLevel)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uSampleStep"), hwmfPrefilter.alignSampleStep)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(alignProgram, "uCoveragePenalty"), hwmfPrefilter.alignCoveragePenalty)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(alignProgram, "uShiftPenalty"), hwmfPrefilter.alignShiftPenalty)
        val seed = preAlignment?.takeIf { it.isUsable }
        GLES31.glUniform2f(
            GLES31.glGetUniformLocation(alignProgram, "uInitialTranslation"),
            seed?.translationXPlanePx ?: 0f,
            seed?.translationYPlanePx ?: 0f,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(alignProgram, "uInitialRotationRadians"),
            Math.toRadians((seed?.rotationDegrees ?: 0f).toDouble()).toFloat(),
        )
        GLES31.glUniform2f(
            GLES31.glGetUniformLocation(alignProgram, "uPlaneCenter"),
            (planeWidth - 1) * 0.5f,
            (planeHeight - 1) * 0.5f,
        )
        val useGraphSeed = graphSeedTexture != null
        graphSeedTexture?.let { texture -> bindTexture(alignProgram, "uGraphSeed", 2, texture) }
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(alignProgram, "uUseGraphSeed"),
            if (useGraphSeed) 1 else 0,
        )
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(alignProgram, "uGraphGridSize"),
            graphSeedGridWidth,
            graphSeedGridHeight,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(alignProgram, "uGraphTileSize"),
            graphSeedTileSpacing,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(alignProgram, "uGraphSeedConfidenceMin"),
            hwmfPrefilter.temporalGraphMinimumSeedConfidence,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(alignProgram, "uRetainGraphSeedEvidence"),
            if (retainGraphSeedEvidence) 1 else 0,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(alignProgram, "uSeedRefinementConfidenceStart"),
            radianceFusionTuning.longFineRefinementConfidenceStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(alignProgram, "uSeedRefinementConfidenceFull"),
            radianceFusionTuning.longFineRefinementConfidenceFull.coerceAtLeast(
                radianceFusionTuning.longFineRefinementConfidenceStart + 1e-3f,
            ),
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(alignProgram, "uGraphRefineSearchRadius"),
            hwmfPrefilter.temporalGraphRefineSearchRadiusLevel.coerceAtLeast(0),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun refineFlow(
        referenceProxyTexture: Int = refProxy,
        currentProxyTexture: Int = curProxy,
        targetFlowTexture: Int = flowTexture,
        scratchFlowTexture: Int = flowScratchTexture,
    ) {
        repeat(lkRefinePasses) { pass ->
            val input = if (pass % 2 == 0) targetFlowTexture else scratchFlowTexture
            val output = if (pass % 2 == 0) scratchFlowTexture else targetFlowTexture
            GLES31.glUseProgram(lkRefineProgram)
            bindTexture(lkRefineProgram, "uReference", 0, referenceProxyTexture)
            bindTexture(lkRefineProgram, "uCurrent", 1, currentProxyTexture)
            bindTexture(lkRefineProgram, "uInputFlow", 2, input)
            bindImage(3, output, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(lkRefineProgram, "uPlaneSize"), planeWidth, planeHeight)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(lkRefineProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(lkRefineProgram, "uTileSize"), flowGridSpacing)
            GLES31.glDispatchCompute(groupCount(gridWidth), groupCount(gridHeight), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            checkGlError("refineFlow pass $pass")
        }
        if (lkRefinePasses % 2 != 0) {
            copyFlowResult(scratchFlowTexture, targetFlowTexture, "refineFlow copy")
        }
    }

    private fun smoothFlow(
        targetFlowTexture: Int = flowTexture,
        scratchFlowTexture: Int = flowScratchTexture,
    ) {
        repeat(flowSmoothPasses) { pass ->
            val input = if (pass % 2 == 0) targetFlowTexture else scratchFlowTexture
            val output = if (pass % 2 == 0) scratchFlowTexture else targetFlowTexture
            bindFramebufferOutput(output, "smoothFlow pass $pass")
            GLES30.glViewport(0, 0, gridWidth, gridHeight)
            GLES30.glUseProgram(smoothFlowProgram)
            bindTexture(smoothFlowProgram, "uInputFlow", 0, input)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(smoothFlowProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(smoothFlowProgram, "uOutlierThreshold"), hwmfBlend.flowOutlierThresholdPx)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(smoothFlowProgram, "uOutlierWeight"), hwmfBlend.flowOutlierWeight)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("smoothFlow pass $pass")
        }
        if (flowSmoothPasses % 2 != 0) {
            copyFlowResult(scratchFlowTexture, targetFlowTexture, "smoothFlow copy")
        }
    }

    private fun copyFlowResult(input: Int, output: Int, label: String) {
        if (copyRgbaProgram != 0) {
            copyRgbaTexture(input, output, gridWidth, gridHeight, label)
        } else {
            copyFlow(input, output, label)
        }
    }

    private fun copyFlow(input: Int, output: Int, label: String) {
        bindFramebufferOutput(output, label)
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(smoothFlowProgram)
        bindTexture(smoothFlowProgram, "uInputFlow", 0, input)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(smoothFlowProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(smoothFlowProgram, "uOutlierThreshold"), 100000.0f)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(smoothFlowProgram, "uOutlierWeight"), hwmfBlend.flowOutlierWeight)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun copyScalarTexture(
        input: Int,
        output: Int,
        copyWidth: Int,
        copyHeight: Int,
        label: String,
    ) {
        bindFramebufferOutput(output, label)
        GLES30.glViewport(0, 0, copyWidth, copyHeight)
        GLES30.glUseProgram(copyScalarProgram)
        bindTexture(copyScalarProgram, "uInput", 0, input)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(copyScalarProgram, "uImageSize"),
            copyWidth,
            copyHeight,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun copyRgbaTexture(
        input: Int,
        output: Int,
        copyWidth: Int,
        copyHeight: Int,
        label: String,
    ) {
        check(copyRgbaProgram != 0) { "RGBA copy program is unavailable for $label" }
        bindFramebufferOutput(output, label)
        GLES30.glViewport(0, 0, copyWidth, copyHeight)
        GLES30.glUseProgram(copyRgbaProgram)
        bindTexture(copyRgbaProgram, "uInput", 0, input)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(copyRgbaProgram, "uImageSize"),
            copyWidth,
            copyHeight,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun cacheAcceptedSuperResolutionFrame(
        frameIndex: Int,
        image: SafeImage,
        exposureScale: Float,
        registrationWeight: Float,
        detailWeight: Float,
    ): AcceptedSuperResolutionFrame {
        val cachedFlow = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        val cachedRobustnessBytesPerPixel = 2L
        val cachedRobustness = createTexture2D(
            planeWidth,
            planeHeight,
            GLES30.GL_R16F,
            GLES30.GL_NEAREST,
        )
        val cachedTileMaskBytesPerPixel = 8L
        val cachedTileMask = createTexture2D(
            gridWidth,
            gridHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        RawStackRuntimeDebug.d(TAG) {
            val cacheBytes = planeWidth.toLong() * planeHeight * cachedRobustnessBytesPerPixel +
                gridWidth.toLong() * gridHeight * (8L + cachedTileMaskBytesPerPixel)
            "Cache Radiance frame=$frameIndex alignment=${cacheBytes.mibString()} " +
                "robustness=R16F flow=RGBA16F tile=RGBA16F"
        }
        copyFlow(flowTexture, cachedFlow, "cache Radiance flow frame $frameIndex")
        copyScalarTexture(
            robustnessTexture,
            cachedRobustness,
            planeWidth,
            planeHeight,
            "cache Radiance robustness frame $frameIndex",
        )
        copyRgbaTexture(
            tileMaskTexture,
            cachedTileMask,
            gridWidth,
            gridHeight,
            "cache Radiance dual tile confidence frame $frameIndex",
        )
        val flowValues = readFlowTexture(
            texture = cachedFlow,
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "cache Radiance flow bounds frame $frameIndex",
        )
        var minFlowX = 0f
        var maxFlowX = 0f
        var minFlowY = 0f
        var maxFlowY = 0f
        var index = 0
        while (index < flowValues.size) {
            val flowX = flowValues[index]
            val flowY = flowValues[index + 1]
            if (flowX.isFinite()) {
                minFlowX = minOf(minFlowX, flowX)
                maxFlowX = maxOf(maxFlowX, flowX)
            }
            if (flowY.isFinite()) {
                minFlowY = minOf(minFlowY, flowY)
                maxFlowY = maxOf(maxFlowY, flowY)
            }
            index += 4
        }
        return AcceptedSuperResolutionFrame(
            frameIndex = frameIndex,
            image = image,
            exposureScale = exposureScale,
            registrationWeight = registrationWeight.coerceIn(0f, 1f),
            detailWeight = detailWeight.coerceIn(0f, 1f),
            flowTexture = cachedFlow,
            robustnessTexture = cachedRobustness,
            tileMaskTexture = cachedTileMask,
            minFlowXPlanePx = minFlowX,
            maxFlowXPlanePx = maxFlowX,
            minFlowYPlanePx = minFlowY,
            maxFlowYPlanePx = maxFlowY,
        )
    }

    private fun prepareRadianceHighlightAlignment(
        highlight: RawRadianceHighlightFrame,
        referencePyramid: List<TextureLevel>,
        currentPyramid: List<TextureLevel>,
    ): RadianceHighlightAlignment? {
        return runCatching {
            // Keep the normal multi-frame output reference as the only geometry reference. A
            // normal-anchor chain would compose two flow fields that are both unobservable inside
            // clipping. Region planning below uses only direct normal-reference/short collar flow.
            buildProxy(refRaw, refProxy, "Radiance highlight normal reference")
            buildPyramid(referencePyramid)

            uploadRawTexture(highlight.shortFrame.image, curRaw, "Radiance highlight short")
            buildProxy(
                curRaw,
                curProxy,
                "Radiance highlight short exposure-normalized",
                exposureScale = highlight.exposureRatio,
                noiseModel = frameNoiseModel(highlight.shortFrame),
            )
            buildPyramid(currentPyramid)

            drawAlignment(
                reference = referencePyramid[alignLevel.coerceAtMost(referencePyramid.lastIndex)],
                current = currentPyramid[alignLevel.coerceAtMost(currentPyramid.lastIndex)],
                levelScale = 1 shl alignLevel.coerceAtMost(referencePyramid.lastIndex),
                outputTexture = flowTexture,
                outputGridWidth = gridWidth,
                outputGridHeight = gridHeight,
                outputTileSpacing = flowGridSpacing,
                preAlignment = null,
                label = "Radiance highlight normal-reference-to-short",
            )
            refineFlow(
                referenceProxyTexture = refProxy,
                currentProxyTexture = curProxy,
                targetFlowTexture = flowTexture,
                scratchFlowTexture = flowScratchTexture,
            )
            smoothFlow(flowTexture, flowScratchTexture)

            drawAlignment(
                reference = currentPyramid[alignLevel.coerceAtMost(currentPyramid.lastIndex)],
                current = referencePyramid[alignLevel.coerceAtMost(referencePyramid.lastIndex)],
                levelScale = 1 shl alignLevel.coerceAtMost(currentPyramid.lastIndex),
                outputTexture = radianceHighlightReverseFlowTexture,
                outputGridWidth = gridWidth,
                outputGridHeight = gridHeight,
                outputTileSpacing = flowGridSpacing,
                preAlignment = null,
                label = "Radiance highlight short-to-normal-reference",
            )
            refineFlow(
                referenceProxyTexture = curProxy,
                currentProxyTexture = refProxy,
                targetFlowTexture = radianceHighlightReverseFlowTexture,
                scratchFlowTexture = flowScratchTexture,
            )
            smoothFlow(radianceHighlightReverseFlowTexture, flowScratchTexture)
            validateRadianceHighlightFlow()

            // The validated flow and support below form the only direct geometric evidence.
            // Saturated tiles are deliberately excluded as collar seeds.
            buildRadianceHighlightSupport(
                referenceProxyTexture = refProxy,
                shortProxyTexture = curProxy,
                flowFieldTexture = flowTexture,
            )
            inferRadianceHighlightFlowFromCollar()
            buildRadianceHighlightSupport(
                referenceProxyTexture = refProxy,
                shortProxyTexture = curProxy,
                flowFieldTexture = radianceHighlightComposedFlowTexture,
            )
            buildRadianceHighlightHoleRejectionSeed()
            propagateRadianceHighlightHoleRejection()
            applyRadianceHighlightHoleDecision()
            summarizeRadianceHighlightAlignment(highlight)
        }.onFailure { error ->
            PLog.w(TAG, "Radiance highlight alignment failed; preserving normal fusion", error)
        }.getOrNull()
    }

    private fun prepareRadianceLongAlignments(
        longFrames: List<RawRadianceLongFramePlan>,
        frames: List<RawStackFrame>,
        acceptedFrames: List<AcceptedSuperResolutionFrame>,
        referencePyramid: List<TextureLevel>,
        currentPyramid: List<TextureLevel>,
    ): List<RadianceLongAlignment> {
        if (longFrames.isEmpty() || frames.isEmpty()) return emptyList()
        val acceptedNormalIndices = buildList {
            add(0)
            acceptedFrames.forEach { frame -> add(frame.frameIndex) }
        }.distinct()
        val trackingSeeds = createRadianceLongTrackingSeedResources()
        var referenceGuideProxyTexture = 0
        var activeAnchorFrameIndex = -1
        var activeAnchorObservability: RadianceLongObservabilitySummary? = null
        var anchorBuildCount = 0
        var anchorReuseCount = 0
        val alignmentStartMs = System.currentTimeMillis()
        return try {
            // Keep the output-reference proxy resident while refProxy/current referencePyramid
            // hold the temporal anchor. This removes the per-long reference upload/rebuild and
            // lets consecutive long frames reuse the exact same anchor pyramid.
            referenceGuideProxyTexture = createTexture2D(
                planeWidth,
                planeHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            buildProxy(
                refRaw,
                referenceGuideProxyTexture,
                "Radiance long output reference guide",
                noiseModel = frameNoiseModel(frames.first()),
                useRegionalObservability = true,
            )
            val alignments = longFrames.mapNotNull { plan ->
                val anchorFrameIndex = acceptedNormalIndices.minByOrNull { frameIndex ->
                    timestampDistance(
                        frames[frameIndex].sensorTimestampNs,
                        plan.longFrame.sensorTimestampNs,
                    )
                } ?: return@mapNotNull null
                val anchorIsReference = anchorFrameIndex == 0
                val anchorAlignment = if (anchorIsReference) {
                    null
                } else {
                    acceptedFrames.firstOrNull { it.frameIndex == anchorFrameIndex }
                        ?: return@mapNotNull null
                }
                runCatching {
                    val anchor = frames[anchorFrameIndex]
                    val photonExposureRatio = if (
                        anchor.exposureTimeNs > 0L && plan.longFrame.exposureTimeNs > 0L
                    ) {
                        plan.longFrame.exposureTimeNs.toFloat() / anchor.exposureTimeNs.toFloat()
                    } else {
                        Float.NaN
                    }
                    val longNoiseModel = frameNoiseModel(plan.longFrame)
                    if (activeAnchorFrameIndex != anchorFrameIndex) {
                        val anchorNoiseModel = frameNoiseModel(anchor)
                        uploadRawTexture(anchor.image, curRaw, "Radiance long anchor")
                        activeAnchorObservability = if (hwmfDebug.collectMetrics) {
                            summarizeRadianceLongObservabilityInput(
                                frameIndex = plan.sourceFrameIndex,
                                side = "anchor",
                                rawTexture = curRaw,
                                exposureScale = 1f,
                                noiseModel = anchorNoiseModel,
                                exposureTimeNs = anchor.exposureTimeNs,
                                sensitivityIso = anchor.sensitivityIso,
                            )
                        } else {
                            null
                        }
                        buildTrackingProxy(
                            rawTexture = curRaw,
                            outputTexture = trackingSeeds.anchorTrackingTexture,
                            outputWidth = trackingSeeds.trackingWidth,
                            outputHeight = trackingSeeds.trackingHeight,
                            levelScale = trackingSeeds.trackingScale,
                            exposureScale = 1f,
                            label = "Radiance long anchor ${plan.sourceFrameIndex}",
                        )
                        buildProxy(
                            curRaw,
                            refProxy,
                            "Radiance long anchor",
                            noiseModel = anchorNoiseModel,
                            useRegionalObservability = true,
                        )
                        buildPyramid(referencePyramid)
                        if (!anchorIsReference) {
                            copyRgbaTexture(
                                checkNotNull(anchorAlignment).flowTexture,
                                radianceHighlightAnchorFlowTexture,
                                gridWidth,
                                gridHeight,
                                "Radiance long anchor flow cache",
                            )
                            propagateRadianceHighlightFlow(
                                targetTexture = radianceHighlightAnchorFlowTexture,
                                guideProxyTexture = referenceGuideProxyTexture,
                                label = "long-reference-to-anchor",
                                passes = radianceFusionTuning.longFlowPropagationPasses,
                                confidenceDecay = radianceFusionTuning.longFlowPropagationDecay,
                                directConfidence = radianceFusionTuning.longFlowSeedConfidence,
                                minimumConfidence = radianceFusionTuning.longFlowMinimumConfidence,
                                guideEdgeSigma = radianceFusionTuning.longFlowGuideEdgeSigma,
                                allowInvalidGuidePropagation = true,
                            )
                        }
                        activeAnchorFrameIndex = anchorFrameIndex
                        anchorBuildCount++
                    } else {
                        anchorReuseCount++
                    }

                    uploadRawTexture(plan.longFrame.image, curRaw, "Radiance long source")
                    val longObservability = if (hwmfDebug.collectMetrics) {
                        summarizeRadianceLongObservabilityInput(
                            frameIndex = plan.sourceFrameIndex,
                            side = "long",
                            rawTexture = curRaw,
                            exposureScale = plan.exposureScale,
                            noiseModel = longNoiseModel,
                            exposureTimeNs = plan.longFrame.exposureTimeNs,
                            sensitivityIso = plan.longFrame.sensitivityIso,
                        )
                    } else {
                        null
                    }
                    buildTrackingProxy(
                        rawTexture = curRaw,
                        outputTexture = trackingSeeds.longTrackingTexture,
                        outputWidth = trackingSeeds.trackingWidth,
                        outputHeight = trackingSeeds.trackingHeight,
                        levelScale = trackingSeeds.trackingScale,
                        exposureScale = plan.exposureScale,
                        label = "Radiance long source ${plan.sourceFrameIndex}",
                    )
                    val anchorObservability = activeAnchorObservability
                    if (anchorObservability != null && longObservability != null) {
                        val limitingSide = when {
                            anchorObservability.observableTileCount <
                                longObservability.observableTileCount -> "ANCHOR"
                            longObservability.observableTileCount <
                                anchorObservability.observableTileCount -> "LONG"
                            else -> "BALANCED"
                        }
                        PLog.i(
                            TAG,
                            "Radiance long observability comparison " +
                                "frame=${plan.sourceFrameIndex} limitingSide=$limitingSide " +
                                "observableTiles=${anchorObservability.observableTileCount}/" +
                                "${anchorObservability.totalTileCount}:" +
                                "${longObservability.observableTileCount}/" +
                                "${longObservability.totalTileCount} " +
                                "meanSignal=${anchorObservability.meanSignal}/" +
                                "${longObservability.meanSignal} " +
                                "meanDetail=${anchorObservability.meanDetail}/" +
                                "${longObservability.meanDetail} " +
                                "meanNoiseSigma=${anchorObservability.meanNoiseSigma}/" +
                                "${longObservability.meanNoiseSigma} " +
                                "meanDetailSnr=${anchorObservability.meanDetailSnr}/" +
                                "${longObservability.meanDetailSnr} " +
                                "meanAlignmentObservability=" +
                                "${anchorObservability.meanAlignmentObservability}/" +
                                "${longObservability.meanAlignmentObservability} " +
                                "photonRatio=$photonExposureRatio",
                        )
                    }
                    buildProxy(
                        curRaw,
                        curProxy,
                        "Radiance long exposure-normalized",
                        exposureScale = plan.exposureScale,
                        noiseModel = longNoiseModel,
                        useRegionalObservability = true,
                    )
                    buildPyramid(currentPyramid)
                    buildRadianceLongTrackingSeeds(
                        frameIndex = plan.sourceFrameIndex,
                        anchor = anchor,
                        longFrame = plan.longFrame,
                        resources = trackingSeeds,
                    )

                    val longAlignLevel = alignLevel.coerceAtMost(referencePyramid.lastIndex)
                    drawAlignment(
                        reference = referencePyramid[longAlignLevel],
                        current = currentPyramid[longAlignLevel],
                        levelScale = 1 shl longAlignLevel,
                        outputTexture = flowTexture,
                        outputGridWidth = gridWidth,
                        outputGridHeight = gridHeight,
                        outputTileSpacing = flowGridSpacing,
                        preAlignment = null,
                        graphSeedTexture = trackingSeeds.forwardSeedTexture,
                        graphSeedGridWidth = trackingSeeds.seedGridWidth,
                        graphSeedGridHeight = trackingSeeds.seedGridHeight,
                        graphSeedTileSpacing = trackingSeeds.seedTileSpacing,
                        retainGraphSeedEvidence = true,
                        label = "Radiance long anchor-to-source",
                    )
                    refineFlow(
                        referenceProxyTexture = refProxy,
                        currentProxyTexture = curProxy,
                        targetFlowTexture = flowTexture,
                        scratchFlowTexture = flowScratchTexture,
                    )
                    smoothFlow(flowTexture, flowScratchTexture)

                    drawAlignment(
                        reference = currentPyramid[longAlignLevel],
                        current = referencePyramid[longAlignLevel],
                        levelScale = 1 shl longAlignLevel,
                        outputTexture = radianceHighlightReverseFlowTexture,
                        outputGridWidth = gridWidth,
                        outputGridHeight = gridHeight,
                        outputTileSpacing = flowGridSpacing,
                        preAlignment = null,
                        graphSeedTexture = trackingSeeds.reverseSeedTexture,
                        graphSeedGridWidth = trackingSeeds.seedGridWidth,
                        graphSeedGridHeight = trackingSeeds.seedGridHeight,
                        graphSeedTileSpacing = trackingSeeds.seedTileSpacing,
                        retainGraphSeedEvidence = true,
                        label = "Radiance long source-to-anchor",
                    )
                    refineFlow(
                        referenceProxyTexture = curProxy,
                        currentProxyTexture = refProxy,
                        targetFlowTexture = radianceHighlightReverseFlowTexture,
                        scratchFlowTexture = flowScratchTexture,
                    )
                    smoothFlow(radianceHighlightReverseFlowTexture, flowScratchTexture)
                    if (hwmfDebug.collectMetrics) {
                        logRadianceLongFineFlowEvidence(plan.sourceFrameIndex)
                    }
                    validateRadianceHighlightFlow(
                        consistencyStartPx = radianceFusionTuning.longFlowFbConsistencyStartPx,
                        consistencyFullPx = radianceFusionTuning.longFlowFbConsistencyFullPx,
                        label = "long",
                    )
                    propagateRadianceHighlightFlow(
                        targetTexture = flowTexture,
                        guideProxyTexture = refProxy,
                        label = "long-anchor-to-source",
                        passes = radianceFusionTuning.longFlowPropagationPasses,
                        confidenceDecay = radianceFusionTuning.longFlowPropagationDecay,
                        directConfidence = radianceFusionTuning.longFlowSeedConfidence,
                        minimumConfidence = radianceFusionTuning.longFlowMinimumConfidence,
                        guideEdgeSigma = radianceFusionTuning.longFlowGuideEdgeSigma,
                        allowInvalidGuidePropagation = true,
                    )

                    // Admit the long frame on the direct anchor -> long edge. The normal anchor has
                    // already passed its own frame admission, so multiplying its reference -> anchor
                    // confidence into this global gate would test the same edge twice and makes the
                    // result depend on which normal frame happened to become the burst reference.
                    computeRadianceLongEligibility(
                        frameIndex = plan.sourceFrameIndex,
                        sourceFlowTexture = flowTexture,
                        stage = "direct",
                    )
                    val directSupport = summarizeRadianceLongFlow(
                        plan = plan,
                        anchorFrameIndex = anchorFrameIndex,
                        sourceFlowTexture = flowTexture,
                        stage = "direct",
                        enforceAdmission = true,
                        photonExposureRatio = photonExposureRatio,
                    ) ?: return@runCatching null

                    if (hwmfDebug.collectMetrics) {
                        logRadianceLongCompositionConfidence(
                            frameIndex = plan.sourceFrameIndex,
                            anchorIsReference = anchorIsReference,
                        )
                    }
                    composeRadianceHighlightFlow(
                        anchorIsReference = anchorIsReference,
                        useBottleneckConfidence = true,
                        confidenceStart = radianceFusionTuning.longFlowMinimumConfidence,
                        confidenceFull = radianceFusionTuning.longFlowFullConfidence,
                    )
                    copyRgbaTexture(
                        radianceHighlightComposedFlowTexture,
                        flowTexture,
                        gridWidth,
                        gridHeight,
                        "Radiance long composed flow refinement seed",
                    )
                    // The temporal graph keeps the hand-shake displacement small by composing
                    // through the nearest normal anchor. Refine that composed result once more in
                    // the actual output reference domain so the cached warp does not retain the
                    // residual error of two independently estimated edges.
                    refineFlow(
                        referenceProxyTexture = referenceGuideProxyTexture,
                        currentProxyTexture = curProxy,
                        targetFlowTexture = flowTexture,
                        scratchFlowTexture = flowScratchTexture,
                    )
                    smoothFlow(flowTexture, flowScratchTexture)
                    computeRadianceLongEligibility(
                        frameIndex = plan.sourceFrameIndex,
                        sourceFlowTexture = flowTexture,
                        stage = "composed-refined",
                        referenceProxyTexture = referenceGuideProxyTexture,
                    )
                    val composedSupport = checkNotNull(
                        summarizeRadianceLongFlow(
                            plan = plan,
                            anchorFrameIndex = anchorFrameIndex,
                            sourceFlowTexture = flowTexture,
                            stage = "composed-refined",
                            enforceAdmission = false,
                            photonExposureRatio = photonExposureRatio,
                        ),
                    )
                    computeRobustness(referenceProxyTexture = referenceGuideProxyTexture)
                    computeTileMask(referenceProxyTexture = referenceGuideProxyTexture)

                    val cachedFlow = createTexture2D(
                        gridWidth,
                        gridHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    val cachedRobustness = createTexture2D(
                        planeWidth,
                        planeHeight,
                        GLES30.GL_R16F,
                        GLES30.GL_NEAREST,
                    )
                    val cachedTileMask = createTexture2D(
                        gridWidth,
                        gridHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    copyRgbaTexture(
                        flowTexture,
                        cachedFlow,
                        gridWidth,
                        gridHeight,
                        "Radiance long cached flow ${plan.sourceFrameIndex}",
                    )
                    copyScalarTexture(
                        robustnessTexture,
                        cachedRobustness,
                        planeWidth,
                        planeHeight,
                        "Radiance long cached robustness ${plan.sourceFrameIndex}",
                    )
                    copyRgbaTexture(
                        tileMaskTexture,
                        cachedTileMask,
                        gridWidth,
                        gridHeight,
                        "Radiance long cached tile mask ${plan.sourceFrameIndex}",
                    )
                    RadianceLongAlignment(
                        plan = plan,
                        anchorFrameIndex = anchorFrameIndex,
                        flowTexture = cachedFlow,
                        robustnessTexture = cachedRobustness,
                        tileMaskTexture = cachedTileMask,
                        // Admission is categorical and requires validated flow. Once admitted,
                        // robustness and the tile mask own local rejection; sparse seed coverage
                        // must not attenuate the whole frame a second time.
                        registrationWeight = directSupport.frameWeight,
                        detailWeight = directSupport.frameWeight,
                        precisionWeightCap = directSupport.precisionWeightCap,
                        minFlowXPlanePx = composedSupport.minFlowXPlanePx,
                        maxFlowXPlanePx = composedSupport.maxFlowXPlanePx,
                        minFlowYPlanePx = composedSupport.minFlowYPlanePx,
                        maxFlowYPlanePx = composedSupport.maxFlowYPlanePx,
                        validTileFraction = directSupport.validTileFraction,
                        coveredQuadrants = directSupport.coveredQuadrants,
                    )
                }.onFailure { error ->
                    PLog.w(
                        TAG,
                        "Radiance long alignment failed frame=${plan.sourceFrameIndex}; excluded",
                        error,
                    )
                }.getOrNull()
            }
            RawStackRuntimeDebug.i(TAG) {
                "Radiance long alignment cache completed " +
                    "elapsed=${System.currentTimeMillis() - alignmentStartMs}ms " +
                    "requested=${longFrames.size} accepted=${alignments.size} " +
                    "anchorBuilds=$anchorBuildCount anchorReuses=$anchorReuseCount " +
                    "diagnosticReadback=${hwmfDebug.collectMetrics}"
            }
            alignments
        } finally {
            releaseRadianceLongTrackingSeedResources(trackingSeeds)
            deleteTexture(referenceGuideProxyTexture)
        }
    }

    private fun logRadianceLongFineFlowEvidence(frameIndex: Int) {
        val (forwardValues, reverseValues) = readFlowTextures(
            textures = listOf(flowTexture, radianceHighlightReverseFlowTexture),
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "Radiance long fine flow evidence $frameIndex",
        )
        val confidenceThreshold = radianceFusionTuning.longFlowMinimumConfidence
            .coerceIn(0f, 1f)
        fun summarize(values: FloatArray): String {
            val confidenceValues = FloatArray(values.size / 4)
            var confidenceCount = 0
            var confidentTiles = 0
            var confidenceSum = 0f
            var offset = 3
            while (offset < values.size) {
                val confidence = values[offset]
                if (confidence.isFinite()) {
                    confidenceValues[confidenceCount++] = confidence
                    confidenceSum += confidence
                    if (confidence >= confidenceThreshold) confidentTiles++
                }
                offset += 4
            }
            val sorted = confidenceValues.copyOf(confidenceCount).apply { sort() }
            fun percentile(fraction: Float): Float {
                if (sorted.isEmpty()) return 0f
                val index = (sorted.lastIndex * fraction.coerceIn(0f, 1f)).toInt()
                return sorted[index]
            }
            return "$confidentTiles/$confidenceCount," +
                "mean=${confidenceSum / confidenceCount.coerceAtLeast(1)}," +
                "p50=${percentile(0.50f)},p90=${percentile(0.90f)}"
        }
        PLog.i(
            TAG,
            "Radiance long fine flow evidence frame=$frameIndex " +
                "forward=${summarize(forwardValues)} reverse=${summarize(reverseValues)} " +
                "requiredConfidence=$confidenceThreshold",
        )
    }

    /**
     * Diagnoses the confidence carried by each edge before reference -> anchor -> long
     * composition. The composed path samples the second edge at the warped anchor position, so
     * independent confidence histograms cannot reveal whether the two supported regions overlap.
     * This mirrors that sampling on the CPU and reports the actual bottleneck presented to the
     * composition shader without changing admission or fusion behavior.
     */
    private fun logRadianceLongCompositionConfidence(
        frameIndex: Int,
        anchorIsReference: Boolean,
    ) {
        val (referenceToAnchorValues, anchorToLongValues) = readFlowTextures(
            textures = listOf(
                radianceHighlightAnchorFlowTexture,
                flowTexture,
            ),
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "Radiance long composition confidence $frameIndex",
        )
        val confidenceStart = radianceFusionTuning.longFlowMinimumConfidence
            .coerceIn(0f, 0.999f)
        val confidenceFull = radianceFusionTuning.longFlowFullConfidence.coerceIn(
            confidenceStart + 1e-3f,
            1f,
        )
        val pathThreshold = radianceFusionTuning.longFlowMinimumConfidence
            .coerceIn(0f, 1f)
        val totalTiles = (gridWidth * gridHeight).coerceAtLeast(1)
        val referenceEdgeConfidences = FloatArray(totalTiles)
        val longEdgeConfidences = FloatArray(totalTiles)
        val pathConfidences = FloatArray(totalTiles)
        var insideTiles = 0
        var referenceEdgeSupported = 0
        var longEdgeSupported = 0
        var rawOverlapSupported = 0
        var normalizedPathSupported = 0

        fun alphaAt(values: FloatArray, planeX: Float, planeY: Float): Float {
            val gridX = (planeX / flowGridSpacing.toFloat() - 0.5f)
                .coerceIn(0f, (gridWidth - 1).coerceAtLeast(0).toFloat())
            val gridY = (planeY / flowGridSpacing.toFloat() - 0.5f)
                .coerceIn(0f, (gridHeight - 1).coerceAtLeast(0).toFloat())
            val x0 = gridX.toInt()
            val y0 = gridY.toInt()
            val x1 = (x0 + 1).coerceAtMost(gridWidth - 1)
            val y1 = (y0 + 1).coerceAtMost(gridHeight - 1)
            val tx = gridX - x0
            val ty = gridY - y0
            fun alpha(x: Int, y: Int): Float {
                return values[(y * gridWidth + x) * 4 + 3].takeIf { it.isFinite() } ?: 0f
            }
            val top = alpha(x0, y0) * (1f - tx) + alpha(x1, y0) * tx
            val bottom = alpha(x0, y1) * (1f - tx) + alpha(x1, y1) * tx
            return top * (1f - ty) + bottom * ty
        }

        for (tileIndex in 0 until totalTiles) {
            val tileX = tileIndex % gridWidth
            val tileY = tileIndex / gridWidth
            val offset = tileIndex * 4
            val referenceEdgeConfidence = if (anchorIsReference) {
                1f
            } else {
                referenceToAnchorValues[offset + 3].takeIf { it.isFinite() } ?: 0f
            }
            val referenceFlowX = if (anchorIsReference) {
                0f
            } else {
                referenceToAnchorValues[offset].takeIf { it.isFinite() } ?: 0f
            }
            val referenceFlowY = if (anchorIsReference) {
                0f
            } else {
                referenceToAnchorValues[offset + 1].takeIf { it.isFinite() } ?: 0f
            }
            val referenceX = minOf(
                tileX * flowGridSpacing + flowGridSpacing / 2,
                planeWidth - 1,
            ).toFloat()
            val referenceY = minOf(
                tileY * flowGridSpacing + flowGridSpacing / 2,
                planeHeight - 1,
            ).toFloat()
            val anchorX = referenceX + referenceFlowX
            val anchorY = referenceY + referenceFlowY
            val inside = anchorX >= 0f && anchorY >= 0f &&
                anchorX <= (planeWidth - 1).toFloat() &&
                anchorY <= (planeHeight - 1).toFloat()
            val longEdgeConfidence = if (inside) {
                alphaAt(anchorToLongValues, anchorX, anchorY)
            } else {
                0f
            }
            val normalizedReferenceConfidence = if (anchorIsReference) {
                1f
            } else {
                smoothStep(confidenceStart, confidenceFull, referenceEdgeConfidence)
            }
            val normalizedLongConfidence = smoothStep(
                confidenceStart,
                confidenceFull,
                longEdgeConfidence,
            )
            val pathConfidence = if (inside) {
                minOf(normalizedReferenceConfidence, normalizedLongConfidence)
            } else {
                0f
            }
            referenceEdgeConfidences[tileIndex] = referenceEdgeConfidence
            longEdgeConfidences[tileIndex] = longEdgeConfidence
            pathConfidences[tileIndex] = pathConfidence
            if (inside) insideTiles++
            if (referenceEdgeConfidence >= confidenceStart) referenceEdgeSupported++
            if (longEdgeConfidence >= confidenceStart) longEdgeSupported++
            if (referenceEdgeConfidence >= confidenceStart &&
                longEdgeConfidence >= confidenceStart
            ) {
                rawOverlapSupported++
            }
            if (pathConfidence >= pathThreshold) normalizedPathSupported++
        }

        fun summarize(values: FloatArray): String {
            val positive = values.filter { it.isFinite() && it > 0f }.sorted()
            fun percentile(fraction: Float): Float {
                if (positive.isEmpty()) return 0f
                return positive[(positive.lastIndex * fraction.coerceIn(0f, 1f)).toInt()]
            }
            return "positive=${positive.size}/${values.size}," +
                "p50=${percentile(0.50f)},p90=${percentile(0.90f)}," +
                "max=${positive.lastOrNull() ?: 0f}"
        }
        PLog.i(
            TAG,
            "Radiance long composition confidence frame=$frameIndex " +
                "anchorIsReference=$anchorIsReference inside=$insideTiles/$totalTiles " +
                "referenceEdge=$referenceEdgeSupported/${summarize(referenceEdgeConfidences)} " +
                "longEdge=$longEdgeSupported/${summarize(longEdgeConfidences)} " +
                "rawOverlap=$rawOverlapSupported path=$normalizedPathSupported/" +
                summarize(pathConfidences) + " confidenceRange=$confidenceStart:$confidenceFull " +
                "requiredPath=$pathThreshold",
        )
    }

    private fun summarizeRadianceLongFlow(
        plan: RawRadianceLongFramePlan,
        anchorFrameIndex: Int,
        sourceFlowTexture: Int,
        stage: String,
        enforceAdmission: Boolean,
        photonExposureRatio: Float,
    ): RadianceFlowSupport? {
        val (values, eligibilityValues) = readFlowTextures(
            textures = listOf(
                sourceFlowTexture,
                flowScratchTexture,
            ),
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "Radiance long $stage flow ${plan.sourceFrameIndex}",
        )
        val confidenceThreshold = radianceFusionTuning.longFlowMinimumConfidence
            .coerceIn(0f, 1f)
        val eligibilityThreshold = radianceFusionTuning.longEligibilityMinimumSupport
            .coerceIn(0f, 1f)
        var validTiles = 0
        var eligibleTiles = 0
        var referenceObservableTiles = 0
        var currentObservableTiles = 0
        var minX = 0f
        var maxX = 0f
        var minY = 0f
        var maxY = 0f
        val quadrants = BooleanArray(4)
        val eligibleTilesByQuadrant = IntArray(4)
        var meanValiditySum = 0f
        var meanReferenceObservabilitySum = 0f
        var meanCurrentObservabilitySum = 0f
        var diagnosticTileCount = 0
        var offset = 0
        while (offset + 3 < values.size) {
            val tileIndex = offset / 4
            val flowX = values[offset]
            val flowY = values[offset + 1]
            val confidence = values[offset + 3]
            val eligibility = eligibilityValues[offset]
            val validity = eligibilityValues[offset + 1]
            val referenceObservability = eligibilityValues[offset + 2]
            val currentObservability = eligibilityValues[offset + 3]
            if (validity.isFinite() && referenceObservability.isFinite() &&
                currentObservability.isFinite()
            ) {
                meanValiditySum += validity
                meanReferenceObservabilitySum += referenceObservability
                meanCurrentObservabilitySum += currentObservability
                diagnosticTileCount++
            }
            val tileX = tileIndex % gridWidth
            val tileY = tileIndex / gridWidth
            val quadrant = (if (tileY >= gridHeight / 2) 2 else 0) +
                if (tileX >= gridWidth / 2) 1 else 0
            val eligible = eligibility.isFinite() && eligibility >= eligibilityThreshold
            if (referenceObservability.isFinite() &&
                referenceObservability >= eligibilityThreshold
            ) {
                referenceObservableTiles++
            }
            if (currentObservability.isFinite() &&
                currentObservability >= eligibilityThreshold
            ) {
                currentObservableTiles++
            }
            if (eligible) {
                eligibleTiles++
                eligibleTilesByQuadrant[quadrant]++
                // Bounds cover every potentially usable warped sample. Confidence is not part
                // of the bound because it remains a soft, pixel-local rejection after admission.
                if (flowX.isFinite() && flowY.isFinite()) {
                    minX = minOf(minX, flowX)
                    maxX = maxOf(maxX, flowX)
                    minY = minOf(minY, flowY)
                    maxY = maxOf(maxY, flowY)
                }
            }
            if (eligible && flowX.isFinite() && flowY.isFinite() && confidence.isFinite() &&
                confidence >= confidenceThreshold
            ) {
                validTiles++
                quadrants[quadrant] = true
            }
            offset += 4
        }
        val totalTiles = (gridWidth * gridHeight).coerceAtLeast(1)
        val validFraction = validTiles.toFloat() / totalTiles
        val diagnosticDenominator = diagnosticTileCount.coerceAtLeast(1).toFloat()
        val meanValidity = meanValiditySum / diagnosticDenominator
        val meanReferenceObservability = meanReferenceObservabilitySum / diagnosticDenominator
        val meanCurrentObservability = meanCurrentObservabilitySum / diagnosticDenominator
        val coveredQuadrants = quadrants.count { it }
        val minimumEligibleTilesPerQuadrant =
            radianceFusionTuning.longEligibilityMinimumTilesPerQuadrant.coerceAtLeast(1)
        val eligibleQuadrants = eligibleTilesByQuadrant.count { tileCount ->
            tileCount >= minimumEligibleTilesPerQuadrant
        }
        val admission = planRadianceLongAdmission(
            evidence = RawRadianceLongAdmissionEvidence(
                validTileCount = validTiles,
                coveredQuadrants = coveredQuadrants,
                eligibleTileCount = eligibleTiles,
                eligibleQuadrants = eligibleQuadrants,
                referenceObservableTileCount = referenceObservableTiles,
                currentObservableTileCount = currentObservableTiles,
            ),
            requirements = RawRadianceLongAdmissionRequirements(
                minimumValidTiles = radianceFusionTuning.longFlowMinimumValidTiles,
                minimumQuadrants = radianceFusionTuning.longFlowMinimumQuadrants,
                minimumEligibleCoverage = radianceFusionTuning.longFlowMinimumEligibleCoverage,
                validatedPrecisionWeightCap = radianceFusionTuning.longPrecisionWeightCap,
            ),
        )
        if (enforceAdmission && admission.frameWeight <= 0f) {
            PLog.w(
                TAG,
                "Radiance long $stage alignment rejected frame=${plan.sourceFrameIndex} " +
                    "coverage=$validFraction validTiles=$validTiles/$totalTiles " +
                    "eligibleTiles=$eligibleTiles eligibleCoverage=${admission.eligibleCoverage} " +
                    "observableTiles=$referenceObservableTiles/$currentObservableTiles " +
                    "meanValidity=$meanValidity " +
                    "meanObservability=$meanReferenceObservability/$meanCurrentObservability " +
                    "quadrants=$coveredQuadrants/$eligibleQuadrants " +
                    "requiredQuadrants=${admission.requiredQuadrants} " +
                    "photonRatio=$photonExposureRatio admissionMode=${admission.mode} " +
                    "rejectionReasons=${admission.rejectionReasons} " +
                    "anchor=$anchorFrameIndex",
            )
            return null
        }
        PLog.i(
            TAG,
            if (enforceAdmission) {
                "Radiance long $stage alignment accepted frame=${plan.sourceFrameIndex} "
            } else {
                "Radiance long $stage support frame=${plan.sourceFrameIndex} "
            } +
                "actualEv=${plan.exposureDeltaEv} scale=${plan.exposureScale} " +
                "coverage=$validFraction validTiles=$validTiles/$totalTiles " +
                "eligibleTiles=$eligibleTiles eligibleCoverage=${admission.eligibleCoverage} " +
                "observableTiles=$referenceObservableTiles/$currentObservableTiles " +
                "meanValidity=$meanValidity " +
                "meanObservability=$meanReferenceObservability/$meanCurrentObservability " +
                "quadrants=$coveredQuadrants/$eligibleQuadrants " +
                "requiredQuadrants=${admission.requiredQuadrants} " +
                "anchor=$anchorFrameIndex gateWeight=${admission.frameWeight} " +
                "photonRatio=$photonExposureRatio admissionMode=${admission.mode} " +
                "rejectionReasons=${admission.rejectionReasons} " +
                "precisionCap=${admission.precisionWeightCap} " +
                "admissionDomain=${if (enforceAdmission) stage else "direct"} " +
                "flow=[$minX,$maxX]x[$minY,$maxY]",
        )
        return RadianceFlowSupport(
            validTileFraction = validFraction,
            validTileCount = validTiles,
            coveredQuadrants = coveredQuadrants,
            eligibleTileCount = eligibleTiles,
            eligibleQuadrants = eligibleQuadrants,
            eligibleCoverage = admission.eligibleCoverage,
            requiredQuadrants = admission.requiredQuadrants,
            admissionMode = admission.mode,
            frameWeight = admission.frameWeight,
            precisionWeightCap = admission.precisionWeightCap,
            minFlowXPlanePx = minX,
            maxFlowXPlanePx = maxX,
            minFlowYPlanePx = minY,
            maxFlowYPlanePx = maxY,
        )
    }

    private fun summarizeRadianceLongObservabilityInput(
        frameIndex: Int,
        side: String,
        rawTexture: Int,
        exposureScale: Float,
        noiseModel: RawNoiseModel,
        exposureTimeNs: Long,
        sensitivityIso: Int,
    ): RadianceLongObservabilitySummary {
        val program = radianceLongObservabilityDiagnosticProgram
        check(program != 0)
        bindFramebufferOutput(
            flowScratchTexture,
            "Radiance long $side observability diagnostic $frameIndex",
        )
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uRaw", 0, rawTexture)
        setCommonUniforms(program)
        val shotNoise = noiseModel.normalizedShotNoiseForShader(cfaPattern)
        val readNoise = noiseModel.normalizedReadNoiseForShader(cfaPattern)
        GLES31.glUniform1fv(
            uniformLocation(program, "uNoiseAlphaByChannel[0]"),
            4,
            shotNoise,
            0,
        )
        GLES31.glUniform1fv(
            uniformLocation(program, "uNoiseBetaByChannel[0]"),
            4,
            readNoise,
            0,
        )
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
        GLES31.glUniform1f(uniformLocation(program, "uExposureScale"), exposureScale)
        GLES31.glUniform1f(
            uniformLocation(program, "uRegionalStructureSnrStart"),
            radianceFusionTuning.longRegionalStructureSnrStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uRegionalStructureSnrFull"),
            radianceFusionTuning.longRegionalStructureSnrFull.coerceAtLeast(
                radianceFusionTuning.longRegionalStructureSnrStart + 1e-3f,
            ),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance long $side observability diagnostic $frameIndex")

        val values = readFlowTexture(
            texture = flowScratchTexture,
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "Radiance long $side observability diagnostic $frameIndex",
        )
        var signalSum = 0f
        var detailSum = 0f
        var noiseSigmaSum = 0f
        var alignmentObservabilitySum = 0f
        var lowSignalTiles = 0
        var observableTiles = 0
        var stronglyObservableTiles = 0
        var validTiles = 0
        val alignmentObservabilityValues = FloatArray(values.size / 4)
        var alignmentObservabilityCount = 0
        val observabilityThreshold = radianceFusionTuning.longEligibilityMinimumSupport
            .coerceIn(0f, 1f)
        var offset = 0
        while (offset + 3 < values.size) {
            val signal = values[offset]
            val detail = values[offset + 1]
            val noiseSigma = values[offset + 2]
            val alignmentObservability = values[offset + 3]
            if (signal.isFinite() && detail.isFinite() && noiseSigma.isFinite() &&
                alignmentObservability.isFinite()
            ) {
                signalSum += signal
                detailSum += detail
                noiseSigmaSum += noiseSigma
                alignmentObservabilitySum += alignmentObservability
                if (signal < 0.004f) lowSignalTiles++
                if (alignmentObservability >= observabilityThreshold) observableTiles++
                if (alignmentObservability >= 0.5f) stronglyObservableTiles++
                alignmentObservabilityValues[alignmentObservabilityCount++] =
                    alignmentObservability
                validTiles++
            }
            offset += 4
        }
        val denominator = validTiles.coerceAtLeast(1).toFloat()
        val meanDetail = detailSum / denominator
        val meanNoiseSigma = noiseSigmaSum / denominator
        val sortedObservability = alignmentObservabilityValues
            .copyOf(alignmentObservabilityCount)
            .apply { sort() }
        fun percentile(fraction: Float): Float {
            if (sortedObservability.isEmpty()) return 0f
            val index = ((sortedObservability.lastIndex) * fraction.coerceIn(0f, 1f)).toInt()
            return sortedObservability[index]
        }
        val summary = RadianceLongObservabilitySummary(
            meanSignal = signalSum / denominator,
            meanDetail = meanDetail,
            meanNoiseSigma = meanNoiseSigma,
            meanDetailSnr = meanDetail / meanNoiseSigma.coerceAtLeast(1e-10f),
            meanAlignmentObservability = alignmentObservabilitySum / denominator,
            observableTileCount = observableTiles,
            totalTileCount = validTiles,
        )
        PLog.i(
            TAG,
            "Radiance long observability input frame=$frameIndex side=$side " +
                "iso=$sensitivityIso exposureNs=$exposureTimeNs " +
                "exposureScale=$exposureScale noiseSource=" +
                "${if (noiseModel.hasValidCamera2Profile) "CAMERA2" else "FALLBACK"} " +
                "meanSignal=${summary.meanSignal} " +
                "meanDetail=${summary.meanDetail} " +
                "meanNoiseSigma=${summary.meanNoiseSigma} " +
                "meanDetailSnr=${summary.meanDetailSnr} " +
                "meanAlignmentObservability=${summary.meanAlignmentObservability} " +
                "observabilityP50=${percentile(0.50f)} " +
                "observabilityP90=${percentile(0.90f)} " +
                "lowSignalTiles=$lowSignalTiles/$validTiles " +
                "observableTiles=$observableTiles/$validTiles " +
                "observabilityThreshold=$observabilityThreshold " +
                "stronglyObservableTiles=$stronglyObservableTiles/$validTiles " +
                "noiseAlpha=${shotNoise.contentToString()} " +
                "noiseBeta=${readNoise.contentToString()}",
        )
        return summary
    }

    private fun computeRadianceLongEligibility(
        frameIndex: Int,
        sourceFlowTexture: Int,
        stage: String,
        referenceProxyTexture: Int = refProxy,
        currentProxyTexture: Int = curProxy,
    ) {
        val program = radianceLongEligibilityProgram
        check(program != 0)
        bindFramebufferOutput(flowScratchTexture, "Radiance long $stage eligibility $frameIndex")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uReferenceProxy", 0, referenceProxyTexture)
        bindTexture(program, "uCurrentProxy", 1, currentProxyTexture)
        bindTexture(program, "uComposedFlow", 2, sourceFlowTexture)
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance long $stage eligibility $frameIndex")
    }

    private fun timestampDistance(first: Long, second: Long): Long {
        if (first <= 0L || second <= 0L) return Long.MAX_VALUE
        return if (first >= second) first - second else second - first
    }

    private fun validateRadianceHighlightFlow(
        consistencyStartPx: Float = radianceFusionTuning.highlightFlowFbConsistencyStartPx,
        consistencyFullPx: Float = radianceFusionTuning.highlightFlowFbConsistencyFullPx,
        label: String = "highlight",
    ) {
        val program = radianceHighlightValidateFlowProgram
        check(program != 0)
        bindFramebufferOutput(flowScratchTexture, "Radiance highlight FB validation")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uForwardFlow", 0, flowTexture)
        bindTexture(program, "uReverseFlow", 1, radianceHighlightReverseFlowTexture)
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
        GLES31.glUniform1f(
            uniformLocation(program, "uFbConsistencyStart"),
            consistencyStartPx.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uFbConsistencyFull"),
            consistencyFullPx.coerceAtLeast(
                consistencyStartPx + 1e-3f,
            ),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance $label FB validation")
        copyRgbaTexture(
            flowScratchTexture,
            flowTexture,
            gridWidth,
            gridHeight,
            "Radiance $label validated flow copy",
        )
    }

    private fun propagateRadianceHighlightFlow(
        targetTexture: Int,
        guideProxyTexture: Int,
        label: String,
        passes: Int,
        confidenceDecay: Float,
        directConfidence: Float,
        minimumConfidence: Float,
        guideEdgeSigma: Float,
        allowInvalidGuidePropagation: Boolean,
    ) {
        val normalizedPasses = passes.coerceIn(0, 64)
        if (normalizedPasses == 0) return
        val program = radianceHighlightPropagateFlowProgram
        check(program != 0)
        repeat(normalizedPasses) { pass ->
            val input = if ((pass and 1) == 0) targetTexture else flowScratchTexture
            val output = if ((pass and 1) == 0) flowScratchTexture else targetTexture
            bindFramebufferOutput(output, "Radiance highlight propagate $label pass $pass")
            GLES30.glViewport(0, 0, gridWidth, gridHeight)
            GLES30.glUseProgram(program)
            bindTexture(program, "uInputFlow", 0, input)
            bindTexture(program, "uGuideProxy", 1, guideProxyTexture)
            GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
            GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
            GLES31.glUniform1f(
                uniformLocation(program, "uConfidenceDecay"),
                confidenceDecay.coerceIn(0f, 1f),
            )
            GLES31.glUniform1f(
                uniformLocation(program, "uDirectConfidence"),
                directConfidence.coerceIn(0f, 1f),
            )
            GLES31.glUniform1f(
                uniformLocation(program, "uMinimumConfidence"),
                minimumConfidence.coerceIn(0f, 1f),
            )
            GLES31.glUniform1f(
                uniformLocation(program, "uFlowConsistencySigma"),
                radianceFusionTuning.highlightFlowFbConsistencyFullPx.coerceAtLeast(0.25f),
            )
            GLES31.glUniform1f(
                uniformLocation(program, "uGuideEdgeSigma"),
                guideEdgeSigma.coerceAtLeast(1e-3f),
            )
            GLES31.glUniform1i(
                uniformLocation(program, "uAllowInvalidGuidePropagation"),
                if (allowInvalidGuidePropagation) 1 else 0,
            )
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("Radiance highlight propagate $label pass $pass")
        }
        if ((normalizedPasses and 1) != 0) {
            copyRgbaTexture(
                flowScratchTexture,
                targetTexture,
                gridWidth,
                gridHeight,
                "Radiance highlight propagated $label copy",
            )
        }
    }

    private fun composeRadianceHighlightFlow(
        anchorIsReference: Boolean,
        useBottleneckConfidence: Boolean = false,
        confidenceStart: Float = 0f,
        confidenceFull: Float = 1f,
    ) {
        val program = radianceHighlightComposeFlowProgram
        check(program != 0)
        val safeConfidenceStart = confidenceStart.coerceIn(0f, 0.999f)
        val safeConfidenceFull = confidenceFull.coerceIn(
            safeConfidenceStart + 1e-3f,
            1f,
        )
        bindFramebufferOutput(
            radianceHighlightComposedFlowTexture,
            "Radiance highlight compose flow",
        )
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uReferenceToAnchorFlow", 0, radianceHighlightAnchorFlowTexture)
        bindTexture(program, "uAnchorToShortFlow", 1, flowTexture)
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
        GLES31.glUniform1i(
            uniformLocation(program, "uAnchorIsReference"),
            if (anchorIsReference) 1 else 0,
        )
        GLES31.glUniform1i(
            uniformLocation(program, "uUseBottleneckConfidence"),
            if (useBottleneckConfidence) 1 else 0,
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uConfidenceStart"),
            safeConfidenceStart,
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uConfidenceFull"),
            safeConfidenceFull,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance highlight compose flow")
    }

    private fun buildRadianceHighlightSupport(
        referenceProxyTexture: Int,
        shortProxyTexture: Int,
        flowFieldTexture: Int,
    ) {
        val program = radianceHighlightSupportProgram
        check(program != 0)
        bindFramebufferOutput(
            radianceHighlightSupportTexture,
            "Radiance highlight local support",
        )
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uReferenceProxy", 0, referenceProxyTexture)
        bindTexture(program, "uShortProxy", 1, shortProxyTexture)
        bindTexture(program, "uComposedFlow", 2, flowFieldTexture)
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform2i(uniformLocation(program, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform1i(uniformLocation(program, "uTileSize"), flowGridSpacing)
        GLES31.glUniform1f(
            uniformLocation(program, "uPhotometricSigmaStart"),
            radianceFusionTuning.highlightPhotometricSigmaStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uPhotometricSigmaFull"),
            radianceFusionTuning.highlightPhotometricSigmaFull.coerceAtLeast(
                radianceFusionTuning.highlightPhotometricSigmaStart + 1e-3f,
            ),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance highlight local support")
    }

    private fun inferRadianceHighlightFlowFromCollar() {
        val program = radianceHighlightInferFlowProgram
        check(program != 0)
        bindFramebufferOutput(
            radianceHighlightComposedFlowTexture,
            "Radiance highlight collar flow inference",
        )
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uDirectFlow", 0, flowTexture)
        bindTexture(program, "uDirectSupport", 1, radianceHighlightSupportTexture)
        GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(
            uniformLocation(program, "uRadiusTiles"),
            radianceFusionTuning.highlightCollarRadiusTiles.coerceIn(1, 4),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uNeedStart"),
            radianceFusionTuning.highlightNeedTileStart.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uNeedFull"),
            radianceFusionTuning.highlightNeedTileThreshold.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uDirectConfidenceStart"),
            radianceFusionTuning.highlightDirectFlowConfidence.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uDirectConfidenceFull"),
            radianceFusionTuning.highlightDirectFlowFullConfidence.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uShortValidityThreshold"),
            radianceFusionTuning.highlightShortValidityTileThreshold.coerceIn(0f, 0.999f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uPhotometricThreshold"),
            radianceFusionTuning.highlightCollarPhotometricThreshold.coerceIn(0f, 0.999f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uMinimumSampleWeight"),
            radianceFusionTuning.highlightCollarMinimumWeight.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uFullSampleWeight"),
            radianceFusionTuning.highlightCollarFullWeight.coerceAtLeast(
                radianceFusionTuning.highlightCollarMinimumWeight + 1e-3f,
            ),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uMinimumSectorWeight"),
            radianceFusionTuning.highlightCollarMinimumSectorWeight.coerceAtLeast(0f),
        )
        GLES31.glUniform1i(
            uniformLocation(program, "uMinimumSectors"),
            radianceFusionTuning.highlightCollarMinimumSectors.coerceIn(1, 4),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uFlowSigmaStart"),
            radianceFusionTuning.highlightCollarFlowSigmaStartPx.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uFlowSigmaFull"),
            radianceFusionTuning.highlightCollarFlowSigmaFullPx.coerceAtLeast(
                radianceFusionTuning.highlightCollarFlowSigmaStartPx + 1e-3f,
            ),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance highlight collar flow inference")
    }

    private fun buildRadianceHighlightHoleRejectionSeed() {
        val program = radianceHighlightRejectionSeedProgram
        check(program != 0)
        bindFramebufferOutput(
            radianceHighlightAnchorFlowTexture,
            "Radiance highlight hole rejection seed",
        )
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uInferredFlow", 0, radianceHighlightComposedFlowTexture)
        bindTexture(program, "uCandidateSupport", 1, radianceHighlightSupportTexture)
        setRadianceHighlightHoleDecisionUniforms(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance highlight hole rejection seed")
    }

    private fun propagateRadianceHighlightHoleRejection() {
        val program = radianceHighlightRejectionPropagateProgram
        check(program != 0)
        val passes = radianceFusionTuning.highlightHoleRejectionPropagationPasses
            .coerceIn(0, 16)
        repeat(passes) { pass ->
            val input = if ((pass and 1) == 0) {
                radianceHighlightAnchorFlowTexture
            } else {
                flowScratchTexture
            }
            val output = if ((pass and 1) == 0) {
                flowScratchTexture
            } else {
                radianceHighlightAnchorFlowTexture
            }
            bindFramebufferOutput(
                output,
                "Radiance highlight hole rejection propagation $pass",
            )
            GLES30.glViewport(0, 0, gridWidth, gridHeight)
            GLES30.glUseProgram(program)
            bindTexture(program, "uInputRejection", 0, input)
            GLES31.glUniform2i(uniformLocation(program, "uGridSize"), gridWidth, gridHeight)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("Radiance highlight hole rejection propagation $pass")
        }
        if ((passes and 1) != 0) {
            copyRgbaTexture(
                flowScratchTexture,
                radianceHighlightAnchorFlowTexture,
                gridWidth,
                gridHeight,
                "Radiance highlight propagated rejection copy",
            )
        }
    }

    private fun applyRadianceHighlightHoleDecision() {
        val program = radianceHighlightApplyHoleDecisionProgram
        check(program != 0)
        bindFramebufferOutput(flowTexture, "Radiance highlight apply hole decision")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(program)
        bindTexture(program, "uInferredFlow", 0, radianceHighlightComposedFlowTexture)
        bindTexture(program, "uCandidateSupport", 1, radianceHighlightSupportTexture)
        bindTexture(program, "uRejection", 2, radianceHighlightAnchorFlowTexture)
        setRadianceHighlightHoleDecisionUniforms(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("Radiance highlight apply hole decision")
    }

    private fun setRadianceHighlightHoleDecisionUniforms(program: Int) {
        GLES31.glUniform1f(
            uniformLocation(program, "uNeedThreshold"),
            radianceFusionTuning.highlightNeedTileThreshold.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uAcceptanceConfidence"),
            radianceFusionTuning.highlightHoleAcceptanceConfidence.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uShortValidityThreshold"),
            radianceFusionTuning.highlightShortValidityTileThreshold.coerceIn(0f, 1f),
        )
    }

    private fun summarizeRadianceHighlightAlignment(
        highlight: RawRadianceHighlightFrame,
    ): RadianceHighlightAlignment? {
        // This is the only highlight GPU -> CPU transfer. It reads the low-resolution final gate
        // solely to bound later tiled demosaic work; no per-region fitting or classification is
        // performed on the CPU.
        val flowValues = readFlowTextures(
            textures = listOf(flowTexture),
            textureWidth = gridWidth,
            textureHeight = gridHeight,
            label = "Radiance highlight final flow bounds",
        ).single()
        var minX = 0f
        var maxX = 0f
        var minY = 0f
        var maxY = 0f
        var acceptedTileCount = 0
        var offset = 0
        while (offset + 3 < flowValues.size) {
            val flowX = flowValues[offset]
            val flowY = flowValues[offset + 1]
            val confidence = flowValues[offset + 3]
            if (flowX.isFinite() && flowY.isFinite() && confidence.isFinite() &&
                confidence >= 0.5f
            ) {
                acceptedTileCount++
                minX = minOf(minX, flowX)
                maxX = maxOf(maxX, flowX)
                minY = minOf(minY, flowY)
                maxY = maxOf(maxY, flowY)
            }
            offset += 4
        }
        if (acceptedTileCount == 0) {
            PLog.w(
                TAG,
                "Radiance highlight disabled: no saturated hole passed collar enclosure, " +
                    "flow consistency, and short-headroom gates",
            )
            return null
        }
        val totalTiles = (gridWidth * gridHeight).coerceAtLeast(1)
        val admittedTileFraction = acceptedTileCount.toFloat() / totalTiles
        PLog.i(
            TAG,
            "Radiance highlight GPU hole decision admittedTiles=" +
                "$acceptedTileCount/$totalTiles admittedTileFraction=$admittedTileFraction " +
                "normalReference=true shortAsReference=false cpuRegionPlanning=false " +
                "flow=[$minX,$maxX]x[$minY,$maxY] " +
                "ratio=${highlight.exposureRatio} baseline=${highlight.baselineExposureEv}EV",
        )
        return RadianceHighlightAlignment(
            frame = highlight,
            flowTexture = flowTexture,
            minFlowXPlanePx = minX,
            maxFlowXPlanePx = maxX,
            minFlowYPlanePx = minY,
            maxFlowYPlanePx = maxY,
        )
    }

    private fun computeRobustness(
        referenceProxyTexture: Int = refProxy,
        currentProxyTexture: Int = curProxy,
    ) {
        GLES31.glUseProgram(robustnessProgram)
        bindTexture(robustnessProgram, "uReference", 0, referenceProxyTexture)
        bindTexture(robustnessProgram, "uCurrent", 1, currentProxyTexture)
        bindTexture(robustnessProgram, "uFlowGrid", 2, flowTexture)
        bindImage(3, robustnessTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
        setCommonUniforms(robustnessProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(robustnessProgram, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(robustnessProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(robustnessProgram, "uTileSize"), flowGridSpacing)
        setNrRobustnessUniforms(robustnessProgram)
        GLES31.glDispatchCompute(groupCount(planeWidth), groupCount(planeHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("computeRobustness")
    }

    private fun computeTileMask(
        referenceProxyTexture: Int = refProxy,
        currentProxyTexture: Int = curProxy,
    ) {
        bindFramebufferOutput(tileMaskTexture, "computeTileMask")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(tileMaskProgram)
        bindTexture(tileMaskProgram, "uReference", 0, referenceProxyTexture)
        bindTexture(tileMaskProgram, "uRobustness", 1, robustnessTexture)
        bindTexture(tileMaskProgram, "uFlowGrid", 3, flowTexture)
        setDetailConfidenceUniforms(tileMaskProgram)
        if (visualizeRadianceFusionRejections) {
            bindTexture(tileMaskProgram, "uCurrent", 2, currentProxyTexture)
        }
        GLES31.glUniform2i(GLES31.glGetUniformLocation(tileMaskProgram, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(tileMaskProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(tileMaskProgram, "uTileSize"), flowGridSpacing)
        setTileMaskUniforms(tileMaskProgram)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("computeTileMask")
    }

    private fun estimateCurrentRegistration(
        referencePyramid: List<TextureLevel>,
        currentPyramid: List<TextureLevel>,
        frameIndex: Int,
    ): Boolean {
        val samples = readRegistrationSamples()
        val flowEstimate = if (samples != null) {
            RawStackFrameRegistrationEstimator.estimate(
                setup = registrationSetup,
                samples = samples,
                stage = RawStackRegistrationStage.BLEND,
            )
        } else {
            RawStackFrameRegistrationEstimator.estimate(
                setup = registrationSetup,
                samples = emptyList(),
                stage = RawStackRegistrationStage.BLEND,
            )
        }
        val seedShiftPlane = registrationSeedShiftPlane(samples)
        val globalEstimate = readGlobalRegistrationCandidates(
            referencePyramid = referencePyramid,
            currentPyramid = currentPyramid,
            seedShiftPlane = seedShiftPlane,
        )?.let { candidates ->
            RawStackFrameRegistrationEstimator.estimateGlobalTranslation(
                setup = registrationSetup,
                candidates = candidates,
                stage = RawStackRegistrationStage.BLEND,
            )
        }
        val seedTranslation = registrationSeedTranslation(seedShiftPlane)
        val estimate = selectRegistrationEstimate(globalEstimate, flowEstimate, seedTranslation)
        val acceptance = resolveRegistrationAcceptance(estimate, seedTranslation)
        currentRegistrationTransform = acceptance.transform
        currentRegistrationSrTransform = acceptance.srTransform
        val srTranslation = registrationTranslation(currentRegistrationSrTransform)
        currentTemporalFlowPhase = srTranslation
        val srPhaseNovelty = if (acceptance.srWeight > 0f && srTranslation != null) {
            superResolutionPhaseTracker.noveltyWeight(srTranslation.dx, srTranslation.dy)
        } else {
            0f
        }
        currentRegistrationSrWeight = acceptance.srWeight
        currentRegistrationSrDetailWeight = acceptance.srWeight * srPhaseNovelty
        if (hwmfDebug.collectMetrics) {
            recordRegistrationGlobalEstimate(globalEstimate)
            recordRegistrationEstimate(estimate, currentRegistrationTransform)
        }
        val accepted = acceptance.accepted
        currentRegistrationNrWeight = if (accepted) 1.0f else 0.0f
        if (hwmfDebug.logCompactSummary) {
            val candidateTranslation = registrationTranslation(estimate.candidateTransform)
            PLog.d(
                TAG,
                "Radiance registration frame=$frameIndex source=${estimate.source} conf=${estimate.confidence} " +
                    "forceIdentity=${estimate.forceIdentity} accepted=$accepted accept=${acceptance.reason} " +
                    "global=${globalEstimate.globalSummaryOrEmpty()} " +
                    "seed=${seedTranslation.translationSummary()} " +
                    "candidate=${candidateTranslation.translationSummary()} " +
                    "seedDist=${candidateTranslation.seedDistance(seedTranslation).formatPx()} " +
                    "consDist=${registrationConsistencyDistance(candidateTranslation).formatPx()} " +
                    "srWeight=${currentRegistrationSrWeight.formatWeight()} " +
                    "srDetailWeight=${currentRegistrationSrDetailWeight.formatWeight()} " +
                    "srPhaseNovelty=${srPhaseNovelty.formatWeight()} " +
                    "srPhaseBins=${superResolutionPhaseTracker.occupiedBinCount}/${superResolutionPhaseTracker.totalBinCount} " +
                    "srSource=${acceptance.srTransformSource} " +
                    "srTransform=${srTranslation.translationSummary()} " +
                    "srSeed=${acceptance.srSeedWeight.formatWeight()} " +
                    "srCons=${acceptance.srConsistencyWeight.formatWeight()} " +
                    "flowSamples=${flowEstimate.usedSampleCount}/${flowEstimate.sampleCount} " +
                    "inlier=${estimate.inlierRatio.percentString()} resP90=${estimate.residualP90Px.formatPx()} " +
                    "matrix=${currentRegistrationTransform.matrixAt(0).matrixSummary()}"
            )
        }
        if (accepted) {
            recordAcceptedRegistrationTranslation(currentRegistrationTransform)
            if (currentRegistrationSrWeight > 0.0f) {
                recordAcceptedSrRegistrationTranslation(currentRegistrationSrTransform)
            }
        }
        return accepted
    }

    private fun applyTemporalGraphFrameQuality(
        resources: TemporalGraphSeedResources,
        frameIndex: Int,
    ): Boolean {
        val summary = resources.summariesByFrame.getOrNull(frameIndex)
        currentRegistrationTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
        currentRegistrationSrTransform = registrationSetup.identityTransform(RawStackRegistrationStage.BLEND)
        if (summary == null) {
            currentRegistrationSrWeight = 0f
            currentRegistrationNrWeight = 0f
            currentRegistrationSrDetailWeight = 0f
            currentTemporalFlowPhase = null
            return false
        }
        val phase = RegistrationTranslation(
            dx = summary.medianDxPlanePx * 2f,
            dy = summary.medianDyPlanePx * 2f,
        )
        currentTemporalFlowPhase = phase
        val detailAccepted = summary.validTileFraction >= hwmfPrefilter.temporalGraphFrameMinCoverage &&
            summary.meanConfidence >= hwmfPrefilter.temporalGraphFrameMinMeanConfidence &&
            summary.coveredQuadrants >= hwmfPrefilter.temporalGraphFrameMinQuadrants.coerceIn(1, 4) &&
            summary.residualP90PlanePx <= hwmfPrefilter.temporalGraphFrameMaxResidualP90PlanePx
        val detailCoverageWeight = smoothStep(
            hwmfPrefilter.temporalGraphFrameMinCoverage,
            max(hwmfPrefilter.temporalGraphFrameMinCoverage * 3f, 0.35f),
            summary.validTileFraction,
        )
        val detailConfidenceWeight = smoothStep(
            hwmfPrefilter.temporalGraphFrameMinMeanConfidence,
            max(hwmfPrefilter.temporalGraphFrameMinMeanConfidence * 3f, 0.20f),
            summary.meanConfidence,
        )
        val detailResidualWeight = 1f - smoothStep(
            hwmfPrefilter.temporalGraphFrameMaxResidualP90PlanePx * 0.5f,
            hwmfPrefilter.temporalGraphFrameMaxResidualP90PlanePx,
            summary.residualP90PlanePx,
        )
        val spatialWeight = summary.coveredQuadrants / 4f
        val detailFrameWeight = minOf(
            detailCoverageWeight,
            detailConfidenceWeight,
            detailResidualWeight,
            spatialWeight,
        ).coerceIn(0f, 1f)
        val nrUsable = summary.validTileCount > 0 &&
            summary.totalTileCount > 0 &&
            summary.coveredQuadrants > 0 &&
            summary.validTileFraction.isFinite() &&
            summary.meanConfidence.isFinite() &&
            summary.residualP90PlanePx.isFinite()
        val nrCoverageWeight = smoothStep(
            0f,
            max(hwmfPrefilter.temporalGraphFrameMinCoverage * 3f, 0.35f),
            summary.validTileFraction,
        )
        val nrConfidenceWeight = smoothStep(
            0f,
            max(hwmfPrefilter.temporalGraphFrameMinMeanConfidence * 3f, 0.20f),
            summary.meanConfidence,
        )
        val nrResidualWeight = 1f - smoothStep(
            hwmfPrefilter.temporalGraphFrameMaxResidualP90PlanePx,
            hwmfPrefilter.temporalGraphFrameMaxResidualP90PlanePx * 2f,
            summary.residualP90PlanePx,
        )
        val nrFrameWeight = minOf(
            nrCoverageWeight,
            nrConfidenceWeight,
            nrResidualWeight,
            spatialWeight,
        ).coerceIn(0f, 1f)
        val nrAccepted = nrUsable && nrFrameWeight > 0f
        val accepted = nrAccepted
        val phaseNovelty = if (detailAccepted) {
            superResolutionPhaseTracker.noveltyWeight(phase.dx, phase.dy)
        } else {
            0f
        }
        currentRegistrationSrWeight = if (detailAccepted) detailFrameWeight else 0f
        currentRegistrationNrWeight = if (nrAccepted) nrFrameWeight else 0f
        currentRegistrationSrDetailWeight = currentRegistrationSrWeight * phaseNovelty
        RawStackRuntimeDebug.d(TAG) {
            "Temporal frame=$frameIndex nrAccepted=$nrAccepted detailAccepted=$detailAccepted " +
                "tiles=${summary.validTileCount}/" +
                "${summary.totalTileCount} quadrants=${summary.coveredQuadrants} " +
                "confidence=${summary.meanConfidence.formatWeight()} " +
                "resP90=${summary.residualP90PlanePx.formatPx()} " +
                "phase=[${phase.dx.formatPx()} ${phase.dy.formatPx()}] " +
                "nrWeight=${currentRegistrationNrWeight.formatWeight()} " +
                "detailWeight=${currentRegistrationSrWeight.formatWeight()}"
        }
        return accepted
    }

    private fun resolveRegistrationAcceptance(
        estimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): RegistrationAcceptance {
        if (!estimate.forceIdentity) {
            val candidateSrGate = registrationSrGate(estimate, seedTranslation)
            val seedSrGate = registrationSeedSrGate(estimate, seedTranslation)
            val seedSrTransform = seedTranslation?.let { registrationTransformFromTranslation(it, estimate.transform) }
            val useSeedForSr = seedSrGate != null &&
                seedSrTransform != null &&
                seedSrGate.weight > candidateSrGate.weight + 0.05f
            val srGate = if (useSeedForSr) seedSrGate else candidateSrGate
            val effectiveTransform = if (useSeedForSr) seedSrTransform else estimate.transform
            return RegistrationAcceptance(
                accepted = true,
                transform = effectiveTransform,
                reason = if (useSeedForSr) "strict-seed" else "strict",
                srTransform = effectiveTransform,
                srTransformSource = if (useSeedForSr) "SEED_TRANSLATION" else "CANDIDATE",
                srWeight = srGate.weight,
                srSeedWeight = srGate.seedWeight,
                srConsistencyWeight = srGate.consistencyWeight,
            )
        }
        val seedFallbackReason = seedFallbackRegistrationAcceptanceReason(estimate, seedTranslation)
        if (seedFallbackReason != null && seedTranslation != null) {
            val seedTransform = registrationTransformFromTranslation(
                translation = seedTranslation,
                template = estimate.transform,
                rawConfidence = registrationSetup.confidenceConfig.forceIdentityThreshold,
            )
            val srGate = registrationSeedFallbackSrGate(seedTranslation)
            return RegistrationAcceptance(
                accepted = true,
                transform = seedTransform,
                reason = seedFallbackReason,
                srTransform = seedTransform,
                srTransformSource = "SEED_FALLBACK",
                srWeight = srGate.weight,
                srSeedWeight = srGate.seedWeight,
                srConsistencyWeight = srGate.consistencyWeight,
            )
        }
        val nrBaseReason = nrBaseRegistrationAcceptanceReason(estimate, seedTranslation)
        if (nrBaseReason != null) {
            return RegistrationAcceptance(
                accepted = true,
                transform = estimate.candidateTransform.copy(forceIdentity = false),
                reason = nrBaseReason,
                srTransform = estimate.candidateTransform.copy(forceIdentity = false),
                srTransformSource = "NR_BASE",
                srWeight = 0.0f,
                srSeedWeight = 0.0f,
                srConsistencyWeight = 0.0f,
            )
        }
        return RegistrationAcceptance(
            accepted = false,
            transform = estimate.transform,
            reason = "reject",
            srTransform = estimate.transform,
            srTransformSource = "REJECT",
            srWeight = 0.0f,
            srSeedWeight = 0.0f,
            srConsistencyWeight = 0.0f,
        )
    }

    private fun nrBaseRegistrationAcceptanceReason(
        estimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): String? {
        if (estimate.source != RawStackRegistrationSource.IMAGE_TRANSLATION) return null
        val hasRelaxedConfidence = estimate.confidence >= hwmfBlend.denoiseRelaxedRegistrationConfidenceMin
        val hasSeedConfidence = estimate.confidence >= hwmfBlend.denoiseSeedRegistrationConfidenceMin
        val hasConsistentConfidence = estimate.confidence >= hwmfBlend.denoiseConsistentRegistrationConfidenceMin
        if (!hasRelaxedConfidence && !hasSeedConfidence && !hasConsistentConfidence) return null
        if (!estimate.globalCoverage.isFinite() ||
            estimate.globalCoverage < hwmfBlend.denoiseRelaxedRegistrationCoverageMin
        ) {
            return null
        }
        if (!estimate.globalBestScore.isFinite() ||
            estimate.globalBestScore > hwmfBlend.denoiseRelaxedRegistrationScoreMax
        ) {
            return null
        }
        val translation = registrationTranslation(estimate.candidateTransform) ?: return null
        if (translation.magnitude > hwmfBlend.denoiseRelaxedRegistrationTranslationMaxPx) return null
        if (hasSeedConfidence && isSeedConsistentNrBaseRegistration(estimate, translation, seedTranslation)) {
            return "nr-base-denoise-seed"
        }
        if (hasSeedConfidence && isTightSeedNrBaseRegistration(estimate, translation, seedTranslation)) {
            return "nr-base-denoise-seed-tight"
        }
        if (hasRelaxedConfidence && isRelaxedNrBaseRegistration(estimate, translation, seedTranslation)) {
            return "nr-base-denoise"
        }
        if (hasRelaxedConfidence && isStaticNrBaseRegistration(estimate, translation, seedTranslation)) {
            return "nr-base-denoise-static"
        }
        if (hasConsistentConfidence && isBurstConsistentNrBaseRegistration(estimate, translation)) {
            return "nr-base-denoise-consistent"
        }
        return null
    }

    private fun seedFallbackRegistrationAcceptanceReason(
        estimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): String? {
        val seed = seedTranslation ?: return null
        if (!estimate.globalBestScore.isFinite() ||
            estimate.globalBestScore > hwmfBlend.denoiseSeedFallbackRegistrationScoreMax
        ) {
            return null
        }
        if (!estimate.globalCoverage.isFinite() ||
            estimate.globalCoverage < hwmfBlend.denoiseSeedFallbackRegistrationCoverageMin
        ) {
            return null
        }
        if (seed.magnitude > hwmfBlend.denoiseSeedFallbackRegistrationTranslationMaxPx) return null
        val median = acceptedRegistrationMedianTranslation()
        if (median != null &&
            seed.distanceTo(median) > hwmfBlend.denoiseSeedFallbackRegistrationDeltaMaxPx
        ) {
            return null
        }
        return "nr-base-denoise-seed-flow"
    }

    private fun registrationSrGate(
        estimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): RegistrationSrGate {
        if (estimate.forceIdentity) return RegistrationSrGate.Zero
        val translation = registrationTranslation(estimate.candidateTransform) ?: return RegistrationSrGate.Zero
        val confidenceWeight = smoothStep(
            hwmfSr.registrationConfidenceStart.toFloat(),
            hwmfSr.registrationConfidenceFull.toFloat(),
            estimate.confidence.toFloat(),
        )
        val sourceWeight = when (estimate.source) {
            RawStackRegistrationSource.IMAGE_TRANSLATION -> imageTranslationSrWeight(estimate)
            RawStackRegistrationSource.FLOW_AFFINE -> flowAffineSrWeight(estimate)
        }
        val seedWeight = registrationSrSeedWeight(translation, seedTranslation)
        val consistencyWeight = registrationSrConsistencyWeight(translation)
        return RegistrationSrGate(
            weight = (
                confidenceWeight *
                    sourceWeight *
                    seedWeight *
                    consistencyWeight
                ).coerceIn(0.0f, 1.0f),
            seedWeight = seedWeight,
            consistencyWeight = consistencyWeight,
        )
    }

    private fun registrationSeedSrGate(
        estimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): RegistrationSrGate? {
        if (estimate.forceIdentity) return null
        if (estimate.source != RawStackRegistrationSource.IMAGE_TRANSLATION) return null
        val seed = seedTranslation ?: return null
        val confidenceWeight = smoothStep(
            hwmfSr.registrationConfidenceStart.toFloat(),
            hwmfSr.registrationConfidenceFull.toFloat(),
            estimate.confidence.toFloat(),
        )
        val marginWeight = smoothStep(
            hwmfSr.registrationMarginStart,
            hwmfSr.registrationMarginFull,
            estimate.globalScoreMargin,
        )
        val coverageWeight = smoothStep(
            hwmfSr.registrationCoverageStart,
            hwmfSr.registrationCoverageFull,
            estimate.globalCoverage,
        )
        val consistencyWeight = registrationSrConsistencyWeight(seed)
        return RegistrationSrGate(
            weight = (
                confidenceWeight *
                    marginWeight *
                    coverageWeight *
                    consistencyWeight
                ).coerceIn(0.0f, 1.0f),
            seedWeight = 1.0f,
            consistencyWeight = consistencyWeight,
        )
    }

    private fun imageTranslationSrWeight(estimate: RawStackRegistrationEstimate): Float {
        val marginWeight = smoothStep(
            hwmfSr.registrationMarginStart,
            hwmfSr.registrationMarginFull,
            estimate.globalScoreMargin,
        )
        val coverageWeight = smoothStep(
            hwmfSr.registrationCoverageStart,
            hwmfSr.registrationCoverageFull,
            estimate.globalCoverage,
        )
        return (marginWeight * coverageWeight).coerceIn(0.0f, 1.0f)
    }

    private fun flowAffineSrWeight(estimate: RawStackRegistrationEstimate): Float {
        val inlierWeight = smoothStep(
            hwmfSr.registrationAffineInlierStart,
            hwmfSr.registrationAffineInlierFull,
            estimate.inlierRatio,
        )
        val residualWeight = 1.0f - smoothStep(
            hwmfSr.registrationAffineResidualStartPx,
            hwmfSr.registrationAffineResidualEndPx,
            estimate.residualP90Px,
        )
        return (inlierWeight * residualWeight).coerceIn(0.0f, 1.0f)
    }

    private fun registrationSeedFallbackSrGate(seed: RegistrationTranslation): RegistrationSrGate {
        val consistencyWeight = registrationSrConsistencyWeight(seed)
        val motionWeight = 1.0f - smoothStep(
            hwmfBlend.denoiseSeedFallbackRegistrationTranslationMaxPx * 0.75f,
            hwmfBlend.denoiseSeedFallbackRegistrationTranslationMaxPx,
            seed.magnitude,
        )
        val weight = (
            hwmfSr.registrationSeedFallbackWeight *
                consistencyWeight *
                motionWeight
            ).coerceIn(0.0f, 1.0f)
        return RegistrationSrGate(
            weight = weight,
            seedWeight = 1.0f,
            consistencyWeight = consistencyWeight,
        )
    }

    private fun registrationSrSeedWeight(
        translation: RegistrationTranslation,
        seedTranslation: RegistrationTranslation?,
    ): Float {
        val seed = seedTranslation ?: return 1.0f
        val distance = translation.distanceTo(seed)
        return 1.0f - smoothStep(
            hwmfSr.registrationSeedDistanceStartPx,
            hwmfSr.registrationSeedDistanceEndPx,
            distance,
        )
    }

    private fun registrationSrConsistencyWeight(translation: RegistrationTranslation): Float {
        val distance = registrationSrConsistencyDistance(translation)
        if (!distance.isFinite()) return 1.0f
        return 1.0f - smoothStep(
            hwmfSr.registrationConsistencyDistanceStartPx,
            hwmfSr.registrationConsistencyDistanceEndPx,
            distance,
        )
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        if (!edge0.isFinite() || !edge1.isFinite() || !value.isFinite()) return 0.0f
        val lo = minOf(edge0, edge1)
        val hi = max(edge0, edge1)
        if (hi <= lo) return if (value >= hi) 1.0f else 0.0f
        val t = ((value - lo) / (hi - lo)).coerceIn(0.0f, 1.0f)
        return t * t * (3.0f - 2.0f * t)
    }

    private fun isSeedConsistentNrBaseRegistration(
        estimate: RawStackRegistrationEstimate,
        translation: RegistrationTranslation,
        seedTranslation: RegistrationTranslation?,
    ): Boolean {
        if (!estimate.globalScoreMargin.isFinite() ||
            estimate.globalScoreMargin < hwmfBlend.denoiseSeedRegistrationMarginMin
        ) {
            return false
        }
        val seed = seedTranslation ?: return false
        return translation.distanceTo(seed) <= hwmfBlend.denoiseSeedRegistrationDeltaMaxPx
    }

    private fun isTightSeedNrBaseRegistration(
        estimate: RawStackRegistrationEstimate,
        translation: RegistrationTranslation,
        seedTranslation: RegistrationTranslation?,
    ): Boolean {
        if (!estimate.globalScoreMargin.isFinite() ||
            estimate.globalScoreMargin < hwmfBlend.denoiseSeedTightRegistrationMarginMin
        ) {
            return false
        }
        val seed = seedTranslation ?: return false
        return translation.distanceTo(seed) <= hwmfBlend.denoiseSeedTightRegistrationDeltaMaxPx &&
            translation.magnitude <= hwmfBlend.denoiseSeedTightRegistrationTranslationMaxPx
    }

    private fun isRelaxedNrBaseRegistration(
        estimate: RawStackRegistrationEstimate,
        translation: RegistrationTranslation,
        seedTranslation: RegistrationTranslation?,
    ): Boolean {
        if (!estimate.globalScoreMargin.isFinite() ||
            estimate.globalScoreMargin < hwmfBlend.denoiseRelaxedRegistrationMarginMin
        ) {
            return false
        }
        val seed = seedTranslation ?: return true
        return translation.distanceTo(seed) <= hwmfBlend.denoiseSeedRegistrationDeltaMaxPx
    }

    private fun isStaticNrBaseRegistration(
        estimate: RawStackRegistrationEstimate,
        translation: RegistrationTranslation,
        seedTranslation: RegistrationTranslation?,
    ): Boolean {
        if (!estimate.globalScoreMargin.isFinite() ||
            estimate.globalScoreMargin < hwmfBlend.denoiseStaticRegistrationMarginMin
        ) {
            return false
        }
        val seed = seedTranslation
        if (seed != null && translation.distanceTo(seed) > hwmfBlend.denoiseSeedRegistrationDeltaMaxPx) {
            return false
        }
        return translation.magnitude <= hwmfBlend.denoiseStaticRegistrationTranslationMaxPx
    }

    private fun isBurstConsistentNrBaseRegistration(
        estimate: RawStackRegistrationEstimate,
        translation: RegistrationTranslation,
    ): Boolean {
        if (!estimate.globalScoreMargin.isFinite() ||
            estimate.globalScoreMargin < hwmfBlend.denoiseConsistentRegistrationMarginMin
        ) {
            return false
        }
        val median = acceptedRegistrationMedianTranslation() ?: return false
        return translation.distanceTo(median) <= hwmfBlend.denoiseConsistentRegistrationDeltaMaxPx
    }

    private fun recordAcceptedRegistrationTranslation(transform: RawStackPerspectiveTransform) {
        val translation = registrationTranslation(transform) ?: return
        acceptedRegistrationTranslations += translation
    }

    private fun recordAcceptedSrRegistrationTranslation(transform: RawStackPerspectiveTransform) {
        val translation = registrationTranslation(transform) ?: return
        acceptedSrRegistrationTranslations += translation
    }

    private fun shouldAccumulateSuperResolutionFrame(): Boolean {
        // Registration/robustness decide whether a frame is safe. Phase novelty only modulates
        // its SR contribution; using it as a hard gate makes a zero-quantized temporal graph reject
        // every otherwise valid frame (all frames land in the reference phase bin).
        return currentRegistrationNrWeight > 0f
    }

    private fun recordAccumulatedSuperResolutionPhase() {
        val translation = currentTemporalFlowPhase ?: return
        superResolutionPhaseTracker.record(translation.dx, translation.dy)
    }

    private fun acceptedRegistrationMedianTranslation(): RegistrationTranslation? {
        val minAccepted = hwmfBlend.denoiseConsistentRegistrationMinAccepted.coerceAtLeast(1)
        if (acceptedRegistrationTranslations.size < minAccepted) return null
        val xs = acceptedRegistrationTranslations.map { it.dx }.sorted()
        val ys = acceptedRegistrationTranslations.map { it.dy }.sorted()
        return RegistrationTranslation(
            dx = medianOfSorted(xs),
            dy = medianOfSorted(ys),
        )
    }

    private fun acceptedSrRegistrationExpectedTranslation(): RegistrationTranslation? {
        val minAccepted = hwmfBlend.denoiseConsistentRegistrationMinAccepted.coerceAtLeast(1)
        if (acceptedSrRegistrationTranslations.size < minAccepted) return null
        val last = acceptedSrRegistrationTranslations.last()
        if (acceptedSrRegistrationTranslations.size < 2) return last
        val previous = acceptedSrRegistrationTranslations[acceptedSrRegistrationTranslations.lastIndex - 1]
        val maxPredictionStep = hwmfSr.registrationConsistencyDistanceEndPx.coerceAtLeast(0f)
        return RegistrationTranslation(
            dx = last.dx + (last.dx - previous.dx).coerceIn(-maxPredictionStep, maxPredictionStep),
            dy = last.dy + (last.dy - previous.dy).coerceIn(-maxPredictionStep, maxPredictionStep),
        )
    }

    private fun registrationConsistencyDistance(translation: RegistrationTranslation?): Float {
        if (translation == null) return Float.NaN
        val median = acceptedRegistrationMedianTranslation() ?: return Float.NaN
        return translation.distanceTo(median)
    }

    private fun registrationSrConsistencyDistance(translation: RegistrationTranslation?): Float {
        if (translation == null) return Float.NaN
        val expected = acceptedSrRegistrationExpectedTranslation() ?: return Float.NaN
        val last = acceptedSrRegistrationTranslations.lastOrNull() ?: return Float.NaN
        return minOf(translation.distanceTo(last), translation.distanceTo(expected))
    }

    private fun registrationSeedTranslation(seedShiftPlane: FloatArray): RegistrationTranslation? {
        if (seedShiftPlane.size < 2) return null
        val dx = seedShiftPlane[0] * 2.0f
        val dy = seedShiftPlane[1] * 2.0f
        if (!dx.isFinite() || !dy.isFinite()) return null
        return RegistrationTranslation(dx, dy)
    }

    private fun registrationTranslation(transform: RawStackPerspectiveTransform): RegistrationTranslation? {
        val matrix = transform.matrixAt(0)
        val centerX = width * 0.5f
        val centerY = height * 0.5f
        val mappedX = matrix.getOrElse(0) { Float.NaN } * centerX +
            matrix.getOrElse(1) { Float.NaN } * centerY +
            matrix.getOrElse(2) { Float.NaN }
        val mappedY = matrix.getOrElse(3) { Float.NaN } * centerX +
            matrix.getOrElse(4) { Float.NaN } * centerY +
            matrix.getOrElse(5) { Float.NaN }
        val mappedZ = matrix.getOrElse(6) { Float.NaN } * centerX +
            matrix.getOrElse(7) { Float.NaN } * centerY +
            matrix.getOrElse(8) { Float.NaN }
        if (!mappedX.isFinite() || !mappedY.isFinite() || !mappedZ.isFinite() || kotlin.math.abs(mappedZ) < 1e-6f) {
            return null
        }
        return RegistrationTranslation(
            dx = mappedX / mappedZ - centerX,
            dy = mappedY / mappedZ - centerY,
        )
    }

    private fun registrationTransformFromTranslation(
        translation: RegistrationTranslation,
        template: RawStackPerspectiveTransform,
        rawConfidence: Int = template.rawConfidence,
    ): RawStackPerspectiveTransform {
        return RawStackPerspectiveTransform.fromSingleMatrix(
            stage = template.stage,
            transformDefinedOnWidth = template.transformDefinedOnWidth,
            transformDefinedOnHeight = template.transformDefinedOnHeight,
            geometryColumns = template.geometryColumns,
            geometryRows = template.geometryRows,
            rowMajorMatrix = floatArrayOf(
                1.0f, 0.0f, translation.dx,
                0.0f, 1.0f, translation.dy,
                0.0f, 0.0f, 1.0f,
            ),
            rawConfidence = rawConfidence,
            confidenceConfig = registrationSetup.confidenceConfig,
        )
    }

    private fun medianOfSorted(values: List<Float>): Float {
        if (values.isEmpty()) return Float.NaN
        val middle = values.size / 2
        return if ((values.size and 1) == 0) {
            (values[middle - 1] + values[middle]) * 0.5f
        } else {
            values[middle]
        }
    }

    private fun selectRegistrationEstimate(
        globalEstimate: RawStackRegistrationEstimate?,
        flowEstimate: RawStackRegistrationEstimate,
        seedTranslation: RegistrationTranslation?,
    ): RawStackRegistrationEstimate {
        if (globalEstimate == null) return flowEstimate
        val globalTranslation = registrationTranslation(globalEstimate.candidateTransform)
        if (seedTranslation != null && globalTranslation != null &&
            globalTranslation.distanceTo(seedTranslation) >
            hwmfSr.registrationSeedDistanceEndPx.coerceAtLeast(0f)
        ) {
            if (!flowEstimate.forceIdentity) return flowEstimate
            val seedTransform = registrationTransformFromTranslation(
                translation = seedTranslation,
                template = globalEstimate.transform,
                rawConfidence = globalEstimate.confidence,
            )
            return globalEstimate.copy(
                transform = seedTransform,
                candidateTransform = seedTransform,
                globalSubpixelRefined = false,
            )
        }
        return when {
            isReliableFlowAffine(flowEstimate, globalEstimate) -> flowEstimate
            !globalEstimate.forceIdentity -> globalEstimate
            !flowEstimate.forceIdentity -> flowEstimate
            globalEstimate.confidence >= flowEstimate.confidence -> globalEstimate
            else -> flowEstimate
        }
    }

    private fun isReliableFlowAffine(
        flowEstimate: RawStackRegistrationEstimate,
        globalEstimate: RawStackRegistrationEstimate,
    ): Boolean {
        if (flowEstimate.forceIdentity || flowEstimate.source != RawStackRegistrationSource.FLOW_AFFINE) return false
        if (!flowEstimate.inlierRatio.isFinite() ||
            flowEstimate.inlierRatio < hwmfSr.registrationAffineInlierFull
        ) {
            return false
        }
        if (!flowEstimate.residualP90Px.isFinite() ||
            flowEstimate.residualP90Px > hwmfSr.registrationAffineResidualStartPx
        ) {
            return false
        }
        return globalEstimate.forceIdentity || flowEstimate.confidence + 16 >= globalEstimate.confidence
    }

    private fun readGlobalRegistrationCandidates(
        referencePyramid: List<TextureLevel>,
        currentPyramid: List<TextureLevel>,
        seedShiftPlane: FloatArray,
        searchRadiusOverride: Int? = null,
        sampleStepOverride: Int? = null,
        sampleBorderOverride: Int? = null,
        coveragePenaltyOverride: Float? = null,
        shiftPenaltyOverride: Float? = null,
    ): List<RawStackGlobalRegistrationCandidate>? {
        val levelIndex = 0.coerceAtMost(referencePyramid.lastIndex).coerceAtMost(currentPyramid.lastIndex)
        val reference = referencePyramid[levelIndex]
        val current = currentPyramid[levelIndex]
        val minLevelSide = minOf(reference.width, reference.height)
        val searchRadius = minOf(
            searchRadiusOverride?.coerceAtLeast(1)
                ?: max(3, hwmfPrefilter.alignSearchRadiusLevel.coerceAtLeast(1)),
            max(1, minLevelSide / 6),
        )
        val scoreSide = searchRadius * 2 + 1
        val scoreCount = scoreSide * scoreSide
        if (scoreCount <= 0 || registrationGlobalAlignProgram == 0) return null

        val sampleStep = sampleStepOverride?.coerceAtLeast(1)
            ?: max(2, hwmfPrefilter.alignSampleStep * 4)
        val sampleBorder = minOf(
            sampleBorderOverride?.coerceAtLeast(1) ?: max(8, hwmfPrefilter.alignWindowSize),
            max(1, minLevelSide / 5),
        )
        val floatCount = scoreCount * REGISTRATION_GLOBAL_SCORE_STRIDE
        val byteCount = floatCount * 4
        return try {
            val scoreBuffer = prepareReadbackScratchBuffer(byteCount)
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                REGISTRATION_GLOBAL_SCORE_BUFFER_BINDING,
                scoreBuffer,
            )
            GLES31.glUseProgram(registrationGlobalAlignProgram)
            bindTexture(registrationGlobalAlignProgram, "uReference", 0, reference.texture)
            bindTexture(registrationGlobalAlignProgram, "uCurrent", 1, current.texture)
            GLES31.glUniform2i(
                uniformLocation(registrationGlobalAlignProgram, "uLevelSize"),
                reference.width,
                reference.height,
            )
            GLES31.glUniform1i(
                uniformLocation(registrationGlobalAlignProgram, "uLevelScale"),
                1 shl levelIndex,
            )
            GLES31.glUniform1i(
                uniformLocation(registrationGlobalAlignProgram, "uSearchRadius"),
                searchRadius,
            )
            GLES31.glUniform2f(
                uniformLocation(registrationGlobalAlignProgram, "uCenterShift"),
                seedShiftPlane.getOrElse(0) { 0f },
                seedShiftPlane.getOrElse(1) { 0f },
            )
            GLES31.glUniform1i(
                uniformLocation(registrationGlobalAlignProgram, "uSampleStep"),
                sampleStep,
            )
            GLES31.glUniform1i(
                uniformLocation(registrationGlobalAlignProgram, "uSampleBorder"),
                sampleBorder,
            )
            GLES31.glUniform1f(
                uniformLocation(registrationGlobalAlignProgram, "uCoveragePenalty"),
                coveragePenaltyOverride ?: hwmfPrefilter.alignCoveragePenalty,
            )
            GLES31.glUniform1f(
                uniformLocation(registrationGlobalAlignProgram, "uShiftPenalty"),
                shiftPenaltyOverride ?: hwmfPrefilter.alignShiftPenalty,
            )
            GLES31.glDispatchCompute(scoreSide, scoreSide, 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT
            )
            checkGlError("readGlobalRegistrationCandidates dispatch")

            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, scoreBuffer)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount,
                GLES31.GL_MAP_READ_BIT,
            ) ?: throw IllegalStateException("registration global score buffer map failed")
            val values = try {
                FloatArray(floatCount).also { out ->
                    val byteBuffer = mapped as? ByteBuffer
                        ?: throw IllegalStateException("registration global score buffer is not ByteBuffer")
                    byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer().get(out)
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
            decodeGlobalRegistrationCandidates(values, scoreCount)
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to read RAW global registration scores", e)
            null
        } finally {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, REGISTRATION_GLOBAL_SCORE_BUFFER_BINDING, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun registrationSeedShiftPlane(samples: List<RawStackRegistrationSample>?): FloatArray {
        if (samples.isNullOrEmpty()) return floatArrayOf(0f, 0f)
        var weightSum = 0f
        var dxSum = 0f
        var dySum = 0f
        for (sample in samples) {
            val weight = sample.weight
            if (weight <= 0f) continue
            val dx = (sample.targetX - sample.referenceX) * 0.5f
            val dy = (sample.targetY - sample.referenceY) * 0.5f
            if (!dx.isFinite() || !dy.isFinite()) continue
            dxSum += dx * weight
            dySum += dy * weight
            weightSum += weight
        }
        if (weightSum <= 0f) return floatArrayOf(0f, 0f)
        return floatArrayOf(dxSum / weightSum, dySum / weightSum)
    }

    private fun decodeGlobalRegistrationCandidates(
        values: FloatArray,
        scoreCount: Int,
    ): List<RawStackGlobalRegistrationCandidate> {
        val candidates = ArrayList<RawStackGlobalRegistrationCandidate>(scoreCount)
        for (index in 0 until scoreCount) {
            val offset = index * REGISTRATION_GLOBAL_SCORE_STRIDE
            if (offset + REGISTRATION_GLOBAL_SCORE_STRIDE > values.size) continue
            candidates += RawStackGlobalRegistrationCandidate(
                dxRaw = values[offset + 0] * 2.0f,
                dyRaw = values[offset + 1] * 2.0f,
                score = values[offset + 2],
                coverage = values[offset + 3],
            )
        }
        return candidates
    }

    private fun readRegistrationSamples(): List<RawStackRegistrationSample>? {
        val sampleCount = gridWidth * gridHeight
        if (sampleCount <= 0 || registrationSampleProgram == 0) return null
        val floatCount = sampleCount * REGISTRATION_SAMPLE_FLOAT_STRIDE
        val byteCount = floatCount * 4
        return try {
            val sampleBuffer = prepareReadbackScratchBuffer(byteCount)
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                REGISTRATION_SAMPLE_BUFFER_BINDING,
                sampleBuffer,
            )
            GLES31.glUseProgram(registrationSampleProgram)
            bindTexture(registrationSampleProgram, "uFlowGrid", 0, flowTexture)
            bindTexture(registrationSampleProgram, "uRobustness", 1, robustnessTexture)
            bindTexture(registrationSampleProgram, "uTileMask", 2, tileMaskTexture)
            bindTexture(registrationSampleProgram, "uReference", 3, refProxy)
            bindTexture(registrationSampleProgram, "uCurrent", 4, curProxy)
            GLES31.glUniform2i(uniformLocation(registrationSampleProgram, "uImageSize"), width, height)
            GLES31.glUniform2i(uniformLocation(registrationSampleProgram, "uPlaneSize"), planeWidth, planeHeight)
            GLES31.glUniform2i(uniformLocation(registrationSampleProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1i(uniformLocation(registrationSampleProgram, "uTileSize"), flowGridSpacing)
            GLES31.glUniform1i(
                uniformLocation(registrationSampleProgram, "uUseDetailTileConfidence"),
                1,
            )
            GLES31.glDispatchCompute(groupCount(gridWidth), groupCount(gridHeight), 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT
            )
            checkGlError("readRegistrationSamples dispatch")

            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, sampleBuffer)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount,
                GLES31.GL_MAP_READ_BIT,
            ) ?: throw IllegalStateException("registration sample buffer map failed")
            val values = try {
                FloatArray(floatCount).also { out ->
                    val byteBuffer = mapped as? ByteBuffer
                        ?: throw IllegalStateException("registration sample buffer is not ByteBuffer")
                    byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer().get(out)
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
            decodeRegistrationSamples(values)
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to read RAW registration samples", e)
            null
        } finally {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, REGISTRATION_SAMPLE_BUFFER_BINDING, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun decodeRegistrationSamples(values: FloatArray): List<RawStackRegistrationSample> {
        val tileStride = registrationSampleTileStride()
        val samples = ArrayList<RawStackRegistrationSample>((gridWidth / tileStride + 1) * (gridHeight / tileStride + 1))
        for (tileY in 0 until gridHeight step tileStride) {
            for (tileX in 0 until gridWidth step tileStride) {
                val offset = (tileY * gridWidth + tileX) * REGISTRATION_SAMPLE_FLOAT_STRIDE
                if (offset + REGISTRATION_SAMPLE_FLOAT_STRIDE > values.size) continue
                samples += RawStackRegistrationSample(
                    referenceX = values[offset + 0],
                    referenceY = values[offset + 1],
                    targetX = values[offset + 2],
                    targetY = values[offset + 3],
                    robustness = values[offset + 4],
                    tileMask = values[offset + 5],
                    residual = values[offset + 6],
                    detail = values[offset + 7],
                )
            }
        }
        return samples
    }

    private fun registrationSampleTileStride(): Int {
        return max(1, max(gridWidth, gridHeight) / 128)
    }

    private fun recordRegistrationEstimate(
        estimate: RawStackRegistrationEstimate,
        effectiveTransform: RawStackPerspectiveTransform,
    ) {
        registrationEstimateCount += 1
        registrationConfidenceSum += estimate.confidence.toFloat()
        registrationConfidenceMin = minOf(registrationConfidenceMin, estimate.confidence)
        if (effectiveTransform.forceIdentity) {
            registrationForceIdentityCount += 1
        }
        registrationInlierRatioSum += estimate.inlierRatio.takeIf { it.isFinite() } ?: 0f
        if (estimate.residualP90Px.isFinite()) {
            registrationResidualP90Max = if (registrationResidualP90Max.isFinite()) {
                max(registrationResidualP90Max, estimate.residualP90Px)
            } else {
                estimate.residualP90Px
            }
        }
    }

    private fun recordRegistrationGlobalEstimate(estimate: RawStackRegistrationEstimate?) {
        if (estimate == null || !estimate.globalBestScore.isFinite()) return
        registrationGlobalScoreSum += estimate.globalBestScore
        registrationGlobalScoreCount += 1
        if (estimate.globalScoreMargin.isFinite()) {
            registrationGlobalMarginMin = minOf(registrationGlobalMarginMin, estimate.globalScoreMargin)
        }
        if (estimate.globalCoverage.isFinite()) {
            registrationGlobalCoverageSum += estimate.globalCoverage
        }
    }

    private fun registrationQualitySummary(): RawStackRegistrationQualitySummary? {
        if (registrationEstimateCount <= 0) return null
        return RawStackRegistrationQualitySummary(
            estimateCount = registrationEstimateCount,
            meanConfidence = registrationConfidenceSum / registrationEstimateCount.toFloat(),
            minConfidence = registrationConfidenceMin.takeIf { it != Int.MAX_VALUE } ?: 0,
            forceIdentityRatio = registrationForceIdentityCount.toFloat() / registrationEstimateCount.toFloat(),
            meanInlierRatio = registrationInlierRatioSum / registrationEstimateCount.toFloat(),
            residualP90MaxPx = registrationResidualP90Max,
            meanGlobalScore = if (registrationGlobalScoreCount > 0) {
                registrationGlobalScoreSum / registrationGlobalScoreCount.toFloat()
            } else {
                Float.NaN
            },
            minGlobalMargin = registrationGlobalMarginMin.takeIf { it.isFinite() } ?: Float.NaN,
            meanGlobalCoverage = if (registrationGlobalScoreCount > 0) {
                registrationGlobalCoverageSum / registrationGlobalScoreCount.toFloat()
            } else {
                Float.NaN
            },
        )
    }

    private fun clearSuperResolutionAccumulator() {
        GLES31.glUseProgram(clearSuperResolutionAccumulatorProgram)
        bindImage(0, superResolutionAccumulatorTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        bindImage(1, superResolutionAccumulatorBwTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        bindImage(2, radianceNrWeightRgTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        bindImage(3, superResolutionAccumulatorBTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        bindImage(4, radianceDetailBwTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        bindImage(5, radianceDetailWeightRgTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        if (visualizeRadianceFusionRejections) {
            bindImage(
                6,
                radianceFusionRejectionTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            )
        }
        if (visualizeRadianceLongParticipation) {
            bindImage(
                7,
                radianceLongParticipationTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_R32UI,
            )
        }
        GLES31.glUniform2i(
            uniformLocation(clearSuperResolutionAccumulatorProgram, "uImageSize"),
            superResolutionAccumulatorWidth,
            superResolutionAccumulatorHeight,
        )
        GLES31.glDispatchCompute(
            groupCount(superResolutionAccumulatorWidth),
            groupCount(superResolutionAccumulatorHeight),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("clearSuperResolutionAccumulator")
    }

    private fun accumulateRadianceFusionFrame(
        isReference: Boolean,
        sourceRegion: RadianceTileRect,
        accumulatorRegion: RadianceTileRect,
        frameFlowTexture: Int,
        frameRobustnessTexture: Int,
        frameTileMaskTexture: Int,
        registrationWeight: Float,
        detailWeight: Float,
        exposureScale: Float,
        isLongFrame: Boolean,
        longPrecisionWeightCap: Float,
        referenceNoiseModel: RawNoiseModel,
        frameNoiseModel: RawNoiseModel,
        fusionStatsBuffer: Int,
        fusionStatsIndex: Int,
        fusionStatsCoreRegion: RadianceTileRect,
        recordFusionRejections: Boolean,
    ) {
        GLES31.glUseProgram(accumulateSuperResolutionProgram)
        bindTexture(accumulateSuperResolutionProgram, "uRcdRgbTile", 0, radianceRgbTileTexture)
        bindTexture(accumulateSuperResolutionProgram, "uFlowGrid", 1, frameFlowTexture)
        bindTexture(accumulateSuperResolutionProgram, "uRobustness", 2, frameRobustnessTexture)
        bindTexture(accumulateSuperResolutionProgram, "uTileMask", 3, frameTileMaskTexture)
        bindTexture(accumulateSuperResolutionProgram, "uKernel", 4, kernelTexture)
        bindTexture(accumulateSuperResolutionProgram, "uLensShadingMap", 5, lensShadingTexture)
        bindTexture(
            accumulateSuperResolutionProgram,
            "uReferenceBase",
            6,
            radianceReferenceBaseTexture,
        )
        bindTexture(
            accumulateSuperResolutionProgram,
            "uRawRegion",
            8,
            rcdRawRegionTexture,
        )
        bindImage(
            0,
            superResolutionAccumulatorTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        bindImage(
            1,
            superResolutionAccumulatorBwTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        bindImage(
            2,
            radianceNrWeightRgTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        bindImage(
            3,
            superResolutionAccumulatorBTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        bindImage(
            4,
            radianceDetailBwTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        bindImage(
            5,
            radianceDetailWeightRgTexture,
            GLES31.GL_READ_WRITE,
            GLES30.GL_R32UI,
        )
        if (visualizeRadianceFusionRejections) {
            bindTexture(
                accumulateSuperResolutionProgram,
                "uPreviousFusionRejections",
                7,
                radianceFusionRejectionTexture,
            )
            bindImage(
                6,
                radianceFusionRejectionScratchTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glUniform1i(
                uniformLocation(accumulateSuperResolutionProgram, "uRecordFusionRejections"),
                if (recordFusionRejections) 1 else 0,
            )
        }
        if (visualizeRadianceLongParticipation) {
            bindImage(
                7,
                radianceLongParticipationTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_R32UI,
            )
        }
        if (logRadianceFusionParticipation) {
            check(fusionStatsBuffer != 0) { "Radiance fusion stats buffer is unavailable" }
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                RADIANCE_FUSION_STATS_BUFFER_BINDING,
                fusionStatsBuffer,
            )
            GLES31.glUniform1i(
                uniformLocation(accumulateSuperResolutionProgram, "uFusionStatsIndex"),
                fusionStatsIndex,
            )
            GLES31.glUniform1i(
                uniformLocation(accumulateSuperResolutionProgram, "uFusionStatsSampleStep"),
                hwmfDebug.radianceFusionStatsSampleStep,
            )
            GLES31.glUniform2i(
                uniformLocation(accumulateSuperResolutionProgram, "uFusionStatsCoreOrigin"),
                fusionStatsCoreRegion.left,
                fusionStatsCoreRegion.top,
            )
            GLES31.glUniform2i(
                uniformLocation(accumulateSuperResolutionProgram, "uFusionStatsCoreSize"),
                fusionStatsCoreRegion.width,
                fusionStatsCoreRegion.height,
            )
        }
        setCommonUniforms(accumulateSuperResolutionProgram)
        val referenceNoiseAlpha = referenceNoiseModel.normalizedShotNoiseForShader(cfaPattern)
        val referenceNoiseBeta = referenceNoiseModel.normalizedReadNoiseForShader(cfaPattern)
        val currentNoiseAlpha = frameNoiseModel.normalizedShotNoiseForShader(cfaPattern)
        val currentNoiseBeta = frameNoiseModel.normalizedReadNoiseForShader(cfaPattern)
        GLES31.glUniform1fv(
            uniformLocation(accumulateSuperResolutionProgram, "uReferenceNoiseAlpha[0]"),
            4,
            referenceNoiseAlpha,
            0,
        )
        GLES31.glUniform1fv(
            uniformLocation(accumulateSuperResolutionProgram, "uReferenceNoiseBeta[0]"),
            4,
            referenceNoiseBeta,
            0,
        )
        GLES31.glUniform1fv(
            uniformLocation(accumulateSuperResolutionProgram, "uCurrentNoiseAlpha[0]"),
            4,
            currentNoiseAlpha,
            0,
        )
        GLES31.glUniform1fv(
            uniformLocation(accumulateSuperResolutionProgram, "uCurrentNoiseBeta[0]"),
            4,
            currentNoiseBeta,
            0,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uImageSize"),
            width,
            height,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uSourceSize"),
            sourceRegion.width,
            sourceRegion.height,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uSourceOrigin"),
            sourceRegion.left,
            sourceRegion.top,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uOutputSize"),
            outputWidth,
            outputHeight,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uPlaneSize"),
            planeWidth,
            planeHeight,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uGridSize"),
            gridWidth,
            gridHeight,
        )
        GLES31.glUniform1i(
            uniformLocation(accumulateSuperResolutionProgram, "uTileSize"),
            flowGridSpacing,
        )
        GLES31.glUniform1i(
            uniformLocation(accumulateSuperResolutionProgram, "uIsReference"),
            if (isReference) 1 else 0,
        )
        GLES31.glUniform1i(
            uniformLocation(accumulateSuperResolutionProgram, "uIsLongFrame"),
            if (isLongFrame) 1 else 0,
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uExposureScale"),
            exposureScale.coerceIn(1e-4f, 64f),
        )
        GLES31.glUniform1i(
            uniformLocation(accumulateSuperResolutionProgram, "uSemanticEncoding"),
            if (radianceUsesVgnSemanticBackend) 1 else 0,
        )
        GLES31.glUniform3f(
            uniformLocation(accumulateSuperResolutionProgram, "uCalculationGains"),
            demosaicCalculationWbGains[0],
            1f,
            demosaicCalculationWbGains[3],
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uFrameWeight"),
            if (isReference) 1f else hwmfBlend.nonReferenceFrameWeight,
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uRegistrationNrWeight"),
            if (isReference) 1f else registrationWeight.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uRegistrationDetailWeight"),
            if (isReference) 1f else detailWeight.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uLongClipStart"),
            radianceFusionTuning.longClipStart.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uLongClipFull"),
            radianceFusionTuning.longClipFull.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uLongPrecisionWeightCap"),
            if (isLongFrame &&
                (!referenceNoiseModel.hasValidCamera2Profile ||
                    !frameNoiseModel.hasValidCamera2Profile)
            ) {
                minOf(
                    longPrecisionWeightCap.coerceAtLeast(1f),
                    (1f / exposureScale.coerceAtLeast(1e-4f)).coerceAtLeast(1f),
                )
            } else {
                longPrecisionWeightCap.coerceAtLeast(1f)
            },
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uLongNrWeightScale"),
            radianceFusionTuning.longNrWeightScale.coerceAtLeast(1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uLongDetailWeightScale"),
            radianceFusionTuning.longDetailWeightScale.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uDenoiseSigmaRawPx"),
            radianceFusionTuning.denoiseSigmaRawPx.coerceAtLeast(0.5f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uDenoiseSteeringStrength"),
            radianceFusionTuning.denoiseSteeringStrength.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uRobustnessSpatialMix"),
            radianceFusionTuning.robustnessSpatialMix.coerceIn(0f, 1f),
        )
        val chromaSigmaStart = radianceFusionTuning.chromaConsistencySigmaStart.coerceAtLeast(0f)
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uChromaConsistencySigmaStart"),
            chromaSigmaStart,
        )
        GLES31.glUniform1f(
            uniformLocation(accumulateSuperResolutionProgram, "uChromaConsistencySigmaFull"),
            radianceFusionTuning.chromaConsistencySigmaFull.coerceAtLeast(chromaSigmaStart + 1e-3f),
        )
        setBlendAccumulatorUniforms(accumulateSuperResolutionProgram)
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uAccumulatorOrigin"),
            accumulatorRegion.left,
            accumulatorRegion.top,
        )
        GLES31.glUniform2i(
            uniformLocation(accumulateSuperResolutionProgram, "uAccumulatorSize"),
            accumulatorRegion.width,
            accumulatorRegion.height,
        )
        GLES31.glDispatchCompute(
            groupCount(accumulatorRegion.width),
            groupCount(accumulatorRegion.height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                (if (logRadianceFusionParticipation) {
                    GLES31.GL_SHADER_STORAGE_BARRIER_BIT
                } else {
                    0
                }),
        )
        checkGlError(
            if (visualizeRadianceFusionRejections) {
                "accumulateRadianceFusionFrame RGBA16F ping-pong write-only"
            } else {
                "accumulateRadianceFusionFrame"
            },
        )
        if (visualizeRadianceFusionRejections) {
            val previousRejections = radianceFusionRejectionTexture
            radianceFusionRejectionTexture = radianceFusionRejectionScratchTexture
            radianceFusionRejectionScratchTexture = previousRejections
        }
    }

    private fun frameNoiseModel(frame: RawStackFrame): RawNoiseModel {
        val profile = frame.channelNoiseProfile ?: return rawNoiseModel
        val model = RawNoiseModel.fromCamera2NoiseProfile(profile)
        return if (model.hasValidCamera2Profile) model else rawNoiseModel
    }

    private fun captureRadianceReferenceBase(regionWidth: Int, regionHeight: Int) {
        GLES31.glUseProgram(radianceReferenceBaseProgram)
        bindTexture(
            radianceReferenceBaseProgram,
            "uNrSumRg",
            0,
            superResolutionAccumulatorTexture,
        )
        bindTexture(
            radianceReferenceBaseProgram,
            "uNrSumBw",
            1,
            superResolutionAccumulatorBwTexture,
        )
        bindTexture(
            radianceReferenceBaseProgram,
            "uNrWeightRg",
            2,
            radianceNrWeightRgTexture,
        )
        bindImage(
            0,
            radianceReferenceBaseTexture,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glUniform2i(
            uniformLocation(radianceReferenceBaseProgram, "uImageSize"),
            regionWidth,
            regionHeight,
        )
        GLES31.glDispatchCompute(groupCount(regionWidth), groupCount(regionHeight), 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError("captureRadianceReferenceBase")
    }

    private fun resetSuperResolutionDecisionStats() {
        superResolutionDetailFrameCount = 0
        superResolutionDetailWeightSum = 0f
        superResolutionDetailWeightMax = 0f
    }

    private fun recordSuperResolutionDetailFrame(weight: Float) {
        val clampedWeight = weight.coerceIn(0f, 1f)
        if (clampedWeight <= 0f) return
        superResolutionDetailFrameCount += 1
        superResolutionDetailWeightSum += clampedWeight
        superResolutionDetailWeightMax = max(superResolutionDetailWeightMax, clampedWeight)
    }

    private fun decideSuperResolutionOutput(alignedFrameCount: Int): SuperResolutionOutputDecision {
        val reasons = ArrayList<String>(4)
        val minimumDetailFrames = hwmfSr.fallbackMinDetailFrames.coerceAtLeast(0)
        val minimumPhaseBins = hwmfSr.fallbackMinPhaseBins.coerceAtLeast(1)
        if (alignedFrameCount < hwmfSr.fallbackMinAlignedFrames.coerceAtLeast(0)) {
            reasons += "aligned-low"
        }
        val detailCoverageLow = superResolutionDetailFrameCount < minimumDetailFrames
        if (detailCoverageLow) {
            reasons += "sr-detail-low"
        }
        if (superResolutionDetailWeightSum < hwmfSr.fallbackMinDetailWeightSum.coerceAtLeast(0f)) {
            reasons += "sr-weight-low"
        }
        val phaseCoverageLow = superResolutionPhaseTracker.occupiedBinCount < minimumPhaseBins
        if (phaseCoverageLow) {
            reasons += "sr-phase-low"
        }
        val qualityReason = reasons.takeIf { it.isNotEmpty() }?.joinToString("+")
        val hasAnySrSupport = superResolutionDetailFrameCount > 0 && superResolutionDetailWeightSum > 0f
        val mode = when {
            !hasAnySrSupport -> "SUPER_RESOLUTION_REFERENCE_ONLY"
            qualityReason != null -> "SUPER_RESOLUTION_PARTIAL"
            else -> "SUPER_RESOLUTION"
        }
        val fallbackReason = qualityReason ?: if (!hasAnySrSupport) "sr-support-none" else null
        if (RawStackRuntimeDebug.enabled) {
            val message = "Radiance output effective=$mode " +
                "reason=${fallbackReason ?: "ok"} aligned=$alignedFrameCount " +
                "srFrames=$superResolutionDetailFrameCount " +
                "srWeightSum=${superResolutionDetailWeightSum.formatWeight()} " +
                "srWeightMax=${superResolutionDetailWeightMax.formatWeight()} " +
                "srPhaseBins=${superResolutionPhaseTracker.occupiedBinCount}/${superResolutionPhaseTracker.totalBinCount} " +
                "srPhaseDist=${superResolutionPhaseTracker.phaseBinCounts}"
            if (mode == "SUPER_RESOLUTION") {
                RawStackRuntimeDebug.d(TAG) { message }
            } else {
                RawStackRuntimeDebug.i(TAG) { message }
            }
        }
        return SuperResolutionOutputDecision(
            mode = mode,
            fallbackReason = fallbackReason,
            detailFrameCount = superResolutionDetailFrameCount,
            detailWeightSum = superResolutionDetailWeightSum,
            phaseBinCount = superResolutionPhaseTracker.occupiedBinCount,
            phaseBinTotal = superResolutionPhaseTracker.totalBinCount,
            phaseBinSamples = superResolutionPhaseTracker.phaseBinCounts,
        )
    }

    private fun storeRcdRgbRegion(
        targetTexture: Int,
        regionWidth: Int,
        regionHeight: Int,
        label: String,
        exposureScale: Float = 1f,
        desaturateBeforeExposureScale: Boolean = false,
    ) {
        GLES31.glUseProgram(rcdStoreRgbProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, rcdRegionBuffers[1])
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, rcdRegionBuffers[2])
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 3, rcdRegionBuffers[3])
        bindImage(0, targetTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        GLES31.glUniform2i(
            uniformLocation(rcdStoreRgbProgram, "uSourceSize"),
            regionWidth,
            regionHeight,
        )
        GLES31.glUniform1f(
            uniformLocation(rcdStoreRgbProgram, "uExposureScale"),
            exposureScale,
        )
        GLES31.glUniform1i(
            uniformLocation(rcdStoreRgbProgram, "uDesaturateBeforeExposureScale"),
            if (desaturateBeforeExposureScale) 1 else 0,
        )
        GLES31.glUniform3f(
            uniformLocation(rcdStoreRgbProgram, "uCalculationGains"),
            demosaicCalculationWbGains[0],
            1f,
            demosaicCalculationWbGains[3],
        )
        GLES31.glDispatchCompute(groupCount(regionWidth), groupCount(regionHeight), 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError(label)
    }

    private fun createRadianceFusionStatsBuffer(frameCount: Int): Int {
        require(frameCount > 0) { "Radiance fusion stats require at least one frame" }
        val byteCount = frameCount * RADIANCE_FUSION_STATS_STRIDE * Int.SIZE_BYTES
        val zero = ByteBuffer.allocateDirect(byteCount).order(ByteOrder.nativeOrder())
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        val buffer = ids[0]
        check(buffer != 0) { "Failed to allocate Radiance fusion stats buffer" }
        buffers += buffer
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            byteCount,
            zero,
            GLES31.GL_DYNAMIC_READ,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        checkGlError("createRadianceFusionStatsBuffer")
        return buffer
    }

    private fun logRadianceFusionStats(
        buffer: Int,
        frameLabels: List<String>,
        candidateFrameCount: Int,
    ) {
        if (buffer == 0 || frameLabels.isEmpty()) return
        val uintCount = frameLabels.size * RADIANCE_FUSION_STATS_STRIDE
        val byteCount = uintCount * Int.SIZE_BYTES
        val stats = try {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount,
                GLES31.GL_MAP_READ_BIT,
            ) ?: throw IllegalStateException("Radiance fusion stats buffer map failed")
            try {
                val byteBuffer = mapped as? ByteBuffer
                    ?: throw IllegalStateException("Radiance fusion stats mapping is not ByteBuffer")
                IntArray(uintCount).also { values ->
                    byteBuffer.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
        } finally {
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                RADIANCE_FUSION_STATS_BUFFER_BINDING,
                0,
            )
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }

        var nonReferenceSamples = 0L
        var nonReferenceNrAccepted = 0L
        var nonReferenceNrWeight = 0L
        var nonReferenceDetailAccepted = 0L
        var nonReferenceDetailWeight = 0L
        var longSamples = 0L
        var longNrAccepted = 0L
        var longNrWeight = 0L
        frameLabels.forEachIndexed { statsIndex, frameLabel ->
            val offset = statsIndex * RADIANCE_FUSION_STATS_STRIDE
            val samples = uintStat(stats, offset)
            val nrAccepted = uintStat(stats, offset + 1)
            val nrWeight = uintStat(stats, offset + 2)
            val detailAccepted = uintStat(stats, offset + 3)
            val detailWeight = uintStat(stats, offset + 4)
            val nrParticipation = ratioStat(nrAccepted, samples)
            val detailParticipation = ratioStat(detailAccepted, samples)
            val nrMergeFactor = if (samples > 0L) {
                nrWeight.toFloat() / (samples * RADIANCE_FUSION_WEIGHT_QUANTIZATION)
            } else {
                Float.NaN
            }
            val detailMergeFactor = if (samples > 0L) {
                detailWeight.toFloat() / (samples * RADIANCE_FUSION_WEIGHT_QUANTIZATION)
            } else {
                Float.NaN
            }
            PLog.i(
                TAG,
                "Radiance merge frame=$frameLabel statsIndex=$statsIndex samples=$samples " +
                    "nrParticipation=${nrParticipation.percentString()} " +
                    "nrRejected=${(1f - nrParticipation).percentString()} " +
                    "nrMergeFactor=${nrMergeFactor.formatWeight()} " +
                    "srDetailParticipation=${detailParticipation.percentString()} " +
                    "srDetailFactor=${detailMergeFactor.formatWeight()}",
            )
            if (frameLabel.startsWith("long:") &&
                nrMergeFactor < radianceFusionTuning.longMergeFactorTarget
            ) {
                PLog.w(
                    TAG,
                    "Radiance long merge factor below target frame=$frameLabel " +
                        "actual=${nrMergeFactor.formatWeight()} " +
                        "target=${radianceFusionTuning.longMergeFactorTarget.formatWeight()}",
                )
            }
            if (statsIndex > 0) {
                nonReferenceSamples += samples
                nonReferenceNrAccepted += nrAccepted
                nonReferenceNrWeight += nrWeight
                nonReferenceDetailAccepted += detailAccepted
                nonReferenceDetailWeight += detailWeight
            }
            if (frameLabel.startsWith("long:")) {
                longSamples += samples
                longNrAccepted += nrAccepted
                longNrWeight += nrWeight
            }
        }

        val acceptedNonReferenceFrames = (frameLabels.size - 1).coerceAtLeast(0)
        val frameAdmission = if (candidateFrameCount > 0) {
            acceptedNonReferenceFrames.toFloat() / candidateFrameCount
        } else {
            Float.NaN
        }
        val overallNrParticipation = ratioStat(nonReferenceNrAccepted, nonReferenceSamples)
        val overallDetailParticipation = ratioStat(
            nonReferenceDetailAccepted,
            nonReferenceSamples,
        )
        val averageMergeFactor = if (nonReferenceSamples > 0L) {
            nonReferenceNrWeight.toFloat() /
                (nonReferenceSamples * RADIANCE_FUSION_WEIGHT_QUANTIZATION)
        } else {
            Float.NaN
        }
        val averageDetailFactor = if (nonReferenceSamples > 0L) {
            nonReferenceDetailWeight.toFloat() /
                (nonReferenceSamples * RADIANCE_FUSION_WEIGHT_QUANTIZATION)
        } else {
            Float.NaN
        }
        PLog.i(
            TAG,
            "Radiance merge summary mergeFrameCount=${frameLabels.size} " +
                "candidateNonReferenceFrames=$candidateFrameCount " +
                "acceptedNonReferenceFrames=$acceptedNonReferenceFrames " +
                "globalRejectedFrames=${(candidateFrameCount - acceptedNonReferenceFrames).coerceAtLeast(0)} " +
                "frameAdmission=${frameAdmission.percentString()} " +
                "nrParticipation=${overallNrParticipation.percentString()} " +
                "nrRejected=${(1f - overallNrParticipation).percentString()} " +
                "averageMergeFactor=${averageMergeFactor.formatWeight()} " +
                "srDetailParticipation=${overallDetailParticipation.percentString()} " +
                "averageSrDetailFactor=${averageDetailFactor.formatWeight()} " +
                "sampleStep=${hwmfDebug.radianceFusionStatsSampleStep}",
        )
        if (longSamples > 0L) {
            val longParticipation = ratioStat(longNrAccepted, longSamples)
            val longMergeFactor = longNrWeight.toFloat() /
                (longSamples * RADIANCE_FUSION_WEIGHT_QUANTIZATION)
            PLog.i(
                TAG,
                "Radiance long participation accepted=${longParticipation.percentString()} " +
                    "rejected=${(1f - longParticipation).percentString()} " +
                    "averageMergeFactor=${longMergeFactor.formatWeight()} " +
                    "acceptedLongFrames=${frameLabels.count { it.startsWith("long:") }}",
            )
        }
    }

    private fun reconstructRadianceTiles(
        referenceImage: SafeImage,
        frames: List<RawStackFrame>,
        acceptedFrames: List<AcceptedSuperResolutionFrame>,
        candidateFrameCount: Int,
        outputBuffer: ByteBuffer,
        highlightAlignment: RadianceHighlightAlignment?,
        longAlignments: List<RadianceLongAlignment>,
    ): ReconstructionResult {
        check(radianceTiles.isNotEmpty())
        var requiredRcdWidth = 1
        var requiredRcdHeight = 1
        radianceTiles.forEach { tile ->
            val referenceRegion = radianceSourceRegion(tile, RadianceFlowBounds.Zero)
            requiredRcdWidth = max(requiredRcdWidth, referenceRegion.width)
            requiredRcdHeight = max(requiredRcdHeight, referenceRegion.height)
            acceptedFrames.forEach { frame ->
                val frameRegion = radianceSourceRegion(tile, frame.flowBounds())
                requiredRcdWidth = max(requiredRcdWidth, frameRegion.width)
                requiredRcdHeight = max(requiredRcdHeight, frameRegion.height)
            }
            longAlignments.forEach { alignment ->
                val longRegion = radianceSourceRegion(tile, alignment.flowBounds())
                requiredRcdWidth = max(requiredRcdWidth, longRegion.width)
                requiredRcdHeight = max(requiredRcdHeight, longRegion.height)
            }
            highlightAlignment?.let { highlight ->
                val highlightRegion = radianceSourceRegion(tile, highlight.flowBounds())
                requiredRcdWidth = max(requiredRcdWidth, highlightRegion.width)
                requiredRcdHeight = max(requiredRcdHeight, highlightRegion.height)
            }
        }
        ensureRadianceTileResources(requiredRcdWidth, requiredRcdHeight)
        val chromaPostprocessor = radianceVgnChromaPostprocessor
        val readbackAllocStart = System.currentTimeMillis()
        val readbackScratch = if (chromaPostprocessor == null) {
            val scratchBytes = radianceOutputTileWidth.toLong() * radianceOutputTileHeight.toLong() * 8L
            LargeDirectBuffer.allocate(scratchBytes, "Radiance RGBA16 tile readback")
                ?.order(ByteOrder.nativeOrder())
                ?: throw IllegalStateException("Failed to allocate Radiance tile readback")
        } else {
            null
        }
        var readbackAllocMs = System.currentTimeMillis() - readbackAllocStart
        val output = readbackScratch?.let {
            outputBuffer.apply { clear() }.order(ByteOrder.nativeOrder()).asShortBuffer()
        }
        val fusionStatsFrameLabels = buildList {
            add("normal:0")
            acceptedFrames.forEach { frame -> add("normal:${frame.frameIndex}") }
            longAlignments.forEach { alignment ->
                add("long:${alignment.plan.sourceFrameIndex}")
            }
        }
        val fusionStatsBuffer = if (logRadianceFusionParticipation) {
            createRadianceFusionStatsBuffer(fusionStatsFrameLabels.size)
        } else {
            0
        }
        val rejectionFrameOrdinal = hwmfDebug.radianceFusionRejectionFrameOrdinal
        val rejectionNormalFrame = acceptedFrames.getOrNull(rejectionFrameOrdinal)
        val rejectionLongIndex = rejectionFrameOrdinal - acceptedFrames.size
        val rejectionLongFrame = longAlignments.getOrNull(rejectionLongIndex)
        val hasRejectionFrame = rejectionNormalFrame != null || rejectionLongFrame != null
        if (visualizeRadianceFusionRejections) {
            PLog.i(
                TAG,
                "Radiance rejection overlay target acceptedOrdinal=$rejectionFrameOrdinal " +
                    "frame=${rejectionNormalFrame?.let { "normal:${it.frameIndex}" } ?: ""}" +
                    "${rejectionLongFrame?.let { "long:${it.plan.sourceFrameIndex}" } ?: ""}" +
                    if (!hasRejectionFrame) "unavailable" else "",
            )
        }
        var totalGlReadMs = 0L
        var totalCopyMs = 0L
        var exportedTextureId = 0
        val referenceFrameNoiseModel = frameNoiseModel(frames.first())
        RawStackRuntimeDebug.i(TAG) {
            "Radiance tiled reconstruction tiles=${radianceTiles.size} " +
                "backend=${if (radianceUsesVgnSemanticBackend) "vgn-semantic" else "rcd-fallback"} " +
                "coreRaw=${radianceFusionTuning.tileCoreSizeRawPx} " +
                "maxOutput=${radianceOutputTileWidth}x$radianceOutputTileHeight " +
                "maxSource=${requiredRcdWidth}x$requiredRcdHeight " +
                "rejectionOverlay=$visualizeRadianceFusionRejections " +
                "srDetailOverlay=$visualizeRadianceSrDetail " +
                "highlightOverlay=$visualizeRadianceHighlightReconstruction " +
                "longParticipationOverlay=$visualizeRadianceLongParticipation " +
                "vgnChromaPostprocess=${chromaPostprocessor != null} " +
                "candidates=$candidateFrameCount acceptedNormal=${acceptedFrames.size} " +
                "acceptedLong=${longAlignments.size} " +
                "longNrScale=${radianceFusionTuning.longNrWeightScale} " +
                "longPrecisionCap=${radianceFusionTuning.longPrecisionWeightCap}"
        }
        try {
            radianceTiles.forEach { tile ->
                RawStackRuntimeDebug.d(TAG) {
                    "Radiance tile ${tile.index + 1}/${radianceTiles.size} " +
                        "rawCore=${tile.rawCore} outputCore=${tile.outputCore} " +
                        "working=${tile.outputWorking}"
                }
                clearSuperResolutionAccumulator()
                val referenceRegion = radianceSourceRegion(tile, RadianceFlowBounds.Zero)
                reconstructRadianceReferenceTile(
                    image = referenceImage,
                    sourceRegion = referenceRegion,
                    label = "Radiance reference tile ${tile.index}",
                )
                accumulateRadianceFusionFrame(
                    isReference = true,
                    sourceRegion = referenceRegion,
                    accumulatorRegion = tile.outputWorking,
                    frameFlowTexture = flowTexture,
                    frameRobustnessTexture = robustnessTexture,
                    frameTileMaskTexture = tileMaskTexture,
                    registrationWeight = 1f,
                    detailWeight = 1f,
                    exposureScale = 1f,
                    isLongFrame = false,
                    longPrecisionWeightCap = radianceFusionTuning.longPrecisionWeightCap,
                    referenceNoiseModel = referenceFrameNoiseModel,
                    frameNoiseModel = referenceFrameNoiseModel,
                    fusionStatsBuffer = fusionStatsBuffer,
                    fusionStatsIndex = 0,
                    fusionStatsCoreRegion = tile.outputCore,
                    recordFusionRejections = false,
                )
                captureRadianceReferenceBase(tile.outputWorking.width, tile.outputWorking.height)

                acceptedFrames.forEachIndexed { statsFrameIndex, frame ->
                    val sourceRegion = radianceSourceRegion(tile, frame.flowBounds())
                    reconstructRadianceNonReferenceTile(
                        image = frame.image,
                        sourceRegion = sourceRegion,
                        label = "Radiance frame ${frame.frameIndex} tile ${tile.index}",
                    )
                    accumulateRadianceFusionFrame(
                        isReference = false,
                        sourceRegion = sourceRegion,
                        accumulatorRegion = tile.outputWorking,
                        frameFlowTexture = frame.flowTexture,
                        frameRobustnessTexture = frame.robustnessTexture,
                        frameTileMaskTexture = frame.tileMaskTexture,
                        registrationWeight = frame.registrationWeight,
                        detailWeight = frame.detailWeight,
                        exposureScale = 1f,
                        isLongFrame = false,
                        longPrecisionWeightCap = radianceFusionTuning.longPrecisionWeightCap,
                        referenceNoiseModel = referenceFrameNoiseModel,
                        frameNoiseModel = frameNoiseModel(frames[frame.frameIndex]),
                        fusionStatsBuffer = fusionStatsBuffer,
                        fusionStatsIndex = statsFrameIndex + 1,
                        fusionStatsCoreRegion = tile.outputCore,
                        recordFusionRejections = rejectionNormalFrame != null &&
                            statsFrameIndex == rejectionFrameOrdinal,
                    )
                }

                longAlignments.forEachIndexed { longIndex, alignment ->
                    val sourceRegion = radianceSourceRegion(tile, alignment.flowBounds())
                    reconstructRadianceNonReferenceTile(
                        image = alignment.plan.longFrame.image,
                        sourceRegion = sourceRegion,
                        label = "Radiance long ${alignment.plan.sourceFrameIndex} tile ${tile.index}",
                    )
                    accumulateRadianceFusionFrame(
                        isReference = false,
                        sourceRegion = sourceRegion,
                        accumulatorRegion = tile.outputWorking,
                        frameFlowTexture = alignment.flowTexture,
                        frameRobustnessTexture = alignment.robustnessTexture,
                        frameTileMaskTexture = alignment.tileMaskTexture,
                        registrationWeight = alignment.registrationWeight,
                        detailWeight = alignment.detailWeight,
                        exposureScale = alignment.plan.exposureScale,
                        isLongFrame = true,
                        longPrecisionWeightCap = alignment.precisionWeightCap,
                        referenceNoiseModel = referenceFrameNoiseModel,
                        frameNoiseModel = frameNoiseModel(alignment.plan.longFrame),
                        fusionStatsBuffer = fusionStatsBuffer,
                        fusionStatsIndex = acceptedFrames.size + longIndex + 1,
                        fusionStatsCoreRegion = tile.outputCore,
                        recordFusionRejections = rejectionLongFrame != null &&
                            longIndex == rejectionLongIndex,
                    )
                }

                val highlightSourceRegion = highlightAlignment?.let { highlight ->
                    radianceSourceRegion(tile, highlight.flowBounds()).also { sourceRegion ->
                        reconstructRadianceReferenceTile(
                            image = highlight.frame.shortFrame.image,
                            sourceRegion = sourceRegion,
                            label = "Radiance highlight tile ${tile.index}",
                        )
                    }
                }

                normalizeRadianceTile(
                    tile,
                    globalAlignmentRejectCount = 0,
                    acceptedFusionFrameCount = if (hasRejectionFrame) 1 else 0,
                    highlightAlignment = highlightAlignment,
                    highlightSourceRegion = highlightSourceRegion,
                )
                if (chromaPostprocessor != null) {
                    chromaPostprocessor.capture(outputTexture, tile)
                } else {
                    val timing = readRadianceOutputTile(
                        checkNotNull(readbackScratch),
                        checkNotNull(output),
                        tile.outputCore,
                    )
                    totalGlReadMs += timing.glReadMs
                    totalCopyMs += timing.copyMs
                }
                GlesGpuScheduler.yieldToUiRenderer()
            }
            if (logRadianceFusionParticipation) {
                logRadianceFusionStats(
                    buffer = fusionStatsBuffer,
                    frameLabels = fusionStatsFrameLabels,
                    candidateFrameCount = candidateFrameCount,
                )
            }
            chromaPostprocessor?.processAndReadback(outputBuffer)?.let { result ->
                val timing = result.readbackTiming
                readbackAllocMs += timing.allocMs
                totalGlReadMs += timing.glReadMs
                totalCopyMs += timing.copyMs
                exportedTextureId = result.exportedTextureId
            }
        } finally {
            LargeDirectBuffer.free(readbackScratch)
        }
        outputBuffer.rewind()
        return ReconstructionResult(
            readTiming = ReadOutputTiming(
                elapsedMs = readbackAllocMs + totalGlReadMs + totalCopyMs,
                glReadMs = totalGlReadMs,
                copyMs = totalCopyMs,
                allocMs = readbackAllocMs,
                mode = if (radianceUsesVgnSemanticBackend) {
                    if (chromaPostprocessor != null && highlightAlignment != null) {
                        "radiance-vgn-semantic-highlight-chroma-iir-rgb16-tiled"
                    } else if (chromaPostprocessor != null) {
                        "radiance-vgn-semantic-chroma-iir-rgb16-tiled"
                    } else if (highlightAlignment != null) {
                        "radiance-vgn-semantic-highlight-rgb16-tiled"
                    } else {
                        "radiance-vgn-semantic-rgb16-tiled"
                    }
                } else {
                    if (highlightAlignment != null) {
                        "radiance-rcd-fallback-highlight-rgb16-tiled"
                    } else {
                        "radiance-rcd-fallback-rgb16-tiled"
                    }
                },
            ),
            exportedTextureId = exportedTextureId,
        )
    }

    private fun AcceptedSuperResolutionFrame.flowBounds(): RadianceFlowBounds {
        return RadianceFlowBounds(
            minXPlanePx = minFlowXPlanePx,
            maxXPlanePx = maxFlowXPlanePx,
            minYPlanePx = minFlowYPlanePx,
            maxYPlanePx = maxFlowYPlanePx,
        )
    }

    private fun radianceSourceRegion(
        tile: RadianceTile,
        flowBounds: RadianceFlowBounds,
    ): RadianceTileRect {
        return RadianceTilePlanner.sourceRegion(
            tile = tile,
            rawWidth = width,
            rawHeight = height,
            outputWidth = outputWidth,
            outputHeight = outputHeight,
            flowBounds = flowBounds,
            cfaPeriod = rawCfaPeriod,
            reconstructionHaloRawPx = if (radianceUsesVgnSemanticBackend) {
                RadianceVgnGeometry.WORK_HALO_PX
            } else {
                RcdShaders.REGION_HALO_PX
            },
            radianceSampleRadiusRawPx = RADIANCE_RECONSTRUCTION_RADIUS_RAW_PX,
        )
    }

    private fun reconstructRadianceReferenceTile(
        image: SafeImage,
        sourceRegion: RadianceTileRect,
        label: String,
    ) {
        uploadRcdRawRegion(image, sourceRegion, label)
        if (radianceUsesVgnSemanticBackend) {
            runRadianceReferenceVgn(sourceRegion, label)
        } else {
            runRcdRegion(sourceRegion, label)
            storeRcdRgbRegion(
                targetTexture = radianceRgbTileTexture,
                regionWidth = sourceRegion.width,
                regionHeight = sourceRegion.height,
                label = "$label RGB store",
            )
        }
    }

    private fun reconstructRadianceNonReferenceTile(
        image: SafeImage,
        sourceRegion: RadianceTileRect,
        label: String,
    ) {
        uploadRcdRawRegion(image, sourceRegion, label)
        if (radianceUsesVgnSemanticBackend) {
            runRadianceSemanticProxy(sourceRegion, label)
        } else {
            runRcdRegion(sourceRegion, label)
            storeRcdRgbRegion(
                targetTexture = radianceRgbTileTexture,
                regionWidth = sourceRegion.width,
                regionHeight = sourceRegion.height,
                label = "$label RGB store",
            )
        }
    }

    private fun radianceVgnUbo(capacity: Int, writer: ByteBuffer.() -> Unit): ByteBuffer {
        return ByteBuffer.allocateDirect(capacity).order(ByteOrder.nativeOrder()).apply {
            writer()
            limit(position())
            position(0)
        }
    }

    private fun radianceVgnBoundsUbo(
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
    ): ByteBuffer = radianceVgnUbo(16) {
        putInt(left)
        putInt(top)
        putInt(right)
        putInt(bottom)
    }

    private fun radianceVgnThresholdBoundsUbo(
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
        edgeThreshold: Int,
        vngThreshold: Int,
    ): ByteBuffer = radianceVgnUbo(32) {
        putInt(left)
        putInt(top)
        putInt(right)
        putInt(bottom)
        putInt(edgeThreshold)
        putInt(vngThreshold)
        putInt(0)
        putInt(0)
    }

    private fun dispatchRadianceVgnPass(
        program: Int,
        groupCountX: Int,
        groupCountY: Int,
        label: String,
        uboBinding: Int? = null,
        ubo: ByteBuffer? = null,
        vararg images: RadianceVgnImageBinding,
    ) {
        check(program != 0) { "Radiance VGN program unavailable: $label" }
        GLES31.glUseProgram(program)
        images.forEach { image ->
            GLES31.glBindImageTexture(
                image.unit,
                image.texture,
                0,
                false,
                0,
                image.access,
                image.format,
            )
        }
        if (uboBinding != null && ubo != null) {
            check(radianceVgnUbo != 0) { "Radiance VGN UBO is unavailable" }
            GLES31.glBindBuffer(GLES31.GL_UNIFORM_BUFFER, radianceVgnUbo)
            GLES31.glBufferData(
                GLES31.GL_UNIFORM_BUFFER,
                ubo.remaining(),
                ubo,
                GLES31.GL_DYNAMIC_DRAW,
            )
            GLES31.glBindBufferBase(GLES31.GL_UNIFORM_BUFFER, uboBinding, radianceVgnUbo)
            GLES31.glBindBuffer(GLES31.GL_UNIFORM_BUFFER, 0)
        }
        GLES31.glDispatchCompute(groupCountX.coerceAtLeast(1), groupCountY.coerceAtLeast(1), 1)
        // Every following VGN stage consumes an image written by the preceding stage. A GPU
        // memory barrier is sufficient; unlike the single-frame path, tiled Radiance must not
        // insert a CPU-visible fence after each pass.
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        checkGlError("Radiance VGN $label")
    }

    private fun runRadianceReferenceVgn(sourceRegion: RadianceTileRect, label: String) {
        val geometry = RadianceVgnGeometry.forRegion(
            sourceRegion.width,
            sourceRegion.height,
            cfaPattern,
        )
        val capacity = checkNotNull(radianceVgnCapacityGeometry)
        require(
            geometry.packedWidth <= capacity.packedWidth &&
                geometry.workWidth <= capacity.workWidth &&
                geometry.workHeight <= capacity.workHeight,
        ) { "Radiance VGN work surface exceeds allocated capacity" }
        val groupsPackedX = groupCount(geometry.packedWidth)
        val groupsWorkX = groupCount(geometry.workWidth)
        val groupsWorkY = groupCount(geometry.workHeight)
        val groupsHalfHeight = groupCount(geometry.halfHeight)
        val standardDeviation = kotlin.math.sqrt(
            (0.5f * (normalizedNoiseBetaByChannel[1] + normalizedNoiseBetaByChannel[2]))
                .coerceAtLeast(1e-10f),
        ).times(65535f).coerceIn(1f, 100f)
        val edgeThreshold = 50
        val vngThreshold = 400

        val prepare = radianceVgnPrograms[VgnShaders.PROGRAM_PREPARE]
        GLES31.glUseProgram(prepare)
        bindTexture(prepare, "uRawRegion", 0, rcdRawRegionTexture)
        bindTexture(prepare, "uLensShadingMap", 1, lensShadingTexture)
        GLES31.glUniform2i(
            uniformLocation(prepare, "uRegionSize"),
            sourceRegion.width,
            sourceRegion.height,
        )
        GLES31.glUniform2i(uniformLocation(prepare, "uFullImageSize"), width, height)
        GLES31.glUniform2i(
            uniformLocation(prepare, "uGlobalOrigin"),
            sourceRegion.left,
            sourceRegion.top,
        )
        GLES31.glUniform2i(
            uniformLocation(prepare, "uPackedSize"),
            geometry.packedWidth,
            geometry.workHeight,
        )
        GLES31.glUniform2i(
            uniformLocation(prepare, "uSourceOffset"),
            geometry.roiLeft,
            geometry.roiTop,
        )
        GLES31.glUniform1i(uniformLocation(prepare, "uCfaPattern"), cfaPattern)
        GLES31.glUniform4fv(uniformLocation(prepare, "uBlackLevel"), 1, normalizedBlackLevel, 0)
        GLES31.glUniform1f(uniformLocation(prepare, "uWhiteLevel"), normalizedWhiteLevel)
        GLES31.glUniform4fv(
            uniformLocation(prepare, "uCalculationGains"),
            1,
            demosaicCalculationWbGains,
            0,
        )
        GLES31.glUniform1i(uniformLocation(prepare, "uReconstructHighlights"), 1)
        bindImage(0, radianceVgnPackedFloatTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        GLES31.glDispatchCompute(groupsPackedX, groupsWorkY, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        checkGlError("$label VGN prepare")

        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_NEUTRAL],
            groupsPackedX,
            groupsWorkY,
            "$label neutral",
            2,
            radianceVgnUbo(48) {
                putInt(0); putInt(0); putInt(geometry.packedWidth); putInt(geometry.workHeight)
                putInt(4096); putInt(4096); putInt(4096); putInt(0)
                putInt(12); putInt(0); putInt(0); putInt(0)
            },
            RadianceVgnImageBinding(
                0,
                radianceVgnPackedFloatTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnPackedBayerTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_0A1],
            groupsPackedX,
            groupsWorkY,
            "$label pass 0A1",
            2,
            radianceVgnBoundsUbo(0, 1, geometry.packedWidth - 1, geometry.workHeight - 1),
            RadianceVgnImageBinding(
                0,
                radianceVgnPackedBayerTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnPackedSmoothTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_0A2],
            groupsWorkX,
            groupsHalfHeight,
            "$label pass 0A2",
            2,
            radianceVgnUbo(32) {
                putInt(0); putInt(1); putInt(geometry.packedWidth - 1)
                putInt((geometry.workHeight - 2) / 2)
                putFloat(standardDeviation); putFloat(0f); putFloat(0f); putFloat(0f)
            },
            RadianceVgnImageBinding(
                0,
                radianceVgnPackedBayerTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnScaleTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_0B],
            groupsPackedX,
            groupsHalfHeight,
            "$label pass 0B",
            2,
            radianceVgnBoundsUbo(1, 0, geometry.packedWidth - 1, geometry.workHeight - 4),
            RadianceVgnImageBinding(
                0,
                radianceVgnScaleTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnMedianTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_0C],
            groupsPackedX,
            groupsWorkY,
            "$label pass 0C",
            2,
            radianceVgnBoundsUbo(0, 1, geometry.packedWidth - 1, geometry.workHeight - 1),
            RadianceVgnImageBinding(
                0,
                radianceVgnPackedSmoothTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnEdgeTexture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16I,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_1],
            groupsWorkX,
            groupsWorkY,
            "$label pass 1",
            5,
            radianceVgnThresholdBoundsUbo(
                12,
                12,
                geometry.workWidth - 12,
                geometry.workHeight - 12,
                edgeThreshold,
                vngThreshold,
            ),
            RadianceVgnImageBinding(
                0,
                radianceVgnPackedBayerTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnEdgeTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16I,
            ),
            RadianceVgnImageBinding(
                2,
                radianceVgnScaleTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            ),
            RadianceVgnImageBinding(
                3,
                radianceVgnMedianTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            ),
            RadianceVgnImageBinding(
                4,
                radianceVgnFull0Texture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_2],
            groupsWorkX,
            groupsWorkY,
            "$label pass 2",
            2,
            radianceVgnBoundsUbo(
                13,
                13,
                geometry.workWidth - 13,
                geometry.workHeight - 13,
            ),
            RadianceVgnImageBinding(
                0,
                radianceVgnFull0Texture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnFull1Texture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            ),
        )
        dispatchRadianceVgnPass(
            radianceVgnPrograms[VgnShaders.PROGRAM_3],
            groupsWorkX,
            groupsWorkY,
            "$label pass 3",
            4,
            radianceVgnThresholdBoundsUbo(
                16,
                16,
                geometry.workWidth - 16,
                geometry.workHeight - 16,
                edgeThreshold,
                vngThreshold,
            ),
            RadianceVgnImageBinding(
                0,
                radianceVgnFull1Texture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                1,
                radianceVgnPackedBayerTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            ),
            RadianceVgnImageBinding(
                2,
                radianceVgnEdgeTexture,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16I,
            ),
            RadianceVgnImageBinding(
                3,
                radianceVgnFull0Texture,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            ),
        )

        GLES31.glUseProgram(radianceVgnFinalProgram)
        GLES31.glUniform2i(
            uniformLocation(radianceVgnFinalProgram, "uOutputSize"),
            sourceRegion.width,
            sourceRegion.height,
        )
        GLES31.glUniform2i(
            uniformLocation(radianceVgnFinalProgram, "uRoiOrigin"),
            geometry.roiLeft,
            geometry.roiTop,
        )
        GLES31.glUniform3f(
            uniformLocation(radianceVgnFinalProgram, "uCalculationGains"),
            demosaicCalculationWbGains[0],
            1f,
            demosaicCalculationWbGains[3],
        )
        bindImage(
            0,
            radianceVgnFull0Texture,
            GLES31.GL_READ_ONLY,
            GLES30.GL_RGBA16UI,
        )
        bindImage(
            1,
            radianceRgbTileTexture,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(groupCount(sourceRegion.width), groupCount(sourceRegion.height), 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError("$label VGN camera RGB")
    }

    private fun runRadianceSemanticProxy(sourceRegion: RadianceTileRect, label: String) {
        val seed = radianceSemanticSeedProgram
        GLES31.glUseProgram(seed)
        bindTexture(seed, "uRawRegion", 0, rcdRawRegionTexture)
        bindTexture(seed, "uLensShadingMap", 1, lensShadingTexture)
        GLES31.glUniform2i(
            uniformLocation(seed, "uRegionSize"),
            sourceRegion.width,
            sourceRegion.height,
        )
        GLES31.glUniform2i(uniformLocation(seed, "uFullImageSize"), width, height)
        GLES31.glUniform2i(
            uniformLocation(seed, "uGlobalOrigin"),
            sourceRegion.left,
            sourceRegion.top,
        )
        GLES31.glUniform1i(uniformLocation(seed, "uCfaPattern"), cfaPattern)
        GLES31.glUniform4fv(uniformLocation(seed, "uBlackLevel"), 1, normalizedBlackLevel, 0)
        GLES31.glUniform1f(uniformLocation(seed, "uWhiteLevel"), normalizedWhiteLevel)
        GLES31.glUniform4fv(
            uniformLocation(seed, "uCalculationGains"),
            1,
            demosaicCalculationWbGains,
            0,
        )
        bindImage(
            0,
            radianceSemanticSeedTexture,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(groupCount(sourceRegion.width), groupCount(sourceRegion.height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        checkGlError("$label semantic seed")

        val resolve = radianceSemanticResolveProgram
        GLES31.glUseProgram(resolve)
        GLES31.glUniform2i(
            uniformLocation(resolve, "uRegionSize"),
            sourceRegion.width,
            sourceRegion.height,
        )
        GLES31.glUniform2i(uniformLocation(resolve, "uFullImageSize"), width, height)
        GLES31.glUniform2i(
            uniformLocation(resolve, "uGlobalOrigin"),
            sourceRegion.left,
            sourceRegion.top,
        )
        GLES31.glUniform1i(uniformLocation(resolve, "uCfaPattern"), cfaPattern)
        bindImage(
            0,
            radianceSemanticSeedTexture,
            GLES31.GL_READ_ONLY,
            GLES30.GL_RGBA16F,
        )
        bindImage(
            1,
            radianceRgbTileTexture,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(groupCount(sourceRegion.width), groupCount(sourceRegion.height), 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError("$label semantic resolve")
    }

    private fun normalizeRadianceTile(
        tile: RadianceTile,
        globalAlignmentRejectCount: Int,
        acceptedFusionFrameCount: Int,
        highlightAlignment: RadianceHighlightAlignment?,
        highlightSourceRegion: RadianceTileRect?,
    ) {
        require((highlightAlignment == null) == (highlightSourceRegion == null))
        val program = if (highlightAlignment != null) {
            check(radianceHighlightNormalizeProgram != 0)
            radianceHighlightNormalizeProgram
        } else {
            normalizeSuperResolutionProgram
        }
        bindFramebufferOutput(outputTexture, "normalizeRadianceTile")
        GLES30.glViewport(0, 0, tile.outputCore.width, tile.outputCore.height)
        GLES30.glUseProgram(program)
        bindTexture(program, "uNrSumRg", 0, superResolutionAccumulatorTexture)
        bindTexture(program, "uNrSumBw", 1, superResolutionAccumulatorBwTexture)
        bindTexture(program, "uNrWeightRg", 2, radianceNrWeightRgTexture)
        bindTexture(program, "uDetailSumRg", 3, superResolutionAccumulatorBTexture)
        bindTexture(program, "uDetailSumBw", 4, radianceDetailBwTexture)
        bindTexture(program, "uDetailWeightRg", 5, radianceDetailWeightRgTexture)
        bindTexture(program, "uReferenceBase", 6, radianceReferenceBaseTexture)
        if (visualizeRadianceFusionRejections) {
            bindTexture(
                program,
                "uFusionRejections",
                7,
                radianceFusionRejectionTexture,
            )
        }
        if (visualizeRadianceLongParticipation) {
            bindTexture(
                program,
                "uLongParticipation",
                12,
                radianceLongParticipationTexture,
            )
        }
        setCommonUniforms(program)
        GLES31.glUniform2i(
            uniformLocation(program, "uAccumulatorOrigin"),
            tile.outputWorking.left,
            tile.outputWorking.top,
        )
        GLES31.glUniform2i(
            uniformLocation(program, "uAccumulatorSize"),
            tile.outputWorking.width,
            tile.outputWorking.height,
        )
        GLES31.glUniform2i(
            uniformLocation(program, "uOutputOrigin"),
            tile.outputCore.left,
            tile.outputCore.top,
        )
        if (visualizeRadianceFusionRejections || visualizeRadianceSrDetail) {
            if (visualizeRadianceFusionRejections) {
                GLES31.glUniform1f(
                    uniformLocation(program, "uGlobalAlignmentRejectCount"),
                    globalAlignmentRejectCount.coerceAtLeast(0).toFloat(),
                )
                GLES31.glUniform1f(
                    uniformLocation(program, "uAcceptedFusionFrameCount"),
                    acceptedFusionFrameCount.coerceAtLeast(0).toFloat(),
                )
            }
            GLES31.glUniform3fv(
                uniformLocation(program, "uDebugNeutralRgb"),
                1,
                radianceDebugNeutralColor,
                0,
            )
        }
        if (highlightAlignment != null && highlightSourceRegion != null) {
            bindTexture(program, "uHighlightRgb", 8, radianceRgbTileTexture)
            bindTexture(program, "uHighlightFlow", 10, highlightAlignment.flowTexture)
            bindTexture(program, "uReferenceRaw", 11, refRaw)
            GLES31.glUniform2i(
                uniformLocation(program, "uHighlightSourceOrigin"),
                highlightSourceRegion.left,
                highlightSourceRegion.top,
            )
            GLES31.glUniform2i(
                uniformLocation(program, "uHighlightSourceSize"),
                highlightSourceRegion.width,
                highlightSourceRegion.height,
            )
            GLES31.glUniform2i(
                uniformLocation(program, "uHighlightFlowGridSize"),
                gridWidth,
                gridHeight,
            )
            GLES31.glUniform2i(uniformLocation(program, "uInputSize"), width, height)
            GLES31.glUniform2i(uniformLocation(program, "uOutputSize"), outputWidth, outputHeight)
            GLES31.glUniform1i(
                uniformLocation(program, "uHighlightFlowTileSize"),
                flowGridSpacing,
            )
            setRadianceHighlightUniforms(
                program = program,
                exposureRatio = highlightAlignment.frame.exposureRatio,
            )
        }
        setRadianceNormalizeUniforms(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("normalizeRadianceTile ${tile.index}")
    }

    private fun setRadianceNormalizeUniforms(program: Int = normalizeSuperResolutionProgram) {
        GLES31.glUniform1f(
            uniformLocation(program, "uNrConfidenceStart"),
            radianceFusionTuning.nrConfidenceStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uNrConfidenceFull"),
            radianceFusionTuning.nrConfidenceFull.coerceAtLeast(radianceFusionTuning.nrConfidenceStart),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uDetailConfidenceStart"),
            radianceFusionTuning.detailConfidenceStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uDetailConfidenceFull"),
            radianceFusionTuning.detailConfidenceFull.coerceAtLeast(radianceFusionTuning.detailConfidenceStart),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uReferenceDetailFloor"),
            radianceFusionTuning.referenceDetailFloor.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uDetailChromaStrength"),
            radianceFusionTuning.detailChromaStrength.coerceIn(0f, 1f),
        )
        GLES31.glUniform3f(
            uniformLocation(program, "uCalculationGains"),
            demosaicCalculationWbGains[0],
            1f,
            demosaicCalculationWbGains[3],
        )
    }

    private fun setRadianceHighlightUniforms(
        program: Int,
        exposureRatio: Float,
    ) {
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightExposureRatio"),
            exposureRatio.coerceAtLeast(1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightNormalClipStart"),
            radianceFusionTuning.highlightNormalClipStart.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightNormalClipFull"),
            radianceFusionTuning.highlightNormalClipFull.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightFlowMinimumConfidence"),
            radianceFusionTuning.highlightFlowMinimumConfidence.coerceIn(0f, 1f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightFlowFullConfidence"),
            radianceFusionTuning.highlightFlowFullConfidence.coerceIn(
                radianceFusionTuning.highlightFlowMinimumConfidence.coerceIn(0f, 1f),
                1f,
            ),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightClipNoiseSigmaStart"),
            radianceFusionTuning.highlightClipNoiseSigmaStart.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            uniformLocation(program, "uHighlightClipNoiseSigmaFull"),
            radianceFusionTuning.highlightClipNoiseSigmaFull.coerceIn(
                0f,
                radianceFusionTuning.highlightClipNoiseSigmaStart.coerceAtLeast(0f),
            ),
        )
    }

    private fun readRadianceOutputTile(
        scratch: ByteBuffer,
        output: ShortBuffer,
        outputCore: RadianceTileRect,
    ): ReadOutputTiming {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readbackFbo)
        return try {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                outputTexture,
                0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            checkFramebuffer("readRadianceOutputTile")
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
            scratch.clear()
            val readStart = System.currentTimeMillis()
            GLES30.glReadPixels(
                0,
                0,
                outputCore.width,
                outputCore.height,
                GLES30.GL_RGBA_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                scratch,
            )
            val readMs = System.currentTimeMillis() - readStart
            checkGlError("readRadianceOutputTile core=$outputCore")

            val copyStart = System.currentTimeMillis()
            val rgba = scratch.order(ByteOrder.nativeOrder()).asShortBuffer()
            for (localY in 0 until outputCore.height) {
                for (localX in 0 until outputCore.width) {
                    val source = (localY * outputCore.width + localX) * 4
                    val target = (
                        (outputCore.top + localY) * outputWidth + outputCore.left + localX
                        ) * 3
                    output.put(target, rgba.get(source))
                    output.put(target + 1, rgba.get(source + 1))
                    output.put(target + 2, rgba.get(source + 2))
                }
            }
            val copyMs = System.currentTimeMillis() - copyStart
            ReadOutputTiming(
                elapsedMs = readMs + copyMs,
                glReadMs = readMs,
                copyMs = copyMs,
                allocMs = 0L,
                mode = "radiance-rgb16-tile",
            )
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        }
    }

    private fun recordAlignmentDiagnostics() {
        runDiagnosticStep("alignment") {
            GLES31.glUseProgram(diagnosticAlignmentProgram)
            bindTexture(diagnosticAlignmentProgram, "uFlowGrid", 0, flowTexture)
            bindTexture(diagnosticAlignmentProgram, "uRobustness", 1, robustnessTexture)
            bindTexture(diagnosticAlignmentProgram, "uTileMask", 2, tileMaskTexture)
            bindTexture(diagnosticAlignmentProgram, "uReference", 3, refProxy)
            bindTexture(diagnosticAlignmentProgram, "uCurrent", 4, curProxy)
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                DIAGNOSTIC_BUFFER_BINDING,
                diagnosticBuffer,
            )
            setDiagnosticSampleUniforms(diagnosticAlignmentProgram)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uPlaneSize"), planeWidth, planeHeight)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uTileSize"), flowGridSpacing)
            setRegistrationUniforms(diagnosticAlignmentProgram, currentRegistrationTransform)
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uFlowHistogramRange"),
                diagnosticFlowHistogramRange(),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uResidualHistogramRange"),
                diagnosticResidualHistogramRange(),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uNoiseResidualHistogramRange"),
                diagnosticNoiseResidualHistogramRange(),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uFlowRangeHistogramRange"),
                diagnosticFlowRangeHistogramRange(),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uFlowOutlierThreshold"),
                hwmfBlend.flowOutlierThresholdPx.coerceAtLeast(0f),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uTileRejectThreshold"),
                hwmfDebug.tileRejectThreshold,
            )
            GLES31.glUniform1f(GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uNoiseAlpha"), noiseAlpha)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uNoiseBeta"), noiseBeta)
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uSrReadyResidualThreshold"),
                hwmfDebug.srReadyResidualThreshold,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uSrReadyNoiseResidualThreshold"),
                hwmfDebug.srReadyNoiseResidualThreshold,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uSrReadyFlowRangeThreshold"),
                hwmfDebug.srReadyFlowRangeThresholdPx,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uHighConfidenceRobustnessThreshold"),
                hwmfDebug.highConfidenceRobustnessThreshold,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uHighConfidenceTileThreshold"),
                hwmfDebug.highConfidenceTileThreshold,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(diagnosticAlignmentProgram, "uSrReadyDetailThreshold"),
                hwmfDebug.srReadyDetailThreshold,
            )
            GLES31.glDispatchCompute(groupCount(diagnosticSampleWidth()), groupCount(diagnosticSampleHeight()), 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, DIAGNOSTIC_BUFFER_BINDING, 0)
            checkGlError("recordAlignmentDiagnostics")
        }
    }

    private fun collectFinalDiagnostics(
        frameCount: Int,
        alignedFrameCount: Int,
        elapsedMs: Long,
        superResolutionDecision: SuperResolutionOutputDecision = SuperResolutionOutputDecision.Disabled,
    ): RawStackDiagnostics? {
        if (!hwmfDebug.collectMetrics) return null
        val stats = readDiagnosticStats() ?: return null
        val diagnostics = buildDiagnostics(
            stats = stats,
            frameCount = frameCount,
            alignedFrameCount = alignedFrameCount,
            elapsedMs = elapsedMs,
            superResolutionDecision = superResolutionDecision,
        )
        if (hwmfDebug.logCompactSummary) {
            PLog.i(TAG, diagnostics.compactSummary())
        }
        return diagnostics
    }

    private fun runDiagnosticStep(label: String, block: () -> Unit): Boolean {
        if (!hwmfDebug.collectMetrics ||
            diagnosticsFailed ||
            diagnosticBuffer == 0 ||
            diagnosticAlignmentProgram == 0
        ) {
            return false
        }
        return try {
            block()
            true
        } catch (e: Exception) {
            diagnosticsFailed = true
            PLog.w(TAG, "RAW stack diagnostics $label step failed; diagnostics disabled", e)
            false
        }
    }

    private fun setDiagnosticSampleUniforms(program: Int) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uImageSize"), width, height)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(program, "uSampleGridSize"),
            diagnosticSampleWidth(),
            diagnosticSampleHeight(),
        )
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uSampleStep"), hwmfDebug.sampleStep)
    }

    private fun readDiagnosticStats(): IntArray? {
        if (diagnosticBuffer == 0 || diagnosticsFailed) return null
        return try {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, diagnosticBuffer)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                DIAGNOSTIC_UINT_COUNT * 4,
                GLES31.GL_MAP_READ_BIT,
            ) ?: throw IllegalStateException("diagnostics stats buffer map failed")
            try {
                val byteBuffer = mapped as? ByteBuffer
                    ?: throw IllegalStateException("diagnostics stats buffer is not ByteBuffer")
                IntArray(DIAGNOSTIC_UINT_COUNT).also { values ->
                    byteBuffer.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
        } catch (e: Exception) {
            diagnosticsFailed = true
            PLog.w(TAG, "Failed to read RAW stack diagnostics", e)
            null
        } finally {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun buildDiagnostics(
        stats: IntArray,
        frameCount: Int,
        alignedFrameCount: Int,
        elapsedMs: Long,
        superResolutionDecision: SuperResolutionOutputDecision,
    ): RawStackDiagnostics {
        val flowCount = uintStat(stats, DIAGNOSTIC_FLOW_COUNT_INDEX)
        val robustCount = uintStat(stats, DIAGNOSTIC_ROBUST_COUNT_INDEX)
        val tileCount = uintStat(stats, DIAGNOSTIC_TILE_COUNT_INDEX)
        val weightCount = uintStat(stats, DIAGNOSTIC_WEIGHT_COUNT_INDEX)
        val lscCount = uintStat(stats, DIAGNOSTIC_LSC_COUNT_INDEX)
        val lscEdgeCount = uintStat(stats, DIAGNOSTIC_LSC_EDGE_COUNT_INDEX)
        val residualCount = uintStat(stats, DIAGNOSTIC_RESIDUAL_COUNT_INDEX)
        val highConfidenceCount = uintStat(stats, DIAGNOSTIC_HIGH_CONFIDENCE_COUNT_INDEX)

        return RawStackDiagnostics(
            outputScale = superResolutionScale,
            frameCount = frameCount,
            alignedFrameCount = alignedFrameCount,
            width = outputWidth,
            height = outputHeight,
            sampleStep = hwmfDebug.sampleStep,
            registration = registrationSummary,
            registrationQuality = registrationQualitySummary(),
            superResolutionOutputMode = superResolutionDecision.mode.takeIf { it != "n/a" },
            superResolutionFallbackReason = superResolutionDecision.fallbackReason,
            superResolutionDetailFrameCount = superResolutionDecision.detailFrameCount,
            superResolutionDetailWeightSum = superResolutionDecision.detailWeightSum,
            superResolutionPhaseBinCount = superResolutionDecision.phaseBinCount,
            superResolutionPhaseBinTotal = superResolutionDecision.phaseBinTotal,
            superResolutionPhaseBinSamples = superResolutionDecision.phaseBinSamples,
            flowMagnitudePx = metricDistribution(
                stats = stats,
                count = flowCount,
                sumIndex = DIAGNOSTIC_FLOW_SUM_INDEX,
                maxIndex = DIAGNOSTIC_FLOW_MAX_INDEX,
                quantization = DIAGNOSTIC_FLOW_QUANTIZATION,
                histOffset = DIAGNOSTIC_FLOW_HIST_OFFSET,
                histRange = diagnosticFlowHistogramRange(),
            ),
            alignmentResidual = metricDistribution(
                stats = stats,
                count = residualCount,
                sumIndex = DIAGNOSTIC_RESIDUAL_SUM_INDEX,
                maxIndex = DIAGNOSTIC_RESIDUAL_MAX_INDEX,
                quantization = DIAGNOSTIC_RESIDUAL_QUANTIZATION,
                histOffset = DIAGNOSTIC_RESIDUAL_HIST_OFFSET,
                histRange = diagnosticResidualHistogramRange(),
            ),
            noiseNormalizedResidual = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_NOISE_RESIDUAL_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_NOISE_RESIDUAL_SUM_INDEX,
                maxIndex = DIAGNOSTIC_NOISE_RESIDUAL_MAX_INDEX,
                quantization = DIAGNOSTIC_NOISE_RESIDUAL_QUANTIZATION,
                histOffset = DIAGNOSTIC_NOISE_RESIDUAL_HIST_OFFSET,
                histRange = diagnosticNoiseResidualHistogramRange(),
            ),
            flowLocalRangePx = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_FLOW_RANGE_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_FLOW_RANGE_SUM_INDEX,
                maxIndex = DIAGNOSTIC_FLOW_RANGE_MAX_INDEX,
                quantization = DIAGNOSTIC_FLOW_QUANTIZATION,
                histOffset = DIAGNOSTIC_FLOW_RANGE_HIST_OFFSET,
                histRange = diagnosticFlowRangeHistogramRange(),
            ),
            robustness = metricDistribution(
                stats = stats,
                count = robustCount,
                sumIndex = DIAGNOSTIC_ROBUST_SUM_INDEX,
                maxIndex = DIAGNOSTIC_ROBUST_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_ROBUST_HIST_OFFSET,
                histRange = 1.0f,
            ),
            tileMask = metricDistribution(
                stats = stats,
                count = tileCount,
                sumIndex = DIAGNOSTIC_TILE_SUM_INDEX,
                maxIndex = DIAGNOSTIC_TILE_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_TILE_HIST_OFFSET,
                histRange = 1.0f,
            ),
            accumulatorWeight = metricDistribution(
                stats = stats,
                count = weightCount,
                sumIndex = DIAGNOSTIC_WEIGHT_SUM_INDEX,
                maxIndex = DIAGNOSTIC_WEIGHT_MAX_INDEX,
                quantization = DIAGNOSTIC_WEIGHT_QUANTIZATION,
                histOffset = DIAGNOSTIC_WEIGHT_HIST_OFFSET,
                histRange = diagnosticWeightHistogramRange(frameCount),
            ),
            superResolutionSupport = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_SR_SUPPORT_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_SR_SUPPORT_SUM_INDEX,
                maxIndex = DIAGNOSTIC_SR_SUPPORT_MAX_INDEX,
                quantization = DIAGNOSTIC_WEIGHT_QUANTIZATION,
                histOffset = DIAGNOSTIC_SR_SUPPORT_HIST_OFFSET,
                histRange = diagnosticWeightHistogramRange(frameCount),
            ),
            postfilterResidual = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_RESIDUAL_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_RESIDUAL_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_RESIDUAL_MAX_INDEX,
                quantization = DIAGNOSTIC_POST_RESIDUAL_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_RESIDUAL_HIST_OFFSET,
                histRange = diagnosticPostResidualHistogramRange(),
            ),
            postfilterSmooth = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_SMOOTH_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_SMOOTH_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_SMOOTH_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_SMOOTH_HIST_OFFSET,
                histRange = 1.0f,
            ),
            postfilterEffectiveSmooth = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_HIST_OFFSET,
                histRange = 1.0f,
            ),
            postfilterWienerGain = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_WIENER_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_WIENER_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_WIENER_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_WIENER_HIST_OFFSET,
                histRange = 1.0f,
            ),
            postfilterLscBoost = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_LSC_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_LSC_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_LSC_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_LSC_HIST_OFFSET,
                histRange = 1.0f,
            ),
            postfilterLowWeightBoost = metricDistribution(
                stats = stats,
                count = uintStat(stats, DIAGNOSTIC_POST_LOW_WEIGHT_COUNT_INDEX),
                sumIndex = DIAGNOSTIC_POST_LOW_WEIGHT_SUM_INDEX,
                maxIndex = DIAGNOSTIC_POST_LOW_WEIGHT_MAX_INDEX,
                quantization = DIAGNOSTIC_UNIT_QUANTIZATION,
                histOffset = DIAGNOSTIC_POST_LOW_WEIGHT_HIST_OFFSET,
                histRange = 1.0f,
            ),
            rejectedTileRatio = ratioStat(
                numerator = uintStat(stats, DIAGNOSTIC_TILE_REJECT_COUNT_INDEX),
                denominator = tileCount,
            ),
            flowOutlierRatio = ratioStat(
                numerator = uintStat(stats, DIAGNOSTIC_FLOW_OUTLIER_COUNT_INDEX),
                denominator = flowCount,
            ),
            highConfidenceTileRatio = ratioStat(
                numerator = highConfidenceCount,
                denominator = residualCount,
            ),
            srAlignmentReadyRatio = ratioStat(
                numerator = uintStat(stats, DIAGNOSTIC_SR_ALIGNMENT_READY_COUNT_INDEX),
                denominator = residualCount,
            ),
            srDetailReadyRatio = ratioStat(
                numerator = uintStat(stats, DIAGNOSTIC_SR_DETAIL_READY_COUNT_INDEX),
                denominator = residualCount,
            ),
            lensShadingMeanGain = meanQuantizedStat(
                sum = uintStat(stats, DIAGNOSTIC_LSC_SUM_INDEX),
                count = lscCount,
                quantization = DIAGNOSTIC_LSC_QUANTIZATION,
            ),
            lensShadingEdgeMeanGain = meanQuantizedStat(
                sum = uintStat(stats, DIAGNOSTIC_LSC_EDGE_SUM_INDEX),
                count = lscEdgeCount,
                quantization = DIAGNOSTIC_LSC_QUANTIZATION,
            ),
            elapsedMs = elapsedMs,
        )
    }

    private fun metricDistribution(
        stats: IntArray,
        count: Long,
        sumIndex: Int,
        maxIndex: Int,
        quantization: Float,
        histOffset: Int,
        histRange: Float,
    ): RawStackMetricDistribution {
        if (count <= 0L || quantization <= 0f) return RawStackMetricDistribution.Empty
        return RawStackMetricDistribution(
            sampleCount = count,
            mean = meanQuantizedStat(uintStat(stats, sumIndex), count, quantization),
            p10 = histogramPercentile(stats, histOffset, count, 0.10f, histRange),
            p50 = histogramPercentile(stats, histOffset, count, 0.50f, histRange),
            p90 = histogramPercentile(stats, histOffset, count, 0.90f, histRange),
            max = uintStat(stats, maxIndex).toFloat() / quantization,
        )
    }

    private fun histogramPercentile(
        stats: IntArray,
        histOffset: Int,
        count: Long,
        percentile: Float,
        range: Float,
    ): Float {
        if (count <= 0L || range <= 0f) return Float.NaN
        val target = max(1L, ceil(count.toDouble() * percentile.toDouble()).toLong())
        var cumulative = 0L
        for (bin in 0 until DIAGNOSTIC_HIST_BINS) {
            cumulative += uintStat(stats, histOffset + bin)
            if (cumulative >= target) {
                return if (DIAGNOSTIC_HIST_BINS > 1) {
                    range * bin.toFloat() / (DIAGNOSTIC_HIST_BINS - 1).toFloat()
                } else {
                    0f
                }
            }
        }
        return range
    }

    private fun meanQuantizedStat(sum: Long, count: Long, quantization: Float): Float {
        return if (count > 0L && quantization > 0f) {
            sum.toFloat() / quantization / count.toFloat()
        } else {
            Float.NaN
        }
    }

    private fun ratioStat(numerator: Long, denominator: Long): Float {
        return if (denominator > 0L) {
            numerator.toFloat() / denominator.toFloat()
        } else {
            Float.NaN
        }
    }

    private fun uintStat(stats: IntArray, index: Int): Long {
        return stats.getOrElse(index) { 0 }.toLong() and 0xFFFF_FFFFL
    }

    private fun diagnosticSampleWidth(): Int {
        return (width + hwmfDebug.sampleStep - 1) / hwmfDebug.sampleStep
    }

    private fun diagnosticSampleHeight(): Int {
        return (height + hwmfDebug.sampleStep - 1) / hwmfDebug.sampleStep
    }

    private fun diagnosticFlowHistogramRange(): Float {
        return max(1.0f, hwmfBlend.flowOutlierThresholdPx.coerceAtLeast(0f) * 2.0f)
    }

    private fun diagnosticWeightHistogramRange(frameCount: Int): Float {
        return max(1.0f, frameCount.coerceAtLeast(1).toFloat() * 2.0f)
    }

    private fun diagnosticResidualHistogramRange(): Float {
        return max(0.04f, hwmfDebug.srReadyResidualThreshold * 4.0f)
    }

    private fun diagnosticNoiseResidualHistogramRange(): Float {
        return max(4.0f, hwmfDebug.srReadyNoiseResidualThreshold * 4.0f)
    }

    private fun diagnosticFlowRangeHistogramRange(): Float {
        return max(4.0f, hwmfDebug.srReadyFlowRangeThresholdPx * 4.0f)
    }

    private fun diagnosticPostResidualHistogramRange(): Float {
        return 12.0f
    }

    private fun Float.percentString(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.1f%%", this * 100f)
        } else {
            "n/a"
        }
    }

    private fun Float.formatPx(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.2fpx", this)
        } else {
            "n/a"
        }
    }

    private fun Float.formatScale(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.2f", this)
        } else {
            "n/a"
        }
    }

    private fun Float.formatWeight(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.3f", this)
        } else {
            "n/a"
        }
    }

    private fun Long.mibString(): String {
        return java.lang.String.format(java.util.Locale.US, "%.1fMiB", this.toDouble() / (1024.0 * 1024.0))
    }

    private fun Float.formatScore(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.4f", this)
        } else {
            "n/a"
        }
    }

    private fun RawStackRegistrationEstimate.globalSummary(): String {
        return if (globalBestScore.isFinite()) {
            val refinedTranslation = registrationTranslation(candidateTransform)
            val subpixel = if (globalSubpixelRefined && refinedTranslation != null) {
                java.lang.String.format(
                    java.util.Locale.US,
                    " subpix=[%.2f %.2f]->[%.2f %.2f]px",
                    globalDiscreteDxRaw,
                    globalDiscreteDyRaw,
                    refinedTranslation.dx,
                    refinedTranslation.dy,
                )
            } else {
                " subpix=no"
            }
            "score=${globalBestScore.formatScore()} basinMargin=${globalScoreMargin.formatScore()} " +
                "coverage=${globalCoverage.percentString()}$subpixel"
        } else {
            "n/a"
        }
    }

    private fun RawStackRegistrationEstimate?.globalSummaryOrEmpty(): String {
        return this?.globalSummary() ?: "n/a"
    }

    private fun RegistrationTranslation?.translationSummary(): String {
        return if (this != null && dx.isFinite() && dy.isFinite()) {
            java.lang.String.format(java.util.Locale.US, "[%.2f %.2f]px", dx, dy)
        } else {
            "n/a"
        }
    }

    private fun RegistrationTranslation?.seedDistance(seed: RegistrationTranslation?): Float {
        return if (this != null && seed != null) {
            distanceTo(seed)
        } else {
            Float.NaN
        }
    }

    private fun FloatArray.matrixSummary(): String {
        if (size < 9) return "n/a"
        return java.lang.String.format(
            java.util.Locale.US,
            "[%.5f %.5f %.2f; %.5f %.5f %.2f; %.5f %.5f %.5f]",
            this[0], this[1], this[2],
            this[3], this[4], this[5],
            this[6], this[7], this[8],
        )
    }

    private fun bindFramebufferOutput(texture: Int, label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        if (renderFboTargetTexture != texture) {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                texture,
                0,
            )
            renderFboTargetTexture = texture
        }
        GLES30.glDrawBuffers(1, colorAttachment0, 0)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_DITHER)
        if (checkedRenderTargetTextures.add(texture)) {
            checkFramebuffer(label)
        }
    }

    private fun finishFramebufferPass(label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    private fun setCommonUniforms(program: Int) {
        GLES31.glUniform1i(uniformLocation(program, "uCfaPattern"), cfaPattern)
        GLES31.glUniform1fv(uniformLocation(program, "uBlackLevel[0]"), 4, normalizedBlackLevel, 0)
        GLES31.glUniform1f(uniformLocation(program, "uWhiteLevel"), normalizedWhiteLevel)
        GLES31.glUniform1f(uniformLocation(program, "uNoiseAlpha"), noiseAlpha)
        GLES31.glUniform1f(uniformLocation(program, "uNoiseBeta"), noiseBeta)
        GLES31.glUniform1fv(
            uniformLocation(program, "uNoiseAlphaByChannel[0]"),
            4,
            normalizedNoiseAlphaByChannel,
            0
        )
        GLES31.glUniform1fv(
            uniformLocation(program, "uNoiseBetaByChannel[0]"),
            4,
            normalizedNoiseBetaByChannel,
            0
        )
    }

    private fun setPrefilterStructureUniforms(program: Int) {
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureFlatnessSnrLow"), hwmfPrefilter.structureFlatnessSnrLow)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureFlatnessSnrHigh"), hwmfPrefilter.structureFlatnessSnrHigh)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureKernelDetail"), hwmfPrefilter.structureKernelDetail)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureKernelDenoise"), hwmfPrefilter.structureKernelDenoise)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureKernelShrink"), hwmfPrefilter.structureKernelShrink)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uStructureKernelStretch"), hwmfPrefilter.structureKernelStretch)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uStructureAnisotropyThreshold"),
            hwmfPrefilter.structureAnisotropyThreshold
        )
    }

    private fun setNrRobustnessUniforms(program: Int) {
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustNoiseFloorSpatialScale"),
            hwmfBlend.robustnessNoiseFloorSpatialScale
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustNoiseFloorEdgeScale"),
            hwmfBlend.robustnessNoiseFloorEdgeScale
        )
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustTauBase"), hwmfBlend.robustnessTauBase)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustTauEdge"), hwmfBlend.robustnessTauEdge)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustResidualPower"), hwmfBlend.robustnessResidualPower)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustFlowRangePenaltyStartPx"),
            hwmfBlend.flowRangePenaltyStartPx
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustFlowRangeRejectPx"),
            hwmfBlend.flowRangeRejectPx
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchPeakConfidenceStart"),
            hwmfBlend.patchPeakConfidenceStart,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchPeakConfidenceFull"),
            hwmfBlend.patchPeakConfidenceFull,
        )
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustMinMixFlat"), hwmfBlend.robustMinMixFlat)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustMinMixEdge"), hwmfBlend.robustMinMixEdge)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustCenterMixFlat"), hwmfBlend.robustCenterMixFlat)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustCenterMixEdge"), hwmfBlend.robustCenterMixEdge)
    }

    private fun setDetailConfidenceUniforms(program: Int) {
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustFlowRangePenaltyStartPx"),
            hwmfBlend.flowRangePenaltyStartPx,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uRobustFlowRangeRejectPx"),
            hwmfBlend.flowRangeRejectPx,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchScoreFullConfidence"),
            hwmfBlend.patchScoreFullConfidence,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchScoreReject"),
            hwmfBlend.patchScoreReject,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchPeakConfidenceStart"),
            hwmfBlend.patchPeakConfidenceStart,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPatchPeakConfidenceFull"),
            hwmfBlend.patchPeakConfidenceFull,
        )
    }

    private fun setTileMaskUniforms(program: Int) {
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileRobustCenter"), hwmfBlend.tileRobustCenter)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileRobustWidth"), hwmfBlend.tileRobustWidth)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileWeakThreshold"), hwmfBlend.tileWeakThreshold)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileWeakStart"), hwmfBlend.tileWeakStart)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileWeakRange"), hwmfBlend.tileWeakRange)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileDetailMid"), hwmfBlend.tileDetailMid)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileDetailHigh"), hwmfBlend.tileDetailHigh)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileDetailBoostLow"), hwmfBlend.tileDetailBoostLow)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileDetailBoostMid"), hwmfBlend.tileDetailBoostMid)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileDetailBoostHigh"), hwmfBlend.tileDetailBoostHigh)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileMaskMinMidDetail"), hwmfBlend.tileMaskMinMidDetail)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uTileMaskMinHighDetail"), hwmfBlend.tileMaskMinHighDetail)
    }

    private fun setBlendAccumulatorUniforms(program: Int) {
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uMinBlendBaseWeight"), hwmfBlend.minBlendBaseWeight)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uRobustnessFloorFactor"), hwmfBlend.robustnessFloorFactor)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uPrecisionReferenceSignal"),
            hwmfBlend.sensorPrecisionReferenceSignal
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uLscNoiseGainMax"),
            hwmfBlend.lscNoiseGainMax.coerceAtLeast(1.0f)
        )
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uWienerBaseWeight"), hwmfBlend.wienerBaseWeight)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uDenoiseSignalLow"), hwmfBlend.denoiseSignalLow)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(program, "uDenoiseSignalHigh"), hwmfBlend.denoiseSignalHigh)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseLscGainStart"),
            hwmfBlend.denoiseLscGainStart
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseLscGainEnd"),
            hwmfBlend.denoiseLscGainEnd
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseStaticRobustStart"),
            hwmfBlend.denoiseStaticRobustStart
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseStaticRobustEnd"),
            hwmfBlend.denoiseStaticRobustEnd
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseStaticTileStart"),
            hwmfBlend.denoiseStaticTileStart
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseStaticTileEnd"),
            hwmfBlend.denoiseStaticTileEnd
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseNonReferenceWeightBoost"),
            hwmfBlend.denoiseNonReferenceWeightBoost
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseNonReferenceWeightFloor"),
            hwmfBlend.denoiseNonReferenceWeightFloor
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseReferenceDarkWeightScale"),
            hwmfBlend.denoiseReferenceDarkWeightScale
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uHighlightSuppressionStrength"),
            1f
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uHighlightSuppressionStart"),
            radianceFusionTuning.highlightNormalClipStart
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uHighlightSuppressionEnd"),
            radianceFusionTuning.highlightNormalClipFull
        )
    }

    private fun setRegistrationUniforms(program: Int, transform: RawStackPerspectiveTransform) {
        GLES31.glUniformMatrix3fv(
            GLES31.glGetUniformLocation(program, "uRegistrationTransform"),
            1,
            false,
            transposeMatrix3x3(transform.matrixAt(0)),
            0,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uRegistrationForceIdentity"),
            if (transform.forceIdentity) 1 else 0,
        )
    }

    private fun createTexture2D(textureWidth: Int, textureHeight: Int, internalFormat: Int, filter: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, textureWidth, textureHeight)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("createTexture2D ${textureWidth}x$textureHeight")
        return texture
    }

    private fun deleteTexture(texture: Int) {
        if (texture == 0) return
        if (renderFboTargetTexture == texture) {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            renderFboTargetTexture = 0
        }
        checkedRenderTargetTextures.remove(texture)
        GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        textures.removeAll { it == texture }
    }

    private fun createLensShadingTexture(): Int {
        val hasValidLensShading = lensShading != null &&
            lensShadingWidth > 0 &&
            lensShadingHeight > 0 &&
            lensShading.size >= lensShadingWidth * lensShadingHeight * 4
        val texWidth = if (hasValidLensShading) lensShadingWidth else 1
        val texHeight = if (hasValidLensShading) lensShadingHeight else 1
        val gainCount = texWidth * texHeight * 4
        val gains = FloatArray(gainCount) { 1.0f }
        lensShading?.takeIf { hasValidLensShading }?.let { sourceLensShading ->
            for (index in gains.indices) {
                gains[index] = sourceLensShading[index].takeIf { it.isFinite() && it > 0f } ?: 1.0f
            }
        }
        val buffer = ByteBuffer.allocateDirect(gains.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(gains)
                position(0)
            }
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            texWidth,
            texHeight,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("createLensShadingTexture")
        return texture
    }

    private fun createFramebuffer(): Int {
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        framebuffers += ids[0]
        return ids[0]
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(uniformLocation(program, name), unit)
    }

    private fun uniformLocation(program: Int, name: String): Int {
        val locations = uniformLocations.getOrPut(program) { HashMap() }
        return locations.getOrPut(name) { GLES31.glGetUniformLocation(program, name) }
    }

    private fun prepareReadbackScratchBuffer(requiredBytes: Int): Int {
        require(requiredBytes > 0) { "Readback scratch buffer size must be positive: $requiredBytes" }
        if (readbackScratchBuffer == 0) {
            val ids = IntArray(1)
            GLES31.glGenBuffers(1, ids, 0)
            readbackScratchBuffer = ids[0]
            check(readbackScratchBuffer != 0) { "Failed to allocate GLES readback scratch buffer" }
            buffers += readbackScratchBuffer
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, readbackScratchBuffer)
        if (requiredBytes > readbackScratchCapacityBytes) {
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                requiredBytes,
                null,
                GLES31.GL_DYNAMIC_READ,
            )
            checkGlError("grow readback scratch buffer to $requiredBytes bytes")
            readbackScratchCapacityBytes = requiredBytes
        }
        return readbackScratchBuffer
    }

    private fun bindImage(unit: Int, texture: Int, access: Int, format: Int) {
        GLES31.glBindImageTexture(unit, texture, 0, false, 0, access, format)
    }

    private fun linkGraphicsProgram(vertexSource: String, fragmentSource: String, name: String): Int {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource, "$name vertex")
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$name fragment")
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked[0] == 0) {
            val log = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            throw IllegalStateException("Program $name linking failed: $log")
        }
        programs += program
        return program
    }

    private fun linkComputeProgram(source: String, name: String): Int {
        val shader = compileShader(GLES31.GL_COMPUTE_SHADER, source, "$name compute")
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        GLES31.glDeleteShader(shader)
        if (linked[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
            throw IllegalStateException("Compute program $name linking failed: $log")
        }
        programs += program
        return program
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        val shader = GLES31.glCreateShader(type)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val log = GLES31.glGetShaderInfoLog(shader)
            GLES31.glDeleteShader(shader)
            throw IllegalStateException("Shader $name compilation failed: $log")
        }
        return shader
    }

    private fun checkFramebuffer(label: String) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            throw IllegalStateException("$label framebuffer incomplete: 0x${status.toString(16)}")
        }
    }

    private fun checkGlError(label: String) {
        var error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            val first = error
            while (error != GLES30.GL_NO_ERROR) {
                error = GLES30.glGetError()
            }
            throw IllegalStateException("$label GL error: 0x${first.toString(16)}")
        }
    }

    private fun applyRawRenderState() {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_DITHER)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glDisable(GLES30.GL_STENCIL_TEST)
        GLES30.glDisable(GLES30.GL_CULL_FACE)
    }

    private fun groupCount(value: Int): Int = (value + LOCAL_SIZE - 1) / LOCAL_SIZE

    private fun groupCount(value: Int, groupSize: Int): Int =
        (value + groupSize - 1) / groupSize

    private fun transposeMatrix3x3(matrix: FloatArray): FloatArray {
        return floatArrayOf(
            matrix.getOrElse(0) { 1f }, matrix.getOrElse(3) { 0f }, matrix.getOrElse(6) { 0f },
            matrix.getOrElse(1) { 0f }, matrix.getOrElse(4) { 1f }, matrix.getOrElse(7) { 0f },
            matrix.getOrElse(2) { 0f }, matrix.getOrElse(5) { 0f }, matrix.getOrElse(8) { 1f }
        )
    }

    private fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            radianceVgnChromaPostprocessor?.release()
            radianceVgnChromaPostprocessor = null
            if (programs.isNotEmpty()) {
                for (program in programs) {
                    GLES30.glDeleteProgram(program)
                }
            }
            uniformLocations.clear()
            if (textures.isNotEmpty()) {
                GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
            }
            if (framebuffers.isNotEmpty()) {
                GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers.toIntArray(), 0)
            }
            if (buffers.isNotEmpty()) {
                GLES31.glDeleteBuffers(buffers.size, buffers.toIntArray(), 0)
            }
            if (ownsEglContext) {
                EGL14.eglMakeCurrent(
                    eglDisplay,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_CONTEXT,
                )
                if (eglSurface != EGL14.EGL_NO_SURFACE) {
                    EGL14.eglDestroySurface(eglDisplay, eglSurface)
                }
                if (eglContext != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(eglDisplay, eglContext)
                }
                EGL14.eglTerminate(eglDisplay)
            }
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        ownsEglContext = false
    }

    companion object {
        private const val TAG = "GlesRawRadianceStacker"

        private const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        private const val LOCAL_SIZE = 16
        private const val RAW_BYTES_PER_PIXEL = 2
        private const val PREWARM_TRACKING_SCALE = 4
        private const val PREWARM_TRACKING_WIDTH = 64
        private const val PREWARM_TRACKING_HEIGHT = 48
        private const val PREWARM_RAW_WIDTH = PREWARM_TRACKING_WIDTH * PREWARM_TRACKING_SCALE * 2
        private const val PREWARM_RAW_HEIGHT = PREWARM_TRACKING_HEIGHT * PREWARM_TRACKING_SCALE * 2
        private const val PREWARM_GRID_WIDTH = 4
        private const val PREWARM_GRID_HEIGHT = 3
        private const val PREWARM_GRID_SPACING = 16
        private const val MIN_TEMPORAL_GRAPH_FRAME_COUNT = 3
        private const val MIN_TEMPORAL_TRACKING_LEVEL = 2
        private const val MIN_TEMPORAL_WINDOW_LEVEL_PIXELS = 8
        private const val MIN_TEMPORAL_GRAPH_SPACING_MULTIPLIER = 4
        private const val MAX_TEMPORAL_GRAPH_SKIP_FRAME_COUNT = 8
        private const val MAX_TEMPORAL_GRAPH_TILES = 2048.0
        private const val MAX_TEMPORAL_TRACKING_SCALE = 16
        private const val TRACKING_TEXTURE_BYTES_PER_PIXEL = 8L
        private const val MAX_TEMPORAL_TRACKING_BYTES = 32L * 1024L * 1024L
        private const val SUPER_RESOLUTION_SPATIAL_RADIUS = 2
        private const val RADIANCE_RECONSTRUCTION_RADIUS_RAW_PX = 1
        // These programs expose one SSBO each and rebind it immediately before dispatch. Binding
        // points are context slots, not globally unique resource IDs, so all transient programs
        // deliberately reuse zero to remain compatible with the GLES 3.1 baseline of 0..7.
        private const val TRANSIENT_SSBO_BINDING = 0
        private const val TRANSIENT_SSBO_BINDING_COUNT = 1
        private const val RCD_SSBO_BINDING_COUNT = 8
        private const val DIAGNOSTIC_BUFFER_BINDING = TRANSIENT_SSBO_BINDING
        private const val REGISTRATION_SAMPLE_BUFFER_BINDING = TRANSIENT_SSBO_BINDING
        private const val REGISTRATION_GLOBAL_SCORE_BUFFER_BINDING = TRANSIENT_SSBO_BINDING
        private const val FLOW_READBACK_BUFFER_BINDING = TRANSIENT_SSBO_BINDING
        private const val RADIANCE_FUSION_STATS_BUFFER_BINDING = TRANSIENT_SSBO_BINDING
        private const val RADIANCE_FUSION_STATS_STRIDE = 5
        private const val RADIANCE_FUSION_WEIGHT_QUANTIZATION = 63f
        private const val REGISTRATION_GLOBAL_SCORE_STRIDE = 4
        private const val REGISTRATION_SAMPLE_FLOAT_STRIDE = 8
        private const val DIAGNOSTIC_HIST_BINS = 64
        private const val DIAGNOSTIC_FLOW_COUNT_INDEX = 0
        private const val DIAGNOSTIC_FLOW_SUM_INDEX = 1
        private const val DIAGNOSTIC_FLOW_MAX_INDEX = 2
        private const val DIAGNOSTIC_FLOW_OUTLIER_COUNT_INDEX = 3
        private const val DIAGNOSTIC_ROBUST_COUNT_INDEX = 4
        private const val DIAGNOSTIC_ROBUST_SUM_INDEX = 5
        private const val DIAGNOSTIC_ROBUST_MAX_INDEX = 6
        private const val DIAGNOSTIC_TILE_COUNT_INDEX = 7
        private const val DIAGNOSTIC_TILE_SUM_INDEX = 8
        private const val DIAGNOSTIC_TILE_MAX_INDEX = 9
        private const val DIAGNOSTIC_TILE_REJECT_COUNT_INDEX = 10
        private const val DIAGNOSTIC_WEIGHT_COUNT_INDEX = 11
        private const val DIAGNOSTIC_WEIGHT_SUM_INDEX = 12
        private const val DIAGNOSTIC_WEIGHT_MAX_INDEX = 13
        private const val DIAGNOSTIC_LSC_COUNT_INDEX = 14
        private const val DIAGNOSTIC_LSC_SUM_INDEX = 15
        private const val DIAGNOSTIC_LSC_MAX_INDEX = 16
        private const val DIAGNOSTIC_LSC_EDGE_COUNT_INDEX = 17
        private const val DIAGNOSTIC_LSC_EDGE_SUM_INDEX = 18
        private const val DIAGNOSTIC_RESIDUAL_COUNT_INDEX = 19
        private const val DIAGNOSTIC_RESIDUAL_SUM_INDEX = 20
        private const val DIAGNOSTIC_RESIDUAL_MAX_INDEX = 21
        private const val DIAGNOSTIC_NOISE_RESIDUAL_COUNT_INDEX = 22
        private const val DIAGNOSTIC_NOISE_RESIDUAL_SUM_INDEX = 23
        private const val DIAGNOSTIC_NOISE_RESIDUAL_MAX_INDEX = 24
        private const val DIAGNOSTIC_FLOW_RANGE_COUNT_INDEX = 25
        private const val DIAGNOSTIC_FLOW_RANGE_SUM_INDEX = 26
        private const val DIAGNOSTIC_FLOW_RANGE_MAX_INDEX = 27
        private const val DIAGNOSTIC_HIGH_CONFIDENCE_COUNT_INDEX = 28
        private const val DIAGNOSTIC_SR_ALIGNMENT_READY_COUNT_INDEX = 29
        private const val DIAGNOSTIC_SR_DETAIL_READY_COUNT_INDEX = 30
        private const val DIAGNOSTIC_POST_RESIDUAL_COUNT_INDEX = 31
        private const val DIAGNOSTIC_POST_RESIDUAL_SUM_INDEX = 32
        private const val DIAGNOSTIC_POST_RESIDUAL_MAX_INDEX = 33
        private const val DIAGNOSTIC_POST_SMOOTH_COUNT_INDEX = 34
        private const val DIAGNOSTIC_POST_SMOOTH_SUM_INDEX = 35
        private const val DIAGNOSTIC_POST_SMOOTH_MAX_INDEX = 36
        private const val DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_COUNT_INDEX = 37
        private const val DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_SUM_INDEX = 38
        private const val DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_MAX_INDEX = 39
        private const val DIAGNOSTIC_POST_WIENER_COUNT_INDEX = 40
        private const val DIAGNOSTIC_POST_WIENER_SUM_INDEX = 41
        private const val DIAGNOSTIC_POST_WIENER_MAX_INDEX = 42
        private const val DIAGNOSTIC_POST_LSC_COUNT_INDEX = 43
        private const val DIAGNOSTIC_POST_LSC_SUM_INDEX = 44
        private const val DIAGNOSTIC_POST_LSC_MAX_INDEX = 45
        private const val DIAGNOSTIC_POST_LOW_WEIGHT_COUNT_INDEX = 46
        private const val DIAGNOSTIC_POST_LOW_WEIGHT_SUM_INDEX = 47
        private const val DIAGNOSTIC_POST_LOW_WEIGHT_MAX_INDEX = 48
        private const val DIAGNOSTIC_SR_SUPPORT_COUNT_INDEX = 49
        private const val DIAGNOSTIC_SR_SUPPORT_SUM_INDEX = 50
        private const val DIAGNOSTIC_SR_SUPPORT_MAX_INDEX = 51
        private const val DIAGNOSTIC_HIST_OFFSET = 56
        private const val DIAGNOSTIC_FLOW_HIST_OFFSET = DIAGNOSTIC_HIST_OFFSET
        private const val DIAGNOSTIC_ROBUST_HIST_OFFSET = DIAGNOSTIC_FLOW_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_TILE_HIST_OFFSET = DIAGNOSTIC_ROBUST_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_WEIGHT_HIST_OFFSET = DIAGNOSTIC_TILE_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_RESIDUAL_HIST_OFFSET = DIAGNOSTIC_WEIGHT_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_NOISE_RESIDUAL_HIST_OFFSET = DIAGNOSTIC_RESIDUAL_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_FLOW_RANGE_HIST_OFFSET = DIAGNOSTIC_NOISE_RESIDUAL_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_RESIDUAL_HIST_OFFSET = DIAGNOSTIC_FLOW_RANGE_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_SMOOTH_HIST_OFFSET = DIAGNOSTIC_POST_RESIDUAL_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_HIST_OFFSET = DIAGNOSTIC_POST_SMOOTH_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_WIENER_HIST_OFFSET = DIAGNOSTIC_POST_EFFECTIVE_SMOOTH_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_LSC_HIST_OFFSET = DIAGNOSTIC_POST_WIENER_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_POST_LOW_WEIGHT_HIST_OFFSET = DIAGNOSTIC_POST_LSC_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_SR_SUPPORT_HIST_OFFSET = DIAGNOSTIC_POST_LOW_WEIGHT_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_UINT_COUNT = DIAGNOSTIC_SR_SUPPORT_HIST_OFFSET + DIAGNOSTIC_HIST_BINS
        private const val DIAGNOSTIC_UNIT_QUANTIZATION = 1000f
        private const val DIAGNOSTIC_FLOW_QUANTIZATION = 10f
        private const val DIAGNOSTIC_WEIGHT_QUANTIZATION = 100f
        private const val DIAGNOSTIC_LSC_QUANTIZATION = 1000f
        private const val DIAGNOSTIC_RESIDUAL_QUANTIZATION = 10000f
        private const val DIAGNOSTIC_NOISE_RESIDUAL_QUANTIZATION = 100f
        private const val DIAGNOSTIC_POST_RESIDUAL_QUANTIZATION = 100f

        private val FULLSCREEN_VERTEX_SHADER = """
            #version 300 es
            precision highp float;
            out vec2 vTexCoord;
            void main() {
                vec2 positions[3] = vec2[3](
                    vec2(-1.0, -1.0),
                    vec2( 3.0, -1.0),
                    vec2(-1.0,  3.0)
                );
                vec2 texCoords[3] = vec2[3](
                    vec2(0.0, 0.0),
                    vec2(2.0, 0.0),
                    vec2(0.0, 2.0)
                );
                gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
                vTexCoord = texCoords[gl_VertexID];
            }
        """.trimIndent()

        private val RAW_COMMON = """
            precision highp float;
            precision highp int;
            precision highp usampler2D;

            int baseCfaPattern(int cfaPattern) {
                if (cfaPattern >= 8) return cfaPattern - 8;
                if (cfaPattern >= 4) return cfaPattern - 4;
                return cfaPattern;
            }

            int cfaBlockSize(int cfaPattern) {
                if (cfaPattern >= 8) return 4;
                if (cfaPattern >= 4) return 2;
                return 1;
            }

            int cfaPeriod(int cfaPattern) {
                return cfaBlockSize(cfaPattern) * 2;
            }

            int bayerIndexForPhase(int pattern, int phase) {
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

            int bayerIndexAt(int cfaPattern, ivec2 p) {
                int blockSize = cfaBlockSize(cfaPattern);
                int phase = ((p.y / blockSize) & 1) * 2 + ((p.x / blockSize) & 1);
                return bayerIndexForPhase(baseCfaPattern(cfaPattern), phase);
            }

            int lensShadingChannelAt(int cfaPattern, ivec2 p) {
                int channel = bayerIndexAt(cfaPattern, p);
                if (channel == 0 || channel == 3) return channel;
                return ((p.y & 1) == 0) ? 1 : 2;
            }

        """.trimIndent()

        /**
         * Canonical base-stack warp. Robustness validation and RAW accumulation both embed this
         * function so that a sample can never be accepted at one coordinate and read at another.
         */
        private val LOCAL_FLOW_WARP_GLSL = """
            vec2 localFlowSourcePlane(vec2 referencePlanePos) {
                return referencePlanePos + flowAt(referencePlanePos);
            }
        """.trimIndent()

        private val RAW_PROXY_COMPUTE_SHADER = """
            #version 310 es
            $RAW_COMMON
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform highp usampler2D uRaw;
            layout(rgba16f, binding = 1) writeonly uniform highp image2D uProxy;
            uniform ivec2 uProxySize;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uNoiseAlphaByChannel[4];
            uniform float uNoiseBetaByChannel[4];
            uniform float uExposureScale;
            uniform int uUseRegionalObservability;
            uniform float uRegionalStructureSnrStart;
            uniform float uRegionalStructureSnrFull;

            float rawNormAt(ivec2 p) {
                p = clamp(p, ivec2(0), uProxySize * 2 - ivec2(1));
                int b = bayerIndexAt(uCfaPattern, p);
                float raw = float(texelFetch(uRaw, p, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[b], 1.0);
                return clamp((raw - uBlackLevel[b]) / range, 0.0, 1.0);
            }

            float noiseVariance(float signal, int bayerIndex) {
                return max(
                    uNoiseAlphaByChannel[bayerIndex] * clamp(signal, 0.0, 1.0) +
                        uNoiseBetaByChannel[bayerIndex],
                    0.0
                );
            }

            vec2 rawSignalAndVariance(ivec2 p) {
                int bayerIndex = bayerIndexAt(uCfaPattern, p);
                float signal = rawNormAt(p);
                return vec2(signal, noiseVariance(signal, bayerIndex));
            }

            vec2 greenBlockStats(ivec2 planeCoord) {
                ivec2 s = clamp(planeCoord * 2, ivec2(0), uProxySize * 2 - ivec2(2));
                if (uCfaPattern >= 4) {
                    vec2 sum = vec2(0.0);
                    for (int y = 0; y <= 1; ++y) {
                        for (int x = 0; x <= 1; ++x) {
                            sum += rawSignalAndVariance(s + ivec2(x, y));
                        }
                    }
                    // A four-sample mean combines independent variances with squared weights.
                    return vec2(0.25 * sum.x, 0.0625 * sum.y);
                }
                ivec2 g1Pos;
                ivec2 g2Pos;
                if (uCfaPattern == 0 || uCfaPattern == 3) {
                    g1Pos = s + ivec2(1, 0);
                    g2Pos = s + ivec2(0, 1);
                } else {
                    g1Pos = s;
                    g2Pos = s + ivec2(1, 1);
                }
                vec2 g1 = rawSignalAndVariance(g1Pos);
                vec2 g2 = rawSignalAndVariance(g2Pos);
                return vec2(0.5 * (g1.x + g2.x), 0.25 * (g1.y + g2.y));
            }

            float tileMaxRaw(ivec2 planeCoord) {
                ivec2 s = clamp(planeCoord * 2, ivec2(0), uProxySize * 2 - ivec2(2));
                float m = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        m = max(m, rawNormAt(s + ivec2(x, y)));
                    }
                }
                return m;
            }

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uProxySize.x || p.y >= uProxySize.y) return;
                vec2 centerStats = greenBlockStats(p);
                float centerRaw = centerStats.x;
                float center = clamp(centerRaw * uExposureScale, 0.0, 1.0);
                float sum = 0.0;
                float sumSquared = 0.0;
                float varianceSum = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 q = clamp(p + ivec2(x, y), ivec2(0), uProxySize - ivec2(1));
                        vec2 stats = greenBlockStats(q);
                        float scaledSignal = clamp(stats.x * uExposureScale, 0.0, 1.0);
                        sum += scaledSignal;
                        sumSquared += scaledSignal * scaledSignal;
                        varianceSum += stats.y;
                    }
                }
                float mean = sum / 9.0;
                const float sharpen = 0.35;
                float centerCoefficient = 1.0 + sharpen * (8.0 / 9.0);
                float neighborCoefficient = sharpen / 9.0;
                float proxyVariance = uExposureScale * uExposureScale * (
                    centerCoefficient * centerCoefficient * centerStats.y +
                    neighborCoefficient * neighborCoefficient *
                        max(varianceSum - centerStats.y, 0.0)
                );
                float detailVariance = uExposureScale * uExposureScale * (
                    (64.0 / 81.0) * centerStats.y +
                    (1.0 / 81.0) * max(varianceSum - centerStats.y, 0.0)
                );
                // G is physical sample validity. A dark RAW sample is noisy, but it is still a
                // valid NR observation. B is alignment observability and may fall to zero when
                // the patch does not carry enough signal to estimate a new local displacement.
                float detailSnr = abs(center - mean) / sqrt(max(detailVariance, 1e-10));
                float pointObservability = centerStats.y > 1e-9 ?
                    smoothstep(1.5, 4.0, detailSnr) :
                    smoothstep(0.004, 0.035, centerRaw);
                float spatialVariance = max(sumSquared / 9.0 - mean * mean, 0.0);
                float meanNoiseVariance = uExposureScale * uExposureScale * varianceSum / 9.0;
                // For nine independent noisy samples, noise alone contributes 8/9 of the
                // average sample variance around their estimated mean. Subtracting that term
                // makes the regional response measure coherent structure rather than high-ISO
                // grain. The long-alignment mode uses this larger spatial support in addition
                // to the original one-pixel high-pass response.
                float excessStructureVariance = max(
                    spatialVariance - (8.0 / 9.0) * meanNoiseVariance,
                    0.0
                );
                float regionalStructureSnr = sqrt(
                    excessStructureVariance / max(meanNoiseVariance, 1e-10)
                );
                float regionalObservability = smoothstep(
                    min(uRegionalStructureSnrStart, uRegionalStructureSnrFull),
                    max(uRegionalStructureSnrStart, uRegionalStructureSnrFull),
                    regionalStructureSnr
                );
                float alignmentObservability = uUseRegionalObservability != 0 ?
                    max(pointObservability, regionalObservability) : pointObservability;
                float clipValid = 1.0 - smoothstep(0.90, 0.995, tileMaxRaw(p));
                float sampleValidity = clamp(clipValid, 0.0, 1.0);
                imageStore(
                    uProxy,
                    p,
                    vec4(
                        clamp(center + sharpen * (center - mean), 0.0, 1.0),
                        sampleValidity,
                        alignmentObservability,
                        max(proxyVariance, 1e-10)
                    )
                );
            }
        """.trimIndent()

        /**
         * Recomputes the RAW proxy's observability inputs on the flow grid. Unlike the proxy's
         * single B channel, this preserves signal, structural response and predicted noise as
         * separate values so a rejected long frame has an attributable cause.
         */
        private val RAW_LONG_OBSERVABILITY_DIAGNOSTIC_FRAGMENT_SHADER = """
            #version 300 es
            $RAW_COMMON
            uniform highp usampler2D uRaw;
            uniform ivec2 uGridSize;
            uniform ivec2 uPlaneSize;
            uniform int uTileSize;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uNoiseAlphaByChannel[4];
            uniform float uNoiseBetaByChannel[4];
            uniform float uExposureScale;
            uniform float uRegionalStructureSnrStart;
            uniform float uRegionalStructureSnrFull;
            out vec4 fragColor;

            float rawNormAt(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize * 2 - ivec2(1));
                int b = bayerIndexAt(uCfaPattern, p);
                float raw = float(texelFetch(uRaw, p, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[b], 1.0);
                return clamp((raw - uBlackLevel[b]) / range, 0.0, 1.0);
            }

            float noiseVariance(float signal, int bayerIndex) {
                return max(
                    uNoiseAlphaByChannel[bayerIndex] * clamp(signal, 0.0, 1.0) +
                        uNoiseBetaByChannel[bayerIndex],
                    0.0
                );
            }

            vec2 rawSignalAndVariance(ivec2 p) {
                int bayerIndex = bayerIndexAt(uCfaPattern, p);
                float signal = rawNormAt(p);
                return vec2(signal, noiseVariance(signal, bayerIndex));
            }

            vec2 greenBlockStats(ivec2 planeCoord) {
                ivec2 s = clamp(planeCoord * 2, ivec2(0), uPlaneSize * 2 - ivec2(2));
                if (uCfaPattern >= 4) {
                    vec2 sum = vec2(0.0);
                    for (int y = 0; y <= 1; ++y) {
                        for (int x = 0; x <= 1; ++x) {
                            sum += rawSignalAndVariance(s + ivec2(x, y));
                        }
                    }
                    return vec2(0.25 * sum.x, 0.0625 * sum.y);
                }
                ivec2 g1Pos;
                ivec2 g2Pos;
                if (uCfaPattern == 0 || uCfaPattern == 3) {
                    g1Pos = s + ivec2(1, 0);
                    g2Pos = s + ivec2(0, 1);
                } else {
                    g1Pos = s;
                    g2Pos = s + ivec2(1, 1);
                }
                vec2 g1 = rawSignalAndVariance(g1Pos);
                vec2 g2 = rawSignalAndVariance(g2Pos);
                return vec2(0.5 * (g1.x + g2.x), 0.25 * (g1.y + g2.y));
            }

            vec4 observabilityInputs(ivec2 p) {
                vec2 centerStats = greenBlockStats(p);
                float centerRaw = centerStats.x;
                float center = clamp(centerRaw * uExposureScale, 0.0, 1.0);
                float sum = 0.0;
                float sumSquared = 0.0;
                float varianceSum = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 q = clamp(p + ivec2(x, y), ivec2(0), uPlaneSize - ivec2(1));
                        vec2 stats = greenBlockStats(q);
                        float scaledSignal = clamp(stats.x * uExposureScale, 0.0, 1.0);
                        sum += scaledSignal;
                        sumSquared += scaledSignal * scaledSignal;
                        varianceSum += stats.y;
                    }
                }
                float mean = sum / 9.0;
                float detailVariance = uExposureScale * uExposureScale * (
                    (64.0 / 81.0) * centerStats.y +
                    (1.0 / 81.0) * max(varianceSum - centerStats.y, 0.0)
                );
                float detail = abs(center - mean);
                float noiseSigma = sqrt(max(detailVariance, 1e-10));
                float detailSnr = detail / noiseSigma;
                float meanNoiseVariance = uExposureScale * uExposureScale * varianceSum / 9.0;
                float spatialVariance = max(sumSquared / 9.0 - mean * mean, 0.0);
                float excessStructureVariance = max(
                    spatialVariance - (8.0 / 9.0) * meanNoiseVariance,
                    0.0
                );
                float regionalStructureSnr = sqrt(
                    excessStructureVariance / max(meanNoiseVariance, 1e-10)
                );
                float pointObservability = centerStats.y > 1e-9 ?
                    smoothstep(1.5, 4.0, detailSnr) :
                    smoothstep(0.004, 0.035, centerRaw);
                float regionalObservability = smoothstep(
                    min(uRegionalStructureSnrStart, uRegionalStructureSnrFull),
                    max(uRegionalStructureSnrStart, uRegionalStructureSnrFull),
                    regionalStructureSnr
                );
                return vec4(
                    center,
                    detail,
                    noiseSigma,
                    max(pointObservability, regionalObservability)
                );
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                if (tile.x >= uGridSize.x || tile.y >= uGridSize.y) discard;
                ivec2 center = min(
                    tile * uTileSize + ivec2(uTileSize / 2),
                    uPlaneSize - ivec2(1)
                );
                int sampleSpacing = max(uTileSize / 4, 1);
                vec4 sum = vec4(0.0);
                float sampleCount = 0.0;
                for (int y = -2; y <= 2; ++y) {
                    for (int x = -2; x <= 2; ++x) {
                        ivec2 p = clamp(
                            center + ivec2(x * sampleSpacing, y * sampleSpacing),
                            ivec2(0),
                            uPlaneSize - ivec2(1)
                        );
                        sum += observabilityInputs(p);
                        sampleCount += 1.0;
                    }
                }
                fragColor = sum / max(sampleCount, 1.0);
            }
        """.trimIndent()

        private val RAW_TRACKING_PROXY_COMPUTE_SHADER = """
            #version 310 es
            $RAW_COMMON
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform highp usampler2D uRaw;
            layout(rgba16f, binding = 1) writeonly uniform highp image2D uTrackingProxy;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uTrackingSize;
            uniform int uLevelScale;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uNoiseAlphaByChannel[4];
            uniform float uNoiseBetaByChannel[4];
            uniform float uExposureScale;

            float rawNormAt(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize * 2 - ivec2(1));
                int b = bayerIndexAt(uCfaPattern, p);
                float raw = float(texelFetch(uRaw, p, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[b], 1.0);
                return clamp((raw - uBlackLevel[b]) / range, 0.0, 1.0);
            }

            vec2 greenAndMax(ivec2 planeCoord) {
                ivec2 s = clamp(planeCoord * 2, ivec2(0), uPlaneSize * 2 - ivec2(2));
                float p00 = rawNormAt(s);
                float p10 = rawNormAt(s + ivec2(1, 0));
                float p01 = rawNormAt(s + ivec2(0, 1));
                float p11 = rawNormAt(s + ivec2(1, 1));
                float green;
                if (uCfaPattern >= 4) {
                    green = 0.25 * (p00 + p10 + p01 + p11);
                } else if (uCfaPattern == 0 || uCfaPattern == 3) {
                    green = 0.5 * (p10 + p01);
                } else {
                    green = 0.5 * (p00 + p11);
                }
                return vec2(green, max(max(p00, p10), max(p01, p11)));
            }

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uTrackingSize.x || p.y >= uTrackingSize.y) return;
                ivec2 base = p * uLevelScale;
                int quarter = max(1, uLevelScale / 4);
                int threeQuarter = max(1, (3 * uLevelScale) / 4);
                ivec2 offsets[4] = ivec2[4](
                    ivec2(quarter, quarter),
                    ivec2(threeQuarter, quarter),
                    ivec2(quarter, threeQuarter),
                    ivec2(threeQuarter, threeQuarter)
                );
                float signal = 0.0;
                float tileMax = 0.0;
                for (int index = 0; index < 4; ++index) {
                    vec2 sampleValue = greenAndMax(
                        clamp(base + offsets[index], ivec2(0), uPlaneSize - ivec2(1))
                    );
                    signal += sampleValue.x;
                    tileMax = max(tileMax, sampleValue.y);
                }
                signal *= 0.25;
                float normalized = clamp(signal * uExposureScale, 0.0, 1.0);
                float alignmentObservability = smoothstep(0.004, 0.035, signal);
                float clipValid = 1.0 - smoothstep(0.90, 0.995, tileMax);
                float sampleValidity = clamp(clipValid, 0.0, 1.0);
                imageStore(
                    uTrackingProxy,
                    p,
                    vec4(normalized, sampleValidity, alignmentObservability, 1.0)
                );
            }
        """.trimIndent()

        private val DOWNSAMPLE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInput;
            uniform ivec2 uInputSize;
            out vec4 fragColor;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 src = p * 2;
                vec3 sum = vec3(0.0);
                for (int y = 0; y < 2; ++y) {
                    for (int x = 0; x < 2; ++x) {
                        ivec2 q = clamp(src + ivec2(x, y), ivec2(0), uInputSize - ivec2(1));
                        sum += texelFetch(uInput, q, 0).rgb;
                    }
                }
                fragColor = vec4(sum * 0.25, 1.0);
            }
        """.trimIndent()

        private val ALIGN_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uLevelSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uAlignWindowSize;
            uniform int uLevelScale;
            uniform int uSearchRadius;
            uniform int uSampleStep;
            uniform float uCoveragePenalty;
            uniform float uShiftPenalty;
            uniform vec2 uInitialTranslation;
            uniform float uInitialRotationRadians;
            uniform vec2 uPlaneCenter;
            uniform sampler2D uGraphSeed;
            uniform int uUseGraphSeed;
            uniform ivec2 uGraphGridSize;
            uniform int uGraphTileSize;
            uniform float uGraphSeedConfidenceMin;
            uniform int uRetainGraphSeedEvidence;
            uniform float uSeedRefinementConfidenceStart;
            uniform float uSeedRefinementConfidenceFull;
            uniform int uGraphRefineSearchRadius;
            out vec4 fragColor;

            vec3 readProxy(sampler2D tex, ivec2 p) {
                p = clamp(p, ivec2(0), uLevelSize - ivec2(1));
                return texelFetch(tex, p, 0).rgb;
            }

            vec4 graphSeedAt(vec2 planePos) {
                vec2 grid = planePos / float(uGraphTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGraphGridSize);
                return texture(uGraphSeed, clamp(uv, vec2(0.0), vec2(1.0)));
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                ivec2 planeMax = ivec2(round(uPlaneCenter * 2.0));
                ivec2 fullCenter = min(
                    tile * uTileSize + ivec2(uTileSize / 2),
                    planeMax
                );
                ivec2 levelCenter = fullCenter / uLevelScale;
                int levelTile = max(4, uAlignWindowSize / uLevelScale);
                ivec2 levelStart = levelCenter - ivec2(levelTile / 2);
                float cosTheta = cos(uInitialRotationRadians);
                float sinTheta = sin(uInitialRotationRadians);
                vec2 centered = vec2(fullCenter) - uPlaneCenter;
                vec2 rotated = vec2(
                    cosTheta * centered.x - sinTheta * centered.y,
                    sinTheta * centered.x + cosTheta * centered.y
                );
                vec2 initialFlowFull = rotated - centered + uInitialTranslation;
                vec4 selectedGraphSeed = vec4(0.0);
                bool hasGraphSeed = false;
                if (uUseGraphSeed != 0) {
                    vec4 graphSeed = graphSeedAt(vec2(fullCenter));
                    if (graphSeed.a >= uGraphSeedConfidenceMin) {
                        selectedGraphSeed = graphSeed;
                        initialFlowFull = graphSeed.rg;
                        hasGraphSeed = true;
                    }
                }
                ivec2 initialShift = ivec2(round(initialFlowFull / float(uLevelScale)));
                int activeSearchRadius = hasGraphSeed ?
                    min(uSearchRadius, uGraphRefineSearchRadius) : uSearchRadius;
                float bestSad = 1e20;
                float secondBestSad = 1e20;
                float bestCoverage = 0.0;
                ivec2 bestShift = ivec2(0);

                for (int dy = -uSearchRadius; dy <= uSearchRadius; ++dy) {
                    for (int dx = -uSearchRadius; dx <= uSearchRadius; ++dx) {
                        if (abs(dx) > activeSearchRadius || abs(dy) > activeSearchRadius) continue;
                        float sad = 0.0;
                        float count = 0.0;
                        float sampleCount = 0.0;
                        for (int sy = 1; sy < levelTile - 1; sy += uSampleStep) {
                            for (int sx = 1; sx < levelTile - 1; sx += uSampleStep) {
                                ivec2 rp = levelStart + ivec2(sx, sy);
                                vec3 rv = readProxy(uReference, rp);
                                vec3 cv = readProxy(uCurrent, rp + initialShift + ivec2(dx, dy));
                                float sampleValidity = min(rv.g, cv.g);
                                float observability = min(rv.b, cv.b);
                                float w = sampleValidity * observability;
                                sad += abs(rv.r - cv.r) * w;
                                count += w;
                                sampleCount += 1.0;
                            }
                        }
                        float coverage = count / max(sampleCount, 1.0);
                        sad = sad / max(count, 1e-4) +
                            uCoveragePenalty * (1.0 - clamp(coverage, 0.0, 1.0)) +
                            uShiftPenalty * float(dx * dx + dy * dy);
                        if (sad < bestSad) {
                            secondBestSad = bestSad;
                            bestSad = sad;
                            bestShift = ivec2(dx, dy);
                            bestCoverage = coverage;
                        } else if (sad < secondBestSad) {
                            secondBestSad = sad;
                        }
                    }
                }
                float relativeMargin = clamp(
                    (secondBestSad - bestSad) / max(abs(bestSad), 1e-4),
                    0.0,
                    1.0
                );
                float patchConfidence = clamp(bestCoverage, 0.0, 1.0) * relativeMargin;
                vec2 fineFlowFull =
                    vec2(initialShift + bestShift) * float(uLevelScale);
                float outputConfidence = patchConfidence;
                if (uRetainGraphSeedEvidence != 0 && hasGraphSeed) {
                    // The coarse bilateral proxy has already measured this displacement. A
                    // noisy high-resolution anchor may not contain enough evidence to improve
                    // it, which is different from evidence that the seed is wrong. Only let the
                    // fine search move away from the seed in proportion to its own confidence;
                    // forward/backward validation still rejects inconsistent seed pairs later.
                    float refinementTrust = smoothstep(
                        min(
                            uSeedRefinementConfidenceStart,
                            uSeedRefinementConfidenceFull
                        ),
                        max(
                            uSeedRefinementConfidenceStart,
                            uSeedRefinementConfidenceFull
                        ),
                        patchConfidence
                    );
                    fineFlowFull = mix(
                        selectedGraphSeed.rg,
                        fineFlowFull,
                        refinementTrust
                    );
                    outputConfidence = max(selectedGraphSeed.a, patchConfidence);
                }
                fragColor = vec4(
                    fineFlowFull,
                    bestSad,
                    outputConfidence
                );
            }
        """.trimIndent()

        private val FLOW_READBACK_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uFlow;
            uniform ivec2 uGridSize;
            uniform int uSampleOffset;
            layout(std430, binding = $FLOW_READBACK_BUFFER_BINDING) buffer FlowReadback {
                vec4 samples[];
            };

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uGridSize.x || p.y >= uGridSize.y) return;
                samples[uSampleOffset + p.y * uGridSize.x + p.x] = texelFetch(uFlow, p, 0);
            }
        """.trimIndent()

        private val REGISTRATION_GLOBAL_ALIGN_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 8, local_size_y = 8) in;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uLevelSize;
            uniform int uLevelScale;
            uniform int uSearchRadius;
            uniform vec2 uCenterShift;
            uniform int uSampleStep;
            uniform int uSampleBorder;
            uniform float uCoveragePenalty;
            uniform float uShiftPenalty;
            layout(std430, binding = $REGISTRATION_GLOBAL_SCORE_BUFFER_BINDING) buffer RegistrationGlobalScores {
                float scores[];
            };

            const int LOCAL_COUNT = 64;
            const int SCORE_STRIDE = $REGISTRATION_GLOBAL_SCORE_STRIDE;
            shared float sadParts[LOCAL_COUNT];
            shared float weightParts[LOCAL_COUNT];
            shared float validityParts[LOCAL_COUNT];
            shared float sampleParts[LOCAL_COUNT];

            vec3 readProxy(sampler2D tex, ivec2 p) {
                p = clamp(p, ivec2(0), uLevelSize - ivec2(1));
                return texelFetch(tex, p, 0).rgb;
            }

            vec3 sampleProxy(sampler2D tex, vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uLevelSize - ivec2(1))) + vec2(0.5)) / vec2(uLevelSize);
                return texture(tex, uv).rgb;
            }

            bool insideLevel(vec2 p) {
                return p.x >= 0.0 && p.y >= 0.0 &&
                    p.x <= float(uLevelSize.x - 1) &&
                    p.y <= float(uLevelSize.y - 1);
            }

            float detailAt(ivec2 p) {
                float c = readProxy(uReference, p).r;
                float gx = abs(readProxy(uReference, p + ivec2(1, 0)).r - readProxy(uReference, p - ivec2(1, 0)).r);
                float gy = abs(readProxy(uReference, p + ivec2(0, 1)).r - readProxy(uReference, p - ivec2(0, 1)).r);
                float lap = abs(4.0 * c -
                    readProxy(uReference, p + ivec2(1, 0)).r -
                    readProxy(uReference, p - ivec2(1, 0)).r -
                    readProxy(uReference, p + ivec2(0, 1)).r -
                    readProxy(uReference, p - ivec2(0, 1)).r);
                return gx + gy + 0.5 * lap;
            }

            void main() {
                ivec2 candidate = ivec2(gl_WorkGroupID.xy);
                int scoreSide = uSearchRadius * 2 + 1;
                if (candidate.x >= scoreSide || candidate.y >= scoreSide) return;

                ivec2 localId = ivec2(gl_LocalInvocationID.xy);
                int localIndex = localId.y * 8 + localId.x;
                vec2 shift = uCenterShift + vec2(candidate - ivec2(uSearchRadius));
                int sampleWidth = max(0, (uLevelSize.x - 2 * uSampleBorder + uSampleStep - 1) / uSampleStep);
                int sampleHeight = max(0, (uLevelSize.y - 2 * uSampleBorder + uSampleStep - 1) / uSampleStep);
                int totalSamples = sampleWidth * sampleHeight;

                float sad = 0.0;
                float weight = 0.0;
                float validity = 0.0;
                float sampleCount = 0.0;
                for (int sampleIndex = localIndex; sampleIndex < totalSamples; sampleIndex += LOCAL_COUNT) {
                    int sx = sampleIndex - (sampleIndex / sampleWidth) * sampleWidth;
                    int sy = sampleIndex / sampleWidth;
                    ivec2 rp = ivec2(
                        uSampleBorder + sx * uSampleStep,
                        uSampleBorder + sy * uSampleStep
                    );
                    vec2 cp = vec2(rp) + shift;
                    sampleCount += 1.0;
                    if (!insideLevel(cp)) {
                        continue;
                    }

                    vec3 rv = readProxy(uReference, rp);
                    vec3 cv = sampleProxy(uCurrent, cp);
                    float sampleValidity = min(rv.g, cv.g);
                    float observability = min(rv.b, cv.b);
                    float valid = sampleValidity * observability;
                    float detail = clamp(detailAt(rp) * 18.0, 0.0, 1.0);
                    float w = valid * detail;
                    sad += abs(rv.r - cv.r) * w;
                    weight += w;
                    validity += valid;
                }

                sadParts[localIndex] = sad;
                weightParts[localIndex] = weight;
                validityParts[localIndex] = validity;
                sampleParts[localIndex] = sampleCount;
                memoryBarrierShared();
                barrier();

                if (localIndex != 0) {
                    return;
                }

                float totalSad = 0.0;
                float totalWeight = 0.0;
                float totalValidity = 0.0;
                float totalSampleCount = 0.0;
                for (int i = 0; i < LOCAL_COUNT; ++i) {
                    totalSad += sadParts[i];
                    totalWeight += weightParts[i];
                    totalValidity += validityParts[i];
                    totalSampleCount += sampleParts[i];
                }
                float coverage = totalValidity / max(totalSampleCount, 1.0);
                float shiftPenalty = uShiftPenalty * dot(shift, shift);
                float score = totalSad / max(totalWeight, 1e-4) +
                    uCoveragePenalty * (1.0 - clamp(coverage, 0.0, 1.0)) +
                    shiftPenalty;
                int scoreIndex = candidate.y * scoreSide + candidate.x;
                int offset = scoreIndex * SCORE_STRIDE;
                scores[offset + 0] = shift.x * float(uLevelScale);
                scores[offset + 1] = shift.y * float(uLevelScale);
                scores[offset + 2] = score;
                scores[offset + 3] = coverage;
            }
        """.trimIndent()

        private val LK_REFINE_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform sampler2D uInputFlow;
            layout(rgba16f, binding = 3) writeonly uniform highp image2D uOutputFlow;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;

            vec3 sampleProxy(sampler2D tex, vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(tex, uv).rgb;
            }

            void main() {
                ivec2 tile = ivec2(gl_GlobalInvocationID.xy);
                if (tile.x >= uGridSize.x || tile.y >= uGridSize.y) return;
                vec4 flowSample = texelFetch(uInputFlow, tile, 0);
                vec2 flow = flowSample.rg;
                vec2 tileCenter = vec2(tile * uTileSize + ivec2(uTileSize / 2));
                float sIxIx = 0.0;
                float sIyIy = 0.0;
                float sIxIy = 0.0;
                float sIxIt = 0.0;
                float sIyIt = 0.0;
                const int windowRadius = 3;
                const float sigma2 = 10.0;
                for (int oy = -windowRadius; oy <= windowRadius; ++oy) {
                    for (int ox = -windowRadius; ox <= windowRadius; ++ox) {
                        vec2 basePoint = tileCenter + vec2(float(ox), float(oy));
                        if (basePoint.x < 1.0 || basePoint.y < 1.0 ||
                            basePoint.x > float(uPlaneSize.x - 2) ||
                            basePoint.y > float(uPlaneSize.y - 2)) {
                            continue;
                        }
                        vec3 tSample = sampleProxy(uReference, basePoint);
                        vec3 iSample = sampleProxy(uCurrent, basePoint + flow);
                        vec3 txPos = sampleProxy(uReference, basePoint + vec2(1.0, 0.0));
                        vec3 txNeg = sampleProxy(uReference, basePoint - vec2(1.0, 0.0));
                        vec3 tyPos = sampleProxy(uReference, basePoint + vec2(0.0, 1.0));
                        vec3 tyNeg = sampleProxy(uReference, basePoint - vec2(0.0, 1.0));
                        float t = tSample.r;
                        float i = iSample.r;
                        float tx = 0.5 * (txPos.r - txNeg.r);
                        float ty = 0.5 * (tyPos.r - tyNeg.r);
                        float sampleValidity = min(
                            min(tSample.g, iSample.g),
                            min(min(txPos.g, txNeg.g), min(tyPos.g, tyNeg.g))
                        );
                        float observability = min(
                            min(tSample.b, iSample.b),
                            min(min(txPos.b, txNeg.b), min(tyPos.b, tyNeg.b))
                        );
                        float detailGate = clamp(max(abs(tx), abs(ty)) * 18.0, 0.0, 1.0);
                        float spatialW = exp(-0.5 * float(ox * ox + oy * oy) / sigma2);
                        float w = spatialW * detailGate * sampleValidity * observability;
                        float it = i - t;
                        sIxIx += w * tx * tx;
                        sIyIy += w * ty * ty;
                        sIxIy += w * tx * ty;
                        sIxIt += w * tx * it;
                        sIyIt += w * ty * it;
                    }
                }
                float trace = sIxIx + sIyIy;
                float lambda = max(1e-4, 0.015 * trace + 5e-4);
                sIxIx += lambda;
                sIyIy += lambda;
                float det = sIxIx * sIyIy - sIxIy * sIxIy;
                vec2 delta = vec2(0.0);
                if (det > 1e-7) {
                    delta.x = (sIyIy * sIxIt - sIxIy * sIyIt) / det;
                    delta.y = (sIxIx * sIyIt - sIxIy * sIxIt) / det;
                    delta = -delta;
                }
                float len = length(delta);
                if (isnan(len) || isinf(len)) {
                    delta = vec2(0.0);
                } else if (len > 1.25) {
                    delta *= 1.25 / len;
                }
                vec2 updated = flow + delta;
                if (isnan(updated.x) || isnan(updated.y) || isinf(updated.x) || isinf(updated.y)) {
                    updated = flow;
                }
                imageStore(uOutputFlow, tile, vec4(updated, flowSample.ba));
            }
        """.trimIndent()

        private val SMOOTH_FLOW_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInputFlow;
            uniform ivec2 uGridSize;
            uniform float uOutlierThreshold;
            uniform float uOutlierWeight;
            out vec4 fragColor;

            vec4 readFlowSample(ivec2 p) {
                p = clamp(p, ivec2(0), uGridSize - ivec2(1));
                return texelFetch(uInputFlow, p, 0);
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec4 centerSample = readFlowSample(p);
                vec2 center = centerSample.rg;
                float centerWeight = mix(0.5, 4.0, clamp(centerSample.a, 0.0, 1.0));
                vec2 sum = center * centerWeight;
                float weight = centerWeight;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        if (x == 0 && y == 0) continue;
                        vec4 neighbor = readFlowSample(p + ivec2(x, y));
                        vec2 f = neighbor.rg;
                        float d = length(f - center);
                        float consistency = d > uOutlierThreshold ? uOutlierWeight : 1.0;
                        float evidence = mix(0.05, 1.0, clamp(neighbor.a, 0.0, 1.0));
                        float w = consistency * evidence;
                        sum += f * w;
                        weight += w;
                    }
                }
                fragColor = vec4(sum / weight, centerSample.ba);
            }
        """.trimIndent()

        private val COPY_SCALAR_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform sampler2D uInput;
            uniform ivec2 uImageSize;
            out float fragColor;

            void main() {
                ivec2 p = clamp(ivec2(gl_FragCoord.xy), ivec2(0), uImageSize - ivec2(1));
                fragColor = texelFetch(uInput, p, 0).r;
            }
        """.trimIndent()

        private val COPY_RGBA_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform sampler2D uInput;
            uniform ivec2 uImageSize;
            out vec4 fragColor;

            void main() {
                ivec2 p = clamp(ivec2(gl_FragCoord.xy), ivec2(0), uImageSize - ivec2(1));
                fragColor = texelFetch(uInput, p, 0);
            }
        """.trimIndent()

        private val STRUCTURE_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uProxy;
            layout(rgba16f, binding = 1) writeonly uniform highp image2D uKernel;
            uniform ivec2 uProxySize;
            uniform float uNoiseAlpha;
            uniform float uNoiseBeta;
            uniform float uStructureFlatnessSnrLow;
            uniform float uStructureFlatnessSnrHigh;
            uniform float uStructureKernelDetail;
            uniform float uStructureKernelDenoise;
            uniform float uStructureKernelShrink;
            uniform float uStructureKernelStretch;
            uniform float uStructureAnisotropyThreshold;

            float readProxy(ivec2 p) {
                p = clamp(p, ivec2(0), uProxySize - ivec2(1));
                return texelFetch(uProxy, p, 0).r;
            }

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uProxySize.x || p.y >= uProxySize.y) return;
                float sIxIx = 0.0;
                float sIyIy = 0.0;
                float sIxIy = 0.0;
                float sSignal = 0.0;
                for (int y = -2; y <= 2; ++y) {
                    for (int x = -2; x <= 2; ++x) {
                        ivec2 q = p + ivec2(x, y);
                        float center = readProxy(q);
                        float ix = 0.5 * (readProxy(q + ivec2(1, 0)) - readProxy(q - ivec2(1, 0)));
                        float iy = 0.5 * (readProxy(q + ivec2(0, 1)) - readProxy(q - ivec2(0, 1)));
                        sIxIx += ix * ix;
                        sIyIy += iy * iy;
                        sIxIy += ix * iy;
                        sSignal += center;
                    }
                }
                float jxx = sIxIx / 25.0;
                float jyy = sIyIy / 25.0;
                float jxy = sIxIy / 25.0;
                float signalMean = sSignal / 25.0;
                float trace = jxx + jyy;
                float det = jxx * jyy - jxy * jxy;
                float discriminant = sqrt(max(trace * trace * 0.25 - det, 0.0));
                float lambda1 = trace * 0.5 + discriminant;
                float lambda2 = trace * 0.5 - discriminant;
                float noiseSignal = clamp(signalMean, 0.10, 0.75);
                float noiseVar = uNoiseAlpha * noiseSignal + max(uNoiseBeta, 1e-10);
                float snr = lambda1 / max(2.0 * noiseVar * 9.0, 1e-12);
                float flatness = 1.0 - smoothstep(uStructureFlatnessSnrLow, uStructureFlatnessSnrHigh, snr);
                float anisotropy = 1.0 + sqrt(max(lambda1 - lambda2, 0.0) / max(lambda1 + lambda2, 1e-7));
                float kDetail = uStructureKernelDetail;
                float kDenoise = uStructureKernelDenoise;
                float kShrink = uStructureKernelShrink;
                float kStretch = uStructureKernelStretch;
                float k1Base = anisotropy > uStructureAnisotropyThreshold ? 1.0 / kShrink : 1.0;
                float k2Base = anisotropy > uStructureAnisotropyThreshold ? kStretch : 1.0;
                float preK1 = kDetail * mix(k1Base, kDenoise, flatness);
                float preK2 = kDetail * mix(k2Base, kDenoise, flatness);
                float k1 = 1.0 / max(preK1 * preK1, 1e-7);
                float k2 = 1.0 / max(preK2 * preK2, 1e-7);
                float diff = jxx - jyy;
                float hyp = sqrt(diff * diff + 4.0 * jxy * jxy);
                float cos2t = hyp > 1e-9 ? diff / hyp : 1.0;
                float sin2t = hyp > 1e-9 ? 2.0 * jxy / hyp : 0.0;
                vec4 result = vec4(k1, k2, cos2t, sin2t);
                if (any(isnan(result)) || any(isinf(result))) {
                    result = vec4(1.0, 1.0, 1.0, 0.0);
                }
                imageStore(uKernel, p, result);
            }
        """.trimIndent()

        private val ROBUSTNESS_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform sampler2D uFlowGrid;
            layout(r32f, binding = 3) writeonly uniform highp image2D uRobustness;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform float uRobustNoiseFloorSpatialScale;
            uniform float uRobustNoiseFloorEdgeScale;
            uniform float uRobustTauBase;
            uniform float uRobustTauEdge;
            uniform float uRobustResidualPower;
            uniform float uRobustFlowRangePenaltyStartPx;
            uniform float uRobustFlowRangeRejectPx;
            uniform float uPatchPeakConfidenceStart;
            uniform float uPatchPeakConfidenceFull;
            uniform float uRobustMinMixFlat;
            uniform float uRobustMinMixEdge;
            uniform float uRobustCenterMixFlat;
            uniform float uRobustCenterMixEdge;

            float refProxy(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).r;
            }

            float refValidity(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).g;
            }

            float refNoiseVariance(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return max(texelFetch(uReference, p, 0).a, 1e-10);
            }

            float curProxy(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(uCurrent, uv).r;
            }

            float curValidity(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(uCurrent, uv).g;
            }

            float curNoiseVariance(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return max(texture(uCurrent, uv).a, 1e-10);
            }

            vec2 flowAt(vec2 planePos) {
                vec2 grid = planePos / float(uTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
            }

            float patchPeakEvidenceAt(vec2 planePos) {
                vec2 grid = planePos / float(uTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).a;
            }

            $LOCAL_FLOW_WARP_GLSL

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uPlaneSize.x || p.y >= uPlaneSize.y) return;
                vec2 flow = flowAt(vec2(p));
                vec2 curCenter = localFlowSourcePlane(vec2(p));
                if (curCenter.x < 1.0 || curCenter.y < 1.0 ||
                    curCenter.x > float(uPlaneSize.x - 2) ||
                    curCenter.y > float(uPlaneSize.y - 2)) {
                    imageStore(uRobustness, p, vec4(0.0));
                    return;
                }

                float sumG = 0.0;
                float sumG2 = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        float g = refProxy(p + ivec2(x, y));
                        sumG += g;
                        sumG2 += g * g;
                    }
                }
                float meanG = sumG / 9.0;
                float sigma2Spatial = max(sumG2 / 9.0 - meanG * meanG, 0.0);
                float sigma2 = max(sigma2Spatial, refNoiseVariance(p));
                float gradX = 0.5 * (refProxy(p + ivec2(1, 0)) - refProxy(p - ivec2(1, 0)));
                float gradY = 0.5 * (refProxy(p + ivec2(0, 1)) - refProxy(p - ivec2(0, 1)));
                float edgeStrength = sqrt(max((gradX * gradX + gradY * gradY) / max(sigma2, 1e-8), 0.0));
                float edgeRelax = smoothstep(1.2, 5.0, edgeStrength);

                vec2 gridCoord = vec2(p) / float(uTileSize) - 0.5;
                ivec2 gCenter = clamp(ivec2(round(gridCoord)), ivec2(0), uGridSize - ivec2(1));
                vec2 fMin = flow;
                vec2 fMax = flow;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 gp = clamp(gCenter + ivec2(x, y), ivec2(0), uGridSize - ivec2(1));
                        vec2 f = texelFetch(uFlowGrid, gp, 0).rg;
                        fMin = min(fMin, f);
                        fMax = max(fMax, f);
                    }
                }
                float flowRange = length(fMax - fMin);
                float rawConsistencyPenalty = 1.0 - smoothstep(
                    min(uRobustFlowRangePenaltyStartPx, uRobustFlowRangeRejectPx),
                    max(uRobustFlowRangePenaltyStartPx, uRobustFlowRangeRejectPx),
                    flowRange
                );
                float patchPeakConfidence = smoothstep(
                    uPatchPeakConfidenceStart,
                    uPatchPeakConfidenceFull,
                    patchPeakEvidenceAt(vec2(p))
                );
                // A flow discontinuity is meaningful motion evidence only where alignment is
                // observable. Noise-normalized edges cover moving boundaries; patch peak covers
                // textured interiors. Flat dark regions keep the inherited flow without penalty.
                float motionEvidence = max(edgeRelax, patchPeakConfidence);
                float consistencyPenalty = mix(1.0, rawConsistencyPenalty, motionEvidence);

                float minR = 1.0;
                float sumR = 0.0;
                float centerR = 1.0;
                float weightSum = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 rp = p + ivec2(x, y);
                        float r = refProxy(rp);
                        float c = curProxy(vec2(rp) + flow);
                        float validity = min(refValidity(rp), curValidity(vec2(rp) + flow));
                        float diff = r - c;
                        float d2 = diff * diff;
                        float differenceNoiseVariance = max(
                            refNoiseVariance(rp) + curNoiseVariance(vec2(rp) + flow),
                            1e-10
                        );
                        float localSpatialVariance = max(sigma2Spatial, refNoiseVariance(rp));
                        float noiseFloor = mix(
                            uRobustNoiseFloorSpatialScale * localSpatialVariance,
                            uRobustNoiseFloorEdgeScale * differenceNoiseVariance,
                            edgeRelax
                        );
                        float den = mix(localSpatialVariance, differenceNoiseVariance, edgeRelax);
                        float residual = max(0.0, d2 - noiseFloor) / max(den, 1e-10);
                        float tau = uRobustTauBase + uRobustTauEdge * edgeRelax;
                        // NR certainty describes whether this warped sample is physically usable
                        // and photometrically consistent. Patch sharpness and absolute motion are
                        // alignment observability/detail evidence, not NR rejection reasons.
                        float robust = exp(-0.5 * pow(residual / tau, uRobustResidualPower)) *
                            consistencyPenalty * validity;
                        float w = (x == 0 && y == 0) ? 2.0 : 1.0;
                        sumR += robust * w;
                        weightSum += w;
                        minR = min(minR, robust);
                        if (x == 0 && y == 0) centerR = robust;
                    }
                }
                float avgR = sumR / max(weightSum, 1.0);
                float minMix = mix(uRobustMinMixFlat, uRobustMinMixEdge, edgeRelax);
                float centerMix = mix(uRobustCenterMixFlat, uRobustCenterMixEdge, edgeRelax);
                float outR = clamp(minMix * minR + centerMix * centerR + (1.0 - minMix - centerMix) * avgR, 0.0, 1.0);
                imageStore(uRobustness, p, vec4(outR));
            }
        """.trimIndent()

        private fun tileMaskFragmentShader(
            dualConfidence: Boolean,
            trackRejectionReasons: Boolean,
        ): String {
            val flowUniforms = if (dualConfidence) {
                """
                uniform sampler2D uFlowGrid;
                uniform float uRobustFlowRangePenaltyStartPx;
                uniform float uRobustFlowRangeRejectPx;
                uniform float uPatchScoreFullConfidence;
                uniform float uPatchScoreReject;
                uniform float uPatchPeakConfidenceStart;
                uniform float uPatchPeakConfidenceFull;
                """.trimIndent()
            } else {
                ""
            }
            val reasonUniforms = if (trackRejectionReasons) {
                "uniform sampler2D uCurrent;"
            } else {
                ""
            }
            val outputDeclaration = if (dualConfidence) {
                "out vec4 fragColor;"
            } else {
                "out float fragColor;"
            }
            val flowHelpers = if (dualConfidence) {
                """
                vec4 flowEvidenceAt(vec2 planePos) {
                    vec2 grid = planePos / float(uTileSize) - vec2(0.5);
                    vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                    return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0)));
                }
                """.trimIndent()
            } else {
                ""
            }
            val reasonHelpers = if (trackRejectionReasons) {
                """
                const float MATERIAL_REJECTION_THRESHOLD = 0.5;

                float currentValidityAt(vec2 planePos) {
                    if (planePos.x < 0.0 || planePos.y < 0.0 ||
                        planePos.x > float(uPlaneSize.x - 1) ||
                        planePos.y > float(uPlaneSize.y - 1)) {
                        return 0.0;
                    }
                    vec2 uv = (planePos + vec2(0.5)) / vec2(uPlaneSize);
                    return texture(uCurrent, uv).g;
                }

                bool shouldReplaceRejectionCause(vec3 previous, vec3 candidate) {
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

                void considerRejectionCause(
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
                    if (shouldReplaceRejectionCause(selected, candidate)) {
                        selected = candidate;
                    }
                }
                """.trimIndent()
            } else {
                ""
            }
            val flowSetup = if (dualConfidence) {
                """
                vec2 tileCenter = vec2(start) + vec2(0.5 * float(uTileSize));
                vec4 centerFlowEvidence = flowEvidenceAt(tileCenter);
                vec2 flowMin = centerFlowEvidence.rg;
                vec2 flowMax = centerFlowEvidence.rg;
                for (int gy = -1; gy <= 1; ++gy) {
                    for (int gx = -1; gx <= 1; ++gx) {
                        ivec2 neighborTile = clamp(
                            tile + ivec2(gx, gy),
                            ivec2(0),
                            uGridSize - ivec2(1)
                        );
                        vec2 neighborFlow = texelFetch(uFlowGrid, neighborTile, 0).rg;
                        flowMin = min(flowMin, neighborFlow);
                        flowMax = max(flowMax, neighborFlow);
                    }
                }
                float flowRange = length(flowMax - flowMin);
                float flowRangeConfidence = 1.0 - smoothstep(
                    min(uRobustFlowRangePenaltyStartPx, uRobustFlowRangeRejectPx),
                    max(uRobustFlowRangePenaltyStartPx, uRobustFlowRangeRejectPx),
                    flowRange
                );
                float patchScoreConfidence = 1.0 - smoothstep(
                    uPatchScoreFullConfidence,
                    uPatchScoreReject,
                    centerFlowEvidence.b
                );
                float patchPeakConfidence = smoothstep(
                    uPatchPeakConfidenceStart,
                    uPatchPeakConfidenceFull,
                    centerFlowEvidence.a
                );
                float detailAlignmentConfidence = clamp(
                    flowRangeConfidence * patchScoreConfidence * patchPeakConfidence,
                    0.0,
                    1.0
                );
                """.trimIndent()
            } else {
                ""
            }
            val reasonSetup = if (trackRejectionReasons) {
                """
                float validityConfidenceSum = 0.0;
                """.trimIndent()
            } else {
                ""
            }
            val reasonSample = if (trackRejectionReasons) {
                """
                vec2 sampleFlow = flowEvidenceAt(vec2(p)).rg;
                float validityConfidence = min(
                    texelFetch(uReference, p, 0).g,
                    currentValidityAt(vec2(p) + sampleFlow)
                );
                validityConfidenceSum += validityConfidence;
                """.trimIndent()
            } else {
                ""
            }
            val output = when {
                trackRejectionReasons -> {
                    """
                    float validityConfidence = validityConfidenceSum / max(count, 1.0);
                    float textureMotionEvidence = smoothstep(
                        0.5 * min(uTileDetailMid, uTileDetailHigh),
                        max(uTileDetailMid, uTileDetailHigh),
                        detail
                    );
                    float motionEvidence = max(patchPeakConfidence, textureMotionEvidence);
                    float motionConfidence = mix(1.0, flowRangeConfidence, motionEvidence);
                    float explainedConfidence = motionConfidence * validityConfidence;
                    float photometricConfidence = explainedConfidence > 1e-5 ?
                        clamp(meanR / explainedConfidence, 0.0, 1.0) : 1.0;
                    float tileAggregationConfidence = meanR > 1e-4 ?
                        clamp(nrMask / meanR, 0.0, 1.0) : 1.0;
                    vec3 rejectionCause = vec3(0.0);
                    // Only causes that can suppress NR belong in the NR rejection overlay.
                    // Patch peak/texture only activate motion evidence; neither can reject NR by itself.
                    considerRejectionCause(rejectionCause, 1.0, 110.0, 1.0 - validityConfidence);
                    considerRejectionCause(rejectionCause, 5.0, 70.0, 1.0 - motionConfidence);
                    considerRejectionCause(rejectionCause, 6.0, 60.0, 1.0 - photometricConfidence);
                    considerRejectionCause(rejectionCause, 7.0, 50.0, 1.0 - tileAggregationConfidence);
                    fragColor = vec4(
                        nrMask,
                        detailMask,
                        rejectionCause.x,
                        rejectionCause.z
                    );
                    """.trimIndent()
                }

                dualConfidence -> "fragColor = vec4(nrMask, detailMask, 0.0, 0.0);"
                else -> "fragColor = confidenceMask;"
            }
            return """
                #version 300 es
                precision highp float;
                uniform sampler2D uReference;
                uniform sampler2D uRobustness;
                $flowUniforms
                $reasonUniforms
                uniform ivec2 uPlaneSize;
                uniform ivec2 uGridSize;
                uniform int uTileSize;
                uniform float uTileRobustCenter;
                uniform float uTileRobustWidth;
                uniform float uTileWeakThreshold;
                uniform float uTileWeakStart;
                uniform float uTileWeakRange;
                uniform float uTileDetailMid;
                uniform float uTileDetailHigh;
                uniform float uTileDetailBoostLow;
                uniform float uTileDetailBoostMid;
                uniform float uTileDetailBoostHigh;
                uniform float uTileMaskMinMidDetail;
                uniform float uTileMaskMinHighDetail;
                $outputDeclaration

                float readRef(ivec2 p) {
                    p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                    return texelFetch(uReference, p, 0).r;
                }

                float readRefNoiseVariance(ivec2 p) {
                    p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                    return max(texelFetch(uReference, p, 0).a, 0.0);
                }

                float structureBeyondNoise(float magnitude, float variance) {
                    return max(magnitude - 2.0 * sqrt(max(variance, 0.0)), 0.0);
                }

                $flowHelpers
                $reasonHelpers

                void main() {
                    ivec2 tile = ivec2(gl_FragCoord.xy);
                    ivec2 start = tile * uTileSize;
                    float robustSum = 0.0;
                    float weakCount = 0.0;
                    float detailSum = 0.0;
                    float count = 0.0;
                    $flowSetup
                    $reasonSetup
                    for (int y = 0; y < uTileSize; y += 4) {
                        for (int x = 0; x < uTileSize; x += 4) {
                            ivec2 p = start + ivec2(x, y);
                            if (p.x >= uPlaneSize.x || p.y >= uPlaneSize.y) continue;
                            float r = texelFetch(uRobustness, p, 0).r;
                            float c = readRef(p);
                            ivec2 px = p + ivec2(1, 0);
                            ivec2 nx = p - ivec2(1, 0);
                            ivec2 py = p + ivec2(0, 1);
                            ivec2 ny = p - ivec2(0, 1);
                            float centerVariance = readRefNoiseVariance(p);
                            float pxVariance = readRefNoiseVariance(px);
                            float nxVariance = readRefNoiseVariance(nx);
                            float pyVariance = readRefNoiseVariance(py);
                            float nyVariance = readRefNoiseVariance(ny);
                            float detail = structureBeyondNoise(
                                abs(readRef(px) - readRef(nx)),
                                pxVariance + nxVariance
                            ) + structureBeyondNoise(
                                abs(readRef(py) - readRef(ny)),
                                pyVariance + nyVariance
                            ) + 0.5 * structureBeyondNoise(
                                abs(4.0 * c - readRef(px) - readRef(nx) - readRef(py) - readRef(ny)),
                                16.0 * centerVariance + pxVariance + nxVariance + pyVariance + nyVariance
                            );
                            robustSum += r;
                            weakCount += r < uTileWeakThreshold ? 1.0 : 0.0;
                            detailSum += detail;
                            count += 1.0;
                            $reasonSample
                        }
                    }
                    float meanR = robustSum / max(count, 1.0);
                    float weak = weakCount / max(count, 1.0);
                    float detail = detailSum / max(count, 1.0);
                    float robustNorm = clamp((meanR - uTileRobustCenter) / uTileRobustWidth, 0.0, 1.0);
                    float weakPenalty = clamp(1.0 - max(0.0, weak - uTileWeakStart) / uTileWeakRange, 0.0, 1.0);
                    float detailBoost = detail > uTileDetailHigh ?
                        uTileDetailBoostHigh : (detail > uTileDetailMid ? uTileDetailBoostMid : uTileDetailBoostLow);
                    float confidenceMask = clamp((0.60 * robustNorm + 0.40 * weakPenalty) *
                        (0.55 + 0.45 * detailBoost), 0.0, 1.0);
                    if (detail > uTileDetailHigh) {
                        confidenceMask = max(confidenceMask, uTileMaskMinHighDetail * robustNorm);
                    } else if (detail > uTileDetailMid) {
                        confidenceMask = max(confidenceMask, uTileMaskMinMidDetail * robustNorm);
                    }
                    // NR is a spatial confidence filter over already noise-normalized per-pixel
                    // robustness. It deliberately has no texture or patch-peak requirement.
                    float nrMask = clamp(0.75 * meanR + 0.25 * weakPenalty, 0.0, 1.0);
                    ${if (dualConfidence) "float detailMask = confidenceMask * detailAlignmentConfidence;" else ""}
                    $output
                }
            """.trimIndent()
        }

        private val REGISTRATION_SAMPLE_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uFlowGrid;
            uniform sampler2D uRobustness;
            uniform sampler2D uTileMask;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uImageSize;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uUseDetailTileConfidence;
            layout(std430, binding = $REGISTRATION_SAMPLE_BUFFER_BINDING) buffer RegistrationSamples {
                float samples[];
            };

            const int SAMPLE_STRIDE = $REGISTRATION_SAMPLE_FLOAT_STRIDE;

            float refAt(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).r;
            }

            float curAt(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(uCurrent, uv).r;
            }

            float mapAt(sampler2D tex, vec2 planePos) {
                vec2 uv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(tex, uv).r;
            }

            float detailAt(ivec2 p) {
                float c = refAt(p);
                float gx = abs(refAt(p + ivec2(1, 0)) - refAt(p - ivec2(1, 0)));
                float gy = abs(refAt(p + ivec2(0, 1)) - refAt(p - ivec2(0, 1)));
                float lap = abs(4.0 * c -
                    refAt(p + ivec2(1, 0)) -
                    refAt(p - ivec2(1, 0)) -
                    refAt(p + ivec2(0, 1)) -
                    refAt(p - ivec2(0, 1)));
                return gx + gy + 0.5 * lap;
            }

            void writeSample(
                ivec2 tile,
                vec2 referenceRaw,
                vec2 targetRaw,
                float robustness,
                float tileMask,
                float residual,
                float detail
            ) {
                int offset = (tile.y * uGridSize.x + tile.x) * SAMPLE_STRIDE;
                samples[offset + 0] = referenceRaw.x;
                samples[offset + 1] = referenceRaw.y;
                samples[offset + 2] = targetRaw.x;
                samples[offset + 3] = targetRaw.y;
                samples[offset + 4] = robustness;
                samples[offset + 5] = tileMask;
                samples[offset + 6] = residual;
                samples[offset + 7] = detail;
            }

            void main() {
                ivec2 tile = ivec2(gl_GlobalInvocationID.xy);
                if (tile.x >= uGridSize.x || tile.y >= uGridSize.y) return;
                vec2 planePos = min(
                    vec2(tile * uTileSize + ivec2(uTileSize / 2)),
                    vec2(uPlaneSize - ivec2(1))
                );
                ivec2 planeCoord = clamp(ivec2(round(planePos)), ivec2(0), uPlaneSize - ivec2(1));
                vec2 flow = texelFetch(uFlowGrid, tile, 0).rg;
                vec2 targetPlane = planePos + flow;
                vec2 referenceRaw = planePos * 2.0;
                vec2 targetRaw = targetPlane * 2.0;
                if (targetRaw.x < 0.0 || targetRaw.y < 0.0 ||
                    targetRaw.x > float(uImageSize.x - 1) ||
                    targetRaw.y > float(uImageSize.y - 1) ||
                    any(isnan(targetRaw)) || any(isinf(targetRaw))) {
                    writeSample(tile, referenceRaw, referenceRaw, 0.0, 0.0, 1.0, 0.0);
                    return;
                }
                float robustness = clamp(mapAt(uRobustness, planePos), 0.0, 1.0);
                vec4 tileConfidence = texelFetch(uTileMask, tile, 0);
                float tileMask = clamp(
                    uUseDetailTileConfidence != 0 ? tileConfidence.g : tileConfidence.r,
                    0.0,
                    1.0
                );
                float residual = abs(refAt(planeCoord) - curAt(targetPlane));
                float detail = detailAt(planeCoord);
                writeSample(tile, referenceRaw, targetRaw, robustness, tileMask, residual, detail);
            }
        """.trimIndent()







        private val DIAGNOSTIC_ALIGNMENT_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uFlowGrid;
            uniform sampler2D uRobustness;
            uniform sampler2D uTileMask;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uImageSize;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform ivec2 uSampleGridSize;
            uniform int uSampleStep;
            uniform int uTileSize;
            uniform float uFlowHistogramRange;
            uniform float uResidualHistogramRange;
            uniform float uNoiseResidualHistogramRange;
            uniform float uFlowRangeHistogramRange;
            uniform float uFlowOutlierThreshold;
            uniform float uTileRejectThreshold;
            uniform float uNoiseAlpha;
            uniform float uNoiseBeta;
            uniform float uSrReadyResidualThreshold;
            uniform float uSrReadyNoiseResidualThreshold;
            uniform float uSrReadyFlowRangeThreshold;
            uniform float uHighConfidenceRobustnessThreshold;
            uniform float uHighConfidenceTileThreshold;
            uniform float uSrReadyDetailThreshold;
            uniform mat3 uRegistrationTransform;
            uniform int uRegistrationForceIdentity;
            layout(std430, binding = $DIAGNOSTIC_BUFFER_BINDING) buffer RawStackDiagnosticStats {
                uint stats[];
            };

            const int HIST_BINS = $DIAGNOSTIC_HIST_BINS;
            const int FLOW_COUNT_INDEX = $DIAGNOSTIC_FLOW_COUNT_INDEX;
            const int FLOW_SUM_INDEX = $DIAGNOSTIC_FLOW_SUM_INDEX;
            const int FLOW_MAX_INDEX = $DIAGNOSTIC_FLOW_MAX_INDEX;
            const int FLOW_OUTLIER_COUNT_INDEX = $DIAGNOSTIC_FLOW_OUTLIER_COUNT_INDEX;
            const int ROBUST_COUNT_INDEX = $DIAGNOSTIC_ROBUST_COUNT_INDEX;
            const int ROBUST_SUM_INDEX = $DIAGNOSTIC_ROBUST_SUM_INDEX;
            const int ROBUST_MAX_INDEX = $DIAGNOSTIC_ROBUST_MAX_INDEX;
            const int TILE_COUNT_INDEX = $DIAGNOSTIC_TILE_COUNT_INDEX;
            const int TILE_SUM_INDEX = $DIAGNOSTIC_TILE_SUM_INDEX;
            const int TILE_MAX_INDEX = $DIAGNOSTIC_TILE_MAX_INDEX;
            const int TILE_REJECT_COUNT_INDEX = $DIAGNOSTIC_TILE_REJECT_COUNT_INDEX;
            const int RESIDUAL_COUNT_INDEX = $DIAGNOSTIC_RESIDUAL_COUNT_INDEX;
            const int RESIDUAL_SUM_INDEX = $DIAGNOSTIC_RESIDUAL_SUM_INDEX;
            const int RESIDUAL_MAX_INDEX = $DIAGNOSTIC_RESIDUAL_MAX_INDEX;
            const int NOISE_RESIDUAL_COUNT_INDEX = $DIAGNOSTIC_NOISE_RESIDUAL_COUNT_INDEX;
            const int NOISE_RESIDUAL_SUM_INDEX = $DIAGNOSTIC_NOISE_RESIDUAL_SUM_INDEX;
            const int NOISE_RESIDUAL_MAX_INDEX = $DIAGNOSTIC_NOISE_RESIDUAL_MAX_INDEX;
            const int FLOW_RANGE_COUNT_INDEX = $DIAGNOSTIC_FLOW_RANGE_COUNT_INDEX;
            const int FLOW_RANGE_SUM_INDEX = $DIAGNOSTIC_FLOW_RANGE_SUM_INDEX;
            const int FLOW_RANGE_MAX_INDEX = $DIAGNOSTIC_FLOW_RANGE_MAX_INDEX;
            const int HIGH_CONFIDENCE_COUNT_INDEX = $DIAGNOSTIC_HIGH_CONFIDENCE_COUNT_INDEX;
            const int SR_ALIGNMENT_READY_COUNT_INDEX = $DIAGNOSTIC_SR_ALIGNMENT_READY_COUNT_INDEX;
            const int SR_DETAIL_READY_COUNT_INDEX = $DIAGNOSTIC_SR_DETAIL_READY_COUNT_INDEX;
            const int FLOW_HIST_OFFSET = $DIAGNOSTIC_FLOW_HIST_OFFSET;
            const int ROBUST_HIST_OFFSET = $DIAGNOSTIC_ROBUST_HIST_OFFSET;
            const int TILE_HIST_OFFSET = $DIAGNOSTIC_TILE_HIST_OFFSET;
            const int RESIDUAL_HIST_OFFSET = $DIAGNOSTIC_RESIDUAL_HIST_OFFSET;
            const int NOISE_RESIDUAL_HIST_OFFSET = $DIAGNOSTIC_NOISE_RESIDUAL_HIST_OFFSET;
            const int FLOW_RANGE_HIST_OFFSET = $DIAGNOSTIC_FLOW_RANGE_HIST_OFFSET;
            const float UNIT_Q = ${DIAGNOSTIC_UNIT_QUANTIZATION};
            const float FLOW_Q = ${DIAGNOSTIC_FLOW_QUANTIZATION};
            const float RESIDUAL_Q = ${DIAGNOSTIC_RESIDUAL_QUANTIZATION};
            const float NOISE_RESIDUAL_Q = ${DIAGNOSTIC_NOISE_RESIDUAL_QUANTIZATION};

            uint quant(float value, float scale) {
                return uint(clamp(value * scale + 0.5, 0.0, 4294967040.0));
            }

            int histBin(float value, float range) {
                float normalized = clamp(value / max(range, 1e-6), 0.0, 1.0);
                return int(clamp(floor(normalized * float(HIST_BINS - 1) + 0.5), 0.0, float(HIST_BINS - 1)));
            }

            vec2 flowAt(vec2 planePos) {
                vec2 grid = planePos / float(uTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
            }

            vec2 flowAtGrid(ivec2 p) {
                p = clamp(p, ivec2(0), uGridSize - ivec2(1));
                return texelFetch(uFlowGrid, p, 0).rg;
            }

            float flowLocalRange(vec2 planePos, vec2 centerFlow) {
                vec2 gridCoord = planePos / float(uTileSize) - 0.5;
                ivec2 gCenter = clamp(ivec2(round(gridCoord)), ivec2(0), uGridSize - ivec2(1));
                vec2 fMin = centerFlow;
                vec2 fMax = centerFlow;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        vec2 f = flowAtGrid(gCenter + ivec2(x, y));
                        fMin = min(fMin, f);
                        fMax = max(fMax, f);
                    }
                }
                return length(fMax - fMin);
            }

            float planeMapAt(sampler2D tex, vec2 planePos) {
                vec2 uv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(tex, uv).r;
            }

            float tileMaskAt(vec2 planePos) {
                vec2 grid = planePos / float(uTileSize) - vec2(0.5);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uTileMask, clamp(uv, vec2(0.0), vec2(1.0))).r;
            }

            float referenceAt(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).r;
            }

            float currentAt(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(uCurrent, uv).r;
            }

            vec2 registrationSourcePlane(vec2 planePos) {
                if (uRegistrationForceIdentity != 0) {
                    return planePos;
                }
                vec3 mapped = uRegistrationTransform * vec3(planePos * 2.0, 1.0);
                float z = abs(mapped.z) > 1e-6 ? mapped.z : 1.0;
                vec2 sourceRaw = mapped.xy / z;
                vec2 sourcePlane = sourceRaw * 0.5;
                if (any(isnan(sourcePlane)) || any(isinf(sourcePlane))) {
                    return planePos;
                }
                return sourcePlane;
            }

            float detailAt(ivec2 p) {
                float c = referenceAt(p);
                float gx = abs(referenceAt(p + ivec2(1, 0)) - referenceAt(p - ivec2(1, 0)));
                float gy = abs(referenceAt(p + ivec2(0, 1)) - referenceAt(p - ivec2(0, 1)));
                float lap = abs(4.0 * c -
                    referenceAt(p + ivec2(1, 0)) -
                    referenceAt(p - ivec2(1, 0)) -
                    referenceAt(p + ivec2(0, 1)) -
                    referenceAt(p - ivec2(0, 1)));
                return gx + gy + 0.5 * lap;
            }

            void main() {
                ivec2 sampleIndex = ivec2(gl_GlobalInvocationID.xy);
                if (sampleIndex.x >= uSampleGridSize.x || sampleIndex.y >= uSampleGridSize.y) return;
                ivec2 raw = min(sampleIndex * uSampleStep, uImageSize - ivec2(1));
                vec2 planePos = vec2(raw) * 0.5;
                ivec2 planeCoord = clamp(ivec2(round(planePos)), ivec2(0), uPlaneSize - ivec2(1));

                vec2 flow = flowAt(planePos);
                float flowMagnitude = length(flow);
                float flowRange = flowLocalRange(planePos, flow);
                float robustness = clamp(planeMapAt(uRobustness, planePos), 0.0, 1.0);
                float tile = clamp(tileMaskAt(planePos), 0.0, 1.0);
                float reference = referenceAt(planeCoord);
                vec2 registrationPlane = registrationSourcePlane(planePos);
                bool registrationInside = registrationPlane.x >= 0.0 && registrationPlane.y >= 0.0 &&
                    registrationPlane.x <= float(uPlaneSize.x - 1) &&
                    registrationPlane.y <= float(uPlaneSize.y - 1);
                float alignedCurrent = currentAt(registrationPlane);
                float residual = abs(reference - alignedCurrent);
                float noiseStd = sqrt(max(uNoiseAlpha * clamp(reference, 0.0, 1.0) + uNoiseBeta, 1e-10));
                float noiseResidual = residual / max(noiseStd, 1e-5);
                float detail = detailAt(planeCoord);
                bool highConfidence = robustness >= uHighConfidenceRobustnessThreshold &&
                    tile >= uHighConfidenceTileThreshold;
                bool srAlignmentReady = highConfidence &&
                    uRegistrationForceIdentity == 0 &&
                    registrationInside &&
                    residual <= uSrReadyResidualThreshold;
                bool srDetailReady = srAlignmentReady && detail >= uSrReadyDetailThreshold;

                atomicAdd(stats[FLOW_COUNT_INDEX], 1u);
                atomicAdd(stats[FLOW_SUM_INDEX], quant(flowMagnitude, FLOW_Q));
                atomicMax(stats[FLOW_MAX_INDEX], quant(flowMagnitude, FLOW_Q));
                if (flowMagnitude > uFlowOutlierThreshold) {
                    atomicAdd(stats[FLOW_OUTLIER_COUNT_INDEX], 1u);
                }
                atomicAdd(stats[FLOW_HIST_OFFSET + histBin(flowMagnitude, uFlowHistogramRange)], 1u);

                atomicAdd(stats[ROBUST_COUNT_INDEX], 1u);
                atomicAdd(stats[ROBUST_SUM_INDEX], quant(robustness, UNIT_Q));
                atomicMax(stats[ROBUST_MAX_INDEX], quant(robustness, UNIT_Q));
                atomicAdd(stats[ROBUST_HIST_OFFSET + histBin(robustness, 1.0)], 1u);

                atomicAdd(stats[TILE_COUNT_INDEX], 1u);
                atomicAdd(stats[TILE_SUM_INDEX], quant(tile, UNIT_Q));
                atomicMax(stats[TILE_MAX_INDEX], quant(tile, UNIT_Q));
                if (tile < uTileRejectThreshold) {
                    atomicAdd(stats[TILE_REJECT_COUNT_INDEX], 1u);
                }
                atomicAdd(stats[TILE_HIST_OFFSET + histBin(tile, 1.0)], 1u);

                atomicAdd(stats[RESIDUAL_COUNT_INDEX], 1u);
                atomicAdd(stats[RESIDUAL_SUM_INDEX], quant(residual, RESIDUAL_Q));
                atomicMax(stats[RESIDUAL_MAX_INDEX], quant(residual, RESIDUAL_Q));
                atomicAdd(stats[RESIDUAL_HIST_OFFSET + histBin(residual, uResidualHistogramRange)], 1u);

                atomicAdd(stats[NOISE_RESIDUAL_COUNT_INDEX], 1u);
                atomicAdd(stats[NOISE_RESIDUAL_SUM_INDEX], quant(noiseResidual, NOISE_RESIDUAL_Q));
                atomicMax(stats[NOISE_RESIDUAL_MAX_INDEX], quant(noiseResidual, NOISE_RESIDUAL_Q));
                atomicAdd(
                    stats[NOISE_RESIDUAL_HIST_OFFSET + histBin(noiseResidual, uNoiseResidualHistogramRange)],
                    1u
                );

                atomicAdd(stats[FLOW_RANGE_COUNT_INDEX], 1u);
                atomicAdd(stats[FLOW_RANGE_SUM_INDEX], quant(flowRange, FLOW_Q));
                atomicMax(stats[FLOW_RANGE_MAX_INDEX], quant(flowRange, FLOW_Q));
                atomicAdd(stats[FLOW_RANGE_HIST_OFFSET + histBin(flowRange, uFlowRangeHistogramRange)], 1u);

                if (highConfidence) {
                    atomicAdd(stats[HIGH_CONFIDENCE_COUNT_INDEX], 1u);
                }
                if (srAlignmentReady) {
                    atomicAdd(stats[SR_ALIGNMENT_READY_COUNT_INDEX], 1u);
                }
                if (srDetailReady) {
                    atomicAdd(stats[SR_DETAIL_READY_COUNT_INDEX], 1u);
                }
            }
        """.trimIndent()


    }
}
