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
import kotlin.math.max

/**
 * Independent GLES port of MGC 9.6.080 V24's non-AI Spatial Bayer merge.
 *
 * The stage order, constants and shader equations come from this APK's libgcastartup.so. Public
 * HDR+ descriptions are deliberately not used to fill tuning values. MergeBayerRaw preserves the
 * CFA lattice and leaves lens shading to the downstream RAW pipeline. MergeRgbRaw returns linear
 * camera RGB and applies lens shading before crossing that layout boundary.
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
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    private val outputMode: MgcSpatialOutputMode,
    private val outputScale: Float,
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
) {
    private data class TextureLevel(
        val texture: Int,
        val width: Int,
        val height: Int,
    )

    private data class Alignment(
        val texture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
    )

    private data class FrameCalibration(
        val gains: FloatArray,
        val blackTerms: FloatArray,
        val bayerPhaseGains: FloatArray,
        val bayerPhaseBlackTerms: FloatArray,
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

    private val guideWidth = max(1, width / 2)
    private val guideHeight = max(1, height / 2)
    private val outputWidth = if (outputMode == MgcSpatialOutputMode.BAYER) {
        width
    } else {
        max(1, (width * outputScale).toInt())
    }
    private val outputHeight = if (outputMode == MgcSpatialOutputMode.BAYER) {
        height
    } else {
        max(1, (height * outputScale).toInt())
    }
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
    private val cameraDomainScale = floatArrayOf(
        1f / calculationWhiteBalance[0],
        1f,
        1f / calculationWhiteBalance[3],
    )

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var ownsEglContext = false

    private val textures = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()
    private val programs = ArrayList<Int>()
    private val uniformLocations = HashMap<Int, HashMap<String, Int>>()
    private var renderFbo = 0
    private var renderTargetAttachmentCount = 0

    private var guideProgram = 0
    private var rawToGrayProgram = 0
    private var downsampleProgram = 0
    private var alignProgram = 0
    private var medianProgram = 0
    private var convertAlignmentProgram = 0
    private var unblockerProgram = 0
    private var rejectionProgram = 0
    private var dilationProgram = 0
    private var bentoHighlightProgram = 0
    private var bentoAdjustProgram = 0
    private var bentoRewriteWeightProgram = 0
    private var mergeProgram = 0
    private var normalizeProgram = 0
    private var transferProgram = 0
    private var mergeBayerProgram = 0
    private var normalizeBayerProgram = 0

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        require(
            outputMode != MgcSpatialOutputMode.RGB ||
                !exportGpuLinearRgbSource ||
                useCurrentGlContext
        ) {
            "MGC Spatial GPU export requires the caller-owned current EGL context"
        }
        val images = frames.map { it.image }
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
        var exportedTexture = 0
        var returned = false
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles3()
            initPrograms()
            renderFbo = createFramebuffer()
            applyRawRenderState()

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
            val referenceCovariance = createTexture(
                guideWidth,
                guideHeight,
                GLES30.GL_RGB10_A2,
                GLES30.GL_LINEAR,
            )
            val currentCovariance = createTexture(
                guideWidth,
                guideHeight,
                GLES30.GL_RGB10_A2,
                GLES30.GL_LINEAR,
            )
            val zeroFlow = createZeroFlowTexture()
            val identityWeight = createIdentityWeightTexture()
            val lensShadingTexture = if (outputMode == MgcSpatialOutputMode.RGB) {
                createLensShadingTexture()
            } else {
                0
            }
            val accumulatorColor = createTexture(
                outputWidth,
                outputHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val accumulatorGb = createTexture(
                outputWidth,
                outputHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val linearRgb = if (outputMode == MgcSpatialOutputMode.RGB) {
                createTexture(
                    outputWidth,
                    outputHeight,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_LINEAR,
                )
            } else {
                0
            }

            val referenceExposure = validExposureProduct(frames.first().exposureProduct)
            val supportsEqualExposureDenoiseModel = frames.all { frame ->
                frame.role == RawBurstFrameRole.NORMAL &&
                    validExposureProduct(frame.exposureProduct) == referenceExposure
            }
            val mergeFactors = ArrayList<Float>(frames.size).apply { add(1f) }
            val referenceCalibration = calibrationForFrame(
                frame = frames.first(),
                exposureScale = 1f,
            )
            uploadRaw(images.first(), referenceRaw, "reference")
            val referenceNoiseLut = createNoiseLut(
                referenceCalibration,
                referenceCalibration,
            )
            renderGuide(
                rawTexture = referenceRaw,
                noiseTexture = referenceNoiseLut,
                calibration = referenceCalibration,
                guideTexture = referenceGuide,
                covarianceTexture = referenceCovariance,
                forceReferenceColorRgb = 0f,
            )
            val referenceGrayPyramid = buildGrayPyramid(
                rawTexture = referenceRaw,
                calibration = referenceCalibration,
            )

            var mergedFrames = 1
            var bentoAccepted = false
            val ultrashortIndex = frames.indexOfFirst { frame ->
                frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT
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
                        covarianceTexture = currentCovariance,
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
                    val unusedUnscaledCovariance = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_RGB10_A2,
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
                        covarianceTexture = unusedUnscaledCovariance,
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
                        val baseWeight = createTexture(
                            guideWidth,
                            guideHeight,
                            GLES30.GL_R8,
                            GLES30.GL_LINEAR,
                        )
                        renderBentoRewrittenWeight(
                            existingWeight = identityWeight,
                            bentoMask = checkNotNull(bentoMask),
                            outputWeight = baseWeight,
                            hasExistingWeight = false,
                        )
                        clearAccumulator(accumulatorColor, accumulatorGb)
                        renderMerge(
                            rawTexture = referenceRaw,
                            flowTexture = zeroFlow,
                            weightTexture = baseWeight,
                            covarianceTexture = referenceCovariance,
                            calibration = referenceCalibration,
                            accumulatorColor = accumulatorColor,
                            accumulatorGb = accumulatorGb,
                            useFrameWeight = true,
                        )
                        // MGC overwrites the ultrashort rejection map with the Bento mask.
                        renderMerge(
                            rawTexture = currentRaw,
                            flowTexture = flow,
                            weightTexture = checkNotNull(bentoMask),
                            covarianceTexture = currentCovariance,
                            calibration = normalizedCalibration,
                            accumulatorColor = accumulatorColor,
                            accumulatorGb = accumulatorGb,
                            useFrameWeight = true,
                        )
                        bentoAccepted = true
                        mergedFrames = 2
                    }
                    GlesGpuScheduler.yieldToUiRenderer()
                } finally {
                    releaseTexturesFrom(transientTextureStart)
                }
            }

            if (!bentoAccepted) {
                clearAccumulator(accumulatorColor, accumulatorGb)
                renderMerge(
                    rawTexture = referenceRaw,
                    flowTexture = zeroFlow,
                    weightTexture = identityWeight,
                    covarianceTexture = referenceCovariance,
                    calibration = referenceCalibration,
                    accumulatorColor = accumulatorColor,
                    accumulatorGb = accumulatorGb,
                    useFrameWeight = false,
                )
            }

            for (index in 1 until frames.size) {
                val frame = frames[index]
                if (frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT) continue
                val transientTextureStart = textures.size
                try {
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
                    uploadRaw(images[index], currentRaw, "frame $index")
                    val currentNoiseLut = createNoiseLut(referenceCalibration, calibration)
                    renderGuide(
                        rawTexture = currentRaw,
                        noiseTexture = currentNoiseLut,
                        calibration = calibration,
                        guideTexture = currentGuide,
                        covarianceTexture = currentCovariance,
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
                    val unblockerWidth = ceilDiv(guideWidth, UNBLOCKER_TILE_SIZE)
                    val unblockerHeight = ceilDiv(guideHeight, UNBLOCKER_TILE_SIZE)
                    // MGC's generated kernels write these masks as UInt8. R8's UNORM conversion
                    // is part of the algorithm: dilation intentionally relies on its [0, 1]
                    // saturation before the mask is sampled by the merge shader.
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
                        guideWidth,
                        guideHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    val frameWeight = createTexture(
                        guideWidth,
                        guideHeight,
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
                    )
                    renderDilation(reverseWeight, frameWeight)
                    val mergeWeight = if (bentoAccepted) {
                        createTexture(
                            guideWidth,
                            guideHeight,
                            GLES30.GL_R8,
                            GLES30.GL_LINEAR,
                        ).also { maskedWeight ->
                            renderBentoRewrittenWeight(
                                existingWeight = frameWeight,
                                bentoMask = checkNotNull(bentoMask),
                                outputWeight = maskedWeight,
                                hasExistingWeight = true,
                            )
                        }
                    } else {
                        frameWeight
                    }
                    renderMerge(
                        rawTexture = currentRaw,
                        flowTexture = flow,
                        weightTexture = mergeWeight,
                        covarianceTexture = currentCovariance,
                        calibration = calibration,
                        accumulatorColor = accumulatorColor,
                        accumulatorGb = accumulatorGb,
                        useFrameWeight = true,
                    )
                    mergeFactors += meanR8Mask(mergeWeight, "Spatial merge weight frame $index")
                    mergedFrames += 1
                    GlesGpuScheduler.yieldToUiRenderer()
                } finally {
                    releaseTexturesFrom(transientTextureStart)
                }
            }

            if (outputMode == MgcSpatialOutputMode.RGB) {
                renderNormalize(
                    accumulatorColor = accumulatorColor,
                    accumulatorGb = accumulatorGb,
                    lensShadingTexture = lensShadingTexture,
                    outputTexture = linearRgb,
                )
                checkGlError("MGC Spatial RGB merge")
                if (exportGpuLinearRgbSource) {
                    val linearRgb16 = renderLinearRgb16(linearRgb)
                    GLES30.glFlush()
                    textures.remove(linearRgb16)
                    exportedTexture = linearRgb16
                } else {
                    cpuOutput = readLinearRgb(linearRgb)
                }
            } else {
                val bayer16 = renderBayer16(accumulatorColor)
                cpuOutput = readBayer16(bayer16)
                checkGlError("MGC Spatial Bayer merge")
            }
            val denoiseModel = if (
                supportsEqualExposureDenoiseModel &&
                mergeFactors.size == mergedFrames
            ) {
                MgcSpatialDenoiseModel.fromEqualExposureMergeFactors(mergeFactors)
            } else {
                null
            }
            returned = true
            PLog.i(
                TAG,
                "MGC Spatial ${outputMode.name} merge complete frames=$mergedFrames " +
                    "output=${outputWidth}x$outputHeight " +
                    "lscApplied=${outputMode == MgcSpatialOutputMode.RGB && hasLensShading()} " +
                    "result=${when {
                        exportedTexture != 0 -> "RGBA16UI_GPU"
                        outputMode == MgcSpatialOutputMode.RGB -> "RGB16_CPU"
                        else -> "BAYER16_CPU"
                    }} " +
                    "denoiseNoiseModel=${denoiseModel?.let {
                        "average=${it.averageMergeFactor} effective=${it.effectiveMergeFactor} " +
                            "scale=${it.noiseScale}"
                    } ?: "unsupported-bracketed"}",
            )
            RawStackResult(
                fusedBayerBuffer = cpuOutput,
                width = outputWidth,
                height = outputHeight,
                isNormalizedSensorData = true,
                blackLevel = FloatArray(4),
                fusedBayerUsesNativeAllocator = cpuOutput != null,
                bufferLayout = if (outputMode == MgcSpatialOutputMode.RGB) {
                    RawStackBufferLayout.LINEAR_RGB
                } else {
                    RawStackBufferLayout.CFA
                },
                inputRowStepSamples = if (outputMode == MgcSpatialOutputMode.RGB) {
                    outputWidth * 3
                } else {
                    outputWidth
                },
                inputColStepSamples = if (outputMode == MgcSpatialOutputMode.RGB) 3 else 1,
                gpuLinearRgbSource = exportedTexture.takeIf { it != 0 }?.let { texture ->
                    GpuLinearRgbSource(
                        textureId = texture,
                        width = outputWidth,
                        height = outputHeight,
                    )
                },
                lensShadingCorrectionApplied =
                    outputMode == MgcSpatialOutputMode.RGB && hasLensShading(),
                mergedFrameCount = mergedFrames,
                mgcDenoiseCorrelation = denoiseModel?.correlation,
                mgcDenoiseNoiseScale = denoiseModel?.noiseScale,
            )
        } catch (error: Exception) {
            PLog.e(TAG, "MGC Spatial Bayer merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            if (!returned) {
                LargeDirectBuffer.free(cpuOutput)
                if (exportedTexture != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(exportedTexture), 0)
                }
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
        alignProgram = linkProgram(GlesMgcRawSpatialShaders.alignL1, "mgc_align_l1")
        medianProgram = linkProgram(
            GlesMgcRawSpatialShaders.medianAlignment,
            "mgc_alignment_median",
        )
        convertAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.convertAlignment,
            "mgc_convert_alignment",
        )
        unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_unblocker")
        rejectionProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejection,
            "mgc_spatial_rejection",
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
        if (outputMode == MgcSpatialOutputMode.RGB) {
            mergeProgram = linkProgram(GlesMgcRawSpatialShaders.merge, "mgc_spatial_rgb_merge")
            normalizeProgram = linkProgram(
                GlesMgcRawSpatialShaders.normalize,
                "mgc_spatial_rgb_normalize",
            )
            transferProgram = linkProgram(
                GlesMgcRawSpatialShaders.transferToRgb16,
                "mgc_spatial_rgb16",
            )
        } else {
            mergeBayerProgram = linkProgram(
                GlesMgcRawSpatialShaders.mergeBayer,
                "mgc_spatial_bayer_merge",
            )
            normalizeBayerProgram = linkProgram(
                GlesMgcRawSpatialShaders.normalizeBayer,
                "mgc_spatial_bayer16",
            )
        }
    }

    private fun calibrationForFrame(
        frame: RawStackFrame,
        exposureScale: Float,
    ): FrameCalibration {
        val gains = FloatArray(4)
        val blackTerms = FloatArray(4)
        for (channel in 0 until 4) {
            val range = max(sensorWhiteLevel - canonicalBlackLevel[channel], 1f)
            gains[channel] = calculationWhiteBalance[channel] * exposureScale / range
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

        val sourceShot = rawNoiseModel.normalizedShotNoiseForShader(cfaPattern)
        val sourceRead = rawNoiseModel.normalizedReadNoiseForShader(cfaPattern)
        val frameProfile = frame.channelNoiseProfile
        val shot = FloatArray(4)
        val read = FloatArray(4)
        val unblockerShot = FloatArray(4)
        val unblockerRead = FloatArray(4)
        for (channel in 0 until 4) {
            val profileChannel = canonicalChannelForPhase(channel)
            val profileShot = frameProfile
                ?.getOrNull(profileChannel * 2)
                ?.takeIf { it.isFinite() && it >= 0f }
            val profileRead = frameProfile
                ?.getOrNull(profileChannel * 2 + 1)
                ?.takeIf { it.isFinite() && it >= 0f }
            val relativeGain = calculationWhiteBalance[channel] * exposureScale
            val normalizedShot = profileShot ?: sourceShot[channel]
            val normalizedRead = profileRead ?: sourceRead[channel]
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
        val firstTexture = createTexture(
            guideWidth,
            guideHeight,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(rawToGrayProgram)
        bindTexture(rawToGrayProgram, "uRaw", 0, rawTexture)
        uniform2i(rawToGrayProgram, "uRawSize", width, height)
        uniform2i(rawToGrayProgram, "uGraySize", guideWidth, guideHeight)
        uniform1i(rawToGrayProgram, "uCfaPattern", cfaPattern)
        uniform4fv(rawToGrayProgram, "uBlackLevels", canonicalBlackLevel)
        uniform1f(rawToGrayProgram, "uGain", calibration.alignmentGain)
        draw(rawToGrayProgram, guideWidth, guideHeight, intArrayOf(firstTexture))
        levels += TextureLevel(firstTexture, guideWidth, guideHeight)

        var levelWidth = guideWidth
        var levelHeight = guideHeight
        while (max(levelWidth, levelHeight) > ALIGN_MAX_COARSE_DIMENSION) {
            val nextWidth = max(1, (levelWidth + 1) / 2)
            val nextHeight = max(1, (levelHeight + 1) / 2)
            val nextTexture = createTexture(
                nextWidth,
                nextHeight,
                GLES30.GL_R16UI,
                GLES30.GL_NEAREST,
            )
            GLES30.glUseProgram(downsampleProgram)
            bindTexture(downsampleProgram, "uInput", 0, levels.last().texture)
            uniform2i(downsampleProgram, "uInputSize", levelWidth, levelHeight)
            draw(downsampleProgram, nextWidth, nextHeight, intArrayOf(nextTexture))
            levels += TextureLevel(nextTexture, nextWidth, nextHeight)
            levelWidth = nextWidth
            levelHeight = nextHeight
        }
        return levels
    }

    /**
     * AlignPyramid configuration recovered at 0x3883e98:
     * 256/16/16/-1, initial L1 radius 0 then radius 1, finer stages radius 3
     * while two-times the current dimension is below full scale, otherwise radius 1.
     */
    private fun alignPyramids(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
    ): Alignment {
        check(reference.size == current.size)
        val coarseIndex = reference.lastIndex
        val coarse = reference[coarseIndex]
        var alignment = renderAlignmentLevel(
            reference = coarse,
            current = current[coarseIndex],
            initial = null,
            tileStride = ALIGN_INITIAL_TILE_STRIDE,
            tileSize = ALIGN_INITIAL_TILE_SIZE,
            searchRadius = 0,
            initialScale = 1f,
        )
        alignment = medianAlignment(alignment)
        alignment = renderAlignmentLevel(
            reference = coarse,
            current = current[coarseIndex],
            initial = alignment,
            tileStride = ALIGN_INITIAL_TILE_STRIDE,
            tileSize = ALIGN_INITIAL_TILE_SIZE,
            searchRadius = 1,
            initialScale = 1f,
        )
        alignment = medianAlignment(alignment)

        for (levelIndex in coarseIndex - 1 downTo 0) {
            val level = reference[levelIndex]
            val coarser = reference[levelIndex + 1]
            val scale = level.width.toFloat() / coarser.width.toFloat()
            val searchRadius = if (
                max(level.width, level.height) * 2 <
                max(guideWidth, guideHeight)
            ) {
                3
            } else {
                1
            }
            alignment = renderAlignmentLevel(
                reference = level,
                current = current[levelIndex],
                initial = alignment,
                tileStride = ALIGN_FINE_TILE_STRIDE,
                tileSize = ALIGN_FINE_TILE_SIZE,
                searchRadius = searchRadius,
                initialScale = scale,
            )
            alignment = medianAlignment(alignment)
        }

        // The runtime follows the pyramid with the regular -1 refinement. In AlignL1 this
        // suppresses the integer candidate loop while retaining the recovered sub-pixel fit.
        alignment = renderAlignmentLevel(
            reference = reference.first(),
            current = current.first(),
            initial = alignment,
            tileStride = alignment.tileStride,
            tileSize = ALIGN_FINE_TILE_SIZE,
            searchRadius = -1,
            initialScale = 1f,
        )
        return medianAlignment(alignment)
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
        return Alignment(output, gridWidth, gridHeight, tileStride)
    }

    private fun medianAlignment(input: Alignment): Alignment {
        val output = createTexture(
            input.gridWidth,
            input.gridHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(medianProgram)
        bindTexture(medianProgram, "uAlignment", 0, input.texture)
        uniform2i(medianProgram, "uGridSize", input.gridWidth, input.gridHeight)
        draw(
            medianProgram,
            input.gridWidth,
            input.gridHeight,
            intArrayOf(output),
        )
        return Alignment(output, input.gridWidth, input.gridHeight, input.tileStride)
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
            alignment.tileStride.toFloat(),
        )
        uniform1f(convertAlignmentProgram, "uAlignmentScale", 1f)
        draw(
            convertAlignmentProgram,
            guideWidth,
            guideHeight,
            intArrayOf(output),
        )
    }

    private fun renderGuide(
        rawTexture: Int,
        noiseTexture: Int,
        calibration: FrameCalibration,
        guideTexture: Int,
        covarianceTexture: Int,
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
        uniform4f(
            guideProgram,
            "uCovarianceParameters1",
            6f,
            1.3333333333333333f,
            0.001f,
            4f,
        )
        uniform4f(
            guideProgram,
            "uCovarianceParameters2",
            1f,
            142.85714285714286f,
            0f,
            0f,
        )
        uniform4f(
            guideProgram,
            "uCovRangeRgFactors",
            covariancePackOffset(COV_MIN_R, COV_MAX_R),
            covariancePackScale(COV_MIN_R, COV_MAX_R),
            covariancePackOffset(COV_MIN_G, COV_MAX_G),
            covariancePackScale(COV_MIN_G, COV_MAX_G),
        )
        uniform2f(
            guideProgram,
            "uCovRangeBFactor",
            covariancePackOffset(COV_MIN_B, COV_MAX_B),
            covariancePackScale(COV_MIN_B, COV_MAX_B),
        )
        uniform1f(guideProgram, "uForceReferenceColorRgb", forceReferenceColorRgb)
        draw(
            guideProgram,
            guideWidth,
            guideHeight,
            intArrayOf(guideTexture, covarianceTexture),
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
    ) {
        val pixelDifferenceTexture = createTexture(
            guideWidth,
            guideHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
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
        val flowThreshold = 2016f / height.toFloat() * 0.0001f
        uniform1f(
            rejectionProgram,
            "uUnblockerReductionThreshold",
            flowThreshold,
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
            flowThreshold,
        )
        draw(
            rejectionProgram,
            guideWidth,
            guideHeight,
            intArrayOf(reverseWeightTexture, pixelDifferenceTexture),
        )
    }

    private fun renderDilation(reverseWeight: Int, outputWeight: Int) {
        GLES30.glUseProgram(dilationProgram)
        bindTexture(dilationProgram, "uRejection", 0, reverseWeight)
        uniform2i(dilationProgram, "uSize", guideWidth, guideHeight)
        draw(
            dilationProgram,
            guideWidth,
            guideHeight,
            intArrayOf(outputWeight),
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
        uniform2i(bentoRewriteWeightProgram, "uSize", guideWidth, guideHeight)
        uniform1i(
            bentoRewriteWeightProgram,
            "uHasExistingWeight",
            if (hasExistingWeight) 1 else 0,
        )
        draw(
            bentoRewriteWeightProgram,
            guideWidth,
            guideHeight,
            intArrayOf(outputWeight),
        )
    }

    private fun readR8Mask(texture: Int, label: String): ByteArray {
        val byteCount = guideWidth.toLong() * guideHeight.toLong()
        require(byteCount <= Int.MAX_VALUE) { "$label is too large: $byteCount" }
        val buffer = ByteBuffer.allocateDirect(byteCount.toInt())
        bindRenderTargets(intArrayOf(texture), label)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            guideWidth,
            guideHeight,
            GLES30.GL_RED,
            GLES30.GL_UNSIGNED_BYTE,
            buffer,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        buffer.rewind()
        return ByteArray(byteCount.toInt()).also { output -> buffer.get(output) }
    }

    private fun meanR8Mask(texture: Int, label: String): Float {
        val mask = readR8Mask(texture, label)
        var sum = 0L
        mask.forEach { value -> sum += value.toInt() and 0xff }
        return (sum.toDouble() / 255.0 / mask.size.toDouble()).toFloat()
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
        flowTexture: Int,
        weightTexture: Int,
        covarianceTexture: Int,
        calibration: FrameCalibration,
        accumulatorColor: Int,
        accumulatorGb: Int,
        useFrameWeight: Boolean,
    ) {
        if (outputMode == MgcSpatialOutputMode.BAYER) {
            renderBayerMerge(
                rawTexture = rawTexture,
                flowTexture = flowTexture,
                weightTexture = weightTexture,
                covarianceTexture = covarianceTexture,
                calibration = calibration,
                accumulator = accumulatorColor,
                useFrameWeight = useFrameWeight,
            )
            return
        }
        GLES30.glUseProgram(mergeProgram)
        bindTexture(mergeProgram, "uRaw", 0, rawTexture)
        bindTexture(mergeProgram, "uFlow", 1, flowTexture)
        bindTexture(mergeProgram, "uFrameWeight", 2, weightTexture)
        bindTexture(mergeProgram, "uCovariance", 3, covarianceTexture)
        uniform2i(mergeProgram, "uRawSize", width, height)
        uniform2i(mergeProgram, "uOutputSize", outputWidth, outputHeight)
        uniform4f(mergeProgram, "uFlowScaleOffset", 1f, 1f, 0f, 0f)
        uniform4f(
            mergeProgram,
            "uCovRangeRg",
            COV_MIN_R,
            COV_MAX_R - COV_MIN_R,
            COV_MIN_G,
            COV_MAX_G - COV_MIN_G,
        )
        uniform2f(
            mergeProgram,
            "uCovRangeB",
            COV_MIN_B,
            COV_MAX_B - COV_MIN_B,
        )
        uniform1i(mergeProgram, "uCfaPattern", cfaPattern)
        uniform4fv(mergeProgram, "uGains", calibration.gains)
        uniform4fv(
            mergeProgram,
            "uBlackLevelsTimesGains",
            calibration.blackTerms,
        )
        uniform1i(mergeProgram, "uUseFrameWeight", if (useFrameWeight) 1 else 0)
        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        draw(
            mergeProgram,
            outputWidth,
            outputHeight,
            intArrayOf(accumulatorColor, accumulatorGb),
            preserveBlend = true,
        )
        GLES30.glDisable(GLES30.GL_BLEND)
    }

    private fun renderBayerMerge(
        rawTexture: Int,
        flowTexture: Int,
        weightTexture: Int,
        covarianceTexture: Int,
        calibration: FrameCalibration,
        accumulator: Int,
        useFrameWeight: Boolean,
    ) {
        GLES30.glUseProgram(mergeBayerProgram)
        bindTexture(mergeBayerProgram, "uRaw", 0, rawTexture)
        bindTexture(mergeBayerProgram, "uFlow", 1, flowTexture)
        bindTexture(mergeBayerProgram, "uFrameWeight", 2, weightTexture)
        bindTexture(mergeBayerProgram, "uCovariance", 3, covarianceTexture)
        uniform2i(mergeBayerProgram, "uRawSize", width, height)
        uniform4f(
            mergeBayerProgram,
            "uCovRangeRg",
            COV_MIN_R,
            COV_MAX_R - COV_MIN_R,
            COV_MIN_G,
            COV_MAX_G - COV_MIN_G,
        )
        uniform2f(
            mergeBayerProgram,
            "uCovRangeB",
            COV_MIN_B,
            COV_MAX_B - COV_MIN_B,
        )
        uniform4fv(mergeBayerProgram, "uGains", calibration.bayerPhaseGains)
        uniform4fv(
            mergeBayerProgram,
            "uBlackLevelsTimesGains",
            calibration.bayerPhaseBlackTerms,
        )
        uniform1i(
            mergeBayerProgram,
            "uUseFrameWeight",
            if (useFrameWeight) 1 else 0,
        )
        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        draw(
            mergeBayerProgram,
            outputWidth,
            outputHeight,
            intArrayOf(accumulator),
            preserveBlend = true,
        )
        GLES30.glDisable(GLES30.GL_BLEND)
    }

    private fun clearAccumulator(color: Int, gb: Int) {
        bindRenderTargets(intArrayOf(color, gb), "clear accumulator")
        GLES30.glViewport(0, 0, outputWidth, outputHeight)
        GLES30.glClearBufferfv(
            GLES30.GL_COLOR,
            0,
            floatArrayOf(0f, 0f, 0f, 0f),
            0,
        )
        GLES30.glClearBufferfv(
            GLES30.GL_COLOR,
            1,
            floatArrayOf(0f, 0f, 0f, 0f),
            0,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderNormalize(
        accumulatorColor: Int,
        accumulatorGb: Int,
        lensShadingTexture: Int,
        outputTexture: Int,
    ) {
        GLES30.glUseProgram(normalizeProgram)
        bindTexture(normalizeProgram, "uColorAndRWeight", 0, accumulatorColor)
        bindTexture(normalizeProgram, "uGbWeights", 1, accumulatorGb)
        bindTexture(normalizeProgram, "uLensShading", 2, lensShadingTexture)
        uniform1i(normalizeProgram, "uUseLensShading", if (hasLensShading()) 1 else 0)
        uniform2i(normalizeProgram, "uOutputSize", outputWidth, outputHeight)
        uniform3f(
            normalizeProgram,
            "uCameraDomainScale",
            cameraDomainScale[0],
            cameraDomainScale[1],
            cameraDomainScale[2],
        )
        draw(
            normalizeProgram,
            outputWidth,
            outputHeight,
            intArrayOf(outputTexture),
        )
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

    private fun createLensShadingTexture(): Int {
        val valid = hasLensShading()
        val textureWidth = if (valid) lensShadingWidth else 1
        val textureHeight = if (valid) lensShadingHeight else 1
        val values = FloatArray(textureWidth * textureHeight * 4) { 1f }
        if (valid) {
            val source = checkNotNull(lensShading)
            for (index in values.indices) {
                values[index] = source[index]
                    .takeIf { it.isFinite() && it > 0f } ?: 1f
            }
        }
        return createFloatTexture(
            width = textureWidth,
            height = textureHeight,
            internalFormat = GLES30.GL_RGBA16F,
            format = GLES30.GL_RGBA,
            values = values,
            filter = GLES30.GL_LINEAR,
        )
    }

    private fun hasLensShading(): Boolean = lensShading != null &&
        lensShadingWidth > 0 &&
        lensShadingHeight > 0 &&
        lensShading.size >= lensShadingWidth * lensShadingHeight * 4

    private fun readLinearRgb(linearRgb: Int): ByteBuffer {
        val rgba16 = renderLinearRgb16(linearRgb)

        val rgbaBytes = outputWidth.toLong() * outputHeight.toLong() * 8L
        require(rgbaBytes <= Int.MAX_VALUE) { "MGC Spatial readback is too large: $rgbaBytes" }
        val rgbaBuffer = ByteBuffer.allocateDirect(rgbaBytes.toInt())
            .order(ByteOrder.nativeOrder())
        bindRenderTargets(intArrayOf(rgba16), "RGB16 readback")
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            outputWidth,
            outputHeight,
            GLES30.GL_RGBA_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            rgbaBuffer,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial RGB16 readback")
        rgbaBuffer.rewind()

        val outputBytes = outputWidth.toLong() * outputHeight.toLong() * 6L
        val output = LargeDirectBuffer.allocate(
            outputBytes,
            "MGC Spatial fused linear RGB16",
        )?.order(ByteOrder.nativeOrder()) ?: throw IllegalStateException(
            "Unable to allocate MGC Spatial RGB16 output",
        )
        val source = rgbaBuffer.asShortBuffer()
        repeat(outputWidth * outputHeight) {
            output.putShort(source.get())
            output.putShort(source.get())
            output.putShort(source.get())
            source.get()
        }
        output.rewind()
        return output
    }

    /**
     * [GpuLinearRgbSource] is consumed as RGBA16UI by RawDemosaicProcessor and by deferred DNG
     * materialization. Keep the floating-point merge target private and cross that boundary only
     * through the same normalized RGB16 representation used by the CPU path.
     */
    private fun renderLinearRgb16(linearRgb: Int): Int {
        val rgba16 = createTexture(
            outputWidth,
            outputHeight,
            GLES30.GL_RGBA16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(transferProgram)
        bindTexture(transferProgram, "uLinearRgb", 0, linearRgb)
        uniform2i(transferProgram, "uOutputSize", outputWidth, outputHeight)
        draw(transferProgram, outputWidth, outputHeight, intArrayOf(rgba16))
        return rgba16
    }

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
        GLES30.glDeleteTextures(count, transientTextures, 0)
        repeat(count) { textures.removeAt(textures.lastIndex) }
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

    private fun canonicalChannelForPhase(canonicalChannel: Int): Int {
        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        return phaseToCanonical.indexOf(canonicalChannel).coerceAtLeast(0)
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

    private fun covariancePackScale(minimum: Float, maximum: Float): Float =
        1f / (maximum - minimum)

    private fun covariancePackOffset(minimum: Float, maximum: Float): Float =
        -minimum * covariancePackScale(minimum, maximum)

    private fun ceilDiv(value: Int, divisor: Int): Int =
        ceil(value.toDouble() / divisor.toDouble()).toInt().coerceAtLeast(1)

    private companion object {
        const val TAG = "GlesMgcRawSpatial"
        const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        const val RAW_BYTES_PER_PIXEL = 2
        const val NOISE_LUT_WIDTH = 10
        const val ALIGN_MAX_COARSE_DIMENSION = 256
        const val ALIGN_INITIAL_TILE_STRIDE = 16
        const val ALIGN_INITIAL_TILE_SIZE = 16
        const val ALIGN_FINE_TILE_STRIDE = 8
        const val ALIGN_FINE_TILE_SIZE = 8
        const val UNBLOCKER_TILE_SIZE = 16
        const val MIN_EXPOSURE_SCALE = 1f / 64f
        const val MAX_EXPOSURE_SCALE = 64f
        const val MIN_WHITE_BALANCE_GAIN = 1e-3f
        const val MAX_WHITE_BALANCE_GAIN = 64f

        // Bento option instances recovered from libgcastartup.so.
        const val BENTO_MIN_NORMALIZED_INTENSITY_ERROR = 0.9f
        const val BENTO_MAX_RGB_CLIPPING = 250f
        const val BENTO_MIN_RGB_FOR_INPAINTING = 128f
        const val BENTO_MIN_CLIPPED_PIXEL_RATIO = 0.00039f
        const val BENTO_MAX_INPAINTING_COMPONENT_AREA = 80
        const val BENTO_MAX_ULTRASHORT_CLIPPING_OVERLAP = 0.62f

        // State block written by 0x3882c20 and consumed by guide/merge uniform helpers.
        const val COV_MIN_R = 0.3671880066f
        const val COV_MAX_R = 24.8149185f
        const val COV_MIN_G = 0.3671880066f
        const val COV_MAX_G = 26.0516777f
        const val COV_MIN_B = -6.97557068f
        const val COV_MAX_B = 7.02652168f
    }
}
