package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.MgcSpatialStrengthMap
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.sqrt

/**
 * Independent GLES MGC Spatial RAW merge pipeline.
 *
 * The stage order, constants and shader equations come from this APK's libgcastartup.so. The
 * recovered MGC parameter-generation equations are cross-checked against Google's published
 * kernel units and SNR tuning range. The Bayer output preserves the CFA lattice. The RGB output
 * performs joint RAW-domain G/R-G/B-G reconstruction at the requested output scale while keeping
 * MGC alignment, rejection, Bento admission and propagated-noise postprocessing authoritative.
 */
internal class GlesMgcRawSpatialStacker(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    blackLevel: FloatArray,
    whiteLevel: Int,
    whiteBalanceGains: FloatArray,
    private val rawNoiseModel: RawNoiseModel,
    private val calibratedNoiseProfile: CalibratedRawNoiseProfile? = null,
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    private val outputMode: MgcSpatialOutputMode,
    outputScale: Float,
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
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
        val calibration: FrameCalibration,
        val flowTexture: Int,
        val bayerAlignmentTexture: Int,
        val weightTexture: Int,
    )

    private data class RgbMergeFrame(
        val image: SafeImage,
        val calibration: FrameCalibration,
        val alignmentTexture: Int,
        val alignmentWidth: Int,
        val alignmentHeight: Int,
        val weightTexture: Int,
        val covarianceTexture: Int,
        val flowBounds: MgcSpatialRgbFlowBounds,
        val useFrameWeight: Boolean,
    )

    private data class RgbTileFrameRegion(
        val frame: RgbMergeFrame,
        val sourceRegion: MgcSpatialRgbRect,
    )

    private data class RgbMergeOutput(
        val cpuBuffer: ByteBuffer?,
        val gpuTexture: Int,
    )

    private data class TextureSpec(
        val width: Int,
        val height: Int,
        val internalFormat: Int,
        val filter: Int,
    )

    /**
     * Scratch textures reused by consecutive temporal frames in one GLES command stream.
     *
     * A frame may need multiple textures with the same specification, so acquisition is based on
     * both the specification and per-frame usage rather than call order. Reuse does not require a
     * fence: uploads, draws and later overwrites are submitted to the same context in dependency
     * order.
     */
    private class SequentialScratchTextures {
        private data class Entry(
            val spec: TextureSpec,
            val texture: Int,
            var used: Boolean = false,
        )

        private val entries = ArrayList<Entry>()
        private var active = false

        fun begin() {
            check(!active) { "Temporal scratch frame is already active" }
            active = true
            entries.forEach { it.used = false }
        }

        fun acquire(spec: TextureSpec, allocate: () -> Int): Int {
            check(active) { "Temporal scratch texture requested outside an active frame" }
            entries.firstOrNull { !it.used && it.spec == spec }?.let { entry ->
                entry.used = true
                return entry.texture
            }
            return allocate().also { texture ->
                entries += Entry(spec = spec, texture = texture, used = true)
            }
        }

        fun end() {
            check(active) { "Temporal scratch frame was not active" }
            active = false
        }
    }

    private data class FrameCalibration(
        val gains: FloatArray,
        val blackTerms: FloatArray,
        val bayerPhaseGains: FloatArray,
        val bayerPhaseBlackTerms: FloatArray,
        val globalFrameWeight: Float,
        val kernelSigma: Float,
        val shotNoise: FloatArray,
        val readNoise: FloatArray,
        val greenClippingPoint: Float,
        val alignmentGain: Float,
        val unblockerShotNoise: FloatArray,
        val unblockerReadNoise: FloatArray,
        val cameraRgbShotNoise: FloatArray,
        val cameraRgbReadNoise: FloatArray,
    )

    private data class StrengthCapture(
        val alignmentWidth: Int,
        val alignmentHeight: Int,
        val frameCount: Int,
        val alignmentStorage: ByteBuffer,
        val rejectionStorage: ByteBuffer,
        val inputReadNoise: FloatArray,
        val inputShotNoise: FloatArray,
        val frameWeights: FloatArray,
        val kernelSigmas: FloatArray,
        val captured: BooleanArray,
    )

    private data class BayerKernelTuning(
        val referenceSignal: Float,
        val referenceNoiseVariance: Float,
        val referenceSnr: Float,
        val baseSpatialScale: Float,
    )

    private data class BentoAssessment(
        val accepted: Boolean,
        val reason: String,
        val clippedPixelRatio: Float,
        val largestInpaintingArea: Int,
        val ultrashortClippingOverlap: Float,
    )

    // GuideImage is quarter-resolution, but GenerateRejectionTexture runs once per Bayer quad.
    // MergeBayer consumes the half-sized result of DilateMask.
    private val guideWidth = max(1, width / 4)
    private val guideHeight = max(1, height / 4)
    // MergeBayerRaw16's queried AOT contract requests one alignment sample per 8x8
    // Bayer-quad tile, i.e. one sample per 16x16 sensor pixels.
    private val bayerAlignmentWidth = ceilDiv(width, MERGE_BAYER_RAW_TILE_SIZE)
    private val bayerAlignmentHeight = ceilDiv(height, MERGE_BAYER_RAW_TILE_SIZE)
    private val rejectionWidth = ceilDiv(width, 2)
    private val rejectionHeight = ceilDiv(height, 2)
    private val mergeWeightWidth = ceilDiv(rejectionWidth, 2)
    private val mergeWeightHeight = ceilDiv(rejectionHeight, 2)
    private val rejectionFilterWidth = ceilDiv(rejectionWidth, REJECTION_FILTER_DOWNSAMPLE)
    private val rejectionFilterHeight = ceilDiv(rejectionHeight, REJECTION_FILTER_DOWNSAMPLE)
    private val normalizedOutputScale = MultiFrameConfig.normalizeOutputScale(outputScale)
    private val outputWidth = if (outputMode == MgcSpatialOutputMode.RGB) {
        MultiFrameConfig.scaledRawOutputDimension(width, normalizedOutputScale)
    } else {
        width
    }
    private val outputHeight = if (outputMode == MgcSpatialOutputMode.RGB) {
        MultiFrameConfig.scaledRawOutputDimension(height, normalizedOutputScale)
    } else {
        height
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
    private val temporalScratchTextures = SequentialScratchTextures()
    private var activeSequentialScratchTextures: SequentialScratchTextures? = null
    private var renderFbo = 0
    private var renderTargetAttachmentCount = 0

    private var guideProgram = 0
    private var covarianceProgram = 0
    private var rawToGrayProgram = 0
    private var downsampleProgram = 0
    private var alignProgram = 0
    private var alignmentGradientProductsProgram = 0
    private var upsampleAlignmentProgram = 0
    private var blockLucasKanadeProgram = 0
    private var convertAlignmentProgram = 0
    private var convertBayerAlignmentProgram = 0
    private var strengthAlignmentProgram = 0
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
    private var mergeRgbProgram = 0
    private var normalizeBayerProgram = 0
    private var normalizeRgbProgram = 0
    private var packBayerFixed16Program = 0
    private val pixelDifferenceKernel = gaussianKernel(
        size = PIXEL_DIFFERENCE_KERNEL_SIZE,
        sigma = PIXEL_DIFFERENCE_SMOOTH_SIGMA,
    )

    /** Moves shader compile/link work to the camera-idle persistent EGL context. */
    internal fun prewarmCapturePipeline(
        frameCount: Int,
        includeBento: Boolean,
    ) {
        require(useCurrentGlContext) {
            "MGC Spatial capture prewarm requires the caller-owned current EGL context"
        }
        val startNs = System.nanoTime()
        try {
            attachCurrentEgl()
            ensureGles3()
            initPrograms(includeBentoAssessment = includeBento)
            if (includeBento) initBentoMergePrograms()
            renderFbo = createFramebuffer()
            applyRawRenderState()
            PLog.d(
                TAG,
                "MGC Spatial capture programs prewarmed size=${width}x$height " +
                    "frames=${frameCount.coerceAtLeast(1)} bento=$includeBento " +
                    "took=${(System.nanoTime() - startNs) / 1_000_000L}ms",
            )
        } finally {
            release()
        }
    }

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        val images = frames.map { it.image }
        require(
            outputMode != MgcSpatialOutputMode.RGB ||
                !exportGpuLinearRgbSource ||
                useCurrentGlContext
        ) {
            "MGC Spatial GPU RGB export requires the caller-owned current EGL context"
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
        val resolvedNoiseModels = frames.map(::resolveNoiseModelForFrame)
        if (resolvedNoiseModels.any { it.source == RawNoiseModelSource.UNAVAILABLE }) {
            PLog.e(
                TAG,
                "MGC Spatial requires four exact SENSOR_NOISE_PROFILE S/O pairs; " +
                    "neither the affected frame nor the base frame supplied them",
            )
            images.forEach { it.close() }
            return null
        }

        var cpuOutput: ByteBuffer? = null
        var returned = false
        var exportedBayerTexture = 0
        var exportedRgbTexture = 0
        var strengthCapture: StrengthCapture? = null
        val processStartNs = System.nanoTime()
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles3()
            val hasBentoCandidate = frames.any { frame ->
                frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT
            }
            val programInitStartNs = System.nanoTime()
            initPrograms(includeBentoAssessment = hasBentoCandidate)
            val programInitMs = (System.nanoTime() - programInitStartNs) / 1_000_000L
            renderFbo = createFramebuffer()
            applyRawRenderState()
            PLog.i(
                TAG,
                "MGC rejection domain=${rejectionWidth}x$rejectionHeight " +
                    "mergeWeight=${mergeWeightWidth}x$mergeWeightHeight " +
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
            val referenceCovariance = if (outputMode == MgcSpatialOutputMode.RGB) {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_RGB10_A2,
                    GLES30.GL_LINEAR,
                )
            } else {
                0
            }
            val currentCovariance = if (outputMode == MgcSpatialOutputMode.RGB) {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_RGB10_A2,
                    GLES30.GL_LINEAR,
                )
            } else {
                0
            }
            val zeroFlow = createZeroFlowTexture()
            val identityWeight = createIdentityWeightTexture()
            val zeroLinearKernelMask = createZeroLinearKernelMaskTexture()
            val accumulatorColor = createTexture(
                width,
                height,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val rgbMergeFrames = ArrayList<RgbMergeFrame>(frames.size)
            val referenceExposure = validExposureProduct(frames.first().exposureProduct)
            val bayerKernelTuning = createBayerKernelTuning(
                frame = frames.first(),
                image = images.first(),
            )
            val perFrameCamera2Profiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.CAMERA2_PER_FRAME
            }
            val baseFrameCamera2Profiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.CAMERA2_BASE_FRAME
            }
            val calibratedProfiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.GCAM_CALIBRATED
            }
            val profileSource = calibratedNoiseProfile?.let { profile ->
                profile.maxAnalogSensitivity?.let { maxAnalog ->
                    "gcam-c:${profile.id} profileMaxAnalog=$maxAnalog"
                } ?: "mgc-override:${profile.id} profileMaxAnalog=not-applicable"
            } ?: "Camera2 SENSOR_NOISE_PROFILE"
            PLog.i(
                TAG,
                "MGC Spatial noise profile source=$profileSource " +
                    "perFrame=$perFrameCamera2Profiles/${frames.size} " +
                    "baseFallback=$baseFrameCamera2Profiles/${frames.size} " +
                    "calibrated=$calibratedProfiles/${frames.size}",
            )
            calibratedNoiseProfile?.let { profile ->
                PLog.i(
                    TAG,
                    "MGC Spatial calibrated per-frame gain " +
                        "iso=${frames.map { it.sensitivityIso }} " +
                        "overallGain=${frames.map { profile.overallGainAt(it.sensitivityIso) }} " +
                        "digitalGain=${frames.map { profile.digitalGainAt(it.sensitivityIso) }}",
                )
            }
            val referenceCalibration = calibrationForFrame(
                frame = frames.first(),
                exposureScale = 1f,
                kernelTuning = bayerKernelTuning,
            )
            PLog.i(
                TAG,
                "MGC Spatial Bayer kernel referenceSnr=${bayerKernelTuning.referenceSnr} " +
                    "baseSpatialScale=${bayerKernelTuning.baseSpatialScale} " +
                    "referenceSigma=${referenceCalibration.kernelSigma}",
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
            if (outputMode == MgcSpatialOutputMode.RGB) {
                renderCovariance(
                    rawTexture = referenceRaw,
                    noiseTexture = referenceNoiseLut,
                    calibration = referenceCalibration,
                    outputTexture = referenceCovariance,
                )
            }
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
            var bentoRgbCovarianceTexture = 0
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
            val bentoRaw = currentRaw
            val bentoGuide = currentGuide
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
                        bayerKernelTuning,
                    )
                    uploadRaw(images[ultrashortIndex], bentoRaw, "ultrashort")
                    val normalizedNoiseLut = createNoiseLut(
                        referenceCalibration,
                        normalizedCalibration,
                    )
                    renderGuide(
                        rawTexture = bentoRaw,
                        noiseTexture = normalizedNoiseLut,
                        calibration = normalizedCalibration,
                        guideTexture = bentoGuide,
                        forceReferenceColorRgb = 0f,
                    )
                    if (outputMode == MgcSpatialOutputMode.RGB) {
                        renderCovariance(
                            rawTexture = bentoRaw,
                            noiseTexture = normalizedNoiseLut,
                            calibration = normalizedCalibration,
                            outputTexture = currentCovariance,
                        )
                        bentoRgbCovarianceTexture = copyPersistentTexture(
                            source = currentCovariance,
                            textureWidth = guideWidth,
                            textureHeight = guideHeight,
                            internalFormat = GLES30.GL_RGB10_A2,
                            filter = GLES30.GL_LINEAR,
                            label = "MGC Bento RGB covariance",
                        )
                    }
                    val ultrashortGrayPyramid = buildGrayPyramid(
                        rawTexture = bentoRaw,
                        calibration = normalizedCalibration,
                    )
                    val alignment = alignPyramids(
                        reference = referenceGrayPyramid,
                        current = ultrashortGrayPyramid,
                    )
                    val flow = createTexture(
                        rejectionWidth,
                        rejectionHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_LINEAR,
                    )
                    renderConvertedAlignment(alignment, flow)
                    val bayerAlignment = createTexture(
                        bayerAlignmentWidth,
                        bayerAlignmentHeight,
                        GLES30.GL_RGBA32F,
                        GLES30.GL_NEAREST,
                    )
                    renderBayerAlignment(alignment, bayerAlignment)

                    val unscaledCalibration = calibrationForFrame(
                        ultrashortFrame,
                        1f,
                        bayerKernelTuning,
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
                        rawTexture = bentoRaw,
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
                            retainedTextures = buildList {
                                add(bentoFlowTexture)
                                add(bentoBayerAlignmentTexture)
                                if (bentoRgbCovarianceTexture != 0) {
                                    add(bentoRgbCovarianceTexture)
                                }
                            }.toIntArray(),
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
                    initBentoMergePrograms()
                    val selectedLinearKernelMask = createTexture(
                        mergeWeightWidth,
                        mergeWeightHeight,
                        GLES30.GL_R8,
                        GLES30.GL_LINEAR,
                    )
                    // MGC slices its 3-D rejection buffer once at the accepted Bento ultrashort
                    // index, then calls UpdateLinearKernelMask once. Bento's adjusted mask is the
                    // complement of the selected merge weight; because the recovered AOT only
                    // tests 3x3 equality, that complement produces the identical binary mask.
                    renderLinearKernelMask(
                        rejection = checkNotNull(bentoMask),
                        output = selectedLinearKernelMask,
                    )
                    if (diagnosticMode != MgcSpatialDiagnosticMode.NONE) {
                        logLinearKernelMask(
                            texture = selectedLinearKernelMask,
                            selectedFrameIndex = ultrashortIndex,
                        )
                    }
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

            if (bentoAccepted) initBentoMergePrograms()
            val bentoBaseWeight = if (bentoAccepted) {
                createTexture(
                    mergeWeightWidth,
                    mergeWeightHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                ).also { output ->
                    renderBentoRewrittenWeight(
                        existingWeight = identityWeight,
                        bentoMask = checkNotNull(bentoMask),
                        outputWeight = output,
                        hasExistingWeight = false,
                    )
                }
            } else {
                0
            }
            val bentoShortWeight = if (bentoAccepted) {
                // Quantize Bento onto the exact MergeBayer/Spatial-noise mask domain. Since
                // bentoBaseWeight is (1 - mask), a second complement produces the selected
                // ultrashort slice with matching R8 quantization.
                createTexture(
                    mergeWeightWidth,
                    mergeWeightHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                ).also { output ->
                    renderBentoRewrittenWeight(
                        existingWeight = identityWeight,
                        bentoMask = bentoBaseWeight,
                        outputWeight = output,
                        hasExistingWeight = false,
                    )
                }
            } else {
                0
            }
            val temporalMergeCount = temporalFrameRange.count { index ->
                frames[index].role != RawBurstFrameRole.HIGHLIGHT_SHORT
            }
            val spatialNoiseFrameCount =
                1 + (if (bentoAccepted) 1 else 0) + temporalMergeCount
            if (MultiFrameConfig.ENABLE_MGC_SPATIAL_DEFAULT_DENOISE &&
                !referenceOnly &&
                spatialNoiseFrameCount > 1
            ) {
                strengthCapture = createStrengthCapture(spatialNoiseFrameCount)
            }
            var capturedFrameIndex = 0

            clearAccumulator(accumulatorColor)
            if (bentoAccepted) {
                renderMerge(
                    rawTexture = referenceRaw,
                    bayerAlignmentTexture = zeroFlow,
                    weightTexture = bentoBaseWeight,
                    linearKernelMaskTexture = linearKernelMask,
                    calibration = referenceCalibration,
                    accumulatorColor = accumulatorColor,
                    useFrameWeight = true,
                )
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    rgbMergeFrames += RgbMergeFrame(
                        image = images.first(),
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        alignmentWidth = 1,
                        alignmentHeight = 1,
                        weightTexture = bentoBaseWeight,
                        covarianceTexture = referenceCovariance,
                        flowBounds = MgcSpatialRgbFlowBounds.Zero,
                        useFrameWeight = true,
                    )
                }
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        flowTexture = zeroFlow,
                        weightTexture = bentoBaseWeight,
                        identityWeight = false,
                    )
                }
                // MGC overwrites the selected ultrashort rejection slice with the Bento mask.
                renderMerge(
                    rawTexture = bentoRaw,
                    bayerAlignmentTexture = bentoBayerAlignmentTexture,
                    weightTexture = bentoShortWeight,
                    linearKernelMaskTexture = linearKernelMask,
                    calibration = checkNotNull(bentoCalibration),
                    accumulatorColor = accumulatorColor,
                    useFrameWeight = true,
                )
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    check(bentoRgbCovarianceTexture != 0) {
                        "Accepted MGC Bento RGB frame has no covariance texture"
                    }
                    rgbMergeFrames += RgbMergeFrame(
                        image = images[ultrashortIndex],
                        calibration = checkNotNull(bentoCalibration),
                        alignmentTexture = bentoBayerAlignmentTexture,
                        alignmentWidth = bayerAlignmentWidth,
                        alignmentHeight = bayerAlignmentHeight,
                        weightTexture = bentoShortWeight,
                        covarianceTexture = bentoRgbCovarianceTexture,
                        flowBounds = readAlignmentBounds(
                            bentoBayerAlignmentTexture,
                            bayerAlignmentWidth,
                            bayerAlignmentHeight,
                            "MGC Bento RGB alignment",
                        ),
                        useFrameWeight = true,
                    )
                }
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = checkNotNull(bentoCalibration),
                        flowTexture = bentoFlowTexture,
                        weightTexture = bentoShortWeight,
                        identityWeight = false,
                    )
                }
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
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    rgbMergeFrames += RgbMergeFrame(
                        image = images.first(),
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        alignmentWidth = 1,
                        alignmentHeight = 1,
                        weightTexture = identityWeight,
                        covarianceTexture = referenceCovariance,
                        flowBounds = MgcSpatialRgbFlowBounds.Zero,
                        useFrameWeight = false,
                    )
                }
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        flowTexture = zeroFlow,
                        weightTexture = identityWeight,
                        identityWeight = true,
                    )
                }
            }

            for (index in temporalFrameRange) {
                val frame = frames[index]
                if (frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT) continue
                beginTemporalScratchFrame()
                try {
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
                        currentCovariance = currentCovariance,
                        kernelTuning = bayerKernelTuning,
                    )
                    val mergeWeight = when {
                        identityTemporalWeights -> identityWeight
                        bentoAccepted -> createTexture(
                            mergeWeightWidth,
                            mergeWeightHeight,
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
                    if (outputMode == MgcSpatialOutputMode.RGB) {
                        val retainedAlignment = copyPersistentTexture(
                            source = prepared.bayerAlignmentTexture,
                            textureWidth = bayerAlignmentWidth,
                            textureHeight = bayerAlignmentHeight,
                            internalFormat = GLES30.GL_RGBA32F,
                            filter = GLES30.GL_NEAREST,
                            label = "MGC RGB alignment frame $index",
                        )
                        val retainedWeight = if (mergeWeight == identityWeight) {
                            identityWeight
                        } else {
                            copyPersistentTexture(
                                source = mergeWeight,
                                textureWidth = mergeWeightWidth,
                                textureHeight = mergeWeightHeight,
                                internalFormat = GLES30.GL_R8,
                                filter = GLES30.GL_LINEAR,
                                label = "MGC RGB final weight frame $index",
                            )
                        }
                        val retainedCovariance = copyPersistentTexture(
                            source = currentCovariance,
                            textureWidth = guideWidth,
                            textureHeight = guideHeight,
                            internalFormat = GLES30.GL_RGB10_A2,
                            filter = GLES30.GL_LINEAR,
                            label = "MGC RGB covariance frame $index",
                        )
                        rgbMergeFrames += RgbMergeFrame(
                            image = images[index],
                            calibration = prepared.calibration,
                            alignmentTexture = retainedAlignment,
                            alignmentWidth = bayerAlignmentWidth,
                            alignmentHeight = bayerAlignmentHeight,
                            weightTexture = retainedWeight,
                            covarianceTexture = retainedCovariance,
                            flowBounds = readAlignmentBounds(
                                retainedAlignment,
                                bayerAlignmentWidth,
                                bayerAlignmentHeight,
                                "MGC RGB alignment frame $index",
                            ),
                            useFrameWeight = true,
                        )
                    }
                    strengthCapture?.let { capture ->
                        captureStrengthFrame(
                            capture = capture,
                            frameIndex = capturedFrameIndex++,
                            calibration = prepared.calibration,
                            flowTexture = prepared.flowTexture,
                            weightTexture = mergeWeight,
                            identityWeight = identityTemporalWeights,
                        )
                    }
                    mergedFrames += 1
                } finally {
                    endTemporalScratchFrame()
                }
            }

            val spatialNoiseModel = strengthCapture?.let { capture ->
                check(capturedFrameIndex == capture.frameCount) {
                    "MGC Spatial noise capture count=$capturedFrameIndex, " +
                        "expected=${capture.frameCount}"
                }
                val bayerFixed16 = renderBayerFixed16Planes(accumulatorColor)
                computeSpatialNoiseModel(
                    capture = capture,
                    fusedFixed16 = readSigned16Texture(
                        texture = bayerFixed16,
                        textureWidth = ceilDiv(width, 16) * 8,
                        textureHeight = ceilDiv(height, 16) * 8 * 4,
                        label = "MGC Spatial Bayer Fixed16 noise source",
                    ),
                )
            }
            val denoiseModel = if (spatialNoiseModel != null) {
                MgcSpatialDenoiseModel.fromBayerDiagnostics(
                    outputWeightsSumTotalDiag0 =
                        spatialNoiseModel.outputWeightsSumTotalDiag0,
                    outputWeightsSumTotalDiag1 =
                        spatialNoiseModel.outputWeightsSumTotalDiag1,
                )
            } else {
                null
            }
            if (MultiFrameConfig.ENABLE_MGC_SPATIAL_DEFAULT_DENOISE &&
                !referenceOnly &&
                mergedFrames > 1
            ) {
                checkNotNull(spatialNoiseModel) {
                    "MGC Spatial exact output noise coefficients were not produced"
                }
                checkNotNull(denoiseModel) {
                    "MGC Spatial correlation spectrum was not produced"
                }
            }
            if (spatialNoiseModel != null && denoiseModel != null) {
                PLog.i(
                    TAG,
                    "MGC Spatial denoise model captureFrames=${strengthCapture.frameCount} " +
                        "diag0=${spatialNoiseModel.outputWeightsSumTotalDiag0.contentToString()} " +
                        "diag1=${spatialNoiseModel.outputWeightsSumTotalDiag1.contentToString()} " +
                        "savannahRatio=${denoiseModel.diagnosticRatio} " +
                        "savannahTaps=[${denoiseModel.outerTap}," +
                        "${denoiseModel.centerTap},${denoiseModel.outerTap}] " +
                        "read=${spatialNoiseModel.outputReadNoise.contentToString()} " +
                        "shot=${spatialNoiseModel.outputShotNoise.contentToString()} " +
                        "strength=spatial-aot",
                )
            }
            val lensShadingCorrectionApplied: Boolean
            if (outputMode == MgcSpatialOutputMode.RGB) {
                check(rgbMergeFrames.size == mergedFrames) {
                    "MGC Spatial RGB admitted ${rgbMergeFrames.size} frames, " +
                        "but Bayer/noise merge admitted $mergedFrames"
                }
                val rgbOutput = renderRgbMerge(rgbMergeFrames)
                cpuOutput = rgbOutput.cpuBuffer
                exportedRgbTexture = rgbOutput.gpuTexture
                lensShadingCorrectionApplied = hasLensShading()
            } else {
                val bayer16 = renderBayer16(accumulatorColor)
                if (useCurrentGlContext && exportGpuLinearRgbSource) {
                    exportedBayerTexture = bayer16
                    check(textures.remove(bayer16)) {
                        "Exported Spatial Bayer texture is not owned by the stacker"
                    }
                } else {
                    cpuOutput = readBayer16(bayer16)
                }
                lensShadingCorrectionApplied = false
            }
            checkGlError("MGC Spatial ${outputMode.name} merge")
            returned = true
            val resultLabel = when {
                exportedRgbTexture != 0 -> "RGBA16UI_GPU"
                exportedBayerTexture != 0 -> "BAYER16_GPU"
                outputMode == MgcSpatialOutputMode.RGB -> "RGB16_CPU"
                else -> "BAYER16_CPU"
            }
            PLog.i(
                TAG,
                "MGC Spatial ${outputMode.name} merge complete frames=$mergedFrames " +
                    "output=${outputWidth}x$outputHeight " +
                    "lscApplied=$lensShadingCorrectionApplied result=$resultLabel " +
                    "programInit=${programInitMs}ms " +
                    "queueMode=${if (outputMode == MgcSpatialOutputMode.RGB) {
                        "raw-domain-tiled-joint-opponent"
                    } else {
                        "ordered-continuous"
                    }} " +
                    "total=${(System.nanoTime() - processStartNs) / 1_000_000L}ms",
            )
            val rgbOutput = outputMode == MgcSpatialOutputMode.RGB
            RawStackResult(
                fusedBayerBuffer = cpuOutput,
                width = outputWidth,
                height = outputHeight,
                isNormalizedSensorData = true,
                blackLevel = FloatArray(4),
                fusedBayerUsesNativeAllocator = cpuOutput != null,
                bufferLayout = if (rgbOutput) {
                    RawStackBufferLayout.LINEAR_RGB
                } else {
                    RawStackBufferLayout.CFA
                },
                inputRowStepSamples = outputWidth * if (rgbOutput) 3 else 1,
                inputColStepSamples = if (rgbOutput) 3 else 1,
                gpuLinearRgbSource = exportedRgbTexture.takeIf { it != 0 }?.let { textureId ->
                    GpuLinearRgbSource(
                        textureId = textureId,
                        width = outputWidth,
                        height = outputHeight,
                        samplesPerPixel = 4,
                        stackCompletionTimeline = null,
                    )
                },
                gpuBayerSource = exportedBayerTexture.takeIf { it != 0 }?.let { textureId ->
                    GpuBayerSource(
                        textureId = textureId,
                        width = outputWidth,
                        height = outputHeight,
                        stackCompletionTimeline = null,
                    )
                },
                lensShadingCorrectionApplied = lensShadingCorrectionApplied,
                mergedFrameCount = mergedFrames,
                mgcDenoiseCorrelation = denoiseModel?.correlation,
                mgcDenoiseReadNoise = spatialNoiseModel?.outputReadNoise,
                mgcDenoiseShotNoise = spatialNoiseModel?.outputShotNoise,
                mgcSpatialStrengthMap = spatialNoiseModel?.strengthMap?.let(
                    ::mapSpatialStrengthToOutputCoordinates,
                ),
                mgcSpatialReferenceOnlyDiagnostic = referenceOnly,
            )
        } catch (error: Exception) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            strengthCapture?.let(::releaseStrengthCapture)
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            if (!returned) {
                LargeDirectBuffer.free(cpuOutput)
                if (exportedBayerTexture != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(exportedBayerTexture), 0)
                }
                if (exportedRgbTexture != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(exportedRgbTexture), 0)
                }
            }
        }
    }

    private fun initPrograms(includeBentoAssessment: Boolean) {
        guideProgram = linkProgram(GlesMgcRawSpatialShaders.guide, "mgc_spatial_guide")
        if (outputMode == MgcSpatialOutputMode.RGB) {
            covarianceProgram = linkProgram(
                GlesMgcRawSpatialShaders.covariance,
                "mgc_spatial_rgb_covariance",
            )
        }
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
        strengthAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.strengthAlignment,
            "mgc_strength_alignment",
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
        if (includeBentoAssessment) {
            bentoHighlightProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoGenerateHighlightMask,
                "mgc_bento_highlight_mask",
            )
            bentoAdjustProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoAdjustHighlightMask,
                "mgc_bento_adjust_mask",
            )
        }
        mergeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.mergeBayer,
            "mgc_spatial_bayer_merge",
        )
        if (outputMode == MgcSpatialOutputMode.RGB) {
            mergeRgbProgram = linkProgram(
                GlesMgcRawSpatialShaders.mergeRgb,
                "mgc_spatial_rgb_merge",
            )
            normalizeRgbProgram = linkProgram(
                GlesMgcRawSpatialShaders.normalizeRgb16,
                "mgc_spatial_rgb16",
            )
        }
        normalizeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.normalizeBayer,
            "mgc_spatial_bayer16",
        )
        packBayerFixed16Program = linkProgram(
            GlesMgcRawSpatialShaders.packBayerFixed16,
            "mgc_spatial_bayer_fixed16",
        )
    }

    private fun initBentoMergePrograms() {
        if (bentoRewriteWeightProgram == 0) {
            bentoRewriteWeightProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoRewriteWeight,
                "mgc_bento_rewrite_weight",
            )
        }
        if (linearKernelMaskProgram == 0) {
            linearKernelMaskProgram = linkProgram(
                GlesMgcRawSpatialShaders.updateLinearKernelMask,
                "mgc_bento_linear_kernel_mask",
            )
        }
    }

    private fun calibrationForFrame(
        frame: RawStackFrame,
        exposureScale: Float,
        kernelTuning: BayerKernelTuning,
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

        val frameNoiseModel = noiseModelForFrame(frame)
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
        val cameraRgbShot = RawNoiseModel
            .bayerNoiseModelToRgb(sourceShot)
            .also { channels ->
                channels.indices.forEach { channel -> channels[channel] *= exposureScale }
            }
        val exposureScaleSquared = exposureScale * exposureScale
        val cameraRgbRead = RawNoiseModel
            .bayerNoiseModelToRgb(sourceRead)
            .also { channels ->
                channels.indices.forEach { channel ->
                    channels[channel] *= exposureScaleSquared
                }
            }
        val greenClip = 0.5f * (
            (sensorWhiteLevel * gains[1] + blackTerms[1]) +
                (sensorWhiteLevel * gains[2] + blackTerms[2])
            )
        val frameNoiseVariance = noiseVarianceAtSignal(
            signal = kernelTuning.referenceSignal,
            shotNoise = shot,
            readNoise = read,
        )
        val globalFrameWeight = if (
            kernelTuning.referenceNoiseVariance > MIN_NOISE_VARIANCE &&
            frameNoiseVariance > MIN_NOISE_VARIANCE
        ) {
            (kernelTuning.referenceNoiseVariance / frameNoiseVariance)
                .coerceIn(0f, SPATIAL_FRAME_WEIGHT_CAP)
        } else {
            1f
        }
        val frameKernelScale = spatialFrameWeightKernelScale(globalFrameWeight)
        val kernelSigma = 1f / (
            kernelTuning.baseSpatialScale * frameKernelScale
            ).coerceAtLeast(MIN_BAYER_KERNEL_SCALE)
        return FrameCalibration(
            gains = gains,
            blackTerms = blackTerms,
            bayerPhaseGains = bayerPhaseGains,
            bayerPhaseBlackTerms = bayerPhaseBlackTerms,
            globalFrameWeight = globalFrameWeight,
            kernelSigma = kernelSigma,
            shotNoise = shot,
            readNoise = read,
            greenClippingPoint = greenClip.takeIf { it.isFinite() && it > 0f } ?: Float.MAX_VALUE,
            alignmentGain = exposureScale,
            unblockerShotNoise = unblockerShot,
            unblockerReadNoise = unblockerRead,
            cameraRgbShotNoise = cameraRgbShot,
            cameraRgbReadNoise = cameraRgbRead,
        )
    }

    private fun createBayerKernelTuning(
        frame: RawStackFrame,
        image: SafeImage,
    ): BayerKernelTuning {
        val referenceSignal = estimateReferenceGreenSignal(image)
        val noiseModel = noiseModelForFrame(frame)
        val shotNoise = noiseModel.normalizedShotNoiseForShader(cfaPattern)
        val readNoise = noiseModel.normalizedReadNoiseForShader(cfaPattern)
        val referenceNoiseVariance = noiseVarianceAtSignal(
            signal = referenceSignal,
            shotNoise = shotNoise,
            readNoise = readNoise,
        )
        val referenceSnr = if (referenceNoiseVariance > MIN_NOISE_VARIANCE) {
            referenceSignal / sqrt(referenceNoiseVariance)
        } else {
            SPATIAL_KERNEL_SNR_HIGH
        }.takeIf { it.isFinite() }?.coerceAtLeast(0f) ?: SPATIAL_KERNEL_SNR_HIGH
        val snrPosition = (
            (referenceSnr - SPATIAL_KERNEL_SNR_LOW) /
                (SPATIAL_KERNEL_SNR_HIGH - SPATIAL_KERNEL_SNR_LOW)
            ).coerceIn(0f, 1f)
        val baseSpatialScale =
            SPATIAL_KERNEL_SCALE_LOW_SNR +
                snrPosition * (
                    SPATIAL_KERNEL_SCALE_HIGH_SNR -
                        SPATIAL_KERNEL_SCALE_LOW_SNR
                    )
        return BayerKernelTuning(
            referenceSignal = referenceSignal,
            referenceNoiseVariance = referenceNoiseVariance,
            referenceSnr = referenceSnr,
            baseSpatialScale = baseSpatialScale,
        )
    }

    private fun estimateReferenceGreenSignal(image: SafeImage): Float {
        val plane = image.planes.firstOrNull() ?: return 0f
        if (
            plane.pixelStride < RAW_BYTES_PER_PIXEL ||
            plane.rowStride < width * plane.pixelStride
        ) {
            return 0f
        }
        val buffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val bufferStart = buffer.position()
        val quadWidth = max(width / 2, 1)
        val quadHeight = max(height / 2, 1)
        val quadStepX = max(quadWidth / SPATIAL_KERNEL_SIGNAL_GRID_SIZE, 1)
        val quadStepY = max(quadHeight / SPATIAL_KERNEL_SIGNAL_GRID_SIZE, 1)
        val firstQuadX = minOf(quadStepX / 2, quadWidth - 1)
        val firstQuadY = minOf(quadStepY / 2, quadHeight - 1)
        var signalSum = 0.0
        var sampleCount = 0
        var quadY = firstQuadY
        while (quadY < quadHeight) {
            var quadX = firstQuadX
            while (quadX < quadWidth) {
                for (phase in 0 until 4) {
                    val channel = canonicalChannelAtPhase(phase)
                    if (channel != 1 && channel != 2) continue
                    val x = quadX * 2 + (phase and 1)
                    val y = quadY * 2 + (phase shr 1)
                    if (x >= width || y >= height) continue
                    val byteOffset =
                        bufferStart + y * plane.rowStride + x * plane.pixelStride
                    if (byteOffset < bufferStart || byteOffset + 1 >= buffer.limit()) continue
                    val rawValue = buffer.getShort(byteOffset).toInt() and 0xffff
                    val black = canonicalBlackLevel[channel]
                    val range = max(sensorWhiteLevel - black, 1f)
                    signalSum += ((rawValue - black) / range).coerceIn(0f, 1f)
                    sampleCount += 1
                }
                quadX += quadStepX
            }
            quadY += quadStepY
        }
        return if (sampleCount > 0) {
            (signalSum / sampleCount).toFloat()
        } else {
            0f
        }
    }

    private fun resolveNoiseModelForFrame(frame: RawStackFrame): ResolvedRawNoiseModel =
        RawNoiseModelResolver.resolve(
            calibratedProfile = calibratedNoiseProfile,
            sensitivity = frame.sensitivityIso,
            perFrameCamera2Profile = frame.channelNoiseProfile,
            baseFrameCamera2Model = rawNoiseModel,
        )

    private fun noiseModelForFrame(frame: RawStackFrame): RawNoiseModel =
        resolveNoiseModelForFrame(frame).model

    private fun noiseVarianceAtSignal(
        signal: Float,
        shotNoise: FloatArray,
        readNoise: FloatArray,
    ): Float {
        val greenShot = 0.5f * (
            shotNoise.getOrElse(1) { 0f } +
                shotNoise.getOrElse(2) { shotNoise.getOrElse(1) { 0f } }
            )
        val greenRead = 0.5f * (
            readNoise.getOrElse(1) { 0f } +
                readNoise.getOrElse(2) { readNoise.getOrElse(1) { 0f } }
            )
        return (greenShot * signal.coerceAtLeast(0f) + greenRead)
            .takeIf { it.isFinite() && it >= 0f } ?: 0f
    }

    private fun spatialFrameWeightKernelScale(frameWeight: Float): Float {
        if (frameWeight <= SPATIAL_FRAME_WEIGHT_CURVE_START) return 1f
        if (frameWeight >= SPATIAL_FRAME_WEIGHT_CURVE_END) {
            return SPATIAL_FRAME_WEIGHT_KERNEL_SCALE_END
        }
        val position = (
            (frameWeight - SPATIAL_FRAME_WEIGHT_CURVE_START) /
                (SPATIAL_FRAME_WEIGHT_CURVE_END - SPATIAL_FRAME_WEIGHT_CURVE_START)
            ).coerceIn(0f, 1f)
        return 1f + position * (SPATIAL_FRAME_WEIGHT_KERNEL_SCALE_END - 1f)
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
     * the original three-candidate contract: the nearest coarse tile by tile-center distance plus
     * the next-nearest tile on each axis, selected by target-level block L1 residual.
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
        uniform2i(
            convertAlignmentProgram,
            "uOutputSize",
            rejectionWidth,
            rejectionHeight,
        )
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
        uniform1f(convertAlignmentProgram, "uOutputToAlignmentScale", 1f)
        uniform1f(convertAlignmentProgram, "uGridMin", alignment.gridMin.toFloat())
        uniform1f(
            convertAlignmentProgram,
            "uInterpolationFlowTolerance",
            SPATIAL_INTERPOLATION_FLOW_TOLERANCE,
        )
        uniform2f(
            convertAlignmentProgram,
            "uFlowNormalizationSize",
            ceilDiv(width, 2).toFloat(),
            ceilDiv(height, 2).toFloat(),
        )
        draw(
            convertAlignmentProgram,
            rejectionWidth,
            rejectionHeight,
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

    private fun renderCovariance(
        rawTexture: Int,
        noiseTexture: Int,
        calibration: FrameCalibration,
        outputTexture: Int,
    ) {
        check(outputMode == MgcSpatialOutputMode.RGB && covarianceProgram != 0)
        GLES30.glUseProgram(covarianceProgram)
        bindTexture(covarianceProgram, "uRaw", 0, rawTexture)
        bindTexture(covarianceProgram, "uNoiseEstimates", 1, noiseTexture)
        uniform2i(covarianceProgram, "uRawSize", width, height)
        uniform1i(covarianceProgram, "uCfaPattern", cfaPattern)
        uniform4fv(covarianceProgram, "uGains", calibration.gains)
        uniform4fv(
            covarianceProgram,
            "uBlackLevelsTimesGains",
            calibration.blackTerms,
        )
        uniform4f(covarianceProgram, "uNoiseTextureScaleBias", 0.9f, 0.5f, 0.05f, 0.25f)
        uniform4f(
            covarianceProgram,
            "uCovarianceParameters1",
            6f,
            1.3333333333333333f,
            0.001f,
            4f,
        )
        uniform4f(
            covarianceProgram,
            "uCovarianceParameters2",
            1f,
            142.85714285714286f,
            0f,
            0f,
        )
        uniform4f(
            covarianceProgram,
            "uCovRangeRgFactors",
            covariancePackOffset(COV_MIN_R, COV_MAX_R),
            covariancePackScale(COV_MIN_R, COV_MAX_R),
            covariancePackOffset(COV_MIN_G, COV_MAX_G),
            covariancePackScale(COV_MIN_G, COV_MAX_G),
        )
        uniform2f(
            covarianceProgram,
            "uCovRangeBFactor",
            covariancePackOffset(COV_MIN_B, COV_MAX_B),
            covariancePackScale(COV_MIN_B, COV_MAX_B),
        )
        draw(
            covarianceProgram,
            guideWidth,
            guideHeight,
            intArrayOf(outputTexture),
        )
    }

    private fun covariancePackOffset(minimum: Float, maximum: Float): Float =
        -minimum / (maximum - minimum)

    private fun covariancePackScale(minimum: Float, maximum: Float): Float =
        1f / (maximum - minimum)

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
        uniform2i(
            rejectionProgram,
            "uRejectionSize",
            rejectionWidth,
            rejectionHeight,
        )
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
            rejectionWidth,
            rejectionHeight,
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
            "uInputSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            dilationProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(outputWeight),
        )
    }

    private fun renderLinearKernelMask(
        rejection: Int,
        output: Int,
    ) {
        check(linearKernelMaskProgram != 0) {
            "UpdateLinearKernelMask program is not initialized"
        }
        GLES30.glUseProgram(linearKernelMaskProgram)
        bindTexture(linearKernelMaskProgram, "uRejection", 0, rejection)
        uniform2i(
            linearKernelMaskProgram,
            "uSize",
            mergeWeightWidth,
            mergeWeightHeight,
        )
        draw(
            linearKernelMaskProgram,
            mergeWeightWidth,
            mergeWeightHeight,
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
        currentCovariance: Int,
        kernelTuning: BayerKernelTuning,
    ): PreparedTemporalFrame {
        val exposureScale = (
            referenceExposure / validExposureProduct(frame.exposureProduct)
            ).toFloat().coerceIn(MIN_EXPOSURE_SCALE, MAX_EXPOSURE_SCALE)
        if (frame.role == RawBurstFrameRole.SHADOW_LONG) {
            check(exposureScale < 1f) {
                "Tet ratio expected to normalize bracketed SHADOW_LONG frame and " +
                    "be < 1.0, got $exposureScale"
            }
        }
        val calibration = calibrationForFrame(
            frame = frame,
            exposureScale = exposureScale,
            kernelTuning = kernelTuning,
        )
        uploadRaw(image, currentRaw, "frame $index")
        val currentNoiseLut = createNoiseLut(referenceCalibration, calibration)
        renderGuide(
            rawTexture = currentRaw,
            noiseTexture = currentNoiseLut,
            calibration = calibration,
            guideTexture = currentGuide,
            forceReferenceColorRgb = 0f,
        )
        if (outputMode == MgcSpatialOutputMode.RGB) {
            renderCovariance(
                rawTexture = currentRaw,
                noiseTexture = currentNoiseLut,
                calibration = calibration,
                outputTexture = currentCovariance,
            )
        }
        val currentGrayPyramid = buildGrayPyramid(
            rawTexture = currentRaw,
            calibration = calibration,
        )
        val alignment = alignPyramids(
            reference = referenceGrayPyramid,
            current = currentGrayPyramid,
        )
        val flow = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        renderConvertedAlignment(alignment, flow)
        val bayerAlignment = createTexture(
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            GLES30.GL_RGBA32F,
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
            GLES30.GL_LINEAR,
        )
        val frameWeight = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
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
        uniform2i(
            bentoRewriteWeightProgram,
            "uSize",
            mergeWeightWidth,
            mergeWeightHeight,
        )
        uniform1i(
            bentoRewriteWeightProgram,
            "uHasExistingWeight",
            if (hasExistingWeight) 1 else 0,
        )
        draw(
            bentoRewriteWeightProgram,
            mergeWeightWidth,
            mergeWeightHeight,
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
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
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

    private fun createStrengthCapture(frameCount: Int): StrengthCapture {
        val alignmentWidth = ceilDiv(width, 8)
        val alignmentHeight = ceilDiv(height, 8)
        val alignmentValues =
            alignmentWidth.toLong() * alignmentHeight.toLong() * frameCount * 2L
        val rejectionValues =
            mergeWeightWidth.toLong() * mergeWeightHeight.toLong() * frameCount
        require(frameCount > 1)
        require(alignmentValues * Float.SIZE_BYTES <= Int.MAX_VALUE)
        require(rejectionValues <= Int.MAX_VALUE)
        val alignmentStorage = LargeDirectBuffer.allocate(
            alignmentValues * Float.SIZE_BYTES,
            "MGC Spatial noise alignment",
        )?.order(ByteOrder.nativeOrder())
            ?: error("Unable to allocate MGC Spatial noise alignment")
        val rejectionStorage = LargeDirectBuffer.allocate(
            rejectionValues,
            "MGC Spatial noise rejection",
        )?.order(ByteOrder.nativeOrder())
            ?: run {
                LargeDirectBuffer.free(alignmentStorage)
                error("Unable to allocate MGC Spatial noise rejection")
            }
        return StrengthCapture(
            alignmentWidth = alignmentWidth,
            alignmentHeight = alignmentHeight,
            frameCount = frameCount,
            alignmentStorage = alignmentStorage,
            rejectionStorage = rejectionStorage,
            inputReadNoise = FloatArray(frameCount * 3),
            inputShotNoise = FloatArray(frameCount * 3),
            frameWeights = FloatArray(frameCount) { 1f },
            kernelSigmas = FloatArray(frameCount),
            captured = BooleanArray(frameCount),
        )
    }

    private fun captureStrengthFrame(
        capture: StrengthCapture,
        frameIndex: Int,
        calibration: FrameCalibration,
        flowTexture: Int,
        weightTexture: Int,
        identityWeight: Boolean,
    ) {
        require(frameIndex in 0 until capture.frameCount)
        require(!capture.captured[frameIndex])
        val alignment = readStrengthAlignment(
            flowTexture = flowTexture,
            alignmentWidth = capture.alignmentWidth,
            alignmentHeight = capture.alignmentHeight,
        )
        val alignmentPlane = capture.alignmentWidth * capture.alignmentHeight
        val alignmentFloats = capture.alignmentStorage.asFloatBuffer()
        for (pixel in 0 until alignmentPlane) {
            alignmentFloats.put(
                frameIndex * alignmentPlane + pixel,
                alignment[pixel * 2],
            )
            alignmentFloats.put(
                (capture.frameCount + frameIndex) * alignmentPlane + pixel,
                alignment[pixel * 2 + 1],
            )
        }
        val rejection = if (identityWeight) {
            ByteArray(mergeWeightWidth * mergeWeightHeight) { 0xff.toByte() }
        } else {
            readR8Mask(
                texture = weightTexture,
                label = "MGC noise rejection frame $frameIndex",
                maskWidth = mergeWeightWidth,
                maskHeight = mergeWeightHeight,
            )
        }
        val rejectionOffset = frameIndex * mergeWeightWidth * mergeWeightHeight
        rejection.forEachIndexed { index, value ->
            capture.rejectionStorage.put(rejectionOffset + index, value)
        }
        for (channel in 0 until 3) {
            val destination = channel * capture.frameCount + frameIndex
            capture.inputReadNoise[destination] =
                calibration.cameraRgbReadNoise[channel]
            capture.inputShotNoise[destination] =
                calibration.cameraRgbShotNoise[channel]
        }
        capture.frameWeights[frameIndex] = calibration.globalFrameWeight
        capture.kernelSigmas[frameIndex] = calibration.kernelSigma
        capture.captured[frameIndex] = true
        capture.alignmentStorage.position(0)
        capture.rejectionStorage.position(0)
    }

    private fun readStrengthAlignment(
        flowTexture: Int,
        alignmentWidth: Int,
        alignmentHeight: Int,
    ): FloatArray {
        val outputTexture = createTexture(
            alignmentWidth,
            alignmentHeight,
            GLES30.GL_RGBA32F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(strengthAlignmentProgram)
        bindTexture(strengthAlignmentProgram, "uFlow", 0, flowTexture)
        uniform2i(
            strengthAlignmentProgram,
            "uOutputSize",
            alignmentWidth,
            alignmentHeight,
        )
        draw(
            strengthAlignmentProgram,
            alignmentWidth,
            alignmentHeight,
            intArrayOf(outputTexture),
        )
        val valueCount = alignmentWidth * alignmentHeight * 4
        val storage = ByteBuffer.allocateDirect(valueCount * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        bindRenderTargets(
            intArrayOf(outputTexture),
            "MGC noise alignment readback",
        )
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            alignmentWidth,
            alignmentHeight,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            storage,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC noise alignment readback")
        val source = storage.asFloatBuffer()
        return FloatArray(alignmentWidth * alignmentHeight * 2).also { output ->
            for (pixel in 0 until alignmentWidth * alignmentHeight) {
                output[pixel * 2] = source.get(pixel * 4)
                output[pixel * 2 + 1] = source.get(pixel * 4 + 1)
            }
        }
    }

    private fun computeSpatialNoiseModel(
        capture: StrengthCapture,
        fusedFixed16: ByteBuffer,
    ): MgcSpatialStrengthMapGenerator.Result? = try {
        check(capture.captured.all { it }) {
            "MGC Spatial noise capture incomplete: ${capture.captured.contentToString()}"
        }
        logSpatialNoiseInputs(capture)
        MgcSpatialStrengthMapGenerator.compute(
            outputMode = MgcSpatialOutputMode.BAYER,
            fusedFixed16 = fusedFixed16,
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            alignment = capture.alignmentStorage,
            alignmentWidth = capture.alignmentWidth,
            alignmentHeight = capture.alignmentHeight,
            rejection = capture.rejectionStorage,
            rejectionWidth = mergeWeightWidth,
            rejectionHeight = mergeWeightHeight,
            frameCount = capture.frameCount,
            inputReadNoise = capture.inputReadNoise,
            inputShotNoise = capture.inputShotNoise,
            frameWeights = capture.frameWeights,
            kernelSigmas = capture.kernelSigmas,
        )
    } finally {
        LargeDirectBuffer.free(fusedFixed16)
    }

    private fun releaseStrengthCapture(capture: StrengthCapture) {
        LargeDirectBuffer.free(capture.alignmentStorage)
        LargeDirectBuffer.free(capture.rejectionStorage)
    }

    private fun logSpatialNoiseInputs(capture: StrengthCapture) {
        val alignmentPlane = capture.alignmentWidth * capture.alignmentHeight
        val alignment = capture.alignmentStorage.duplicate()
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        val alignmentMeanAbs = FloatArray(capture.frameCount)
        val alignmentMaxAbs = FloatArray(capture.frameCount)
        for (frame in 0 until capture.frameCount) {
            var sum = 0.0
            var maximum = 0f
            for (component in 0 until 2) {
                val base = (component * capture.frameCount + frame) * alignmentPlane
                for (pixel in 0 until alignmentPlane) {
                    val absolute = kotlin.math.abs(alignment.get(base + pixel))
                    sum += absolute.toDouble()
                    maximum = max(maximum, absolute)
                }
            }
            alignmentMeanAbs[frame] =
                (sum / (alignmentPlane * 2).toDouble()).toFloat()
            alignmentMaxAbs[frame] = maximum
        }

        val rejectionPlane = mergeWeightWidth * mergeWeightHeight
        val rejection = capture.rejectionStorage.duplicate()
        val acceptedWeightMean = FloatArray(capture.frameCount)
        for (frame in 0 until capture.frameCount) {
            var sum = 0L
            val base = frame * rejectionPlane
            for (pixel in 0 until rejectionPlane) {
                sum += rejection.get(base + pixel).toInt() and 0xff
            }
            acceptedWeightMean[frame] =
                sum.toFloat() / (rejectionPlane.toFloat() * 255f)
        }

        PLog.i(
            TAG,
            "MGC Spatial noise inputs frames=${capture.frameCount} " +
                "alignmentMeanAbs=${alignmentMeanAbs.contentToString()} " +
                "alignmentMaxAbs=${alignmentMaxAbs.contentToString()} " +
                "acceptedWeightMean=${acceptedWeightMean.contentToString()} " +
                "read(channel-major)=${capture.inputReadNoise.contentToString()} " +
                "shot(channel-major)=${capture.inputShotNoise.contentToString()} " +
                "frameWeight=${capture.frameWeights.contentToString()} " +
                "kernelSigma=${capture.kernelSigmas.contentToString()}",
        )
    }

    private fun logLinearKernelMask(
        texture: Int,
        selectedFrameIndex: Int,
    ) {
        val binaryMask = readR8Mask(
            texture = texture,
            label = "MGC Bento linear kernel mask",
            maskWidth = mergeWeightWidth,
            maskHeight = mergeWeightHeight,
        )
        val activePixels = binaryMask.count { (it.toInt() and 0xff) != 0 }
        PLog.i(
            TAG,
            "MGC linear kernel mask size=${mergeWeightWidth}x$mergeWeightHeight " +
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
        GLES30.glUseProgram(mergeBayerProgram)
        bindTexture(mergeBayerProgram, "uRaw", 0, rawTexture)
        bindTexture(mergeBayerProgram, "uAlignment", 1, alignmentTexture)
        bindTexture(mergeBayerProgram, "uFrameWeight", 2, weightTexture)
        bindTexture(mergeBayerProgram, "uLinearKernelMask", 3, linearKernelMaskTexture)
        uniform2i(mergeBayerProgram, "uRawSize", width, height)
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
        uniform1f(
            mergeBayerProgram,
            "uInterpolationFlowTolerance",
            SPATIAL_INTERPOLATION_FLOW_TOLERANCE,
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
                width,
                height,
                intArrayOf(accumulator),
                preserveBlend = true,
            )
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    private fun clearAccumulator(color: Int) {
        bindRenderTargets(intArrayOf(color), "clear accumulator")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearBufferfv(
            GLES30.GL_COLOR,
            0,
            floatArrayOf(0f, 0f, 0f, 0f),
            0,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderRgbMerge(frames: List<RgbMergeFrame>): RgbMergeOutput {
        check(outputMode == MgcSpatialOutputMode.RGB)
        check(mergeRgbProgram != 0 && normalizeRgbProgram != 0)
        require(frames.isNotEmpty())
        val tiles = MgcSpatialRgbTilePlanner.plan(outputWidth, outputHeight)
        val work = tiles.map { tile ->
            tile to frames.map { frame ->
                RgbTileFrameRegion(
                    frame = frame,
                    sourceRegion = MgcSpatialRgbTilePlanner.sourceRegion(
                        tile = tile,
                        rawWidth = width,
                        rawHeight = height,
                        outputWidth = outputWidth,
                        outputHeight = outputHeight,
                        flowBounds = frame.flowBounds,
                    ),
                )
            }
        }
        val maximumOutputWidth = tiles.maxOf { it.outputCore.width }
        val maximumOutputHeight = tiles.maxOf { it.outputCore.height }
        val maximumSourceWidth = work.maxOf { (_, regions) ->
            regions.maxOf { it.sourceRegion.width }
        }
        val maximumSourceHeight = work.maxOf { (_, regions) ->
            regions.maxOf { it.sourceRegion.height }
        }
        val rawRegionTexture = createTexture(
            maximumSourceWidth,
            maximumSourceHeight,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        val semanticAccumulator = createTexture(
            maximumOutputWidth,
            maximumOutputHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        val opponentWeightAccumulator = createTexture(
            maximumOutputWidth,
            maximumOutputHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        val lensShadingTexture = createLensShadingTexture()
        val gpuOutput = if (exportGpuLinearRgbSource) {
            createTexture(
                outputWidth,
                outputHeight,
                GLES30.GL_RGBA16UI,
                GLES30.GL_NEAREST,
            )
        } else {
            0
        }
        val cpuTileOutput = if (gpuOutput == 0) {
            createTexture(
                maximumOutputWidth,
                maximumOutputHeight,
                GLES30.GL_RGBA16UI,
                GLES30.GL_NEAREST,
            )
        } else {
            0
        }
        val outputBytes = outputWidth.toLong() * outputHeight.toLong() * 3L * Short.SIZE_BYTES
        require(outputBytes <= Int.MAX_VALUE) {
            "MGC Spatial RGB CPU output is too large: $outputBytes bytes"
        }
        val cpuOutput = if (gpuOutput == 0) {
            LargeDirectBuffer.allocate(
                outputBytes,
                "MGC Spatial fused linear RGB16",
            )?.order(ByteOrder.nativeOrder()) ?: error(
                "Unable to allocate MGC Spatial RGB16 output",
            )
        } else {
            null
        }
        val tileReadback = if (cpuOutput != null) {
            ByteBuffer.allocateDirect(
                maximumOutputWidth * maximumOutputHeight * 4 * Short.SIZE_BYTES,
            ).order(ByteOrder.nativeOrder())
        } else {
            null
        }
        PLog.i(
            TAG,
            "MGC Spatial RGB raw-domain tiles=${tiles.size} " +
                "maxOutput=${maximumOutputWidth}x$maximumOutputHeight " +
                "maxRaw=${maximumSourceWidth}x$maximumSourceHeight " +
                "frames=${frames.size} reconstruction=joint-G/R-G/B-G",
        )

        try {
            for ((tile, frameRegions) in work) {
                clearRgbAccumulators(
                    semanticAccumulator = semanticAccumulator,
                    opponentWeightAccumulator = opponentWeightAccumulator,
                    tileWidth = tile.outputCore.width,
                    tileHeight = tile.outputCore.height,
                )
                for ((frameIndex, frameRegion) in frameRegions.withIndex()) {
                    uploadRawRegion(
                        image = frameRegion.frame.image,
                        region = frameRegion.sourceRegion,
                        texture = rawRegionTexture,
                        label = "RGB tile ${tile.index} frame $frameIndex",
                    )
                    renderRgbFrameContribution(
                        frame = frameRegion.frame,
                        sourceRegion = frameRegion.sourceRegion,
                        outputCore = tile.outputCore,
                        rawRegionTexture = rawRegionTexture,
                        semanticAccumulator = semanticAccumulator,
                        opponentWeightAccumulator = opponentWeightAccumulator,
                    )
                }
                val target = if (gpuOutput != 0) gpuOutput else cpuTileOutput
                renderRgbNormalizedTile(
                    semanticAccumulator = semanticAccumulator,
                    opponentWeightAccumulator = opponentWeightAccumulator,
                    lensShadingTexture = lensShadingTexture,
                    outputCore = tile.outputCore,
                    target = target,
                    targetIsFullOutput = gpuOutput != 0,
                )
                if (cpuOutput != null) {
                    readRgbTile(
                        texture = cpuTileOutput,
                        outputCore = tile.outputCore,
                        readback = checkNotNull(tileReadback),
                        output = cpuOutput,
                    )
                }
                GlesGpuScheduler.yieldToUiRenderer()
            }
            cpuOutput?.rewind()
            if (gpuOutput != 0) {
                GLES30.glFlush()
                check(textures.remove(gpuOutput)) {
                    "Exported MGC Spatial RGB texture is not owned by the stacker"
                }
            }
            return RgbMergeOutput(cpuBuffer = cpuOutput, gpuTexture = gpuOutput)
        } catch (throwable: Throwable) {
            LargeDirectBuffer.free(cpuOutput)
            throw throwable
        }
    }

    private fun clearRgbAccumulators(
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
        tileWidth: Int,
        tileHeight: Int,
    ) {
        bindRenderTargets(
            intArrayOf(semanticAccumulator, opponentWeightAccumulator),
            "MGC RGB accumulator clear",
        )
        GLES30.glViewport(0, 0, tileWidth, tileHeight)
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

    private fun renderRgbFrameContribution(
        frame: RgbMergeFrame,
        sourceRegion: MgcSpatialRgbRect,
        outputCore: MgcSpatialRgbRect,
        rawRegionTexture: Int,
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
    ) {
        GLES30.glUseProgram(mergeRgbProgram)
        bindTexture(mergeRgbProgram, "uRawRegion", 0, rawRegionTexture)
        bindTexture(mergeRgbProgram, "uAlignment", 1, frame.alignmentTexture)
        bindTexture(mergeRgbProgram, "uFrameWeight", 2, frame.weightTexture)
        bindTexture(mergeRgbProgram, "uCovariance", 3, frame.covarianceTexture)
        uniform2i(mergeRgbProgram, "uRawSize", width, height)
        uniform2i(
            mergeRgbProgram,
            "uRawRegionOrigin",
            sourceRegion.left,
            sourceRegion.top,
        )
        uniform2i(
            mergeRgbProgram,
            "uRawRegionSize",
            sourceRegion.width,
            sourceRegion.height,
        )
        uniform2i(mergeRgbProgram, "uOutputSize", outputWidth, outputHeight)
        uniform2i(
            mergeRgbProgram,
            "uOutputOrigin",
            outputCore.left,
            outputCore.top,
        )
        uniform4f(
            mergeRgbProgram,
            "uCovRangeRg",
            COV_MIN_R,
            COV_MAX_R - COV_MIN_R,
            COV_MIN_G,
            COV_MAX_G - COV_MIN_G,
        )
        uniform2f(
            mergeRgbProgram,
            "uCovRangeB",
            COV_MIN_B,
            COV_MAX_B - COV_MIN_B,
        )
        uniform4fv(mergeRgbProgram, "uGains", frame.calibration.gains)
        uniform4fv(
            mergeRgbProgram,
            "uBlackLevelsTimesGains",
            frame.calibration.blackTerms,
        )
        uniform2f(
            mergeRgbProgram,
            "uGreenNoise",
            0.5f * (frame.calibration.shotNoise[1] + frame.calibration.shotNoise[2]),
            0.5f * (frame.calibration.readNoise[1] + frame.calibration.readNoise[2]),
        )
        uniform1f(
            mergeRgbProgram,
            "uChromaEdgeNoiseSigmas",
            RGB_CHROMA_EDGE_NOISE_SIGMAS,
        )
        uniform1f(
            mergeRgbProgram,
            "uChromaEdgeSigmaFloor",
            RGB_CHROMA_EDGE_SIGMA_FLOOR,
        )
        uniform1f(
            mergeRgbProgram,
            "uInterpolationFlowTolerance",
            SPATIAL_INTERPOLATION_FLOW_TOLERANCE,
        )
        uniform1i(mergeRgbProgram, "uCfaPattern", cfaPattern)
        uniform1i(
            mergeRgbProgram,
            "uUseFrameWeight",
            if (frame.useFrameWeight) 1 else 0,
        )
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            draw(
                mergeRgbProgram,
                outputCore.width,
                outputCore.height,
                intArrayOf(semanticAccumulator, opponentWeightAccumulator),
                preserveBlend = true,
            )
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    private fun renderRgbNormalizedTile(
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
        lensShadingTexture: Int,
        outputCore: MgcSpatialRgbRect,
        target: Int,
        targetIsFullOutput: Boolean,
    ) {
        val targetLeft = if (targetIsFullOutput) outputCore.left else 0
        val targetTop = if (targetIsFullOutput) outputCore.top else 0
        bindRenderTargets(intArrayOf(target), "MGC RGB normalize tile ${outputCore.left},${outputCore.top}")
        GLES30.glViewport(targetLeft, targetTop, outputCore.width, outputCore.height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(normalizeRgbProgram)
        bindTexture(normalizeRgbProgram, "uColorAndRWeight", 0, semanticAccumulator)
        bindTexture(normalizeRgbProgram, "uGbWeights", 1, opponentWeightAccumulator)
        bindTexture(normalizeRgbProgram, "uLensShading", 2, lensShadingTexture)
        uniform2i(
            normalizeRgbProgram,
            "uAccumulatorSize",
            outputCore.width,
            outputCore.height,
        )
        uniform2i(normalizeRgbProgram, "uTargetOrigin", targetLeft, targetTop)
        uniform2i(
            normalizeRgbProgram,
            "uOutputOrigin",
            outputCore.left,
            outputCore.top,
        )
        uniform2i(normalizeRgbProgram, "uOutputSize", outputWidth, outputHeight)
        uniform3f(
            normalizeRgbProgram,
            "uCameraDomainScale",
            cameraDomainScale[0],
            cameraDomainScale[1],
            cameraDomainScale[2],
        )
        uniform1i(normalizeRgbProgram, "uUseLensShading", if (hasLensShading()) 1 else 0)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial RGB normalize tile $outputCore")
    }

    private fun readRgbTile(
        texture: Int,
        outputCore: MgcSpatialRgbRect,
        readback: ByteBuffer,
        output: ByteBuffer,
    ) {
        val byteCount = outputCore.width * outputCore.height * 4 * Short.SIZE_BYTES
        readback.clear()
        readback.limit(byteCount)
        bindRenderTargets(intArrayOf(texture), "MGC RGB tile readback")
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            outputCore.width,
            outputCore.height,
            GLES30.GL_RGBA_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            readback,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial RGB tile readback $outputCore")
        readback.position(0)
        val source = readback.asShortBuffer()
        for (localY in 0 until outputCore.height) {
            for (localX in 0 until outputCore.width) {
                val sourceIndex = (localY * outputCore.width + localX) * 4
                val destinationPixel =
                    (outputCore.top + localY) * outputWidth + outputCore.left + localX
                val destinationByte = destinationPixel * 3 * Short.SIZE_BYTES
                output.putShort(destinationByte, source.get(sourceIndex))
                output.putShort(destinationByte + Short.SIZE_BYTES, source.get(sourceIndex + 1))
                output.putShort(destinationByte + 2 * Short.SIZE_BYTES, source.get(sourceIndex + 2))
            }
        }
    }

    private fun uploadRawRegion(
        image: SafeImage,
        region: MgcSpatialRgbRect,
        texture: Int,
        label: String,
    ) {
        val plane = image.planes.firstOrNull() ?: error("$label has no RAW plane")
        require(plane.pixelStride == RAW_BYTES_PER_PIXEL)
        require(plane.rowStride >= width * RAW_BYTES_PER_PIXEL)
        require(plane.rowStride % RAW_BYTES_PER_PIXEL == 0)
        val source = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val bufferStart = source.position()
        val byteOffset = bufferStart +
            region.top * plane.rowStride + region.left * plane.pixelStride
        val lastByteExclusive = bufferStart +
            (region.bottom - 1) * plane.rowStride + region.right * plane.pixelStride
        require(byteOffset >= bufferStart && lastByteExclusive <= source.limit()) {
            "$label RAW region=$region exceeds plane buffer limit=${source.limit()}"
        }
        source.position(byteOffset)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
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
            region.width,
            region.height,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            source,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("upload $label region=$region")
    }

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

    private fun mapSpatialStrengthToOutputCoordinates(
        source: MgcSpatialStrengthMap,
    ): MgcSpatialStrengthMap {
        val targetWidth = ceilDiv(outputWidth, 4)
        val targetHeight = ceilDiv(outputHeight, 4)
        if (source.width == targetWidth && source.height == targetHeight) return source
        val mapped = ShortArray(targetWidth * targetHeight)
        for (targetY in 0 until targetHeight) {
            val sourceY = (targetY + 0.5f) * source.height / targetHeight - 0.5f
            val y0 = kotlin.math.floor(sourceY).toInt().coerceIn(0, source.height - 1)
            val y1 = (y0 + 1).coerceAtMost(source.height - 1)
            val fy = (sourceY - kotlin.math.floor(sourceY)).coerceIn(0f, 1f)
            for (targetX in 0 until targetWidth) {
                val sourceX = (targetX + 0.5f) * source.width / targetWidth - 0.5f
                val x0 = kotlin.math.floor(sourceX).toInt().coerceIn(0, source.width - 1)
                val x1 = (x0 + 1).coerceAtMost(source.width - 1)
                val fx = (sourceX - kotlin.math.floor(sourceX)).coerceIn(0f, 1f)
                fun q8(x: Int, y: Int): Float =
                    (source.q8[y * source.width + x].toInt() and 0xffff).toFloat()
                val top = q8(x0, y0) + fx * (q8(x1, y0) - q8(x0, y0))
                val bottom = q8(x0, y1) + fx * (q8(x1, y1) - q8(x0, y1))
                mapped[targetY * targetWidth + targetX] =
                    kotlin.math.round(top + fy * (bottom - top))
                        .toInt()
                        .coerceIn(0, 0xffff)
                        .toShort()
            }
        }
        PLog.i(
            TAG,
            "MGC Spatial strength coordinates mapped ${source.width}x${source.height} -> " +
                "${targetWidth}x$targetHeight for ${normalizedOutputScale}x RGB output",
        )
        return MgcSpatialStrengthMap(targetWidth, targetHeight, mapped)
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
            width,
            height,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(normalizeBayerProgram)
        bindTexture(normalizeBayerProgram, "uBayerAndWeight", 0, accumulator)
        uniform2i(normalizeBayerProgram, "uOutputSize", width, height)
        draw(normalizeBayerProgram, width, height, intArrayOf(bayer16))
        return bayer16
    }

    private fun renderBayerFixed16Planes(accumulator: Int): Int {
        // The lifted AOT consumes complete 8x8 Bayer-quad tiles (16x16 sensor
        // pixels), including a clamped edge tile when the RAW size is odd.
        val quadWidth = ceilDiv(width, 16) * 8
        val quadHeight = ceilDiv(height, 16) * 8
        val packedHeight = quadHeight * 4
        val bayerFixed16 = createTexture(
            quadWidth,
            packedHeight,
            GLES30.GL_R16I,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(packBayerFixed16Program)
        bindTexture(packBayerFixed16Program, "uBayerAndWeight", 0, accumulator)
        uniform2i(
            packBayerFixed16Program,
            "uSourceSize",
            width,
            height,
        )
        uniform2i(
            packBayerFixed16Program,
            "uQuadSize",
            quadWidth,
            quadHeight,
        )
        draw(
            packBayerFixed16Program,
            quadWidth,
            packedHeight,
            intArrayOf(bayerFixed16),
        )
        return bayerFixed16
    }

    private fun readSigned16Texture(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        label: String,
    ): ByteBuffer {
        val byteCount =
            textureWidth.toLong() * textureHeight.toLong() * Short.SIZE_BYTES
        val output = LargeDirectBuffer.allocate(byteCount, label)
            ?.order(ByteOrder.nativeOrder())
            ?: error("Unable to allocate $label")
        bindRenderTargets(intArrayOf(texture), label)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            textureWidth,
            textureHeight,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_SHORT,
            output,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        output.rewind()
        return output
    }

    private fun readBayer16(bayer16: Int): ByteBuffer {
        val outputBytes = width.toLong() * height.toLong() * 2L
        val allocationStartNs = System.nanoTime()
        val output = LargeDirectBuffer.allocate(
            outputBytes,
            "MGC Spatial fused Bayer16",
        )?.order(ByteOrder.nativeOrder()) ?: throw IllegalStateException(
            "Unable to allocate MGC Spatial Bayer16 output",
        )
        val allocationMs = (System.nanoTime() - allocationStartNs) / 1_000_000L
        bindRenderTargets(intArrayOf(bayer16), "Bayer16 readback")
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        val transferStartNs = System.nanoTime()
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            output,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial Bayer16 readback")
        output.rewind()
        PLog.i(
            TAG,
            "MGC Spatial Bayer16 CPU materialization " +
                "pixelTransfer=${(System.nanoTime() - transferStartNs) / 1_000_000L}ms " +
                "alloc=${allocationMs}ms",
        )
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
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
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
        val spec = TextureSpec(
            width = textureWidth,
            height = textureHeight,
            internalFormat = internalFormat,
            filter = filter,
        )
        val scratchTextures = activeSequentialScratchTextures
        return if (scratchTextures != null) {
            scratchTextures.acquire(spec) { allocateTexture(spec) }
        } else {
            allocateTexture(spec)
        }
    }

    private fun allocateTexture(spec: TextureSpec): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "glGenTextures returned 0" }
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            spec.filter,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            spec.filter,
        )
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
            spec.internalFormat,
            spec.width,
            spec.height,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("create texture ${spec.width}x${spec.height}")
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
        val texture = createTexture(
            textureWidth = width,
            textureHeight = height,
            internalFormat = internalFormat,
            filter = filter,
        )
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            width,
            height,
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

    /** Copies a scratch result into storage that survives the next sequential temporal frame. */
    private fun copyPersistentTexture(
        source: Int,
        textureWidth: Int,
        textureHeight: Int,
        internalFormat: Int,
        filter: Int,
        label: String,
    ): Int {
        val destination = allocateTexture(
            TextureSpec(
                width = textureWidth,
                height = textureHeight,
                internalFormat = internalFormat,
                filter = filter,
            ),
        )
        bindRenderTargets(intArrayOf(source), "$label source")
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, destination)
        GLES30.glCopyTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            0,
            0,
            textureWidth,
            textureHeight,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        return destination
    }

    private fun readAlignmentBounds(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        label: String,
    ): MgcSpatialRgbFlowBounds {
        val valueCount = textureWidth.toLong() * textureHeight * 4L
        require(valueCount * Float.SIZE_BYTES <= Int.MAX_VALUE)
        val storage = ByteBuffer.allocateDirect((valueCount * Float.SIZE_BYTES).toInt())
            .order(ByteOrder.nativeOrder())
        bindRenderTargets(intArrayOf(texture), "$label bounds")
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            textureWidth,
            textureHeight,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            storage,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("$label bounds")
        val values = storage.asFloatBuffer()
        var minimumX = Float.POSITIVE_INFINITY
        var minimumY = Float.POSITIVE_INFINITY
        var maximumX = Float.NEGATIVE_INFINITY
        var maximumY = Float.NEGATIVE_INFINITY
        for (pixel in 0 until textureWidth * textureHeight) {
            val x = values.get(pixel * 4)
            val y = values.get(pixel * 4 + 1)
            check(x.isFinite() && y.isFinite()) {
                "$label contains non-finite flow at pixel $pixel: ($x, $y)"
            }
            minimumX = minOf(minimumX, x)
            minimumY = minOf(minimumY, y)
            maximumX = maxOf(maximumX, x)
            maximumY = maxOf(maximumY, y)
        }
        return MgcSpatialRgbFlowBounds(minimumX, minimumY, maximumX, maximumY)
    }

    private fun beginTemporalScratchFrame() {
        check(activeSequentialScratchTextures == null) {
            "Temporal scratch frame overlap is not supported"
        }
        temporalScratchTextures.begin()
        activeSequentialScratchTextures = temporalScratchTextures
    }

    private fun endTemporalScratchFrame() {
        check(activeSequentialScratchTextures === temporalScratchTextures) {
            "Ending a Spatial temporal scratch frame that is not active"
        }
        activeSequentialScratchTextures = null
        temporalScratchTextures.end()
    }

    private fun releaseTexturesFrom(startIndex: Int) {
        if (startIndex >= textures.size) return
        val count = textures.size - startIndex
        val transientTextures = IntArray(count) { offset -> textures[startIndex + offset] }
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
            GLES30.glDeleteTextures(toDelete.size, toDelete, 0)
        }
        for (index in textures.lastIndex downTo startIndex) {
            if (textures[index] !in retained) textures.removeAt(index)
        }
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
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
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
        // MGC defines the tolerance as a fraction of its 8 Bayer-quad tile. Keep
        // interpolation only where every neighboring flow is within one raw pixel
        // (half a Bayer quad) of the current tile; larger discontinuities retain the
        // piecewise-constant flow and are handled by rejection.
        const val SPATIAL_INTERPOLATION_FLOW_TOLERANCE = 1f / 16f
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
        // MGC generates kernel_sigmas per frame as:
        //   1 / (base spatial scale * frame-weight scale * selected-frame scale).
        // Its static frame-weight curve is {10 -> 1, 30 -> sqrt(2)}. Google's published
        // tuning uses a detail-kernel standard deviation of 0.33..0.25 raw pixels as the
        // reference SNR rises from 6 to 30. MergeBayerRaw consumes the inverse scale.
        const val SPATIAL_KERNEL_SNR_LOW = 6f
        const val SPATIAL_KERNEL_SNR_HIGH = 30f
        const val SPATIAL_KERNEL_SCALE_LOW_SNR = 0.33f
        const val SPATIAL_KERNEL_SCALE_HIGH_SNR = 0.25f
        const val SPATIAL_FRAME_WEIGHT_CURVE_START = 10f
        const val SPATIAL_FRAME_WEIGHT_CURVE_END = 30f
        const val SPATIAL_FRAME_WEIGHT_KERNEL_SCALE_END = 1.41421356f
        const val SPATIAL_FRAME_WEIGHT_CAP = 50f
        const val SPATIAL_KERNEL_SIGNAL_GRID_SIZE = 64
        const val MIN_NOISE_VARIANCE = 1e-12f
        const val MIN_BAYER_KERNEL_SCALE = 1e-3f
        // Captured from the original MGC rejection program on the same full-resolution path.
        const val FLOW_VARIATION_THRESHOLD = 9.88235261e-5f

        // FilterRejectionMap runtime values read from the original MGC process. The
        // ClippedGaussian formula and tap center were independently verified against its AOT.
        const val PIXEL_DIFFERENCE_KERNEL_SIZE = 20
        // Packed precision-matrix ranges used by MGC MergeRgbRaw.
        const val COV_MIN_R = 0.3671880066f
        const val COV_MAX_R = 24.8149185f
        const val COV_MIN_G = 0.3671880066f
        const val COV_MAX_G = 26.0516777f
        const val COV_MIN_B = -6.97557068f
        const val COV_MAX_B = 7.02652168f
        const val RGB_CHROMA_EDGE_NOISE_SIGMAS = 2.5f
        const val RGB_CHROMA_EDGE_SIGMA_FLOOR = 1f / 160f
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
