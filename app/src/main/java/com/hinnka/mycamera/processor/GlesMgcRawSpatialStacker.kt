package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
import android.graphics.Rect
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import android.util.Half
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.RawDenoisePipeline
import com.hinnka.mycamera.raw.denoise.PhotonMergeNoise
import com.hinnka.mycamera.raw.RawSceneAERawStats
import com.hinnka.mycamera.utils.DngCaptureDiagnostics
import com.hinnka.mycamera.utils.DirectBufferPixelPacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.sqrt

internal enum class MgcRawProcessorPipeline {
    SPATIAL,
    SABRE,
}

/** Exact FrameMetadata::EstimateSnr missing-signal fallback used by classic Sabre. */
internal fun resolveFusionReferenceSignal(
    measuredSignal: Float?,
    fallbackSignal: Float,
): Float {
    measuredSignal?.takeIf { it.isFinite() && it >= 0f }?.let { return it }
    return fallbackSignal.takeIf { it.isFinite() && it >= 0f } ?: 0.18f
}

/**
 * Independent GLES MGC Spatial RAW merge pipeline.
 *
 * The stage order, constants and shader equations come from this APK's libgcastartup.so. The
 * recovered MGC parameter-generation equations are cross-checked against Google's published
 * kernel units and SNR tuning range. The Bayer output preserves the CFA lattice. The RGB output
 * executes MGC 9.7.047 V25's complete native-grid MergeRgbRaw16F16 AOT, including its internal
 * full-resolution green reconstruction. Sabre likewise completes fusion, ResolveSabre and VGN on
 * the native grid. Display scaling follows FinishRaw/GuidedUpsample in the RAW renderer.
 * MGC alignment, rejection, Bento admission and propagated-noise postprocessing remain authoritative.
 */
