package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
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
import com.hinnka.mycamera.raw.MgcSpatialStrengthMap
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
 * the native grid. Requested larger RGB outputs are export-size transforms produced from those
 * completed camera-RGB results with the DNG bicubic resampling kernel; they are not sensor-detail
 * super-resolution. MGC alignment, rejection, Bento admission and propagated-noise postprocessing
 * remain authoritative.
 */
internal class GlesMgcRawSpatialStacker(
    private val width: Int,
    private val height: Int,
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
    outputScale: Float,
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
    private val gpuLinearRgbStorage: GpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16UI,
    private val processorPipeline: MgcRawProcessorPipeline = MgcRawProcessorPipeline.SPATIAL,
    private val coreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
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

    /** Sparse normalized flow plus the reference-UV to alignment-texture transform. */
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
        val normalize: Boolean,
        val products0: Int,
        val products1: Int,
    )

    private data class PreparedTemporalFrame(
        val calibration: FrameCalibration,
        val convertedAlignment: ConvertedAlignment,
        val bayerAlignmentTexture: Int,
        val weightTexture: Int,
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

    private data class RgbTileFrameRegion(
        val frame: RgbMergeFrame,
        val sourceRegion: MgcSpatialRgbRect,
        val uploadRegion: MgcSpatialRgbRect,
    )

    private data class RgbBandPlan(
        val bands: List<MgcSpatialRgbTile>,
        val work: List<Pair<MgcSpatialRgbTile, List<RgbTileFrameRegion>>>,
        val maximumOutputWidth: Int,
        val maximumOutputHeight: Int,
        val maximumDiagnosticWidth: Int,
        val maximumDiagnosticHeight: Int,
        val maximumSourceWidth: Int,
        val maximumSourceHeight: Int,
        val maximumUploadWidth: Int,
        val maximumUploadHeight: Int,
        val projectedGpuBytes: Long,
    )

    private data class RgbMergeOutput(
        val cpuBuffer: ByteBuffer?,
        val gpuTexture: Int,
        val diagnosticFixed16: PreparedTextureReadback?,
        val completionTimeline: GpuStackCompletionTimeline?,
    )

    /**
     * Full-output RGB accumulation used by the performance path.
     *
     * RAW stays frame-sequential: the current image is uploaded once, its temporal products are
     * consumed immediately, and only the two full-resolution additive accumulators survive until
     * normalization. Draw bands bound individual GPU jobs; they never trigger another RAW upload.
     */
    private data class OnlineRgbAccumulator(
        val semanticAccumulator: Int,
        val opponentWeightAccumulator: Int,
        val chromaGuideTexture: Int,
        val drawBands: List<MgcSpatialRgbTile>,
        val rawSlots: IntArray,
        val passWindow: GlesGpuScheduler.PassWindow,
        val projectedGpuBytes: Long,
        var nextRawSlot: Int,
        var contributedFrames: Int = 0,
        var rawUploadCount: Int = 0,
        var rawUploadBytes: Long = 0L,
        var rawUploadNs: Long = 0L,
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

    private data class PixelPackBuffer(
        val buffer: Int,
        val byteCount: Int,
    )

    private data class QueuedTextureReadback(
        val storage: PixelPackBuffer,
        val mode: String,
        val targetBindMs: Long,
        val readSubmitMs: Long,
        val totalSubmitMs: Long,
    )

    private data class QueuedStrengthReadback(
        val alignment: PreparedTextureReadback,
        val rejection: PreparedTextureReadback,
        val fusedFixed16: PreparedTextureReadback,
        val fusedFixed16PrepareSubmitMs: Long,
    )

    private data class PreparedTextureReadback(
        val byteCount: Int,
        val queuedGpuReadback: QueuedTextureReadback?,
        val cpuBuffer: ByteBuffer?,
        val mode: String,
        val targetBindMs: Long,
        val readSubmitMs: Long,
        val totalSubmitMs: Long,
    ) {
        init {
            require(byteCount > 0)
            require((queuedGpuReadback == null) != (cpuBuffer == null)) {
                "Fixed16 readback must own exactly one GPU or CPU storage"
            }
            require(queuedGpuReadback?.storage?.byteCount == null ||
                queuedGpuReadback.storage.byteCount == byteCount)
            require(cpuBuffer?.capacity() == null || cpuBuffer.capacity() >= byteCount)
        }
    }

    private data class RgbDiagnosticPackTiming(
        val setupNs: Long,
        val dispatchNs: Long,
        val byteCount: Int,
        val destinationHeight: Int,
    )

    private data class PendingRgbDiagnosticBand(
        val storage: PixelPackBuffer,
        val outputCore: MgcSpatialRgbRect,
        val destinationHeight: Int,
        val byteCount: Int,
    )

    private enum class StrengthReadbackEncoding {
        FLOAT32,
        UNORM8,
        SINT16,
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
        val largestTilingArea: Int,
        val ultrashortClippingOverlap: Float,
    )

    // MGC GuideRaw10 emits one guide sample for every 2x2 Bayer quad. Rejection and
    // MergeBayer therefore share the same half-resolution coordinate system.
    private val guideWidth = ceilDiv(width, 2)
    private val guideHeight = ceilDiv(height, 2)
    // MergeBayerRaw16's queried AOT contract requests one alignment sample per 8x8
    // Bayer-quad tile, i.e. one sample per 16x16 sensor pixels.
    private val bayerAlignmentWidth = ceilDiv(width, MERGE_BAYER_RAW_TILE_SIZE)
    private val bayerAlignmentHeight = ceilDiv(height, MERGE_BAYER_RAW_TILE_SIZE)
    private val rejectionWidth = ceilDiv(width, 2)
    private val rejectionHeight = ceilDiv(height, 2)
    // Rejection::DilateMask and Rejection::Downsample2x require floor(input / 2).
    private val mergeWeightWidth = rejectionWidth / 2
    private val mergeWeightHeight = rejectionHeight / 2
    private val rejectionFilterWidth = ceilDiv(mergeWeightWidth, REJECTION_FILTER_DOWNSAMPLE)
    private val rejectionFilterHeight = ceilDiv(mergeWeightHeight, REJECTION_FILTER_DOWNSAMPLE)
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
    // MergeRgbRaw16F16 is a native-grid merge: output coordinates are RAW coordinates and samples
    // outside the RAW extent use its mirror boundary. Only its private planar allocation is padded
    // to complete 16x16 tiles; scaling happens after the AOT result has been materialized.
    private val rgbAotStorageWidth = ceilDiv(width, RGB_AOT_TILE_SIZE) * RGB_AOT_TILE_SIZE
    private val rgbAotStorageHeight = ceilDiv(height, RGB_AOT_TILE_SIZE) * RGB_AOT_TILE_SIZE
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
    private val validatedRenderTargetSpecs = HashSet<List<TextureSpec>>()
    private val temporalScratchTextures = SequentialScratchTextures()
    private var activeSequentialScratchTextures: SequentialScratchTextures? = null
    private var renderFbo = 0
    private var renderTargetAttachmentCount = 0

    private var guideProgram = 0
    private var covarianceProgram = 0
    private var rgbChromaGuideProgram = 0
    private var rawToGrayProgram = 0
    private var downsampleProgram = 0
    private var downsample4Program = 0
    private var alignProgram = 0
    private var alignmentGradientProductsProgram = 0
    private var upsampleAlignmentProgram = 0
    private var blockLucasKanadeProgram = 0
    private var convertAlignmentProgram = 0
    private var strengthAlignmentProgram = 0
    private var strengthRejectionProgram = 0
    private var unblockerProgram = 0
    private var rejectionProgram = 0
    private var rejectionPixelDifferenceDownsampleProgram = 0
    private var clippedGaussianHorizontalProgram = 0
    private var clippedGaussianVerticalProgram = 0
    private var rejectionFilterDownsampleProgram = 0
    private var rejectionFilterProgram = 0
    private var rejectionPostprocessProgram = 0
    private var dilationProgram = 0
    private var linearKernelMaskProgram = 0
    private var findBlockTilesGatherEdgesProgram = 0
    private var findBlockTilesFilterIntermediateProgram = 0
    private var findBlockTilesOutputProgram = 0
    private var bentoHighlightProgram = 0
    private var bentoHighlightCountProgram = 0
    private var bentoAdjustProgram = 0
    private var bentoRewriteWeightProgram = 0
    private var alignedRawClippingMaskProgram = 0
    private var mergeBayerProgram = 0
    private var sabreMergeBayerProgram = 0
    private var sabreExtractBayerProgram = 0
    private var sabreGuideAndCovarianceProgram = 0
    private var sabreMergeProgram = 0
    private var sabreCopyMaskProgram = 0
    private var sabreCopyAlphaProgram = 0
    private var sabreReciprocalGreenWeightProgram = 0
    private var sabreDehomogenizeProgram = 0
    private var sabreOutputTransformProgram = 0
    private var sabreResampleOutputProgram = 0
    private var currentMergeCovariance = 0
    private var mergeRgbProgram = 0
    private var normalizeBayerProgram = 0
    private var normalizeRgbProgram = 0
    private var resampleAotRgbHorizontalProgram = 0
    private var normalizeAotRgbProgram = 0
    private var copyRgb16ToFloatProgram = 0
    private var rgbChromaPostprocessor: GlesMgcSpatialRgbChromaPostprocessor? = null
    private var packBayerFixed16Program = 0
    private var packRgbFixed16FallbackProgram = 0
    private var strengthFloatPackProgram = 0
    private var strengthUnorm8PackProgram = 0
    private var strengthSint16PackProgram = 0
    private var supportsComputePrograms = false
    private var supportsComputeReadback = false
    private var maxShaderStorageBlockBytes = 0L
    private var maxComputePackGroupsX = 0
    private var maxComputePackGroupsY = 0
    private var baseFrameCamera2Model: RawNoiseModel = RawNoiseModel.EMPTY
    private val pixelDifferenceKernel = gaussianKernel(
        size = PIXEL_DIFFERENCE_KERNEL_SIZE,
        sigma = PIXEL_DIFFERENCE_SMOOTH_SIGMA,
    )
    private val conservativeRgbFlowBounds = MgcSpatialRgbFlowBounds(
        -MAX_ALIGNMENT_DISPLACEMENT_BAYER_QUADS,
        -MAX_ALIGNMENT_DISPLACEMENT_BAYER_QUADS,
        MAX_ALIGNMENT_DISPLACEMENT_BAYER_QUADS,
        MAX_ALIGNMENT_DISPLACEMENT_BAYER_QUADS,
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
        baseFrameCamera2Model = frames.firstOrNull()
            ?.channelNoiseProfile
            ?.let(RawNoiseModel::fromCamera2NoiseProfile)
            ?.takeIf { it.hasValidCamera2Profile }
            ?: RawNoiseModel.EMPTY
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

        var cpuOutput: ByteBuffer? = null
        var returned = false
        var exportedBayerTexture = 0
        var exportedRgbTexture = 0
        var exportedRgbCompletionTimeline: GpuStackCompletionTimeline? = null
        var strengthAlignmentHostBuffer: ByteBuffer? = null
        var strengthRejectionHostBuffer: ByteBuffer? = null
        var rgbDiagnosticHostBuffer: ByteBuffer? = null
        var strengthCapture: StrengthCapture? = null
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
            )
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
            val needsSabreCovariance = mergeMethod == MgcMergeMethod.SABRE
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
            val currentCovariance = if (needsSabreCovariance) {
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
            val baseFrameCamera2Profiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.CAMERA2_BASE_FRAME
            }
            val calibratedProfiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.GCAM_CALIBRATED
            }
            val pixel3FallbackProfiles = resolvedNoiseModels.count {
                it.source == RawNoiseModelSource.PIXEL3_FALLBACK
            }
            val calibratedProfile = (noiseProfileSelection as? RawNoiseProfileSelection.Calibrated)
                ?.profile
            val profileSource = calibratedProfile?.let { profile ->
                profile.maxAnalogSensitivity?.let { maxAnalog ->
                    "gcam-c:${profile.id} profileMaxAnalog=$maxAnalog"
                } ?: "mgc-override:${profile.id} profileMaxAnalog=not-applicable"
            } ?: "Camera2 SENSOR_NOISE_PROFILE"
            PLog.i(
                TAG,
                "MGC Spatial noise profile source=$profileSource " +
                    "perFrame=$perFrameCamera2Profiles/${frames.size} " +
                    "baseFallback=$baseFrameCamera2Profiles/${frames.size} " +
                    "calibrated=$calibratedProfiles/${frames.size} " +
                    "pixel3Fallback=$pixel3FallbackProfiles/${frames.size}",
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
                        "compatibleIso=$compatibleIso " +
                        "compatibleMax=$compatibleMax " +
                        "overallGain=${compatibleIso.map { iso -> iso?.let(profile::overallGainAt) }} " +
                        "digitalGain=${compatibleIso.map { iso -> iso?.let(profile::digitalGainAt) }}",
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
                    "referenceSigma=${referenceCalibration.kernelSigma} " +
                    "alignmentInputGain=${referenceCalibration.alignmentGain} " +
                    "alignmentDomain=signed-s16",
            )
            val rawUploadStartNs = System.nanoTime()
            uploadRaw(images.first(), referenceRaw, "reference")
            PLog.i(
                TAG,
                "MGC Spatial RAW temporal window textures=2 " +
                    "bytes=${width.toLong() * height * RAW_BYTES_PER_PIXEL * 2L} " +
                    "referenceUpload=1 took=" +
                    "${(System.nanoTime() - rawUploadStartNs) / 1_000_000L}ms",
            )
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
            if (needsSabreCovariance) {
                renderCovariance(
                    rawTexture = referenceRaw,
                    noiseTexture = referenceNoiseLut,
                    calibration = referenceCalibration,
                    outputTexture = referenceCovariance,
                )
                currentMergeCovariance = referenceCovariance
            }
            val referenceGrayPyramid = buildGrayPyramid(
                rawTexture = referenceRaw,
                calibration = referenceCalibration,
            )
            val referenceAlignmentProducts = buildReferenceAlignmentProducts(
                referenceGrayPyramid,
            )
            GlesGpuScheduler.yieldToUiRenderer()

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
                    renderBentoHighlightMask(
                        baseFrame = referenceGuide,
                        outputMask = output,
                    )
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
                    PLog.i(
                        TAG,
                        "MGC Bento base gate mode=compute-ssbo eligible=" +
                            "${baseHighlightClippedRatio > BENTO_MIN_CLIPPED_PIXEL_RATIO} " +
                            "clipped=${gpuCount.activePixels}/${guideWidth * guideHeight} " +
                            "ratio=$baseHighlightClippedRatio " +
                            "threshold=$BENTO_MIN_CLIPPED_PIXEL_RATIO " +
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
                    baseHighlightClippedRatio = clippedPixels.toFloat() / mask.size.toFloat()
                    PLog.i(
                        TAG,
                        "MGC Bento base gate mode=cpu-readback eligible=" +
                            "${baseHighlightClippedRatio > BENTO_MIN_CLIPPED_PIXEL_RATIO} " +
                            "clipped=$clippedPixels/${mask.size} " +
                            "ratio=$baseHighlightClippedRatio " +
                            "threshold=$BENTO_MIN_CLIPPED_PIXEL_RATIO " +
                            "gpuWait=${gpuWaitMs}ms " +
                            "read=${readNs / 1_000_000L}ms " +
                            "count=${countNs / 1_000_000L}ms " +
                            "total=${elapsedMs(gateStartNs)}ms",
                    )
                }
            }
            val evaluateBentoCandidate = ultrashortIndex >= 0 &&
                baseHighlightClippedRatio > BENTO_MIN_CLIPPED_PIXEL_RATIO
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
                    "Bento assessment accepted=false reason=insufficient_clipped_pixels " +
                        "clippedRatio=$baseHighlightClippedRatio largestInpaintingArea=0 " +
                        "largestTilingArea=0 ultrashortOverlap=0.0 " +
                        "exposureRatio=$bentoExposureRatio earlyGate=true",
                )
            }
            val bentoRaw = currentRaw
            val bentoGuide = currentGuide
            if (evaluateBentoCandidate) {
                val bentoScheduleStartNs = System.nanoTime()
                var bentoUploadCallNs = 0L
                var bentoPreAlignSubmitNs = 0L
                var bentoAlignSubmitNs = 0L
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
                    val alignment = alignPyramids(
                        reference = referenceGrayPyramid,
                        current = ultrashortGrayPyramid,
                        referenceProducts = referenceAlignmentProducts,
                    )
                    bentoAlignSubmitNs = System.nanoTime() - alignmentStartNs
                    val postAlignStartNs = System.nanoTime()
                    val bayerAlignment = alignment.texture
                    val flow = createConvertedAlignment(alignment)
                    val tilingMask = renderFindBlockTiles(
                        baseRaw = referenceRaw,
                        ultrashortRaw = bentoRaw,
                        flow = flow,
                        baseCalibration = referenceCalibration,
                        ultrashortCalibration = normalizedCalibration,
                    )

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
                    val ultrashortClippingMask = createTexture(
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
                        ultrashortClippingMask = ultrashortClippingMask,
                    )
                    val assessmentReadStartNs = System.nanoTime()
                    val assessmentGpuWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Bento assessment masks",
                        checkGlError = ::checkGlError,
                    )
                    val assessmentBaseHighlightMask = baseHighlightMask ?: readR8Mask(
                        texture = referenceHighlightMask,
                        label = "Bento base highlight mask",
                    ).also { mask -> baseHighlightMask = mask }
                    val assessment = assessBentoMasks(
                        baseHighlightMask = assessmentBaseHighlightMask,
                        inpaintingMask = readR8Mask(
                            inpaintingMask,
                            "Bento inpainting mask",
                        ),
                        ultrashortClippingMask = readR8Mask(
                            ultrashortClippingMask,
                            "Bento ultrashort clipping mask",
                        ),
                        tilingMask = readR8Mask(
                            texture = tilingMask,
                            label = "Bento FindBlockTiles mask",
                            maskWidth = bayerAlignmentWidth,
                            maskHeight = bayerAlignmentHeight,
                        ),
                    )
                    PLog.i(
                        TAG,
                        "Bento assessment accepted=${assessment.accepted} " +
                            "reason=${assessment.reason} " +
                            "clippedRatio=${assessment.clippedPixelRatio} " +
                            "largestInpaintingArea=${assessment.largestInpaintingArea} " +
                            "largestTilingArea=${assessment.largestTilingArea} " +
                            "ultrashortOverlap=${assessment.ultrashortClippingOverlap} " +
                            "exposureRatio=$exposureRatio earlyGate=false " +
                            "gpuWait=${assessmentGpuWaitMs}ms " +
                            "readAndAssess=${elapsedMs(assessmentReadStartNs)}ms",
                    )
                    if (assessment.accepted) {
                        bentoAccepted = true
                        acceptedBentoExposureRatio = exposureRatio
                        bentoCalibration = normalizedCalibration
                        bentoFlowTexture = flow.texture
                        bentoBayerAlignmentTexture = bayerAlignment
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
                        "alignSubmit=${bentoAlignSubmitNs / 1_000_000L}ms " +
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
            val temporalMergeCount = temporalFrameRange.count { index ->
                frames[index].role != RawBurstFrameRole.HIGHLIGHT_SHORT
            }
            val spatialNoiseFrameCount =
                1 + (if (bentoAccepted) 1 else 0) + temporalMergeCount
            if (outputMode == MgcSpatialOutputMode.RGB ||
                (MultiFrameConfig.ENABLE_MGC_SPATIAL_DEFAULT_DENOISE &&
                    !referenceOnly && spatialNoiseFrameCount > 1)
            ) {
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
                if (outputMode == MgcSpatialOutputMode.BAYER) {
                    currentMergeCovariance = referenceCovariance
                    renderMerge(
                        rawTexture = referenceRaw,
                        bayerAlignmentTexture = zeroFlow,
                        weightTexture = bentoBaseWeight,
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
                            weightTexture = bentoBaseWeight,
                            covarianceTexture = referenceCovariance,
                            flowBounds = MgcSpatialRgbFlowBounds.Zero,
                            useFrameWeight = true,
                        ),
                    )
                }
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        weightTexture = bentoBaseWeight,
                        identityWeight = false,
                    )
                }
                // MGC overwrites the selected ultrashort rejection slice with the Bento mask.
                if (outputMode == MgcSpatialOutputMode.BAYER) {
                    currentMergeCovariance = currentCovariance
                    renderMerge(
                        rawTexture = bentoRaw,
                        bayerAlignmentTexture = bentoBayerAlignmentTexture,
                        weightTexture = bentoShortWeight,
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
                            weightTexture = bentoShortWeight,
                            covarianceTexture = bentoRgbCovarianceTexture,
                            flowBounds = conservativeRgbFlowBounds,
                            useFrameWeight = true,
                        ),
                    )
                }
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = checkNotNull(bentoCalibration),
                        alignmentTexture = bentoBayerAlignmentTexture,
                        weightTexture = bentoShortWeight,
                        identityWeight = false,
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
                strengthCapture?.let { capture ->
                    captureStrengthFrame(
                        capture = capture,
                        frameIndex = capturedFrameIndex++,
                        calibration = referenceCalibration,
                        alignmentTexture = zeroFlow,
                        weightTexture = identityWeight,
                        identityWeight = true,
                    )
                }
            }

            GlesGpuScheduler.yieldToUiRenderer()

            for (index in temporalFrameRange) {
                val frame = frames[index]
                if (frame.role == RawBurstFrameRole.HIGHLIGHT_SHORT) continue
                val frameScheduleStartNs = System.nanoTime()
                var uploadCallNs = 0L
                var prepareCallNs = 0L
                var postPrepareSubmitNs = 0L
                beginTemporalScratchFrame()
                try {
                    val temporalRaw = currentRaw.also { texture ->
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
                        referenceAlignmentProducts = referenceAlignmentProducts,
                        currentRaw = temporalRaw,
                        currentGuide = currentGuide,
                        currentCovariance = currentCovariance,
                        kernelTuning = bayerKernelTuning,
                    )
                    prepareCallNs = System.nanoTime() - prepareStartNs
                    val postPrepareStartNs = System.nanoTime()
                    val mergeWeight = if (identityTemporalWeights) {
                        identityWeight
                    } else {
                        val exclusionMasks = when (frame.role) {
                            RawBurstFrameRole.SHADOW_LONG -> {
                                check(referenceHighlightMask != 0) {
                                    "Long-frame merge requires the reference highlight mask"
                                }
                                val alignedLongClippingMask =
                                    renderAlignedLongFrameClippingMask(
                                        rawTexture = temporalRaw,
                                        flow = prepared.convertedAlignment,
                                        calibration = prepared.calibration,
                                    )
                                PLog.d(
                                    TAG,
                                    "MGC long-frame highlight guard frame=$index " +
                                        "referenceClipping=true sourceRawClipping=true " +
                                        "threshold=$LONG_FRAME_RAW_CLIPPING_THRESHOLD",
                                )
                                intArrayOf(referenceHighlightMask, alignedLongClippingMask)
                            }
                            else -> if (bentoAccepted) {
                                intArrayOf(checkNotNull(bentoMask))
                            } else {
                                IntArray(0)
                            }
                        }
                        var maskedWeight = prepared.weightTexture
                        exclusionMasks.forEach { exclusionMask ->
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
                    strengthCapture?.let { capture ->
                        captureStrengthFrame(
                            capture = capture,
                            frameIndex = capturedFrameIndex++,
                            calibration = prepared.calibration,
                            alignmentTexture = prepared.bayerAlignmentTexture,
                            weightTexture = mergeWeight,
                            identityWeight = identityTemporalWeights,
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
            var strengthQueueElapsedMs = 0L
            var queuedStrengthReadback = if (
                readyStrengthCapture?.outputMode == MgcSpatialOutputMode.BAYER
            ) {
                val startNs = System.nanoTime()
                queueStrengthReadback(readyStrengthCapture, accumulatorColor).also {
                    strengthQueueElapsedMs = (System.nanoTime() - startNs) / 1_000_000L
                }
            } else {
                null
            }
            val lensShadingCorrectionApplied: Boolean
            if (outputMode == MgcSpatialOutputMode.RGB) {
                check(rgbMergeFrames.size == mergedFrames) {
                    "MGC Spatial RGB admitted ${rgbMergeFrames.size} frames, " +
                        "but Bayer/noise merge admitted $mergedFrames"
                }
                val aotCapture = checkNotNull(readyStrengthCapture) {
                    "MGC Spatial RGB AOT inputs were not captured"
                }
                val temporalGpuBytes = estimatedOwnedTextureBytes()
                PLog.i(
                    TAG,
                    "MGC Spatial RGB temporal resources=$temporalGpuBytes " +
                        "advisoryBytes=$RGB_TEXTURE_ADVISORY_BYTES " +
                        "estimateExceedsAdvisory=" +
                        "${temporalGpuBytes > RGB_TEXTURE_ADVISORY_BYTES}",
                )
                releaseRgbTemporalPhaseResources(
                    persistentTextures = IntArray(0),
                    strengthCapture = aotCapture,
                )
                val preparedStrengthAtlases = materializeRgbStrengthAtlases(aotCapture).also {
                    strengthAlignmentHostBuffer = it.first.cpuBuffer
                    strengthRejectionHostBuffer = it.second.cpuBuffer
                }
                val rgbMergeStartNs = System.nanoTime()
                val rgbOutput = renderOriginalAotRgbMerge(
                    frames = rgbMergeFrames,
                    images = images,
                    outputExposureScale = outputExposure.normalizationScale,
                    mergeSharpness = RGB_AOT_MERGE_SHARPNESS_SCALE *
                        finishRawSharpenAttenuationScale,
                    capture = aotCapture,
                    preparedAlignment = preparedStrengthAtlases.first,
                    preparedRejection = preparedStrengthAtlases.second,
                )
                cpuOutput = rgbOutput.cpuBuffer
                exportedRgbTexture = rgbOutput.gpuTexture
                exportedRgbCompletionTimeline = rgbOutput.completionTimeline
                rgbDiagnosticHostBuffer = rgbOutput.diagnosticFixed16?.cpuBuffer
                val startNs = System.nanoTime()
                queuedStrengthReadback = queueStrengthReadback(
                    capture = aotCapture,
                    preparedAlignment = preparedStrengthAtlases.first,
                    preparedRejection = preparedStrengthAtlases.second,
                    preparedFusedFixed16 = checkNotNull(rgbOutput.diagnosticFixed16),
                )
                strengthQueueElapsedMs = (System.nanoTime() - startNs) / 1_000_000L
                lensShadingCorrectionApplied = hasLensShading()
                PLog.i(
                    TAG,
                    "MGC Spatial RGB dispatch complete frames=$mergedFrames " +
                        "took=${(System.nanoTime() - rgbMergeStartNs) / 1_000_000L}ms " +
                        "mode=mgc-v25-merge-rgb-raw16-f16-aot " +
                        "aotNative=${width}x$height " +
                            "aotStorage=${rgbAotStorageWidth}x$rgbAotStorageHeight",
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
            if (queuedStrengthReadback != null) {
                PLog.i(
                    TAG,
                    "MGC Spatial strength readback queued mode=${outputMode.name} bytes=" +
                        "${queuedStrengthReadback.alignment.byteCount.toLong() +
                            queuedStrengthReadback.rejection.byteCount.toLong() +
                            queuedStrengthReadback.fusedFixed16.byteCount.toLong()} " +
                        "fixed16PrepareSubmit=" +
                        "${queuedStrengthReadback.fusedFixed16PrepareSubmitMs}ms " +
                        "modes=${queuedStrengthReadback.alignment.mode}/" +
                        "${queuedStrengthReadback.rejection.mode}/" +
                        "${queuedStrengthReadback.fusedFixed16.mode} " +
                        "alignmentSubmit=${queuedStrengthReadback.alignment.totalSubmitMs}ms " +
                        "rejectionSubmit=${queuedStrengthReadback.rejection.totalSubmitMs}ms " +
                        "fixed16Submit=${queuedStrengthReadback.fusedFixed16.totalSubmitMs}ms " +
                        "enqueue=${strengthQueueElapsedMs}ms",
                )
            }
            // Bayer queues all three diagnostics before output materialization. RGB packs the
            // exact merged camera-RGB signal during tiled reconstruction, then queues the two
            // matching RGB-resolution temporal atlases before resolving the RGB AOT.
            val strengthResolveStartNs = System.nanoTime()
            val spatialDenoiseEnabled =
                MultiFrameConfig.ENABLE_MGC_SPATIAL_DEFAULT_DENOISE && !referenceOnly
            val resolvedSpatialNoiseModel = if (
                strengthCapture != null && queuedStrengthReadback != null
            ) {
                resolveSpatialNoiseModel(strengthCapture, queuedStrengthReadback)
            } else {
                null
            }
            val spatialNoiseModel = if (spatialDenoiseEnabled) {
                resolvedSpatialNoiseModel ?: createIdentitySpatialNoiseModel(
                    referenceCalibration = referenceCalibration,
                    reason = when {
                        strengthCapture == null -> "single-admitted-frame"
                        queuedStrengthReadback == null -> "strength-readback-unavailable"
                        else -> "strength-aot-invalid"
                    },
                )
            } else {
                null
            }
            if (queuedStrengthReadback != null) {
                PLog.i(
                    TAG,
                    "MGC Spatial strength readback resolved mode=${outputMode.name} " +
                        "took=${(System.nanoTime() - strengthResolveStartNs) / 1_000_000L}ms",
                )
            }
            val denoiseModel = if (spatialNoiseModel != null) {
                when (outputMode) {
                    MgcSpatialOutputMode.BAYER ->
                        MgcSpatialDenoiseModel.fromBayerDiagnostics(
                            outputWeightsSumTotalDiag0 =
                                spatialNoiseModel.outputWeightsSumTotalDiag0,
                            outputWeightsSumTotalDiag1 =
                                spatialNoiseModel.outputWeightsSumTotalDiag1,
                        )
                    MgcSpatialOutputMode.RGB ->
                        MgcSpatialDenoiseModel.fromRgbDiagnostics(
                            outputWeightsSumTotalDiag0 =
                                spatialNoiseModel.outputWeightsSumTotalDiag0,
                            outputWeightsSumTotalDiag1 =
                                spatialNoiseModel.outputWeightsSumTotalDiag1,
                        )
                }
            } else {
                null
            }
            val outputShotNoise = spatialNoiseModel?.outputShotNoise?.let { values ->
                FloatArray(values.size) { channel ->
                    values[channel] * outputExposure.shotNoiseScale
                }
            }
            val outputReadNoise = spatialNoiseModel?.outputReadNoise?.let { values ->
                FloatArray(values.size) { channel ->
                    values[channel] * outputExposure.readNoiseVarianceScale
                }
            }
            if (spatialDenoiseEnabled) {
                checkNotNull(spatialNoiseModel) {
                    "MGC Spatial output noise coefficients were not produced"
                }
                checkNotNull(denoiseModel) {
                    "MGC Spatial correlation spectrum was not produced"
                }
            }
            if (spatialNoiseModel != null && denoiseModel != null) {
                PLog.i(
                    TAG,
                    "MGC Spatial denoise model aotMode=${outputMode.name} " +
                        "captureFrames=${strengthCapture?.frameCount} " +
                        "diag0=${spatialNoiseModel.outputWeightsSumTotalDiag0.contentToString()} " +
                        "diag1=${spatialNoiseModel.outputWeightsSumTotalDiag1.contentToString()} " +
                        "savannahRatio=${denoiseModel.diagnosticRatio} " +
                        "savannahTaps=[${denoiseModel.outerTap}," +
                        "${denoiseModel.centerTap},${denoiseModel.outerTap}] " +
                        "read=${outputReadNoise?.contentToString()} " +
                        "shot=${outputShotNoise?.contentToString()} " +
                        "outputExposureScale=${outputExposure.normalizationScale} " +
                        "strength=spatial-aot readback=atlas-pbo-deferred",
                )
            }
            checkGlError("MGC Spatial ${outputMode.name} merge")
            returned = true
            // MGC's base-SNR * sqrt(planned frame count) value is only a pre-merge planning
            // estimate. FinishRaw leaves its explicit SNR override unset and evaluates the
            // propagated Spatial output NoiseModel instead, after alignment/rejection weights
            // and output-exposure normalization have been folded into read/shot.
            val propagatedOutputSnr = if (outputReadNoise != null && outputShotNoise != null) {
                MgcSpatialMergeTuning.outputNoiseModelSnr(
                    signal = bayerKernelTuning.referenceSignal *
                        outputExposure.normalizationScale,
                    greenReadVariance = outputReadNoise.getOrElse(1) { Float.NaN },
                    greenShotNoiseFactor = outputShotNoise.getOrElse(1) { Float.NaN },
                )
            } else {
                null
            }
            val finishRawDenoiseSnr = propagatedOutputSnr
                ?: MgcSpatialMergeTuning.mergedSnr(
                    bayerKernelTuning.referenceSnr,
                    mergedFrames,
                )
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
                    "finishRawDenoiseSnr=$finishRawDenoiseSnr " +
                    "finishRawDenoiseSnrSource=${if (propagatedOutputSnr != null) {
                        "spatial-output-noise-model"
                    } else {
                        "reference-snr-frame-count-fallback"
                    }} " +
                    "lscApplied=$lensShadingCorrectionApplied result=$resultLabel " +
                    "programInit=${programInitMs}ms " +
                    "queueMode=${if (outputMode == MgcSpatialOutputMode.RGB) {
                        "mgc-v25-native-aot"
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
                mgcDenoiseCorrelation = denoiseModel?.correlation,
                mgcDenoiseReadNoise = outputReadNoise,
                mgcDenoiseShotNoise = outputShotNoise,
                mgcSpatialStrengthMap = spatialNoiseModel?.strengthMap?.let(
                    ::mapSpatialStrengthToOutputCoordinates,
                ),
                mgcDenoiseTuningSnr = finishRawDenoiseSnr,
                mgcSharpenTuningSnr = bayerKernelTuning.referenceSnr,
                mgcSharpenAttenuationScale = finishRawSharpenAttenuationScale,
                coreImagingTuning = coreImagingTuning,
                mgcSpatialReferenceOnlyDiagnostic = referenceOnly,
            )
        } catch (error: Exception) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
            LargeDirectBuffer.free(strengthAlignmentHostBuffer)
            LargeDirectBuffer.free(strengthRejectionHostBuffer)
            LargeDirectBuffer.free(rgbDiagnosticHostBuffer)
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
        if (images.any { it.width != width || it.height != height }) {
            PLog.e(TAG, "MGC Sabre received mixed RAW dimensions")
            images.forEach { it.close() }
            return null
        }
        if (images.any { it.format != ImageFormat.RAW_SENSOR }) {
            PLog.e(TAG, "MGC Sabre only accepts RAW_SENSOR images")
            images.forEach { it.close() }
            return null
        }
        baseFrameCamera2Model = frames.firstOrNull()
            ?.channelNoiseProfile
            ?.let(RawNoiseModel::fromCamera2NoiseProfile)
            ?.takeIf { it.hasValidCamera2Profile }
            ?: RawNoiseModel.EMPTY
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
        var sabreAccumulatedReadback: ByteBuffer? = null
        var sabreResolvedRgb: ByteBuffer? = null
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
                mergeGradientThreshold = coreImagingTuning.fusion.mergeGradientThreshold,
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
            val sabreResolveFinalBlackLevel =
                sabreResolveBlackLevel(referenceCalibration.blackLevels)
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
                    "mergeGradientThreshold=${coreImagingTuning.fusion.mergeGradientThreshold ?: "adaptive"} " +
                    "guideColorSpace=sqrt noiseLut=qmc64x10 " +
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
                guide = referenceGuide,
                covariance = referenceCovariance,
                guideWidth = extractedWidth,
                guideHeight = extractedHeight,
                kernelParameters = sabreKernelParameters,
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

            val sabreAverageMergeFactor = readSabreAverageMergeFactor(
                accumulatedWeightsGb = accumulatedWeightsGb,
            )
            val sabreNoiseModelScale = sabreAverageMergeFactor
            PLog.i(
                SABRE_TAG,
                "MGC Sabre merged NoiseModel averageMergeFactor=$sabreAverageMergeFactor " +
                    "coefficientScale=$sabreNoiseModelScale",
            )

            renderSabreDehomogenize(
                accumulatedColor,
                accumulatedWeightsGb,
                accumulatedCoverage,
                alphaScale = accumulatedWeightScale / frames.size.toFloat(),
                alphaBias = 1f / frames.size.toFloat(),
            )
            // The original merge shaders write normalized, white-balanced half floats. The
            // Resolve AOT accepts those RGBA16F bit patterns directly; rawScale applies only to
            // the black/white scalar parameters below.
            sabreAccumulatedReadback = readSabreAccumulatedRgba16f(accumulatedColor)
            sabreResolvedRgb = checkNotNull(
                LargeDirectBuffer.allocate(
                    width.toLong() * height * 3L * Short.SIZE_BYTES,
                    "MGC Sabre Resolve RGB16",
                ),
            ) { "Unable to allocate MGC Sabre Resolve output" }
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
                    "black=${sabreResolveFinalBlackLevel.contentToString()} " +
                    "gains=${sabreResolveFinalGains.contentToString()} " +
                    "demosaicWhite=$demosaicWhiteLevel " +
                    "outputWhite=${sabreResolveParameters.outputWhiteLevel} " +
                    "demosaicSharpness=${sabreResolveParameters.demosaicSharpness}",
            )
            MgcSabreResolver.resolve(
                accumulatedColorRgba16f = sabreAccumulatedReadback,
                outputRgb16Planar = sabreResolvedRgb,
                width = width,
                height = height,
                cfaPattern = cfaPattern,
                finalBlackLevel = sabreResolveFinalBlackLevel,
                finalGains = sabreResolveFinalGains,
                demosaicWhiteLevel = demosaicWhiteLevel,
                outputWhiteLevel = sabreResolveParameters.outputWhiteLevel,
                demosaicBlendScale = -demosaicBlendRange * frames.size,
                demosaicBlendBias = SABRE_DEMOSAIC_BLEND_END / demosaicBlendRange,
                demosaicSharpnessScale =
                    demosaicWhiteLevel * sabreResolveParameters.demosaicSharpness,
            )
            logSabreResolvedRgbStats(sabreResolvedRgb)
            LargeDirectBuffer.free(sabreAccumulatedReadback)
            sabreAccumulatedReadback = null

            val nativeResolvedPlanes = IntArray(3) {
                createTexture(
                    width,
                    height,
                    GLES30.GL_R16UI,
                    GLES30.GL_NEAREST,
                )
            }
            uploadSabreResolvedRgb16Planar(sabreResolvedRgb, nativeResolvedPlanes)
            LargeDirectBuffer.free(sabreResolvedRgb)
            sabreResolvedRgb = null
            releaseSabreMergePhaseTextures(nativeResolvedPlanes)
            val lensShadingTexture = createLensShadingTexture()
            val resampleOutput = outputWidth != width || outputHeight != height
            val fullOutput = MgcSpatialRgbRect(0, 0, width, height)
            val fullOutputTile = MgcSpatialRgbTile(index = 0, outputCore = fullOutput)
            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Sabre VGN color noise/IIR postprocessor is not initialized"
            }
            chromaPostprocessor.initStorage(listOf(fullOutputTile))
            renderSabreOutputTransform(
                resolvedRgbPlanes = nativeResolvedPlanes,
                lensShadingTexture = lensShadingTexture,
                finalBlackLevel = sabreResolveFinalBlackLevel,
                demosaicWhiteLevel = demosaicWhiteLevel.toFloat(),
                output = chromaPostprocessor.normalizationTargetTexture(),
            )
            chromaPostprocessor.markTileWritten(fullOutputTile)
            if (!exportGpuLinearRgbSource && !resampleOutput) {
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
                resampleOutput -> {
                    {
                        GlesGpuCompletion.awaitSubmittedWork(
                            label = "MGC Sabre VGN-to-bicubic handoff",
                            checkGlError = ::checkGlError,
                        )
                        Unit
                    }
                }
                else -> null
            }
            val chromaResult = chromaPostprocessor.process(
                obtainOutputBuffer = { checkNotNull(cpuOutput) },
                deferFullSizeReadback = exportGpuLinearRgbSource || resampleOutput,
                onFinalSubmitted = onChromaFinalSubmitted,
            )
            postprocessedUi = chromaResult.exportedTextureId
            if (resampleOutput) {
                check(postprocessedUi != 0) {
                    "MGC Sabre VGN did not export its native-grid texture for output scaling"
                }
                if (exportGpuLinearRgbSource) {
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Sabre VGN-to-bicubic handoff",
                        checkGlError = ::checkGlError,
                    )
                }
                val nativePostprocessedUi = postprocessedUi
                postprocessedUi = 0
                val nativePostprocessedFloat = createTexture(
                    width,
                    height,
                    GLES30.GL_RGBA16F,
                    GLES30.GL_NEAREST,
                )
                try {
                    renderRgb16ToFloat(
                        source = nativePostprocessedUi,
                        target = nativePostprocessedFloat,
                        imageWidth = width,
                        imageHeight = height,
                    )
                } finally {
                    GLES30.glDeleteTextures(1, intArrayOf(nativePostprocessedUi), 0)
                }
                val scaledPostprocessedUi = createTexture(
                    outputWidth,
                    outputHeight,
                    GLES30.GL_RGBA16UI,
                    GLES30.GL_NEAREST,
                )
                try {
                    renderSabreResampledOutput(
                        source = nativePostprocessedFloat,
                        target = scaledPostprocessedUi,
                    )
                    if (exportGpuLinearRgbSource) {
                        transferOwnedTexture(
                            scaledPostprocessedUi,
                            "MGC Sabre scaled RGB16 output",
                        )
                    }
                    postprocessedUi = scaledPostprocessedUi
                } finally {
                    releaseOwnedTexture(
                        nativePostprocessedFloat,
                        "MGC Sabre native RGBA16F scaling source",
                    )
                }
                if (!exportGpuLinearRgbSource) {
                    try {
                        cpuOutput = readSabreRgb16Output(postprocessedUi)
                    } finally {
                        detachRenderTargets()
                        releaseOwnedTexture(postprocessedUi, "MGC Sabre scaled RGB16 output")
                        postprocessedUi = 0
                    }
                }
            }
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
            returned = true
            // FinishRaw resolves denoise tuning SNR from the merged frame's NoiseModel when no
            // explicit override is present. Photon represents Sabre's merged model with the
            // measured Q8 average merge factor. V25's GetMergedNoiseModel branch returns the
            // model directly and does not apply a second SNR lookup-table reduction. The
            // separately logged referenceSnr * sqrt(frameCount) value remains only a pre-merge
            // planning estimate.
            val finishRawDenoiseSnr = kernelTuning.referenceSnr /
                sqrt(sabreNoiseModelScale)
            PLog.i(
                SABRE_TAG,
                "MGC Sabre complete frames=${frames.size} native=${width}x$height " +
                    "output=${outputWidth}x$outputHeight outputScale=$normalizedOutputScale " +
                    "referenceSnr=${kernelTuning.referenceSnr} " +
                    "finishRawDenoiseSnr=$finishRawDenoiseSnr " +
                    "result=${if (exportedTexture != 0) gpuLinearRgbStorage.name + "_GPU" else "RGB16_CPU"} " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms " +
                    "total=${elapsedMs(processStartNs)}ms",
            )
            RawStackResult(
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
                mgcSabreNoiseModelScale = sabreNoiseModelScale,
                mgcDenoiseTuningSnr = finishRawDenoiseSnr,
                mgcSharpenTuningSnr = kernelTuning.referenceSnr,
                mgcSharpenAttenuationScale = sabreResolveParameters.demosaicSharpness,
                coreImagingTuning = coreImagingTuning,
            )
        } catch (error: Exception) {
            completionRecorder.releasePending()
            PLog.e(SABRE_TAG, "MGC Sabre merge failed", error)
            null
        } finally {
            images.forEach { it.close() }
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, SABRE_TAG)
            LargeDirectBuffer.free(sabreAccumulatedReadback)
            LargeDirectBuffer.free(sabreResolvedRgb)
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

    private fun readSabreAverageMergeFactor(
        accumulatedWeightsGb: Int,
    ): Float {
        val reducedWidth = ceilDiv(width, 4)
        val reducedHeight = ceilDiv(height, 4)
        val reduced = createTexture(
            reducedWidth,
            reducedHeight,
            GLES30.GL_RG16F,
            GLES30.GL_NEAREST,
        )
        try {
            GLES30.glUseProgram(sabreReciprocalGreenWeightProgram)
            bindTexture(
                sabreReciprocalGreenWeightProgram,
                "uAccumulatedWeightsGb",
                0,
                accumulatedWeightsGb,
            )
            uniform2i(sabreReciprocalGreenWeightProgram, "uInputSize", width, height)
            draw(
                sabreReciprocalGreenWeightProgram,
                reducedWidth,
                reducedHeight,
                intArrayOf(reduced),
            )

            val valueCount = Math.multiplyExact(
                Math.multiplyExact(reducedWidth, reducedHeight),
                2,
            )
            val readback = ByteBuffer.allocateDirect(
                Math.multiplyExact(valueCount, Short.SIZE_BYTES),
            ).order(ByteOrder.nativeOrder())
            bindRenderTargets(intArrayOf(reduced), "MGC Sabre reciprocal green-weight readback")
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(
                0,
                0,
                reducedWidth,
                reducedHeight,
                GLES30.GL_RG,
                GLES30.GL_HALF_FLOAT,
                readback,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            checkGlError("read MGC Sabre reciprocal green weights")

            val values = readback.asShortBuffer()
            var reciprocalSum = 0.0
            var sampleCount = 0.0
            for (index in 0 until reducedWidth * reducedHeight) {
                reciprocalSum += Half.toFloat(values.get(index * 2)).toDouble()
                sampleCount += Half.toFloat(values.get(index * 2 + 1)).toDouble()
            }
            check(
                reciprocalSum.isFinite() && sampleCount.isFinite() &&
                    reciprocalSum > 0.0 && sampleCount > 0.0
            ) {
                "MGC Sabre accumulated green weights produced an invalid merge factor: " +
                    "sum=$reciprocalSum count=$sampleCount"
            }
            return (reciprocalSum / sampleCount).toFloat()
        } finally {
            releaseOwnedTexture(reduced, "Sabre reciprocal green-weight reduction")
        }
    }

    private fun renderSabreOutputTransform(
        resolvedRgbPlanes: IntArray,
        lensShadingTexture: Int,
        finalBlackLevel: FloatArray,
        demosaicWhiteLevel: Float,
        output: Int,
    ) {
        require(resolvedRgbPlanes.size == 3)
        require(finalBlackLevel.size == 3)
        val program = sabreOutputTransformProgram
        GLES30.glUseProgram(program)
        bindTexture(program, "uResolvedR", 0, resolvedRgbPlanes[0])
        bindTexture(program, "uResolvedG", 1, resolvedRgbPlanes[1])
        bindTexture(program, "uResolvedB", 2, resolvedRgbPlanes[2])
        bindTexture(program, "uLensShading", 3, lensShadingTexture)
        uniform2i(program, "uOutputSize", width, height)
        uniform1i(program, "uUseLensShading", if (hasLensShading()) 1 else 0)
        uniform3f(
            program,
            "uFinalBlackLevel",
            finalBlackLevel[0],
            finalBlackLevel[1],
            finalBlackLevel[2],
        )
        uniform1f(program, "uDemosaicWhiteLevel", demosaicWhiteLevel)
        uniform1f(program, "uOutputExposureScale", 1f)
        draw(program, width, height, intArrayOf(output))
    }

    private fun renderSabreResampledOutput(source: Int, target: Int) {
        check(sabreResampleOutputProgram != 0) {
            "MGC Sabre bicubic output program is not initialized"
        }
        GLES30.glUseProgram(sabreResampleOutputProgram)
        bindTexture(sabreResampleOutputProgram, "uSource", 0, source)
        uniform2i(sabreResampleOutputProgram, "uSourceSize", width, height)
        uniform2i(
            sabreResampleOutputProgram,
            "uOutputSize",
            outputWidth,
            outputHeight,
        )
        draw(
            sabreResampleOutputProgram,
            outputWidth,
            outputHeight,
            intArrayOf(target),
        )
        GlesGpuScheduler.memoryBarrier()
    }

    private fun readSabreRgb16Output(texture: Int): ByteBuffer {
        val outputByteCount = outputWidth.toLong() * outputHeight * 3L * Short.SIZE_BYTES
        val scratchByteCount = outputWidth.toLong() * outputHeight * 4L * Short.SIZE_BYTES
        require(outputByteCount in 1..Int.MAX_VALUE.toLong())
        require(scratchByteCount in 1..Int.MAX_VALUE.toLong())
        val output = LargeDirectBuffer.allocate(outputByteCount, "MGC Sabre scaled RGB16 output")
            ?.order(ByteOrder.nativeOrder()) ?: error(
            "Unable to allocate MGC Sabre scaled RGB16 output",
        )
        val scratch = LargeDirectBuffer.allocate(
            scratchByteCount,
            "MGC Sabre scaled RGBA16 readback",
        )?.order(ByteOrder.nativeOrder())
        if (scratch == null) {
            LargeDirectBuffer.free(output)
            error("Unable to allocate MGC Sabre scaled RGBA16 readback")
        }
        try {
            GlesGpuCompletion.awaitSubmittedWork(
                label = "MGC Sabre bicubic RGB16 readback",
                checkGlError = ::checkGlError,
            )
            bindRenderTargets(intArrayOf(texture), "MGC Sabre bicubic RGB16 readback")
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
            GLES30.glReadPixels(
                0,
                0,
                outputWidth,
                outputHeight,
                GLES30.GL_RGBA_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                scratch,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            checkGlError("MGC Sabre bicubic RGBA16 readback")
            scratch.rewind()
            check(
                DirectBufferPixelPacker.unpackRgba16TileToRgb16(
                    source = scratch,
                    sourceWidth = outputWidth,
                    sourceHeight = outputHeight,
                    destination = output,
                    destinationWidth = outputWidth,
                    destinationHeight = outputHeight,
                    destinationLeft = 0,
                    destinationTop = 0,
                ),
            ) { "Unable to pack MGC Sabre bicubic RGB16 output" }
            output.rewind()
            return output
        } catch (throwable: Throwable) {
            LargeDirectBuffer.free(output)
            throw throwable
        } finally {
            LargeDirectBuffer.free(scratch)
        }
    }

    private fun readSabreAccumulatedRgba16f(texture: Int): ByteBuffer {
        val output = checkNotNull(
            LargeDirectBuffer.allocate(
                width.toLong() * height * 4L * Short.SIZE_BYTES,
                "MGC Sabre accumulated RGBA16F",
            ),
        ) { "Unable to allocate MGC Sabre accumulated-color readback" }
        try {
            bindRenderTargets(intArrayOf(texture), "MGC Sabre accumulated-color readback")
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                output,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            checkGlError("read MGC Sabre accumulated RGBA16F")
            output.position(0)
            output.limit(output.capacity())
            return output
        } catch (error: Exception) {
            LargeDirectBuffer.free(output)
            throw error
        }
    }

    private fun uploadSabreResolvedRgb16Planar(buffer: ByteBuffer, textures: IntArray) {
        require(textures.size == 3)
        val planeBytes = Math.multiplyExact(
            Math.multiplyExact(width, height),
            Short.SIZE_BYTES,
        )
        require(buffer.capacity() >= Math.multiplyExact(planeBytes, textures.size))
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        textures.forEachIndexed { channel, texture ->
            val plane = buffer.duplicate().order(ByteOrder.nativeOrder())
            plane.position(channel * planeBytes)
            plane.limit((channel + 1) * planeBytes)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                0,
                0,
                width,
                height,
                GLES30.GL_RED_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                plane,
            )
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("upload MGC Sabre Resolve planar RGB16")
    }

    private fun logSabreResolvedRgbStats(buffer: ByteBuffer) {
        val pixelCount = Math.multiplyExact(width, height)
        val samplesPerPlane = 4096
        val sampleStep = max(1, pixelCount / samplesPerPlane)
        val values = buffer.duplicate().order(ByteOrder.nativeOrder()).asShortBuffer()
        val minimum = IntArray(3) { 0xffff }
        val maximum = IntArray(3)
        val sum = LongArray(3)
        val count = IntArray(3)
        for (channel in 0 until 3) {
            val planeOffset = channel * pixelCount
            var pixel = 0
            while (pixel < pixelCount) {
                val value = values.get(planeOffset + pixel).toInt() and 0xffff
                minimum[channel] = minOf(minimum[channel], value)
                maximum[channel] = maxOf(maximum[channel], value)
                sum[channel] += value.toLong()
                count[channel]++
                pixel += sampleStep
            }
        }
        val mean = FloatArray(3) { channel ->
            if (count[channel] > 0) {
                sum[channel].toFloat() / count[channel].toFloat()
            } else {
                0f
            }
        }
        PLog.i(
            SABRE_TAG,
            "MGC Sabre Resolve output samples min=${minimum.contentToString()} " +
                "max=${maximum.contentToString()} mean=${mean.contentToString()} " +
                "step=$sampleStep",
        )
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
        upsampleAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.upsampleAlignment,
            "mgc_sabre_upsample_alignment",
        )
        blockLucasKanadeProgram = linkProgram(
            GlesMgcRawSpatialShaders.blockLucasKanade,
            "mgc_sabre_block_lucas_kanade",
        )
        convertAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.convertAlignment,
            "mgc_sabre_convert_alignment",
        )
        unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_sabre_unblocker")
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
        sabreReciprocalGreenWeightProgram = linkProgram(
            GlesMgcRawSabreShaders.reciprocalGreenWeight4x4,
            "mgc_sabre_reciprocal_green_weight_4x4",
        )
        sabreDehomogenizeProgram = linkProgram(
            GlesMgcRawSabreShaders.dehomogenize,
            "mgc_sabre_dehomogenize",
        )
        sabreOutputTransformProgram = linkProgram(
            GlesMgcRawSabreShaders.outputTransformUint16,
            "mgc_sabre_output_transform_rgba16ui",
        )
        if (outputWidth != width || outputHeight != height) {
            sabreResampleOutputProgram = linkProgram(
                GlesMgcRawSabreShaders.resampleOutputBicubic,
                "mgc_sabre_output_bicubic",
            )
        }
        if (outputWidth != width || outputHeight != height ||
            (exportGpuLinearRgbSource && gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16F)
        ) {
            copyRgb16ToFloatProgram = linkComputeProgram(
                GlesMgcRawSpatialShaders.copyRgb16ToFloat,
                "mgc_sabre_chroma_to_rgba16f",
            )
        }
        // ResolveSabre and VGN stay on the native grid. A requested larger output is a separate
        // bicubic export transform after VGN, so it cannot be mistaken for sensor-detail SR.
        rgbChromaPostprocessor = createRgbChromaPostprocessor(
            imageWidth = width,
            imageHeight = height,
            iirOutputScale = 1f,
            exportFullSizeTexture = exportGpuLinearRgbSource ||
                outputWidth != width || outputHeight != height,
        ).also { it.initPrograms() }
    }

    private fun initPrograms(
        includeBentoAssessment: Boolean,
        includeReferenceHighlightMask: Boolean = includeBentoAssessment,
    ) {
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
        strengthAlignmentProgram = linkProgram(
            GlesMgcRawSpatialShaders.strengthAlignment,
            "mgc_strength_alignment",
        )
        strengthRejectionProgram = linkProgram(
            GlesMgcRawSpatialShaders.strengthRejection,
            "mgc_strength_rejection",
        )
        unblockerProgram = linkProgram(GlesMgcRawSpatialShaders.unblocker, "mgc_unblocker")
        rejectionProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejection,
            "mgc_spatial_rejection",
        )
        rejectionPixelDifferenceDownsampleProgram = linkProgram(
            GlesMgcRawSpatialShaders.rejectionPixelDifferenceDownsample,
            "mgc_rejection_pixel_difference_downsample",
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
            findBlockTilesGatherEdgesProgram = linkProgram(
                GlesMgcRawSpatialShaders.findBlockTilesGatherEdges,
                "mgc_find_block_tiles_gather_edges",
            )
            findBlockTilesFilterIntermediateProgram = linkProgram(
                GlesMgcRawSpatialShaders.findBlockTilesFilterIntermediate,
                "mgc_find_block_tiles_filter_intermediate",
            )
            findBlockTilesOutputProgram = linkProgram(
                GlesMgcRawSpatialShaders.findBlockTilesOutput,
                "mgc_find_block_tiles_output",
            )
            bentoAdjustProgram = linkProgram(
                GlesMgcRawSpatialShaders.bentoAdjustHighlightMask,
                "mgc_bento_adjust_mask",
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
            // Color noise/IIR owns a fixed RGBA16UI boundary, matching the VGN/Radiance
            // contract. The original planar F16 AOT output enters that boundary exactly once.
            if (outputWidth != width || outputHeight != height) {
                resampleAotRgbHorizontalProgram = linkProgram(
                    GlesMgcRawSpatialShaders.resampleAotRgbHorizontal,
                    "mgc_spatial_v25_aot_rgb_resample_x",
                )
            }
            normalizeAotRgbProgram = linkProgram(
                GlesMgcRawSpatialShaders.normalizeAotRgb16,
                "mgc_spatial_v25_aot_rgb16ui",
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
        packBayerFixed16Program = linkProgram(
            GlesMgcRawSpatialShaders.packBayerFixed16,
            "mgc_spatial_bayer_fixed16",
        )
        if (supportsComputeReadback) {
            runCatching {
                strengthFloatPackProgram = linkComputeProgram(
                    MgcStrengthReadbackShaders.FLOAT32,
                    "mgc_strength_pack_float32",
                )
                strengthUnorm8PackProgram = linkComputeProgram(
                    MgcStrengthReadbackShaders.UNORM8,
                    "mgc_strength_pack_unorm8",
                )
                strengthSint16PackProgram = linkComputeProgram(
                    MgcStrengthReadbackShaders.SINT16,
                    "mgc_strength_pack_sint16",
                )
            }.onFailure { error ->
                strengthFloatPackProgram = 0
                strengthUnorm8PackProgram = 0
                strengthSint16PackProgram = 0
                PLog.w(TAG, "MGC strength SSBO pack unavailable; using framebuffer readback", error)
            }
        }
    }

    private fun createRgbChromaPostprocessor(
        imageWidth: Int = outputWidth,
        imageHeight: Int = outputHeight,
        iirOutputScale: Float = normalizedOutputScale,
        exportFullSizeTexture: Boolean = exportGpuLinearRgbSource,
    ): GlesMgcSpatialRgbChromaPostprocessor {
        return GlesMgcSpatialRgbChromaPostprocessor(
            imageWidth = imageWidth,
            imageHeight = imageHeight,
            calculationWbGains = calculationWhiteBalance,
            outputScale = iirOutputScale,
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
            MgcSpatialMergeTuning.expectedMergeWeight(
                referenceSignal = kernelTuning.referenceSignal,
                baseShotNoiseFactor = kernelTuning.referenceGreenShotNoiseFactor,
                baseReadVariance = kernelTuning.referenceGreenReadVariance,
                alternateShotNoiseFactor = sourceShot.getOrElse(1) { 0f },
                alternateReadVariance = sourceRead.getOrElse(1) { 0f },
                exposureScale = exposureScale,
            )
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

    private fun sabreResolveBlackLevel(referenceBlackLevel: FloatArray): FloatArray =
        floatArrayOf(
            referenceBlackLevel[0] * sabreResolveRawScale,
            0.5f * (referenceBlackLevel[1] + referenceBlackLevel[2]) *
                sabreResolveRawScale,
            referenceBlackLevel[3] * sabreResolveRawScale,
        )

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
                fallbackSignal = coreImagingTuning.fusion.missingReferenceSignal,
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
            plane.rowStride < width * plane.pixelStride
        ) {
            return null
        }
        val buffer = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val bufferStart = buffer.position()
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
            perFrameCamera2Profile = frame.channelNoiseProfile,
            baseFrameCamera2Model = baseFrameCamera2Model,
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
        )

        var levelWidth = finestWidth
        var levelHeight = finestHeight
        var scaleToBayerQuads = 1
        for (step in ALIGN_PYRAMID_DOWNSAMPLE_STEPS) {
            check(step == 2 || step == 4)
            scaleToBayerQuads *= step
            // Every downsampled level carries the positive-side support sample used by
            // Halide's clamped interpolation. The finest level itself has no extra sample.
            val nextWidth = ceilDiv(finestWidth, scaleToBayerQuads) + 1
            val nextHeight = ceilDiv(finestHeight, scaleToBayerQuads) + 1
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
                scaleToBayerQuads = scaleToBayerQuads.toFloat(),
            )
        }
        return levels
    }

    /**
     * Computes the reference-only half of LK once for the burst.
     *
     * Gradient products depend on neither the current frame nor its initial flow. Keeping these
     * small textures alive across temporal frames removes four serial tile reductions per frame
     * without changing LK iterations, accumulation order, or output precision.
     */
    private fun buildReferenceAlignmentProducts(
        reference: List<TextureLevel>,
    ): List<ReferenceAlignmentProducts> {
        check(reference.size == ALIGN_LEVEL_TILE_STRIDES.size)
        val startNs = System.nanoTime()
        return reference.mapIndexed { levelIndex, level ->
            val tileSize = ALIGN_LEVEL_TILE_STRIDES[levelIndex]
            val normalize = levelIndex != 0
            val gridWidth = alignmentGridWidth(level, tileSize)
            val gridHeight = alignmentGridHeight(level, tileSize)
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
            ReferenceAlignmentProducts(
                referenceTexture = level.texture,
                gridWidth = gridWidth,
                gridHeight = gridHeight,
                tileStride = tileSize,
                tileSize = tileSize,
                normalize = normalize,
                products0 = products0,
                products1 = products1,
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
     * AlignPyramid::AlignAlt then performs one final UpsampleAlignment pass from the 32-quad
     * finest LK grid to Spatial MergeBayerRaw16's full 8-quad grid. The final pass evaluates
     * 16x16 target blocks and selects a whole neighboring LK candidate by L1 residual; it is
     * not a bilinear resample. That final output is the alignment object consumed by merge and
     * separately converted into MGC's sparse normalized-flow grid for rejection.
     */
    private fun alignPyramids(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
        referenceProducts: List<ReferenceAlignmentProducts>,
    ): Alignment {
        check(reference.size == current.size)
        check(reference.size == ALIGN_LEVEL_TILE_STRIDES.size)
        check(referenceProducts.size == reference.size)
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
            referenceProducts = referenceProducts[coarseIndex],
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
                referenceProducts = referenceProducts[levelIndex],
            )
            schedule +=
                "${level.width}x${level.height}:${tileSize}px," +
                    "LK$iterations,normalize=$normalize," +
                    "levelScale=$scale"
        }
        val finalUpsampleMode = if (processorPipeline == MgcRawProcessorPipeline.SPATIAL) {
            alignment = renderUpsampledAlignment(
                reference = reference.first(),
                current = current.first(),
                initial = alignment,
                targetGridWidth = bayerAlignmentWidth,
                targetGridHeight = bayerAlignmentHeight,
                targetGridMin = MERGE_ALIGNMENT_GRID_MIN,
                targetTileStride = MERGE_BAYER_RAW_TILE_SIZE / 2,
                targetTileSize = MERGE_BAYER_RAW_TILE_SIZE,
            )
            schedule +=
                "${reference.first().width}x${reference.first().height}:" +
                    "${MERGE_BAYER_RAW_TILE_SIZE / 2}px," +
                    "UpsampleL1(tile=${MERGE_BAYER_RAW_TILE_SIZE})"
            check(
                alignment.gridWidth == bayerAlignmentWidth &&
                    alignment.gridHeight == bayerAlignmentHeight &&
                    alignment.tileStride == MERGE_BAYER_RAW_TILE_SIZE / 2 &&
                    alignment.scaleToBayerQuads == 1f &&
                    alignment.gridMin == MERGE_ALIGNMENT_GRID_MIN
            ) {
                "Spatial AlignAlt final output does not match MergeBayerRaw16's alignment grid"
            }
            "merge-grid"
        } else {
            "level-transitions-only"
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
                "median=false " +
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
        GlesGpuScheduler.yieldToUiRenderer()
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
        referenceProducts: ReferenceAlignmentProducts,
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
                referenceProducts.tileSize == tileSize &&
                referenceProducts.normalize == normalize
        ) {
            "Cached LK reference products do not match the requested pyramid level"
        }

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
            bindTexture(
                blockLucasKanadeProgram,
                "uProducts0",
                2,
                referenceProducts.products0,
            )
            bindTexture(
                blockLucasKanadeProgram,
                "uProducts1",
                3,
                referenceProducts.products1,
            )
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
        val strideInBayerQuads =
            alignment.tileStride.toFloat() * alignment.scaleToBayerQuads
        require(strideInBayerQuads.isFinite() && strideInBayerQuads > 0f) {
            "ConvertAlignment requires a positive finite Bayer-quad stride"
        }
        val output = createTexture(
            alignment.gridWidth,
            alignment.gridHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_LINEAR,
        )
        renderConvertedAlignment(alignment, output)

        // A flow texel belongs to the centre of logical tile (local + gridMin). Mapping the
        // normalized reference coordinate onto that sparse grid makes GL_LINEAR reproduce MGC's
        // downstream interpolation without materializing a dense, piecewise-constant flow image.
        val scaleX = rejectionWidth.toFloat() /
            (strideInBayerQuads * alignment.gridWidth.toFloat())
        val scaleY = rejectionHeight.toFloat() /
            (strideInBayerQuads * alignment.gridHeight.toFloat())
        val offsetX = -alignment.gridMin.toFloat() / alignment.gridWidth.toFloat()
        val offsetY = -alignment.gridMin.toFloat() / alignment.gridHeight.toFloat()
        check(scaleX.isFinite() && scaleY.isFinite() && offsetX.isFinite() && offsetY.isFinite()) {
            "ConvertAlignment produced a non-finite flow sampling transform"
        }
        return ConvertedAlignment(
            texture = output,
            scaleX = scaleX,
            scaleY = scaleY,
            offsetX = offsetX,
            offsetY = offsetY,
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
            alignment.gridWidth,
            alignment.gridHeight,
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
        GLES30.glUseProgram(unblockerProgram)
        bindTexture(unblockerProgram, "uRaw", 0, rawTexture)
        uniform2i(unblockerProgram, "uRawSize", width, height)
        uniform2i(unblockerProgram, "uGridSize", outputWidth, outputHeight)
        uniform1i(unblockerProgram, "uCfaPattern", cfaPattern)
        uniform1f(
            unblockerProgram,
            "uBlackLevelGreen",
            0.5f * (calibration.blackLevels[1] + calibration.blackLevels[2]),
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
        val flowVariationThresholds =
            MgcSabreRejectionTuning.flowVariationThresholds(guideWidth)
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

    private fun renderPixelDifferenceDownsample(
        input: Int,
        output: Int,
    ) {
        GLES30.glUseProgram(rejectionPixelDifferenceDownsampleProgram)
        bindTexture(rejectionPixelDifferenceDownsampleProgram, "uInput", 0, input)
        uniform2i(
            rejectionPixelDifferenceDownsampleProgram,
            "uInputSize",
            rejectionWidth,
            rejectionHeight,
        )
        draw(
            rejectionPixelDifferenceDownsampleProgram,
            mergeWeightWidth,
            mergeWeightHeight,
            intArrayOf(output),
        )
        GlesGpuScheduler.yieldToUiRenderer()
    }

    private fun renderRejectionFilterDownsample(
        baseLuma: Int,
        weight: Int,
        downsampledLuma: Int,
        downsampledRejection: Int,
    ) {
        GLES30.glUseProgram(rejectionFilterDownsampleProgram)
        bindTexture(rejectionFilterDownsampleProgram, "uBaseLuma", 0, baseLuma)
        bindTexture(rejectionFilterDownsampleProgram, "uWeight", 1, weight)
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
        // MGC's CPU wrapper closes this boundary before FilterRejectionMap:
        // DilateMask converts RAW/2 rejection to RAW/4 acceptance weight, while
        // Downsample2x brings pixel difference to that same merge domain.
        renderDilation(rawReverseWeight, initialWeight)
        renderPixelDifferenceDownsample(rawPixelDifference, pixelDifference)
        renderClippedGaussianPixelDifference(
            input = pixelDifference,
            horizontal = pixelDifferenceHorizontal,
            output = smoothedPixelDifference,
        )
        check(referenceGrayPyramid.size > 1) {
            "FilterRejectionMap requires the RAW/4 reference-luma pyramid level"
        }
        renderRejectionFilterDownsample(
            // The stored pyramid keeps one positive-edge support texel. The shader's
            // logical uInputSize clips it to MGC's floor-sized RAW/4 merge domain.
            baseLuma = referenceGrayPyramid[1].texture,
            weight = initialWeight,
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
        val rejectionNs = System.nanoTime() - rejectionStartNs
        PLog.i(
            TAG,
            "MGC Spatial temporal cpuSubmit frame=${frame.frameNumber} role=${frame.role} " +
                "guideCov=${guideNs / 1_000_000L}ms " +
                "pyramid=${pyramidNs / 1_000_000L}ms " +
                "align=${alignmentNs / 1_000_000L}ms " +
                "flow=${flowNs / 1_000_000L}ms " +
                "rejection=${rejectionNs / 1_000_000L}ms " +
                "total=${elapsedMs(totalStartNs)}ms",
        )
        return PreparedTemporalFrame(
            calibration = calibration,
            convertedAlignment = flow,
            bayerAlignmentTexture = alignment.texture,
            weightTexture = frameWeight,
        )
    }

    /**
     * GLES translation of FindBlockTiles' recovered three-stage contract:
     * GatherEdges (RGBA16) -> FilterIntermediate (R8) -> Output (R8).
     * The mask remains in the 16x16-RAW tile domain used by Bento's component-area gate.
     */
    private fun renderFindBlockTiles(
        baseRaw: Int,
        ultrashortRaw: Int,
        flow: ConvertedAlignment,
        baseCalibration: FrameCalibration,
        ultrashortCalibration: FrameCalibration,
    ): Int {
        val gatheredEdges = createTexture(
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(findBlockTilesGatherEdgesProgram)
        bindTexture(findBlockTilesGatherEdgesProgram, "uBaseRaw", 0, baseRaw)
        bindTexture(findBlockTilesGatherEdgesProgram, "uAltRaw", 1, ultrashortRaw)
        bindTexture(findBlockTilesGatherEdgesProgram, "uFlow", 2, flow.texture)
        uniformFlowScaleOffset(findBlockTilesGatherEdgesProgram, flow)
        uniform2i(findBlockTilesGatherEdgesProgram, "uRawSize", width, height)
        uniform2i(
            findBlockTilesGatherEdgesProgram,
            "uBayerSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniform2i(
            findBlockTilesGatherEdgesProgram,
            "uTileGridSize",
            bayerAlignmentWidth,
            bayerAlignmentHeight,
        )
        uniform1i(findBlockTilesGatherEdgesProgram, "uCfaPattern", cfaPattern)
        uniform4fv(
            findBlockTilesGatherEdgesProgram,
            "uBasePhaseGains",
            baseCalibration.bayerPhaseGains,
        )
        uniform4fv(
            findBlockTilesGatherEdgesProgram,
            "uBasePhaseBlackTerms",
            baseCalibration.bayerPhaseBlackTerms,
        )
        uniform4fv(
            findBlockTilesGatherEdgesProgram,
            "uAltPhaseGains",
            ultrashortCalibration.bayerPhaseGains,
        )
        uniform4fv(
            findBlockTilesGatherEdgesProgram,
            "uAltPhaseBlackTerms",
            ultrashortCalibration.bayerPhaseBlackTerms,
        )
        draw(
            findBlockTilesGatherEdgesProgram,
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            intArrayOf(gatheredEdges),
        )

        val filtered = createTexture(
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(findBlockTilesFilterIntermediateProgram)
        bindTexture(
            findBlockTilesFilterIntermediateProgram,
            "uGatheredEdges",
            0,
            gatheredEdges,
        )
        uniform2i(
            findBlockTilesFilterIntermediateProgram,
            "uSize",
            bayerAlignmentWidth,
            bayerAlignmentHeight,
        )
        draw(
            findBlockTilesFilterIntermediateProgram,
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            intArrayOf(filtered),
        )

        val output = createTexture(
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        GLES30.glUseProgram(findBlockTilesOutputProgram)
        bindTexture(findBlockTilesOutputProgram, "uFiltered", 0, filtered)
        uniform2i(
            findBlockTilesOutputProgram,
            "uSize",
            bayerAlignmentWidth,
            bayerAlignmentHeight,
        )
        draw(
            findBlockTilesOutputProgram,
            bayerAlignmentWidth,
            bayerAlignmentHeight,
            intArrayOf(output),
        )
        return output
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

    private fun renderAlignedLongFrameClippingMask(
        rawTexture: Int,
        flow: ConvertedAlignment,
        calibration: FrameCalibration,
    ): Int {
        check(alignedRawClippingMaskProgram != 0) {
            "Aligned RAW clipping-mask program is not initialized"
        }
        val output = createTexture(
            mergeWeightWidth,
            mergeWeightHeight,
            GLES30.GL_R8,
            GLES30.GL_NEAREST,
        )
        val phaseClippingLevels = FloatArray(4) { phase ->
            val blackLevel = calibration.blackLevels[canonicalChannelAtPhase(phase)]
            blackLevel +
                (sensorWhiteLevel - blackLevel) * LONG_FRAME_RAW_CLIPPING_THRESHOLD
        }
        GLES30.glUseProgram(alignedRawClippingMaskProgram)
        bindTexture(alignedRawClippingMaskProgram, "uRaw", 0, rawTexture)
        bindTexture(alignedRawClippingMaskProgram, "uFlow", 1, flow.texture)
        uniformFlowScaleOffset(alignedRawClippingMaskProgram, flow)
        uniform2i(alignedRawClippingMaskProgram, "uRawSize", width, height)
        uniform2i(
            alignedRawClippingMaskProgram,
            "uBayerSize",
            rejectionWidth,
            rejectionHeight,
        )
        uniform2i(
            alignedRawClippingMaskProgram,
            "uOutputSize",
            mergeWeightWidth,
            mergeWeightHeight,
        )
        uniform4fv(
            alignedRawClippingMaskProgram,
            "uPhaseClippingLevels",
            phaseClippingLevels,
        )
        draw(
            alignedRawClippingMaskProgram,
            mergeWeightWidth,
            mergeWeightHeight,
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
        ultrashortClippingMask: Int,
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
        weightTexture: Int,
        identityWeight: Boolean,
    ) {
        require(frameIndex in 0 until capture.frameCount)
        require(!capture.captured[frameIndex])
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
        bindTexture(strengthRejectionProgram, "uWeight", 0, weightTexture)
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
            "uIdentityWeight",
            if (identityWeight) 1 else 0,
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
        var usedIdentity = false
        for (channel in 0 until 3) {
            val destination = channel * capture.frameCount + frameIndex
            capture.inputReadNoise[destination] = noise.read[channel]
            capture.inputShotNoise[destination] = noise.shot[channel]
            usedIdentity = usedIdentity ||
                noise.read[channel] != calibration.cameraRgbReadNoise.getOrElse(channel) { Float.NaN } ||
                noise.shot[channel] != calibration.cameraRgbShotNoise.getOrElse(channel) { Float.NaN }
        }
        capture.frameWeights[frameIndex] = calibration.globalFrameWeight
            .takeIf { it.isFinite() && it > 0f }
            ?: SPATIAL_IDENTITY_MULTIPLIER.also { usedIdentity = true }
        capture.kernelSigmas[frameIndex] = calibration.kernelSigma
            .takeIf { it.isFinite() && it > 0f }
            ?: SPATIAL_IDENTITY_MULTIPLIER.also { usedIdentity = true }
        capture.captured[frameIndex] = true
        if (usedIdentity) {
            PLog.w(
                TAG,
                "MGC Spatial strength frame=$frameIndex contained invalid parameters; " +
                    "using identity inputs read=${noise.read.contentToString()} " +
                    "shot=${noise.shot.contentToString()} " +
                    "frameWeight=${capture.frameWeights[frameIndex]} " +
                    "kernelSigma=${capture.kernelSigmas[frameIndex]}",
            )
        }
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

        val fallbackChannel = intArrayOf(1, 0, 2).firstOrNull(::validPair)
        val fallbackRead = fallbackChannel?.let(calibration.cameraRgbReadNoise::get)
            ?: SPATIAL_IDENTITY_READ_NOISE
        val fallbackShot = fallbackChannel?.let(calibration.cameraRgbShotNoise::get)
            ?: SPATIAL_IDENTITY_SHOT_NOISE
        return SpatialNoiseParameters(
            read = FloatArray(3) { channel ->
                if (validPair(channel)) calibration.cameraRgbReadNoise[channel] else fallbackRead
            },
            shot = FloatArray(3) { channel ->
                if (validPair(channel)) calibration.cameraRgbShotNoise[channel] else fallbackShot
            },
        )
    }

    private fun createIdentitySpatialNoiseModel(
        referenceCalibration: FrameCalibration,
        reason: String,
    ): MgcSpatialStrengthMapGenerator.Result {
        val geometry = mgcSpatialDiagnosticGeometry(
            outputMode = outputMode,
            imageWidth = width,
            imageHeight = height,
        )
        val noise = spatialNoiseParameters(referenceCalibration)
        PLog.w(
            TAG,
            "MGC Spatial denoise model fallback=identity reason=$reason " +
                "strengthQ8=$SPATIAL_IDENTITY_STRENGTH_Q8 " +
                "read=${noise.read.contentToString()} shot=${noise.shot.contentToString()}",
        )
        return MgcSpatialStrengthMapGenerator.Result(
            strengthMap = MgcSpatialStrengthMap(
                width = geometry.rejectionWidth,
                height = geometry.rejectionHeight,
                q8 = ShortArray(geometry.rejectionWidth * geometry.rejectionHeight) {
                    SPATIAL_IDENTITY_STRENGTH_Q8.toShort()
                },
            ),
            outputReadNoise = noise.read,
            outputShotNoise = noise.shot,
            outputWeightsSumTotalDiag0 = FloatArray(3) { SPATIAL_IDENTITY_MULTIPLIER },
            outputWeightsSumTotalDiag1 = FloatArray(3),
        )
    }

    private fun queueStrengthReadback(
        capture: StrengthCapture,
        accumulator: Int = 0,
        preparedAlignment: PreparedTextureReadback? = null,
        preparedRejection: PreparedTextureReadback? = null,
        preparedFusedFixed16: PreparedTextureReadback? = null,
    ): QueuedStrengthReadback {
        check(capture.captured.all { it }) {
            "MGC Spatial noise capture incomplete: ${capture.captured.contentToString()}"
        }
        val allocationStartNs = System.nanoTime()
        val alignment: PreparedTextureReadback
        val rejection: PreparedTextureReadback
        if (capture.outputMode == MgcSpatialOutputMode.RGB) {
            alignment = checkNotNull(preparedAlignment) {
                "MGC Spatial RGB alignment diagnostics were not prepared"
            }
            rejection = checkNotNull(preparedRejection) {
                "MGC Spatial RGB rejection diagnostics were not prepared"
            }
        } else {
            check(preparedAlignment == null && preparedRejection == null)
            alignment = queuePreparedTextureReadback(
                texture = capture.alignmentAtlas,
                textureWidth = capture.alignmentLayout.atlasWidth,
                textureHeight = capture.alignmentLayout.atlasHeight,
                encoding = StrengthReadbackEncoding.FLOAT32,
                byteCount = strengthAlignmentReadbackByteCount(capture),
                label = "MGC Spatial strength alignment atlas",
                atlasLayout = capture.alignmentLayout,
            )
            rejection = queuePreparedTextureReadback(
                texture = capture.rejectionAtlas,
                textureWidth = capture.rejectionLayout.atlasWidth,
                textureHeight = capture.rejectionLayout.atlasHeight,
                encoding = StrengthReadbackEncoding.UNORM8,
                byteCount = strengthRejectionReadbackByteCount(capture),
                label = "MGC Spatial strength rejection atlas",
                atlasLayout = capture.rejectionLayout,
            )
        }
        val fusedFixed16: PreparedTextureReadback
        val fusedFixed16PrepareSubmitMs: Long
        if (capture.outputMode == MgcSpatialOutputMode.BAYER) {
            check(accumulator != 0 && preparedFusedFixed16 == null)
            val fusedFixed16Readback = allocatePixelPackBuffer(
                strengthFixed16ReadbackByteCount(capture),
                "MGC Spatial Bayer Fixed16 noise source",
            )
            val quadWidth = ceilDiv(capture.geometry.imageWidth, 16) * 8
            val quadHeight = ceilDiv(capture.geometry.imageHeight, 16) * 8
            val fusedFixed16StartNs = System.nanoTime()
            val fusedFixed16Texture = renderBayerFixed16Planes(accumulator)
            fusedFixed16PrepareSubmitMs =
                (System.nanoTime() - fusedFixed16StartNs) / 1_000_000L
            val queued = queueTextureReadback(
                texture = fusedFixed16Texture,
                textureWidth = quadWidth,
                textureHeight = quadHeight * 4,
                encoding = StrengthReadbackEncoding.SINT16,
                storage = fusedFixed16Readback,
                label = "MGC Spatial Bayer Fixed16 noise source",
            )
            fusedFixed16 = PreparedTextureReadback(
                byteCount = queued.storage.byteCount,
                queuedGpuReadback = queued,
                cpuBuffer = null,
                mode = queued.mode,
                targetBindMs = queued.targetBindMs,
                readSubmitMs = queued.readSubmitMs,
                totalSubmitMs = queued.totalSubmitMs,
            )
        } else {
            check(accumulator == 0)
            fusedFixed16 = checkNotNull(preparedFusedFixed16) {
                "MGC Spatial RGB Fixed16 diagnostic signal was not prepared"
            }
            check(
                fusedFixed16.byteCount == strengthFixed16ReadbackByteCount(capture)
            ) {
                "MGC Spatial RGB Fixed16 readback size=${fusedFixed16.byteCount}, " +
                    "expected=${strengthFixed16ReadbackByteCount(capture)}"
            }
            fusedFixed16PrepareSubmitMs = fusedFixed16.totalSubmitMs
        }
        PLog.i(
            TAG,
            "MGC Spatial strength PBOs prepared mode=${capture.outputMode.name} " +
                "image=${capture.geometry.imageWidth}x${capture.geometry.imageHeight} bytes=" +
                "${alignment.byteCount.toLong() + rejection.byteCount +
                    fusedFixed16.byteCount} " +
                "took=${(System.nanoTime() - allocationStartNs) / 1_000_000L}ms",
        )
        return QueuedStrengthReadback(
            alignment = alignment,
            rejection = rejection,
            fusedFixed16 = fusedFixed16,
            fusedFixed16PrepareSubmitMs = fusedFixed16PrepareSubmitMs,
        )
    }

    private fun strengthAlignmentReadbackByteCount(capture: StrengthCapture): Int =
        (
            capture.alignmentWidth.toLong() * capture.alignmentHeight *
                capture.frameCount * 2L * Float.SIZE_BYTES
            ).also { bytes -> require(bytes in 1..Int.MAX_VALUE.toLong()) }
            .toInt()

    private fun strengthRejectionReadbackByteCount(capture: StrengthCapture): Int =
        (
            capture.rejectionWidth.toLong() * capture.rejectionHeight * capture.frameCount
            ).also { bytes -> require(bytes in 1..Int.MAX_VALUE.toLong()) }
            .toInt()

    private fun strengthFixed16ReadbackByteCount(capture: StrengthCapture): Int =
        (capture.geometry.fixed16SampleCount * Short.SIZE_BYTES)
            .also { bytes -> require(bytes in 1..Int.MAX_VALUE.toLong()) }
            .toInt()

    private fun allocatePixelPackBuffer(
        byteCount: Int,
        label: String,
    ): PixelPackBuffer {
        require(byteCount > 0)
        val ids = IntArray(1)
        GLES30.glGenBuffers(1, ids, 0)
        val buffer = ids[0]
        check(buffer != 0) { "$label glGenBuffers returned 0" }
        buffers += buffer
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
        val allocationByteCount = ((byteCount.toLong() + 3L) and -4L)
            .also { bytes -> require(bytes <= Int.MAX_VALUE) }
            .toInt()
        GLES30.glBufferData(
            GLES30.GL_PIXEL_PACK_BUFFER,
            allocationByteCount,
            null,
            GLES30.GL_STREAM_READ,
        )
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        checkGlError("allocate $label PBO")
        return PixelPackBuffer(buffer, byteCount)
    }

    private fun releasePixelPackBuffer(storage: PixelPackBuffer, label: String) {
        if (!buffers.remove(storage.buffer)) return
        GLES30.glDeleteBuffers(1, intArrayOf(storage.buffer), 0)
        checkGlError("release $label")
    }

    private fun queueTextureReadback(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        encoding: StrengthReadbackEncoding,
        storage: PixelPackBuffer,
        label: String,
        atlasLayout: MgcSpatialStrengthAtlasLayout? = null,
    ): QueuedTextureReadback {
        atlasLayout?.let { layout ->
            require(layout.atlasWidth == textureWidth && layout.atlasHeight == textureHeight)
        }
        val bytesPerValue = when (encoding) {
            StrengthReadbackEncoding.FLOAT32 -> Float.SIZE_BYTES
            StrengthReadbackEncoding.UNORM8 -> Byte.SIZE_BYTES
            StrengthReadbackEncoding.SINT16 -> Short.SIZE_BYTES
        }
        val logicalValueCount = atlasLayout?.logicalValueCount
            ?: textureWidth.toLong() * textureHeight
        require(logicalValueCount * bytesPerValue == storage.byteCount.toLong()) {
            "$label logical readback size does not match storage: " +
                "values=$logicalValueCount bytesPerValue=$bytesPerValue " +
                "storage=${storage.byteCount}"
        }
        val packProgram = when (encoding) {
            StrengthReadbackEncoding.FLOAT32 -> strengthFloatPackProgram
            StrengthReadbackEncoding.UNORM8 -> strengthUnorm8PackProgram
            StrengthReadbackEncoding.SINT16 -> strengthSint16PackProgram
        }
        val invocationCount = when (encoding) {
            StrengthReadbackEncoding.FLOAT32 -> logicalValueCount
            StrengthReadbackEncoding.UNORM8 -> (logicalValueCount + 3L) / 4L
            StrengthReadbackEncoding.SINT16 -> (logicalValueCount + 1L) / 2L
        }
        val requiredGroupCount =
            (invocationCount + GlesComputeWorkGroup.LINEAR_SIZE - 1L) /
                GlesComputeWorkGroup.LINEAR_SIZE
        val packedStorageBytes = (storage.byteCount.toLong() + 3L) and -4L
        val hasComputeDispatchCapacity =
            requiredGroupCount <= maxComputePackGroupsX.toLong() * maxComputePackGroupsY
        if (packProgram != 0 &&
            packedStorageBytes <= maxShaderStorageBlockBytes &&
            hasComputeDispatchCapacity
        ) {
            val dispatch = createMgcSpatialStrengthPackDispatch(
                invocationCount = invocationCount,
                localSize = GlesComputeWorkGroup.LINEAR_SIZE,
                maximumGroupsX = maxComputePackGroupsX,
                maximumGroupsY = maxComputePackGroupsY,
            )
            return queueTextureSsboPack(
                texture = texture,
                textureWidth = textureWidth,
                textureHeight = textureHeight,
                encoding = encoding,
                storage = storage,
                program = packProgram,
                label = label,
                atlasLayout = atlasLayout,
                invocationCount = invocationCount,
                dispatch = dispatch,
            )
        }
        if (packProgram != 0 && packedStorageBytes > maxShaderStorageBlockBytes) {
            PLog.w(
                TAG,
                "MGC Spatial strength SSBO pack exceeds device block limit; " +
                    "label=$label bytes=$packedStorageBytes " +
                    "max=$maxShaderStorageBlockBytes, using framebuffer readback",
            )
        }
        if (packProgram != 0 && !hasComputeDispatchCapacity) {
            PLog.w(
                TAG,
                "MGC Spatial strength SSBO pack exceeds device dispatch grid; " +
                    "label=$label groups=$requiredGroupCount " +
                    "max=${maxComputePackGroupsX}x$maxComputePackGroupsY, " +
                    "using framebuffer readback",
            )
        }
        val totalStartNs = System.nanoTime()
        val targetBindStartNs = System.nanoTime()
        bindRenderTargets(intArrayOf(texture), label)
        val targetBindMs = (System.nanoTime() - targetBindStartNs) / 1_000_000L
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, storage.buffer)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
        val readSubmitStartNs = System.nanoTime()
        val readFormat = when (encoding) {
            StrengthReadbackEncoding.FLOAT32,
            StrengthReadbackEncoding.UNORM8 -> GLES30.GL_RED
            StrengthReadbackEncoding.SINT16 -> GLES30.GL_RED_INTEGER
        }
        val readType = when (encoding) {
            StrengthReadbackEncoding.FLOAT32 -> GLES30.GL_FLOAT
            StrengthReadbackEncoding.UNORM8 -> GLES30.GL_UNSIGNED_BYTE
            StrengthReadbackEncoding.SINT16 -> GLES30.GL_SHORT
        }
        if (atlasLayout == null || atlasLayout.columns == 1) {
            GLES30.glReadPixels(
                0,
                0,
                textureWidth,
                textureHeight,
                readFormat,
                readType,
                0,
            )
        } else {
            for (plane in 0 until atlasLayout.planeCount) {
                val byteOffset = (atlasLayout.planeValueCount * plane * bytesPerValue)
                    .also { offset -> require(offset <= Int.MAX_VALUE) }
                    .toInt()
                GLES30.glReadPixels(
                    atlasLayout.originX(plane),
                    atlasLayout.originY(plane),
                    atlasLayout.planeWidth,
                    atlasLayout.planeHeight,
                    readFormat,
                    readType,
                    byteOffset,
                )
            }
        }
        val readSubmitMs = (System.nanoTime() - readSubmitStartNs) / 1_000_000L
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("queue $label")
        return QueuedTextureReadback(
            storage = storage,
            mode = if (atlasLayout == null || atlasLayout.columns == 1) {
                "framebuffer-readpixels"
            } else {
                "framebuffer-readpixels-atlas"
            },
            targetBindMs = targetBindMs,
            readSubmitMs = readSubmitMs,
            totalSubmitMs = (System.nanoTime() - totalStartNs) / 1_000_000L,
        ).also { queued ->
            PLog.i(
                TAG,
                "MGC Spatial strength PBO submit label=$label " +
                    "mode=${queued.mode} bytes=${storage.byteCount} " +
                    "setup=${queued.targetBindMs}ms submit=${queued.readSubmitMs}ms " +
                    "total=${queued.totalSubmitMs}ms",
            )
        }
    }

    private fun queuePreparedTextureReadback(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        encoding: StrengthReadbackEncoding,
        byteCount: Int,
        label: String,
        atlasLayout: MgcSpatialStrengthAtlasLayout? = null,
    ): PreparedTextureReadback {
        val storage = allocatePixelPackBuffer(byteCount, label)
        val queued = queueTextureReadback(
            texture = texture,
            textureWidth = textureWidth,
            textureHeight = textureHeight,
            encoding = encoding,
            storage = storage,
            label = label,
            atlasLayout = atlasLayout,
        )
        return PreparedTextureReadback(
            byteCount = queued.storage.byteCount,
            queuedGpuReadback = queued,
            cpuBuffer = null,
            mode = queued.mode,
            targetBindMs = queued.targetBindMs,
            readSubmitMs = queued.readSubmitMs,
            totalSubmitMs = queued.totalSubmitMs,
        )
    }

    private fun queueTextureSsboPack(
        texture: Int,
        textureWidth: Int,
        textureHeight: Int,
        encoding: StrengthReadbackEncoding,
        storage: PixelPackBuffer,
        program: Int,
        label: String,
        atlasLayout: MgcSpatialStrengthAtlasLayout?,
        invocationCount: Long,
        dispatch: MgcSpatialStrengthPackDispatch,
    ): QueuedTextureReadback {
        val totalStartNs = System.nanoTime()
        val setupStartNs = System.nanoTime()
        GLES31.glUseProgram(program)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uSource"), 0)
        val planeWidth = atlasLayout?.planeWidth ?: textureWidth
        val planeHeight = atlasLayout?.planeHeight ?: textureHeight
        val planeCount = atlasLayout?.planeCount ?: 1
        val atlasColumns = atlasLayout?.columns ?: 1
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(program, "uPlaneSize"),
            planeWidth,
            planeHeight,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uPlaneCount"),
            planeCount,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uAtlasColumns"),
            atlasColumns,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, storage.buffer)
        val setupMs = (System.nanoTime() - setupStartNs) / 1_000_000L
        val valueCount = planeWidth.toLong() * planeHeight * planeCount
        val expectedInvocationCount = when (encoding) {
            StrengthReadbackEncoding.FLOAT32 -> valueCount
            StrengthReadbackEncoding.UNORM8 -> (valueCount + 3L) / 4L
            StrengthReadbackEncoding.SINT16 -> (valueCount + 1L) / 2L
        }
        check(invocationCount == expectedInvocationCount)
        require(invocationCount in 1..Int.MAX_VALUE.toLong()) {
            "$label pack invocation count is invalid: $invocationCount"
        }
        val submitStartNs = System.nanoTime()
        GLES31.glDispatchCompute(
            dispatch.groupsX,
            dispatch.groupsY,
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
        )
        val submitMs = (System.nanoTime() - submitStartNs) / 1_000_000L
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glUseProgram(0)
        checkGlError("queue $label SSBO pack")
        return QueuedTextureReadback(
            storage = storage,
            mode = "compute-ssbo-pack-${dispatch.groupsX}x${dispatch.groupsY}",
            targetBindMs = setupMs,
            readSubmitMs = submitMs,
            totalSubmitMs = (System.nanoTime() - totalStartNs) / 1_000_000L,
        ).also { queued ->
            PLog.i(
                TAG,
                "MGC Spatial strength PBO submit label=$label mode=${queued.mode} " +
                    "bytes=${storage.byteCount} setup=${queued.targetBindMs}ms " +
                    "submit=${queued.readSubmitMs}ms total=${queued.totalSubmitMs}ms",
            )
        }
    }

    private fun mapPixelPackBuffer(
        buffer: Int,
        byteCount: Int,
        label: String,
    ): ByteBuffer {
        val startNs = System.nanoTime()
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
        val mapped = GLES30.glMapBufferRange(
            GLES30.GL_PIXEL_PACK_BUFFER,
            0,
            byteCount,
            GLES30.GL_MAP_READ_BIT,
        ) as? ByteBuffer ?: error("Unable to map $label")
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        PLog.i(
            TAG,
            "MGC Spatial strength PBO mapped label=$label bytes=$byteCount " +
                "wait=${(System.nanoTime() - startNs) / 1_000_000L}ms",
        )
        return mapped.order(ByteOrder.nativeOrder()).apply {
            position(0)
            limit(byteCount)
        }
    }

    private fun unmapPixelPackBuffer(buffer: Int) {
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
        check(GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)) {
            "MGC Spatial readback buffer contents became invalid"
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
    }

    private fun materializePreparedReadbackToHost(
        prepared: PreparedTextureReadback,
        label: String,
    ): PreparedTextureReadback {
        val queued = checkNotNull(prepared.queuedGpuReadback) {
            "$label is already host-resident"
        }
        check(prepared.cpuBuffer == null)
        val host = LargeDirectBuffer.allocate(prepared.byteCount.toLong(), label)
            ?.order(ByteOrder.nativeOrder()) ?: run {
                releasePixelPackBuffer(queued.storage, label)
                error("Unable to allocate $label")
            }
        var mapped: ByteBuffer? = null
        val materializeStartNs = System.nanoTime()
        try {
            try {
                mapped = mapPixelPackBuffer(
                    queued.storage.buffer,
                    prepared.byteCount,
                    label,
                )
                host.clear()
                host.put(checkNotNull(mapped).duplicate())
                host.rewind()
            } finally {
                try {
                    if (mapped != null) {
                        unmapPixelPackBuffer(queued.storage.buffer)
                    }
                } finally {
                    releasePixelPackBuffer(queued.storage, label)
                }
            }
        } catch (throwable: Throwable) {
            LargeDirectBuffer.free(host)
            throw throwable
        }
        val materializeMs = (System.nanoTime() - materializeStartNs) / 1_000_000L
        return PreparedTextureReadback(
            byteCount = prepared.byteCount,
            queuedGpuReadback = null,
            cpuBuffer = host,
            mode = "${prepared.mode}-host",
            targetBindMs = prepared.targetBindMs,
            readSubmitMs = prepared.readSubmitMs,
            totalSubmitMs = prepared.totalSubmitMs + materializeMs,
        ).also {
            PLog.i(
                TAG,
                "MGC Spatial diagnostic host materialized label=$label " +
                    "bytes=${prepared.byteCount} took=${materializeMs}ms",
            )
        }
    }

    private fun resolveSpatialNoiseModel(
        capture: StrengthCapture,
        queued: QueuedStrengthReadback,
    ): MgcSpatialStrengthMapGenerator.Result? {
        val totalStartNs = System.nanoTime()
        var diagnosticsMs = 0L
        var aotMs = 0L
        var alignment: ByteBuffer? = null
        var rejection: ByteBuffer? = null
        var fusedFixed16: ByteBuffer? = null
        var alignmentGpuMapped = false
        var rejectionGpuMapped = false
        var fusedFixed16GpuMapped = false
        return try {
            alignment = queued.alignment.queuedGpuReadback?.let { gpuReadback ->
                mapPixelPackBuffer(
                    gpuReadback.storage.buffer,
                    gpuReadback.storage.byteCount,
                    "MGC Spatial strength alignment atlas",
                ).also { alignmentGpuMapped = true }
            } ?: checkNotNull(queued.alignment.cpuBuffer).duplicate()
                .order(ByteOrder.nativeOrder())
                .apply {
                    position(0)
                    limit(queued.alignment.byteCount)
                }
            rejection = queued.rejection.queuedGpuReadback?.let { gpuReadback ->
                mapPixelPackBuffer(
                    gpuReadback.storage.buffer,
                    gpuReadback.storage.byteCount,
                    "MGC Spatial strength rejection atlas",
                ).also { rejectionGpuMapped = true }
            } ?: checkNotNull(queued.rejection.cpuBuffer).duplicate()
                .order(ByteOrder.nativeOrder())
                .apply {
                    position(0)
                    limit(queued.rejection.byteCount)
                }
            fusedFixed16 = queued.fusedFixed16.queuedGpuReadback?.let { gpuReadback ->
                mapPixelPackBuffer(
                    gpuReadback.storage.buffer,
                    gpuReadback.storage.byteCount,
                    "MGC Spatial ${capture.outputMode.name} Fixed16 noise source",
                ).also { fusedFixed16GpuMapped = true }
            } ?: checkNotNull(queued.fusedFixed16.cpuBuffer).duplicate()
                .order(ByteOrder.nativeOrder())
                .apply {
                    position(0)
                    limit(queued.fusedFixed16.byteCount)
                }
            val mappedAlignment = checkNotNull(alignment)
            val mappedRejection = checkNotNull(rejection)
            val mappedFusedFixed16 = checkNotNull(fusedFixed16)
            if (RawStackRuntimeDebug.mgcSpatialInputDiagnosticsEnabled) {
                val diagnosticsStartNs = System.nanoTime()
                logSpatialNoiseInputs(capture, mappedAlignment, mappedRejection)
                diagnosticsMs = (System.nanoTime() - diagnosticsStartNs) / 1_000_000L
            }
            val aotStartNs = System.nanoTime()
            MgcSpatialStrengthMapGenerator.compute(
                outputMode = capture.outputMode,
                fusedFixed16 = mappedFusedFixed16,
                width = capture.geometry.imageWidth,
                height = capture.geometry.imageHeight,
                cfaPattern = cfaPattern,
                alignment = mappedAlignment,
                alignmentWidth = capture.alignmentWidth,
                alignmentHeight = capture.alignmentHeight,
                rejection = mappedRejection,
                rejectionWidth = capture.rejectionWidth,
                rejectionHeight = capture.rejectionHeight,
                frameCount = capture.frameCount,
                inputReadNoise = capture.inputReadNoise,
                inputShotNoise = capture.inputShotNoise,
                frameWeights = capture.frameWeights,
                kernelSigmas = capture.kernelSigmas,
            ).also {
                aotMs = (System.nanoTime() - aotStartNs) / 1_000_000L
            }
        } finally {
            val unmapStartNs = System.nanoTime()
            if (fusedFixed16GpuMapped) {
                unmapPixelPackBuffer(
                    checkNotNull(queued.fusedFixed16.queuedGpuReadback).storage.buffer,
                )
            }
            if (rejectionGpuMapped) {
                unmapPixelPackBuffer(
                    checkNotNull(queued.rejection.queuedGpuReadback).storage.buffer,
                )
            }
            if (alignmentGpuMapped) {
                unmapPixelPackBuffer(
                    checkNotNull(queued.alignment.queuedGpuReadback).storage.buffer,
                )
            }
            PLog.i(
                TAG,
                "MGC Spatial strength resolve mode=${capture.outputMode.name} " +
                    "diagnostics=${diagnosticsMs}ms " +
                    "aot=${aotMs}ms " +
                    "unmap=${(System.nanoTime() - unmapStartNs) / 1_000_000L}ms " +
                    "total=${(System.nanoTime() - totalStartNs) / 1_000_000L}ms",
            )
        }
    }

    private fun logSpatialNoiseInputs(
        capture: StrengthCapture,
        alignmentStorage: ByteBuffer,
        rejectionStorage: ByteBuffer,
    ) {
        val alignmentPlane = capture.alignmentWidth * capture.alignmentHeight
        val alignment = alignmentStorage.duplicate()
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

        val rejectionPlane = capture.rejectionWidth * capture.rejectionHeight
        val rejection = rejectionStorage.duplicate()
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
            "MGC Spatial noise inputs mode=${capture.outputMode.name} " +
                "image=${capture.geometry.imageWidth}x${capture.geometry.imageHeight} " +
                "frames=${capture.frameCount} " +
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

    private fun countActiveMaskPixels(mask: ByteArray): Int =
        mask.count { (it.toInt() and 0xff) != 0 }

    private fun elapsedMs(startNs: Long): Long =
        (System.nanoTime() - startNs) / 1_000_000L

    private fun assessBentoMasks(
        baseHighlightMask: ByteArray,
        inpaintingMask: ByteArray,
        ultrashortClippingMask: ByteArray,
        tilingMask: ByteArray,
    ): BentoAssessment {
        val guideMaskSize = guideWidth * guideHeight
        require(
            baseHighlightMask.size == guideMaskSize &&
                inpaintingMask.size == guideMaskSize &&
                ultrashortClippingMask.size == guideMaskSize,
        )
        require(tilingMask.size == bayerAlignmentWidth * bayerAlignmentHeight)
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
        val ultrashortOverlap = if (clippedPixels > 0) {
            clippedByUltrashortPixels.toFloat() / clippedPixels.toFloat()
        } else {
            0f
        }
        val largestInpaintingArea = BentoFallbackTopology.largestEightConnectedComponentArea(
            inpaintingMask,
            guideWidth,
            guideHeight,
        )
        val largestTilingArea = BentoFallbackTopology.largestEightConnectedComponentArea(
            tilingMask,
            bayerAlignmentWidth,
            bayerAlignmentHeight,
        )
        val reason = when {
            clippedRatio <= BENTO_MIN_CLIPPED_PIXEL_RATIO ->
                "insufficient_clipped_pixels"
            largestInpaintingArea >= BENTO_MAX_INPAINTING_COMPONENT_AREA ->
                "large_hole_needing_inpainting"
            ultrashortOverlap > BENTO_MAX_ULTRASHORT_CLIPPING_OVERLAP ->
                "high_ultrashort_clipping_overlap"
            largestTilingArea > BENTO_MAX_TILING_COMPONENT_AREA ->
                "tiling_artifacts"
            else -> "none"
        }
        return BentoAssessment(
            accepted = reason == "none",
            reason = reason,
            clippedPixelRatio = clippedRatio,
            largestInpaintingArea = largestInpaintingArea,
            largestTilingArea = largestTilingArea,
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

    private fun rgbFullTextureBytes(): Long =
        outputWidth.toLong() * outputHeight * RGBA16_BYTES_PER_PIXEL

    private fun rgbIirWorkingSetBytes(): Long =
        MgcSpatialRgbMemoryPolicy.iirWorkingSetBytes(outputWidth, outputHeight)

    /**
     * Creates the one-upload-per-frame path. Memory estimates are advisory telemetry only: the
     * driver is the authority on whether the allocation can run, so an estimate never rejects it.
     * The estimates are phase-aware because fusion resources are explicitly retired before IIR.
     */
    private fun createOnlineRgbAccumulator(
        reusableRawTexture: Int,
        diagnosticCapture: StrengthCapture?,
    ): OnlineRgbAccumulator {
        check(outputMode == MgcSpatialOutputMode.RGB)
        val rawBytes = width.toLong() * height * RAW_BYTES_PER_PIXEL
        val accumulatorBytes = outputWidth.toLong() * outputHeight * 16L
        val chromaGuideBytes = width.toLong() * height * 2L
        val diagnosticTextureBytes = diagnosticCapture?.let { capture ->
            capture.geometry.fixed16Width.toLong() * capture.geometry.fixed16Height * 2L
        } ?: 0L
        val diagnosticPboBytes = diagnosticCapture?.let { capture ->
            strengthFixed16ReadbackByteCount(capture).toLong()
        } ?: 0L
        // Sequential temporal scratch is allocated lazily by the first non-reference frame.
        // Include two RAW-sized scratch surfaces so telemetry reflects the later capture peak.
        val temporalScratchReserveBytes = maxOf(
            RGB_TEXTURE_ESTIMATE_RESERVE_BYTES,
            rawBytes * 2L,
        )
        val temporalProjectedBytes = estimatedOwnedTextureBytes() + rawBytes +
            accumulatorBytes + chromaGuideBytes + temporalScratchReserveBytes
        val diagnosticProjectedBytes = accumulatorBytes +
            diagnosticTextureBytes + diagnosticPboBytes + RGB_TEXTURE_ESTIMATE_RESERVE_BYTES
        val assemblyProjectedBytes = accumulatorBytes + rgbFullTextureBytes() +
            RGB_TEXTURE_ESTIMATE_RESERVE_BYTES
        val iirProjectedBytes = rgbIirWorkingSetBytes() + RGB_TEXTURE_ESTIMATE_RESERVE_BYTES
        val exportProjectedBytes = rgbFullTextureBytes() *
            if (exportGpuLinearRgbSource &&
                gpuLinearRgbStorage == GpuLinearRgbStorage.RGBA16F
            ) {
                2L
            } else {
                1L
            } + RGB_TEXTURE_ESTIMATE_RESERVE_BYTES
        val projectedGpuBytes = maxOf(
            temporalProjectedBytes,
            diagnosticProjectedBytes,
            assemblyProjectedBytes,
            iirProjectedBytes,
            exportProjectedBytes,
        )

        val secondRawTexture = createTexture(
            width,
            height,
            GLES30.GL_R16UI,
            GLES30.GL_NEAREST,
        )
        val chromaGuideTexture = createTexture(
            width,
            height,
            GLES30.GL_R16F,
            GLES30.GL_NEAREST,
        )
        val semanticAccumulator = createTexture(
            outputWidth,
            outputHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        val opponentWeightAccumulator = createTexture(
            outputWidth,
            outputHeight,
            GLES30.GL_RGBA16F,
            GLES30.GL_NEAREST,
        )
        clearRgbAccumulators(
            semanticAccumulator = semanticAccumulator,
            opponentWeightAccumulator = opponentWeightAccumulator,
            tileWidth = outputWidth,
            tileHeight = outputHeight,
        )
        val actualTemporalBytes = estimatedOwnedTextureBytes()
        val drawBands = MgcSpatialRgbTilePlanner.planHorizontalBands(
            outputWidth = outputWidth,
            outputHeight = outputHeight,
            maximumBandHeight = RGB_ONLINE_DRAW_BAND_HEIGHT,
        )
        PLog.i(
            TAG,
            "MGC Spatial RGB online accumulator selected bands=${drawBands.size} " +
                "drawBandHeight=$RGB_ONLINE_DRAW_BAND_HEIGHT rawSlots=2 " +
                "textureBytes=$actualTemporalBytes " +
                "temporalProjectedBytes=$temporalProjectedBytes " +
                "diagnosticProjectedBytes=$diagnosticProjectedBytes " +
                "assemblyProjectedBytes=$assemblyProjectedBytes " +
                "iirProjectedBytes=$iirProjectedBytes " +
                "exportProjectedBytes=$exportProjectedBytes " +
                "advisoryBytes=$RGB_TEXTURE_ADVISORY_BYTES " +
                "estimateExceedsAdvisory=${projectedGpuBytes > RGB_TEXTURE_ADVISORY_BYTES}",
        )
        return OnlineRgbAccumulator(
            semanticAccumulator = semanticAccumulator,
            opponentWeightAccumulator = opponentWeightAccumulator,
            chromaGuideTexture = chromaGuideTexture,
            drawBands = drawBands,
            rawSlots = intArrayOf(reusableRawTexture, secondRawTexture),
            passWindow = GlesGpuScheduler.PassWindow(
                tag = TAG,
                maxInFlight = RGB_MAX_IN_FLIGHT_PASSES,
            ),
            projectedGpuBytes = projectedGpuBytes,
            // Slot zero may still contain the evaluated Bento frame. Start with the new slot.
            nextRawSlot = 1,
        )
    }

    private fun contributeOnlineRgbFrame(
        accumulator: OnlineRgbAccumulator,
        frame: RgbMergeFrame,
        rawTexture: Int,
        label: String,
    ) {
        val rawResource = GlesGpuScheduler.textureResource(rawTexture)
        val fullRaw = MgcSpatialRgbRect(0, 0, width, height)
        renderRgbChromaGuide(
            frame = frame,
            rawTexture = rawTexture,
            rawTextureOrigin = fullRaw,
            sourceRegion = fullRaw,
            outputTexture = accumulator.chromaGuideTexture,
        )
        accumulator.drawBands.forEach { band ->
            accumulator.passWindow.beginPass(
                label = "MGC RGB online $label band ${band.index}",
                reads = longArrayOf(rawResource),
            )
            try {
                renderRgbFrameContribution(
                    frame = frame,
                    rawTexture = rawTexture,
                    rawTextureOrigin = fullRaw,
                    sourceRegion = fullRaw,
                    outputCores = listOf(band.outputCore),
                    chromaGuideRegionTexture = accumulator.chromaGuideTexture,
                    semanticAccumulator = accumulator.semanticAccumulator,
                    opponentWeightAccumulator = accumulator.opponentWeightAccumulator,
                    accumulatorIsFullOutput = true,
                )
            } finally {
                accumulator.passWindow.endPass()
            }
        }
        accumulator.contributedFrames += 1
    }

    /**
     * Executes MGC 9.7.047 V25's complete Spatial RGB Halide AOT. In particular, this call keeps
     * DemosaicGreenRaw16 inside the original pipeline; the three output planes therefore share
     * MGC's edge-directed green guide and adaptive kernel geometry instead of reconstructing edge
     * direction independently per color channel.
     */
    private fun renderOriginalAotRgbMerge(
        frames: List<RgbMergeFrame>,
        images: List<SafeImage>,
        outputExposureScale: Float,
        mergeSharpness: Float,
        capture: StrengthCapture,
        preparedAlignment: PreparedTextureReadback,
        preparedRejection: PreparedTextureReadback,
    ): RgbMergeOutput {
        check(outputMode == MgcSpatialOutputMode.RGB)
        check(normalizeAotRgbProgram != 0) {
            "MGC Spatial V25 AOT output program is not initialized"
        }
        require(frames.isNotEmpty() && frames.size == capture.frameCount)
        require(frames.all { it.imageIndex in images.indices })
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        require(mergeSharpness.isFinite() && mergeSharpness >= 0f)
        check(capture.geometry.imageWidth == width && capture.geometry.imageHeight == height &&
            capture.geometry.fixed16Width == rgbAotStorageWidth &&
            capture.geometry.fixed16Height == rgbAotStorageHeight) {
            "MGC Spatial RGB AOT geometry ${capture.geometry.fixed16Width}x" +
                "${capture.geometry.fixed16Height} does not match " +
                "native=${width}x$height storage=${rgbAotStorageWidth}x$rgbAotStorageHeight"
        }
        val alignment = checkNotNull(preparedAlignment.cpuBuffer) {
            "MGC Spatial RGB AOT alignment is not host-resident"
        }.duplicate().order(ByteOrder.nativeOrder()).apply {
            position(0)
            limit(preparedAlignment.byteCount)
        }
        val rejection = checkNotNull(preparedRejection.cpuBuffer) {
            "MGC Spatial RGB AOT rejection is not host-resident"
        }.duplicate().order(ByteOrder.nativeOrder()).apply {
            position(0)
            limit(preparedRejection.byteCount)
        }
        val rawPlanes = frames.map { frame ->
            images[frame.imageIndex].planes.firstOrNull()
                ?: error("MGC Spatial RGB frame ${frame.imageIndex} has no RAW plane")
        }
        rawPlanes.forEachIndexed { index, plane ->
            require(plane.pixelStride == RAW_BYTES_PER_PIXEL) {
                "MGC Spatial RGB AOT frame $index pixel stride=${plane.pixelStride}, expected 2"
            }
            require(plane.rowStride >= width * RAW_BYTES_PER_PIXEL) {
                "MGC Spatial RGB AOT frame $index row stride=${plane.rowStride}, width=$width"
            }
        }
        val rawBuffers = Array(rawPlanes.size) { index ->
            rawPlanes[index].buffer.duplicate().order(ByteOrder.nativeOrder()).also { buffer ->
                require(buffer.isDirect) { "MGC Spatial RGB AOT RAW frame $index is not direct" }
            }
        }
        val rawOffsets = IntArray(rawBuffers.size) { index -> rawBuffers[index].position() }
        val rawRowStrides = IntArray(rawPlanes.size) { index -> rawPlanes[index].rowStride }
        val referenceBlack = frames.first().calibration.blackLevels
        val inputBlackRgb = floatArrayOf(
            referenceBlack[0],
            0.5f * (referenceBlack[1] + referenceBlack[2]),
            referenceBlack[3],
        )
        val inputGains = FloatArray(frames.size) { index ->
            frames[index].calibration.inputGain
        }
        val aotSampleCount = capture.geometry.fixed16SampleCount
            .also { require(it in 1..Int.MAX_VALUE.toLong()) }
            .toInt()
        val aotByteCount = strengthFixed16ReadbackByteCount(capture)
        val outputBytes = outputWidth.toLong() * outputHeight * 3L * Short.SIZE_BYTES
        require(outputBytes in 1..Int.MAX_VALUE.toLong())
        val fullOutput = MgcSpatialRgbRect(0, 0, outputWidth, outputHeight)
        val fullOutputTile = MgcSpatialRgbTile(index = 0, outputCore = fullOutput)
        var aotPlanar: ByteBuffer? = null
        var cpuOutput: ByteBuffer? = null
        var diagnosticFixed16: PreparedTextureReadback? = null
        var gpuOutput = 0
        var postprocessedUi = 0
        val completionRecorder = GlesGpuCompletion.StackTimelineRecorder()
        var completionTimeline: GpuStackCompletionTimeline? = null
        try {
            aotPlanar = LargeDirectBuffer.allocate(
                aotByteCount.toLong(),
                "MGC V25 Spatial RGB planar F16/Q14",
            )?.order(ByteOrder.nativeOrder()) ?: error(
                "Unable to allocate MGC V25 Spatial RGB planar output",
            )
            if (!exportGpuLinearRgbSource) {
                cpuOutput = LargeDirectBuffer.allocate(
                    outputBytes,
                    "MGC V25 Spatial RGB16 output",
                )?.order(ByteOrder.nativeOrder()) ?: error(
                    "Unable to allocate MGC V25 Spatial RGB16 output",
                )
            }
            val aotStartNs = System.nanoTime()
            MgcSpatialRgbMerger.merge(
                rawBuffers = rawBuffers,
                rawOffsets = rawOffsets,
                rawRowStrides = rawRowStrides,
                alignment = alignment,
                alignmentWidth = capture.alignmentWidth,
                alignmentHeight = capture.alignmentHeight,
                rejection = rejection,
                rejectionWidth = capture.rejectionWidth,
                rejectionHeight = capture.rejectionHeight,
                frameWeights = capture.frameWeights,
                whiteBalanceGains = calculationWhiteBalance,
                inputBlackLevelsRgb = inputBlackRgb,
                inputBlackLevelsRggb = referenceBlack,
                inputGains = inputGains,
                overallGain = sabreResolveRawScale,
                mergeSharpness = mergeSharpness,
                kernelSigmas = capture.kernelSigmas,
                rawWidth = width,
                rawHeight = height,
                outputWidth = width,
                outputHeight = height,
                outputStorageWidth = rgbAotStorageWidth,
                outputStorageHeight = rgbAotStorageHeight,
                cfaPattern = cfaPattern,
                outputPlanarF16 = checkNotNull(aotPlanar),
            )
            val aotMs = elapsedMs(aotStartNs)

            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Spatial RGB chroma postprocessor is not initialized"
            }
            chromaPostprocessor.initStorage(listOf(fullOutputTile))
            val lensShadingTexture = createLensShadingTexture()
            uploadAndNormalizeOriginalAotRgb(
                planarF16 = checkNotNull(aotPlanar),
                lensShadingTexture = lensShadingTexture,
                target = chromaPostprocessor.normalizationTargetTexture(),
                outputExposureScale = outputExposureScale,
            )
            chromaPostprocessor.markTileWritten(fullOutputTile)

            // The GL upload no longer reads client memory after glTexSubImage2D returns. Reuse the
            // same native allocation for the planar signed-Q14 diagnostic expected by the lifted
            // Spatial-noise AOT instead of holding a second full-resolution planar allocation.
            MgcSpatialRgbMerger.convertPlanarF16ToFixed16(
                buffer = checkNotNull(aotPlanar),
                sampleCount = aotSampleCount,
            )
            diagnosticFixed16 = PreparedTextureReadback(
                byteCount = aotByteCount,
                queuedGpuReadback = null,
                cpuBuffer = checkNotNull(aotPlanar),
                mode = "mgc-v25-aot-planar-q14-host",
                targetBindMs = 0L,
                readSubmitMs = 0L,
                totalSubmitMs = aotMs,
            )
            aotPlanar = null

            releaseRgbFusionPhaseTextures(
                retainedTexture = chromaPostprocessor.normalizationTargetTexture(),
                label = "V25 AOT",
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
                        label = "MGC Spatial V25 AOT IIR-to-float handoff",
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
                        label = "MGC Spatial V25 AOT RGB export",
                        checkGlError = ::checkGlError,
                    )
                }
                if (textures.remove(gpuOutput)) textureSpecs.remove(gpuOutput)
            }
            PLog.i(
                TAG,
                "MGC Spatial V25 RGB AOT frames=${frames.size} " +
                    "native=${width}x$height " +
                    "storage=${rgbAotStorageWidth}x$rgbAotStorageHeight " +
                    "output=${outputWidth}x$outputHeight rawScale=$sabreResolveRawScale " +
                    "mergeSharpness=$mergeSharpness aot=${aotMs}ms " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms",
            )
            return RgbMergeOutput(
                cpuBuffer = cpuOutput,
                gpuTexture = gpuOutput,
                diagnosticFixed16 = diagnosticFixed16,
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
            LargeDirectBuffer.free(aotPlanar)
            LargeDirectBuffer.free(diagnosticFixed16?.cpuBuffer)
            LargeDirectBuffer.free(cpuOutput)
            throw throwable
        }
    }

    private fun finishOnlineRgbMerge(
        accumulator: OnlineRgbAccumulator,
        outputExposureScale: Float,
        diagnosticCapture: StrengthCapture?,
    ): RgbMergeOutput {
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        val fullOutput = MgcSpatialRgbRect(0, 0, outputWidth, outputHeight)
        val fullOutputTile = MgcSpatialRgbTile(index = 0, outputCore = fullOutput)
        val lensShadingTexture = createLensShadingTexture()
        var gpuOutput = 0
        var postprocessedUi = 0
        val outputBytes = outputWidth.toLong() * outputHeight * 3L * Short.SIZE_BYTES
        require(outputBytes in 1..Int.MAX_VALUE.toLong())
        val cpuOutput = if (!exportGpuLinearRgbSource) {
            LargeDirectBuffer.allocate(outputBytes, "MGC Spatial online RGB16 output")
                ?.order(ByteOrder.nativeOrder()) ?: error(
                    "Unable to allocate MGC Spatial online RGB16 output",
                )
        } else {
            null
        }
        var diagnosticStorage: PixelPackBuffer? = null
        var diagnosticFramebuffer = 0
        var diagnosticFixed16Texture = 0
        var diagnosticFixed16: PreparedTextureReadback? = null
        val completionRecorder = GlesGpuCompletion.StackTimelineRecorder()
        var completionTimeline: GpuStackCompletionTimeline? = null
        try {
            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Spatial RGB chroma postprocessor is not initialized"
            }
            diagnosticFixed16 = diagnosticCapture?.let { capture ->
                diagnosticFixed16Texture = createTexture(
                    capture.geometry.fixed16Width,
                    capture.geometry.fixed16Height,
                    GLES30.GL_R16I,
                    GLES30.GL_NEAREST,
                )
                diagnosticFramebuffer = createFramebuffer()
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, diagnosticFramebuffer)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_FRAMEBUFFER,
                    GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D,
                    diagnosticFixed16Texture,
                    0,
                )
                GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
                check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
                    GLES30.GL_FRAMEBUFFER_COMPLETE) {
                    "MGC online RGB Fixed16 framebuffer is incomplete"
                }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                diagnosticStorage = allocatePixelPackBuffer(
                    strengthFixed16ReadbackByteCount(capture),
                    "MGC Spatial online RGB Fixed16 source",
                )
                val timing = packRgbFixed16TileReadback(
                    capture = capture,
                    semanticAccumulator = accumulator.semanticAccumulator,
                    opponentWeightAccumulator = accumulator.opponentWeightAccumulator,
                    outputCore = fullOutput,
                    fixed16Texture = diagnosticFixed16Texture,
                    diagnosticFramebuffer = diagnosticFramebuffer,
                    storage = checkNotNull(diagnosticStorage),
                )
                val queued = QueuedTextureReadback(
                    storage = checkNotNull(diagnosticStorage),
                    mode = "online-full-accumulator-pbo-rgb-planar-q14",
                    targetBindMs = timing.setupNs / 1_000_000L,
                    readSubmitMs = timing.dispatchNs / 1_000_000L,
                    totalSubmitMs = (timing.setupNs + timing.dispatchNs) / 1_000_000L,
                )
                PreparedTextureReadback(
                    byteCount = strengthFixed16ReadbackByteCount(capture),
                    queuedGpuReadback = queued,
                    cpuBuffer = null,
                    mode = queued.mode,
                    targetBindMs = queued.targetBindMs,
                    readSubmitMs = queued.readSubmitMs,
                    totalSubmitMs = queued.totalSubmitMs,
                )
            }

            // Finish the full-size diagnostic while only the fusion accumulators are live. Its
            // texture and PBO must be gone before the assembled RGB/IIR surfaces are allocated.
            diagnosticFixed16 = diagnosticFixed16?.let { prepared ->
                try {
                    materializePreparedReadbackToHost(
                        prepared = prepared,
                        label = "MGC Spatial online RGB Fixed16 host source",
                    )
                } finally {
                    diagnosticStorage = null
                }
            }
            detachFramebufferColorAttachment(diagnosticFramebuffer)
            if (diagnosticFixed16Texture != 0) {
                releaseOwnedTexture(
                    diagnosticFixed16Texture,
                    "online RGB Fixed16 diagnostic texture",
                )
                diagnosticFixed16Texture = 0
            }

            chromaPostprocessor.initStorage(listOf(fullOutputTile))
            renderRgbNormalizedTile(
                semanticAccumulator = accumulator.semanticAccumulator,
                opponentWeightAccumulator = accumulator.opponentWeightAccumulator,
                lensShadingTexture = lensShadingTexture,
                outputCore = fullOutput,
                target = chromaPostprocessor.normalizationTargetTexture(),
                targetIsFullOutput = true,
                outputExposureScale = outputExposureScale,
            )
            chromaPostprocessor.markTileWritten(fullOutputTile)
            accumulator.passWindow.drain("MGC RGB online fusion-to-IIR handoff")
            releaseRgbFusionPhaseTextures(
                retainedTexture = chromaPostprocessor.normalizationTargetTexture(),
                label = "online",
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
                    // Ensure the deleted IIR work surfaces are reclaimable before allocating the
                    // float export texture; otherwise drivers may transiently retain four surfaces.
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Spatial RGB IIR-to-float handoff",
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

            val gpuDeclaredBytes = estimatedOwnedTextureBytes() +
                if (gpuOutput != 0 && !textures.contains(gpuOutput)) {
                    rgbFullTextureBytes()
                } else {
                    0L
                }
            if (gpuOutput != 0) {
                completionRecorder.mark(GpuStackCompletionStage.FINAL_EXPORT)
                completionTimeline = completionRecorder.finish()
                if (completionTimeline == null) {
                    GlesGpuCompletion.awaitSubmittedWork(
                        label = "MGC Spatial online RGB export",
                        checkGlError = ::checkGlError,
                    )
                }
                if (textures.remove(gpuOutput)) {
                    textureSpecs.remove(gpuOutput)
                }
            }
            PLog.i(
                TAG,
                "MGC Spatial RGB online RAW uploads=${accumulator.rawUploadCount} " +
                    "bytes=${accumulator.rawUploadBytes} " +
                    "submit=${accumulator.rawUploadNs / 1_000_000L}ms " +
                    "frames=${accumulator.contributedFrames} drawBands=${accumulator.drawBands.size} " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms " +
                    "gpuDeclaredBytes=$gpuDeclaredBytes " +
                    "projectedGpuBytes=${accumulator.projectedGpuBytes}",
            )
            return RgbMergeOutput(
                cpuBuffer = cpuOutput,
                gpuTexture = gpuOutput,
                diagnosticFixed16 = diagnosticFixed16,
                completionTimeline = completionTimeline,
            )
        } catch (throwable: Throwable) {
            completionTimeline?.releasePending()
            completionRecorder.releasePending()
            diagnosticStorage?.let { storage ->
                releasePixelPackBuffer(storage, "failed MGC Spatial online RGB Fixed16")
            }
            if (postprocessedUi != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
            }
            if (gpuOutput != 0 && !textures.contains(gpuOutput)) {
                GLES30.glDeleteTextures(1, intArrayOf(gpuOutput), 0)
            }
            LargeDirectBuffer.free(diagnosticFixed16?.cpuBuffer)
            LargeDirectBuffer.free(cpuOutput)
            throw throwable
        }
    }

    private fun createRgbBandPlan(
        frames: List<RgbMergeFrame>,
        diagnosticCapture: StrengthCapture?,
        maximumBandHeight: Int,
    ): RgbBandPlan {
        val bands = MgcSpatialRgbTilePlanner.planHorizontalBands(
            outputWidth = outputWidth,
            outputHeight = outputHeight,
            maximumBandHeight = maximumBandHeight,
        )
        val work = bands.map { band ->
            band to frames.map { frame ->
                val sourceRegion = MgcSpatialRgbTilePlanner.sourceRegion(
                    tile = band,
                    rawWidth = width,
                    rawHeight = height,
                    outputWidth = outputWidth,
                    outputHeight = outputHeight,
                    flowBounds = frame.flowBounds,
                )
                RgbTileFrameRegion(
                    frame = frame,
                    sourceRegion = sourceRegion,
                    uploadRegion = expandRgbRawRegion(
                        sourceRegion,
                        RGB_CHROMA_GUIDE_RAW_RADIUS,
                    ),
                )
            }
        }
        val maximumOutputWidth = bands.maxOf { it.outputCore.width }
        val maximumOutputHeight = bands.maxOf { it.outputCore.height }
        val diagnosticPaddingWidth = diagnosticCapture?.let { capture ->
            capture.geometry.fixed16Width - outputWidth
        } ?: 0
        val diagnosticPaddingHeight = diagnosticCapture?.let { capture ->
            capture.geometry.fixed16Height - outputHeight
        } ?: 0
        val maximumDiagnosticWidth = bands.maxOf { band ->
            band.outputCore.width +
                if (band.outputCore.right == outputWidth) diagnosticPaddingWidth else 0
        }
        val maximumDiagnosticHeight = bands.maxOf { band ->
            band.outputCore.height +
                if (band.outputCore.bottom == outputHeight) diagnosticPaddingHeight else 0
        }
        val maximumSourceWidth = work.maxOf { (_, regions) ->
            regions.maxOf { it.sourceRegion.width }
        }
        val maximumSourceHeight = work.maxOf { (_, regions) ->
            regions.maxOf { it.sourceRegion.height }
        }
        val maximumUploadWidth = work.maxOf { (_, regions) ->
            regions.maxOf { it.uploadRegion.width }
        }
        val maximumUploadHeight = work.maxOf { (_, regions) ->
            regions.maxOf { it.uploadRegion.height }
        }
        val rawWindowBytes = maximumUploadWidth.toLong() * maximumUploadHeight *
            RAW_BYTES_PER_PIXEL * RGB_RAW_WINDOW_SLOTS
        val chromaGuideBytes = maximumSourceWidth.toLong() * maximumSourceHeight * 2L
        val accumulatorBytes = maximumOutputWidth.toLong() * maximumOutputHeight * 16L
        val assembledRgbBytes = rgbFullTextureBytes()
        val diagnosticTextureBytes = if (diagnosticCapture != null) {
            maximumDiagnosticWidth.toLong() * maximumDiagnosticHeight * 2L
        } else {
            0L
        }
        val diagnosticPboBytes = if (diagnosticCapture != null) {
            maximumDiagnosticWidth.toLong() * maximumDiagnosticHeight * 3L *
                Short.SIZE_BYTES * minOf(RGB_DIAGNOSTIC_PBO_SLOTS, bands.size)
        } else {
            0L
        }
        val projectedGpuBytes = estimatedOwnedTextureBytes() + rawWindowBytes +
            chromaGuideBytes + accumulatorBytes + assembledRgbBytes +
            diagnosticTextureBytes + diagnosticPboBytes + RGB_TEXTURE_ESTIMATE_RESERVE_BYTES
        return RgbBandPlan(
            bands = bands,
            work = work,
            maximumOutputWidth = maximumOutputWidth,
            maximumOutputHeight = maximumOutputHeight,
            maximumDiagnosticWidth = maximumDiagnosticWidth,
            maximumDiagnosticHeight = maximumDiagnosticHeight,
            maximumSourceWidth = maximumSourceWidth,
            maximumSourceHeight = maximumSourceHeight,
            maximumUploadWidth = maximumUploadWidth,
            maximumUploadHeight = maximumUploadHeight,
            projectedGpuBytes = projectedGpuBytes,
        )
    }

    private fun renderRgbMerge(
        frames: List<RgbMergeFrame>,
        images: List<SafeImage>,
        outputExposureScale: Float,
        diagnosticCapture: StrengthCapture?,
    ): RgbMergeOutput {
        check(outputMode == MgcSpatialOutputMode.RGB)
        check(mergeRgbProgram != 0 && normalizeRgbProgram != 0)
        require(frames.isNotEmpty())
        require(frames.all { it.imageIndex in images.indices })
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        diagnosticCapture?.let { capture ->
            check(capture.outputMode == MgcSpatialOutputMode.RGB)
            check(
                capture.geometry.imageWidth == outputWidth &&
                    capture.geometry.imageHeight == outputHeight
            ) {
                "MGC RGB diagnostic geometry ${capture.geometry.imageWidth}x" +
                    "${capture.geometry.imageHeight} does not match output ${outputWidth}x$outputHeight"
            }
        }
        val bandPlans = rgbBandHeightCandidates().map { maximumBandHeight ->
            createRgbBandPlan(
                frames = frames,
                diagnosticCapture = diagnosticCapture,
                maximumBandHeight = maximumBandHeight,
            )
        }
        val bandPlan = bandPlans[
            MgcSpatialRgbMemoryPolicy.selectAdvisoryPlanIndex(
                projectedBytes = bandPlans.map(RgbBandPlan::projectedGpuBytes),
                advisoryBytes = RGB_TEXTURE_ADVISORY_BYTES,
            )
        ]
        val bands = bandPlan.bands
        val work = bandPlan.work
        val maximumOutputWidth = bandPlan.maximumOutputWidth
        val maximumOutputHeight = bandPlan.maximumOutputHeight
        val maximumDiagnosticWidth = bandPlan.maximumDiagnosticWidth
        val maximumDiagnosticHeight = bandPlan.maximumDiagnosticHeight
        val maximumSourceWidth = bandPlan.maximumSourceWidth
        val maximumSourceHeight = bandPlan.maximumSourceHeight
        val maximumUploadWidth = bandPlan.maximumUploadWidth
        val maximumUploadHeight = bandPlan.maximumUploadHeight
        val rawBandTextures = List(RGB_RAW_WINDOW_SLOTS) {
            createTexture(
                maximumUploadWidth,
                maximumUploadHeight,
                GLES30.GL_R16UI,
                GLES30.GL_NEAREST,
            )
        }
        val chromaGuideRegionTexture = createTexture(
            maximumSourceWidth,
            maximumSourceHeight,
            GLES30.GL_R16F,
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
        var gpuOutput = 0
        var postprocessedUi = 0
        val outputBytes = outputWidth.toLong() * outputHeight.toLong() * 3L * Short.SIZE_BYTES
        require(outputBytes <= Int.MAX_VALUE) {
            "MGC Spatial RGB CPU output is too large: $outputBytes bytes"
        }
        val cpuOutput = if (!exportGpuLinearRgbSource) {
            LargeDirectBuffer.allocate(
                outputBytes,
                "MGC Spatial fused linear RGB16",
            )?.order(ByteOrder.nativeOrder()) ?: error(
                "Unable to allocate MGC Spatial RGB16 output",
            )
        } else {
            null
        }
        val diagnosticTexture = if (diagnosticCapture != null) {
            createTexture(
                maximumDiagnosticWidth,
                maximumDiagnosticHeight,
                GLES30.GL_R16I,
                GLES30.GL_NEAREST,
            )
        } else {
            0
        }
        val diagnosticFramebuffer = if (diagnosticCapture != null) createFramebuffer() else 0
        val diagnosticBandByteCount = (
            maximumDiagnosticWidth.toLong() * maximumDiagnosticHeight * 3L * Short.SIZE_BYTES
            ).also { bytes -> require(bytes in 1..Int.MAX_VALUE.toLong()) }
            .toInt()
        val diagnosticStorages = if (diagnosticCapture != null) {
            // A second slot only overlaps readback with useful work when another band exists.
            // Keeping one full-frame PBO makes the one-band fast path fit the same hard budget.
            List(minOf(RGB_DIAGNOSTIC_PBO_SLOTS, bands.size)) { slot ->
                allocatePixelPackBuffer(
                    diagnosticBandByteCount,
                    "MGC Spatial RGB Fixed16 band slot $slot",
                )
            }
        } else {
            emptyList()
        }
        val diagnosticHostBuffer = diagnosticCapture?.let { capture ->
            val byteCount = strengthFixed16ReadbackByteCount(capture)
            LargeDirectBuffer.allocate(
                byteCount.toLong(),
                "MGC Spatial RGB Fixed16 host source",
            )?.order(ByteOrder.nativeOrder()) ?: error(
                "Unable to allocate MGC Spatial RGB Fixed16 host source",
            )
        }
        val pendingDiagnosticBands = arrayOfNulls<PendingRgbDiagnosticBand>(
            diagnosticStorages.size,
        )
        if (diagnosticCapture != null) {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, diagnosticFramebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                diagnosticTexture,
                0,
            )
            GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "MGC RGB Fixed16 diagnostic framebuffer incomplete: 0x${status.toString(16)}"
            }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            applyRawRenderState()
            checkGlError("MGC Spatial RGB post-output diagnostic resources")
        }
        PLog.i(
            TAG,
            "MGC Spatial RGB streamed-raw " +
                "bands=${bands.size} rawWindowSlots=${rawBandTextures.size} " +
                "rawWindow=${maximumUploadWidth}x$maximumUploadHeight " +
                "rawWindowBytes=" +
                "${maximumUploadWidth.toLong() * maximumUploadHeight * RAW_BYTES_PER_PIXEL * rawBandTextures.size} " +
                "maxOutput=${maximumOutputWidth}x$maximumOutputHeight " +
                "maxChromaGuide=${maximumSourceWidth}x$maximumSourceHeight " +
                "frames=${frames.size} reconstruction=joint-G/R-G/B-G " +
                "chromaGuide=separate-pass diagnosticPack=${when {
                    diagnosticCapture == null -> "disabled"
                    diagnosticStorages.size == 1 -> "one-slot-band-pbo-to-host"
                    else -> "two-slot-band-pbo-to-host"
                }}",
        )
        var diagnosticSetupNs = 0L
        var diagnosticDispatchNs = 0L
        var rawBandUploadNs = 0L
        var rawBandUploadBytes = 0L
        var rawBandUploadCount = 0
        val passWindow = GlesGpuScheduler.PassWindow(
            tag = TAG,
            maxInFlight = RGB_MAX_IN_FLIGHT_PASSES,
        )
        val completionRecorder = GlesGpuCompletion.StackTimelineRecorder()
        var diagnosticStoragesReleased = false
        val gpuDeclaredBytes = estimatedOwnedTextureBytes() +
            diagnosticBandByteCount.toLong() * diagnosticStorages.size
        PLog.i(
            TAG,
            "MGC Spatial RGB reconstruction textureBytes=${estimatedOwnedTextureBytes()} " +
                "diagnosticPboBytes=" +
                "${diagnosticBandByteCount.toLong() * diagnosticStorages.size} " +
                "diagnosticHostBytes=${diagnosticHostBuffer?.capacity() ?: 0} " +
                "gpuDeclaredBytes=$gpuDeclaredBytes " +
                "projectedGpuBytes=${bandPlan.projectedGpuBytes} " +
                "advisoryBytes=$RGB_TEXTURE_ADVISORY_BYTES " +
                "estimateExceedsAdvisory=" +
                "${bandPlan.projectedGpuBytes > RGB_TEXTURE_ADVISORY_BYTES} " +
                "bandHeight=${bands.maxOf { it.outputCore.height }} " +
                "maxInFlight=$RGB_MAX_IN_FLIGHT_PASSES",
        )

        try {
            val chromaPostprocessor = checkNotNull(rgbChromaPostprocessor) {
                "MGC Spatial RGB chroma postprocessor is not initialized"
            }
            chromaPostprocessor.initStorage(bands)
            for ((band, frameRegions) in work) {
                val diagnosticSlotIndex = if (diagnosticStorages.isEmpty()) {
                    -1
                } else {
                    band.index % diagnosticStorages.size
                }
                if (diagnosticSlotIndex >= 0) {
                    pendingDiagnosticBands[diagnosticSlotIndex]?.let { pending ->
                        passWindow.awaitResources(
                            label = "MGC RGB diagnostic band ${pending.outputCore.top} host copy",
                            resources = longArrayOf(
                                GlesGpuScheduler.bufferResource(pending.storage.buffer),
                            ),
                        )
                        copyRgbFixed16BandToHost(
                            capture = checkNotNull(diagnosticCapture),
                            pending = pending,
                            destination = checkNotNull(diagnosticHostBuffer),
                        )
                        pendingDiagnosticBands[diagnosticSlotIndex] = null
                    }
                }
                frameRegions.forEachIndexed { framePosition, frameRegion ->
                    if (framePosition == 0) {
                        clearRgbAccumulators(
                            semanticAccumulator = semanticAccumulator,
                            opponentWeightAccumulator = opponentWeightAccumulator,
                            tileWidth = band.outputCore.width,
                            tileHeight = band.outputCore.height,
                        )
                    }
                    val rawBandTexture = rawBandTextures[framePosition % rawBandTextures.size]
                    val rawResource = GlesGpuScheduler.textureResource(rawBandTexture)
                    passWindow.beginPass(
                        label = "MGC RGB band ${band.index} frame $framePosition",
                        reads = longArrayOf(rawResource),
                        writes = longArrayOf(rawResource),
                    )
                    try {
                        val uploadStartNs = System.nanoTime()
                        uploadRawRegion(
                            image = images[frameRegion.frame.imageIndex],
                            texture = rawBandTexture,
                            region = frameRegion.uploadRegion,
                            label =
                                "RGB band ${band.index} frame ${frameRegion.frame.imageIndex}",
                        )
                        rawBandUploadNs += System.nanoTime() - uploadStartNs
                        rawBandUploadBytes += frameRegion.uploadRegion.width.toLong() *
                            frameRegion.uploadRegion.height * RAW_BYTES_PER_PIXEL
                        rawBandUploadCount += 1
                        renderRgbChromaGuide(
                            frame = frameRegion.frame,
                            rawTexture = rawBandTexture,
                            rawTextureOrigin = frameRegion.uploadRegion,
                            sourceRegion = frameRegion.sourceRegion,
                            outputTexture = chromaGuideRegionTexture,
                        )
                        renderRgbFrameContribution(
                            frame = frameRegion.frame,
                            rawTexture = rawBandTexture,
                            rawTextureOrigin = frameRegion.uploadRegion,
                            sourceRegion = frameRegion.sourceRegion,
                            outputCores = listOf(band.outputCore),
                            chromaGuideRegionTexture = chromaGuideRegionTexture,
                            semanticAccumulator = semanticAccumulator,
                            opponentWeightAccumulator = opponentWeightAccumulator,
                        )
                    } finally {
                        passWindow.endPass()
                    }
                }
                val diagnosticStorage = diagnosticSlotIndex.takeIf { it >= 0 }?.let {
                    diagnosticStorages[it]
                }
                passWindow.beginPass(
                    label = "MGC RGB band ${band.index} normalize",
                    writes = longArrayOf(
                        GlesGpuScheduler.bufferResource(diagnosticStorage?.buffer ?: 0),
                    ),
                )
                var pendingDiagnosticBand: PendingRgbDiagnosticBand? = null
                try {
                    renderRgbNormalizedTile(
                        semanticAccumulator = semanticAccumulator,
                        opponentWeightAccumulator = opponentWeightAccumulator,
                        lensShadingTexture = lensShadingTexture,
                        outputCore = band.outputCore,
                        target = chromaPostprocessor.normalizationTargetTexture(),
                        targetIsFullOutput = true,
                        outputExposureScale = outputExposureScale,
                    )
                    chromaPostprocessor.markTileWritten(band)
                    GlesGpuScheduler.yieldToUiRenderer()
                    diagnosticCapture?.let { capture ->
                        // The production output for this band has already been submitted. The
                        // accumulator remains valid until the next band begins with an explicit
                        // clear, so pack diagnostics now without replaying any frame contribution.
                        val timing = packRgbFixed16TileReadback(
                            capture = capture,
                            semanticAccumulator = semanticAccumulator,
                            opponentWeightAccumulator = opponentWeightAccumulator,
                            outputCore = band.outputCore,
                            fixed16Texture = diagnosticTexture,
                            diagnosticFramebuffer = diagnosticFramebuffer,
                            storage = checkNotNull(diagnosticStorage),
                        )
                        diagnosticSetupNs += timing.setupNs
                        diagnosticDispatchNs += timing.dispatchNs
                        pendingDiagnosticBand = PendingRgbDiagnosticBand(
                            storage = diagnosticStorage,
                            outputCore = band.outputCore,
                            destinationHeight = timing.destinationHeight,
                            byteCount = timing.byteCount,
                        )
                    }
                } finally {
                    passWindow.endPass()
                }
                if (diagnosticSlotIndex >= 0) {
                    pendingDiagnosticBands[diagnosticSlotIndex] =
                        checkNotNull(pendingDiagnosticBand)
                }
            }
            pendingDiagnosticBands.forEachIndexed { slot, pending ->
                pending ?: return@forEachIndexed
                passWindow.awaitResources(
                    label = "MGC RGB final diagnostic band ${pending.outputCore.top} host copy",
                    resources = longArrayOf(
                        GlesGpuScheduler.bufferResource(pending.storage.buffer),
                    ),
                )
                copyRgbFixed16BandToHost(
                    capture = checkNotNull(diagnosticCapture),
                    pending = pending,
                    destination = checkNotNull(diagnosticHostBuffer),
                )
                pendingDiagnosticBands[slot] = null
            }
            diagnosticStorages.forEach { storage ->
                releasePixelPackBuffer(storage, "MGC Spatial RGB Fixed16 band slot")
            }
            diagnosticStoragesReleased = true
            detachFramebufferColorAttachment(diagnosticFramebuffer)
            passWindow.drain("MGC RGB fusion-to-chroma handoff")
            releaseRgbFusionPhaseTextures(
                retainedTexture = chromaPostprocessor.normalizationTargetTexture(),
                label = "streamed-band",
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
                        label = "MGC Spatial RGB IIR-to-float handoff",
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
            PLog.i(
                TAG,
                "MGC Spatial RGB streamed RAW uploads=$rawBandUploadCount " +
                    "bytes=$rawBandUploadBytes submit=" +
                    "${rawBandUploadNs / 1_000_000L}ms slots=${rawBandTextures.size} " +
                    "colorNoiseIir=${chromaResult.chromaSubmissionMs}ms " +
                    "chromaFinal=${chromaResult.finalSubmissionMs}ms",
            )
            cpuOutput?.rewind()
            val diagnosticFixed16 = diagnosticCapture?.let {
                checkGlError("MGC Spatial RGB Fixed16 diagnostic pack")
                PreparedTextureReadback(
                    byteCount = strengthFixed16ReadbackByteCount(it),
                    queuedGpuReadback = null,
                    cpuBuffer = checkNotNull(diagnosticHostBuffer),
                    mode = "${diagnosticStorages.size}-slot-band-pbo-host-rgb-planar-q14",
                    targetBindMs = diagnosticSetupNs / 1_000_000L,
                    readSubmitMs = diagnosticDispatchNs / 1_000_000L,
                    totalSubmitMs =
                        (diagnosticSetupNs + diagnosticDispatchNs) / 1_000_000L,
                )
            }
            val completionTimeline = if (gpuOutput != 0) {
                completionRecorder.mark(GpuStackCompletionStage.FINAL_EXPORT)
                completionRecorder.finish().also { timeline ->
                    if (timeline != null) {
                        passWindow.clearAfterCheckpoint()
                    } else {
                        passWindow.drain("MGC RGB final export without completion checkpoint")
                    }
                }
            } else {
                passWindow.drain("MGC RGB CPU output completion")
                null
            }
            if (gpuOutput != 0) {
                if (textures.remove(gpuOutput)) {
                    textureSpecs.remove(gpuOutput)
                }
            }
            return RgbMergeOutput(
                cpuBuffer = cpuOutput,
                gpuTexture = gpuOutput,
                diagnosticFixed16 = diagnosticFixed16,
                completionTimeline = completionTimeline,
            )
        } catch (throwable: Throwable) {
            completionRecorder.releasePending()
            passWindow.drain("MGC RGB reconstruction failure")
            if (!diagnosticStoragesReleased) {
                diagnosticStorages.forEach { storage ->
                    releasePixelPackBuffer(
                        storage,
                        "failed MGC Spatial RGB Fixed16 band slot",
                    )
                }
            }
            if (postprocessedUi != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(postprocessedUi), 0)
            }
            if (gpuOutput != 0 && !textures.contains(gpuOutput)) {
                GLES30.glDeleteTextures(1, intArrayOf(gpuOutput), 0)
            }
            LargeDirectBuffer.free(diagnosticHostBuffer)
            LargeDirectBuffer.free(cpuOutput)
            throw throwable
        }
    }

    /**
     * Packs the isolated semantic merge accumulator before LSC and output-exposure scaling.
     * Applying only cameraDomainScale produces the normalized camera-RGB domain expected by
     * ComputeRgbNoiseModel; output noise coefficients are exposure-scaled once after the AOT.
     */
    private fun packRgbFixed16TileReadback(
        capture: StrengthCapture,
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
        outputCore: MgcSpatialRgbRect,
        fixed16Texture: Int,
        diagnosticFramebuffer: Int,
        storage: PixelPackBuffer,
    ): RgbDiagnosticPackTiming {
        check(capture.outputMode == MgcSpatialOutputMode.RGB)
        check(
            packRgbFixed16FallbackProgram != 0 &&
                fixed16Texture != 0 &&
                diagnosticFramebuffer != 0
        )
        check(storage.buffer != 0)
        val imageWidth = capture.geometry.imageWidth
        val imageHeight = capture.geometry.imageHeight
        val fixed16Width = capture.geometry.fixed16Width
        val fixed16Height = capture.geometry.fixed16Height
        require(outputCore.right <= imageWidth && outputCore.bottom <= imageHeight)
        val destinationWidth = outputCore.width +
            if (outputCore.right == imageWidth) fixed16Width - imageWidth else 0
        val destinationHeight = outputCore.height +
            if (outputCore.bottom == imageHeight) fixed16Height - imageHeight else 0
        check(outputCore.left == 0 && destinationWidth == fixed16Width) {
            "RGB Fixed16 band packing requires full-width horizontal bands"
        }
        val rowBytes = destinationWidth.toLong() * Short.SIZE_BYTES
        val planeBytes = rowBytes * destinationHeight.toLong()
        val packedByteCount = (planeBytes * 3L)
            .also { bytes -> require(bytes in 1..storage.byteCount.toLong()) }
            .toInt()
        var setupNs = 0L
        var submitNs = 0L
        try {
            for (channel in 0 until 3) {
                val setupStartNs = System.nanoTime()
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, diagnosticFramebuffer)
                GLES30.glViewport(0, 0, destinationWidth, destinationHeight)
                GLES30.glDisable(GLES30.GL_BLEND)
                GLES30.glUseProgram(packRgbFixed16FallbackProgram)
                bindTexture(
                    packRgbFixed16FallbackProgram,
                    "uColorAndRWeight",
                    0,
                    semanticAccumulator,
                )
                bindTexture(
                    packRgbFixed16FallbackProgram,
                    "uGbWeights",
                    1,
                    opponentWeightAccumulator,
                )
                uniform1i(packRgbFixed16FallbackProgram, "uChannel", channel)
                uniform2i(
                    packRgbFixed16FallbackProgram,
                    "uSourceSize",
                    outputCore.width,
                    outputCore.height,
                )
                uniform3f(
                    packRgbFixed16FallbackProgram,
                    "uCameraDomainScale",
                    cameraDomainScale[0],
                    cameraDomainScale[1],
                    cameraDomainScale[2],
                )
                setupNs += System.nanoTime() - setupStartNs

                val submitStartNs = System.nanoTime()
                GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
                GLES30.glBindBuffer(
                    GLES30.GL_PIXEL_PACK_BUFFER,
                    storage.buffer,
                )
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
                GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, destinationWidth)
                val destinationOffset = channel.toLong() * planeBytes
                val destinationEnd =
                    destinationOffset +
                        (destinationHeight - 1L) * rowBytes +
                        destinationWidth.toLong() * Short.SIZE_BYTES
                check(
                    destinationOffset in 0..Int.MAX_VALUE.toLong() &&
                        destinationEnd <= storage.byteCount.toLong()
                )
                GLES30.glReadPixels(
                    0,
                    0,
                    destinationWidth,
                    destinationHeight,
                    GLES30.GL_RED_INTEGER,
                    GLES30.GL_SHORT,
                    destinationOffset.toInt(),
                )
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                submitNs += System.nanoTime() - submitStartNs
            }
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glUseProgram(0)
        }
        checkGlError("MGC Spatial RGB Fixed16 fallback pack $outputCore")
        return RgbDiagnosticPackTiming(
            setupNs = setupNs,
            dispatchNs = submitNs,
            byteCount = packedByteCount,
            destinationHeight = destinationHeight,
        )
    }

    private fun copyRgbFixed16BandToHost(
        capture: StrengthCapture,
        pending: PendingRgbDiagnosticBand,
        destination: ByteBuffer,
    ) {
        check(capture.outputMode == MgcSpatialOutputMode.RGB)
        check(pending.outputCore.left == 0)
        val fixed16Width = capture.geometry.fixed16Width
        val fixed16Height = capture.geometry.fixed16Height
        val rowBytes = fixed16Width * Short.SIZE_BYTES
        val sourcePlaneBytes = rowBytes * pending.destinationHeight
        val destinationPlaneBytes = rowBytes * fixed16Height
        check(pending.byteCount == sourcePlaneBytes * 3)
        check(destination.capacity() >= destinationPlaneBytes * 3)
        val mapped = mapPixelPackBuffer(
            pending.storage.buffer,
            pending.byteCount,
            "MGC Spatial RGB Fixed16 band top=${pending.outputCore.top}",
        )
        try {
            for (channel in 0 until 3) {
                val sourceOffset = channel * sourcePlaneBytes
                val destinationOffset =
                    channel * destinationPlaneBytes + pending.outputCore.top * rowBytes
                val source = mapped.duplicate().apply {
                    position(sourceOffset)
                    limit(sourceOffset + sourcePlaneBytes)
                }
                destination.duplicate().apply {
                    position(destinationOffset)
                    put(source)
                }
            }
        } finally {
            unmapPixelPackBuffer(pending.storage.buffer)
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
        rawTexture: Int,
        rawTextureOrigin: MgcSpatialRgbRect,
        sourceRegion: MgcSpatialRgbRect,
        outputCores: List<MgcSpatialRgbRect>,
        chromaGuideRegionTexture: Int,
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
        accumulatorIsFullOutput: Boolean = false,
    ) {
        require(outputCores.isNotEmpty())
        GLES30.glUseProgram(mergeRgbProgram)
        bindTexture(mergeRgbProgram, "uRaw", 0, rawTexture)
        bindTexture(mergeRgbProgram, "uChromaGuideRegion", 1, chromaGuideRegionTexture)
        bindTexture(mergeRgbProgram, "uAlignment", 2, frame.alignmentTexture)
        bindTexture(mergeRgbProgram, "uFrameWeight", 3, frame.weightTexture)
        bindTexture(mergeRgbProgram, "uCovariance", 4, frame.covarianceTexture)
        uniform1f(
            mergeRgbProgram,
            "uGlobalFrameWeight",
            frame.calibration.globalFrameWeight,
        )
        uniform2i(mergeRgbProgram, "uRawSize", width, height)
        uniform2i(
            mergeRgbProgram,
            "uRawTextureOrigin",
            rawTextureOrigin.left,
            rawTextureOrigin.top,
        )
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
            bindRenderTargets(
                intArrayOf(semanticAccumulator, opponentWeightAccumulator),
                "MGC RGB contributions",
            )
            outputCores.forEach { outputCore ->
                val accumulatorLeft = if (accumulatorIsFullOutput) outputCore.left else 0
                val accumulatorTop = if (accumulatorIsFullOutput) outputCore.top else 0
                uniform2i(
                    mergeRgbProgram,
                    "uOutputOrigin",
                    outputCore.left,
                    outputCore.top,
                )
                uniform2i(
                    mergeRgbProgram,
                    "uAccumulatorOrigin",
                    accumulatorLeft,
                    accumulatorTop,
                )
                GLES30.glViewport(
                    accumulatorLeft,
                    accumulatorTop,
                    outputCore.width,
                    outputCore.height,
                )
                GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            checkGlError("MGC RGB contributions=${outputCores.size}")
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
    }

    private fun renderRgbChromaGuide(
        frame: RgbMergeFrame,
        rawTexture: Int,
        rawTextureOrigin: MgcSpatialRgbRect,
        sourceRegion: MgcSpatialRgbRect,
        outputTexture: Int,
    ) {
        GLES30.glUseProgram(rgbChromaGuideProgram)
        bindTexture(rgbChromaGuideProgram, "uRaw", 0, rawTexture)
        uniform2i(rgbChromaGuideProgram, "uRawSize", width, height)
        uniform2i(
            rgbChromaGuideProgram,
            "uRawTextureOrigin",
            rawTextureOrigin.left,
            rawTextureOrigin.top,
        )
        uniform2i(
            rgbChromaGuideProgram,
            "uRegionOrigin",
            sourceRegion.left,
            sourceRegion.top,
        )
        uniform2i(
            rgbChromaGuideProgram,
            "uRegionSize",
            sourceRegion.width,
            sourceRegion.height,
        )
        uniform4fv(rgbChromaGuideProgram, "uGains", frame.calibration.gains)
        uniform4fv(
            rgbChromaGuideProgram,
            "uBlackLevelsTimesGains",
            frame.calibration.blackTerms,
        )
        uniform1i(rgbChromaGuideProgram, "uCfaPattern", cfaPattern)
        draw(
            rgbChromaGuideProgram,
            sourceRegion.width,
            sourceRegion.height,
            intArrayOf(outputTexture),
        )
    }

    private fun renderRgbNormalizedTile(
        semanticAccumulator: Int,
        opponentWeightAccumulator: Int,
        lensShadingTexture: Int,
        outputCore: MgcSpatialRgbRect,
        target: Int,
        targetIsFullOutput: Boolean,
        outputExposureScale: Float,
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
        uniform1f(
            normalizeRgbProgram,
            "uOutputExposureScale",
            outputExposureScale,
        )
        uniform1i(normalizeRgbProgram, "uUseLensShading", if (hasLensShading()) 1 else 0)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC Spatial RGB normalize tile $outputCore")
    }

    /**
     * Streams one native-grid planar F16 channel at a time into the requested RGBA16UI grid. A
     * separable DNG bicubic pass performs scaling before lens shading and the chroma stage, while
     * keeping only one upload plane and one horizontal R16F intermediate live.
     */
    private fun uploadAndNormalizeOriginalAotRgb(
        planarF16: ByteBuffer,
        lensShadingTexture: Int,
        target: Int,
        outputExposureScale: Float,
    ) {
        check(normalizeAotRgbProgram != 0)
        require(planarF16.isDirect)
        require(outputExposureScale.isFinite() && outputExposureScale > 0f)
        val planeByteCountLong =
            rgbAotStorageWidth.toLong() * rgbAotStorageHeight * Short.SIZE_BYTES
        require(planeByteCountLong in 1..Int.MAX_VALUE.toLong())
        val planeByteCount = planeByteCountLong.toInt()
        require(planarF16.capacity().toLong() >= planeByteCountLong * 3L)
        val planeTexture = createTexture(
            rgbAotStorageWidth,
            rgbAotStorageHeight,
            GLES30.GL_R16F,
            GLES30.GL_NEAREST,
        )
        val resampleOutput = outputWidth != width || outputHeight != height
        check(!resampleOutput || resampleAotRgbHorizontalProgram != 0) {
            "MGC Spatial RGB AOT resampling program is not initialized"
        }
        val horizontalTexture = if (resampleOutput) {
            createTexture(
                outputWidth,
                height,
                GLES30.GL_R16F,
                GLES30.GL_NEAREST,
            )
        } else {
            0
        }
        try {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            for (channel in 0 until 3) {
                val source = planarF16.duplicate().order(ByteOrder.nativeOrder()).apply {
                    position(channel * planeByteCount)
                    limit((channel + 1) * planeByteCount)
                }
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, planeTexture)
                GLES30.glTexSubImage2D(
                    GLES30.GL_TEXTURE_2D,
                    0,
                    0,
                    0,
                    rgbAotStorageWidth,
                    rgbAotStorageHeight,
                    GLES30.GL_RED,
                    GLES30.GL_HALF_FLOAT,
                    source,
                )
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
                val normalizedSource = if (resampleOutput) {
                    // The previous channel's normalization pass leaves a per-channel color
                    // mask active. The horizontal target is R16F, so red must be writable for
                    // every channel before this intermediate pass.
                    GLES30.glColorMask(true, true, true, true)
                    GLES30.glUseProgram(resampleAotRgbHorizontalProgram)
                    bindTexture(
                        resampleAotRgbHorizontalProgram,
                        "uChannelPlane",
                        0,
                        planeTexture,
                    )
                    uniform2i(resampleAotRgbHorizontalProgram, "uSourceSize", width, height)
                    uniform1i(resampleAotRgbHorizontalProgram, "uOutputWidth", outputWidth)
                    draw(
                        resampleAotRgbHorizontalProgram,
                        outputWidth,
                        height,
                        intArrayOf(horizontalTexture),
                    )
                    // Framebuffer write -> sampler fetch in the vertical pass.
                    GlesGpuScheduler.memoryBarrier()
                    horizontalTexture
                } else {
                    planeTexture
                }
                GLES30.glUseProgram(normalizeAotRgbProgram)
                bindTexture(normalizeAotRgbProgram, "uChannelPlane", 0, normalizedSource)
                bindTexture(normalizeAotRgbProgram, "uLensShading", 1, lensShadingTexture)
                uniform2i(
                    normalizeAotRgbProgram,
                    "uSourceSize",
                    if (resampleOutput) outputWidth else width,
                    height,
                )
                uniform2i(normalizeAotRgbProgram, "uOutputSize", outputWidth, outputHeight)
                uniform1f(
                    normalizeAotRgbProgram,
                    "uOutputExposureScale",
                    outputExposureScale,
                )
                uniform1i(
                    normalizeAotRgbProgram,
                    "uUseLensShading",
                    if (hasLensShading()) 1 else 0,
                )
                uniform1i(
                    normalizeAotRgbProgram,
                    "uResampleVertical",
                    if (resampleOutput) 1 else 0,
                )
                uniform1i(normalizeAotRgbProgram, "uChannel", channel)
                GLES30.glColorMask(
                    channel == 0,
                    channel == 1,
                    channel == 2,
                    channel == 0,
                )
                drawRegion(
                    program = normalizeAotRgbProgram,
                    target = target,
                    viewportLeft = 0,
                    viewportTop = 0,
                    viewportWidth = outputWidth,
                    viewportHeight = outputHeight,
                )
            }
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                    GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
            )
            checkGlError("upload and normalize MGC V25 Spatial RGB AOT planes")
        } finally {
            GLES30.glColorMask(true, true, true, true)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            if (horizontalTexture != 0) {
                releaseOwnedTexture(
                    horizontalTexture,
                    "MGC V25 Spatial RGB AOT horizontal resample",
                )
            }
            releaseOwnedTexture(planeTexture, "MGC V25 Spatial RGB AOT upload plane")
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

    private fun mapSpatialStrengthToOutputCoordinates(
        source: MgcSpatialStrengthMap,
    ): MgcSpatialStrengthMap {
        val targetWidth = ceilDiv(outputWidth, 4)
        val targetHeight = ceilDiv(outputHeight, 4)
        if (source.width == targetWidth && source.height == targetHeight) return source
        val startNs = System.nanoTime()
        val mapped = MgcSpatialStrengthMapScaler.scaleBilinear(
            source = source,
            targetWidth = targetWidth,
            targetHeight = targetHeight,
        )
        PLog.i(
            TAG,
            "MGC Spatial strength coordinates mapped ${source.width}x${source.height} -> " +
                "${targetWidth}x$targetHeight for ${normalizedOutputScale}x RGB output " +
                "backend=native-openmp took=" +
                "${(System.nanoTime() - startNs) / 1_000_000L}ms",
        )
        return mapped
    }

    private fun createNoiseLut(
        reference: FrameCalibration,
        current: FrameCalibration,
    ): Int {
        val values = MgcSpatialNoiseEstimatesLut.create(
            referenceShotNoise = reference.shotNoise,
            referenceReadNoise = reference.readNoise,
            currentShotNoise = current.shotNoise,
            currentReadNoise = current.readNoise,
        )
        return createFloatTexture(
            width = MgcSpatialNoiseEstimatesLut.WIDTH,
            height = MgcSpatialNoiseEstimatesLut.ROWS,
            internalFormat = GLES30.GL_RGBA16F,
            format = GLES30.GL_RGBA,
            values = values,
            filter = GLES30.GL_LINEAR,
        )
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

    private fun uploadRawRegion(
        image: SafeImage,
        texture: Int,
        region: MgcSpatialRgbRect,
        label: String,
    ) {
        require(region.right <= width && region.bottom <= height)
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
        val sourceOffset = buffer.position().toLong() +
            region.top.toLong() * plane.rowStride +
            region.left.toLong() * RAW_BYTES_PER_PIXEL
        val sourceEnd = sourceOffset +
            (region.height - 1L) * plane.rowStride +
            region.width.toLong() * RAW_BYTES_PER_PIXEL
        require(sourceOffset in 0..Int.MAX_VALUE.toLong() && sourceEnd <= buffer.limit()) {
            "$label RAW region=$region exceeds plane buffer limit=${buffer.limit()}"
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
            region.width,
            region.height,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            buffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("upload $label region=$region")
    }

    private fun expandRgbRawRegion(
        region: MgcSpatialRgbRect,
        radius: Int,
    ): MgcSpatialRgbRect {
        require(radius >= 0)
        return MgcSpatialRgbRect(
            left = max(0, region.left - radius),
            top = max(0, region.top - radius),
            right = minOf(width, region.right + radius),
            bottom = minOf(height, region.bottom + radius),
        )
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
     * ResolveSabre's accumulated-color readback has already completed every merge-stage draw.
     * Retire that arena before allocating the three full-resolution RGBA16UI VGN IIR surfaces;
     * only the freshly uploaded planar Resolve result crosses this phase boundary.
     */
    private fun releaseSabreMergePhaseTextures(retainedTextures: IntArray) {
        val retained = retainedTextures.toHashSet()
        check(retained.isNotEmpty() && retained.all(textures::contains)) {
            "Sabre Resolve phase must retain its uploaded RGB planes"
        }
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

    /** Moves strength atlases out of GL storage before the full-resolution RGB output exists. */
    private fun materializeRgbStrengthAtlases(
        capture: StrengthCapture,
    ): Pair<PreparedTextureReadback, PreparedTextureReadback> {
        check(capture.outputMode == MgcSpatialOutputMode.RGB)
        var alignmentHost: PreparedTextureReadback? = null
        var rejectionHost: PreparedTextureReadback? = null
        return try {
            alignmentHost = materializePreparedReadbackToHost(
                prepared = queuePreparedTextureReadback(
                    texture = capture.alignmentAtlas,
                    textureWidth = capture.alignmentLayout.atlasWidth,
                    textureHeight = capture.alignmentLayout.atlasHeight,
                    encoding = StrengthReadbackEncoding.FLOAT32,
                    byteCount = strengthAlignmentReadbackByteCount(capture),
                    label = "MGC Spatial RGB strength alignment atlas",
                    atlasLayout = capture.alignmentLayout,
                ),
                label = "MGC Spatial RGB strength alignment host",
            )
            detachRenderTargets()
            releaseOwnedTexture(capture.alignmentAtlas, "RGB strength alignment atlas")

            rejectionHost = materializePreparedReadbackToHost(
                prepared = queuePreparedTextureReadback(
                    texture = capture.rejectionAtlas,
                    textureWidth = capture.rejectionLayout.atlasWidth,
                    textureHeight = capture.rejectionLayout.atlasHeight,
                    encoding = StrengthReadbackEncoding.UNORM8,
                    byteCount = strengthRejectionReadbackByteCount(capture),
                    label = "MGC Spatial RGB strength rejection atlas",
                    atlasLayout = capture.rejectionLayout,
                ),
                label = "MGC Spatial RGB strength rejection host",
            )
            detachRenderTargets()
            releaseOwnedTexture(capture.rejectionAtlas, "RGB strength rejection atlas")
            checkNotNull(alignmentHost) to checkNotNull(rejectionHost)
        } catch (throwable: Throwable) {
            LargeDirectBuffer.free(alignmentHost?.cpuBuffer)
            LargeDirectBuffer.free(rejectionHost?.cpuBuffer)
            throw throwable
        }
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

    private fun detachFramebufferColorAttachment(framebuffer: Int) {
        if (framebuffer == 0) return
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            0,
            0,
        )
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

    private fun rgbBandHeightCandidates(): IntArray = intArrayOf(
        outputHeight,
        4096,
        3072,
        2048,
        1536,
        MgcSpatialRgbTilePlanner.DEFAULT_OUTPUT_TILE_SIZE,
        768,
        512,
        384,
        256,
        192,
        128,
        64,
        32,
    ).filter { it in 1..outputHeight }
        .distinct()
        .sortedDescending()
        .toIntArray()

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
        const val RGB_AOT_TILE_SIZE = 16
        const val RGB_AOT_MERGE_SHARPNESS_SCALE = 0.8f
        const val RGB_RAW_WINDOW_SLOTS = 2
        const val RGB_MAX_IN_FLIGHT_PASSES = 2
        const val RGB_DIAGNOSTIC_PBO_SLOTS = 2
        const val RGB_TEXTURE_ADVISORY_BYTES = 640L * 1024L * 1024L
        const val RGBA16_BYTES_PER_PIXEL = 8L
        const val RGB_TEXTURE_ESTIMATE_RESERVE_BYTES = 8L * 1024L * 1024L
        const val RGB_ONLINE_DRAW_BAND_HEIGHT = 1024
        const val RGB_CHROMA_GUIDE_RAW_RADIUS = 2
        const val ALIGN_TARGET_FINEST_DIMENSION = 256
        const val ALIGN_MIN_TILE_SIZE = 8
        const val ALIGN_MAX_TILE_SIZE = 64
        const val ALIGN_LK_ITERATIONS_FINEST = 2
        const val ALIGN_LK_ITERATIONS_COARSER = 3
        // Every LK iteration clamps its update to one pixel in that pyramid level. Mapped back
        // to Bayer quads, the 32x/8x/2x/1x schedule is bounded by
        // 3*32 + 3*8 + 3*2 + 2*1 = 128. Using the analytical bound keeps RGB tile planning on
        // the GPU command stream instead of synchronously reading every alignment texture.
        const val MAX_ALIGNMENT_DISPLACEMENT_BAYER_QUADS = 128f
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
        const val MIN_NOISE_VARIANCE = 1e-12f
        const val SPATIAL_IDENTITY_MULTIPLIER = 1f
        const val SPATIAL_IDENTITY_READ_NOISE = 0f
        const val SPATIAL_IDENTITY_SHOT_NOISE = 1f
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
        const val BENTO_MAX_TILING_COMPONENT_AREA = 5
        const val BENTO_MAX_ULTRASHORT_CLIPPING_OVERLAP = 0.62f
        const val LONG_FRAME_RAW_CLIPPING_THRESHOLD = 250f / 255f

        // The independent classic-Sabre 0x3882c20 table is represented by SABRE_DENOISE_*.
    }
}
