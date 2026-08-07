package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.max

/**
 * Independent GLES Spatial Bayer merge pipeline.
 *
 * The stage order, constants and shader equations come from this APK's libgcastartup.so. Public
 * HDR+ descriptions are deliberately not used to fill tuning values. MergeBayerRaw preserves the
 * CFA lattice and leaves lens shading and demosaic to the downstream RAW pipeline.
 */
internal class GlesMgcRawSpatialStacker(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    blackLevel: FloatArray,
    whiteLevel: Int,
    whiteBalanceGains: FloatArray,
    @Suppress("UNUSED_PARAMETER") noiseModel: FloatArray,
    private val rawNoiseModel: RawNoiseModel,
    @Suppress("UNUSED_PARAMETER") lensShading: FloatArray?,
    @Suppress("UNUSED_PARAMETER") lensShadingWidth: Int,
    @Suppress("UNUSED_PARAMETER") lensShadingHeight: Int,
    private val outputMode: MgcSpatialOutputMode,
    @Suppress("UNUSED_PARAMETER") outputScale: Float,
    private val useCurrentGlContext: Boolean,
    @Suppress("UNUSED_PARAMETER") exportGpuLinearRgbSource: Boolean,
) {
    private data class TextureLevel(
        val texture: Int,
        val width: Int,
        val height: Int,
        val scaleToBayerQuads: Float,
    )

    private data class Alignment(
        val texture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
        val scaleToBayerQuads: Float,
        val gridMin: Int,
    )

    private data class PreparedTemporalFrame(
        val transientTextureStart: Int,
        val calibration: FrameCalibration,
        val flowTexture: Int,
        val bayerAlignmentTexture: Int,
        val weightTexture: Int,
    )

    private data class FrameCalibration(
        val gains: FloatArray,
        val blackTerms: FloatArray,
        val bayerPhaseGains: FloatArray,
        val bayerPhaseBlackTerms: FloatArray,
        val kernelSigma: Float,
        val shotNoise: FloatArray,
        val readNoise: FloatArray,
        val greenClippingPoint: Float,
        val alignmentGain: Float,
        val unblockerShotNoise: FloatArray,
        val unblockerReadNoise: FloatArray,
    )

    private data class BentoAssessment(
        val accepted: Boolean,
        val reason: String,
        val clippedPixelRatio: Float,
        val largestInpaintingArea: Int,
        val ultrashortClippingOverlap: Float,
    )

    // Runtime Halide buffer inspection in MGC 9.6.080 V24 gives 1020x766 for the guide,
    // rejection and pixel-difference domains with a 4080x3064 RAW input.
    private val guideWidth = max(1, width / 4)
    private val guideHeight = max(1, height / 4)
    // MergeBayerRaw16's queried AOT contract requests one alignment sample per 8x8
    // Bayer-quad tile, i.e. one sample per 16x16 sensor pixels.
    private val bayerAlignmentWidth = ceilDiv(width, MERGE_BAYER_RAW_TILE_SIZE)
    private val bayerAlignmentHeight = ceilDiv(height, MERGE_BAYER_RAW_TILE_SIZE)
    private val rejectionWidth = guideWidth
    private val rejectionHeight = guideHeight
    private val rejectionFilterWidth = ceilDiv(rejectionWidth, REJECTION_FILTER_DOWNSAMPLE)
    private val rejectionFilterHeight = ceilDiv(rejectionHeight, REJECTION_FILTER_DOWNSAMPLE)
    private val outputWidth = width
    private val outputHeight = height
    private val sensorWhiteLevel = max(1, whiteLevel).toFloat()
    // RawMetadata has already converted positional Camera2 black levels to R, Gr, Gb, B.
    private val canonicalBlackLevel = FloatArray(4) { channel ->
        blackLevel.getOrElse(channel) { blackLevel.firstOrNull() ?: 0f }
            .takeIf { it.isFinite() } ?: 0f
    }
    private val calculationWhiteBalance = run {
        fun safeGain(channel: Int, fallback: Float): Float =
            whiteBalanceGains.getOrElse(channel) { fallback }
                .takeIf { it.isFinite() && it > 0f } ?: fallback

        val greenEven = safeGain(1, 1f)
        val greenOdd = safeGain(2, greenEven)
        val greenBase = (0.5f * (greenEven + greenOdd))
            .takeIf { it.isFinite() && it > 0f } ?: 1f
        fun relative(gain: Float): Float =
            (gain / greenBase).coerceIn(MIN_WHITE_BALANCE_GAIN, MAX_WHITE_BALANCE_GAIN)

        // MGC performs guide/rejection/merge in a white-balanced calculation domain. Keep the
        // two greens unified, as Photon’s RCD calculation contract does before it removes the
        // calculation gains at output.
        floatArrayOf(
            relative(safeGain(0, greenBase)),
            1f,
            1f,
            relative(safeGain(3, greenBase)),
        )
    }
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var ownsEglContext = false

    private val textures = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()
    private val programs = ArrayList<Int>()
    private val uniformLocations = HashMap<Int, HashMap<String, Int>>()
    private val mergePassWindow = GlesGpuScheduler.PassWindow(TAG, maxInFlight = 2)
    private var renderFbo = 0
    private var renderTargetAttachmentCount = 0

    private var guideProgram = 0
    private var rawToGrayProgram = 0
    private var downsampleProgram = 0
    private var alignProgram = 0
    private var alignmentGradientProductsProgram = 0
    private var upsampleAlignmentProgram = 0
    private var blockLucasKanadeProgram = 0
    private var convertAlignmentProgram = 0
    private var convertBayerAlignmentProgram = 0
    private var unblockerProgram = 0
    private var rejectionProgram = 0
    private var clippedGaussianHorizontalProgram = 0
    private var clippedGaussianVerticalProgram = 0
    private var rejectionFilterDownsampleProgram = 0
    private var rejectionFilterProgram = 0
    private var rejectionPostprocessProgram = 0
    private var dilationProgram = 0
    private var linearKernelMaskProgram = 0
    private var bentoHighlightProgram = 0
    private var bentoAdjustProgram = 0
    private var bentoRewriteWeightProgram = 0
    private var mergeBayerProgram = 0
    private var normalizeBayerProgram = 0
    private val pixelDifferenceKernel = gaussianKernel(
        size = PIXEL_DIFFERENCE_KERNEL_SIZE,
        sigma = PIXEL_DIFFERENCE_SMOOTH_SIGMA,
    )

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        val images = frames.map { it.image }
        if (outputMode != MgcSpatialOutputMode.BAYER) {
            PLog.e(
                TAG,
                "MGC Spatial RGB implementation is removed; only Spatial Bayer is supported",
            )
            images.forEach { it.close() }
            return null
        }
        if (images.isEmpty() || width <= 1 || height <= 1) {
            images.forEach { it.close() }
            return null
        }
        if (images.any { it.width != width || it.height != height }) {
            PLog.e(TAG, "MGC Spatial merge received mixed RAW dimensions")
            images.forEach { it.close() }
            return null
        }
        if (images.any { it.format != ImageFormat.RAW_SENSOR }) {
            PLog.e(TAG, "MGC Spatial merge only accepts RAW_SENSOR images")
            images.forEach { it.close() }
            return null
        }

        var cpuOutput: ByteBuffer? = null
        var returned = false
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles3()
            initPrograms()
            renderFbo = createFramebuffer()
            applyRawRenderState()
            PLog.i(
                TAG,
                "MGC rejection filter domain=${rejectionWidth}x$rejectionHeight " +
                    "pixelDiff=ClippedGaussian${PIXEL_DIFFERENCE_KERNEL_SIZE}" +
                    "(sigma=$PIXEL_DIFFERENCE_SMOOTH_SIGMA) " +
                    "downsample=${REJECTION_FILTER_DOWNSAMPLE}x " +
                    "colorSigma=$REJECTION_FILTER_COLOR_SIGMA " +
                    "spatialSigma=$REJECTION_FILTER_SPATIAL_SIGMA " +
                    "boost=$REJECTION_FILTER_COLOR_SIGMA_BOOST " +
                    "radius=$REJECTION_FILTER_MAX_RADIUS " +
                    "pixelDiffThreshold=$PIXEL_DIFFERENCE_THRESHOLD/255 " +
                    "clippedThreshold=$REJECTION_CLIPPED_THRESHOLD/255",
            )
            PLog.i(
                TAG,
                "MGC Raw10 unblocker fullresTile=$UNBLOCKER_FULLRES_TILE_SIZE " +
                    "domain=${ceilDiv(width, UNBLOCKER_FULLRES_TILE_SIZE * 2)}x" +
                    "${ceilDiv(height, UNBLOCKER_FULLRES_TILE_SIZE * 2)} " +
                    "scale=$UNBLOCKER_OUTPUT_SCALE offset=$UNBLOCKER_OUTPUT_OFFSET",
            )
            val referenceRaw = createTexture(
                width,
                height,
                GLES30.GL_R16UI,
                GLES30.GL_NEAREST,
            )
            val currentRaw = createTexture(
                width,
                height,
                GLES30.GL_R16UI,
                GLES30.GL_NEAREST,
            )
            val referenceGuide = createTexture(
                guideWidth,
                guideHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            val currentGuide = createTexture(
                guideWidth,
                guideHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            val zeroFlow = createZeroFlowTexture()
            val identityWeight = createIdentityWeightTexture()
            val zeroLinearKernelMask = createZeroLinearKernelMaskTexture()
            val accumulatorColor = createTexture(
                outputWidth,
                outputHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val referenceExposure = validExposureProduct(frames.first().exposureProduct)
            val referenceCalibration = calibrationForFrame(
                frame = frames.first(),
                exposureScale = 1f,
            )
            uploadRaw(images.first(), referenceRaw, "reference")
            // MGC's GenerateBaseFrameLuma and GuideImage::Create prepare this noise-aware guide,
            // and alignment pyramid directly from the reference RAW. User-controlled luma/chroma
            // denoise remains a later RAW-render stage, not reference-frame preprocessing.
            val referenceNoiseLut = createNoiseLut(
                referenceCalibration,
                referenceCalibration,
            )
            renderGuide(
                rawTexture = referenceRaw,
                noiseTexture = referenceNoiseLut,
                calibration = referenceCalibration,
                guideTexture = referenceGuide,
                forceReferenceColorRgb = 0f,
            )
            val referenceGrayPyramid = buildGrayPyramid(
                rawTexture = referenceRaw,
                calibration = referenceCalibration,
            )

            val diagnosticMode = RawStackRuntimeDebug.mgcSpatialDiagnosticMode
            val referenceOnly =
                diagnosticMode == MgcSpatialDiagnosticMode.REFERENCE_ONLY
            val identityTemporalWeights =
                diagnosticMode == MgcSpatialDiagnosticMode.IDENTITY_TEMPORAL_WEIGHTS
            val disableLinearKernel =
                diagnosticMode == MgcSpatialDiagnosticMode.DISABLE_LINEAR_KERNEL
            val forceLinearKernel =
                diagnosticMode == MgcSpatialDiagnosticMode.FORCE_LINEAR_KERNEL
            if (diagnosticMode != MgcSpatialDiagnosticMode.NONE) {
                PLog.i(
                    TAG,
                    "MGC Spatial diagnostic mode=${diagnosticMode.name} " +
                        when (diagnosticMode) {
                            MgcSpatialDiagnosticMode.REFERENCE_ONLY ->
                                "temporalAndBracketedContributions=disabled"
                            MgcSpatialDiagnosticMode.IDENTITY_TEMPORAL_WEIGHTS ->
                                "flowAndTemporalMerge=enabled rejectionWeights=identity"
                            MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY ->
                                "flowAndTemporalMerge=enabled rejectionWeights=measured " +
                                    "unblocker=disabled motionPrior=disabled"
                            MgcSpatialDiagnosticMode.DISABLE_UNBLOCKER ->
                                "flowAndTemporalMerge=enabled rejectionWeights=measured " +
                                    "unblocker=disabled motionPrior=enabled"
                            MgcSpatialDiagnosticMode.DISABLE_LINEAR_KERNEL ->
                                "flowAndTemporalMerge=enabled rejectionWeights=measured " +
                                    "linearKernelMask=zero"
                            MgcSpatialDiagnosticMode.FORCE_LINEAR_KERNEL ->
                                "flowAndTemporalMerge=enabled rejectionWeights=measured " +
                                    "linearKernelMask=identity"
                            MgcSpatialDiagnosticMode.NONE -> ""
                        },
                )
            }
            var mergedFrames = 1
            var bentoAccepted = false
            var bentoCalibration: FrameCalibration? = null
            var bentoFlowTexture = 0
            var bentoBayerAlignmentTexture = 0
            val ultrashortIndex = if (referenceOnly) {
                -1
            } else {
                frames.indexOfFirst { frame ->
                    frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT
                }
            }
            val bentoMask = ultrashortIndex.takeIf { it >= 0 }?.let {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
            }
            if (ultrashortIndex >= 0) {
                val transientTextureStart = textures.size
                val ultrashortFrame = frames[ultrashortIndex]
                try {
                    val exposureRatio = (
                        referenceExposure /
                            validExposureProduct(ultrashortFrame.exposureProduct)
                        ).toFloat()
                    check(exposureRatio.isFinite() && exposureRatio > 1f) {
                        "MGC Bento requires baseTET/ultrashortTET > 1.0, got $exposureRatio"
                    }
                    val normalizedCalibration = calibrationForFrame(
                        ultrashortFrame,
                        exposureRatio,
                    )
                    uploadRaw(images[ultrashortIndex], currentRaw, "ultrashort")
                    val normalizedNoiseLut = createNoiseLut(
                        referenceCalibration,
                        normalizedCalibration,
                    )
                    renderGuide(
                        rawTexture = currentRaw,
                        noiseTexture = normalizedNoiseLut,
                        calibration = normalizedCalibration,
                        guideTexture = currentGuide,
                        forceReferenceColorRgb = 0f,
                    )
                    val ultrashortGrayPyramid = buildGrayPyramid(
                        rawTexture = currentRaw,
                        calibration = normalizedCalibration,
                    )
                    val alignment = alignPyramids(
                        reference = referenceGrayPyramid,
                        current = ultrashortGrayPyramid,
                    )
                    val flow = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    renderConvertedAlignment(alignment, flow)
                    val bayerAlignment = createTexture(
                        bayerAlignmentWidth,
                        bayerAlignmentHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_NEAREST,
                    )
                    renderBayerAlignment(alignment, bayerAlignment)

                    val unscaledCalibration = calibrationForFrame(
                        ultrashortFrame,
                        1f,
                    )
                    val unscaledGuide = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    val unscaledNoiseLut = createNoiseLut(
                        referenceCalibration,
                        unscaledCalibration,
                    )
                    renderGuide(
                        rawTexture = currentRaw,
                        noiseTexture = unscaledNoiseLut,
                        calibration = unscaledCalibration,
                        guideTexture = unscaledGuide,
                        forceReferenceColorRgb = 0f,
                    )
                    val baseHighlightMask = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    val inpaintingMask = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    val ultrashortClippingMask = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    renderBentoHighlightMask(
                        baseFrame = referenceGuide,
                        outputMask = baseHighlightMask,
                    )
                    renderBentoAdjustedMask(
                        baseFrame = referenceGuide,
                        ultrashortFrame = unscaledGuide,
                        highlightMask = baseHighlightMask,
                        flowTexture = flow,
                        exposureRatio = exposureRatio,
                        adjustedMask = checkNotNull(bentoMask),
                        inpaintingMask = inpaintingMask,
                        ultrashortClippingMask = ultrashortClippingMask,
                    )
                    val assessment = assessBentoMasks(
                        baseHighlightMask = readR8Mask(
                            baseHighlightMask,
                            "Bento base highlight mask",
                        ),
                        inpaintingMask = readR8Mask(
                            inpaintingMask,
                            "Bento inpainting mask",
                        ),
                        ultrashortClippingMask = readR8Mask(
                            ultrashortClippingMask,
                            "Bento ultrashort clipping mask",
                        ),
                    )
                    PLog.i(
                        TAG,
                        "Bento assessment accepted=${assessment.accepted} " +
                            "reason=${assessment.reason} " +
                            "clippedRatio=${assessment.clippedPixelRatio} " +
                            "largestInpaintingArea=${assessment.largestInpaintingArea} " +
                            "ultrashortOverlap=${assessment.ultrashortClippingOverlap} " +
                            "exposureRatio=$exposureRatio " +
                            "tilingFallback=notEvaluated",
                    )
                    if (assessment.accepted) {
                        bentoAccepted = true
                        bentoCalibration = normalizedCalibration
                        bentoFlowTexture = flow
                        bentoBayerAlignmentTexture = bayerAlignment
                    }
                    GlesGpuScheduler.yieldToUiRenderer()
                } finally {
                    if (
                        bentoAccepted &&
                        bentoFlowTexture != 0 &&
                        bentoBayerAlignmentTexture != 0
                    ) {
                        // Keep the selected ultrashort flow until the single Bento-derived
                        // linear-kernel mask has been built and applied to every Bayer merge
                        // contribution. The current RAW texture is persistent.
                        releaseTexturesFromExcept(
                            startIndex = transientTextureStart,
                            retainedTextures = intArrayOf(
                                bentoFlowTexture,
                                bentoBayerAlignmentTexture,
                            ),
                        )
                    } else {
                        releaseTexturesFrom(transientTextureStart)
                    }
                }
            }

            val temporalFrameRange = if (referenceOnly) {
                IntRange.EMPTY
            } else {
                1 until frames.size
            }
            val linearKernelMask = when {
                disableLinearKernel -> {
                    PLog.i(TAG, "MGC linear kernel mask mode=zero reason=diagnostic-disable")
                    zeroLinearKernelMask
                }
                forceLinearKernel -> {
                    PLog.i(TAG, "MGC linear kernel mask mode=identity reason=diagnostic-force")
                    identityWeight
                }
                identityTemporalWeights -> {
                    PLog.i(TAG, "MGC linear kernel mask mode=zero reason=identity-rejection")
                    zeroLinearKernelMask
                }
                bentoAccepted -> {
                    check(ultrashortIndex >= 0) {
                        "Accepted Bento merge has no selected ultrashort frame"
                    }
                    val selectedLinearKernelMask = createTexture(
                        rejectionWidth,
                        rejectionHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    // MGC slices its 3-D rejection buffer once at the accepted Bento ultrashort
                    // index, then calls UpdateLinearKernelMask once. Bento's adjusted mask is the
                    // complement of the selected merge weight; because the recovered AOT only
                    // tests 3x3 equality, that complement produces the identical binary mask.
                    renderLinearKernelMask(
                        rejection = checkNotNull(bentoMask),
                        output = selectedLinearKernelMask,
                    )
                    logLinearKernelMask(
                        texture = selectedLinearKernelMask,
                        selectedFrameIndex = ultrashortIndex,
                    )
                    selectedLinearKernelMask
                }
                else -> {
                    PLog.i(
                        TAG,
                        "MGC linear kernel mask mode=zero " +
                            "reason=no-accepted-bento-selected-slice",
                    )
                    zeroLinearKernelMask
                }
            }

            clearAccumulator(accumulatorColor)
            if (bentoAccepted) {
                val baseWeight = createTexture(
                    rejectionWidth,
                    rejectionHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
                renderBentoRewrittenWeight(
                    existingWeight = identityWeight,
                    bentoMask = checkNotNull(bentoMask),
                    outputWeight = baseWeight,
                    hasExistingWeight = false,
                )
                renderMerge(
                    rawTexture = referenceRaw,
                    bayerAlignmentTexture = zeroFlow,
                    weightTexture = baseWeight,
                    linearKernelMaskTexture = linearKernelMask,
                    calibration = referenceCalibration,
                    accumulatorColor = accumulatorColor,
                    useFrameWeight = true,
                )
                // MGC overwrites the selected ultrashort rejection slice with the Bento mask.
                renderMerge(
                    rawTexture = currentRaw,
                    bayerAlignmentTexture = bentoBayerAlignmentTexture,
                    weightTexture = checkNotNull(bentoMask),
                    linearKernelMaskTexture = linearKernelMask,
                    calibration = checkNotNull(bentoCalibration),
                    accumulatorColor = accumulatorColor,
                    useFrameWeight = true,
                )
                mergedFrames = 2
            } else {
                renderMerge(
                    rawTexture = referenceRaw,
                    bayerAlignmentTexture = zeroFlow,
                    weightTexture = identityWeight,
                    linearKernelMaskTexture = linearKernelMask,
                    calibration = referenceCalibration,
                    accumulatorColor = accumulatorColor,
                    useFrameWeight = false,
                )
            }

            for (index in temporalFrameRange) {
                val frame = frames[index]
                if (frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT) continue
                val prepared = prepareTemporalFrame(
                    index = index,
                    frame = frame,
                    image = images[index],
                    referenceExposure = referenceExposure,
                    referenceCalibration = referenceCalibration,
                    referenceGuide = referenceGuide,
                    referenceGrayPyramid = referenceGrayPyramid,
                    currentRaw = currentRaw,
                    currentGuide = currentGuide,
                )
                val transientTextureStart = prepared.transientTextureStart
                try {
                    val mergeWeight = when {
                        identityTemporalWeights -> identityWeight
                        bentoAccepted -> createTexture(
                            rejectionWidth,
                            rejectionHeight,
                            GLES30.GL_R8,
                            GLES30.GL_LINEAR,
                        ).also { maskedWeight ->
                            renderBentoRewrittenWeight(
                                existingWeight = prepared.weightTexture,
                                bentoMask = checkNotNull(bentoMask),
                                outputWeight = maskedWeight,
                                hasExistingWeight = true,
                            )
                        }
                        else -> prepared.weightTexture
                    }
                    renderMerge(
                        rawTexture = currentRaw,
                        bayerAlignmentTexture = prepared.bayerAlignmentTexture,
                        weightTexture = mergeWeight,
                        linearKernelMaskTexture = linearKernelMask,
                        calibration = prepared.calibration,
                        accumulatorColor = accumulatorColor,
                        useFrameWeight = true,
                    )
                    mergedFrames += 1
                    GlesGpuScheduler.yieldToUiRenderer()
                } finally {
                    releaseTexturesFrom(transientTextureStart)
                }
            }

            mergePassWindow.awaitResources(
                label = "normalize Spatial Bayer accumulator",
                resources = longArrayOf(
                    GlesGpuScheduler.textureResource(accumulatorColor),
                ),
            )
            val bayer16 = renderBayer16(accumulatorColor)
            cpuOutput = readBayer16(bayer16)
            checkGlError("MGC Spatial Bayer merge")
            returned = true
            PLog.i(
                TAG,
                "MGC Spatial BAYER merge complete frames=$mergedFrames " +
                    "output=${outputWidth}x$outputHeight " +
                    "lscApplied=false result=BAYER16_CPU",
            )
            RawStackResult(
                fusedBayerBuffer = cpuOutput,
                width = outputWidth,
                height = outputHeight,
                isNormalizedSensorData = true,
                blackLevel = FloatArray(4),
                fusedBayerUsesNativeAllocator = true,
                bufferLayout = RawStackBufferLayout.CFA,
                inputRowStepSamples = outputWidth,
                inputColStepSamples = 1,
                gpuLinearRgbSource = null,
                lensShadingCorrectionApplied = false,
                mergedFrameCount = mergedFrames,
                mgcSpatialReferenceOnlyDiagnostic = referenceOnly,
            )
        } catch (error: Exception) {
            PLog.e(TAG, "MGC Spatial BAYER merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            if (!returned) {
                LargeDirectBuffer.free(cpuOutput)
            }
        }
    }

    private fun initPrograms() {
        guideProgram = linkProgram(GlesMgcRawSpatialShaders.guide, "mgc_spatial_guide")
        rawToGrayProgram = linkProgram(GlesMgcRawSpatialShaders.rawToGray, "mgc_raw_to_gray")
        downsampleProgram = linkProgram(
            GlesMgcRawSpatialShaders.grayDownsample,
            "mgc_gray_downsample",
        )
        alignmentGradientProductsProgram = linkProgram(
            GlesMgcRawSpatialShaders.alignmentGradientProducts,
            "mgc_alignment_gradient_products",
        )
        upsampleAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.upsampleAlignment,
            "mgc_upsample_alignment",
        )
        blockLucasKanadeProgram = linkProgram(
            GlesMgcRawSpatialShaders.blockLucasKanade,
            "mgc_block_lucas_kanade",
        )
        alignProgram = linkProgram(GlesMgcRawSpatialShaders.alignL1, "mgc_align_l1")
        convertAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.convertAlignment,
            "mgc_convert_alignment",
        )
        convertBayerAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.convertBayerAlignment,
            "mgc_convert_bayer_alignment",
        )
        unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_unblocker")
        rejectionProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejection,
            "mgc_spatial_rejection",
        )
        clippedGaussianHorizontalProgram = linkProgram(
            GlesMgcRawSpatialShaders.clippedGaussianHorizontal,
            "mgc_pixel_diff_clipped_gaussian_x",
        )
        clippedGaussianVerticalProgram = linkProgram(
            GlesMgcRawSpatialShaders.clippedGaussianVertical,
            "mgc_pixel_diff_clipped_gaussian_y",
        )
        rejectionFilterDownsampleProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejectionFilterDownsample,
            "mgc_rejection_filter_downsample",
        )
        rejectionFilterProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejectionFilter,
            "mgc_rejection_filter",
        )
        rejectionPostprocessProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejectionPostprocess,
            "mgc_rejection_postprocess",
        )
        dilationProgram = linkProgram(
            GlesMgcRawSpatialShaders.dilateRejection,
            "mgc_rejection_dilation",
        )
        bentoHighlightProgram = linkProgram(
            GlesMgcRawSpatialShaders.bentoGenerateHighlightMask,
            "mgc_bento_highlight_mask",
        )
        bentoAdjustProgram = linkProgram(
            GlesMgcRawSpatialShaders.bentoAdjustHighlightMask,
            "mgc_bento_adjust_mask",
        )
        bentoRewriteWeightProgram = linkProgram(
            GlesMgcRawSpatialShaders.bentoRewriteWeight,
            "mgc_bento_rewrite_weight",
        )
        linearKernelMaskProgram = linkProgram(
            GlesMgcRawSpatialShaders.updateLinearKernelMask,
            "mgc_bento_linear_kernel_mask",
        )
        mergeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.mergeBayer,
            "mgc_spatial_bayer_merge",
        )
        normalizeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.normalizeBayer,
            "mgc_spatial_bayer16",
        )
    }

    private fun calibrationForFrame(
        frame: RawStackFrame,
        exposureScale: Float,
    ): FrameCalibration {
        val gains = FloatArray(4)
        val blackTerms = FloatArray(4)
        for (channel in 0 until 4) {
            val range = max(sensorWhiteLevel - canonicalBlackLevel[channel], 1f)
            gains[channel] =
                calculationWhiteBalance[channel] * exposureScale / range
            blackTerms[channel] = -canonicalBlackLevel[channel] * gains[channel]
        }
        val bayerPhaseGains = FloatArray(4)
        val bayerPhaseBlackTerms = FloatArray(4)
        for (phase in 0 until 4) {
            val canonicalChannel = canonicalChannelAtPhase(phase)
            val range = max(sensorWhiteLevel - canonicalBlackLevel[canonicalChannel], 1f)
            bayerPhaseGains[phase] = exposureScale / range
            bayerPhaseBlackTerms[phase] =
                -canonicalBlackLevel[canonicalChannel] * bayerPhaseGains[phase]
        }

        val frameNoiseModel = frame.channelNoiseProfile
            ?.let(RawNoiseModel::fromCamera2NoiseProfile)
            ?.takeIf { it.hasValidCamera2Profile }
            ?: rawNoiseModel
        val sourceShot = frameNoiseModel.normalizedShotNoiseForShader(cfaPattern)
        val sourceRead = frameNoiseModel.normalizedReadNoiseForShader(cfaPattern)
        val shot = FloatArray(4)
        val read = FloatArray(4)
        val unblockerShot = FloatArray(4)
        val unblockerRead = FloatArray(4)
        for (channel in 0 until 4) {
            val relativeGain = calculationWhiteBalance[channel] * exposureScale
            val normalizedShot = sourceShot[channel]
            val normalizedRead = sourceRead[channel]
            shot[channel] = normalizedShot * relativeGain
            read[channel] = normalizedRead *
                relativeGain * relativeGain
            val sensorRange = max(sensorWhiteLevel - canonicalBlackLevel[channel], 1f)
            unblockerShot[channel] = normalizedShot * sensorRange
            unblockerRead[channel] = normalizedRead * sensorRange * sensorRange
        }
        val greenClip = 0.5f * (
            (sensorWhiteLevel * gains[1] + blackTerms[1]) +
                (sensorWhiteLevel * gains[2] + blackTerms[2])
            )
        return FrameCalibration(
            gains = gains,
            blackTerms = blackTerms,
            bayerPhaseGains = bayerPhaseGains,
            bayerPhaseBlackTerms = bayerPhaseBlackTerms,
            kernelSigma = SPATIAL_BAYER_KERNEL_SIGMA,
            shotNoise = shot,
            readNoise = read,
            greenClippingPoint = greenClip.takeIf { it.isFinite() && it > 0f } ?: Float.MAX_VALUE,
            alignmentGain = exposureScale,
            unblockerShotNoise = unblockerShot,
            unblockerReadNoise = unblockerRead,
        )
    }

    private fun buildGrayPyramid(
        rawTexture: Int,
        calibration: FrameCalibration,
    ): List<TextureLevel> {
        val levels = ArrayList<TextureLevel>()
        // Raw16ToGrayHalide's finest level is one sample per Bayer quad. Runtime
        // buffers on 4080x3064 are 2040x1532, 1021x767, 256x193 and 65x49.
        val finestWidth = ceilDiv(width, 2)
        val finestHeight = ceilDiv(height, 2)
        val firstTexture = createTexture(
            finestWidth,
            finestHeight,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(rawToGrayProgram)
        bindTexture(rawToGrayProgram, "uRaw", 0, rawTexture)
        uniform2i(rawToGrayProgram, "uRawSize", width, height)
        uniform2i(rawToGrayProgram, "uGraySize", finestWidth, finestHeight)
        uniform1i(rawToGrayProgram, "uCfaPattern", cfaPattern)
        uniform4fv(rawToGrayProgram, "uBlackLevels", canonicalBlackLevel)
        uniform1f(rawToGrayProgram, "uGain", calibration.alignmentGain)
        draw(rawToGrayProgram, finestWidth, finestHeight, intArrayOf(firstTexture))
        levels += TextureLevel(
            texture = firstTexture,
            width = finestWidth,
            height = finestHeight,
            scaleToBayerQuads = 1f,
        )

        var levelWidth = finestWidth
        var levelHeight = finestHeight
        var scaleToBayerQuads = 1
        for (step in ALIGN_PYRAMID_DOWNSAMPLE_STEPS) {
            check(step == 2 || step == 4)
            // GrayPyramidDownsample4x is a filtered reduction, not a stride-4 read through
            // the 2x kernel. Compose the recovered 2x 1:2:1 stage twice so the 4x levels
            // have the required low-pass support and cannot alias high-frequency texture
            // into a false coarse displacement.
            val passes = if (step == 4) 2 else 1
            var nextTexture = levels.last().texture
            var nextWidth = levelWidth
            var nextHeight = levelHeight
            repeat(passes) {
                scaleToBayerQuads *= 2
                // Every downsampled level carries the positive-side support sample used by
                // Halide's clamped interpolation. The finest level itself has no extra sample.
                nextWidth = ceilDiv(finestWidth, scaleToBayerQuads) + 1
                nextHeight = ceilDiv(finestHeight, scaleToBayerQuads) + 1
                val passTexture = createTexture(
                    nextWidth,
                    nextHeight,
                    GLES30.GL_R16UI,
                    GLES30.GL_NEAREST,
                )
                GLES30.glUseProgram(downsampleProgram)
                bindTexture(downsampleProgram, "uInput", 0, nextTexture)
                uniform2i(downsampleProgram, "uInputSize", levelWidth, levelHeight)
                draw(
                    downsampleProgram,
                    nextWidth,
                    nextHeight,
                    intArrayOf(passTexture),
                )
                nextTexture = passTexture
                levelWidth = nextWidth
                levelHeight = nextHeight
            }
            levels += TextureLevel(
                texture = nextTexture,
                width = nextWidth,
                height = nextHeight,
                scaleToBayerQuads = scaleToBayerQuads.toFloat(),
            )
        }
        return levels
    }

    /**
     * BuildAlignPyramidForBurst (0x3883e98), using the options captured at runtime from this
     * MGC build:
     *
     *   [target=256, minTile=8, maxTile=64, finestTile=-1,
     *    finestLkIterations=2, coarserLkIterations=3]
     *   normalizeFinest=false, normalizeCoarser=true, useL1Search=false
     *
     * Runtime Halide entry tracing gives the complete execution geometry for 4080x3064:
     *
     *   65x49 / tile 8 / grid 6x4 / normalize
     *   256x193 / tile 16 / grid 14x10 / normalize
     *   1021x767 / tile 32 / grid 30x22 / normalize
     *   2040x1532 / tile 32 / grid 62x46 / no normalization
     *
     * The first three levels use three LK iterations; the finest uses two. The standalone
     * AlignL1 search is absent, but UpsampleAlignment still selects among three neighboring
     * coarse-flow candidates using target-level L1 residuals before every finer LK level.
     */
    private fun alignPyramids(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
    ): Alignment {
        check(reference.size == current.size)
        check(reference.size == ALIGN_LEVEL_TILE_STRIDES.size)
        val coarseIndex = reference.lastIndex
        val coarse = reference[coarseIndex]
        var alignment = renderLucasKanadeLevel(
            reference = coarse,
            current = current[coarseIndex],
            initial = null,
            tileStride = ALIGN_LEVEL_TILE_STRIDES[coarseIndex],
            tileSize = ALIGN_LEVEL_TILE_STRIDES[coarseIndex],
            iterations = ALIGN_LK_ITERATIONS_COARSER,
            normalize = true,
        )

        val schedule = ArrayList<String>().apply {
            add(
                "${coarse.width}x${coarse.height}:" +
                    "${ALIGN_LEVEL_TILE_STRIDES[coarseIndex]}px," +
                    "LK${ALIGN_LK_ITERATIONS_COARSER},normalize=true"
            )
        }
        for (levelIndex in coarseIndex - 1 downTo 0) {
            val level = reference[levelIndex]
            val coarser = reference[levelIndex + 1]
            val tileSize = ALIGN_LEVEL_TILE_STRIDES[levelIndex]
            val scale =
                coarser.scaleToBayerQuads / level.scaleToBayerQuads
            val finest = levelIndex == 0
            val iterations = if (finest) {
                ALIGN_LK_ITERATIONS_FINEST
            } else {
                ALIGN_LK_ITERATIONS_COARSER
            }
            val normalize = !finest
            val upsampled = renderUpsampledAlignment(
                reference = level,
                current = current[levelIndex],
                initial = alignment,
                targetGridWidth = alignmentGridWidth(level, tileSize),
                targetGridHeight = alignmentGridHeight(level, tileSize),
                targetGridMin = ALIGN_LK_GRID_MIN,
                targetTileStride = tileSize,
                targetTileSize = tileSize,
            )
            alignment = renderLucasKanadeLevel(
                reference = level,
                current = current[levelIndex],
                initial = upsampled,
                tileStride = tileSize,
                tileSize = tileSize,
                iterations = iterations,
                normalize = normalize,
            )
            schedule +=
                "${level.width}x${level.height}:${tileSize}px," +
                "LK$iterations,normalize=$normalize," +
                "levelScale=$scale"
        }
        alignment = renderUpsampledAlignment(
            reference = reference.first(),
            current = current.first(),
            initial = alignment,
            targetGridWidth = bayerAlignmentWidth,
            targetGridHeight = bayerAlignmentHeight,
            targetGridMin = MERGE_ALIGNMENT_GRID_MIN,
            targetTileStride = MERGE_BAYER_RAW_TILE_SIZE / 2,
            targetTileSize = MERGE_BAYER_RAW_TILE_SIZE / 2,
        )
        PLog.i(
            TAG,
                "MGC AlignPyramid target=$ALIGN_TARGET_FINEST_DIMENSION " +
                "guide=${guideWidth}x$guideHeight final=" +
                "${reference.first().width}x${reference.first().height} " +
                "flowGrid=${alignment.gridWidth}x${alignment.gridHeight} " +
                "flowScale=${alignment.scaleToBayerQuads} useL1=false " +
                "upsampleL1=3-candidate median=false " +
                "runtimeOptions=256/8/64/-1/2/3/0/1/0 " +
                "schedule=${schedule.joinToString(" -> ")}",
        )
        return alignment
    }

    /**
     * UpsampleAlignmentI16Halide selects a whole coarse-flow candidate rather than blending
     * neighboring motion vectors. This preserves discontinuities at moving-object boundaries.
     *
     * The original runtime has both three- and four-candidate workers. The fourth input is an
     * external geometric candidate; this pipeline has no geometric alignment source, so it uses
     * the original three-candidate contract: nearest coarse tile plus the next-nearest tile on
     * each axis, selected by target-level block L1 residual.
     */
    private fun renderUpsampledAlignment(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment,
        targetGridWidth: Int,
        targetGridHeight: Int,
        targetGridMin: Int,
        targetTileStride: Int,
        targetTileSize: Int,
    ): Alignment {
        require(reference.width == current.width && reference.height == current.height)
        require(targetGridWidth > 0 && targetGridHeight > 0)
        require(targetTileStride > 0 && targetTileSize in 1..64)
        val initialScale =
            initial.scaleToBayerQuads / reference.scaleToBayerQuads
        require(initialScale.isFinite() && initialScale > 0f)
        val output = createTexture(
            targetGridWidth,
            targetGridHeight,
            GLES30.GL_RGBA32F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(upsampleAlignmentProgram)
        bindTexture(upsampleAlignmentProgram, "uReference", 0, reference.texture)
        bindTexture(upsampleAlignmentProgram, "uCurrent", 1, current.texture)
        bindTexture(upsampleAlignmentProgram, "uInitialAlignment", 2, initial.texture)
        uniform2i(
            upsampleAlignmentProgram,
            "uImageSize",
            reference.width,
            reference.height,
        )
        uniform2i(
            upsampleAlignmentProgram,
            "uInitialGridSize",
            initial.gridWidth,
            initial.gridHeight,
        )
        uniform1i(upsampleAlignmentProgram, "uInitialGridMin", initial.gridMin)
        uniform1i(upsampleAlignmentProgram, "uTargetGridMin", targetGridMin)
        uniform1i(upsampleAlignmentProgram, "uInitialTileStride", initial.tileStride)
        uniform1i(upsampleAlignmentProgram, "uTargetTileStride", targetTileStride)
        uniform1i(upsampleAlignmentProgram, "uTargetTileSize", targetTileSize)
        uniform1f(upsampleAlignmentProgram, "uInitialScale", initialScale)
        draw(
            upsampleAlignmentProgram,
            targetGridWidth,
            targetGridHeight,
            intArrayOf(output),
        )
        return Alignment(
            texture = output,
            gridWidth = targetGridWidth,
            gridHeight = targetGridHeight,
            tileStride = targetTileStride,
            scaleToBayerQuads = reference.scaleToBayerQuads,
            gridMin = targetGridMin,
        )
    }

    private fun renderLucasKanadeLevel(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment?,
        tileStride: Int,
        tileSize: Int,
        iterations: Int,
        normalize: Boolean,
    ): Alignment {
        check(iterations > 0)
        val gridWidth = alignmentGridWidth(reference, tileStride)
        val gridHeight = alignmentGridHeight(reference, tileStride)
        require(
            initial == null ||
                (
                    initial.gridWidth == gridWidth &&
                        initial.gridHeight == gridHeight &&
                        initial.tileStride == tileStride &&
                        initial.gridMin == ALIGN_LK_GRID_MIN &&
                        initial.scaleToBayerQuads == reference.scaleToBayerQuads
                )
        ) {
            "LK initial flow must already match the target grid"
        }
        val products0 = createTexture(
            gridWidth,
            gridHeight,
            GLES30.GL_RGBA32F,
            GLES30.GL_NEAREST,
        )
        val products1 = createTexture(
            gridWidth,
            gridHeight,
            GLES30.GL_R32F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(alignmentGradientProductsProgram)
        bindTexture(
            alignmentGradientProductsProgram,
            "uReference",
            0,
            reference.texture,
        )
        uniform2i(
            alignmentGradientProductsProgram,
            "uImageSize",
            reference.width,
            reference.height,
        )
        uniform1i(
            alignmentGradientProductsProgram,
            "uTileStride",
            tileStride,
        )
        uniform1i(alignmentGradientProductsProgram, "uTileSize", tileSize)
        uniform1i(
            alignmentGradientProductsProgram,
            "uNormalize",
            if (normalize) 1 else 0,
        )
        draw(
            alignmentGradientProductsProgram,
            gridWidth,
            gridHeight,
            intArrayOf(products0, products1),
        )

        var input = initial
        repeat(iterations) {
            val output = createTexture(
                gridWidth,
                gridHeight,
                GLES30.GL_RGBA32F,
                GLES30.GL_NEAREST,
            )
            GLES30.glUseProgram(blockLucasKanadeProgram)
            bindTexture(blockLucasKanadeProgram, "uReference", 0, reference.texture)
            bindTexture(blockLucasKanadeProgram, "uCurrent", 1, current.texture)
            bindTexture(blockLucasKanadeProgram, "uProducts0", 2, products0)
            bindTexture(blockLucasKanadeProgram, "uProducts1", 3, products1)
            val inputTexture = input?.texture ?: createZeroFlowTexture()
            bindTexture(
                blockLucasKanadeProgram,
                "uInitialAlignment",
                4,
                inputTexture,
            )
            uniform2i(
                blockLucasKanadeProgram,
                "uImageSize",
                reference.width,
                reference.height,
            )
            uniform2i(
                blockLucasKanadeProgram,
                "uGridSize",
                gridWidth,
                gridHeight,
            )
            uniform1i(blockLucasKanadeProgram, "uTileStride", tileStride)
            uniform1i(blockLucasKanadeProgram, "uTileSize", tileSize)
            uniform1i(
                blockLucasKanadeProgram,
                "uNormalize",
                if (normalize) 1 else 0,
            )
            uniform1i(
                blockLucasKanadeProgram,
                "uHasInitialAlignment",
                if (input != null) 1 else 0,
            )
            draw(
                blockLucasKanadeProgram,
                gridWidth,
                gridHeight,
                intArrayOf(output),
            )
            input = Alignment(
                texture = output,
                gridWidth = gridWidth,
                gridHeight = gridHeight,
                tileStride = tileStride,
                scaleToBayerQuads = reference.scaleToBayerQuads,
                gridMin = ALIGN_LK_GRID_MIN,
            )
        }
        return checkNotNull(input)
    }

    private fun renderAlignmentLevel(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment?,
        tileStride: Int,
        tileSize: Int,
        searchRadius: Int,
        initialScale: Float,
    ): Alignment {
        val gridWidth = ceilDiv(reference.width, tileStride)
        val gridHeight = ceilDiv(reference.height, tileStride)
        val output = createTexture(
            gridWidth,
            gridHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(alignProgram)
        bindTexture(alignProgram, "uReference", 0, reference.texture)
        bindTexture(alignProgram, "uCurrent", 1, current.texture)
        val initialTexture = initial?.texture ?: createZeroFlowTexture()
        bindTexture(
            alignProgram,
            "uInitialAlignment",
            2,
            initialTexture,
        )
        uniform2i(alignProgram, "uImageSize", reference.width, reference.height)
        uniform2i(alignProgram, "uGridSize", gridWidth, gridHeight)
        uniform2i(
            alignProgram,
            "uInitialGridSize",
            initial?.gridWidth ?: gridWidth,
            initial?.gridHeight ?: gridHeight,
        )
        uniform1i(alignProgram, "uTileStride", tileStride)
        uniform1i(alignProgram, "uTileSize", tileSize)
        uniform1i(alignProgram, "uSearchRadius", searchRadius)
        uniform1f(alignProgram, "uInitialScale", initialScale)
        uniform1i(alignProgram, "uHasInitialAlignment", if (initial != null) 1 else 0)
        draw(alignProgram, gridWidth, gridHeight, intArrayOf(output))
        return Alignment(
            texture = output,
            gridWidth = gridWidth,
            gridHeight = gridHeight,
            tileStride = tileStride,
            scaleToBayerQuads = reference.scaleToBayerQuads,
            gridMin = 0,
        )
    }

    private fun renderConvertedAlignment(alignment: Alignment, output: Int) {
        GLES30.glUseProgram(convertAlignmentProgram)
        bindTexture(convertAlignmentProgram, "uAlignment", 0, alignment.texture)
        uniform2i(
            convertAlignmentProgram,
            "uGridSize",
            alignment.gridWidth,
            alignment.gridHeight,
        )
        uniform2i(convertAlignmentProgram, "uOutputSize", guideWidth, guideHeight)
        uniform1f(
            convertAlignmentProgram,
            "uTileStride",
            alignment.tileStride * alignment.scaleToBayerQuads,
        )
        uniform1f(
            convertAlignmentProgram,
            "uAlignmentScale",
            alignment.scaleToBayerQuads,
        )
        uniform1f(convertAlignmentProgram, "uOutputToAlignmentScale", 2f)
        uniform1f(convertAlignmentProgram, "uGridMin", alignment.gridMin.toFloat())
        uniform2f(
            convertAlignmentProgram,
            "uFlowNormalizationSize",
            ceilDiv(width, 2).toFloat(),
            ceilDiv(height, 2).toFloat(),
        )
        draw(
            convertAlignmentProgram,
            guideWidth,
            guideHeight,
            intArrayOf(output),
        )
    }

    private fun renderBayerAlignment(alignment: Alignment, output: Int) {
        require(
            alignment.gridWidth == bayerAlignmentWidth &&
                alignment.gridHeight == bayerAlignmentHeight &&
                alignment.tileStride == MERGE_BAYER_RAW_TILE_SIZE / 2 &&
                alignment.scaleToBayerQuads == 1f &&
                alignment.gridMin == MERGE_ALIGNMENT_GRID_MIN
        ) {
            "MergeBayer requires the content-selected full-resolution alignment grid"
        }
        GLES30.glUseProgram(convertBayerAlignmentProgram)
        bindTexture(
            convertBayerAlignmentProgram,
            "uAlignment",
            0,
            alignment.texture,
        )
        uniform2i(
            convertBayerAlignmentProgram,
            "uGridSize",
            alignment.gridWidth,
            alignment.gridHeight,
        )
        uniform1f(
            convertBayerAlignmentProgram,
            "uAlignmentToBayerQuads",
            alignment.scaleToBayerQuads,
        )
        draw(
            convertBayerAlignmentProgram,
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            intArrayOf(output),
        )
    }

    private fun renderGuide(
        rawTexture: Int,
        noiseTexture: Int,
        calibration: FrameCalibration,
        guideTexture: Int,
        forceReferenceColorRgb: Float,
    ) {
        GLES30.glUseProgram(guideProgram)
        bindTexture(guideProgram, "uRaw", 0, rawTexture)
        bindTexture(guideProgram, "uNoiseEstimates", 1, noiseTexture)
        uniform2i(guideProgram, "uRawSize", width, height)
        uniform2i(guideProgram, "uGuideSize", guideWidth, guideHeight)
        uniform1i(guideProgram, "uCfaPattern", cfaPattern)
        uniform4fv(guideProgram, "uGains", calibration.gains)
        uniform4fv(
            guideProgram,
            "uBlackLevelsTimesGains",
            calibration.blackTerms,
        )
        uniform4f(guideProgram, "uNoiseTextureScaleBias", 0.9f, 0.5f, 0.05f, 0.25f)
        uniform1f(
            guideProgram,
            "uGreenClippingPoint",
            calibration.greenClippingPoint,
        )
        uniform1f(guideProgram, "uForceReferenceColorRgb", forceReferenceColorRgb)
        draw(
            guideProgram,
            guideWidth,
            guideHeight,
            intArrayOf(guideTexture),
        )
    }

    private fun renderUnblocker(
        rawTexture: Int,
        calibration: FrameCalibration,
        outputTexture: Int,
        outputWidth: Int,
        outputHeight: Int,
    ) {
        GLES30.glUseProgram(unblockerProgram)
        bindTexture(unblockerProgram, "uRaw", 0, rawTexture)
        uniform2i(unblockerProgram, "uRawSize", width, height)
        uniform2i(unblockerProgram, "uGridSize", outputWidth, outputHeight)
        uniform1i(unblockerProgram, "uCfaPattern", cfaPattern)
        uniform1f(
            unblockerProgram,
            "uBlackLevelGreen",
            0.5f * (canonicalBlackLevel[1] + canonicalBlackLevel[2]),
        )
        val greenShot = 0.25f * (
            calibration.unblockerShotNoise[1] + calibration.unblockerShotNoise[2]
            )
        val greenRead = 0.25f * (
            calibration.unblockerReadNoise[1] + calibration.unblockerReadNoise[2]
            )
        uniform1f(unblockerProgram, "uNoiseQuadratic", 0f)
        uniform1f(unblockerProgram, "uNoiseScale", greenShot)
        uniform1f(unblockerProgram, "uNoiseOffset", greenRead)
        uniform1f(unblockerProgram, "uOutputScale", UNBLOCKER_OUTPUT_SCALE)
        uniform1f(unblockerProgram, "uOutputOffset", UNBLOCKER_OUTPUT_OFFSET)
        draw(
            unblockerProgram,
            outputWidth,
            outputHeight,
            intArrayOf(outputTexture),
        )
    }

    private fun renderRejection(
        referenceGuide: Int,
        currentGuide: Int,
        flowTexture: Int,
        unblockerTexture: Int,
        noiseTexture: Int,
        reverseWeightTexture: Int,
        pixelDifferenceTexture: Int,
    ) {
        GLES30.glUseProgram(rejectionProgram)
        bindTexture(rejectionProgram, "uBaseGuide", 0, referenceGuide)
        bindTexture(rejectionProgram, "uAltGuide", 1, currentGuide)
        bindTexture(rejectionProgram, "uFlow", 2, flowTexture)
        bindTexture(rejectionProgram, "uUnblocker", 3, unblockerTexture)
        bindTexture(rejectionProgram, "uNoiseEstimates", 4, noiseTexture)
        uniform2i(rejectionProgram, "uGuideSize", guideWidth, guideHeight)
        uniform4f(rejectionProgram, "uFlowScaleOffset", 1f, 1f, 0f, 0f)
        uniform2f(rejectionProgram, "uUnblockerScale", 1f, 1f)
        uniform4f(
            rejectionProgram,
            "uNoiseTextureScaleBias",
            0.9f,
            0.5f,
            0.05f,
            0.25f,
        )
        uniform2f(rejectionProgram, "uColorDifferenceMultiplier", 0.07f, 0.35f)
        val diagnosticMode = RawStackRuntimeDebug.mgcSpatialDiagnosticMode
        val unblockerReductionThreshold =
            if (
                diagnosticMode == MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY ||
                diagnosticMode == MgcSpatialDiagnosticMode.DISABLE_UNBLOCKER
            ) {
                Float.MAX_VALUE
            } else {
                FLOW_VARIATION_THRESHOLD
            }
        val motionPriorThreshold =
            if (diagnosticMode == MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY) {
                Float.MAX_VALUE
            } else {
                FLOW_VARIATION_THRESHOLD
            }
        uniform1f(
            rejectionProgram,
            "uUnblockerReductionThreshold",
            unblockerReductionThreshold,
        )
        uniform1f(rejectionProgram, "uExtraMotionRobustnessBoost", 6f)
        uniform1f(
            rejectionProgram,
            "uMotionRobustnessBoostVarianceThreshold",
            25f,
        )
        uniform1f(
            rejectionProgram,
            "uExtraMotionRobustnessMotionThreshold",
            motionPriorThreshold,
        )
        draw(
            rejectionProgram,
            guideWidth,
            guideHeight,
            intArrayOf(reverseWeightTexture, pixelDifferenceTexture),
        )
    }

    private fun renderClippedGaussianPixelDifference(
        input: Int,
        horizontal: Int,
        output: Int,
    ) {
        GLES30.glUseProgram(clippedGaussianHorizontalProgram)
        bindTexture(clippedGaussianHorizontalProgram, "uInput", 0, input)
        uniform2i(
            clippedGaussianHorizontalProgram,
            "uSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniform1fv(
            clippedGaussianHorizontalProgram,
            "uKernel",
            pixelDifferenceKernel,
        )
        draw(
            clippedGaussianHorizontalProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(horizontal),
        )

        GLES30.glUseProgram(clippedGaussianVerticalProgram)
        bindTexture(clippedGaussianVerticalProgram, "uInput", 0, horizontal)
        uniform2i(
            clippedGaussianVerticalProgram,
            "uSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniform1fv(
            clippedGaussianVerticalProgram,
            "uKernel",
            pixelDifferenceKernel,
        )
        draw(
            clippedGaussianVerticalProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(output),
        )
    }

    private fun renderRejectionFilterDownsample(
        baseLuma: Int,
        rejection: Int,
        downsampledLuma: Int,
        downsampledRejection: Int,
    ) {
        GLES30.glUseProgram(rejectionFilterDownsampleProgram)
        bindTexture(rejectionFilterDownsampleProgram, "uBaseLuma", 0, baseLuma)
        bindTexture(rejectionFilterDownsampleProgram, "uRejection", 1, rejection)
        uniform2i(
            rejectionFilterDownsampleProgram,
            "uInputSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            rejectionFilterDownsampleProgram,
            rejectionFilterWidth,
            rejectionFilterHeight,
            intArrayOf(downsampledLuma, downsampledRejection),
        )
    }

    private fun renderFilteredRejection(
        downsampledLuma: Int,
        downsampledRejection: Int,
        output: Int,
    ) {
        GLES30.glUseProgram(rejectionFilterProgram)
        bindTexture(rejectionFilterProgram, "uLuma", 0, downsampledLuma)
        bindTexture(rejectionFilterProgram, "uRejection", 1, downsampledRejection)
        uniform2i(
            rejectionFilterProgram,
            "uSize",
            rejectionFilterWidth,
            rejectionFilterHeight,
        )
        uniform1i(rejectionFilterProgram, "uRadius", REJECTION_FILTER_MAX_RADIUS)
        uniform1f(
            rejectionFilterProgram,
            "uSigmaSpatial",
            REJECTION_FILTER_SPATIAL_SIGMA,
        )
        uniform1f(
            rejectionFilterProgram,
            "uColorSigma",
            REJECTION_FILTER_COLOR_SIGMA,
        )
        uniform1f(
            rejectionFilterProgram,
            "uColorSigmaBoost",
            REJECTION_FILTER_COLOR_SIGMA_BOOST,
        )
        uniform1i(rejectionFilterProgram, "uClipRejection", 1)
        draw(
            rejectionFilterProgram,
            rejectionFilterWidth,
            rejectionFilterHeight,
            intArrayOf(output),
        )
    }

    private fun renderRejectionPostprocess(
        originalRejection: Int,
        filteredRejection: Int,
        pixelDifference: Int,
        output: Int,
    ) {
        GLES30.glUseProgram(rejectionPostprocessProgram)
        bindTexture(
            rejectionPostprocessProgram,
            "uOriginalRejection",
            0,
            originalRejection,
        )
        bindTexture(
            rejectionPostprocessProgram,
            "uFilteredRejection",
            1,
            filteredRejection,
        )
        bindTexture(
            rejectionPostprocessProgram,
            "uPixelDifference",
            2,
            pixelDifference,
        )
        uniform2i(
            rejectionPostprocessProgram,
            "uSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniform1f(
            rejectionPostprocessProgram,
            "uPixelDifferenceThreshold",
            PIXEL_DIFFERENCE_THRESHOLD / 255f,
        )
        uniform1f(
            rejectionPostprocessProgram,
            "uClippedThreshold",
            REJECTION_CLIPPED_THRESHOLD / 255f,
        )
        draw(
            rejectionPostprocessProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(output),
        )
    }

    private fun renderDilation(reverseWeight: Int, outputWeight: Int) {
        GLES30.glUseProgram(dilationProgram)
        bindTexture(dilationProgram, "uRejection", 0, reverseWeight)
        uniform2i(
            dilationProgram,
            "uSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            dilationProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(outputWeight),
        )
    }

    private fun renderLinearKernelMask(
        rejection: Int,
        output: Int,
    ) {
        check(outputMode == MgcSpatialOutputMode.BAYER && linearKernelMaskProgram != 0) {
            "UpdateLinearKernelMask is only valid for MergeBayerRaw"
        }
        GLES30.glUseProgram(linearKernelMaskProgram)
        bindTexture(linearKernelMaskProgram, "uRejection", 0, rejection)
        uniform2i(
            linearKernelMaskProgram,
            "uSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            linearKernelMaskProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(output),
        )
    }

    private fun prepareTemporalFrame(
        index: Int,
        frame: RawStackFrame,
        image: SafeImage,
        referenceExposure: Double,
        referenceCalibration: FrameCalibration,
        referenceGuide: Int,
        referenceGrayPyramid: List<TextureLevel>,
        currentRaw: Int,
        currentGuide: Int,
    ): PreparedTemporalFrame {
        val transientTextureStart = textures.size
        val exposureScale = (
            referenceExposure / validExposureProduct(frame.exposureProduct)
            ).toFloat().coerceIn(MIN_EXPOSURE_SCALE, MAX_EXPOSURE_SCALE)
        if (frame.role == RawBurstFrameRole.SHADOW_LONG) {
            check(exposureScale < 1f) {
                "Tet ratio expected to normalize bracketed SHADOW_LONG frame and " +
                    "be < 1.0, got $exposureScale"
            }
        }
        val calibration = calibrationForFrame(frame, exposureScale)
        uploadRaw(image, currentRaw, "frame $index")
        val currentNoiseLut = createNoiseLut(referenceCalibration, calibration)
        renderGuide(
            rawTexture = currentRaw,
            noiseTexture = currentNoiseLut,
            calibration = calibration,
            guideTexture = currentGuide,
            forceReferenceColorRgb = 0f,
        )
        val currentGrayPyramid = buildGrayPyramid(
            rawTexture = currentRaw,
            calibration = calibration,
        )
        val alignment = alignPyramids(
            reference = referenceGrayPyramid,
            current = currentGrayPyramid,
        )
        val flow = createTexture(
            guideWidth,
            guideHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        renderConvertedAlignment(alignment, flow)
        val bayerAlignment = createTexture(
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        renderBayerAlignment(alignment, bayerAlignment)
        val unblockerWidth = ceilDiv(width, UNBLOCKER_FULLRES_TILE_SIZE * 2)
        val unblockerHeight = ceilDiv(height, UNBLOCKER_FULLRES_TILE_SIZE * 2)
        val unblocker = createTexture(
            unblockerWidth,
            unblockerHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        renderUnblocker(
            rawTexture = currentRaw,
            calibration = calibration,
            outputTexture = unblocker,
            outputWidth = unblockerWidth,
            outputHeight = unblockerHeight,
        )
        val reverseWeight = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        val pixelDifference = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val pixelDifferenceHorizontal = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R32F,
            GLES30.GL_NEAREST,
        )
        val smoothedPixelDifference = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val downsampledLuma = createTexture(
            rejectionFilterWidth,
            rejectionFilterHeight,
            GLES30.GL_R32F,
            GLES30.GL_NEAREST,
        )
        val downsampledRejection = createTexture(
            rejectionFilterWidth,
            rejectionFilterHeight,
            GLES30.GL_R32F,
            GLES30.GL_NEAREST,
        )
        val filteredRejection = createTexture(
            rejectionFilterWidth,
            rejectionFilterHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        val postprocessedRejection = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val frameWeight = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        renderRejection(
            referenceGuide = referenceGuide,
            currentGuide = currentGuide,
            flowTexture = flow,
            unblockerTexture = unblocker,
            noiseTexture = currentNoiseLut,
            reverseWeightTexture = reverseWeight,
            pixelDifferenceTexture = pixelDifference,
        )
        renderClippedGaussianPixelDifference(
            input = pixelDifference,
            horizontal = pixelDifferenceHorizontal,
            output = smoothedPixelDifference,
        )
        renderRejectionFilterDownsample(
            baseLuma = referenceGrayPyramid.first().texture,
            rejection = reverseWeight,
            downsampledLuma = downsampledLuma,
            downsampledRejection = downsampledRejection,
        )
        renderFilteredRejection(
            downsampledLuma = downsampledLuma,
            downsampledRejection = downsampledRejection,
            output = filteredRejection,
        )
        renderRejectionPostprocess(
            originalRejection = reverseWeight,
            filteredRejection = filteredRejection,
            pixelDifference = smoothedPixelDifference,
            output = postprocessedRejection,
        )
        renderDilation(postprocessedRejection, frameWeight)
        return PreparedTemporalFrame(
            transientTextureStart = transientTextureStart,
            calibration = calibration,
            flowTexture = flow,
            bayerAlignmentTexture = bayerAlignment,
            weightTexture = frameWeight,
        )
    }

    private fun renderBentoHighlightMask(
        baseFrame: Int,
        outputMask: Int,
    ) {
        GLES30.glUseProgram(bentoHighlightProgram)
        bindTexture(bentoHighlightProgram, "uBaseFrame", 0, baseFrame)
        uniform2i(bentoHighlightProgram, "uSize", guideWidth, guideHeight)
        uniform1f(
            bentoHighlightProgram,
            "uMaxRgbClippingThreshold",
            BENTO_MAX_RGB_CLIPPING / 255f,
        )
        draw(
            bentoHighlightProgram,
            guideWidth,
            guideHeight,
            intArrayOf(outputMask),
        )
    }

    private fun renderBentoAdjustedMask(
        baseFrame: Int,
        ultrashortFrame: Int,
        highlightMask: Int,
        flowTexture: Int,
        exposureRatio: Float,
        adjustedMask: Int,
        inpaintingMask: Int,
        ultrashortClippingMask: Int,
    ) {
        GLES30.glUseProgram(bentoAdjustProgram)
        bindTexture(bentoAdjustProgram, "uBaseFrame", 0, baseFrame)
        bindTexture(bentoAdjustProgram, "uUltrashortFrame", 1, ultrashortFrame)
        bindTexture(bentoAdjustProgram, "uHighlightMask", 2, highlightMask)
        bindTexture(bentoAdjustProgram, "uFlow", 3, flowTexture)
        uniform2i(bentoAdjustProgram, "uSize", guideWidth, guideHeight)
        uniform1f(bentoAdjustProgram, "uExposureRatio", exposureRatio)
        uniform1f(
            bentoAdjustProgram,
            "uMinNormalizedIntensityError",
            BENTO_MIN_NORMALIZED_INTENSITY_ERROR,
        )
        uniform1f(
            bentoAdjustProgram,
            "uMaxRgbClippingThreshold",
            BENTO_MAX_RGB_CLIPPING / 255f,
        )
        uniform1f(
            bentoAdjustProgram,
            "uMinRgbForInpainting",
            BENTO_MIN_RGB_FOR_INPAINTING / 255f,
        )
        draw(
            bentoAdjustProgram,
            guideWidth,
            guideHeight,
            intArrayOf(
                adjustedMask,
                inpaintingMask,
                ultrashortClippingMask,
            ),
        )
    }

    private fun renderBentoRewrittenWeight(
        existingWeight: Int,
        bentoMask: Int,
        outputWeight: Int,
        hasExistingWeight: Boolean,
    ) {
        GLES30.glUseProgram(bentoRewriteWeightProgram)
        bindTexture(bentoRewriteWeightProgram, "uExistingWeight", 0, existingWeight)
        bindTexture(bentoRewriteWeightProgram, "uBentoMask", 1, bentoMask)
        uniform2i(bentoRewriteWeightProgram, "uSize", rejectionWidth, rejectionHeight)
        uniform1i(
            bentoRewriteWeightProgram,
            "uHasExistingWeight",
            if (hasExistingWeight) 1 else 0,
        )
        draw(
            bentoRewriteWeightProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(outputWeight),
        )
    }

    private fun readR8Mask(
        texture: Int,
        label: String,
        maskWidth: Int = guideWidth,
        maskHeight: Int = guideHeight,
    ): ByteArray {
        val byteCount = maskWidth.toLong() * maskHeight.toLong()
        require(byteCount <= Int.MAX_VALUE) { "$label is too large: $byteCount" }
        val buffer = ByteBuffer.allocateDirect(byteCount.toInt())
        bindRenderTargets(intArrayOf(texture), label)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            maskWidth,
            maskHeight,
            GLES30.GL_RED,
            GLES30.GL_UNSIGNED_BYTE,
            buffer,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        buffer.rewind()
        return ByteArray(byteCount.toInt()).also { output -> buffer.get(output) }
    }

    private fun logLinearKernelMask(
        texture: Int,
        selectedFrameIndex: Int,
    ) {
        val binaryMask = readR8Mask(
            texture = texture,
            label = "MGC Bento linear kernel mask",
            maskWidth = rejectionWidth,
            maskHeight = rejectionHeight,
        )
        val activePixels = binaryMask.count { (it.toInt() and 0xff) != 0 }
        PLog.i(
            TAG,
            "MGC linear kernel mask size=${rejectionWidth}x$rejectionHeight " +
                "mode=bento-selected-slice selectedFrame=$selectedFrameIndex " +
                "rule=binary-3x3-nonuniform " +
                "active=$activePixels/${binaryMask.size}",
        )
    }

    private fun assessBentoMasks(
        baseHighlightMask: ByteArray,
        inpaintingMask: ByteArray,
        ultrashortClippingMask: ByteArray,
    ): BentoAssessment {
        // This closes the three fallback predicates whose masks/equations are present as
        // recoverable OpenCL in this APK. FindBlockTiles is a fourth, independent predicate; its
        // three OpenCL program bodies are supplied as an opaque runtime payload, so it must not be
        // replaced here with an invented edge detector.
        val expectedSize = guideWidth * guideHeight
        require(
            baseHighlightMask.size == expectedSize &&
                inpaintingMask.size == expectedSize &&
                ultrashortClippingMask.size == expectedSize,
        )
        var clippedPixels = 0
        var clippedByUltrashortPixels = 0
        for (index in 0 until expectedSize) {
            if ((baseHighlightMask[index].toInt() and 0xff) == 0) continue
            clippedPixels += 1
            if ((ultrashortClippingMask[index].toInt() and 0xff) != 0) {
                clippedByUltrashortPixels += 1
            }
        }
        val clippedRatio = clippedPixels.toFloat() / expectedSize.toFloat()
        val ultrashortOverlap = if (clippedPixels > 0) {
            clippedByUltrashortPixels.toFloat() / clippedPixels.toFloat()
        } else {
            0f
        }
        val largestInpaintingArea = largestEightConnectedComponentArea(inpaintingMask)
        val reason = when {
            clippedRatio <= BENTO_MIN_CLIPPED_PIXEL_RATIO ->
                "insufficient_clipped_pixels"
            largestInpaintingArea >= BENTO_MAX_INPAINTING_COMPONENT_AREA ->
                "large_hole_needing_inpainting"
            ultrashortOverlap > BENTO_MAX_ULTRASHORT_CLIPPING_OVERLAP ->
                "high_ultrashort_clipping_overlap"
            else -> "none"
        }
        return BentoAssessment(
            accepted = reason == "none",
            reason = reason,
            clippedPixelRatio = clippedRatio,
            largestInpaintingArea = largestInpaintingArea,
            ultrashortClippingOverlap = ultrashortOverlap,
        )
    }

    /**
     * Bento's two topology predicates call OpenCV connectedComponentsWithStats with
     * connectivity=8 and CV_32S, then scan the AREA stat while excluding the background label.
     */
    private fun largestEightConnectedComponentArea(mask: ByteArray): Int {
        val visited = ByteArray(mask.size)
        val queue = IntArray(mask.size)
        var largest = 0
        for (start in mask.indices) {
            if (visited[start].toInt() != 0 || (mask[start].toInt() and 0xff) == 0) continue
            var head = 0
            var tail = 0
            queue[tail++] = start
            visited[start] = 1
            var area = 0
            while (head < tail) {
                val index = queue[head++]
                area += 1
                val x = index % guideWidth
                val y = index / guideWidth
                val minX = max(0, x - 1)
                val maxX = kotlin.math.min(guideWidth - 1, x + 1)
                val minY = max(0, y - 1)
                val maxY = kotlin.math.min(guideHeight - 1, y + 1)
                for (neighborY in minY..maxY) {
                    for (neighborX in minX..maxX) {
                        val neighbor = neighborY * guideWidth + neighborX
                        if (
                            visited[neighbor].toInt() == 0 &&
                            (mask[neighbor].toInt() and 0xff) != 0
                        ) {
                            visited[neighbor] = 1
                            queue[tail++] = neighbor
                        }
                    }
                }
            }
            largest = max(largest, area)
        }
        return largest
    }

    private fun renderMerge(
        rawTexture: Int,
        bayerAlignmentTexture: Int,
        weightTexture: Int,
        linearKernelMaskTexture: Int,
        calibration: FrameCalibration,
        accumulatorColor: Int,
        useFrameWeight: Boolean,
    ) {
        renderBayerMerge(
            rawTexture = rawTexture,
            alignmentTexture = bayerAlignmentTexture,
            weightTexture = weightTexture,
            linearKernelMaskTexture = linearKernelMaskTexture,
            calibration = calibration,
            accumulator = accumulatorColor,
            useFrameWeight = useFrameWeight,
        )
    }

    private fun renderBayerMerge(
        rawTexture: Int,
        alignmentTexture: Int,
        weightTexture: Int,
        linearKernelMaskTexture: Int,
        calibration: FrameCalibration,
        accumulator: Int,
        useFrameWeight: Boolean,
    ) {
        mergePassWindow.beginPass(
            label = "merge Spatial Bayer frame",
            reads = longArrayOf(
                GlesGpuScheduler.textureResource(rawTexture),
                GlesGpuScheduler.textureResource(alignmentTexture),
                GlesGpuScheduler.textureResource(weightTexture),
                GlesGpuScheduler.textureResource(linearKernelMaskTexture),
            ),
            writes = longArrayOf(GlesGpuScheduler.textureResource(accumulator)),
        )
        try {
            GLES30.glUseProgram(mergeBayerProgram)
            bindTexture(mergeBayerProgram, "uRaw", 0, rawTexture)
            bindTexture(mergeBayerProgram, "uAlignment", 1, alignmentTexture)
            bindTexture(mergeBayerProgram, "uFrameWeight", 2, weightTexture)
            bindTexture(mergeBayerProgram, "uLinearKernelMask", 3, linearKernelMaskTexture)
            uniform2i(mergeBayerProgram, "uRawSize", width, height)
            uniform2i(
                mergeBayerProgram,
                "uRejectionSize",
                rejectionWidth,
                rejectionHeight,
            )
            uniform1i(mergeBayerProgram, "uCfaPattern", cfaPattern)
            uniform4fv(mergeBayerProgram, "uGains", calibration.bayerPhaseGains)
            uniform4fv(
                mergeBayerProgram,
                "uBlackLevelsTimesGains",
                calibration.bayerPhaseBlackTerms,
            )
            uniform1f(
                mergeBayerProgram,
                "uKernelSigma",
                calibration.kernelSigma,
            )
            uniform1i(
                mergeBayerProgram,
                "uUseFrameWeight",
                if (useFrameWeight) 1 else 0,
            )
            GLES30.glEnable(GLES30.GL_BLEND)
            try {
                GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
                GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
                draw(
                    mergeBayerProgram,
                    outputWidth,
                    outputHeight,
                    intArrayOf(accumulator),
                    preserveBlend = true,
                )
            } finally {
                GLES30.glDisable(GLES30.GL_BLEND)
            }
        } finally {
            mergePassWindow.endPass()
        }
    }

    private fun clearAccumulator(color: Int) {
        bindRenderTargets(intArrayOf(color), "clear accumulator")
        GLES30.glViewport(0, 0, outputWidth, outputHeight)
        GLES30.glClearBufferfv(
            GLES30.GL_COLOR,
            0,
            floatArrayOf(0f, 0f, 0f, 0f),
            0,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun createNoiseLut(
        reference: FrameCalibration,
        current: FrameCalibration,
    ): Int {
        val values = FloatArray(NOISE_LUT_WIDTH * 2 * 4)
        val rows = arrayOf(reference, current)
        for (row in rows.indices) {
            val calibration = rows[row]
            for (x in 0 until NOISE_LUT_WIDTH) {
                val luma = (x + 0.5f) / NOISE_LUT_WIDTH.toFloat()
                val offset = (row * NOISE_LUT_WIDTH + x) * 4
                values[offset] =
                    calibration.shotNoise[0] * luma + calibration.readNoise[0]
                values[offset + 1] = 0.25f * (
                    calibration.shotNoise[1] * luma + calibration.readNoise[1] +
                        calibration.shotNoise[2] * luma + calibration.readNoise[2]
                    )
                values[offset + 2] =
                    calibration.shotNoise[3] * luma + calibration.readNoise[3]
                values[offset + 3] = 0f
            }
        }
        return createFloatTexture(
            width = NOISE_LUT_WIDTH,
            height = 2,
            internalFormat = GLES30.GL_RGBA16F,
            format = GLES30.GL_RGBA,
            values = values,
            filter = GLES30.GL_LINEAR,
        )
    }

    private fun createZeroFlowTexture(): Int = createFloatTexture(
        width = 1,
        height = 1,
        internalFormat = GLES30.GL_RGBA16F,
        format = GLES30.GL_RGBA,
        values = floatArrayOf(0f, 0f, 0f, 0f),
        filter = GLES30.GL_NEAREST,
    )

    private fun createIdentityWeightTexture(): Int = createFloatTexture(
        width = 1,
        height = 1,
        internalFormat = GLES30.GL_R16F,
        format = GLES30.GL_RED,
        values = floatArrayOf(1f),
        filter = GLES30.GL_NEAREST,
    )

    private fun createZeroLinearKernelMaskTexture(): Int = createFloatTexture(
        width = 1,
        height = 1,
        internalFormat = GLES30.GL_R16F,
        format = GLES30.GL_RED,
        values = floatArrayOf(0f),
        filter = GLES30.GL_NEAREST,
    )

    private fun renderBayer16(accumulator: Int): Int {
        val bayer16 = createTexture(
            outputWidth,
            outputHeight,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(normalizeBayerProgram)
        bindTexture(normalizeBayerProgram, "uBayerAndWeight", 0, accumulator)
        uniform2i(normalizeBayerProgram, "uOutputSize", outputWidth, outputHeight)
        draw(normalizeBayerProgram, outputWidth, outputHeight, intArrayOf(bayer16))
        return bayer16
    }

    private fun readBayer16(bayer16: Int): ByteBuffer {
        val outputBytes = outputWidth.toLong() * outputHeight.toLong() * 2L
        val output = LargeDirectBuffer.allocate(
            outputBytes,
            "MGC Spatial fused Bayer16",
        )?.order(ByteOrder.nativeOrder()) ?: throw IllegalStateException(
            "Unable to allocate MGC Spatial Bayer16 output",
        )
        bindRenderTargets(intArrayOf(bayer16), "Bayer16 readback")
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            outputWidth,
            outputHeight,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            output,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial Bayer16 readback")
        output.rewind()
        return output
    }

    private fun uploadRaw(image: SafeImage, texture: Int, label: String) {
        val plane = image.planes.firstOrNull()
            ?: throw IllegalArgumentException("$label has no RAW plane")
        require(plane.pixelStride == RAW_BYTES_PER_PIXEL) {
            "$label RAW pixel stride=${plane.pixelStride}, expected 2"
        }
        require(plane.rowStride >= width * RAW_BYTES_PER_PIXEL) {
            "$label RAW row stride=${plane.rowStride} is smaller than width=$width"
        }
        require(plane.rowStride % RAW_BYTES_PER_PIXEL == 0) {
            "$label RAW row stride is not 16-bit aligned"
        }
        val buffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(
            GLES30.GL_UNPACK_ROW_LENGTH,
            plane.rowStride / RAW_BYTES_PER_PIXEL,
        )
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            width,
            height,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            buffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("upload $label")
    }

    private fun createTexture(
        textureWidth: Int,
        textureHeight: Int,
        internalFormat: Int,
        filter: Int,
    ): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "glGenTextures returned 0" }
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexStorage2D(
            GLES30.GL_TEXTURE_2D,
            1,
            internalFormat,
            textureWidth,
            textureHeight,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("create texture ${textureWidth}x$textureHeight")
        return texture
    }

    private fun createFloatTexture(
        width: Int,
        height: Int,
        internalFormat: Int,
        format: Int,
        values: FloatArray,
        filter: Int,
    ): Int {
        val buffer = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                rewind()
            }
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "glGenTextures returned 0" }
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            internalFormat,
            width,
            height,
            0,
            format,
            GLES30.GL_FLOAT,
            buffer,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("create float texture ${width}x$height")
        return texture
    }

    private fun createFramebuffer(): Int {
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        check(ids[0] != 0) { "glGenFramebuffers returned 0" }
        framebuffers += ids[0]
        return ids[0]
    }

    private fun releaseTexturesFrom(startIndex: Int) {
        if (startIndex >= textures.size) return
        val count = textures.size - startIndex
        val transientTextures = IntArray(count) { offset -> textures[startIndex + offset] }
        awaitMergeTextureUsers(
            label = "release Spatial transient textures",
            textures = transientTextures,
        )
        GLES30.glDeleteTextures(count, transientTextures, 0)
        repeat(count) { textures.removeAt(textures.lastIndex) }
    }

    private fun releaseTexturesFromExcept(
        startIndex: Int,
        retainedTextures: IntArray,
    ) {
        if (startIndex >= textures.size) return
        val retained = retainedTextures.toHashSet()
        val toDelete = textures.subList(startIndex, textures.size)
            .filterNot { it in retained }
            .toIntArray()
        if (toDelete.isNotEmpty()) {
            awaitMergeTextureUsers(
                label = "release Spatial transient textures except retained output",
                textures = toDelete,
            )
            GLES30.glDeleteTextures(toDelete.size, toDelete, 0)
        }
        for (index in textures.lastIndex downTo startIndex) {
            if (textures[index] !in retained) textures.removeAt(index)
        }
    }

    private fun awaitMergeTextureUsers(
        label: String,
        textures: IntArray,
    ) {
        if (textures.isEmpty()) return
        mergePassWindow.awaitResources(
            label = label,
            resources = LongArray(textures.size) { index ->
                GlesGpuScheduler.textureResource(textures[index])
            },
        )
    }

    private fun draw(
        program: Int,
        viewportWidth: Int,
        viewportHeight: Int,
        targets: IntArray,
        preserveBlend: Boolean = false,
    ) {
        bindRenderTargets(targets, "program $program")
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        if (!preserveBlend) GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("draw program $program")
    }

    private fun bindRenderTargets(targets: IntArray, label: String) {
        require(targets.isNotEmpty())
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        val attachments = IntArray(targets.size)
        for (index in targets.indices) {
            val attachment = GLES30.GL_COLOR_ATTACHMENT0 + index
            attachments[index] = attachment
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                attachment,
                GLES30.GL_TEXTURE_2D,
                targets[index],
                0,
            )
        }
        // A framebuffer retains attachments that are not explicitly replaced. Bento writes three
        // half-resolution masks, while the following SpatialMerge draw writes two full-resolution
        // accumulators. Leaving COLOR_ATTACHMENT2 attached makes the framebuffer dimensions the
        // intersection of both sizes on Adreno, clipping the merge to one quarter of the image.
        for (index in targets.size until renderTargetAttachmentCount) {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0 + index,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
        }
        renderTargetAttachmentCount = targets.size
        GLES30.glDrawBuffers(attachments.size, attachments, 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "$label framebuffer incomplete: 0x${status.toString(16)}"
        }
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(uniformLocation(program, name), unit)
    }

    private fun uniform1i(program: Int, name: String, value: Int) {
        GLES30.glUniform1i(uniformLocation(program, name), value)
    }

    private fun uniform1f(program: Int, name: String, value: Float) {
        GLES30.glUniform1f(uniformLocation(program, name), value)
    }

    private fun uniform1fv(program: Int, name: String, value: FloatArray) {
        GLES30.glUniform1fv(
            uniformLocation(program, name),
            value.size,
            value,
            0,
        )
    }

    private fun uniform2i(program: Int, name: String, x: Int, y: Int) {
        GLES30.glUniform2i(uniformLocation(program, name), x, y)
    }

    private fun uniform2f(program: Int, name: String, x: Float, y: Float) {
        GLES30.glUniform2f(uniformLocation(program, name), x, y)
    }

    private fun uniform3f(program: Int, name: String, x: Float, y: Float, z: Float) {
        GLES30.glUniform3f(uniformLocation(program, name), x, y, z)
    }

    private fun uniform4f(
        program: Int,
        name: String,
        x: Float,
        y: Float,
        z: Float,
        w: Float,
    ) {
        GLES30.glUniform4f(uniformLocation(program, name), x, y, z, w)
    }

    private fun uniform4fv(program: Int, name: String, value: FloatArray) {
        GLES30.glUniform4fv(uniformLocation(program, name), 1, value, 0)
    }

    private fun uniformLocation(program: Int, name: String): Int {
        val locations = uniformLocations.getOrPut(program) { HashMap() }
        return locations.getOrPut(name) { GLES30.glGetUniformLocation(program, name) }
    }

    private fun linkProgram(fragmentSource: String, name: String): Int {
        val vertexSource = GlesGraphicsShaderSources.fullscreenVertexFor(fragmentSource)
        val vertex = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource, "$name vertex")
        val fragment = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$name fragment")
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertex)
        GLES30.glAttachShader(program, fragment)
        GLES30.glLinkProgram(program)
        GLES30.glDeleteShader(vertex)
        GLES30.glDeleteShader(fragment)
        val status = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            throw IllegalStateException("$name link failed: $log")
        }
        programs += program
        return program
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val status = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            throw IllegalStateException("$name compile failed: $log")
        }
        return shader
    }

    private fun initEgl() {
        ownsEglContext = true
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "eglGetDisplay failed" }
        val version = IntArray(2)
        check(EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
            "eglInitialize failed: ${EGL14.eglGetError()}"
        }
        val config = chooseConfig(EGL_OPENGL_ES3_BIT_KHR)
            ?: chooseConfig(EGL14.EGL_OPENGL_ES2_BIT)
            ?: throw IllegalStateException("No EGL config for GLES3")
        eglContext = GlesGpuScheduler.createBackgroundContext(eglDisplay, config, TAG)
        check(eglContext != EGL14.EGL_NO_CONTEXT) {
            "eglCreateContext failed: ${EGL14.eglGetError()}"
        }
        eglSurface = EGL14.eglCreatePbufferSurface(
            eglDisplay,
            config,
            intArrayOf(
                EGL14.EGL_WIDTH,
                1,
                EGL14.EGL_HEIGHT,
                1,
                EGL14.EGL_NONE,
            ),
            0,
        )
        check(eglSurface != EGL14.EGL_NO_SURFACE) {
            "eglCreatePbufferSurface failed: ${EGL14.eglGetError()}"
        }
        check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            "eglMakeCurrent failed: ${EGL14.eglGetError()}"
        }
    }

    private fun attachCurrentEgl() {
        eglDisplay = EGL14.eglGetCurrentDisplay()
        eglContext = EGL14.eglGetCurrentContext()
        eglSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW)
        ownsEglContext = false
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "No current EGL display" }
        check(eglContext != EGL14.EGL_NO_CONTEXT) { "No current EGL context" }
        check(eglSurface != EGL14.EGL_NO_SURFACE) { "No current EGL draw surface" }
    }

    private fun chooseConfig(renderableType: Int): EGLConfig? {
        val attributes = intArrayOf(
            EGL14.EGL_RED_SIZE,
            8,
            EGL14.EGL_GREEN_SIZE,
            8,
            EGL14.EGL_BLUE_SIZE,
            8,
            EGL14.EGL_ALPHA_SIZE,
            8,
            EGL14.EGL_RENDERABLE_TYPE,
            renderableType,
            EGL14.EGL_SURFACE_TYPE,
            EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        val configurations = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        return if (
            EGL14.eglChooseConfig(
                eglDisplay,
                attributes,
                0,
                configurations,
                0,
                configurations.size,
                count,
                0,
            ) && count[0] > 0
        ) {
            configurations[0]
        } else {
            null
        }
    }

    private fun ensureGles3() {
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        check(version.contains("OpenGL ES 3.")) {
            "MGC Spatial merge requires GLES3, got: $version"
        }
        PLog.i(
            TAG,
            "MGC Spatial GL vendor=${GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()} " +
                "renderer=${GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()} version=$version",
        )
    }

    private fun applyRawRenderState() {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_DITHER)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glDisable(GLES30.GL_STENCIL_TEST)
        GLES30.glDisable(GLES30.GL_CULL_FACE)
    }

    private fun checkGlError(label: String) {
        var error = GLES30.glGetError()
        if (error == GLES30.GL_NO_ERROR) return
        val first = error
        while (error != GLES30.GL_NO_ERROR) {
            error = GLES30.glGetError()
        }
        throw IllegalStateException("$label GL error: 0x${first.toString(16)}")
    }

    private fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            mergePassWindow.drain("release MGC Spatial resources")
            if (programs.isNotEmpty()) {
                for (program in programs) GLES30.glDeleteProgram(program)
            }
            uniformLocations.clear()
            if (textures.isNotEmpty()) {
                GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
            }
            if (framebuffers.isNotEmpty()) {
                GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers.toIntArray(), 0)
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
        programs.clear()
        textures.clear()
        framebuffers.clear()
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        ownsEglContext = false
    }

    private fun canonicalChannelAtPhase(phase: Int): Int {
        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        return phaseToCanonical[phase.coerceIn(0, 3)]
    }

    private fun validExposureProduct(value: Double): Double =
        value.takeIf { it.isFinite() && it > 0.0 } ?: 1.0

    private fun ceilDiv(value: Int, divisor: Int): Int =
        ceil(value.toDouble() / divisor.toDouble()).toInt().coerceAtLeast(1)

    private fun alignmentGridExtent(
        nominalLevelExtent: Int,
        tileStride: Int,
    ): Int = max(1, ceilDiv(nominalLevelExtent, tileStride) - 2)

    private fun alignmentGridWidth(
        level: TextureLevel,
        tileStride: Int,
    ): Int = alignmentGridExtent(
        ceilDiv(ceilDiv(width, 2), level.scaleToBayerQuads.toInt()),
        tileStride,
    )

    private fun alignmentGridHeight(
        level: TextureLevel,
        tileStride: Int,
    ): Int = alignmentGridExtent(
        ceilDiv(ceilDiv(height, 2), level.scaleToBayerQuads.toInt()),
        tileStride,
    )

    private companion object {
        fun gaussianKernel(size: Int, sigma: Float): FloatArray {
            require(size > 0)
            require(sigma.isFinite() && sigma > 0f)
            val center = (size - 1) / 2
            val sigmaSquaredTimesTwo = 2.0 * sigma.toDouble() * sigma.toDouble()
            val values = DoubleArray(size) { index ->
                val distance = (index - center).toDouble()
                exp(-(distance * distance) / sigmaSquaredTimesTwo)
            }
            val sum = values.sum()
            return FloatArray(size) { index -> (values[index] / sum).toFloat() }
        }

        const val TAG = "GlesMgcRawSpatial"
        const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        const val RAW_BYTES_PER_PIXEL = 2
        const val NOISE_LUT_WIDTH = 10
        const val ALIGN_TARGET_FINEST_DIMENSION = 256
        const val ALIGN_MIN_TILE_SIZE = 8
        const val ALIGN_MAX_TILE_SIZE = 64
        const val ALIGN_LK_ITERATIONS_FINEST = 2
        const val ALIGN_LK_ITERATIONS_COARSER = 3
        const val ALIGN_LK_GRID_MIN = 1
        const val MERGE_ALIGNMENT_GRID_MIN = 0
        const val MERGE_BAYER_RAW_TILE_SIZE = 16
        val ALIGN_PYRAMID_DOWNSAMPLE_STEPS = intArrayOf(2, 4, 4)
        // Indexed from the finest one-sample-per-Bayer-quad level to the coarsest.
        val ALIGN_LEVEL_TILE_STRIDES = intArrayOf(32, 32, 16, 8)
        // Captured at UnblockerRaw10Halide entry on the original MGC full-resolution path.
        const val UNBLOCKER_FULLRES_TILE_SIZE = 8
        const val UNBLOCKER_OUTPUT_SCALE = 1f
        const val UNBLOCKER_OUTPUT_OFFSET = 0.45f
        const val MIN_EXPOSURE_SCALE = 1f / 64f
        const val MAX_EXPOSURE_SCALE = 64f
        const val MIN_WHITE_BALANCE_GAIN = 1e-3f
        const val MAX_WHITE_BALANCE_GAIN = 64f
        // kernel_sigmas is a per-frame scalar in MGC's MergeBayerRaw contract.
        // The non-bracketed Spatial schedule supplies the default value used by
        // the extracted merge and strength-map paths.
        const val SPATIAL_BAYER_KERNEL_SIGMA = 1f
        // Captured from the original MGC rejection program on the same full-resolution path.
        const val FLOW_VARIATION_THRESHOLD = 9.88235261e-5f

        // FilterRejectionMap runtime values read from the original MGC process. The
        // ClippedGaussian formula and tap center were independently verified against its AOT.
        const val PIXEL_DIFFERENCE_KERNEL_SIZE = 20
        const val PIXEL_DIFFERENCE_SMOOTH_SIGMA = 500f
        const val PIXEL_DIFFERENCE_THRESHOLD = 150f
        const val REJECTION_FILTER_DOWNSAMPLE = 4
        const val REJECTION_FILTER_COLOR_SIGMA = 0.00005f
        const val REJECTION_FILTER_SPATIAL_SIGMA = 4f
        const val REJECTION_FILTER_COLOR_SIGMA_BOOST = 500f
        const val REJECTION_FILTER_MAX_RADIUS = 3
        const val REJECTION_CLIPPED_THRESHOLD = 3f

        // Bento option instances recovered from libgcastartup.so.
        const val BENTO_MIN_NORMALIZED_INTENSITY_ERROR = 0.9f
        const val BENTO_MAX_RGB_CLIPPING = 250f
        const val BENTO_MIN_RGB_FOR_INPAINTING = 128f
        const val BENTO_MIN_CLIPPED_PIXEL_RATIO = 0.00039f
        const val BENTO_MAX_INPAINTING_COMPONENT_AREA = 80
        const val BENTO_MAX_ULTRASHORT_CLIPPING_OVERLAP = 0.62f

        // State block written by 0x3882c20 and consumed by guide/merge uniform helpers.
    }
}