internal class GlesMgcRawSpatialStacker(
    private val width: Int,
    private val height: Int,
    private val sourceBounds: Rect = Rect(0, 0, width, height),
    private val cfaPattern: Int,
    blackLevel: FloatArray,
    whiteLevel: Int,
    whiteBalanceGains: FloatArray,
    private val noiseProfileSelection: RawNoiseProfileSelection,
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    private val outputMode: MgcSpatialOutputMode,
    private val mergeMethod: MgcMergeMethod = when (outputMode) {
        MgcSpatialOutputMode.BAYER -> MgcMergeMethod.SPATIAL_BAYER
        MgcSpatialOutputMode.RGB -> MgcMergeMethod.SPATIAL_RGB
    },
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
    private val gpuLinearRgbStorage: GpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16UI,
    private val processorPipeline: MgcRawProcessorPipeline = MgcRawProcessorPipeline.SPATIAL,
    private val computeFastMomentsRawStats: Boolean = false,
    private val cameraWhite: FloatArray? = null,
) {
    private data class TextureLevel(
        val texture: Int,
        val width: Int,
        val height: Int,
        val scaleToBayerQuads: Float,
        val tileSize: Int,
        val gridWidth: Int,
        val gridHeight: Int,
    )

    private data class Alignment(
        val texture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
        val scaleToBayerQuads: Float,
        val gridMin: Int,
        val offsetX: Int = 0,
        val offsetY: Int = 0,
    )

    private data class GlobalAlignmentCandidate(
        val x: Float,
        val y: Float,
        val peakSupport: Int,
        val usedHistogramPeak: Boolean,
    )

    /** Only the immediately preceding flow is live inside one pyramid solve. */
    private class AlignmentScratch(private val allocate: (Int, Int) -> Int) {
        private val pairs = HashMap<Pair<Int, Int>, MutableList<Int>>()

        fun target(width: Int, height: Int, input: Int): Int {
            val textures = pairs.getOrPut(width to height) { ArrayList(2) }
            return textures.firstOrNull { it != input }
                ?: allocate(width, height).also { textures += it }
        }
    }

    private data class CachedNoiseLut(val texture: Int, val allocation: TextureSpec)

    /** Normalized flow plus the reference-UV to alignment-texture transform. */
    private data class ConvertedAlignment(
        val texture: Int,
        val scaleX: Float,
        val scaleY: Float,
        val offsetX: Float,
        val offsetY: Float,
    ) {
        companion object {
            fun constant(texture: Int) = ConvertedAlignment(
                texture = texture,
                scaleX = 0f,
                scaleY = 0f,
                offsetX = 0.5f,
                offsetY = 0.5f,
            )
        }
    }

    /** Reference-only LK products shared by every current frame at one pyramid level. */
    private data class ReferenceAlignmentProducts(
        val referenceTexture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
        val tileSize: Int,
        val products0: Int,
    )

    private data class PreparedTemporalFrame(
        val calibration: FrameCalibration,
        val convertedAlignment: ConvertedAlignment,
        val bayerAlignmentTexture: Int,
        val weightTexture: Int,
        val rgbAotRejectionTexture: Int,
    )

    private data class RgbMergeFrame(
        val imageIndex: Int,
        val calibration: FrameCalibration,
        val alignmentTexture: Int,
        val weightTexture: Int,
        val covarianceTexture: Int,
        val flowBounds: MgcSpatialRgbFlowBounds,
        val useFrameWeight: Boolean,
    )

    private data class RgbMergeOutput(
        val cpuBuffer: ByteBuffer?,
        val gpuTexture: Int,
        val completionTimeline: GpuStackCompletionTimeline?,
    )

    private data class TextureSpec(
        val width: Int,
        val height: Int,
        val internalFormat: Int,
        val filter: Int,
    )

    private data class ActiveMaskGpuCount(
        val activePixels: Int,
        val setupNs: Long,
        val submitNs: Long,
        val gpuWaitMs: Long,
        val mapNs: Long,
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

        fun clearTracking() {
            check(!active) { "Cannot clear active temporal scratch textures" }
            entries.clear()
        }
    }

    private data class FrameCalibration(
        val blackLevels: FloatArray,
        val inputGain: Float,
        val gains: FloatArray,
        val blackTerms: FloatArray,
        val bayerPhaseGains: FloatArray,
        val bayerPhaseBlackTerms: FloatArray,
        val rejectionWeightScale: Float,
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

    private data class SpatialNoiseParameters(
        val read: FloatArray,
        val shot: FloatArray,
    )

    private data class StrengthCapture(
        val geometry: MgcSpatialDiagnosticGeometry,
        val outputMode: MgcSpatialOutputMode,
        val frameCount: Int,
        val alignmentLayout: MgcSpatialStrengthAtlasLayout,
        val rejectionLayout: MgcSpatialStrengthAtlasLayout,
        val alignmentAtlas: Int,
        val rejectionAtlas: Int,
        val inputReadNoise: FloatArray,
        val inputShotNoise: FloatArray,
        val frameWeights: FloatArray,
        val kernelSigmas: FloatArray,
        val captured: BooleanArray,
    ) {
        val alignmentWidth: Int get() = geometry.alignmentWidth
        val alignmentHeight: Int get() = geometry.alignmentHeight
        val rejectionWidth: Int get() = geometry.rejectionWidth
        val rejectionHeight: Int get() = geometry.rejectionHeight
    }

    private data class BayerKernelTuning(
        val referenceSignal: Float,
        val referenceGreenShotNoiseFactor: Float,
        val referenceGreenReadVariance: Float,
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

    private val rejectionGeometry = mgcSpatialRejectionGeometry(
        imageWidth = width,
        imageHeight = height,
        filterDownsample = REJECTION_FILTER_DOWNSAMPLE,
    )
    // GuideRaw10 emits one sample per Bayer quad. V25's Rejection implementation requires
    // GenerateRejectionTexture's output to have exactly the same RAW/2 extents.
    private val guideWidth = rejectionGeometry.guideWidth
    private val guideHeight = rejectionGeometry.guideHeight
    // MergeBayerRaw16's queried AOT contract requests one alignment sample per 8x8
    // Bayer-quad tile, i.e. one sample per 16x16 sensor pixels.
    private val bayerAlignmentWidth = ceilDiv(width, MERGE_BAYER_RAW_TILE_SIZE)
    private val bayerAlignmentHeight = ceilDiv(height, MERGE_BAYER_RAW_TILE_SIZE)
    private val rejectionWidth = rejectionGeometry.rejectionWidth
    private val rejectionHeight = rejectionGeometry.rejectionHeight
    // Rejection::DilateMask and Rejection::Downsample2x require floor(input / 2), taking the
    // guide-sized RAW/2 result to the RAW/4 acceptance/pixel-difference domain used by merge.
    private val mergeWeightWidth = rejectionGeometry.mergeWeightWidth
    private val mergeWeightHeight = rejectionGeometry.mergeWeightHeight
    private val rejectionFilterWidth = rejectionGeometry.filterWidth
    private val rejectionFilterHeight = rejectionGeometry.filterHeight
    private val outputWidth = width
    private val outputHeight = height
    // MergeRgbRaw16F16 is a native-grid merge: output coordinates are RAW coordinates and samples
    // outside the RAW extent use its mirror boundary. Display scaling belongs after
    // FinishRaw/GuidedUpsample.
    private val sensorWhiteLevelCode = max(1, whiteLevel)
    private val sensorWhiteLevel = sensorWhiteLevelCode.toFloat()
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
    // SabreProcessor::Run scales RAW codes into MGC's 14-bit Resolve domain with
    // int(max(16384 / (white_level + 1), 1)). ResolveSabre receives black/white in
    // that domain, while final_gains undo the WB gains used by the GL merge.
    private val sabreResolveRawScale = max(
        (SABRE_RESOLVE_INPUT_WHITE_LEVEL / (sensorWhiteLevel + 1f)).toInt(),
        1,
    ).toFloat()
    private val sabreResolveFinalGains = cameraDomainScale.copyOf()
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var ownsEglContext = false

    private val textures = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()
    private val buffers = ArrayList<Int>()
    private val programs = ArrayList<Int>()
    private val uniformLocations = HashMap<Int, HashMap<String, Int>>()
    private val textureSpecs = HashMap<Int, TextureSpec>()
    private val noiseLutCache = HashMap<List<Int>, CachedNoiseLut>()
    private val validatedRenderTargetSpecs = HashSet<List<TextureSpec>>()
    private val temporalScratchTextures = SequentialScratchTextures()
    private var activeSequentialScratchTextures: SequentialScratchTextures? = null
    private var renderFbo = 0
    private var renderTargetAttachmentCount = 0

    private var guideProgram = 0
    private var covarianceProgram = 0
    private var rawToGrayProgram = 0
    private var downsampleProgram = 0
    private var downsample4Program = 0
    private var alignProgram = 0
    private var alignmentGradientProductsProgram = 0
    private var upsampleAlignmentProgram = 0
    private var medianAlignmentProgram = 0
    private var globalAlignment: GlesSpatialGlobalAlignment? = null
    private var blockLucasKanadeProgram = 0
    private var convertAlignmentProgram = 0
    private var strengthAlignmentProgram = 0
    private var strengthRejectionProgram = 0
    private var unblockerProgram = 0
    private var unblockerBlurProgram = 0
    private var rejectionProgram = 0
    private var rejectionAcceptanceProgram = 0
    private var rejectionDownsampleProgram = 0
    private var clippedGaussianHorizontalProgram = 0
    private var clippedGaussianVerticalProgram = 0
    private var rejectionFilterDownsampleProgram = 0
    private var rejectionFilterProgram = 0
    private var rejectionPostprocessProgram = 0
    private var dilationProgram = 0
    private var linearKernelMaskProgram = 0
    private var bentoHighlightProgram = 0
    private var bentoHighlightCountProgram = 0
    private var bentoCollarSupportProgram = 0
    private var bentoAdjustProgram = 0
    private var bentoRewriteWeightProgram = 0
    private var alignedRawClippingMaskProgram = 0
    private var mergeBayerProgram = 0
    private var sabreMergeBayerProgram = 0
    private var sabreExtractBayerProgram = 0
    private var sabreGuideAndCovarianceProgram = 0
    private var sabreBaseFrameReferenceColorProgram = 0
    private var sabreMergeProgram = 0
    private var sabreCopyMaskProgram = 0
    private var sabreCopyAlphaProgram = 0
    private var sabreDehomogenizeProgram = 0
    private var sabreResolveConvertProgram = 0
    private var sabreResolveGreenBalanceProgram = 0
    private var sabreResolveGreenProgram = 0
    private var sabreResolveOutputProgram = 0

    /** §2.2 merge variance accumulator of the merge in flight; released with the merge. */
    private var mergeNoise: PhotonMergeNoise? = null
    private var currentMergeCovariance = 0
    private var normalizeBayerProgram = 0
    // MergeRgbRaw16F16 on the GPU: per-frame DemosaicGreenRaw16, accumulation and resolve.
    private var spatialRgbConvertProgram = 0
    private var spatialRgbGreenBalanceProgram = 0
    private var spatialRgbGreenProgram = 0
    private var spatialRgbAccumulateProgram = 0
    private var spatialRgbResolveProgram = 0
    private var copyRgb16ToFloatProgram = 0
    private var rgbChromaPostprocessor: GlesMgcSpatialRgbChromaPostprocessor? = null
    private var supportsComputePrograms = false
    private var supportsComputeReadback = false
    private var maxShaderStorageBlockBytes = 0L
    private var maxComputePackGroupsX = 0
    private var maxComputePackGroupsY = 0
    private val pixelDifferenceKernel = gaussianKernel(
        size = PIXEL_DIFFERENCE_KERNEL_SIZE,
        sigma = PIXEL_DIFFERENCE_SMOOTH_SIGMA,
    )
    private val alignmentPlan = MgcRawLkPyramidPlan(
        width, height,
        if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            SPATIAL_ALIGN_MAX_TILE_SIZE
        } else {
            SABRE_ALIGN_MAX_TILE_SIZE
        },
    )
    private val conservativeRgbFlowBounds = MgcSpatialRgbFlowBounds(
        -alignmentPlan.maximumDisplacement,
        -alignmentPlan.maximumDisplacement,
        alignmentPlan.maximumDisplacement,
        alignmentPlan.maximumDisplacement,
    )

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        if (frames.isNotEmpty()) {
            PLog.i(
                TAG,
                "MGC RAW black levels master=${canonicalBlackLevel.contentToString()} " +
                    "perFrame=${frames.map { frame ->
                        canonicalBlackLevelForFrame(frame).contentToString()
                    }}",
            )
        }
        if (processorPipeline == MgcRawProcessorPipeline.SABRE) {
            return processSabreFrames(frames)
        }
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
        if (images.any {
                sourceBounds.left < 0 || sourceBounds.top < 0 ||
                    sourceBounds.right > it.width || sourceBounds.bottom > it.height ||
                    sourceBounds.width() != width || sourceBounds.height() != height
            }
        ) {
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
                "MGC Spatial noise profile is unavailable for the selected source " +
                    "(${noiseProfileSelection.id})",
            )
            images.forEach { it.close() }
            return null
        }
        val hasAuxiliaryFrames = frames.size > 1
        var cpuOutput: ByteBuffer? = null
        var returned = false
        var exportedBayerTexture = 0
        var exportedRgbTexture = 0
        var exportedRgbCompletionTimeline: GpuStackCompletionTimeline? = null
        var strengthCapture: StrengthCapture? = null
        var fastMomentsRawStats: RawSceneAERawStats? = null
        val processStartNs = System.nanoTime()
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles3()
            val hasBentoCandidate = frames.any { frame ->
                frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT
            }
            val hasShadowLongFrame = frames.any { frame ->
                frame.role == RawBurstFrameRole.SHADOW_LONG
            }
            val programInitStartNs = System.nanoTime()
            initPrograms(
                includeBentoAssessment = hasBentoCandidate,
                includeReferenceHighlightMask = hasBentoCandidate || hasShadowLongFrame,
                includeTemporalProcessing = hasAuxiliaryFrames,
            )
            val programInitMs = (System.nanoTime() - programInitStartNs) / 1_000_000L
            renderFbo = createFramebuffer()
            applyRawRenderState()
            PLog.i(
                TAG,
                "MGC Spatial domains " +
                    "bayerQuad=${rejectionGeometry.bayerQuadWidth}x" +
                    "${rejectionGeometry.bayerQuadHeight} " +
                    "guide=${guideWidth}x$guideHeight " +
                    "rejection=${rejectionWidth}x$rejectionHeight " +
                    "mergeWeight=${mergeWeightWidth}x$mergeWeightHeight " +
                    "rgbAotRejection=${if (outputMode == MgcSpatialOutputMode.RGB) {
                        "RAW/4-direct"
                    } else {
                        "disabled"
                    }} " +
                    "filter=${rejectionFilterWidth}x$rejectionFilterHeight " +
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
                    "scale=$UNBLOCKER_OUTPUT_SCALE offset=$UNBLOCKER_OUTPUT_OFFSET " +
                    "postBlur=binomial3x3U8",
            )
            val referenceRaw = createTexture(
                width,
                height,
                GLES30.GL_R16UI,
                GLES30.GL_NEAREST,
            )
            val currentRaw = if (hasAuxiliaryFrames) {
                createTexture(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
            } else {
                0
            }
            val needsSabreCovariance = mergeMethod == MgcMergeMethod.SABRE
            val needsReferencePreparation = hasAuxiliaryFrames || needsSabreCovariance
            val referenceGuide = if (needsReferencePreparation) {
                createTexture(guideWidth, guideHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
            } else {
                0
            }
            val currentGuide = if (hasAuxiliaryFrames) {
                createTexture(guideWidth, guideHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
            } else {
                0
            }
            val referenceCovariance = if (needsSabreCovariance) {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_RGB10_A2,
                    GLES30.GL_LINEAR,
                )
            } else {
                0
            }
            val currentCovariance = if (needsSabreCovariance && hasAuxiliaryFrames) {
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
            val zeroLinearKernelMask = if (outputMode == MgcSpatialOutputMode.BAYER) {
                createZeroLinearKernelMaskTexture()
            } else {
                0
            }
            val accumulatorColor = if (outputMode == MgcSpatialOutputMode.BAYER) {
                createTexture(
                    width,
                    height,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_NEAREST,
                )
            } else {
                0
            }
            val rgbMergeFrames = ArrayList<RgbMergeFrame>(frames.size)
            val referenceExposure = validExposureProduct(frames.first().exposureProduct)
            val bayerKernelTuning = createBayerKernelTuning(
                frame = frames.first(),
                image = images.first(),
                frameCount = frames.size,
            )
            val finishRawSharpenAttenuationScale =
                MgcSabreResolveTuning.demosaicSharpness(
                    desiredExposureProduct = frames.first().desiredExposureProduct,
                    actualExposureProduct = frames.first().exposureProduct,
                )
            val perFrameCamera2Profiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.CAMERA2_PER_FRAME
            }
            val calibratedProfiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.GCAM_CALIBRATED
            }
            val systemFallbackProfiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.GCAM_SYSTEM_FALLBACK
            }
            val calibratedProfile = (noiseProfileSelection as? RawNoiseProfileSelection.Calibrated)
                ?.profile
            val profileSource = when (val selection = noiseProfileSelection) {
                is RawNoiseProfileSelection.Calibrated ->
                    selection.profile.maxAnalogSensitivity?.let { maxAnalog ->
                        "gcam-c:${selection.profile.id} profileMaxAnalog=$maxAnalog"
                    } ?: "mgc-override:${selection.profile.id} cameraGainSplit=enabled"
                is RawNoiseProfileSelection.Camera2 ->
                    "Camera2 SENSOR_NOISE_PROFILE fallback=gcam-c:" +
                        selection.fallbackProfile.id
            }
            PLog.i(
                TAG,
                "MGC Spatial noise profile source=$profileSource " +
                    "perFrame=$perFrameCamera2Profiles/${frames.size} " +
                    "systemFallback=$systemFallbackProfiles/${frames.size} " +
                    "calibrated=$calibratedProfiles/${frames.size}",
            )
            calibratedProfile?.let { profile ->
                val compatibleIso = frames.map { frame ->
                    profile.compatibleSensitivityAt(frame.sensitivityIso)
                }
                val compatibleMax = if (
                    profile.maximumCompatibleSensitivity == Int.MAX_VALUE
                ) {
                    "unbounded"
                } else {
                    profile.maximumCompatibleSensitivity.toString()
                }
                PLog.i(
                    TAG,
                    "MGC Spatial calibrated per-frame gain " +
                        "iso=${frames.map { it.sensitivityIso }} " +
                        "minimumIso=${frames.map { it.minimumSensitivityIso }} " +
                        "maximumAnalogIso=${frames.map { it.maximumAnalogSensitivityIso }} " +
                        "compatibleIso=$compatibleIso " +
                        "compatibleMin=${profile.minimumCompatibleSensitivity} compatibleMax=$compatibleMax " +
                        "overallGain=${compatibleIso.mapIndexed { index, iso ->
                            iso?.let {
                                profile.overallGainAt(it, frames[index].minimumSensitivityIso)
                            }
                        }} " +
                        "analogGain=${compatibleIso.mapIndexed { index, iso ->
                            iso?.let {
                                profile.analogGainAt(
                                    it,
                                    frames[index].minimumSensitivityIso,
                                    frames[index].maximumAnalogSensitivityIso,
                                )
                            }
                        }} " +
                        "digitalGain=${compatibleIso.mapIndexed { index, iso ->
                            iso?.let {
                                profile.digitalGainAt(
                                    it,
                                    frames[index].minimumSensitivityIso,
                                    frames[index].maximumAnalogSensitivityIso,
                                )
                            }
                        }}",
                )
            }
            val referenceCalibration = calibrationForFrame(
                frame = frames.first(),
                exposureScale = 1f,
                kernelTuning = bayerKernelTuning,
            )
            // §2.2 of docs/photon-multiscale-denoise.md: every merged frame enters with its
            // nominal global weight; the per-pixel rejection maps are not part of the model.
            val photonMergeNoise = PhotonMergeNoise(
                RawDenoisePipeline.SPATIAL,
                referenceCalibration.cameraRgbReadNoise,
                referenceCalibration.cameraRgbShotNoise,
                width,
                height,
            ).also { mergeNoise = it }
            // [acceptance] is the weight texture the merge samples for this frame (0: none).
            fun admitMergeNoise(calibration: FrameCalibration, acceptance: Int) = photonMergeNoise.add(
                calibration.globalFrameWeight,
                calibration.cameraRgbReadNoise,
                calibration.cameraRgbShotNoise,
                acceptance,
            )
            PLog.i(
                TAG,
                "MGC Spatial Bayer kernel referenceSnr=${bayerKernelTuning.referenceSnr} " +
                    "baseSpatialScale=${bayerKernelTuning.baseSpatialScale} " +
                    "referenceSigma=${referenceCalibration.kernelSigma} " +
                    "alignmentInputGain=${referenceCalibration.alignmentGain} " +
                    "alignmentDomain=signed-s16",
            )
            val rawUploadStartNs = System.nanoTime()
            uploadRaw(images.first(), referenceRaw, "reference")
            if (computeFastMomentsRawStats) {
                check(supportsComputePrograms) {
                    "Fast Moments selected-base statistics require GLES 3.1"
                }
                val statsStartNs = System.nanoTime()
                val statsResult = GlesRawAEStats(
                    width = width,
                    height = height,
                    cfaPattern = cfaPattern,
                    blackLevel = canonicalBlackLevelForFrame(frames.first()),
                    whiteLevel = sensorWhiteLevelCode,
                    maxShaderStorageBlockBytes = maxShaderStorageBlockBytes,
                ).build(referenceRaw)
                fastMomentsRawStats = statsResult.stats
                PLog.i(
                    TAG,
                    "Fast Moments reused Spatial reference upload size=" +
                        "${statsResult.stats.width}x${statsResult.stats.height} " +
                        "source=${width}x$height frame=${frames.first().frameNumber} " +
                        "submitMs=${statsResult.submitMs} gpuWaitMs=${statsResult.gpuWaitMs} " +
                        "mapMs=${statsResult.mapMs} totalMs=${elapsedMs(statsStartNs)}",
                )
            }
            val rawTextureCount = if (hasAuxiliaryFrames) 2 else 1
            PLog.i(
                TAG,
                "MGC Spatial RAW temporal window textures=$rawTextureCount " +
                    "bytes=${width.toLong() * height * RAW_BYTES_PER_PIXEL * rawTextureCount} " +
                    "referenceUpload=1 took=" +
                    "${(System.nanoTime() - rawUploadStartNs) / 1_000_000L}ms",
            )
            // MGC's GenerateBaseFrameLuma and GuideImage::Create prepare this noise-aware guide,
            // and alignment pyramid directly from the reference RAW. User-controlled luma/chroma
            // denoise remains a later RAW-render stage, not reference-frame preprocessing.
            val referenceNoiseLut = if (needsReferencePreparation) {
                createNoiseLut(referenceCalibration, referenceCalibration)
            } else {
                0
            }
            if (needsReferencePreparation) {
                renderGuide(
                    rawTexture = referenceRaw,
                    noiseTexture = referenceNoiseLut,
                    calibration = referenceCalibration,
                    guideTexture = referenceGuide,
                    forceReferenceColorRgb = 0f,
                )
            }
            if (needsSabreCovariance) {
                renderCovariance(
                    rawTexture = referenceRaw,
                    noiseTexture = referenceNoiseLut,
                    calibration = referenceCalibration,
                    outputTexture = referenceCovariance,
                )
                currentMergeCovariance = referenceCovariance
            }
            val referenceGrayPyramid = if (hasAuxiliaryFrames) {
                buildGrayPyramid(rawTexture = referenceRaw, calibration = referenceCalibration)
            } else {
                emptyList()
            }
            val referenceRejectionLuma = if (hasAuxiliaryFrames) {
                buildRejectionBaseLuma(referenceGrayPyramid)
            } else {
                0
            }
            val referenceAlignmentProducts = if (hasAuxiliaryFrames) {
                buildReferenceAlignmentProducts(referenceGrayPyramid)
            } else {
                emptyList()
            }
            if (hasAuxiliaryFrames) GlesGpuScheduler.yieldToUiRenderer()

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
                                "flowAndTemporalMerge=enabled " +
                                    "rejectionWeights=identity includingBento=true"
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
            var acceptedBentoExposureRatio: Float? = null
            val ultrashortIndex = if (referenceOnly) {
                -1
            } else {
                frames.indexOfFirst { frame ->
                    frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT
                }
            }
            val referenceHighlightMask = if (
                !referenceOnly && (ultrashortIndex >= 0 || hasShadowLongFrame)
            ) {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_R8,
                    GLES30.GL_NEAREST,
                ).also { output ->
                    // Assess reference saturation from native CFA codes on the RAW/2 guide
                    // grid, so no clipped reference sample stays outside the highlight mask.
                    val referenceSensorClipping = renderAlignedRawClippingMask(
                        rawTexture = referenceRaw,
                        flow = ConvertedAlignment.constant(zeroFlow),
                        calibration = referenceCalibration,
                        outputWidth = guideWidth,
                        outputHeight = guideHeight,
                        bayerQuadsPerTexel = 1,
                        clippingThreshold = BENTO_MAX_RGB_CLIPPING / 255f,
                    )
                    renderBentoHighlightMask(
                        baseFrame = referenceGuide,
                        sensorClipping = referenceSensorClipping,
                        outputMask = output,
                    )
                    releaseOwnedTexture(referenceSensorClipping, "reference sensor clipping")
                }
            } else {
                0
            }
            val bentoExposureRatio = ultrashortIndex.takeIf { it >= 0 }?.let { index ->
                (
                    referenceExposure /
                        validExposureProduct(frames[index].exposureProduct)
                    ).toFloat().also { ratio ->
                        check(ratio.isFinite() && ratio > 1f) {
                            "MGC Bento requires baseTET/ultrashortTET > 1.0, got $ratio"
                        }
                    }
            }
            var baseHighlightClippedRatio = 0f
            var baseHighlightClippedPixels = 0
            var baseHighlightMask: ByteArray? = null
            if (ultrashortIndex >= 0) {
                check(referenceHighlightMask != 0)
                val gateStartNs = System.nanoTime()
                if (bentoHighlightCountProgram != 0) {
                    val gpuCount = countActiveMaskPixelsGpu(
                        texture = referenceHighlightMask,
                        label = "MGC Bento base highlight gate",
                    )
                    baseHighlightClippedRatio =
                        gpuCount.activePixels.toFloat() / (guideWidth * guideHeight).toFloat()
                    baseHighlightClippedPixels = gpuCount.activePixels
                    PLog.i(
                        TAG,
                        "MGC Bento base gate mode=compute-ssbo eligible=" +
                            "${baseHighlightClippedPixels > 0} " +
                            "clipped=${gpuCount.activePixels}/${guideWidth * guideHeight} " +
                            "ratio=$baseHighlightClippedRatio " +
                            "threshold=nonzero " +
                            "setup=${gpuCount.setupNs / 1_000_000L}ms " +
                            "submit=${gpuCount.submitNs / 1_000_000L}ms " +
                            "gpuWait=${gpuCount.gpuWaitMs}ms " +
                            "map=${gpuCount.mapNs / 1_000_000L}ms " +
                            "total=${elapsedMs(gateStartNs)}ms",
                    )
                } else {
                    val gpuWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Bento base highlight gate",
                        checkGlError = ::checkGlError,
                    )
                    val readStartNs = System.nanoTime()
                    val mask = readR8Mask(
                        texture = referenceHighlightMask,
                        label = "Bento base highlight gate",
                    )
                    val readNs = System.nanoTime() - readStartNs
                    val countStartNs = System.nanoTime()
                    val clippedPixels = countActiveMaskPixels(mask)
                    val countNs = System.nanoTime() - countStartNs
                    baseHighlightMask = mask
                    baseHighlightClippedPixels = clippedPixels
                    baseHighlightClippedRatio = clippedPixels.toFloat() / mask.size.toFloat()
                    PLog.i(
                        TAG,
                        "MGC Bento base gate mode=cpu-readback eligible=" +
                            "${baseHighlightClippedPixels > 0} " +
                            "clipped=$clippedPixels/${mask.size} " +
                            "ratio=$baseHighlightClippedRatio " +
                            "threshold=nonzero " +
                            "gpuWait=${gpuWaitMs}ms " +
                            "read=${readNs / 1_000_000L}ms " +
                            "count=${countNs / 1_000_000L}ms " +
                            "total=${elapsedMs(gateStartNs)}ms",
                    )
                }
            }
            val evaluateBentoCandidate = ultrashortIndex >= 0 &&
                baseHighlightClippedPixels > 0
            val bentoMask = if (evaluateBentoCandidate) {
                createTexture(
                    guideWidth,
                    guideHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
            } else {
                null
            }
            if (ultrashortIndex >= 0 && !evaluateBentoCandidate) {
                PLog.i(
                    TAG,
                    "Bento assessment accepted=false reason=no_clipped_pixels " +
                        "clippedRatio=$baseHighlightClippedRatio largestInpaintingArea=0 " +
                        "ultrashortOverlap=0.0 " +
                        "exposureRatio=$bentoExposureRatio earlyGate=true",
                )
            }
            val bentoRaw = currentRaw
            val bentoGuide = currentGuide
            if (evaluateBentoCandidate) {
                val bentoScheduleStartNs = System.nanoTime()
                var bentoUploadCallNs = 0L
                var bentoPreAlignSubmitNs = 0L
                var bentoAlignAndAdmissionNs = 0L
                var bentoPostAlignNs = 0L
                val transientTextureStart = textures.size
                val ultrashortFrame = frames[ultrashortIndex]
                try {
                    val exposureRatio = checkNotNull(bentoExposureRatio)
                    val normalizedCalibration = calibrationForFrame(
                        ultrashortFrame,
                        exposureRatio,
                        bayerKernelTuning,
                    )
                    val uploadStartNs = System.nanoTime()
                    uploadRaw(images[ultrashortIndex], bentoRaw, "ultrashort")
                    bentoUploadCallNs = System.nanoTime() - uploadStartNs
                    val preAlignStartNs = System.nanoTime()
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
                    if (needsSabreCovariance) {
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
                    bentoPreAlignSubmitNs = System.nanoTime() - preAlignStartNs
                    val alignmentStartNs = System.nanoTime()
                    val forwardAlignment = alignPyramids(
                        reference = referenceGrayPyramid,
                        current = ultrashortGrayPyramid,
                        referenceProducts = referenceAlignmentProducts,
                    )
                    val reverseTextureStart = textures.size
                    val reverseAlignment = alignPyramids(
                        reference = ultrashortGrayPyramid,
                        current = referenceGrayPyramid,
                        referenceProducts = buildReferenceAlignmentProducts(ultrashortGrayPyramid),
                    )
                    check(forwardAlignment.gridWidth == reverseAlignment.gridWidth &&
                        forwardAlignment.gridHeight == reverseAlignment.gridHeight)
                    val collarSupport = createTexture(
                        forwardAlignment.gridWidth,
                        forwardAlignment.gridHeight,
                        GLES30.GL_RGBA32F,
                        GLES30.GL_NEAREST,
                    )
                    renderBentoCollarSupport(
                        baseGuide = referenceGuide,
                        shortGuide = bentoGuide,
                        highlightMask = referenceHighlightMask,
                        forwardAlignment = forwardAlignment,
                        reverseAlignment = reverseAlignment,
                        output = collarSupport,
                    )
                    val collarSupportValues = readRgba32f(
                        collarSupport,
                        forwardAlignment.gridWidth,
                        forwardAlignment.gridHeight,
                        "Bento collar support",
                    )
                    releaseTexturesFrom(reverseTextureStart)
                    val forwardAlignmentValues = readRgba32f(
                        forwardAlignment.texture,
                        forwardAlignment.gridWidth,
                        forwardAlignment.gridHeight,
                        "Bento forward alignment",
                    )
                    val admission = BentoRegionAdmission(
                        width = guideWidth,
                        height = guideHeight,
                        gridWidth = forwardAlignment.gridWidth,
                        gridHeight = forwardAlignment.gridHeight,
                        tileStride = forwardAlignment.tileStride,
                        highlightMask = baseHighlightMask ?: readR8Mask(
                            referenceHighlightMask,
                            "Bento base highlight regions",
                        ).also { baseHighlightMask = it },
                        alignment = forwardAlignmentValues,
                        support = collarSupportValues,
                    )
                    // Null means no tile in the frame verifies the short's geometry; the
                    // measured flow is kept only to finish the masks and Bento is rejected.
                    val geometry = admission.resolveGeometry()
                    val alignment = forwardAlignment.copy(texture = createFloatTexture(
                        width = forwardAlignment.gridWidth,
                        height = forwardAlignment.gridHeight,
                        internalFormat = GLES30.GL_RGBA32F,
                        format = GLES30.GL_RGBA,
                        values = geometry?.alignment ?: forwardAlignmentValues,
                        filter = GLES30.GL_NEAREST,
                    ))
                    bentoAlignAndAdmissionNs = System.nanoTime() - alignmentStartNs
                    val postAlignStartNs = System.nanoTime()
                    val bayerAlignment = alignment.texture
                    val flow = createConvertedAlignment(alignment)

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
                    val inpaintingMask = createTexture(
                        guideWidth,
                        guideHeight,
                        GLES30.GL_R8,
                        GLES30.GL_NEAREST,
                    )
                    check(referenceHighlightMask != 0)
                    renderBentoAdjustedMask(
                        baseFrame = referenceGuide,
                        ultrashortFrame = unscaledGuide,
                        highlightMask = referenceHighlightMask,
                        flow = flow,
                        exposureRatio = exposureRatio,
                        adjustedMask = checkNotNull(bentoMask),
                        inpaintingMask = inpaintingMask,
                    )
                    // WB-balanced guides can exceed one before sensor saturation, and their
                    // spatial average can hide a clipped green phase. Test all four native
                    // CFA phases around the aligned merge footprint in the short's own domain
                    // for diagnostics. A saturated core does not reject its whole region.
                    val ultrashortClippingMask = renderAlignedRawClippingMask(
                        rawTexture = bentoRaw,
                        flow = flow,
                        calibration = unscaledCalibration,
                        outputWidth = guideWidth,
                        outputHeight = guideHeight,
                        bayerQuadsPerTexel = 1,
                        clippingThreshold = BENTO_MAX_RGB_CLIPPING / 255f,
                    )
                    val assessmentReadStartNs = System.nanoTime()
                    val assessmentGpuWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Bento assessment masks",
                        checkGlError = ::checkGlError,
                    )
                    val assessment = assessBentoMasks(
                        baseHighlightMask = checkNotNull(baseHighlightMask),
                        inpaintingMask = readR8Mask(inpaintingMask, "Bento inpainting mask"),
                        ultrashortClippingMask = readR8Mask(
                            ultrashortClippingMask,
                            "Bento ultrashort clipping mask",
                        ),
                        hasAlignmentSupport = geometry != null,
                    )
                    PLog.i(
                        TAG,
                        "Bento assessment accepted=${assessment.accepted} " +
                            "reason=${assessment.reason} " +
                            "clippedRatio=${assessment.clippedPixelRatio} " +
                            "largestInpaintingArea=${assessment.largestInpaintingArea} " +
                            "ultrashortOverlap=${assessment.ultrashortClippingOverlap} " +
                            "regions=${geometry?.regions} " +
                            "collarFlowRegions=${geometry?.collarRegions} " +
                            "globalFlowRegions=${geometry?.globalRegions} " +
                            "shortClippingDomain=sensor " +
                            "shortClippingDiagnosticOnly=true " +
                            "exposureRatio=$exposureRatio earlyGate=false " +
                            "gpuWait=${assessmentGpuWaitMs}ms " +
                            "readAndAssess=${elapsedMs(assessmentReadStartNs)}ms",
                    )
                    if (assessment.accepted) {
                        bentoAccepted = true
                        acceptedBentoExposureRatio = exposureRatio
                        // V25 SpatialMerge (0x367abf4) replaces the accepted Bento slice's
                        // MaximumMergeWeight with 1, then derives its kernel sigma from that
                        // weight. Keeping the exposure-scaled noise weight here makes an R8
                        // mask's last step to 1 abruptly switch from clipped base to ultrashort.
                        // Share this calibration with Bayer/RGB merge and strength capture so
                        // their weights and kernel sigmas describe the same selected frame.
                        val selectedMergeWeight = SPATIAL_IDENTITY_MULTIPLIER
                        val selectedCalibration = normalizedCalibration.copy(
                            globalFrameWeight = selectedMergeWeight,
                            rejectionWeightScale = selectedMergeWeight,
                            kernelSigma = MgcSpatialMergeTuning.kernelSigma(
                                baseSpatialScale = bayerKernelTuning.baseSpatialScale,
                                mergeWeight = selectedMergeWeight,
                            ),
                        )
                        bentoCalibration = selectedCalibration
                        bentoFlowTexture = flow.texture
                        bentoBayerAlignmentTexture = bayerAlignment
                        PLog.i(
                            TAG,
                            "MGC Bento selected calibration index=$ultrashortIndex " +
                                "noiseWeight=${normalizedCalibration.globalFrameWeight} " +
                                "mergeWeight=${selectedCalibration.globalFrameWeight} " +
                                "kernelSigma=${selectedCalibration.kernelSigma} " +
                                "inputGain=${selectedCalibration.inputGain}",
                        )
                    }
                    bentoPostAlignNs = System.nanoTime() - postAlignStartNs
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
                PLog.i(
                    TAG,
                    "MGC Bento frame schedule index=$ultrashortIndex " +
                        "frame=${ultrashortFrame.frameNumber} " +
                        "uploadCall=${bentoUploadCallNs / 1_000_000L}ms " +
                        "preAlignSubmit=${bentoPreAlignSubmitNs / 1_000_000L}ms " +
                        "alignAndAdmission=${bentoAlignAndAdmissionNs / 1_000_000L}ms " +
                        "postAlignAndAssessment=${bentoPostAlignNs / 1_000_000L}ms " +
                        "totalCpu=${elapsedMs(bentoScheduleStartNs)}ms",
                )
            }
            if (evaluateBentoCandidate && !bentoAccepted) {
                releaseOwnedTexture(checkNotNull(bentoMask), "rejected Bento mask")
            }
            if (ultrashortIndex >= 0 && !bentoAccepted) {
                images[ultrashortIndex].close()
            }

            val outputExposure = MgcSpatialOutputExposure.forAcceptedUltrashort(
                acceptedBentoExposureRatio,
            )
            PLog.i(
                TAG,
                "MGC Spatial output exposure normalizationScale=" +
                    "${outputExposure.normalizationScale} " +
                    "baselineExposureEv=${outputExposure.baselineExposureEv} " +
                    "domain=${if (bentoAccepted) "ultrashort" else "reference"}",
            )

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

            if (bentoAccepted || hasShadowLongFrame) initBentoMergePrograms()
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
            val bentoRgbBaseRejection = if (
                bentoAccepted && outputMode == MgcSpatialOutputMode.RGB
            ) {
                createTexture(
                    mergeWeightWidth,
                    mergeWeightHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                ).also { output ->
                    // FinishSpatialRGB masks every non-selected rejection slice with clipped
                    // highlights in RAW/4. Only the selected ultrashort slice is overwritten by
                    // the Bento mask itself.
                    renderBentoRewrittenWeight(
                        existingWeight = identityWeight,
                        bentoMask = checkNotNull(bentoMask),
                        outputWeight = output,
                        hasExistingWeight = false,
                        outputWidth = mergeWeightWidth,
                        outputHeight = mergeWeightHeight,
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
            // The RGB AOT merge consumes the captured alignment / rejection atlases.
            if (outputMode == MgcSpatialOutputMode.RGB) {
                strengthCapture = createStrengthCapture(
                    frameCount = spatialNoiseFrameCount,
                    referenceCalibration = referenceCalibration,
                )
            }
            var capturedFrameIndex = 0

            fun admitRgbFrame(frame: RgbMergeFrame) {
                rgbMergeFrames += frame
            }

            if (outputMode == MgcSpatialOutputMode.BAYER) {
                clearAccumulator(accumulatorColor)
            }
            if (bentoAccepted) {
                val diagnosticBentoBaseWeight = if (identityTemporalWeights) {
                    identityWeight
                } else {
                    bentoBaseWeight
                }
                val diagnosticBentoShortWeight = if (identityTemporalWeights) {
                    identityWeight
                } else {
                    bentoShortWeight
                }
                if (outputMode == MgcSpatialOutputMode.BAYER) {
                    currentMergeCovariance = referenceCovariance
                    renderMerge(
                        rawTexture = referenceRaw,
                        bayerAlignmentTexture = zeroFlow,
                        weightTexture = diagnosticBentoBaseWeight,
                        linearKernelMaskTexture = linearKernelMask,
                        calibration = referenceCalibration,
                        accumulatorColor = accumulatorColor,
                        useFrameWeight = true,
                    )
                }
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    admitRgbFrame(
                        frame = RgbMergeFrame(
                            imageIndex = 0,
                            calibration = referenceCalibration,
                            alignmentTexture = zeroFlow,
                            weightTexture = diagnosticBentoBaseWeight,
                            covarianceTexture = referenceCovariance,
                            flowBounds = MgcSpatialRgbFlowBounds.Zero,
                            useFrameWeight = true,
                        ),
                    )
                }
                val baseAcceptance = when {
                    identityTemporalWeights -> identityWeight
                    outputMode == MgcSpatialOutputMode.RGB -> bentoRgbBaseRejection
                    else -> bentoBaseWeight
                }
                admitMergeNoise(referenceCalibration, baseAcceptance)
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        rejectionTexture = baseAcceptance,
                        identityRejection = identityTemporalWeights,
                    )
                }
                // MGC overwrites the selected ultrashort rejection slice with the Bento mask.
                if (outputMode == MgcSpatialOutputMode.BAYER) {
                    currentMergeCovariance = currentCovariance
                    renderMerge(
                        rawTexture = bentoRaw,
                        bayerAlignmentTexture = bentoBayerAlignmentTexture,
                        weightTexture = diagnosticBentoShortWeight,
                        linearKernelMaskTexture = linearKernelMask,
                        calibration = checkNotNull(bentoCalibration),
                        accumulatorColor = accumulatorColor,
                        useFrameWeight = true,
                    )
                }
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    admitRgbFrame(
                        frame = RgbMergeFrame(
                            imageIndex = ultrashortIndex,
                            calibration = checkNotNull(bentoCalibration),
                            alignmentTexture = bentoBayerAlignmentTexture,
                            weightTexture = diagnosticBentoShortWeight,
                            covarianceTexture = bentoRgbCovarianceTexture,
                            flowBounds = conservativeRgbFlowBounds,
                            useFrameWeight = true,
                        ),
                    )
                }
                val shortAcceptance = when {
                    identityTemporalWeights -> identityWeight
                    // bentoMask is on the RAW/2 guide domain. RGB AOT consumes an
                    // exact RAW/4 rejection/acceptance plane, so use the already
                    // resampled selected-short weight instead of cropping the RAW/2
                    // texture through strengthRejection's exact-domain texelFetch.
                    outputMode == MgcSpatialOutputMode.RGB -> diagnosticBentoShortWeight
                    else -> bentoShortWeight
                }
                admitMergeNoise(checkNotNull(bentoCalibration), shortAcceptance)
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = checkNotNull(bentoCalibration),
                        alignmentTexture = bentoBayerAlignmentTexture,
                        rejectionTexture = shortAcceptance,
                        identityRejection = identityTemporalWeights,
                    )
                }
                mergedFrames = 2
            } else {
                if (outputMode == MgcSpatialOutputMode.BAYER) {
                    currentMergeCovariance = referenceCovariance
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
                if (outputMode == MgcSpatialOutputMode.RGB) {
                    admitRgbFrame(
                        frame = RgbMergeFrame(
                            imageIndex = 0,
                            calibration = referenceCalibration,
                            alignmentTexture = zeroFlow,
                            weightTexture = identityWeight,
                            covarianceTexture = referenceCovariance,
                            flowBounds = MgcSpatialRgbFlowBounds.Zero,
                            useFrameWeight = false,
                        ),
                    )
                }
                // Merged without a frame weight texture: acceptance 1 everywhere.
                admitMergeNoise(referenceCalibration, 0)
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        rejectionTexture = identityWeight,
                        identityRejection = true,
                    )
                }
            }

            GlesGpuScheduler.yieldToUiRenderer()

            // Reference/Bento contributions have all been submitted. Their RAW source is no
            // longer sampled below; alternate these two existing allocations for uploads.
            var uploadSlot = 0
            for (index in temporalFrameRange) {
                val frame = frames[index]
                if (frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT) continue
                val frameScheduleStartNs = System.nanoTime()
                var uploadCallNs = 0L
                var prepareCallNs = 0L
                var postPrepareSubmitNs = 0L
                beginTemporalScratchFrame()
                try {
                    val temporalRaw = (if (uploadSlot++ % 2 == 0) currentRaw else referenceRaw).also { texture ->
                        val uploadStartNs = System.nanoTime()
                        uploadRaw(images[index], texture, "frame $index")
                        uploadCallNs = System.nanoTime() - uploadStartNs
                    }
                    val prepareStartNs = System.nanoTime()
                    val prepared = prepareTemporalFrame(
                        frame = frame,
                        referenceExposure = referenceExposure,
                        referenceCalibration = referenceCalibration,
                        referenceGuide = referenceGuide,
                        referenceGrayPyramid = referenceGrayPyramid,
                        referenceRejectionLuma = referenceRejectionLuma,
                        referenceAlignmentProducts = referenceAlignmentProducts,
                        currentRaw = temporalRaw,
                        currentGuide = currentGuide,
                        currentCovariance = currentCovariance,
                        kernelTuning = bayerKernelTuning,
                    )
                    prepareCallNs = System.nanoTime() - prepareStartNs
                    val postPrepareStartNs = System.nanoTime()
                    val (mergeExclusionMasks, rgbAotExclusionMasks) =
                        if (identityTemporalWeights) {
                            IntArray(0) to IntArray(0)
                    } else {
                        when (frame.role) {
                            RawBurstFrameRole.SHADOW_LONG -> {
                                check(referenceHighlightMask != 0) {
                                    "Long-frame merge requires the reference highlight mask"
                                }
                                val alignedMergeClippingMask =
                                    renderAlignedRawClippingMask(
                                        rawTexture = temporalRaw,
                                        flow = prepared.convertedAlignment,
                                        calibration = prepared.calibration,
                                        outputWidth = mergeWeightWidth,
                                        outputHeight = mergeWeightHeight,
                                        bayerQuadsPerTexel = 2,
                                    )
                                val mergeMasks = intArrayOf(
                                    referenceHighlightMask,
                                    alignedMergeClippingMask,
                                )
                                val rgbMasks = if (
                                    outputMode == MgcSpatialOutputMode.RGB
                                ) {
                                    val alignedRgbClippingMask =
                                        renderAlignedRawClippingMask(
                                            rawTexture = temporalRaw,
                                            flow = prepared.convertedAlignment,
                                            calibration = prepared.calibration,
                                            outputWidth = mergeWeightWidth,
                                            outputHeight = mergeWeightHeight,
                                            bayerQuadsPerTexel = 2,
                                        )
                                    intArrayOf(
                                        referenceHighlightMask,
                                        alignedRgbClippingMask,
                                    )
                                } else {
                                    IntArray(0)
                                }
                                PLog.d(
                                    TAG,
                                    "MGC long-frame highlight guard frame=$index " +
                                        "referenceClipping=true sourceRawClipping=true " +
                                        "threshold=$LONG_FRAME_RAW_CLIPPING_THRESHOLD",
                                )
                                mergeMasks to rgbMasks
                            }
                            else -> if (bentoAccepted) {
                                val masks = intArrayOf(checkNotNull(bentoMask))
                                masks to masks
                            } else {
                                IntArray(0) to IntArray(0)
                            }
                        }
                    }
                    val mergeWeight = if (identityTemporalWeights) {
                        identityWeight
                    } else {
                        var maskedWeight = prepared.weightTexture
                        mergeExclusionMasks.forEach { exclusionMask ->
                            val outputWeight = createTexture(
                                mergeWeightWidth,
                                mergeWeightHeight,
                                GLES30.GL_R8,
                                GLES30.GL_LINEAR,
                            )
                            renderBentoRewrittenWeight(
                                existingWeight = maskedWeight,
                                bentoMask = exclusionMask,
                                outputWeight = outputWeight,
                                hasExistingWeight = true,
                            )
                            maskedWeight = outputWeight
                        }
                        maskedWeight
                    }
                    val rgbAotRejection = when {
                        outputMode != MgcSpatialOutputMode.RGB -> 0
                        identityTemporalWeights -> identityWeight
                        else -> {
                            var maskedRejection = prepared.rgbAotRejectionTexture
                            check(maskedRejection != 0) {
                                "Spatial RGB temporal frame has no RAW/4 AOT acceptance slice"
                            }
                            rgbAotExclusionMasks.forEach { exclusionMask ->
                                val outputRejection = createTexture(
                                    mergeWeightWidth,
                                    mergeWeightHeight,
                                    GLES30.GL_R8,
                                    GLES30.GL_LINEAR,
                                )
                                renderBentoRewrittenWeight(
                                    existingWeight = maskedRejection,
                                    bentoMask = exclusionMask,
                                    outputWeight = outputRejection,
                                    hasExistingWeight = true,
                                    outputWidth = mergeWeightWidth,
                                    outputHeight = mergeWeightHeight,
                                )
                                maskedRejection = outputRejection
                            }
                            maskedRejection
                        }
                    }
                    if (outputMode == MgcSpatialOutputMode.BAYER) {
                        currentMergeCovariance = currentCovariance
                        renderMerge(
                            rawTexture = temporalRaw,
                            bayerAlignmentTexture = prepared.bayerAlignmentTexture,
                            weightTexture = mergeWeight,
                            linearKernelMaskTexture = linearKernelMask,
                            calibration = prepared.calibration,
                            accumulatorColor = accumulatorColor,
                            useFrameWeight = true,
                        )
                    }
                    if (outputMode == MgcSpatialOutputMode.RGB) {
                        admitRgbFrame(
                            RgbMergeFrame(
                                imageIndex = index,
                                calibration = prepared.calibration,
                                alignmentTexture = prepared.bayerAlignmentTexture,
                                weightTexture = mergeWeight,
                                covarianceTexture = currentCovariance,
                                flowBounds = conservativeRgbFlowBounds,
                                useFrameWeight = true,
                            ),
                        )
                    }
                    val frameAcceptance = if (outputMode == MgcSpatialOutputMode.RGB) {
                        rgbAotRejection
                    } else {
                        mergeWeight
                    }
                    admitMergeNoise(prepared.calibration, frameAcceptance)
                    strengthCapture?.let { capture ->
                        captureStrengthFrame(
                            capture = capture,
                            frameIndex = capturedFrameIndex++,
                            calibration = prepared.calibration,
                            alignmentTexture = prepared.bayerAlignmentTexture,
                            rejectionTexture = frameAcceptance,
                            identityRejection = identityTemporalWeights,
                        )
                    }
                    mergedFrames += 1
                    postPrepareSubmitNs = System.nanoTime() - postPrepareStartNs
                } finally {
                    endTemporalScratchFrame()
                }
                PLog.i(
                    TAG,
                    "MGC Spatial frame schedule index=$index frame=${frame.frameNumber} " +
                        "role=${frame.role} uploadCall=${uploadCallNs / 1_000_000L}ms " +
                        "prepareCall=${prepareCallNs / 1_000_000L}ms " +
                        "postPrepareSubmit=${postPrepareSubmitNs / 1_000_000L}ms " +
                        "totalCpu=${elapsedMs(frameScheduleStartNs)}ms",
                )
                GlesGpuScheduler.yieldToUiRenderer()
            }

            val readyStrengthCapture = strengthCapture?.also { capture ->
                check(capturedFrameIndex == capture.frameCount) {
                    "MGC Spatial noise capture count=$capturedFrameIndex, " +
                        "expected=${capture.frameCount}"
                }
            }
            val lensShadingCorrectionApplied: Boolean
            if (outputMode == MgcSpatialOutputMode.RGB) {
                check(rgbMergeFrames.size == mergedFrames) {
                    "MGC Spatial RGB admitted ${rgbMergeFrames.size} frames, " +
                        "but Bayer/noise merge admitted $mergedFrames"
                }
                val mergeCapture = checkNotNull(readyStrengthCapture) {
                    "MGC Spatial RGB merge inputs were not captured"
                }
                val temporalGpuBytes = estimatedOwnedTextureBytes()
                PLog.i(
                    TAG,
                    "MGC Spatial RGB temporal resources=$temporalGpuBytes " +
                        "advisoryBytes=$RGB_TEXTURE_ADVISORY_BYTES " +
                        "estimateExceedsAdvisory=" +
                        "${temporalGpuBytes > RGB_TEXTURE_ADVISORY_BYTES}",
                )
                val rgbUltrashortWeight = if (bentoAccepted) {
                    rgbMergeFrames.single { it.imageIndex == ultrashortIndex }.weightTexture
                } else {
                    0
                }
                releaseRgbTemporalPhaseResources(
                    // RGB normalization still needs the selected short's actual RAW/4
                    // acceptance to distinguish reference fallback from recovered HDR.
                    persistentTextures = intArrayOf(rgbUltrashortWeight),
                    strengthCapture = mergeCapture,
                )
                val rgbMergeStartNs = System.nanoTime()
                val rgbOutput = renderSpatialRgbMerge(
                    frames = rgbMergeFrames,
                    images = images,
                    outputExposureScale = outputExposure.normalizationScale,
                    ultrashortWeight = rgbUltrashortWeight,
                    mergeSharpness = finishRawSharpenAttenuationScale,
                    capture = mergeCapture,
                )
                cpuOutput = rgbOutput.cpuBuffer
                exportedRgbTexture = rgbOutput.gpuTexture
                exportedRgbCompletionTimeline = rgbOutput.completionTimeline
                lensShadingCorrectionApplied = hasLensShading()
                PLog.i(
                    TAG,
                    "MGC Spatial RGB dispatch complete frames=$mergedFrames " +
                        "took=${(System.nanoTime() - rgbMergeStartNs) / 1_000_000L}ms " +
                        "mode=mgc-v25-merge-rgb-raw16-f16-gles " +
                        "native=${width}x$height",
                )
            } else {
                val bayer16 = renderBayer16(
                    accumulator = accumulatorColor,
                    outputExposureScale = outputExposure.normalizationScale,
                )
                GlesGpuScheduler.yieldToUiRenderer()
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
            val resultLabel = when {
                exportedRgbTexture != 0 -> "${gpuLinearRgbStorage.name}_GPU"
                exportedBayerTexture != 0 -> "BAYER16_GPU"
                outputMode == MgcSpatialOutputMode.RGB -> "RGB16_CPU"
                else -> "BAYER16_CPU"
            }
            PLog.i(
                TAG,
                "MGC Spatial ${outputMode.name} merge complete frames=$mergedFrames " +
                    "output=${outputWidth}x$outputHeight " +
                    "referenceSnr=${bayerKernelTuning.referenceSnr} " +
                    "lscApplied=$lensShadingCorrectionApplied result=$resultLabel " +
                    "programInit=${programInitMs}ms " +
                    "queueMode=${if (outputMode == MgcSpatialOutputMode.RGB) {
                        "mgc-v25-gles"
                    } else {
                        "ordered-continuous"
                    }} " +
                    "total=${(System.nanoTime() - processStartNs) / 1_000_000L}ms",
            )
            val rgbOutput = outputMode == MgcSpatialOutputMode.RGB
            val result = RawStackResult(
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
                baselineExposureEv = outputExposure.baselineExposureEv,
                gpuLinearRgbSource = exportedRgbTexture.takeIf { it != 0 }?.let { textureId ->
                    GpuLinearRgbSource(
                        textureId = textureId,
                        width = outputWidth,
                        height = outputHeight,
                        samplesPerPixel = 4,
                        stackCompletionTimeline = exportedRgbCompletionTimeline,
                        storage = gpuLinearRgbStorage,
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
                denoiseHistory = photonMergeNoise.history(
                    bayerKernelTuning.referenceSignal,
                    outputExposure.normalizationScale,
                ),
                mgcSharpenTuningSnr = bayerKernelTuning.referenceSnr,
                mgcSharpenAttenuationScale = finishRawSharpenAttenuationScale,
                mgcSpatialReferenceOnlyDiagnostic = referenceOnly,
                fastMomentsRawStats = fastMomentsRawStats,
            )
            returned = true
            result
        } catch (error: Exception) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            if (!returned) {
                exportedRgbCompletionTimeline?.releasePending()
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

    private fun processSabreFrames(frames: List<RawStackFrame>): RawStackResult? {
        val images = frames.map { it.image }
        require(outputMode == MgcSpatialOutputMode.RGB) {
            "The native MGC SabreProcessor resolves to linear RGB"
        }
        require(!exportGpuLinearRgbSource || useCurrentGlContext) {
            "MGC Sabre GPU RGB export requires the caller-owned current EGL context"
        }
        if (images.isEmpty() || width <= 1 || height <= 1) {
            images.forEach { it.close() }
            return null
        }
        if ((width and 1) != 0 || (height and 1) != 0) {
            PLog.e(SABRE_TAG, "MGC Sabre requires an even Bayer extent; size=${width}x$height")
            images.forEach { it.close() }
            return null
        }
        if (images.any {
                sourceBounds.left < 0 || sourceBounds.top < 0 ||
                    sourceBounds.right > it.width || sourceBounds.bottom > it.height ||
                    sourceBounds.width() != width || sourceBounds.height() != height
            }
        ) {
            PLog.e(TAG, "MGC Sabre received mixed RAW dimensions")
            images.forEach { it.close() }
            return null
        }
        if (images.any { it.format != ImageFormat.RAW_SENSOR }) {
            PLog.e(TAG, "MGC Sabre only accepts RAW_SENSOR images")
            images.forEach { it.close() }
            return null
        }
        val resolvedNoiseModels = frames.map(::resolveNoiseModelForFrame)
        if (resolvedNoiseModels.any { it.source == RawNoiseModelSource.UNAVAILABLE }) {
            PLog.e(
                TAG,
                "MGC Sabre noise profile is unavailable for ${noiseProfileSelection.id}",
            )
            images.forEach { it.close() }
            return null
        }
        var cpuOutput: ByteBuffer? = null
        var exportedTexture = 0
        var postprocessedUi = 0
        var exportedCompletionTimeline: GpuStackCompletionTimeline? = null
        val completionRecorder = GlesGpuCompletion.StackTimelineRecorder()
        var returned = false
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(SABRE_TAG)
        val processStartNs = System.nanoTime()
        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles3()
            initSabrePrograms()
            renderFbo = createFramebuffer()
            applyRawRenderState()

            val extractedWidth = ceilDiv(width, 2)
            val extractedHeight = ceilDiv(height, 2)
            val coverageWidth = ceilDiv(extractedWidth, 2)
            val coverageHeight = ceilDiv(extractedHeight, 2)
            val referenceRaw = createTexture(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
            val currentRaw = createTexture(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
            val referenceExtracted = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val currentExtracted = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val referenceGuide = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            val currentGuide = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGBA16F,
                GLES30.GL_LINEAR,
            )
            val referenceCovariance = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGB10_A2,
                GLES30.GL_LINEAR,
            )
            val currentCovariance = createTexture(
                extractedWidth,
                extractedHeight,
                GLES30.GL_RGB10_A2,
                GLES30.GL_LINEAR,
            )
            val accumulatedColor = createTexture(
                width,
                height,
                GLES30.GL_RGBA16F,
                GLES30.GL_NEAREST,
            )
            val accumulatedWeightsGb = createTexture(
                width,
                height,
                GLES30.GL_RG16F,
                GLES30.GL_NEAREST,
            )
            val accumulatedCoverage = createTexture(
                coverageWidth,
                coverageHeight,
                GLES30.GL_R8,
                GLES30.GL_LINEAR,
            )
            clearSabreAccumulators(
                accumulatedColor,
                accumulatedWeightsGb,
                accumulatedCoverage,
                coverageWidth,
                coverageHeight,
            )

            val referenceExposure = validExposureProduct(frames.first().exposureProduct)
            val kernelTuning = createBayerKernelTuning(
                frame = frames.first(),
                image = images.first(),
                frameCount = frames.size,
            )
            val sabreKernelParameters = MgcSabreKernelTuning.build(
                referenceSnr = kernelTuning.referenceSnr,
                frameCount = frames.size,
                mergeGradientThreshold = PhotonCoreImagingTuning.fusion.mergeGradientThreshold,
            )
            val sabreResolveParameters = MgcSabreResolveTuning.build(
                referenceSnr = kernelTuning.referenceSnr,
                desiredExposureProduct = frames.first().desiredExposureProduct,
                actualExposureProduct = frames.first().exposureProduct,
            )
            val referenceCalibration = calibrationForFrame(
                frame = frames.first(),
                exposureScale = 1f,
                kernelTuning = kernelTuning,
            )
            // §2.2 of docs/photon-multiscale-denoise.md: Sabre merges its frames with equal
            // nominal weight.
            val photonMergeNoise = PhotonMergeNoise(
                RawDenoisePipeline.SABRE,
                referenceCalibration.cameraRgbReadNoise,
                referenceCalibration.cameraRgbShotNoise,
                width,
                height,
            ).also { mergeNoise = it }.apply {
                // The reference merges without a frame weight texture (useFrameWeight = false).
                add(1f, referenceCalibration.cameraRgbReadNoise, referenceCalibration.cameraRgbShotNoise, 0)
            }
            PLog.i(
                SABRE_TAG,
                "MGC Sabre NoiseModel meanSignal=${kernelTuning.referenceSignal} " +
                    "snr=${kernelTuning.referenceSnr} " +
                    "effectiveSnr=${MgcSabreKernelTuning.effectiveSnr(kernelTuning.referenceSnr, frames.size)} " +
                    "kernelParams=${sabreKernelParameters.directionalScale}," +
                    "${sabreKernelParameters.isotropicScale}," +
                    "${sabreKernelParameters.gradientThreshold}," +
                    "${sabreKernelParameters.gradientTransition}," +
                    "${sabreKernelParameters.anisotropyScale}," +
                    "${sabreKernelParameters.coherenceScale} " +
                    "forceReferenceColorRgb=${sabreKernelParameters.forceReferenceColorRgb} " +
                    "mergeGradientThreshold=${PhotonCoreImagingTuning.fusion.mergeGradientThreshold ?: "adaptive"} " +
                    "guideColorSpace=sqrt noiseLut=qmc64x10 rejectionGuideFilter=bicubic-both-frames " +
                    "alignmentInputGain=${referenceCalibration.alignmentGain} " +
                    "alignmentDomain=signed-s16",
            )
            uploadRaw(images.first(), referenceRaw, "Sabre reference")
            renderSabreExtract(referenceRaw, referenceExtracted, extractedWidth, extractedHeight)
            val referenceNoise = createSabreNoiseLut(
                referenceCalibration,
                referenceCalibration,
            )
            renderSabreGuideAndCovariance(
                extracted = referenceExtracted,
                noiseTexture = referenceNoise,
                calibration = referenceCalibration,
                guide = currentGuide,
                covariance = referenceCovariance,
                guideWidth = extractedWidth,
                guideHeight = extractedHeight,
                kernelParameters = sabreKernelParameters,
            )
            // The base and alternate guides must have the same rejection filter. Reuse the
            // alternate guide as scratch before the loop; its unfiltered base data is no longer
            // needed once the reference color has been prepared (V25 kBaseFrameRefColorEntryPoint).
            renderSabreBaseFrameReferenceColor(
                guide = currentGuide,
                referenceColor = referenceGuide,
                guideWidth = extractedWidth,
                guideHeight = extractedHeight,
            )
            val referenceGrayPyramid = buildGrayPyramid(referenceRaw, referenceCalibration)
            val referenceAlignmentProducts = buildReferenceAlignmentProducts(referenceGrayPyramid)
            val zeroFlow = ConvertedAlignment.constant(createZeroFlowTexture())
            val identityWeight = createIdentityWeightTexture()
            val accumulatedWeightScale = maxSabreAccumulatedWeight(frames.size)
            renderSabreMerge(
                extracted = referenceExtracted,
                flow = zeroFlow,
                covariance = referenceCovariance,
                weight = identityWeight,
                calibration = referenceCalibration,
                accumulatedColor = accumulatedColor,
                accumulatedWeightsGb = accumulatedWeightsGb,
                extractedWidth = extractedWidth,
                extractedHeight = extractedHeight,
                useFrameWeight = false,
            )
            GlesGpuScheduler.yieldToUiRenderer()

            for (index in 1 until frames.size) {
                val transientTextureStart = textures.size
                val frameStartNs = System.nanoTime()
                val frame = frames[index]
                val exposureScale = (
                    referenceExposure / validExposureProduct(frame.exposureProduct)
                    ).toFloat().coerceIn(MIN_EXPOSURE_SCALE, MAX_EXPOSURE_SCALE)
                val calibration = calibrationForFrame(frame, exposureScale, kernelTuning)
                uploadRaw(images[index], currentRaw, "Sabre frame $index")
                renderSabreExtract(currentRaw, currentExtracted, extractedWidth, extractedHeight)
                val noiseTexture = createSabreNoiseLut(referenceCalibration, calibration)
                renderSabreGuideAndCovariance(
                    extracted = currentExtracted,
                    noiseTexture = noiseTexture,
                    calibration = calibration,
                    guide = currentGuide,
                    covariance = currentCovariance,
                    guideWidth = extractedWidth,
                    guideHeight = extractedHeight,
                    kernelParameters = sabreKernelParameters,
                )
                val currentGrayPyramid = buildGrayPyramid(currentRaw, calibration)
                val alignment = alignPyramids(
                    referenceGrayPyramid,
                    currentGrayPyramid,
                    referenceAlignmentProducts,
                    frameIndex = index,
                    finalTileSupport = MgcSabreAlignmentOffset.tileSupport(kernelTuning.referenceSnr),
                )
                val flow = createConvertedAlignment(alignment)
                val unblockerWidth = ceilDiv(width, UNBLOCKER_FULLRES_TILE_SIZE * 2)
                val unblockerHeight = ceilDiv(height, UNBLOCKER_FULLRES_TILE_SIZE * 2)
                val unblocker = createTexture(
                    unblockerWidth,
                    unblockerHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
                renderUnblocker(
                    currentRaw,
                    calibration,
                    unblocker,
                    unblockerWidth,
                    unblockerHeight,
                )
                val reverseWeight = createTexture(
                    extractedWidth,
                    extractedHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
                val pixelDifference = createTexture(
                    extractedWidth,
                    extractedHeight,
                    GLES30.GL_R8,
                    GLES30.GL_NEAREST,
                )
                renderSabreRejection(
                    referenceGuide,
                    currentGuide,
                    flow,
                    unblocker,
                    noiseTexture,
                    reverseWeight,
                    pixelDifference,
                    extractedWidth,
                    extractedHeight,
                )
                val frameWeight = createTexture(
                    coverageWidth,
                    coverageHeight,
                    GLES30.GL_R8,
                    GLES30.GL_LINEAR,
                )
                renderDilation(reverseWeight, frameWeight)
                renderSabreCoverage(
                    frameWeight,
                    accumulatedCoverage,
                    coverageWidth,
                    coverageHeight,
                    accumulatedWeightScale,
                )
                photonMergeNoise.add(1f, calibration.cameraRgbReadNoise, calibration.cameraRgbShotNoise, frameWeight)
                renderSabreMerge(
                    extracted = currentExtracted,
                    flow = flow,
                    covariance = currentCovariance,
                    weight = frameWeight,
                    calibration = calibration,
                    accumulatedColor = accumulatedColor,
                    accumulatedWeightsGb = accumulatedWeightsGb,
                    extractedWidth = extractedWidth,
                    extractedHeight = extractedHeight,
                    useFrameWeight = true,
                )
                PLog.i(
                    SABRE_TAG,
                    "MGC Sabre frame=$index/${frames.lastIndex} number=${frame.frameNumber} " +
                        "exposureScale=$exposureScale submit=${elapsedMs(frameStartNs)}ms",
                )
                releaseTexturesFrom(transientTextureStart)
                GlesGpuScheduler.yieldToUiRenderer()
            }

            renderSabreDehomogenize(
                accumulatedColor,
                accumulatedWeightsGb,
                accumulatedCoverage,
                alphaScale = accumulatedWeightScale / frames.size.toFloat(),
                alphaBias = 1f / frames.size.toFloat(),
            )
            // The original merge shaders write normalized, white-balanced half floats, which
            // ResolveSabre consumes directly; rawScale applies only to the black/white scalar
            // parameters below.
            val demosaicWhiteLevel = minOf(
                (sensorWhiteLevel * sabreResolveRawScale).toInt(),
                Short.MAX_VALUE.toInt(),
            )
                .coerceAtLeast(1)
            val demosaicBlendRange =
                SABRE_DEMOSAIC_BLEND_END - SABRE_DEMOSAIC_BLEND_START
            PLog.i(
                SABRE_TAG,
                "MGC Sabre Resolve domain=mgc14 rawScale=$sabreResolveRawScale " +
                    "gains=${sabreResolveFinalGains.contentToString()} " +
                    "demosaicWhite=$demosaicWhiteLevel " +
                    "greenImbalanceRetention=" +
                    "${sabreResolveParameters.greenImbalanceRetention} " +
                    "demosaicSharpness=${sabreResolveParameters.demosaicSharpness}",
            )
            val lensShadingTexture = createLensShadingTexture()
            val fullOutput = MgcSpatialRgbRect(0, 0, width, height)
            val fullOutputTile = MgcSpatialRgbTile(index = 0, outputCore = fullOutput)
            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Sabre VGN color noise/IIR postprocessor is not initialized"
            }
            chromaPostprocessor.initStorage(listOf(fullOutputTile))
            val resolvedRgb = chromaPostprocessor.normalizationTargetTexture()
            val resolveStartNs = System.nanoTime()
            renderSabreResolve(
                accumulatedColor = accumulatedColor,
                lensShadingTexture = lensShadingTexture,
                output = resolvedRgb,
                greenImbalanceRetention = sabreResolveParameters.greenImbalanceRetention,
                demosaicBlendScale = -demosaicBlendRange * frames.size,
                demosaicBlendBias = SABRE_DEMOSAIC_BLEND_END / demosaicBlendRange,
                demosaicQuantizationScale =
                    demosaicWhiteLevel * sabreResolveParameters.demosaicSharpness,
            )
            PLog.i(
                SABRE_TAG,
                "MGC Sabre Resolve GPU submit=${elapsedMs(resolveStartNs)}ms",
            )
            chromaPostprocessor.markTileWritten(fullOutputTile)
            releaseSabreMergePhaseTextures(resolvedRgb)
            if (!exportGpuLinearRgbSource) {
                val outputBytes = width.toLong() * height * 3L * Short.SIZE_BYTES
                cpuOutput = LargeDirectBuffer.allocate(outputBytes, "MGC Sabre VGN RGB16 output")
                    ?.order(ByteOrder.nativeOrder()) ?: error(
                    "Unable to allocate MGC Sabre VGN RGB16 output",
                )
            }
            GlesGpuScheduler.memoryBarrier()
            val onChromaFinalSubmitted: (() -> Unit)? = when {
                exportGpuLinearRgbSource -> {
                    { completionRecorder.mark(GpuStackCompletionStage.CHROMA_POSTPROCESS) }
                }
                else -> null
            }
            val chromaResult = chromaPostprocessor.process(
                obtainOutputBuffer = { checkNotNull(cpuOutput) },
                deferFullSizeReadback = exportGpuLinearRgbSource,
                onFinalSubmitted = onChromaFinalSubmitted,
            )
            postprocessedUi = chromaResult.exportedTextureId
            if (exportGpuLinearRgbSource) {
                check(postprocessedUi != 0) {
                    "MGC Sabre VGN color noise/IIR did not export its filtered texture"
                }
                exportedTexture = if (gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16UI) {
                    postprocessedUi.also { postprocessedUi = 0 }
                } else {
                    // The chroma component leaves its final image pass behind a deferred export
                    // checkpoint. Complete that ownership handoff before submitting a dependent
                    // conversion and deleting the RGBA16UI source. This mirrors Spatial RGB and
                    // avoids exposing partially retired VGN work groups on affected Mali queues.
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Sabre VGN IIR-to-float handoff",
                        checkGlError = ::checkGlError,
                    )
                    createTexture(
                        outputWidth,
                        outputHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_NEAREST,
                    ).also { target ->
                        renderRgb16ToFloat(
                            source = postprocessedUi,
                            target = target,
                            imageWidth = outputWidth,
                            imageHeight = outputHeight,
                        )
                        GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
                        postprocessedUi = 0
                    }
                }
                completionRecorder.mark(GpuStackCompletionStage.FINAL_EXPORT)
                exportedCompletionTimeline = completionRecorder.finish()
                if (textures.remove(exportedTexture)) {
                    textureSpecs.remove(exportedTexture)
                }
            }
            checkGlError("MGC Sabre Resolve/VGN color noise")
            PLog.i(
                SABRE_TAG,
                "MGC Sabre complete frames=${frames.size} native=${width}x$height " +
                    "output=${outputWidth}x$outputHeight " +
                    "referenceSnr=${kernelTuning.referenceSnr} " +
                    "result=${if (exportedTexture != 0) gpuLinearRgbStorage.name + "_GPU" else "RGB16_CPU"} " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms " +
                    "total=${elapsedMs(processStartNs)}ms",
            )
            val result = RawStackResult(
                fusedBayerBuffer = cpuOutput,
                width = outputWidth,
                height = outputHeight,
                isNormalizedSensorData = true,
                blackLevel = FloatArray(4),
                fusedBayerUsesNativeAllocator = cpuOutput != null,
                bufferLayout = RawStackBufferLayout.LINEAR_RGB,
                inputRowStepSamples = outputWidth * 3,
                inputColStepSamples = 3,
                gpuLinearRgbSource = exportedTexture.takeIf { it != 0 }?.let { textureId ->
                    GpuLinearRgbSource(
                        textureId = textureId,
                        width = outputWidth,
                        height = outputHeight,
                        samplesPerPixel = 4,
                        stackCompletionTimeline = exportedCompletionTimeline,
                        storage = gpuLinearRgbStorage,
                    )
                },
                lensShadingCorrectionApplied = hasLensShading(),
                mergedFrameCount = frames.size,
                denoiseHistory = photonMergeNoise.history(kernelTuning.referenceSignal),
                mgcSharpenTuningSnr = kernelTuning.referenceSnr,
                mgcSharpenAttenuationScale = sabreResolveParameters.demosaicSharpness,
            )
            returned = true
            result
        } catch (error: Exception) {
            completionRecorder.releasePending()
            PLog.e(SABRE_TAG, "MGC Sabre merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, SABRE_TAG)
            if (!returned) {
                exportedCompletionTimeline?.releasePending()
                LargeDirectBuffer.free(cpuOutput)
                if (postprocessedUi != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
                }
                if (exportedTexture != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(exportedTexture), 0)
                }
            }
        }
    }

    private fun renderSabreExtract(
        raw: Int,
        output: Int,
        extractedWidth: Int,
        extractedHeight: Int,
    ) {
        GLES30.glUseProgram(sabreExtractBayerProgram)
        bindTexture(sabreExtractBayerProgram, "uRaw", 0, raw)
        uniform2i(sabreExtractBayerProgram, "uRawSize", width, height)
        draw(sabreExtractBayerProgram, extractedWidth, extractedHeight, intArrayOf(output))
    }

    private fun renderSabreGuideAndCovariance(
        extracted: Int,
        noiseTexture: Int,
        calibration: FrameCalibration,
        guide: Int,
        covariance: Int,
        guideWidth: Int,
        guideHeight: Int,
        kernelParameters: MgcSabreKernelTuning.Parameters,
    ) {
        val program = sabreGuideAndCovarianceProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uExtractedBayer", 0, extracted)
        bindTexture(program, "uNoiseEstimates", 1, noiseTexture)
        uniform2i(program, "uGuideSize", guideWidth, guideHeight)
        uniform4f(
            program,
            "uFrameBorderPadded",
            SABRE_GUIDE_BORDER_PIXELS / width,
            SABRE_GUIDE_BORDER_PIXELS / height,
            1f - SABRE_GUIDE_BORDER_PIXELS / width,
            1f - SABRE_GUIDE_BORDER_PIXELS / height,
        )
        uniform1i(program, "uCfaPattern", cfaPattern)
        uniform4fv(program, "uGains", calibration.gains)
        uniform4fv(program, "uBlackLevelsTimesGains", calibration.blackTerms)
        uniform4f(program, "uNoiseTextureScaleBias", 0.9f, 0.5f, 0.05f, 0.25f)
        uniform4fv(program, "uCovarianceParameters1", kernelParameters.covarianceParameters1)
        uniform4fv(program, "uCovarianceParameters2", kernelParameters.covarianceParameters2)
        uniform4f(
            program,
            "uCovRangeRgFactors",
            covariancePackOffset(kernelParameters.covarianceMinR, kernelParameters.covarianceMaxR),
            covariancePackScale(kernelParameters.covarianceMinR, kernelParameters.covarianceMaxR),
            covariancePackOffset(kernelParameters.covarianceMinG, kernelParameters.covarianceMaxG),
            covariancePackScale(kernelParameters.covarianceMinG, kernelParameters.covarianceMaxG),
        )
        uniform2f(
            program,
            "uCovRangeBFactor",
            covariancePackOffset(kernelParameters.covarianceMinB, kernelParameters.covarianceMaxB),
            covariancePackScale(kernelParameters.covarianceMinB, kernelParameters.covarianceMaxB),
        )
        uniform1f(program, "uGreenClippingPoint", calibration.greenClippingPoint)
        uniform4f(
            program,
            "uForceReferenceColorRgb",
            if (kernelParameters.forceReferenceColorRgb) 1f else 0f,
            0f,
            0f,
            0f,
        )
        draw(program, guideWidth, guideHeight, intArrayOf(guide, covariance))
    }

    private fun renderSabreBaseFrameReferenceColor(
        guide: Int,
        referenceColor: Int,
        guideWidth: Int,
        guideHeight: Int,
    ) {
        val program = sabreBaseFrameReferenceColorProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uBaseGuide", 0, guide)
        uniform2i(program, "uGuideSize", guideWidth, guideHeight)
        draw(program, guideWidth, guideHeight, intArrayOf(referenceColor))
    }

    private fun renderSabreRejection(
        referenceGuide: Int,
        currentGuide: Int,
        flow: ConvertedAlignment,
        unblocker: Int,
        noiseTexture: Int,
        reverseWeight: Int,
        pixelDifference: Int,
        guideWidth: Int,
        guideHeight: Int,
    ) {
        val program = rejectionProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uBaseGuide", 0, referenceGuide)
        bindTexture(program, "uAltGuide", 1, currentGuide)
        bindTexture(program, "uFlow", 2, flow.texture)
        bindTexture(program, "uUnblocker", 3, unblocker)
        bindTexture(program, "uNoiseEstimates", 4, noiseTexture)
        uniform2i(program, "uGuideSize", guideWidth, guideHeight)
        uniform2i(program, "uRejectionSize", guideWidth, guideHeight)
        uniform4f(
            program,
            "uFrameBorderPadded",
            SABRE_SAMPLE_BORDER_PIXELS / width,
            SABRE_SAMPLE_BORDER_PIXELS / height,
            1f - SABRE_SAMPLE_BORDER_PIXELS / width,
            1f - SABRE_SAMPLE_BORDER_PIXELS / height,
        )
        uniformFlowScaleOffset(program, flow)
        uniform2f(program, "uUnblockerScale", 1f, 1f)
        uniform4f(program, "uNoiseTextureScaleBias", 0.9f, 0.5f, 0.05f, 0.25f)
        uniform2f(
            program,
            "uColorDifferenceMultiplier",
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_RGB,
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_GREEN,
        )
        val flowVariationThresholds =
            MgcSabreRejectionTuning.flowVariationThresholds(guideWidth)
        uniform1f(
            program,
            "uUnblockerReductionThreshold",
            flowVariationThresholds.unblockerReduction,
        )
        uniform1f(
            program,
            "uExtraMotionRobustnessBoost",
            MgcSabreRejectionTuning.EXTRA_MOTION_ROBUSTNESS_BOOST,
        )
        uniform1f(
            program,
            "uMotionRobustnessBoostVarianceThreshold",
            MgcSabreRejectionTuning.MOTION_ROBUSTNESS_VARIANCE_THRESHOLD,
        )
        uniform1f(
            program,
            "uExtraMotionRobustnessMotionThreshold",
            flowVariationThresholds.extraMotionRobustness,
        )
        draw(program, guideWidth, guideHeight, intArrayOf(reverseWeight, pixelDifference))
    }

    private fun renderSabreCoverage(
        weight: Int,
        accumulatedCoverage: Int,
        coverageWidth: Int,
        coverageHeight: Int,
        accumulatedWeightScale: Float,
    ) {
        val program = sabreCopyMaskProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uRejection", 0, weight)
        uniform1f(program, "uAccumulatedWeightScale", accumulatedWeightScale)
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            draw(
                program,
                coverageWidth,
                coverageHeight,
                intArrayOf(accumulatedCoverage),
                preserveBlend = true,
            )
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    /** Exact bucket mapping used by MGC's Sabre accumulated R8 mask uniform. */
    private fun maxSabreAccumulatedWeight(frameCount: Int): Float = when {
        frameCount < 2 -> 1f
        frameCount < 4 -> 3f
        frameCount < 6 -> 5f
        frameCount < 16 -> 15f
        frameCount < 18 -> 17f
        frameCount < 52 -> 51f
        frameCount < 86 -> 85f
        else -> 255f
    }

    private fun renderSabreMerge(
        extracted: Int,
        flow: ConvertedAlignment,
        covariance: Int,
        weight: Int,
        calibration: FrameCalibration,
        accumulatedColor: Int,
        accumulatedWeightsGb: Int,
        extractedWidth: Int,
        extractedHeight: Int,
        useFrameWeight: Boolean,
    ) {
        val program = sabreMergeProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uExtractedBayer", 0, extracted)
        bindTexture(program, "uFlow", 1, flow.texture)
        bindTexture(program, "uCovariance", 2, covariance)
        bindTexture(program, "uRejection", 3, weight)
        uniform2i(program, "uExtractedSize", extractedWidth, extractedHeight)
        uniform2i(program, "uOutputSize", width, height)
        uniformFlowScaleOffset(program, flow)
        uniform4f(
            program,
            "uFrameBorderPadded",
            SABRE_SAMPLE_BORDER_PIXELS / width,
            SABRE_SAMPLE_BORDER_PIXELS / height,
            1f - SABRE_SAMPLE_BORDER_PIXELS / width,
            1f - SABRE_SAMPLE_BORDER_PIXELS / height,
        )
        uniform1i(program, "uCfaPattern", cfaPattern)
        uniform1i(program, "uUseFrameWeight", if (useFrameWeight) 1 else 0)
        uniform4fv(program, "uGains", calibration.gains)
        uniform4fv(program, "uBlackLevelsTimesGains", calibration.blackTerms)
        uniform4f(
            program,
            "uCovRangeRg",
            COV_MIN_R,
            COV_MAX_R - COV_MIN_R,
            COV_MIN_G,
            COV_MAX_G - COV_MIN_G,
        )
        uniform2f(program, "uCovRangeB", COV_MIN_B, COV_MAX_B - COV_MIN_B)
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            draw(
                program,
                width,
                height,
                intArrayOf(accumulatedColor, accumulatedWeightsGb),
                preserveBlend = true,
            )
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    private fun clearSabreAccumulators(
        accumulatedColor: Int,
        accumulatedWeightsGb: Int,
        accumulatedCoverage: Int,
        coverageWidth: Int,
        coverageHeight: Int,
    ) {
        clearRgbAccumulators(accumulatedColor, accumulatedWeightsGb, width, height)
        bindRenderTargets(intArrayOf(accumulatedCoverage), "MGC Sabre coverage clear")
        GLES30.glViewport(0, 0, coverageWidth, coverageHeight)
        GLES30.glClearBufferfv(GLES30.GL_COLOR, 0, floatArrayOf(0f, 0f, 0f, 0f), 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderSabreDehomogenize(
        accumulatedColor: Int,
        accumulatedWeightsGb: Int,
        accumulatedCoverage: Int,
        alphaScale: Float,
        alphaBias: Float,
    ) {
        val copiedRWeight = createTexture(width, height, GLES30.GL_R16F, GLES30.GL_NEAREST)
        GLES30.glUseProgram(sabreCopyAlphaProgram)
        bindTexture(sabreCopyAlphaProgram, "uSource", 0, accumulatedColor)
        draw(sabreCopyAlphaProgram, width, height, intArrayOf(copiedRWeight))

        val program = sabreDehomogenizeProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uSourceWeightR", 0, copiedRWeight)
        bindTexture(program, "uSourceWeightGb", 1, accumulatedWeightsGb)
        bindTexture(program, "uSourceAlpha", 2, accumulatedCoverage)
        uniform1f(program, "uAlphaScale", alphaScale)
        uniform1f(program, "uAlphaBias", alphaBias)
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFuncSeparate(
                GLES30.GL_ZERO,
                GLES30.GL_SRC_COLOR,
                GLES30.GL_ONE,
                GLES30.GL_ZERO,
            )
            draw(
                program,
                width,
                height,
                intArrayOf(accumulatedColor),
                preserveBlend = true,
            )
        } finally {
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    /**
     * ResolveSabre on the GPU (see [GlesMgcSabreResolveShaders]): demosaics the dehomogenized
     * accumulation, blends it with the accumulated colour by coverage and writes the normalized,
     * lens-shaded camera RGB into the RGBA16UI [output]. The int16 intermediates are padded so
     * every pass reads the virtual-CFA neighbourhood the original AOT reads.
     */
    private fun renderSabreResolve(
        accumulatedColor: Int,
        lensShadingTexture: Int,
        output: Int,
        greenImbalanceRetention: Float,
        demosaicBlendScale: Float,
        demosaicBlendBias: Float,
        demosaicQuantizationScale: Float,
    ) {
        require(demosaicQuantizationScale.isFinite() && demosaicQuantizationScale > 0f)
        require(sabreResolveFinalGains.all { it.isFinite() && it > 0f })
        // Offset of the red site; the AOT resolves in a virtual RGGB frame anchored there.
        val (redX, redY) = when (cfaPattern) {
            0 -> 0 to 0 // RGGB
            1 -> 1 to 0 // GRBG
            2 -> 0 to 1 // GBRG
            3 -> 1 to 1 // BGGR
            else -> throw IllegalArgumentException("MGC Sabre Resolve CFA pattern $cfaPattern")
        }
        val padding = GlesMgcGreenDemosaicShaders.PLANE_PADDING
        val planeWidth = width + 2 * padding
        val planeHeight = height + 2 * padding
        val converted = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
        val balanced = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
        val green = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)

        GLES30.glUseProgram(sabreResolveConvertProgram)
        bindTexture(sabreResolveConvertProgram, "uAccumulated", 0, accumulatedColor)
        uniform2i(sabreResolveConvertProgram, "uImageSize", width, height)
        uniform2i(sabreResolveConvertProgram, "uRedSite", redX, redY)
        uniform1f(
            sabreResolveConvertProgram,
            "uQuantizationScale",
            demosaicQuantizationScale,
        )
        draw(sabreResolveConvertProgram, planeWidth, planeHeight, intArrayOf(converted))

        // Entry 0x34A67F8: k = fcvtzs(clamp(retention * 65536, 0, 65535)).
        val retentionFixed16 = (greenImbalanceRetention * 65536f).coerceIn(0f, 65535f).toInt()
        GLES30.glUseProgram(sabreResolveGreenBalanceProgram)
        bindTexture(sabreResolveGreenBalanceProgram, "uConverted", 0, converted)
        uniform2i(sabreResolveGreenBalanceProgram, "uPlaneSize", planeWidth, planeHeight)
        uniform1i(sabreResolveGreenBalanceProgram, "uGreenImbalanceRetention", retentionFixed16)
        draw(sabreResolveGreenBalanceProgram, planeWidth, planeHeight, intArrayOf(balanced))

        GLES30.glUseProgram(sabreResolveGreenProgram)
        bindTexture(sabreResolveGreenProgram, "uBalanced", 0, balanced)
        uniform2i(sabreResolveGreenProgram, "uPlaneSize", planeWidth, planeHeight)
        draw(sabreResolveGreenProgram, planeWidth, planeHeight, intArrayOf(green))

        val program = sabreResolveOutputProgram
        val gains = sabreResolveFinalGains
        GLES30.glUseProgram(program)
        bindTexture(program, "uAccumulated", 0, accumulatedColor)
        bindTexture(program, "uBalanced", 1, balanced)
        bindTexture(program, "uGreen", 2, green)
        bindTexture(program, "uLensShading", 3, lensShadingTexture)
        uniform2i(program, "uImageSize", width, height)
        uniform2i(program, "uPlaneSize", planeWidth, planeHeight)
        uniform2i(program, "uRedSite", redX, redY)
        uniform1f(program, "uBlendBias", demosaicBlendBias)
        uniform1f(program, "uBlendScale", demosaicBlendScale)
        uniform1f(program, "uInverseQuantizationScale", 1f / demosaicQuantizationScale)
        uniform3f(program, "uFinalGains", gains[0], gains[1], gains[2])
        draw(program, width, height, intArrayOf(output))
        checkGlError("MGC Sabre Resolve")
    }

    private fun initSabrePrograms() {
        check(supportsComputePrograms) {
            "MGC Sabre VGN color noise/IIR requires the GLES 3.1 compute baseline"
        }
        sabreExtractBayerProgram = linkProgram(
            GlesMgcRawSabreShaders.extractBayer,
            "mgc_sabre_extract_bayer",
        )
        sabreGuideAndCovarianceProgram = linkProgram(
            GlesMgcRawSabreShaders.guideAndCovariance,
            "mgc_sabre_guide_covariance",
        )
        sabreBaseFrameReferenceColorProgram = linkProgram(
            GlesMgcRawSabreShaders.baseFrameReferenceColor,
            "mgc_sabre_base_frame_reference_color",
        )
        rawToGrayProgram = linkProgram(GlesMgcRawSpatialShaders.rawToGray, "mgc_sabre_raw_to_gray")
        downsampleProgram = linkProgram(
            GlesMgcRawSpatialShaders.grayDownsample,
            "mgc_sabre_gray_downsample",
        )
        downsample4Program = linkProgram(
            GlesMgcRawSpatialShaders.grayDownsample4,
            "mgc_sabre_gray_downsample_4x",
        )
        alignmentGradientProductsProgram = linkProgram(
            GlesMgcRawSpatialShaders.alignmentGradientProducts,
            "mgc_sabre_alignment_gradient_products",
        )
        upsampleAlignmentProgram = initMergeUpsampleAlignment()
        blockLucasKanadeProgram = linkProgram(
            GlesMgcRawSpatialShaders.blockLucasKanade,
            "mgc_sabre_block_lucas_kanade",
        )
        convertAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.convertAlignment,
            "mgc_sabre_convert_alignment",
        )
        unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_sabre_unblocker")
        unblockerBlurProgram = linkProgram(
            GlesMgcRawSpatialShaders.unblockerBlur,
            "mgc_sabre_unblocker_blur",
        )
        rejectionProgram = linkProgram(
            GlesMgcRawSabreShaders.rejection,
            "mgc_sabre_rejection",
        )
        dilationProgram = linkProgram(
            GlesMgcRawSpatialShaders.dilateRejection,
            "mgc_sabre_dilate_rejection",
        )
        sabreMergeProgram = linkProgram(GlesMgcRawSabreShaders.merge, "mgc_sabre_merge")
        sabreCopyMaskProgram = linkProgram(
            GlesMgcRawSabreShaders.copyMask,
            "mgc_sabre_copy_mask",
        )
        sabreCopyAlphaProgram = linkProgram(
            GlesMgcRawSabreShaders.copyAlpha,
            "mgc_sabre_copy_alpha",
        )
        sabreDehomogenizeProgram = linkProgram(
            GlesMgcRawSabreShaders.dehomogenize,
            "mgc_sabre_dehomogenize",
        )
        sabreResolveConvertProgram = linkProgram(
            GlesMgcSabreResolveShaders.convertToInt,
            "mgc_sabre_resolve_convert_to_int",
        )
        sabreResolveGreenBalanceProgram = linkProgram(
            GlesMgcGreenDemosaicShaders.greenBalance,
            "mgc_sabre_resolve_green_balance",
        )
        sabreResolveGreenProgram = linkProgram(
            GlesMgcGreenDemosaicShaders.greenAtColor,
            "mgc_sabre_resolve_green_at_color",
        )
        sabreResolveOutputProgram = linkProgram(
            GlesMgcSabreResolveShaders.resolveOutput,
            "mgc_sabre_resolve_output",
        )
        if (exportGpuLinearRgbSource && gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16F
        ) {
            copyRgb16ToFloatProgram = linkComputeProgram(
                GlesMgcRawSpatialShaders.copyRgb16ToFloat,
                "mgc_sabre_chroma_to_rgba16f",
            )
        }
        // ResolveSabre and VGN stay on the native grid. A requested larger output is a separate
        // display transform after FinishRaw/GuidedUpsample in RawDemosaicProcessor.
        rgbChromaPostprocessor = createRgbChromaPostprocessor(
            imageWidth = width,
            imageHeight = height,
            exportFullSizeTexture = exportGpuLinearRgbSource ||
                outputWidth != width || outputHeight != height,
        ).also { it.initPrograms() }
    }

    private fun initMergeUpsampleAlignment(): Int {
        if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            medianAlignmentProgram = linkProgram(
                GlesMgcRawSpatialShaders.medianAlignment, "mgc_median_alignment",
            )
        }
        if (supportsComputePrograms) {
            val reduction = GlesSpatialGlobalAlignment(cpuCompatibleMean = true)
            try {
                reduction.init()
                val program = linkProgram(
                    GlesMgcRawSpatialShaders.rawUpsampleAlignment,
                    "mgc_upsample_alignment_gpu_candidate",
                )
                globalAlignment = reduction
                return program
            } catch (error: Exception) {
                reduction.release()
                PLog.w(TAG, "Spatial GPU global alignment unavailable; using CPU histogram: $error")
            }
        }
        return linkProgram(GlesMgcRawSpatialShaders.upsampleAlignment, "mgc_upsample_alignment")
    }

    private fun initPrograms(
        includeBentoAssessment: Boolean,
        includeReferenceHighlightMask: Boolean = includeBentoAssessment,
        includeTemporalProcessing: Boolean = true,
    ) {
        if (includeTemporalProcessing) {
            guideProgram = linkProgram(GlesMgcRawSpatialShaders.guide, "mgc_spatial_guide")
            if (mergeMethod == MgcMergeMethod.SABRE) {
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
            downsample4Program = linkProgram(
                GlesMgcRawSpatialShaders.grayDownsample4,
                "mgc_gray_downsample_4x",
            )
            alignmentGradientProductsProgram = linkProgram(
                GlesMgcRawSpatialShaders.alignmentGradientProducts,
                "mgc_alignment_gradient_products",
            )
            upsampleAlignmentProgram = initMergeUpsampleAlignment()
            blockLucasKanadeProgram = linkProgram(
                GlesMgcRawSpatialShaders.blockLucasKanade,
                "mgc_block_lucas_kanade",
            )
            alignProgram = linkProgram(GlesMgcRawSpatialShaders.alignL1, "mgc_align_l1")
            convertAlignmentProgram = linkProgram(
                GlesMgcRawSpatialShaders.convertAlignment,
                "mgc_convert_alignment",
            )
        }
        strengthAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.strengthAlignment,
            "mgc_strength_alignment",
        )
        strengthRejectionProgram = linkProgram(
            GlesMgcRawSpatialShaders.strengthRejection,
            "mgc_strength_rejection",
        )
        if (includeTemporalProcessing) {
            unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_unblocker")
            unblockerBlurProgram = linkProgram(
                GlesMgcRawSpatialShaders.unblockerBlur,
                "mgc_unblocker_blur",
            )
            rejectionProgram = linkProgram(
                GlesMgcRawSpatialShaders.rejection,
                "mgc_spatial_rejection",
            )
            if (outputMode == MgcSpatialOutputMode.RGB) {
                rejectionAcceptanceProgram = linkProgram(
                    GlesMgcRawSpatialShaders.rejectionAcceptance,
                    "mgc_spatial_rgb_rejection_acceptance",
                )
            }
            rejectionDownsampleProgram = linkProgram(
                GlesMgcRawSpatialShaders.rejectionDownsample,
                "mgc_rejection_downsample",
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
        }
        if (includeBentoAssessment) {
            bentoAdjustProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoAdjustHighlightMask,
                "mgc_bento_adjust_mask",
            )
            bentoCollarSupportProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoCollarSupport,
                "mgc_bento_collar_support",
            )
            if (supportsComputeReadback) {
                runCatching {
                    bentoHighlightCountProgram = linkComputeProgram(
                        GlesMgcRawSpatialShaders.bentoCountHighlightMask,
                        "mgc_bento_count_highlight_mask",
                    )
                }.onFailure { error ->
                    bentoHighlightCountProgram = 0
                    PLog.w(
                        TAG,
                        "MGC Bento GPU highlight count unavailable; using CPU readback",
                        error,
                    )
                }
            }
        }
        if (includeReferenceHighlightMask) {
            bentoHighlightProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoGenerateHighlightMask,
                "mgc_bento_highlight_mask",
            )
            alignedRawClippingMaskProgram = linkProgram(
                GlesMgcRawSpatialShaders.alignedRawClippingMask,
                "mgc_aligned_raw_clipping_mask",
            )
        }
        mergeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.mergeBayer,
            "mgc_spatial_bayer_merge",
        )
        if (mergeMethod == MgcMergeMethod.SABRE) {
            sabreMergeBayerProgram = linkProgram(
                GlesMgcRawSpatialShaders.sabreMergeBayer,
                "mgc_sabre_bayer_merge",
            )
        }
        if (outputMode == MgcSpatialOutputMode.RGB) {
            check(supportsComputePrograms) {
                "MGC Spatial RGB color noise/IIR requires the GLES 3.1 compute baseline"
            }
            spatialRgbConvertProgram = linkProgram(
                GlesMgcGreenDemosaicShaders.convertRaw16,
                "mgc_spatial_v25_green_convert_raw16",
            )
            spatialRgbGreenBalanceProgram = linkProgram(
                GlesMgcGreenDemosaicShaders.greenBalance,
                "mgc_spatial_v25_green_balance",
            )
            spatialRgbGreenProgram = linkProgram(
                GlesMgcGreenDemosaicShaders.greenAtColor,
                "mgc_spatial_v25_green_at_color",
            )
            spatialRgbAccumulateProgram = linkComputeProgram(
                GlesMgcSpatialRgbMergeShaders.accumulateFrame,
                "mgc_spatial_v25_rgb_accumulate",
            )
            // Color noise/IIR owns a fixed RGBA16UI boundary, matching the VGN/Radiance
            // contract. The merged F16 output enters that boundary exactly once.
            spatialRgbResolveProgram = linkProgram(
                GlesMgcSpatialRgbMergeShaders.resolve,
                "mgc_spatial_v25_rgb_resolve",
            )
            if (exportGpuLinearRgbSource &&
                gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16F
            ) {
                copyRgb16ToFloatProgram = linkComputeProgram(
                    GlesMgcRawSpatialShaders.copyRgb16ToFloat,
                    "mgc_spatial_rgb_chroma_to_rgba16f",
                )
            }
            rgbChromaPostprocessor = createRgbChromaPostprocessor().also {
                it.initPrograms()
            }
        }
        normalizeBayerProgram = linkProgram(
            GlesMgcRawSpatialShaders.normalizeBayer,
            "mgc_spatial_bayer16",
        )
    }

    private fun createRgbChromaPostprocessor(
        imageWidth: Int = outputWidth,
        imageHeight: Int = outputHeight,
        exportFullSizeTexture: Boolean = exportGpuLinearRgbSource,
    ): GlesMgcSpatialRgbChromaPostprocessor {
        return GlesMgcSpatialRgbChromaPostprocessor(
            imageWidth = imageWidth,
            imageHeight = imageHeight,
            calculationWbGains = calculationWhiteBalance,
            outputScale = 1f,
            exportFullSizeTexture = exportFullSizeTexture,
            backend = object : GlesMgcSpatialRgbChromaPostprocessor.Backend {
                override fun linkComputeProgram(source: String, name: String): Int =
                    this@GlesMgcRawSpatialStacker.linkComputeProgram(source, name)

                override fun createRgba16UiTexture(
                    width: Int,
                    height: Int,
                    label: String,
                ): Int = this@GlesMgcRawSpatialStacker.createTexture(
                    textureWidth = width,
                    textureHeight = height,
                    internalFormat = GLES30.GL_RGBA16UI,
                    filter = GLES30.GL_NEAREST,
                )

                override fun deleteTexture(texture: Int, label: String) {
                    this@GlesMgcRawSpatialStacker.detachRenderTargets()
                    this@GlesMgcRawSpatialStacker.releaseOwnedTexture(texture, label)
                }

                override fun transferTextureOwnership(texture: Int, label: String) {
                    this@GlesMgcRawSpatialStacker.transferOwnedTexture(texture, label)
                }

                override fun uniformLocation(program: Int, name: String): Int =
                    this@GlesMgcRawSpatialStacker.uniformLocation(program, name)

                override fun checkGlError(label: String) {
                    this@GlesMgcRawSpatialStacker.checkGlError(label)
                }

                override fun yieldToUiRenderer() {
                    GlesGpuScheduler.yieldToUiRenderer()
                }
            },
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
        val frameBlackLevel = canonicalBlackLevelForFrame(frame)
        val gains = FloatArray(4)
        val blackTerms = FloatArray(4)
        for (channel in 0 until 4) {
            val range = max(sensorWhiteLevel - frameBlackLevel[channel], 1f)
            gains[channel] =
                calculationWhiteBalance[channel] * exposureScale / range
            blackTerms[channel] = -frameBlackLevel[channel] * gains[channel]
        }
        val bayerPhaseGains = FloatArray(4)
        val bayerPhaseBlackTerms = FloatArray(4)
        for (phase in 0 until 4) {
            val canonicalChannel = canonicalChannelAtPhase(phase)
            val range = max(sensorWhiteLevel - frameBlackLevel[canonicalChannel], 1f)
            bayerPhaseGains[phase] = exposureScale / range
            bayerPhaseBlackTerms[phase] =
                -frameBlackLevel[canonicalChannel] * bayerPhaseGains[phase]
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
            val sensorRange = max(sensorWhiteLevel - frameBlackLevel[channel], 1f)
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
        val globalFrameWeight = if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            // V25 SpatialMerge stores sub_38B1274's shadow-domain MaximumMergeWeight in the
            // frame_weights buffer consumed by MergeRgbRaw16F16, except that the accepted
            // Bento frame is overridden after assessment. The signal-domain expected weight
            // is computed only for the diagnostic table and is not the AOT input.
            MgcSpatialMergeTuning.maximumMergeWeight(
                baseReadVariance = kernelTuning.referenceGreenReadVariance,
                alternateReadVariance = sourceRead.getOrElse(1) { 0f },
                exposureScale = exposureScale,
            )
        } else {
            SPATIAL_IDENTITY_MULTIPLIER
        }
        val rejectionWeightScale = if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            // V25 reuses the same capped MaximumMergeWeight for special-exposure rejection.
            globalFrameWeight
        } else {
            SPATIAL_IDENTITY_MULTIPLIER
        }
        val kernelSigma = if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            MgcSpatialMergeTuning.kernelSigma(
                baseSpatialScale = kernelTuning.baseSpatialScale,
                mergeWeight = globalFrameWeight,
            )
        } else {
            SPATIAL_IDENTITY_MULTIPLIER
        }
        return FrameCalibration(
            blackLevels = frameBlackLevel,
            inputGain = exposureScale,
            gains = gains,
            blackTerms = blackTerms,
            bayerPhaseGains = bayerPhaseGains,
            bayerPhaseBlackTerms = bayerPhaseBlackTerms,
            rejectionWeightScale = rejectionWeightScale,
            globalFrameWeight = globalFrameWeight,
            kernelSigma = kernelSigma,
            shotNoise = shot,
            readNoise = read,
            greenClippingPoint = greenClip.takeIf { it.isFinite() && it > 0f } ?: Float.MAX_VALUE,
            // BuildAlignPyramidForBurst computes the scalar passed to
            // DownsampleRawToGray as frame_gain * 16384 / (white_level + 1).
            // Keeping only frame_gain leaves 10-bit RAW alignment gradients 16x too small,
            // so the generated LK kernel's fixed +1 Hessian regularizer suppresses the
            // finest-level subpixel update and temporal merging loses high-frequency detail.
            alignmentGain = MgcAlignmentInputScale.compute(
                frameGain = exposureScale,
                staticMetadataWhiteLevel = sensorWhiteLevel,
            ),
            unblockerShotNoise = unblockerShot,
            unblockerReadNoise = unblockerRead,
            cameraRgbShotNoise = cameraRgbShot,
            cameraRgbReadNoise = cameraRgbRead,
        )
    }

    private fun canonicalBlackLevelForFrame(frame: RawStackFrame): FloatArray {
        val positional = frame.dynamicBlackLevelByCfaPosition
            ?.takeIf { values ->
                values.size >= 4 && (0 until 4).all { index ->
                    val value = values[index]
                    value.isFinite() && value >= 0f && value < sensorWhiteLevel
                }
            }
            ?: return canonicalBlackLevel.copyOf()
        return FloatArray(4).also { canonical ->
            for (phase in 0 until 4) {
                canonical[canonicalChannelAtPhase(phase)] = positional[phase]
            }
        }
    }

    private fun createBayerKernelTuning(
        frame: RawStackFrame,
        image: SafeImage,
        frameCount: Int,
    ): BayerKernelTuning {
        val measuredReferenceSignal = estimateReferenceGreenSignal(
            image = image,
            blackLevel = canonicalBlackLevelForFrame(frame),
        )
        val referenceSignal = if (processorPipeline == MgcRawProcessorPipeline.SABRE) {
            resolveFusionReferenceSignal(
                measuredSignal = measuredReferenceSignal,
                fallbackSignal = PhotonCoreImagingTuning.fusion.missingReferenceSignal,
            )
        } else {
            measuredReferenceSignal ?: 0f
        }
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
            0f
        }.takeIf { it.isFinite() }?.coerceAtLeast(0f) ?: 0f
        val baseSpatialScale = MgcSpatialMergeTuning.baseSpatialScale(
            referenceSnr = referenceSnr,
            frameCount = frameCount,
            outputMode = outputMode,
        )
        return BayerKernelTuning(
            referenceSignal = referenceSignal,
            referenceGreenShotNoiseFactor = shotNoise.getOrElse(1) { 0f },
            referenceGreenReadVariance = readNoise.getOrElse(1) { 0f },
            referenceSnr = referenceSnr,
            baseSpatialScale = baseSpatialScale,
        )
    }

    private fun estimateReferenceGreenSignal(
        image: SafeImage,
        blackLevel: FloatArray,
    ): Float? {
        val plane = image.planes.firstOrNull() ?: return null
        if (
            plane.pixelStride != RAW_BYTES_PER_PIXEL ||
            plane.rowStride < sourceBounds.right * plane.pixelStride
        ) {
            return null
        }
        val buffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val bufferStart = buffer.position() +
            sourceBounds.top * plane.rowStride +
            sourceBounds.left * plane.pixelStride
        // MeasureMeanSignalLevelNormalized (libgcastartup.so+0x5b047e8) shrinks the valid RAW
        // rectangle to its central 3/4, aligns X to four pixels and Y to two pixels, samples the
        // green phase on the first Bayer row every two columns/eight rows, and averages in the
        // variance-stabilized sqrt domain.
        val cropLeft = (width / 8) and -4
        val cropRight = ((width * 7) / 8) and -4
        val cropTop = (height / 8) and -2
        val cropBottom = ((height * 7) / 8) and -2
        if (cropRight <= cropLeft || cropBottom <= cropTop) return null

        val firstRowGreenPhase = when (cfaPattern.mod(4)) {
            0, 3 -> 1 // RGGB/BGGR
            else -> 0 // GRBG/GBRG
        }
        val greenChannel = canonicalChannelAtPhase(firstRowGreenPhase)
        val black = blackLevel[greenChannel]
        val range = sensorWhiteLevel - black
        if (!black.isFinite() || !range.isFinite() || range <= 0f) return null

        val histogramShift = run {
            val tail = sensorWhiteLevel.toInt() - SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS
            if (tail < SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS) {
                0
            } else {
                Int.SIZE_BITS - Integer.numberOfLeadingZeros(
                    tail ushr SABRE_SIGNAL_LINEAR_HISTOGRAM_BITS,
                )
            }
        }
        val quantizationWidth = 1 shl histogramShift
        val quantizationHalf = quantizationWidth / 2
        fun histogramBinCenter(raw: Int): Int {
            if (histogramShift == 0 || raw < SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS) return raw
            val bucket = (raw - SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS) shr histogramShift
            return SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS +
                (bucket shl histogramShift) + quantizationHalf
        }

        var sqrtSignalSum = 0.0
        var sampleCount = 0
        var y = cropTop
        while (y < cropBottom) {
            var x = cropLeft + (firstRowGreenPhase and 1)
            while (x < cropRight) {
                val byteOffset = bufferStart + y * plane.rowStride + x * plane.pixelStride
                if (byteOffset >= bufferStart && byteOffset + 1 < buffer.limit()) {
                    val raw = buffer.getShort(byteOffset).toInt() and 0xffff
                    val stabilizedSignal = max(histogramBinCenter(raw) - black, 0f)
                    sqrtSignalSum += sqrt(stabilizedSignal.toDouble())
                    sampleCount += 1
                }
                x += 2
            }
            y += SABRE_SIGNAL_ROW_STEP
        }
        return if (sampleCount > 0) {
            val meanSqrtSignal = sqrtSignalSum / sampleCount.toDouble()
            ((meanSqrtSignal * meanSqrtSignal) / range.toDouble())
                .toFloat()
                .takeIf { it.isFinite() && it >= 0f }
        } else {
            null
        }
    }

    private fun resolveNoiseModelForFrame(frame: RawStackFrame): ResolvedRawNoiseModel =
        RawNoiseModelResolver.resolve(
            selection = noiseProfileSelection,
            sensitivity = frame.sensitivityIso,
            minimumSensitivityIso = frame.minimumSensitivityIso,
            maximumAnalogSensitivityIso = frame.maximumAnalogSensitivityIso,
            perFrameCamera2Profile = frame.channelNoiseProfile,
            cfaPattern = cfaPattern,
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
            GLES30.GL_R16I,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(rawToGrayProgram)
        bindTexture(rawToGrayProgram, "uRaw", 0, rawTexture)
        uniform2i(rawToGrayProgram, "uRawSize", width, height)
        uniform2i(rawToGrayProgram, "uGraySize", finestWidth, finestHeight)
        uniform1i(rawToGrayProgram, "uCfaPattern", cfaPattern)
        uniform4fv(rawToGrayProgram, "uBlackLevels", calibration.blackLevels)
        uniform1f(rawToGrayProgram, "uGain", calibration.alignmentGain)
        draw(rawToGrayProgram, finestWidth, finestHeight, intArrayOf(firstTexture))
        levels += TextureLevel(
            texture = firstTexture,
            width = finestWidth,
            height = finestHeight,
            scaleToBayerQuads = 1f,
            tileSize = alignmentPlan.levels.first().tileSize,
            gridWidth = alignmentPlan.levels.first().gridWidth,
            gridHeight = alignmentPlan.levels.first().gridHeight,
        )

        var levelWidth = finestWidth
        var levelHeight = finestHeight
        for (level in alignmentPlan.levels.drop(1)) {
            val step = level.downsample
            check(step == 2 || step == 4)
            // Every downsampled level carries the positive-side support sample used by
            // Halide's clamped interpolation. The finest level itself has no extra sample.
            val nextWidth = level.width
            val nextHeight = level.height
            val nextTexture = createTexture(
                nextWidth,
                nextHeight,
                GLES30.GL_R16I,
                GLES30.GL_NEAREST,
            )
            val program = if (step == 4) downsample4Program else downsampleProgram
            GLES30.glUseProgram(program)
            bindTexture(program, "uInput", 0, levels.last().texture)
            uniform2i(program, "uInputSize", levelWidth, levelHeight)
            draw(program, nextWidth, nextHeight, intArrayOf(nextTexture))
            levelWidth = nextWidth
            levelHeight = nextHeight
            levels += TextureLevel(
                texture = nextTexture,
                width = nextWidth,
                height = nextHeight,
                scaleToBayerQuads = level.scale.toFloat(),
                tileSize = level.tileSize,
                gridWidth = level.gridWidth,
                gridHeight = level.gridHeight,
            )
        }
        return levels
    }

    /** Returns the logical RAW/4 base-luma input required by FilterRejectionMap. */
    private fun buildRejectionBaseLuma(referenceGrayPyramid: List<TextureLevel>): Int {
        if (referenceGrayPyramid.size == 1) {
            // PrepareBase may stop before RAW/4 has a valid LK tile. Rejection still needs
            // that luma image; its existence must not depend on the alignment tile count.
            val fine = referenceGrayPyramid.first()
            val lumaWidth = fine.width / 2 + 1
            val lumaHeight = fine.height / 2 + 1
            val luma = createTexture(lumaWidth, lumaHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
            GLES30.glUseProgram(downsampleProgram)
            bindTexture(downsampleProgram, "uInput", 0, fine.texture)
            uniform2i(downsampleProgram, "uInputSize", fine.width, fine.height)
            draw(downsampleProgram, lumaWidth, lumaHeight, intArrayOf(luma))
            return luma
        }
        val raw4 = referenceGrayPyramid[1]
        check(raw4.width >= mergeWeightWidth && raw4.height >= mergeWeightHeight) {
            "RAW/4 reference luma does not cover the acceptance domain: " +
                "luma=${raw4.width}x${raw4.height} " +
                "acceptance=${mergeWeightWidth}x$mergeWeightHeight"
        }
        return raw4.texture
    }

    /**
     * Computes the reference-only half of LK once for the burst.
     *
     * Gradient products depend on neither the current frame nor its initial flow. Keeping these
     * small textures alive across temporal frames removes four serial tile reductions per frame
     * without changing LK iterations. The alpha channel materializes det(H) before LK adds
     * its regularizer; LK accumulates current-minus-reference residuals instead of subtracting
     * two large intensity-product sums.
     */
    private fun buildReferenceAlignmentProducts(
        reference: List<TextureLevel>,
    ): List<ReferenceAlignmentProducts> {
        check(reference.size == alignmentPlan.levels.size)
        val startNs = System.nanoTime()
        return reference.map { level ->
            val tileSize = level.tileSize
            val gridWidth = alignmentGridWidth(level, tileSize)
            val gridHeight = alignmentGridHeight(level, tileSize)
            val products0 = createTexture(
                gridWidth,
                gridHeight,
                GLES30.GL_RGBA32F,
                GLES30.GL_NEAREST,
            )
            GLES30.glUseProgram(alignmentGradientProductsProgram)
            bindTexture(
                alignmentGradientProductsProgram,
                "uReference",
                0,
                level.texture,
            )
            uniform2i(
                alignmentGradientProductsProgram,
                "uImageSize",
                level.width,
                level.height,
            )
            uniform1i(alignmentGradientProductsProgram, "uTileStride", tileSize)
            uniform1i(alignmentGradientProductsProgram, "uTileSize", tileSize)
            draw(
                alignmentGradientProductsProgram,
                gridWidth,
                gridHeight,
                intArrayOf(products0),
            )
            ReferenceAlignmentProducts(
                referenceTexture = level.texture,
                gridWidth = gridWidth,
                gridHeight = gridHeight,
                tileStride = tileSize,
                tileSize = tileSize,
                products0 = products0,
            )
        }.also { products ->
            PLog.i(
                TAG,
                "MGC Align reference products cached levels=${products.size} " +
                    "grids=${products.joinToString { "${it.gridWidth}x${it.gridHeight}" }} " +
                    "cpuSubmit=${elapsedMs(startNs)}ms",
            )
        }
    }

    /**
     * Execute the LK plan with two finest and three coarser iterations. Spatial's configured
     * maximum tile also determines AlignAlt's final candidate-window origin, as in 38CA05C.
     * Spatial's default 16-quad configuration uses a 16-quad final window with no inset.
     * The merge grid remains stride 8 regardless of the LK support. Sabre's existing LK-only
     * configuration is separate from its SNR-selected final support; this is not a claim of
     * parity with the original classic Sabre L1 search path.
     */
    private fun alignPyramids(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
        referenceProducts: List<ReferenceAlignmentProducts>,
        frameIndex: Int = 0,
        finalTileSupport: Int = alignmentPlan.maximumTileSize,
    ): Alignment {
        check(reference.size == current.size)
        check(reference.size == alignmentPlan.levels.size)
        check(referenceProducts.size == reference.size)
        // Scoped to this solve: the frame arena may recycle these names on the next frame.
        val scratch = AlignmentScratch { w, h ->
            createTexture(w, h, GLES30.GL_RGBA32F, GLES30.GL_NEAREST)
        }
        val coarseIndex = reference.lastIndex
        val coarse = reference[coarseIndex]
        var alignment = renderLucasKanadeLevel(
            reference = coarse,
            current = current[coarseIndex],
            initial = null,
            tileStride = coarse.tileSize,
            tileSize = coarse.tileSize,
            iterations = if (coarseIndex == 0) ALIGN_LK_ITERATIONS_FINEST else ALIGN_LK_ITERATIONS_COARSER,
            normalize = coarseIndex != 0,
            referenceProducts = referenceProducts[coarseIndex],
            scratch = scratch,
        )

        val schedule = ArrayList<String>().apply {
            add(
                "${coarse.width}x${coarse.height}:" +
                    "${coarse.tileSize}px," +
                    "LK${if (coarseIndex == 0) ALIGN_LK_ITERATIONS_FINEST else ALIGN_LK_ITERATIONS_COARSER}," +
                    "normalize=${coarseIndex != 0}"
            )
        }
        for (levelIndex in coarseIndex - 1 downTo 0) {
            val level = reference[levelIndex]
            val coarser = reference[levelIndex + 1]
            val tileSize = level.tileSize
            val scale =
                coarser.scaleToBayerQuads / level.scaleToBayerQuads
            val finest = levelIndex == 0
            val iterations = if (finest) {
                ALIGN_LK_ITERATIONS_FINEST
            } else {
                ALIGN_LK_ITERATIONS_COARSER
            }
            val normalize = !finest
            // V25 estimates this candidate from the complete preceding flow grid,
            // before each ordinary pyramid transition (38D389C / 38D3B04).
            val gpuCandidate = globalAlignment?.estimate(
                alignment.texture, alignment.gridWidth, alignment.gridHeight,
            ) ?: 0
            val globalCandidate = if (gpuCandidate == 0) estimateGlobalAlignmentCandidate(alignment) else null
            val upsampled = renderUpsampledAlignment(
                reference = level,
                current = current[levelIndex],
                initial = alignment,
                targetGridWidth = alignmentGridWidth(level, tileSize),
                targetGridHeight = alignmentGridHeight(level, tileSize),
                targetGridMin = ALIGN_LK_GRID_MIN,
                targetTileStride = tileSize,
                targetTileSize = tileSize,
                scratch = scratch,
                globalCandidate = globalCandidate,
                gpuGlobalCandidate = gpuCandidate,
            )
            alignment = renderLucasKanadeLevel(
                reference = level,
                current = current[levelIndex],
                initial = upsampled,
                tileStride = tileSize,
                tileSize = tileSize,
                iterations = iterations,
                normalize = normalize,
                referenceProducts = referenceProducts[levelIndex],
                scratch = scratch,
            )
            schedule +=
                "${level.width}x${level.height}:${tileSize}px," +
                    "LK$iterations,normalize=$normalize," +
                    "levelScale=$scale,global=histogram"
        }
        // MGC's caller selects the non-overlapping 8-quad layout for every merge enum
        // from Sabre through Spatial RGB (0x344BF84 / 0x5B94448). The finest LK grid
        // is only an intermediate result; feeding it directly to Sabre leaves 64-RAW-pixel
        // blocks and skips the final local/global candidate selection.
        val finalUpsampleMode = run {
            val candidateSupport = minOf(MERGE_BAYER_RAW_TILE_SIZE, finalTileSupport)
            val windowInset = (finalTileSupport - candidateSupport) / 2
            val offset = if (processorPipeline == MgcRawProcessorPipeline.SABRE) {
                MgcSabreAlignmentOffset.forFrame(frameIndex, MERGE_BAYER_RAW_TILE_SIZE / 2)
            } else {
                MgcSabreAlignmentOffset.ZERO
            }
            alignment = renderUpsampledAlignment(
                reference = reference.first(),
                current = current.first(),
                initial = alignment,
                targetGridWidth = bayerAlignmentWidth,
                targetGridHeight = bayerAlignmentHeight,
                targetGridMin = MERGE_ALIGNMENT_GRID_MIN,
                targetTileStride = MERGE_BAYER_RAW_TILE_SIZE / 2,
                targetTileSize = candidateSupport,
                targetOffsetX = offset.x,
                targetOffsetY = offset.y,
                targetWindowInset = windowInset,
                scratch = scratch,
            )
            if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
                // SpatialMergeProcessor::Run writes median_filter_alignment=true
                // (35F1204); AlignAlt applies MedianFilter3x3Halide twice after the
                // final upsample (38D2A58). Rejection and merge must share that result.
                repeat(2) {
                    val output = scratch.target(
                        alignment.gridWidth, alignment.gridHeight, alignment.texture,
                    )
                    GLES30.glUseProgram(medianAlignmentProgram)
                    bindTexture(medianAlignmentProgram, "uAlignment", 0, alignment.texture)
                    uniform2i(
                        medianAlignmentProgram, "uGridSize",
                        alignment.gridWidth, alignment.gridHeight,
                    )
                    draw(
                        medianAlignmentProgram, alignment.gridWidth, alignment.gridHeight,
                        intArrayOf(output),
                    )
                    alignment = alignment.copy(texture = output)
                }
            }
            schedule +=
                "${reference.first().width}x${reference.first().height}:" +
                    "${MERGE_BAYER_RAW_TILE_SIZE / 2}px," +
                    "UpsampleL1(tile=$candidateSupport,inset=$windowInset)"
            check(
                alignment.gridWidth == bayerAlignmentWidth &&
                    alignment.gridHeight == bayerAlignmentHeight &&
                    alignment.tileStride == MERGE_BAYER_RAW_TILE_SIZE / 2 &&
                    alignment.scaleToBayerQuads == 1f &&
                    alignment.gridMin == MERGE_ALIGNMENT_GRID_MIN
            ) {
                "MGC AlignAlt final output does not match the 8-quad merge alignment grid"
            }
            "merge-grid/offset(${offset.x},${offset.y})"
        }
        PLog.i(
            TAG,
                "MGC AlignPyramid target=$ALIGN_TARGET_FINEST_DIMENSION " +
                "guide=${guideWidth}x$guideHeight final=" +
                "${reference.first().width}x${reference.first().height} " +
                "flowGrid=${alignment.gridWidth}x${alignment.gridHeight} " +
                "flowScale=${alignment.scaleToBayerQuads} useL1=false " +
                "gradientProducts=cached " +
                "upsampleL1=$finalUpsampleMode/3-candidate " +
                "medianPasses=${if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) 2 else 0} " +
                "runtimeOptions=256/8/${alignmentPlan.maximumTileSize}/-1/2/3/0/1/0 " +
                "finalSupport=$finalTileSupport " +
                "schedule=${schedule.joinToString(" -> ")}",
        )
        return alignment
    }

    /**
     * UpsampleAlignmentI16Halide selects a whole coarse-flow candidate rather than blending
     * neighboring motion vectors. This preserves discontinuities at moving-object boundaries.
     *
     * Ordinary pyramid transitions include the global histogram candidate with cost
     * multiplier 1. The final call at 0x38D29F4 passes threshold=-1 and reads only the
     * three local candidates.
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
        scratch: AlignmentScratch,
        targetOffsetX: Int = 0,
        targetOffsetY: Int = 0,
        targetWindowInset: Int = 0,
        globalCandidate: GlobalAlignmentCandidate? = null,
        gpuGlobalCandidate: Int = 0,
    ): Alignment {
        require(reference.width == current.width && reference.height == current.height)
        require(targetGridWidth > 0 && targetGridHeight > 0)
        require(targetTileStride > 0 && targetTileSize in 1..64)
        val initialScale =
            initial.scaleToBayerQuads / reference.scaleToBayerQuads
        require(initialScale.isFinite() && initialScale > 0f)
        val output = scratch.target(targetGridWidth, targetGridHeight, initial.texture)
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
        uniform2i(
            upsampleAlignmentProgram, "uTargetImageOffset",
            targetOffsetX - targetWindowInset, targetOffsetY - targetWindowInset,
        )
        uniform1f(upsampleAlignmentProgram, "uInitialScale", initialScale)
        uniform1i(
            upsampleAlignmentProgram, "uHasGlobalCandidate",
            if (globalCandidate != null || gpuGlobalCandidate != 0) 1 else 0,
        )
        if (globalAlignment != null) {
            bindTexture(
                upsampleAlignmentProgram, "uGlobalCandidateTexture", 3,
                if (gpuGlobalCandidate != 0) gpuGlobalCandidate else initial.texture,
            )
        } else {
            uniform2f(upsampleAlignmentProgram, "uGlobalCandidate", globalCandidate?.x ?: 0f, globalCandidate?.y ?: 0f)
        }
        draw(
            upsampleAlignmentProgram,
            targetGridWidth,
            targetGridHeight,
            intArrayOf(output),
        )
        GlesGpuScheduler.yieldToUiRenderer()
        return Alignment(
            texture = output,
            gridWidth = targetGridWidth,
            gridHeight = targetGridHeight,
            tileStride = targetTileStride,
            scaleToBayerQuads = reference.scaleToBayerQuads,
            gridMin = targetGridMin,
            offsetX = targetOffsetX,
            offsetY = targetOffsetY,
        )
    }

    /**
     * EstimateGlobalAlignment from MGC V25's intermediate AlignPyramid::AlignAlt transitions.
     *
     * Flow components are rounded with C llroundf semantics and accumulated into a 129x129
     * histogram over [-64, 64]. A peak supported by at least ten tiles is used directly;
     * otherwise the mean of the rounded, clamped samples is used. The generated four-candidate
     * UpsampleAlignment worker then compares this vector against the three local candidates.
     */
    private fun estimateGlobalAlignmentCandidate(
        alignment: Alignment,
    ): GlobalAlignmentCandidate {
        val pixelCount = alignment.gridWidth * alignment.gridHeight
        require(pixelCount > 0)
        val byteCount = pixelCount * 4 * Float.SIZE_BYTES
        val readback = ByteBuffer.allocateDirect(byteCount).order(ByteOrder.nativeOrder())
        val startNs = System.nanoTime()
        bindRenderTargets(
            intArrayOf(alignment.texture),
            "MGC global alignment source",
        )
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, Float.SIZE_BYTES)
        GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
        GLES30.glReadPixels(
            0,
            0,
            alignment.gridWidth,
            alignment.gridHeight,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            readback,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("read MGC global alignment source")

        val histogram = IntArray(GLOBAL_ALIGNMENT_HISTOGRAM_SIZE * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE)
        val values = readback.asFloatBuffer()
        var sumX = 0L
        var sumY = 0L
        for (pixel in 0 until pixelCount) {
            val flowX = values.get(pixel * 4)
            val flowY = values.get(pixel * 4 + 1)
            check(flowX.isFinite() && flowY.isFinite()) {
                "MGC global alignment source contains non-finite flow at tile=$pixel"
            }
            val binX = roundGlobalAlignmentBin(flowX)
                .coerceIn(-GLOBAL_ALIGNMENT_RADIUS, GLOBAL_ALIGNMENT_RADIUS)
            val binY = roundGlobalAlignmentBin(flowY)
                .coerceIn(-GLOBAL_ALIGNMENT_RADIUS, GLOBAL_ALIGNMENT_RADIUS)
            histogram[
                (binY + GLOBAL_ALIGNMENT_RADIUS) * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE +
                    binX + GLOBAL_ALIGNMENT_RADIUS
            ]++
            sumX += binX
            sumY += binY
        }

        var peakSupport = 0
        var peakX = -GLOBAL_ALIGNMENT_RADIUS
        var peakY = -GLOBAL_ALIGNMENT_RADIUS
        for (binY in -GLOBAL_ALIGNMENT_RADIUS..GLOBAL_ALIGNMENT_RADIUS) {
            val row = (binY + GLOBAL_ALIGNMENT_RADIUS) * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE
            for (binX in -GLOBAL_ALIGNMENT_RADIUS..GLOBAL_ALIGNMENT_RADIUS) {
                val support = histogram[row + binX + GLOBAL_ALIGNMENT_RADIUS]
                if (support > peakSupport) {
                    peakSupport = support
                    peakX = binX
                    peakY = binY
                }
            }
        }
        val usePeak = peakSupport >= GLOBAL_ALIGNMENT_MIN_PEAK_SUPPORT
        val candidateX = if (usePeak) peakX.toFloat() else sumX.toFloat() / pixelCount
        val candidateY = if (usePeak) peakY.toFloat() else sumY.toFloat() / pixelCount
        return GlobalAlignmentCandidate(
            x = candidateX,
            y = candidateY,
            peakSupport = peakSupport,
            usedHistogramPeak = usePeak,
        ).also { candidate ->
            PLog.d(
                TAG,
                "MGC global alignment grid=${alignment.gridWidth}x${alignment.gridHeight} " +
                    "candidate=(${candidate.x},${candidate.y}) peak=${candidate.peakSupport} " +
                    "source=${if (candidate.usedHistogramPeak) "histogram" else "mean"} " +
                    "readback=${elapsedMs(startNs)}ms",
            )
        }
    }

    private fun roundGlobalAlignmentBin(value: Float): Int = if (value >= 0f) {
        kotlin.math.floor(value.toDouble() + 0.5).toInt()
    } else {
        kotlin.math.ceil(value.toDouble() - 0.5).toInt()
    }

    private fun renderLucasKanadeLevel(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment?,
        tileStride: Int,
        tileSize: Int,
        iterations: Int,
        normalize: Boolean,
        referenceProducts: ReferenceAlignmentProducts,
        scratch: AlignmentScratch,
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
        check(
            referenceProducts.referenceTexture == reference.texture &&
                referenceProducts.gridWidth == gridWidth &&
                referenceProducts.gridHeight == gridHeight &&
                referenceProducts.tileStride == tileStride &&
                referenceProducts.tileSize == tileSize
        ) {
            "Cached LK reference products do not match the requested pyramid level"
        }

        var input = initial
        repeat(iterations) {
            val output = scratch.target(gridWidth, gridHeight, input?.texture ?: 0)
            // Texture allocation changes the active unit's binding; finish it before binding inputs.
            val inputTexture = input?.texture ?: createZeroFlowTexture()
            GLES30.glUseProgram(blockLucasKanadeProgram)
            bindTexture(blockLucasKanadeProgram, "uReference", 0, reference.texture)
            bindTexture(blockLucasKanadeProgram, "uCurrent", 1, current.texture)
            bindTexture(
                blockLucasKanadeProgram,
                "uProducts0",
                2,
                referenceProducts.products0,
            )
            bindTexture(
                blockLucasKanadeProgram,
                "uInitialAlignment",
                3,
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
            GlesGpuScheduler.yieldToUiRenderer()
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

    private fun createConvertedAlignment(alignment: Alignment): ConvertedAlignment {
        require(alignment.gridWidth > 0 && alignment.gridHeight > 0) {
            "ConvertAlignment requires a non-empty alignment grid"
        }
        if (processorPipeline == MgcRawProcessorPipeline.SABRE) {
            // Preserve the original sparse texture and its per-frame transform. Expanding
            // it first to RAW/2 quantizes shifted tile boundaries to two RAW pixels.
            require(alignment.gridMin == 0 && alignment.scaleToBayerQuads == 1f)
            val output = createTexture(
                alignment.gridWidth, alignment.gridHeight, GLES30.GL_RGBA16F, GLES30.GL_NEAREST,
            )
            renderConvertedAlignment(
                alignment, output, 1, alignment.gridWidth, alignment.gridHeight,
            )
            return ConvertedAlignment(
                texture = output,
                scaleX = (width / 2).toFloat() / (alignment.gridWidth * alignment.tileStride),
                scaleY = (height / 2).toFloat() / (alignment.gridHeight * alignment.tileStride),
                offsetX = 2f * alignment.offsetX / width,
                offsetY = 2f * alignment.offsetY / height,
            )
        }
        val strideInBayerQuads =
            alignment.tileStride.toFloat() * alignment.scaleToBayerQuads
        require(strideInBayerQuads.isFinite() && strideInBayerQuads > 0f) {
            "ConvertAlignment requires a positive finite Bayer-quad stride"
        }
        val integerStrideInBayerQuads = strideInBayerQuads.toInt()
        require(
            strideInBayerQuads == integerStrideInBayerQuads.toFloat() &&
                integerStrideInBayerQuads % REJECTION_BAYER_QUADS_PER_PIXEL == 0
        ) {
            "ConvertAlignment cannot map Bayer-quad stride=$strideInBayerQuads " +
                "onto the RAW/2 rejection domain"
        }
        val alignmentTileSize =
            integerStrideInBayerQuads / REJECTION_BAYER_QUADS_PER_PIXEL
        val output = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        renderConvertedAlignment(alignment, output, alignmentTileSize)

        // Expand V25's tile-domain converted values onto our dense RAW/2 texture. Both XY
        // and the 3x3 tile-flow range in B stay constant within each alignment tile. Consumers
        // use normalized image coordinates and therefore keep the identity sampling transform.
        return ConvertedAlignment(
            texture = output,
            scaleX = 1f,
            scaleY = 1f,
            offsetX = 0f,
            offsetY = 0f,
        )
    }

    private fun renderConvertedAlignment(
        alignment: Alignment,
        output: Int,
        alignmentTileSize: Int,
        outputWidth: Int = rejectionWidth,
        outputHeight: Int = rejectionHeight,
    ) {
        GLES30.glUseProgram(convertAlignmentProgram)
        bindTexture(convertAlignmentProgram, "uAlignment", 0, alignment.texture)
        uniform2i(
            convertAlignmentProgram,
            "uGridSize",
            alignment.gridWidth,
            alignment.gridHeight,
        )
        uniform1i(convertAlignmentProgram, "uAlignmentTileSize", alignmentTileSize)
        uniform1i(convertAlignmentProgram, "uAlignmentGridMin", alignment.gridMin)
        uniform1f(
            convertAlignmentProgram,
            "uAlignmentScale",
            alignment.scaleToBayerQuads,
        )
        uniform2f(
            convertAlignmentProgram,
            "uFlowNormalizationSize",
            ceilDiv(width, 2).toFloat(),
            ceilDiv(height, 2).toFloat(),
        )
        draw(
            convertAlignmentProgram,
            outputWidth,
            outputHeight,
            intArrayOf(output),
        )
    }

    private fun uniformFlowScaleOffset(program: Int, flow: ConvertedAlignment) {
        uniform4f(
            program,
            "uFlowScaleOffset",
            flow.scaleX,
            flow.scaleY,
            flow.offsetX,
            flow.offsetY,
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
        check(
            (outputMode == MgcSpatialOutputMode.RGB || mergeMethod == MgcMergeMethod.SABRE) &&
                covarianceProgram != 0,
        )
        GLES30.glUseProgram(covarianceProgram)
        bindTexture(covarianceProgram, "uRaw", 0, rawTexture)
        bindTexture(covarianceProgram, "uNoiseEstimates", 1, noiseTexture)
        uniform2i(covarianceProgram, "uRawSize", width, height)
        uniform2i(covarianceProgram, "uGuideSize", guideWidth, guideHeight)
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
        // UnblockerRaw10Halide evaluates a one-cell border and runs UnblockerBlur
        // before the map is sampled by GenerateRejectionTexture. Keeping these as
        // separate R8 passes also preserves the AOT's byte-domain rounding.
        val paddedWidth = outputWidth + 2
        val paddedHeight = outputHeight + 2
        val preBlurTexture = createTexture(
            paddedWidth,
            paddedHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(unblockerProgram)
        bindTexture(unblockerProgram, "uRaw", 0, rawTexture)
        uniform2i(unblockerProgram, "uRawSize", width, height)
        uniform2i(unblockerProgram, "uGridSize", outputWidth, outputHeight)
        uniform2i(unblockerProgram, "uTileOffset", -1, -1)
        uniform1i(unblockerProgram, "uCfaPattern", cfaPattern)
        uniform1f(
            unblockerProgram,
            "uBlackLevelGreen",
            0.5f * (calibration.blackLevels[1] + calibration.blackLevels[2]),
        )
        // UnblockerRaw10Halide receives the arithmetic mean of the two green-channel
        // noise models. These values describe the variance of one green observation;
        // they are not the variance of the averaged-green guide sample.
        val greenShot = 0.5f * (
            calibration.unblockerShotNoise[1] + calibration.unblockerShotNoise[2]
            )
        val greenRead = 0.5f * (
            calibration.unblockerReadNoise[1] + calibration.unblockerReadNoise[2]
            )
        uniform1f(unblockerProgram, "uNoiseQuadratic", 0f)
        uniform1f(unblockerProgram, "uNoiseScale", greenShot)
        uniform1f(unblockerProgram, "uNoiseOffset", greenRead)
        uniform1f(unblockerProgram, "uOutputScale", UNBLOCKER_OUTPUT_SCALE)
        uniform1f(unblockerProgram, "uOutputOffset", UNBLOCKER_OUTPUT_OFFSET)
        draw(
            unblockerProgram,
            paddedWidth,
            paddedHeight,
            intArrayOf(preBlurTexture),
        )

        GLES30.glUseProgram(unblockerBlurProgram)
        bindTexture(unblockerBlurProgram, "uPreBlur", 0, preBlurTexture)
        draw(
            unblockerBlurProgram,
            outputWidth,
            outputHeight,
            intArrayOf(outputTexture),
        )
    }

    private fun renderRejection(
        referenceGuide: Int,
        currentGuide: Int,
        flow: ConvertedAlignment,
        unblockerTexture: Int,
        noiseTexture: Int,
        reverseWeightTexture: Int,
        pixelDifferenceTexture: Int,
    ) {
        GLES30.glUseProgram(rejectionProgram)
        bindTexture(rejectionProgram, "uBaseGuide", 0, referenceGuide)
        bindTexture(rejectionProgram, "uAltGuide", 1, currentGuide)
        bindTexture(rejectionProgram, "uFlow", 2, flow.texture)
        bindTexture(rejectionProgram, "uUnblocker", 3, unblockerTexture)
        bindTexture(rejectionProgram, "uNoiseEstimates", 4, noiseTexture)
        uniform2i(rejectionProgram, "uGuideSize", guideWidth, guideHeight)
        // MGC constructs the 1.5-pixel border in full-resolution Bayer coordinates.
        uniform4f(
            rejectionProgram,
            "uFrameBorderPadded",
            SABRE_SAMPLE_BORDER_PIXELS / width,
            SABRE_SAMPLE_BORDER_PIXELS / height,
            1f - SABRE_SAMPLE_BORDER_PIXELS / width,
            1f - SABRE_SAMPLE_BORDER_PIXELS / height,
        )
        uniform2i(
            rejectionProgram,
            "uRejectionSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniformFlowScaleOffset(rejectionProgram, flow)
        uniform2f(rejectionProgram, "uUnblockerScale", 1f, 1f)
        uniform4f(
            rejectionProgram,
            "uNoiseTextureScaleBias",
            0.9f,
            0.5f,
            0.05f,
            0.25f,
        )
        uniform2f(
            rejectionProgram,
            "uColorDifferenceMultiplier",
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_RGB,
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_GREEN,
        )
        // The captured 9.88235261e-5 value belongs to the 2040-wide Bayer-quad flow
        // normalization domain of a 4080 RAW, matching the RAW/2 rejection texture.
        val flowVariationThresholds =
            MgcSabreRejectionTuning.flowVariationThresholds(
                rejectionGeometry.bayerQuadWidth,
            )
        val diagnosticMode = RawStackRuntimeDebug.mgcSpatialDiagnosticMode
        val unblockerReductionThreshold =
            if (
                diagnosticMode == MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY ||
                diagnosticMode == MgcSpatialDiagnosticMode.DISABLE_UNBLOCKER
            ) {
                Float.MAX_VALUE
            } else {
                flowVariationThresholds.unblockerReduction
            }
        val motionPriorThreshold =
            if (diagnosticMode == MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY) {
                Float.MAX_VALUE
            } else {
                flowVariationThresholds.extraMotionRobustness
            }
        uniform1f(
            rejectionProgram,
            "uUnblockerReductionThreshold",
            unblockerReductionThreshold,
        )
        uniform1f(
            rejectionProgram,
            "uExtraMotionRobustnessBoost",
            MgcSabreRejectionTuning.EXTRA_MOTION_ROBUSTNESS_BOOST,
        )
        uniform1f(
            rejectionProgram,
            "uMotionRobustnessBoostVarianceThreshold",
            MgcSabreRejectionTuning.MOTION_ROBUSTNESS_VARIANCE_THRESHOLD,
        )
        uniform1f(
            rejectionProgram,
            "uExtraMotionRobustnessMotionThreshold",
            motionPriorThreshold,
        )
        GlesGpuScheduler.yieldToUiRenderer()
        draw(
            rejectionProgram,
            rejectionWidth,
            rejectionHeight,
            intArrayOf(reverseWeightTexture, pixelDifferenceTexture),
        )
        GlesGpuScheduler.yieldToUiRenderer()
    }

    private fun renderRgbAotRejectionAcceptance(
        acceptance: Int,
        outputAcceptance: Int,
        frameScale: Float,
    ) {
        check(rejectionAcceptanceProgram != 0) {
            "Spatial RGB rejection-acceptance program is not initialized"
        }
        GLES30.glUseProgram(rejectionAcceptanceProgram)
        bindTexture(rejectionAcceptanceProgram, "uAcceptance", 0, acceptance)
        uniform2i(
            rejectionAcceptanceProgram,
            "uSize",
            mergeWeightWidth,
            mergeWeightHeight,
        )
        uniform1f(
            rejectionAcceptanceProgram,
            "uFrameScale",
            frameScale.takeIf { it.isFinite() && it > 0f }
                ?: SPATIAL_IDENTITY_MULTIPLIER,
        )
        draw(
            rejectionAcceptanceProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(outputAcceptance),
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
            mergeWeightWidth,
            mergeWeightHeight,
        )
        uniform1fv(
            clippedGaussianHorizontalProgram,
            "uKernel",
            pixelDifferenceKernel,
        )
        draw(
            clippedGaussianHorizontalProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(horizontal),
        )
        GlesGpuScheduler.yieldToUiRenderer()

        GLES30.glUseProgram(clippedGaussianVerticalProgram)
        bindTexture(clippedGaussianVerticalProgram, "uInput", 0, horizontal)
        uniform2i(
            clippedGaussianVerticalProgram,
            "uSize",
            mergeWeightWidth,
            mergeWeightHeight,
        )
        uniform1fv(
            clippedGaussianVerticalProgram,
            "uKernel",
            pixelDifferenceKernel,
        )
        draw(
            clippedGaussianVerticalProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(output),
        )
        GlesGpuScheduler.yieldToUiRenderer()
    }

    private fun renderRejectionDownsample(
        reverseWeight: Int,
        pixelDifference: Int,
        outputWeight: Int,
        outputPixelDifference: Int,
    ) {
        GLES30.glUseProgram(rejectionDownsampleProgram)
        bindTexture(rejectionDownsampleProgram, "uRejection", 0, reverseWeight)
        bindTexture(rejectionDownsampleProgram, "uPixelDifference", 1, pixelDifference)
        uniform2i(
            rejectionDownsampleProgram,
            "uInputSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            rejectionDownsampleProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(outputWeight, outputPixelDifference),
        )
        GlesGpuScheduler.yieldToUiRenderer()
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
            mergeWeightWidth,
            mergeWeightHeight,
        )
        draw(
            rejectionFilterDownsampleProgram,
            rejectionFilterWidth,
            rejectionFilterHeight,
            intArrayOf(downsampledLuma, downsampledRejection),
        )
        GlesGpuScheduler.yieldToUiRenderer()
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
        GlesGpuScheduler.yieldToUiRenderer()
    }

    private fun renderRejectionPostprocess(
        originalWeight: Int,
        filteredWeight: Int,
        pixelDifference: Int,
        output: Int,
    ) {
        GLES30.glUseProgram(rejectionPostprocessProgram)
        bindTexture(
            rejectionPostprocessProgram,
            "uOriginalWeight",
            0,
            originalWeight,
        )
        bindTexture(
            rejectionPostprocessProgram,
            "uFilteredWeight",
            1,
            filteredWeight,
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
            mergeWeightWidth,
            mergeWeightHeight,
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
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(output),
        )
        GlesGpuScheduler.yieldToUiRenderer()
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
        GlesGpuScheduler.yieldToUiRenderer()
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
        frame: RawStackFrame,
        referenceExposure: Double,
        referenceCalibration: FrameCalibration,
        referenceGuide: Int,
        referenceGrayPyramid: List<TextureLevel>,
        referenceRejectionLuma: Int,
        referenceAlignmentProducts: List<ReferenceAlignmentProducts>,
        currentRaw: Int,
        currentGuide: Int,
        currentCovariance: Int,
        kernelTuning: BayerKernelTuning,
    ): PreparedTemporalFrame {
        val totalStartNs = System.nanoTime()
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
        val guideStartNs = System.nanoTime()
        val currentNoiseLut = createNoiseLut(referenceCalibration, calibration)
        renderGuide(
            rawTexture = currentRaw,
            noiseTexture = currentNoiseLut,
            calibration = calibration,
            guideTexture = currentGuide,
            forceReferenceColorRgb = 0f,
        )
        if (mergeMethod == MgcMergeMethod.SABRE) {
            renderCovariance(
                rawTexture = currentRaw,
                noiseTexture = currentNoiseLut,
                calibration = calibration,
                outputTexture = currentCovariance,
            )
            if (mergeMethod == MgcMergeMethod.SABRE) {
                currentMergeCovariance = currentCovariance
            }
        }
        val guideNs = System.nanoTime() - guideStartNs
        val pyramidStartNs = System.nanoTime()
        val currentGrayPyramid = buildGrayPyramid(
            rawTexture = currentRaw,
            calibration = calibration,
        )
        val pyramidNs = System.nanoTime() - pyramidStartNs
        val alignmentStartNs = System.nanoTime()
        val alignment = alignPyramids(
            reference = referenceGrayPyramid,
            current = currentGrayPyramid,
            referenceProducts = referenceAlignmentProducts,
        )
        val alignmentNs = System.nanoTime() - alignmentStartNs
        val flowStartNs = System.nanoTime()
        val flow = createConvertedAlignment(alignment)
        val flowNs = System.nanoTime() - flowStartNs
        val rejectionStartNs = System.nanoTime()
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
        val rawReverseWeight = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        val rawPixelDifference = createTexture(
            rejectionWidth,
            rejectionHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val initialWeight = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        val pixelDifference = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val pixelDifferenceHorizontal = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
            GLES30.GL_R32F,
            GLES30.GL_NEAREST,
        )
        val smoothedPixelDifference = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
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
        val frameWeight = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
            GLES30.GL_R8,
            GLES30.GL_LINEAR,
        )
        renderRejection(
            referenceGuide = referenceGuide,
            currentGuide = currentGuide,
            flow = flow,
            unblockerTexture = unblocker,
            noiseTexture = currentNoiseLut,
            reverseWeightTexture = rawReverseWeight,
            pixelDifferenceTexture = rawPixelDifference,
        )
        // SpatialMerge::PrepareAccumulation bypasses both FindBlockTiles and
        // AdjustRejectionWeights for an ordinary, same-exposure burst frame. The latter is
        // entered only for a bracketed exposure (NeedsBlockTileDetection is exposure ratio > 2)
        // or the corresponding special frame metadata. Keep NORMAL frames on the direct
        // GenerateRejectionTexture acceptance path instead of modifying every temporal slice.
        val adjustRgbRejectionWeight = frame.role != RawBurstFrameRole.NORMAL
        val rgbRejectionWeightScale = if (adjustRgbRejectionWeight) {
            calibration.rejectionWeightScale
        } else {
            SPATIAL_IDENTITY_MULTIPLIER
        }
        // V25 closes the GenerateRejectionTexture boundary before FilterRejectionMap:
        // DilateMask converts RAW/2 rejection to RAW/4 acceptance, while Downsample2x
        // brings pixel difference to that same domain. FilterRejectionMap then smooths
        // pixel difference and postprocesses the RAW/4 acceptance in place.
        renderRejectionDownsample(rawReverseWeight, rawPixelDifference, initialWeight, pixelDifference)
        renderClippedGaussianPixelDifference(
            input = pixelDifference,
            horizontal = pixelDifferenceHorizontal,
            output = smoothedPixelDifference,
        )
        renderRejectionFilterDownsample(
            baseLuma = referenceRejectionLuma,
            rejection = initialWeight,
            downsampledLuma = downsampledLuma,
            downsampledRejection = downsampledRejection,
        )
        renderFilteredRejection(
            downsampledLuma = downsampledLuma,
            downsampledRejection = downsampledRejection,
            output = filteredRejection,
        )
        renderRejectionPostprocess(
            originalWeight = initialWeight,
            filteredWeight = filteredRejection,
            pixelDifference = smoothedPixelDifference,
            output = frameWeight,
        )
        val rgbAotRejectionTexture = when {
            outputMode != MgcSpatialOutputMode.RGB -> 0
            rgbRejectionWeightScale == SPATIAL_IDENTITY_MULTIPLIER -> frameWeight
            else -> createTexture(
                mergeWeightWidth,
                mergeWeightHeight,
                GLES30.GL_R8,
                GLES30.GL_LINEAR,
            ).also { output ->
                renderRgbAotRejectionAcceptance(
                    acceptance = frameWeight,
                    outputAcceptance = output,
                    frameScale = rgbRejectionWeightScale,
                )
            }
        }
        val rejectionNs = System.nanoTime() - rejectionStartNs
        PLog.i(
            TAG,
            "MGC Spatial temporal cpuSubmit frame=${frame.frameNumber} role=${frame.role} " +
                "guideCov=${guideNs / 1_000_000L}ms " +
                "pyramid=${pyramidNs / 1_000_000L}ms " +
                "align=${alignmentNs / 1_000_000L}ms " +
                "flow=${flowNs / 1_000_000L}ms " +
                "rejectionScale=$rgbRejectionWeightScale " +
                "rejectionAdjusted=$adjustRgbRejectionWeight " +
                "rejection=${rejectionNs / 1_000_000L}ms " +
                "total=${elapsedMs(totalStartNs)}ms",
        )
        return PreparedTemporalFrame(
            calibration = calibration,
            convertedAlignment = flow,
            bayerAlignmentTexture = alignment.texture,
            weightTexture = frameWeight,
            rgbAotRejectionTexture = rgbAotRejectionTexture,
        )
    }

    private fun renderBentoHighlightMask(
        baseFrame: Int,
        sensorClipping: Int,
        outputMask: Int,
    ) {
        GLES30.glUseProgram(bentoHighlightProgram)
        bindTexture(bentoHighlightProgram, "uBaseFrame", 0, baseFrame)
        bindTexture(bentoHighlightProgram, "uSensorClipping", 1, sensorClipping)
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

    private fun renderBentoCollarSupport(
        baseGuide: Int,
        shortGuide: Int,
        highlightMask: Int,
        forwardAlignment: Alignment,
        reverseAlignment: Alignment,
        output: Int,
    ) {
        val program = bentoCollarSupportProgram
        check(program != 0)
        GLES30.glUseProgram(program)
        bindTexture(program, "uBaseGuide", 0, baseGuide)
        bindTexture(program, "uShortGuide", 1, shortGuide)
        bindTexture(program, "uHighlightMask", 2, highlightMask)
        bindTexture(program, "uForwardAlignment", 3, forwardAlignment.texture)
        bindTexture(program, "uReverseAlignment", 4, reverseAlignment.texture)
        uniform2i(program, "uGuideSize", guideWidth, guideHeight)
        uniform2i(program, "uGridSize", forwardAlignment.gridWidth, forwardAlignment.gridHeight)
        uniform1i(program, "uTileStride", forwardAlignment.tileStride)
        draw(program, forwardAlignment.gridWidth, forwardAlignment.gridHeight, intArrayOf(output))
    }

    private fun readRgba32f(texture: Int, width: Int, height: Int, label: String): FloatArray {
        val count = Math.multiplyExact(Math.multiplyExact(width, height), 4)
        val buffer = ByteBuffer.allocateDirect(Math.multiplyExact(count, Float.SIZE_BYTES))
            .order(ByteOrder.nativeOrder())
        bindRenderTargets(intArrayOf(texture), label)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, Float.SIZE_BYTES)
        GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_FLOAT, buffer)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        return FloatArray(count).also { buffer.asFloatBuffer().get(it) }
    }

    private fun renderAlignedRawClippingMask(
        rawTexture: Int,
        flow: ConvertedAlignment,
        calibration: FrameCalibration,
        outputWidth: Int,
        outputHeight: Int,
        bayerQuadsPerTexel: Int,
        clippingThreshold: Float = LONG_FRAME_RAW_CLIPPING_THRESHOLD,
    ): Int {
        check(alignedRawClippingMaskProgram != 0) {
            "Aligned RAW clipping-mask program is not initialized"
        }
        val output = createTexture(
            outputWidth,
            outputHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        require(bayerQuadsPerTexel > 0)
        require(clippingThreshold.isFinite() && clippingThreshold > 0f && clippingThreshold <= 1f)
        val phaseClippingLevels = FloatArray(4) { phase ->
            val blackLevel = calibration.blackLevels[canonicalChannelAtPhase(phase)]
            blackLevel +
                (sensorWhiteLevel - blackLevel) * clippingThreshold
        }
        GLES30.glUseProgram(alignedRawClippingMaskProgram)
        bindTexture(alignedRawClippingMaskProgram, "uRaw", 0, rawTexture)
        bindTexture(alignedRawClippingMaskProgram, "uFlow", 1, flow.texture)
        uniformFlowScaleOffset(alignedRawClippingMaskProgram, flow)
        uniform2i(alignedRawClippingMaskProgram, "uRawSize", width, height)
        uniform2i(
            alignedRawClippingMaskProgram,
            "uBayerSize",
            rejectionGeometry.bayerQuadWidth,
            rejectionGeometry.bayerQuadHeight,
        )
        uniform2i(
            alignedRawClippingMaskProgram,
            "uOutputSize",
            outputWidth,
            outputHeight,
        )
        uniform1i(
            alignedRawClippingMaskProgram,
            "uBayerQuadsPerTexel",
            bayerQuadsPerTexel,
        )
        uniform4fv(
            alignedRawClippingMaskProgram,
            "uPhaseClippingLevels",
            phaseClippingLevels,
        )
        draw(
            alignedRawClippingMaskProgram,
            outputWidth,
            outputHeight,
            intArrayOf(output),
        )
        return output
    }

    private fun renderBentoAdjustedMask(
        baseFrame: Int,
        ultrashortFrame: Int,
        highlightMask: Int,
        flow: ConvertedAlignment,
        exposureRatio: Float,
        adjustedMask: Int,
        inpaintingMask: Int,
    ) {
        GLES30.glUseProgram(bentoAdjustProgram)
        bindTexture(bentoAdjustProgram, "uBaseFrame", 0, baseFrame)
        bindTexture(bentoAdjustProgram, "uUltrashortFrame", 1, ultrashortFrame)
        bindTexture(bentoAdjustProgram, "uHighlightMask", 2, highlightMask)
        bindTexture(bentoAdjustProgram, "uFlow", 3, flow.texture)
        uniformFlowScaleOffset(bentoAdjustProgram, flow)
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
            ),
        )
    }

    private fun renderBentoRewrittenWeight(
        existingWeight: Int,
        bentoMask: Int,
        outputWeight: Int,
        hasExistingWeight: Boolean,
        outputWidth: Int = mergeWeightWidth,
        outputHeight: Int = mergeWeightHeight,
    ) {
        GLES30.glUseProgram(bentoRewriteWeightProgram)
        bindTexture(bentoRewriteWeightProgram, "uExistingWeight", 0, existingWeight)
        bindTexture(bentoRewriteWeightProgram, "uBentoMask", 1, bentoMask)
        uniform2i(
            bentoRewriteWeightProgram,
            "uSize",
            outputWidth,
            outputHeight,
        )
        uniform1i(
            bentoRewriteWeightProgram,
            "uHasExistingWeight",
            if (hasExistingWeight) 1 else 0,
        )
        draw(
            bentoRewriteWeightProgram,
            outputWidth,
            outputHeight,
            intArrayOf(outputWeight),
        )
    }

    private fun readR8Mask(
        texture: Int,
        label: String,
        maskWidth: Int = guideWidth,
        maskHeight: Int = guideHeight,
    ): ByteArray {
        val totalStartNs = System.nanoTime()
        val byteCount = maskWidth.toLong() * maskHeight.toLong()
        require(byteCount <= Int.MAX_VALUE) { "$label is too large: $byteCount" }
        val buffer = ByteBuffer.allocateDirect(byteCount.toInt())
        val bindStartNs = System.nanoTime()
        bindRenderTargets(intArrayOf(texture), label)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        val bindNs = System.nanoTime() - bindStartNs
        val readStartNs = System.nanoTime()
        GLES30.glReadPixels(
            0,
            0,
            maskWidth,
            maskHeight,
            GLES30.GL_RED,
            GLES30.GL_UNSIGNED_BYTE,
            buffer,
        )
        val readCallNs = System.nanoTime() - readStartNs
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError(label)
        buffer.rewind()
        val copyStartNs = System.nanoTime()
        return ByteArray(byteCount.toInt()).also { output ->
            buffer.get(output)
            PLog.i(
                TAG,
                "MGC R8 readback label=$label size=${maskWidth}x$maskHeight " +
                    "bytes=$byteCount bind=${bindNs / 1_000_000L}ms " +
                    "readCall=${readCallNs / 1_000_000L}ms " +
                    "cpuCopy=${elapsedMs(copyStartNs)}ms total=${elapsedMs(totalStartNs)}ms",
            )
        }
    }

    /**
     * Reduces an R8 mask to one exact active-pixel count on GLES 3.1+.
     *
     * The source texture stays on the GPU and each 8x8 work group contributes one atomic add to a
     * four-byte SSBO. The CPU synchronization is required by Bento admission either way, but this
     * avoids both the full 786 KiB transfer and the background-priority Kotlin scan.
     */
    private fun countActiveMaskPixelsGpu(
        texture: Int,
        label: String,
    ): ActiveMaskGpuCount {
        check(bentoHighlightCountProgram != 0) {
            "$label compute program is unavailable"
        }
        val setupStartNs = System.nanoTime()
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        val buffer = ids[0]
        check(buffer != 0) { "$label glGenBuffers returned 0" }
        buffers += buffer
        var bufferMapped = false
        try {
            val zero = ByteBuffer.allocateDirect(Int.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
                .apply {
                    putInt(0)
                    rewind()
                }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                Int.SIZE_BYTES,
                zero,
                GLES31.GL_STREAM_READ,
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer)
            GLES31.glUseProgram(bentoHighlightCountProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
            GLES31.glUniform1i(
                uniformLocation(bentoHighlightCountProgram, "uMask"),
                0,
            )
            GLES31.glUniform2i(
                uniformLocation(bentoHighlightCountProgram, "uSize"),
                guideWidth,
                guideHeight,
            )
            val setupNs = System.nanoTime() - setupStartNs
            val submitStartNs = System.nanoTime()
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(guideWidth),
                GlesComputeWorkGroup.imageGroupCount(guideHeight),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            val submitNs = System.nanoTime() - submitStartNs
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glUseProgram(0)
            checkGlError("submit $label GPU count")

            val gpuWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                label = "$label GPU count",
                checkGlError = ::checkGlError,
            )
            val mapStartNs = System.nanoTime()
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                Int.SIZE_BYTES,
                GLES31.GL_MAP_READ_BIT,
            ) as? ByteBuffer ?: error("Unable to map $label GPU count")
            bufferMapped = true
            val activePixels = mapped.order(ByteOrder.nativeOrder()).getInt(0)
            check(GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)) {
                "$label GPU count buffer contents became invalid"
            }
            bufferMapped = false
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            val mapNs = System.nanoTime() - mapStartNs
            check(activePixels in 0..guideWidth * guideHeight) {
                "$label GPU count is out of range: $activePixels"
            }
            checkGlError("read $label GPU count")
            return ActiveMaskGpuCount(
                activePixels = activePixels,
                setupNs = setupNs,
                submitNs = submitNs,
                gpuWaitMs = gpuWaitMs,
                mapNs = mapNs,
            )
        } finally {
            if (bufferMapped) {
                GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            if (buffers.remove(buffer)) {
                GLES31.glDeleteBuffers(1, intArrayOf(buffer), 0)
            }
        }
    }

    private fun createStrengthCapture(
        frameCount: Int,
        referenceCalibration: FrameCalibration,
    ): StrengthCapture {
        val geometry = mgcSpatialDiagnosticGeometry(
            outputMode = outputMode,
            imageWidth = width,
            imageHeight = height,
        )
        require(frameCount >= 1)
        val maximumTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maximumTextureSize, 0)
        val alignmentLayout = createMgcSpatialStrengthAtlasLayout(
            planeWidth = geometry.alignmentWidth,
            planeHeight = geometry.alignmentHeight,
            planeCount = frameCount * 2,
            maximumTextureSize = maximumTextureSize[0],
        )
        val rejectionLayout = createMgcSpatialStrengthAtlasLayout(
            planeWidth = geometry.rejectionWidth,
            planeHeight = geometry.rejectionHeight,
            planeCount = frameCount,
            maximumTextureSize = maximumTextureSize[0],
        )
        PLog.i(
            TAG,
            "MGC Spatial strength atlas layout frames=$frameCount " +
                "maxTexture=${maximumTextureSize[0]} " +
                "alignment=${alignmentLayout.atlasWidth}x${alignmentLayout.atlasHeight} " +
                "grid=${alignmentLayout.columns}x${alignmentLayout.rows} " +
                "rejection=${rejectionLayout.atlasWidth}x${rejectionLayout.atlasHeight} " +
                "grid=${rejectionLayout.columns}x${rejectionLayout.rows}",
        )
        val identityNoise = spatialNoiseParameters(referenceCalibration)
        return StrengthCapture(
            geometry = geometry,
            outputMode = outputMode,
            frameCount = frameCount,
            alignmentLayout = alignmentLayout,
            rejectionLayout = rejectionLayout,
            alignmentAtlas = createTexture(
                alignmentLayout.atlasWidth,
                alignmentLayout.atlasHeight,
                GLES30.GL_R32F,
                GLES30.GL_NEAREST,
            ),
            rejectionAtlas = createTexture(
                rejectionLayout.atlasWidth,
                rejectionLayout.atlasHeight,
                GLES30.GL_R8,
                GLES30.GL_NEAREST,
            ),
            inputReadNoise = FloatArray(frameCount * 3) { index ->
                identityNoise.read[index / frameCount]
            },
            inputShotNoise = FloatArray(frameCount * 3) { index ->
                identityNoise.shot[index / frameCount]
            },
            frameWeights = FloatArray(frameCount) { SPATIAL_IDENTITY_MULTIPLIER },
            kernelSigmas = FloatArray(frameCount) { SPATIAL_IDENTITY_MULTIPLIER },
            captured = BooleanArray(frameCount),
        )
    }

    private fun captureStrengthFrame(
        capture: StrengthCapture,
        frameIndex: Int,
        calibration: FrameCalibration,
        alignmentTexture: Int,
        rejectionTexture: Int,
        identityRejection: Boolean,
    ) {
        require(frameIndex in 0 until capture.frameCount)
        require(!capture.captured[frameIndex])
        if (capture.outputMode == MgcSpatialOutputMode.RGB && !identityRejection) {
            val source = checkNotNull(textureSpecs[rejectionTexture])
            check(source.width == capture.rejectionWidth && source.height == capture.rejectionHeight) {
                "MGC RGB acceptance slice ${source.width}x${source.height} does not match " +
                    "AOT domain ${capture.rejectionWidth}x${capture.rejectionHeight}"
            }
        }
        for (component in 0 until 2) {
            val slot = component * capture.frameCount + frameIndex
            val outputOriginX = capture.alignmentLayout.originX(slot)
            val outputOriginY = capture.alignmentLayout.originY(slot)
            GLES30.glUseProgram(strengthAlignmentProgram)
            bindTexture(strengthAlignmentProgram, "uAlignment", 0, alignmentTexture)
            uniform2i(
                strengthAlignmentProgram,
                "uOutputSize",
                capture.alignmentWidth,
                capture.alignmentHeight,
            )
            uniform2i(
                strengthAlignmentProgram,
                "uOutputOrigin",
                outputOriginX,
                outputOriginY,
            )
            uniform1i(strengthAlignmentProgram, "uComponent", component)
            drawRegion(
                program = strengthAlignmentProgram,
                target = capture.alignmentAtlas,
                viewportLeft = outputOriginX,
                viewportTop = outputOriginY,
                viewportWidth = capture.alignmentWidth,
                viewportHeight = capture.alignmentHeight,
            )
        }
        val rejectionOriginX = capture.rejectionLayout.originX(frameIndex)
        val rejectionOriginY = capture.rejectionLayout.originY(frameIndex)
        GLES30.glUseProgram(strengthRejectionProgram)
        bindTexture(strengthRejectionProgram, "uRejection", 0, rejectionTexture)
        uniform2i(
            strengthRejectionProgram,
            "uOutputSize",
            capture.rejectionWidth,
            capture.rejectionHeight,
        )
        uniform2i(
            strengthRejectionProgram,
            "uOutputOrigin",
            rejectionOriginX,
            rejectionOriginY,
        )
        uniform1i(
            strengthRejectionProgram,
            "uIdentityRejection",
            if (identityRejection) 1 else 0,
        )
        uniform1i(
            strengthRejectionProgram,
            "uExactDomain",
            if (capture.outputMode == MgcSpatialOutputMode.RGB) 1 else 0,
        )
        drawRegion(
            program = strengthRejectionProgram,
            target = capture.rejectionAtlas,
            viewportLeft = rejectionOriginX,
            viewportTop = rejectionOriginY,
            viewportWidth = capture.rejectionWidth,
            viewportHeight = capture.rejectionHeight,
        )
        val noise = spatialNoiseParameters(calibration)
        for (channel in 0 until 3) {
            val destination = channel * capture.frameCount + frameIndex
            capture.inputReadNoise[destination] = noise.read[channel]
            capture.inputShotNoise[destination] = noise.shot[channel]
        }
        check(calibration.globalFrameWeight.isFinite() && calibration.globalFrameWeight > 0f &&
            calibration.kernelSigma.isFinite() && calibration.kernelSigma > 0f) {
            "MGC Spatial strength frame=$frameIndex has invalid parameters: " +
                "weight=${calibration.globalFrameWeight} sigma=${calibration.kernelSigma}"
        }
        capture.frameWeights[frameIndex] = calibration.globalFrameWeight
        capture.kernelSigmas[frameIndex] = calibration.kernelSigma
        capture.captured[frameIndex] = true
    }

    private fun spatialNoiseParameters(
        calibration: FrameCalibration,
    ): SpatialNoiseParameters {
        fun validPair(channel: Int): Boolean {
            val read = calibration.cameraRgbReadNoise.getOrElse(channel) { Float.NaN }
            val shot = calibration.cameraRgbShotNoise.getOrElse(channel) { Float.NaN }
            return read.isFinite() && read >= 0f &&
                shot.isFinite() && shot >= 0f &&
                (read > 0f || shot > 0f)
        }

        check(calibration.cameraRgbReadNoise.size == 3 &&
            calibration.cameraRgbShotNoise.size == 3 && (0..2).all(::validPair)) {
            "MGC Spatial has invalid camera RGB noise: " +
                "read=${calibration.cameraRgbReadNoise.contentToString()} " +
                "shot=${calibration.cameraRgbShotNoise.contentToString()}"
        }
        return SpatialNoiseParameters(
            read = calibration.cameraRgbReadNoise.copyOf(),
            shot = calibration.cameraRgbShotNoise.copyOf(),
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

    private fun countActiveMaskPixels(mask: ByteArray): Int =
        mask.count { (it.toInt() and 0xff) != 0 }

    private fun elapsedMs(startNs: Long): Long =
        (System.nanoTime() - startNs) / 1_000_000L

    private fun assessBentoMasks(
        baseHighlightMask: ByteArray,
        inpaintingMask: ByteArray,
        ultrashortClippingMask: ByteArray,
        hasAlignmentSupport: Boolean,
    ): BentoAssessment {
        val guideMaskSize = guideWidth * guideHeight
        require(
            baseHighlightMask.size == guideMaskSize &&
                inpaintingMask.size == guideMaskSize &&
                ultrashortClippingMask.size == guideMaskSize,
        )
        var clippedPixels = 0
        var clippedByUltrashortPixels = 0
        for (index in 0 until guideMaskSize) {
            if ((baseHighlightMask[index].toInt() and 0xff) == 0) continue
            clippedPixels += 1
            if ((ultrashortClippingMask[index].toInt() and 0xff) != 0) {
                clippedByUltrashortPixels += 1
            }
        }
        val clippedRatio = clippedPixels.toFloat() / guideMaskSize.toFloat()
        // Sensor clipping records saturation extent only. Even within one connected highlight,
        // a clipped short core can be surrounded by recoverable short observations.
        val ultrashortOverlap = if (clippedPixels > 0) {
            clippedByUltrashortPixels.toFloat() / clippedPixels.toFloat()
        } else {
            0f
        }
        // Accepting the ultrashort moves the whole output into its exposure domain, where any
        // reference-only clipped plateau renders at 1/ratio as a flat gray patch. A ghost hole
        // too large to inpaint therefore rejects the ultrashort for the frame, not per region.
        val largestInpaintingArea = BentoFallbackTopology.largestEightConnectedComponentArea(
            inpaintingMask,
            guideWidth,
            guideHeight,
        )
        val reason = when {
            clippedPixels == 0 -> "no_clipped_pixels"
            !hasAlignmentSupport -> "no_alignment_support"
            largestInpaintingArea >= BENTO_MAX_INPAINTING_COMPONENT_AREA ->
                "large_hole_needing_inpainting"
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
        val program = if (mergeMethod == MgcMergeMethod.SABRE) sabreMergeBayerProgram else mergeBayerProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uRaw", 0, rawTexture)
        bindTexture(program, "uAlignment", 1, alignmentTexture)
        bindTexture(program, "uFrameWeight", 2, weightTexture)
        uniform1f(program, "uGlobalFrameWeight", calibration.globalFrameWeight)
        if (mergeMethod == MgcMergeMethod.SABRE) {
            bindTexture(program, "uCovariance", 3, currentMergeCovariance)
            uniform2i(program, "uRawSize", width, height)
            uniform1i(program, "uCfaPattern", cfaPattern)
            uniform4fv(program, "uGains", calibration.bayerPhaseGains)
            uniform4fv(program, "uBlackLevelsTimesGains", calibration.bayerPhaseBlackTerms)
            uniform4f(
                program,
                "uCovRangeRg",
                covariancePackOffset(COV_MIN_R, COV_MAX_R),
                covariancePackScale(COV_MIN_R, COV_MAX_R),
                covariancePackOffset(COV_MIN_G, COV_MAX_G),
                covariancePackScale(COV_MIN_G, COV_MAX_G),
            )
            uniform2f(
                program,
                "uCovRangeB",
                covariancePackOffset(COV_MIN_B, COV_MAX_B),
                covariancePackScale(COV_MIN_B, COV_MAX_B),
            )
            uniform1i(program, "uUseFrameWeight", if (useFrameWeight) 1 else 0)
        } else {
            bindTexture(program, "uLinearKernelMask", 3, linearKernelMaskTexture)
            uniform2i(program, "uRawSize", width, height)
            uniform1i(program, "uCfaPattern", cfaPattern)
            uniform4fv(program, "uGains", calibration.bayerPhaseGains)
            uniform4fv(program, "uBlackLevelsTimesGains", calibration.bayerPhaseBlackTerms)
            uniform1f(program, "uKernelSigma", calibration.kernelSigma)
            uniform1f(program, "uInterpolationFlowTolerance", SPATIAL_INTERPOLATION_FLOW_TOLERANCE)
            uniform1i(program, "uUseFrameWeight", if (useFrameWeight) 1 else 0)
        }
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            draw(
                program,
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

    private fun rgbIirWorkingSetBytes(): Long =
        MgcSpatialRgbMemoryPolicy.iirWorkingSetBytes(outputWidth, outputHeight)

    /**
     * MGC 9.7.047 V25's Spatial RGB merge (MergeRgbRaw16F16TileSize16Halide) on the GPU, see
     * [GlesMgcSpatialRgbMergeShaders]. Each burst frame's DemosaicGreenRaw16 guide feeds the same
     * integer demosaic, so the three output planes share MGC's edge-directed green instead of
     * reconstructing edge direction independently per color channel.
     */
    private fun renderSpatialRgbMerge(
        frames: List<RgbMergeFrame>,
        images: List<SafeImage>,
        outputExposureScale: Float,
        ultrashortWeight: Int,
        mergeSharpness: Float,
        capture: StrengthCapture,
    ): RgbMergeOutput {
        check(outputMode == MgcSpatialOutputMode.RGB)
        check(spatialRgbAccumulateProgram != 0 && spatialRgbResolveProgram != 0) {
            "MGC Spatial V25 RGB merge programs are not initialized"
        }
        require(frames.isNotEmpty() && frames.size == capture.frameCount)
        require(frames.all { it.imageIndex in images.indices })
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        require(mergeSharpness.isFinite() && mergeSharpness >= 0f)
        check(capture.geometry.imageWidth == width && capture.geometry.imageHeight == height &&
            capture.alignmentWidth == ceilDiv(width, GlesMgcSpatialRgbMergeShaders.TILE_SIZE) &&
            capture.alignmentHeight == ceilDiv(height, GlesMgcSpatialRgbMergeShaders.TILE_SIZE)) {
            "MGC Spatial RGB alignment ${capture.alignmentWidth}x${capture.alignmentHeight} " +
                "does not tile native=${width}x$height"
        }
        val referenceBlack = frames.first().calibration.blackLevels
        val sourceCameraWhite = checkNotNull(cameraWhite) {
            "Spatial RGB requires the source CameraWhite color solution"
        }
        require(sourceCameraWhite.size == 3 &&
            sourceCameraWhite.all { it.isFinite() && it > 0f && it <= 1f })
        // Merged samples are black-subtracted RAW codes times overallGain, stored as F16/Q14.
        // Its reference white is therefore not 16384 (e.g. RAW10 with black=64 gives
        // 15344). Use one scalar for the color-spec vector so its neutral ratios survive.
        val referenceWhite = (sensorWhiteLevel -
            0.5f * (referenceBlack[1] + referenceBlack[2])) *
            sabreResolveRawScale / 16384f
        require(referenceWhite.isFinite() && referenceWhite > 0f)
        val mergeCameraWhite = FloatArray(3) { sourceCameraWhite[it] * referenceWhite }
        val outputBytes = outputWidth.toLong() * outputHeight * 3L * Short.SIZE_BYTES
        require(outputBytes in 1..Int.MAX_VALUE.toLong())
        val fullOutput = MgcSpatialRgbRect(0, 0, outputWidth, outputHeight)
        val fullOutputTile = MgcSpatialRgbTile(index = 0, outputCore = fullOutput)
        var cpuOutput: ByteBuffer? = null
        var gpuOutput = 0
        var postprocessedUi = 0
        val completionRecorder = GlesGpuCompletion.StackTimelineRecorder()
        var completionTimeline: GpuStackCompletionTimeline? = null
        try {
            if (!exportGpuLinearRgbSource) {
                cpuOutput = LargeDirectBuffer.allocate(
                    outputBytes,
                    "MGC V25 Spatial RGB16 output",
                )?.order(ByteOrder.nativeOrder()) ?: error(
                    "Unable to allocate MGC V25 Spatial RGB16 output",
                )
            }
            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Spatial RGB chroma postprocessor is not initialized"
            }
            chromaPostprocessor.initStorage(listOf(fullOutputTile))
            val lensShadingTexture = createLensShadingTexture()
            val mergeStartNs = System.nanoTime()
            mergeSpatialRgbFrames(
                frames = frames,
                images = images,
                mergeSharpness = mergeSharpness,
                capture = capture,
                referenceBlack = referenceBlack,
                lensShadingTexture = lensShadingTexture,
                target = chromaPostprocessor.normalizationTargetTexture(),
                outputExposureScale = outputExposureScale,
                cameraWhite = mergeCameraWhite,
                ultrashortWeight = ultrashortWeight,
            )
            val mergeMs = elapsedMs(mergeStartNs)
            PLog.i(TAG, "MGC Spatial CameraWhite source=${sourceCameraWhite.contentToString()} " +
                "merge=${mergeCameraWhite.contentToString()} normalization=$outputExposureScale " +
                "referenceFallbackWhiteScale=$outputExposureScale " +
                "hasShort=${ultrashortWeight != 0} stage=before-rgb16")
            chromaPostprocessor.markTileWritten(fullOutputTile)

            releaseRgbFusionPhaseTextures(
                retainedTexture = chromaPostprocessor.normalizationTargetTexture(),
                label = "V25 merge",
            )
            GlesGpuScheduler.memoryBarrier()
            val chromaResult = chromaPostprocessor.process(
                obtainOutputBuffer = { checkNotNull(cpuOutput) },
                deferFullSizeReadback = exportGpuLinearRgbSource,
                onFinalSubmitted = if (exportGpuLinearRgbSource) {
                    { completionRecorder.mark(GpuStackCompletionStage.CHROMA_POSTPROCESS) }
                } else {
                    null
                },
            )
            postprocessedUi = chromaResult.exportedTextureId
            if (exportGpuLinearRgbSource) {
                check(postprocessedUi != 0) {
                    "MGC Spatial RGB chroma did not export its filtered texture"
                }
                gpuOutput = if (gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16UI) {
                    postprocessedUi.also { postprocessedUi = 0 }
                } else {
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Spatial V25 merge IIR-to-float handoff",
                        checkGlError = ::checkGlError,
                    )
                    createTexture(
                        outputWidth,
                        outputHeight,
                        GLES30.GL_RGBA16F,
                        GLES30.GL_NEAREST,
                    ).also { target ->
                        renderRgb16ToFloat(postprocessedUi, target)
                        GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
                        postprocessedUi = 0
                    }
                }
            }
            if (gpuOutput != 0) {
                completionRecorder.mark(GpuStackCompletionStage.FINAL_EXPORT)
                completionTimeline = completionRecorder.finish()
                if (completionTimeline == null) {
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Spatial V25 merge RGB export",
                        checkGlError = ::checkGlError,
                    )
                }
                if (textures.remove(gpuOutput)) textureSpecs.remove(gpuOutput)
            }
            PLog.i(
                TAG,
                "MGC Spatial V25 RGB merge frames=${frames.size} " +
                    "native=${width}x$height " +
                    "output=${outputWidth}x$outputHeight rawScale=$sabreResolveRawScale " +
                    "mergeSharpness=$mergeSharpness merge=${mergeMs}ms " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms",
            )
            return RgbMergeOutput(
                cpuBuffer = cpuOutput,
                gpuTexture = gpuOutput,
                completionTimeline = completionTimeline,
            )
        } catch (throwable: Throwable) {
            completionTimeline?.releasePending()
            completionRecorder.releasePending()
            if (postprocessedUi != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
            }
            if (gpuOutput != 0 && !textures.contains(gpuOutput)) {
                GLES30.glDeleteTextures(1, intArrayOf(gpuOutput), 0)
            }
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

    /**
     * Runs [GlesMgcSpatialRgbMergeShaders] over the burst and writes the normalized, lens-shaded
     * RGB16 into [target]. Per frame: upload the RAW, compute its DemosaicGreenRaw16 guide in
     * padded int16 planes, and accumulate it into four R32F sums; the alignment and acceptance
     * slices are read directly from the strength atlases.
     */
    private fun mergeSpatialRgbFrames(
        frames: List<RgbMergeFrame>,
        images: List<SafeImage>,
        mergeSharpness: Float,
        capture: StrengthCapture,
        referenceBlack: FloatArray,
        lensShadingTexture: Int,
        target: Int,
        outputExposureScale: Float,
        cameraWhite: FloatArray,
        ultrashortWeight: Int,
    ) {
        require(referenceBlack.size == 4)
        // Offset of the red site; the AOT merges in a virtual RGGB frame anchored there.
        val (redX, redY) = when (cfaPattern) {
            0 -> 0 to 0 // RGGB
            1 -> 1 to 0 // GRBG
            2 -> 0 to 1 // GBRG
            3 -> 1 to 1 // BGGR
            else -> throw IllegalArgumentException("MGC Spatial RGB CFA pattern $cfaPattern")
        }
        val whiteBalance = calculationWhiteBalance
        val overallGain = sabreResolveRawScale
        val conversionGains = FloatArray(4) { whiteBalance[it] * overallGain }
        val greenWhiteBalance = 0.5f * (whiteBalance[1] + whiteBalance[2])
        // DemosaicGreenRaw16 receives merge_sharpness as k = fcvtzs(clamp(s * 65536, 0, 65535)).
        val greenImbalanceRetention = (mergeSharpness * 65536f).coerceIn(0f, 65535f).toInt()
        val padding = GlesMgcGreenDemosaicShaders.PLANE_PADDING
        val planeWidth = width + 2 * padding
        val planeHeight = height + 2 * padding
        val tileSize = GlesMgcSpatialRgbMergeShaders.TILE_SIZE
        val raw = createTexture(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
        val converted = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
        val balanced = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
        val green = createTexture(planeWidth, planeHeight, GLES30.GL_R16I, GLES30.GL_NEAREST)
        // Red, green and blue sums and the weight sum; R32F is the read/write image format
        // GLES 3.1 guarantees.
        val sums = IntArray(4) { createTexture(width, height, GLES30.GL_R32F, GLES30.GL_NEAREST) }
        try {
            frames.forEachIndexed { index, frame ->
                uploadRaw(images[frame.imageIndex], raw, "MGC Spatial RGB merge frame $index")

                var program = spatialRgbConvertProgram
                GLES30.glUseProgram(program)
                bindTexture(program, "uRaw", 0, raw)
                uniform2i(program, "uRawSize", width, height)
                uniform2i(program, "uRedSite", redX, redY)
                uniform4fv(program, "uBlackLevels", referenceBlack)
                uniform4fv(program, "uConversionGains", conversionGains)
                draw(program, planeWidth, planeHeight, intArrayOf(converted))

                program = spatialRgbGreenBalanceProgram
                GLES30.glUseProgram(program)
                bindTexture(program, "uConverted", 0, converted)
                uniform2i(program, "uPlaneSize", planeWidth, planeHeight)
                uniform1i(program, "uGreenImbalanceRetention", greenImbalanceRetention)
                draw(program, planeWidth, planeHeight, intArrayOf(balanced))

                program = spatialRgbGreenProgram
                GLES30.glUseProgram(program)
                bindTexture(program, "uBalanced", 0, balanced)
                uniform2i(program, "uPlaneSize", planeWidth, planeHeight)
                draw(program, planeWidth, planeHeight, intArrayOf(green))

                val inputGain = frame.calibration.inputGain
                program = spatialRgbAccumulateProgram
                GLES31.glUseProgram(program)
                bindTexture(program, "uRaw", 0, raw)
                bindTexture(program, "uGreen", 1, green)
                bindTexture(program, "uAlignmentAtlas", 2, capture.alignmentAtlas)
                bindTexture(program, "uRejectionAtlas", 3, capture.rejectionAtlas)
                uniform2i(program, "uRawSize", width, height)
                uniform2i(program, "uRedSite", redX, redY)
                uniform4fv(program, "uBlackLevels", referenceBlack)
                uniform4fv(program, "uConversionGains", conversionGains)
                uniform2i(
                    program,
                    "uAlignmentOriginX",
                    capture.alignmentLayout.originX(index),
                    capture.alignmentLayout.originY(index),
                )
                uniform2i(
                    program,
                    "uAlignmentOriginY",
                    capture.alignmentLayout.originX(capture.frameCount + index),
                    capture.alignmentLayout.originY(capture.frameCount + index),
                )
                uniform2i(
                    program,
                    "uRejectionOrigin",
                    capture.rejectionLayout.originX(index),
                    capture.rejectionLayout.originY(index),
                )
                uniform2i(program, "uRejectionSize", capture.rejectionWidth, capture.rejectionHeight)
                uniform3f(
                    program,
                    "uChannelScale",
                    inputGain / whiteBalance[0],
                    inputGain / greenWhiteBalance,
                    inputGain / whiteBalance[3],
                )
                uniform1f(program, "uFrameWeight", capture.frameWeights[index])
                uniform1f(program, "uKernelSigma", capture.kernelSigmas[index])
                uniform1i(program, "uFirstFrame", if (index == 0) 1 else 0)
                sums.forEachIndexed { unit, texture ->
                    GLES31.glBindImageTexture(
                        unit,
                        texture,
                        0,
                        false,
                        0,
                        GLES31.GL_READ_WRITE,
                        GLES30.GL_R32F,
                    )
                }
                GLES31.glDispatchCompute(ceilDiv(width, tileSize), ceilDiv(height, tileSize), 1)
                // The next frame reads the sums back as images, the resolve as textures.
                GLES31.glMemoryBarrier(
                    GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                        GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
                )
                sums.indices.forEach { unit ->
                    GLES31.glBindImageTexture(
                        unit,
                        0,
                        0,
                        false,
                        0,
                        GLES31.GL_READ_WRITE,
                        GLES30.GL_R32F,
                    )
                }
                checkGlError("MGC Spatial RGB merge frame $index")
                GlesGpuScheduler.yieldToUiRenderer()
            }

            val program = spatialRgbResolveProgram
            GLES30.glUseProgram(program)
            bindTexture(program, "uSumRed", 0, sums[0])
            bindTexture(program, "uSumGreen", 1, sums[1])
            bindTexture(program, "uSumBlue", 2, sums[2])
            bindTexture(program, "uWeightSum", 3, sums[3])
            bindTexture(program, "uLensShading", 4, lensShadingTexture)
            // Bind a complete float texture even when the branch is disabled.
            bindTexture(program, "uUltrashortWeight", 5,
                if (ultrashortWeight != 0) ultrashortWeight else lensShadingTexture)
            uniform1i(program, "uHasUltrashort", if (ultrashortWeight != 0) 1 else 0)
            uniform3f(program, "uCameraWhite", cameraWhite[0], cameraWhite[1], cameraWhite[2])
            uniform2i(program, "uOutputSize", outputWidth, outputHeight)
            uniform1f(program, "uOutputExposureScale", outputExposureScale)
            drawRegion(
                program = program,
                target = target,
                viewportLeft = 0,
                viewportTop = 0,
                viewportWidth = outputWidth,
                viewportHeight = outputHeight,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                    GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
            )
            checkGlError("MGC Spatial RGB merge resolve")
        } finally {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            (intArrayOf(raw, converted, balanced, green) + sums).forEach { texture ->
                releaseOwnedTexture(texture, "MGC Spatial RGB merge scratch")
            }
        }
    }

    private fun renderRgb16ToFloat(
        source: Int,
        target: Int,
        imageWidth: Int = outputWidth,
        imageHeight: Int = outputHeight,
    ) {
        check(copyRgb16ToFloatProgram != 0) {
            "MGC Spatial RGB16-to-float program is not initialized"
        }
        GLES31.glUseProgram(copyRgb16ToFloatProgram)
        uniform2i(copyRgb16ToFloatProgram, "uImageSize", imageWidth, imageHeight)
        GLES31.glBindImageTexture(
            0,
            source,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES30.GL_RGBA16UI,
        )
        GLES31.glBindImageTexture(
            1,
            target,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(imageWidth),
            GlesComputeWorkGroup.imageGroupCount(imageHeight),
            1,
        )
        GlesGpuScheduler.memoryBarrier()
        GLES31.glBindImageTexture(
            0,
            0,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES30.GL_RGBA16UI,
        )
        GLES31.glBindImageTexture(
            1,
            0,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        checkGlError("MGC Spatial RGB chroma RGBA16F handoff")
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

    private fun createNoiseLut(
        reference: FrameCalibration,
        current: FrameCalibration,
    ): Int {
        val key = buildList {
            for (noise in arrayOf(reference.shotNoise, reference.readNoise, current.shotNoise, current.readNoise)) {
                require(noise.size >= MgcSpatialNoiseEstimatesLut.CHANNELS)
                for (channel in 0 until MgcSpatialNoiseEstimatesLut.CHANNELS) add(noise[channel].toRawBits())
            }
        }
        noiseLutCache[key]?.let { cached ->
            // Bento/temporal phase retirement may delete an allocation and GL may reuse its
            // numeric name. Only the exact registered allocation can satisfy this cache hit.
            if (textureSpecs[cached.texture] === cached.allocation) return cached.texture
        }
        val values = MgcSpatialNoiseEstimatesLut.create(
            referenceShotNoise = reference.shotNoise,
            referenceReadNoise = reference.readNoise,
            currentShotNoise = current.shotNoise,
            currentReadNoise = current.readNoise,
        )
        val texture = createFloatTexture(
            width = MgcSpatialNoiseEstimatesLut.WIDTH,
            height = MgcSpatialNoiseEstimatesLut.ROWS,
            internalFormat = GLES30.GL_RGBA16F,
            format = GLES30.GL_RGBA,
            values = values,
            filter = GLES30.GL_LINEAR,
            persistent = true,
        )
        noiseLutCache[key] = CachedNoiseLut(texture, checkNotNull(textureSpecs[texture]))
        return texture
    }

    private fun createSabreNoiseLut(
        reference: FrameCalibration,
        current: FrameCalibration,
    ): Int {
        val values = MgcSabreNoiseEstimatesLut.create(
            referenceShotNoise = reference.shotNoise,
            referenceReadNoise = reference.readNoise,
            currentShotNoise = current.shotNoise,
            currentReadNoise = current.readNoise,
        )
        return createFloatTexture(
            width = MgcSabreNoiseEstimatesLut.WIDTH,
            height = MgcSabreNoiseEstimatesLut.ROWS,
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

    private fun renderBayer16(
        accumulator: Int,
        outputExposureScale: Float,
    ): Int {
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        val bayer16 = createTexture(
            width,
            height,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(normalizeBayerProgram)
        bindTexture(normalizeBayerProgram, "uBayerAndWeight", 0, accumulator)
        uniform2i(normalizeBayerProgram, "uOutputSize", width, height)
        uniform1f(
            normalizeBayerProgram,
            "uOutputExposureScale",
            outputExposureScale,
        )
        draw(normalizeBayerProgram, width, height, intArrayOf(bayer16))
        return bayer16
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
        require(sourceBounds.right <= image.width && sourceBounds.bottom <= image.height &&
            sourceBounds.width() == width && sourceBounds.height() == height
        ) {
            "$label RAW source=${image.width}x${image.height} crop=$sourceBounds " +
                "expected=${width}x$height"
        }
        require(plane.rowStride >= sourceBounds.right * RAW_BYTES_PER_PIXEL) {
            "$label RAW row stride=${plane.rowStride} cannot address crop=$sourceBounds"
        }
        require(plane.rowStride % RAW_BYTES_PER_PIXEL == 0) {
            "$label RAW row stride is not 16-bit aligned"
        }
        val buffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val sourceOffset = buffer.position().toLong() +
            sourceBounds.top.toLong() * plane.rowStride +
            sourceBounds.left.toLong() * RAW_BYTES_PER_PIXEL
        val sourceEnd = sourceOffset + (height - 1L) * plane.rowStride +
            width.toLong() * RAW_BYTES_PER_PIXEL
        require(sourceOffset in 0..Int.MAX_VALUE.toLong() && sourceEnd <= buffer.limit()) {
            "$label RAW crop=$sourceBounds exceeds plane limit=${buffer.limit()}"
        }
        buffer.position(sourceOffset.toInt())
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
        textureSpecs[texture] = spec
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
        persistent: Boolean = false,
    ): Int {
        val buffer = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                rewind()
            }
        val texture = if (persistent) {
            // Cached LUTs must never become a sequential-frame scratch target.
            allocateTexture(TextureSpec(width, height, internalFormat, filter))
        } else createTexture(
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
        transientTextures.forEach(textureSpecs::remove)
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
            toDelete.forEach(textureSpecs::remove)
        }
        for (index in textures.lastIndex downTo startIndex) {
            if (textures[index] !in retained) textures.removeAt(index)
        }
    }

    /**
     * ResolveSabre has consumed every merge-stage texture. Retire that arena before the VGN
     * IIR surfaces are allocated; only the Resolve result in the chroma stage's assembled RGB
     * crosses this phase boundary.
     */
    private fun releaseSabreMergePhaseTextures(resolvedRgb: Int) {
        check(resolvedRgb in textures) { "Sabre Resolve phase must retain its resolved RGB" }
        val retained = setOf(resolvedRgb)
        detachRenderTargets()
        val beforeBytes = estimatedOwnedTextureBytes()
        val toDelete = textures.filterNot(retained::contains).toIntArray()
        val releasedBytes = estimatedTextureBytes(toDelete)
        if (toDelete.isNotEmpty()) {
            GLES30.glDeleteTextures(toDelete.size, toDelete, 0)
            toDelete.forEach { texture ->
                check(textures.remove(texture))
                textureSpecs.remove(texture)
            }
        }
        checkGlError("release MGC Sabre merge texture arena")
        PLog.i(
            SABRE_TAG,
            "MGC Sabre merge arena released textures=${toDelete.size} " +
                "releasedBytes=$releasedBytes retainedBytes=${estimatedOwnedTextureBytes()} " +
                "beforeBytes=$beforeBytes",
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

    private fun releaseOwnedTexture(texture: Int, label: String) {
        if (texture == 0) return
        check(textures.remove(texture)) { "$label texture=$texture is not owned" }
        textureSpecs.remove(texture)
        GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        checkGlError("release $label")
    }

    private fun transferOwnedTexture(texture: Int, label: String) {
        check(texture != 0) { "$label cannot transfer texture 0" }
        detachRenderTargets()
        check(textures.remove(texture)) { "$label texture=$texture is not owned" }
        checkNotNull(textureSpecs.remove(texture)) {
            "$label texture=$texture has no registered specification"
        }
    }

    /**
     * Closes RGB fusion before the recursive chroma stage allocates its two additional full-size
     * surfaces. The assembled RGBA16UI input becomes IIR scratch after seeding; every other fusion
     * texture is dead at this boundary and must not inflate the IIR allocation peak.
     */
    private fun releaseRgbFusionPhaseTextures(
        retainedTexture: Int,
        label: String,
    ) {
        check(retainedTexture != 0 && textures.contains(retainedTexture)) {
            "MGC Spatial RGB $label IIR input is not owned by the stacker"
        }
        val beforeBytes = estimatedOwnedTextureBytes()
        val waitMs = GlesGpuCompletion.awaitSubmittedWork(
            label = "MGC Spatial RGB $label fusion resource handoff",
            checkGlError = ::checkGlError,
        )
        detachRenderTargets()
        val releasedTextures = textures.filterNot { it == retainedTexture }.toIntArray()
        val releasedBytes = estimatedTextureBytes(releasedTextures)
        if (releasedTextures.isNotEmpty()) {
            GLES30.glDeleteTextures(releasedTextures.size, releasedTextures, 0)
            releasedTextures.forEach { texture ->
                check(textures.remove(texture))
                textureSpecs.remove(texture)
            }
        }
        checkGlError("release MGC Spatial RGB $label fusion texture arena")
        PLog.i(
            TAG,
            "MGC Spatial RGB $label fusion arena released textures=${releasedTextures.size} " +
                "releasedBytes=$releasedBytes retainedBytes=${estimatedOwnedTextureBytes()} " +
                "iirWorkingSetBytes=${rgbIirWorkingSetBytes()} beforeBytes=$beforeBytes " +
                "gpuWait=${waitMs}ms",
        )
    }

    /**
     * Closes the temporal resource arena before allocating the full RGB output and band storage.
     *
     * The caller supplies the complete texture contract consumed by the selected RGB path.
     * Waiting once at this phase boundary allows the driver to reclaim every other temporal
     * texture instead of overlapping deferred deletion with final output allocation.
     */
    private fun releaseRgbTemporalPhaseResources(
        persistentTextures: IntArray,
        strengthCapture: StrengthCapture?,
    ) {
        check(activeSequentialScratchTextures == null) {
            "RGB temporal resources cannot be released during an active scratch frame"
        }
        val retained = HashSet<Int>(persistentTextures.size + 2)
        persistentTextures.forEach(retained::add)
        strengthCapture?.let { capture ->
            retained += capture.alignmentAtlas
            retained += capture.rejectionAtlas
        }
        retained.remove(0)
        check(retained.all(textures::contains)) {
            "RGB persistent temporal resource is not owned by the stacker"
        }

        val beforeBytes = estimatedOwnedTextureBytes()
        val waitMs = GlesGpuCompletion.awaitSubmittedWork(
            label = "MGC Spatial RGB temporal resource handoff",
            checkGlError = ::checkGlError,
        )
        detachRenderTargets()
        val releasedTextures = textures.filterNot(retained::contains).toIntArray()
        val releasedBytes = estimatedTextureBytes(releasedTextures)
        if (releasedTextures.isNotEmpty()) {
            GLES30.glDeleteTextures(releasedTextures.size, releasedTextures, 0)
            releasedTextures.forEach { texture ->
                check(textures.remove(texture))
                textureSpecs.remove(texture)
            }
        }
        temporalScratchTextures.clearTracking()
        checkGlError("release MGC Spatial RGB temporal resource arena")
        PLog.i(
            TAG,
            "MGC Spatial RGB temporal arena released textures=${releasedTextures.size} " +
                "releasedBytes=$releasedBytes retainedTextures=${retained.size} " +
                "retainedBytes=${estimatedOwnedTextureBytes()} beforeBytes=$beforeBytes " +
                "gpuWait=${waitMs}ms",
        )
    }

    /**
     * Resolves the small persistent alignment grids once after temporal completion. Exact bounds
     * avoid replaying hundreds of unused RAW halo rows for every reconstruction band.
     */
    private fun resolveRgbFlowBounds(frames: List<RgbMergeFrame>): List<RgbMergeFrame> {
        val byteCount = bayerAlignmentWidth.toLong() * bayerAlignmentHeight * 4L * Float.SIZE_BYTES
        require(byteCount in 1..Int.MAX_VALUE.toLong())
        val readback = ByteBuffer.allocateDirect(byteCount.toInt()).order(ByteOrder.nativeOrder())
        return frames.map { frame ->
            if (frame.flowBounds == MgcSpatialRgbFlowBounds.Zero) {
                frame
            } else {
                bindRenderTargets(
                    intArrayOf(frame.alignmentTexture),
                    "MGC RGB alignment bounds frame ${frame.imageIndex}",
                )
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, Float.SIZE_BYTES)
                GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
                readback.clear()
                GLES30.glReadPixels(
                    0,
                    0,
                    bayerAlignmentWidth,
                    bayerAlignmentHeight,
                    GLES30.GL_RGBA,
                    GLES30.GL_FLOAT,
                    readback,
                )
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                checkGlError("read MGC RGB alignment bounds frame ${frame.imageIndex}")
                val values = readback.asFloatBuffer()
                var minimumX = Float.POSITIVE_INFINITY
                var minimumY = Float.POSITIVE_INFINITY
                var maximumX = Float.NEGATIVE_INFINITY
                var maximumY = Float.NEGATIVE_INFINITY
                for (pixel in 0 until bayerAlignmentWidth * bayerAlignmentHeight) {
                    val x = values.get(pixel * 4)
                    val y = values.get(pixel * 4 + 1)
                    check(x.isFinite() && y.isFinite()) {
                        "MGC RGB alignment frame ${frame.imageIndex} contains non-finite flow"
                    }
                    minimumX = minOf(minimumX, x)
                    minimumY = minOf(minimumY, y)
                    maximumX = maxOf(maximumX, x)
                    maximumY = maxOf(maximumY, y)
                }
                val bounds = MgcSpatialRgbFlowBounds(
                    minX = minimumX,
                    minY = minimumY,
                    maxX = maximumX,
                    maxY = maximumY,
                )
                check(
                    bounds.minX >= conservativeRgbFlowBounds.minX &&
                        bounds.minY >= conservativeRgbFlowBounds.minY &&
                        bounds.maxX <= conservativeRgbFlowBounds.maxX &&
                        bounds.maxY <= conservativeRgbFlowBounds.maxY
                ) {
                    "MGC RGB alignment frame ${frame.imageIndex} exceeds analytical bounds: " +
                        "$bounds expected=$conservativeRgbFlowBounds"
                }
                PLog.d(TAG, "MGC RGB flow bounds frame=${frame.imageIndex} $bounds")
                frame.copy(flowBounds = bounds)
            }
        }.also {
            detachRenderTargets()
        }
    }

    private fun detachRenderTargets() {
        if (renderFbo == 0 || renderTargetAttachmentCount == 0) return
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        for (index in 0 until renderTargetAttachmentCount) {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0 + index,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
        }
        renderTargetAttachmentCount = 0
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun estimatedOwnedTextureBytes(): Long =
        textureSpecs.values.sumOf(::estimatedTextureBytes)

    private fun estimatedTextureBytes(textures: IntArray): Long = textures.sumOf { texture ->
        textureSpecs[texture]?.let(::estimatedTextureBytes) ?: 0L
    }

    private fun estimatedTextureBytes(spec: TextureSpec): Long {
        val bytesPerPixel = when (spec.internalFormat) {
            GLES30.GL_R8 -> 1
            GLES30.GL_R16F,
            GLES30.GL_R16I,
            GLES30.GL_R16UI -> 2
            GLES30.GL_R32F,
            GLES30.GL_RG16F,
            GLES30.GL_RGB10_A2 -> 4
            GLES30.GL_RGB16UI -> 6
            GLES30.GL_RGBA16F,
            GLES30.GL_RGBA16UI -> 8
            GLES30.GL_RGBA32F -> 16
            else -> error(
                "Missing MGC texture byte size for format=0x" +
                    spec.internalFormat.toString(16),
            )
        }
        return spec.width.toLong() * spec.height * bytesPerPixel
    }

    private fun drawRegion(
        program: Int,
        target: Int,
        viewportLeft: Int,
        viewportTop: Int,
        viewportWidth: Int,
        viewportHeight: Int,
    ) {
        bindRenderTargets(intArrayOf(target), "program $program region")
        GLES30.glViewport(
            viewportLeft,
            viewportTop,
            viewportWidth,
            viewportHeight,
        )
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("draw program $program region")
    }

    private fun bindRenderTargets(targets: IntArray, label: String) {
        require(targets.isNotEmpty())
        val targetSpecs = targets.map { texture ->
            checkNotNull(textureSpecs[texture]) {
                "$label target texture $texture is not owned by the Spatial stacker"
            }
        }
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
        // Completeness is a property of these immutable attachment specifications. Validate each
        // format/size combination once instead of forcing driver validation in every hot pass.
        if (validatedRenderTargetSpecs.add(targetSpecs)) {
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "$label framebuffer incomplete: 0x${status.toString(16)}"
            }
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
        val fragment = try {
            compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$name fragment")
        } catch (error: Throwable) {
            GLES30.glDeleteShader(vertex)
            throw error
        }
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

    private fun linkComputeProgram(source: String, name: String): Int {
        GlesComputeWorkGroup.requireBaselineCompatible(source, name)
        val shader = compileShader(GLES31.GL_COMPUTE_SHADER, source, "$name compute")
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)
        val status = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
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
        DngCaptureDiagnostics.recordCurrentGl()
        DngCaptureDiagnostics.put("merge.floatSamplerPrecision", "highp")
        DngCaptureDiagnostics.put("merge.alignmentSolver", "residual-gram-determinant")
        DngCaptureDiagnostics.put("merge.rejectionFilterContract", "v25-halide-box4-u8-linear4")
        DngCaptureDiagnostics.put("merge.unblockerContract", "v25-raw16-integer-moments-mirror")
        DngCaptureDiagnostics.put("merge.alignmentContract", "v25-lk-plan-rounded4-global-final-support")
        DngCaptureDiagnostics.put("merge.alignmentMaxTile", alignmentPlan.maximumTileSize)
        DngCaptureDiagnostics.put(
            "merge.alignmentMedianPasses",
            if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) 2 else 0,
        )
        if (processorPipeline == MgcRawProcessorPipeline.SABRE) {
            DngCaptureDiagnostics.put("merge.sabreFlowLayout", "sparse-8quad-per-frame-offset")
        }
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        check(version.contains("OpenGL ES 3.")) {
            "MGC Spatial merge requires GLES3, got: $version"
        }
        maxShaderStorageBlockBytes = 0L
        maxComputePackGroupsX = 0
        maxComputePackGroupsY = 0
        supportsComputePrograms = version.contains("OpenGL ES 3.1") ||
            version.contains("OpenGL ES 3.2")
        supportsComputeReadback = supportsComputePrograms
        if (supportsComputeReadback) {
            val maximumBlockSize = LongArray(1)
            GLES30.glGetInteger64v(
                GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE,
                maximumBlockSize,
                0,
            )
            val queryError = GLES30.glGetError()
            if (queryError == GLES30.GL_NO_ERROR && maximumBlockSize[0] > 0L) {
                maxShaderStorageBlockBytes = maximumBlockSize[0]
                val maximumGroupCount = IntArray(2)
                GLES31.glGetIntegeri_v(
                    GLES31.GL_MAX_COMPUTE_WORK_GROUP_COUNT,
                    0,
                    maximumGroupCount,
                    0,
                )
                GLES31.glGetIntegeri_v(
                    GLES31.GL_MAX_COMPUTE_WORK_GROUP_COUNT,
                    1,
                    maximumGroupCount,
                    1,
                )
                val groupQueryError = GLES30.glGetError()
                if (groupQueryError == GLES30.GL_NO_ERROR &&
                    maximumGroupCount[0] > 0 &&
                    maximumGroupCount[1] > 0
                ) {
                    maxComputePackGroupsX = maximumGroupCount[0]
                    maxComputePackGroupsY = maximumGroupCount[1]
                } else {
                    supportsComputeReadback = false
                    maxShaderStorageBlockBytes = 0L
                    PLog.w(
                        TAG,
                        "MGC strength SSBO pack disabled: unable to query dispatch limits " +
                            "value=${maximumGroupCount.contentToString()} " +
                            "glError=$groupQueryError",
                    )
                }
            } else {
                supportsComputeReadback = false
                maxShaderStorageBlockBytes = 0L
                PLog.w(
                    TAG,
                    "MGC strength SSBO pack disabled: unable to query block limit " +
                        "value=${maximumBlockSize[0]} glError=$queryError",
                )
            }
        }
        PLog.i(
            TAG,
            "MGC Spatial GL vendor=${GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()} " +
            "renderer=${GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()} version=$version " +
                "floatSamplerPrecision=highp " +
                "strengthSsboMax=$maxShaderStorageBlockBytes " +
                "strengthPackGroups=${maxComputePackGroupsX}x$maxComputePackGroupsY",
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
            mergeNoise?.release()
            mergeNoise = null
            noiseLutCache.clear()
            globalAlignment?.release()
            globalAlignment = null
            rgbChromaPostprocessor?.release()
            rgbChromaPostprocessor = null
            if (programs.isNotEmpty()) {
                for (program in programs) GLES30.glDeleteProgram(program)
            }
            uniformLocations.clear()
            textureSpecs.clear()
            validatedRenderTargetSpecs.clear()
            if (textures.isNotEmpty()) {
                GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
            }
            if (framebuffers.isNotEmpty()) {
                GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers.toIntArray(), 0)
            }
            if (buffers.isNotEmpty()) {
                GLES30.glDeleteBuffers(buffers.size, buffers.toIntArray(), 0)
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
        buffers.clear()
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        ownsEglContext = false
        supportsComputePrograms = false
        supportsComputeReadback = false
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

    private fun alignmentGridWidth(
        level: TextureLevel,
        tileStride: Int,
    ): Int {
        check(tileStride == level.tileSize)
        return level.gridWidth
    }

    private fun alignmentGridHeight(
        level: TextureLevel,
        tileStride: Int,
    ): Int {
        check(tileStride == level.tileSize)
        return level.gridHeight
    }

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
        const val SABRE_TAG = "GlesMgcRawSabre"
        // MGC 9.6.080 SabreKernelParams defaults. BuildSabreKernelParamsForSnr tunes only the
        // first six floats; these two Resolve interpolation endpoints remain 3 and 4. The
        // original wrapper converts them to scale=-range*frameCount and bias=end/range.
        const val SABRE_DEMOSAIC_BLEND_START = 3f
        const val SABRE_DEMOSAIC_BLEND_END = 4f
        const val SABRE_RESOLVE_INPUT_WHITE_LEVEL = 16384f
        // Classic Bayer bounds generated by MergeRaw at libgcastartup.so 0x34942f4..0x3494360.
        // Guide/covariance has a wider filter footprint than rejection and RBF merge sampling.
        const val SABRE_GUIDE_BORDER_PIXELS = 2.5f
        const val SABRE_SAMPLE_BORDER_PIXELS = 1.5f
        const val SABRE_SIGNAL_LINEAR_HISTOGRAM_BITS = 10
        const val SABRE_SIGNAL_LINEAR_HISTOGRAM_BINS = 1 shl SABRE_SIGNAL_LINEAR_HISTOGRAM_BITS
        const val SABRE_SIGNAL_ROW_STEP = 8
        const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        const val RAW_BYTES_PER_PIXEL = 2
        const val RGB_TEXTURE_ADVISORY_BYTES = 640L * 1024L * 1024L
        const val ALIGN_TARGET_FINEST_DIMENSION = 256
        const val ALIGN_MIN_TILE_SIZE = 8
        // Preferred Spatial options (38B0E48 / default tuning 528DA38) use 16 quads.
        // SabreProcessor also selects these options when its merge engine is Spatial RGB.
        // Same-input replay against a successful MGC 9.7.047 Spatial RGB RAW confirms
        // this configuration; 32 changes the finest grids and final candidate origin.
        const val SPATIAL_ALIGN_MAX_TILE_SIZE = 16
        // Classic Sabre has a separate SNR-selected LK/L1 schedule. Keep its existing
        // LK support independent until that full schedule has numerical parity.
        const val SABRE_ALIGN_MAX_TILE_SIZE = 32
        const val ALIGN_LK_ITERATIONS_FINEST = 2
        const val ALIGN_LK_ITERATIONS_COARSER = 3
        const val ALIGN_LK_GRID_MIN = 1
        const val MERGE_ALIGNMENT_GRID_MIN = 0
        const val GLOBAL_ALIGNMENT_RADIUS = 64
        const val GLOBAL_ALIGNMENT_HISTOGRAM_SIZE = GLOBAL_ALIGNMENT_RADIUS * 2 + 1
        const val GLOBAL_ALIGNMENT_MIN_PEAK_SUPPORT = 10
        const val MERGE_BAYER_RAW_TILE_SIZE = 16
        const val REJECTION_BAYER_QUADS_PER_PIXEL = 1
        // MGC 9.7.047 V25 initializes interpolation_flow_tolerance to -1.0. Positive
        // values are an optional SpatialBayer-only override; the default keeps every
        // merge tile on its own flow instead of switching interpolation on and off as
        // neighboring motion crosses a tolerance boundary.
        const val SPATIAL_INTERPOLATION_FLOW_TOLERANCE = -1f
        // Captured at UnblockerRaw10Halide entry on the original MGC full-resolution path.
        const val UNBLOCKER_FULLRES_TILE_SIZE = 8
        const val UNBLOCKER_OUTPUT_SCALE = 1f
        const val UNBLOCKER_OUTPUT_OFFSET = 0.45f
        const val MIN_EXPOSURE_SCALE = 1f / 64f
        const val MAX_EXPOSURE_SCALE = 64f
        const val MIN_WHITE_BALANCE_GAIN = 1e-3f
        const val MAX_WHITE_BALANCE_GAIN = 64f
        const val MIN_NOISE_VARIANCE = 1e-12f
        const val SPATIAL_IDENTITY_MULTIPLIER = 1f
        const val SPATIAL_IDENTITY_STRENGTH_Q8 = 256
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
        const val BENTO_MAX_INPAINTING_COMPONENT_AREA = 80
        const val LONG_FRAME_RAW_CLIPPING_THRESHOLD = 250f / 255f

        // The independent classic-Sabre 0x3882c20 table is represented by SABRE_DENOISE_*.
    }
}
