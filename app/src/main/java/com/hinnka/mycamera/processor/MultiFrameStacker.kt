package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.MgcSpatialStrengthMap
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.utils.BitmapUtils

enum class RawStackBufferLayout {
    CFA,
    LINEAR_RGB,
}

enum class MgcSpatialOutputMode {
    BAYER,
    RGB,
}

/** Merge implementations exposed by MGC's ShotParams::merge_method_override. */
enum class MgcMergeMethod(val mgcValue: Int) {
    WIENER(0),
    SABRE(1),
    SPATIAL_BAYER(2),
    SPATIAL_RGB(3),
}

/** User-facing RAWmax processor/output choices. */
enum class MgcRawMaxMode {
    SABRE,
    SPATIAL;

    companion object {
        val DEFAULT: MgcRawMaxMode = SABRE
    }

    val outputMode: MgcSpatialOutputMode
        get() = MgcSpatialOutputMode.RGB

    val mergeMethod: MgcMergeMethod
        get() = when (this) {
            SABRE -> MgcMergeMethod.SABRE
            SPATIAL -> MgcMergeMethod.SPATIAL_RGB
        }
}

internal fun resolveRawStackOutputScale(
    outputMode: MgcSpatialOutputMode,
    outputScale: Float,
): Float = if (outputMode == MgcSpatialOutputMode.RGB) {
    MultiFrameConfig.normalizeOutputScale(outputScale)
} else {
    1f
}

/**
 * Physical storage of an opaque LinearRaw texture. RGBA16F is used only for the direct Spatial
 * default-denoise handoff; persistent render/DNG sources use RGBA16UI.
 */
enum class GpuLinearRgbStorage {
    RGBA16UI,
    RGBA16F,
}

/** Opaque LinearRaw texture owned by the persistent RAW renderer context. */
data class GpuLinearRgbSource(
    val textureId: Int,
    val width: Int,
    val height: Int,
    val samplesPerPixel: Int = 4,
    val stackCompletionTimeline: GpuStackCompletionTimeline? = null,
    val storage: GpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16UI,
)

/**
 * Opaque normalized Bayer texture exported by a stacker into the persistent RAW renderer context.
 * Storage is full-resolution R16UI CFA. It may only be consumed or released on that context's GL
 * dispatcher.
 */
data class GpuBayerSource(
    val textureId: Int,
    val width: Int,
    val height: Int,
    val stackCompletionTimeline: GpuStackCompletionTimeline? = null,
)

data class RawStackResult(
    /** Null when a GPU source is exported and CPU/DNG materialization has been deferred. */
    var fusedBayerBuffer: ByteBuffer?,
    val width: Int,
    val height: Int,
    val isNormalizedSensorData: Boolean,
    val blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
    val fusedBayerUsesNativeAllocator: Boolean = false,
    val profileGainTableMap: DngProfileGainTableMap? = null,
    val profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Default,
    val diagnostics: RawStackDiagnostics? = null,
    val bufferLayout: RawStackBufferLayout = RawStackBufferLayout.CFA,
    val inputRowStepSamples: Int? = null,
    val inputColStepSamples: Int? = null,
    val baselineExposureEv: Float? = null,
    val gpuLinearRgbSource: GpuLinearRgbSource? = null,
    val gpuBayerSource: GpuBayerSource? = null,
    /** True only when lens-shading gain has already been multiplied into the fused pixels. */
    val lensShadingCorrectionApplied: Boolean = false,
    val mergedFrameCount: Int = 1,
    /**
     * MGC's normalized 128-bin spatial-merge correlation spectrum.
     *
     * Null means that the exact propagated model is unavailable and the default Spatial denoise
     * pass must be bypassed.
     */
    val mgcDenoiseCorrelation: FloatArray? = null,
    /**
     * Exact normalized camera-RGB read variance emitted by MGC Spatial.
     */
    val mgcDenoiseReadNoise: FloatArray? = null,
    /**
     * Exact normalized camera-RGB shot coefficient emitted by MGC Spatial.
     */
    val mgcDenoiseShotNoise: FloatArray? = null,
    /**
     * Exact process-local Q8 variance multiplier emitted by MGC Spatial and consumed before
     * DNG write.
     */
    val mgcSpatialStrengthMap: MgcSpatialStrengthMap? = null,
    /**
     * Process-local Sabre NoiseModel coefficient scale measured from accumulated Q8 green merge
     * weights. V25 does not apply a second reference-SNR lookup-table scale after
     * GetMergedNoiseModel.
     */
    val mgcSabreNoiseModelScale: Float? = null,
    /**
     * Merged output-frame SNR used by MGC FinishRaw to select luma/chroma tuning.
     * This is the linear signal-domain SNR, not ISO or sensor gain.
     */
    val mgcDenoiseTuningSnr: Float? = null,
    /** Reference-frame SNR used by MGC FinishRaw to select the sharpen curves. */
    val mgcSharpenTuningSnr: Float? = null,
    /** Exact FinishRaw sharpen_attenuation_scale generated from the reference-frame TET. */
    val mgcSharpenAttenuationScale: Float? = null,
    /** Capture-scoped Photon controls for the core imaging chain. */
    val coreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
    /**
     * True only for the debug reference-only isolation path. This state is process-local and is
     * never persisted into RAW/DNG metadata.
     */
    val mgcSpatialReferenceOnlyDiagnostic: Boolean = false,
)

enum class YuvHdrStackFrameRole {
    ZERO_EV,
    HIGH_EV,
    LOW_EV,
}

data class YuvHdrStackFrame(
    val image: SafeImage,
    val exposureProduct: Float,
    val role: YuvHdrStackFrameRole,
)

/**
 * Multi-Frame Stacker
 * 
 * Manages the native stacking process for burst captures.
 * Aligns and merges multiple frames to reduce noise and improve quality.
 */
object MultiFrameStacker {
    private const val TAG = "MultiFrameStacker"

    /**
     * Process a burst of images and return a stacked Bitmap.
     * 
     * @param images List of captured Images (YUV_420_888).
     * @return Stacked Bitmap (ARGB_8888), or null if failed.
     */
    @Synchronized
    fun processBurst(
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio?,
        enableSuperResolution: Boolean = false,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        val scale = if (enableSuperResolution) 2 else 1
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val targetW = dimensions.width() * scale
        val targetH = dimensions.height() * scale

        val inputFormat = images[0].format
        if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "GLES streaming stacker does not support image format=$inputFormat")
            images.forEach { it.close() }
            return null
        }
        RawStackRuntimeDebug.i(TAG) {
            "Starting GLES streaming stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
        }
        return try {
            GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = targetW,
                outputHeight = targetH,
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
                enableSuperResolution = enableSuperResolution,
            ).process(images).also { result ->
                if (result == null) {
                    PLog.w(TAG, "GLES streaming stacker failed")
                }
            }
        } finally {
            images.forEach { it.close() }
        }
    }

    @Synchronized
    fun processHdrBurstYuv(
        frames: List<YuvHdrStackFrame>,
        fusionExposureProducts: FloatArray?,
        rotation: Int,
        aspectRatio: AspectRatio?,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (frames.size < 3) return null
        val images = frames.map { it.image }
        val width = images[0].width
        val height = images[0].height
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val inputFormat = images[0].format

        if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "GLES HDR YUV stacker does not support image format=$inputFormat")
            images.forEach { it.close() }
            return null
        }

        val result = try {
            GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = dimensions.width(),
                outputHeight = dimensions.height(),
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
            ).processHdr(
                frames = frames.map {
                    GlesYuvStacker.HdrInputFrame(
                        image = it.image,
                        exposureProduct = it.exposureProduct,
                        role = when (it.role) {
                            YuvHdrStackFrameRole.ZERO_EV -> GlesYuvStacker.HdrFrameRole.ZERO_EV
                            YuvHdrStackFrameRole.HIGH_EV -> GlesYuvStacker.HdrFrameRole.HIGH_EV
                            YuvHdrStackFrameRole.LOW_EV -> GlesYuvStacker.HdrFrameRole.LOW_EV
                        },
                    )
                },
                exposureProducts = fusionExposureProducts,
            )
        } finally {
            images.forEach { it.close() }
        }
        return result
    }

    @Synchronized
    fun processBurstRaw(
        frames: List<RawStackFrame>,
        cfaPattern: Int,
        outputMode: MgcSpatialOutputMode = MgcSpatialOutputMode.BAYER,
        mergeMethod: MgcMergeMethod = when (outputMode) {
            MgcSpatialOutputMode.BAYER -> MgcMergeMethod.SPATIAL_BAYER
            MgcSpatialOutputMode.RGB -> MgcMergeMethod.SPATIAL_RGB
        },
        outputScale: Float = 1f,
        masterBlackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 1023,
        whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
        noiseProfileSelection: RawNoiseProfileSelection = RawNoiseProfileSelection.Camera2,
        lensShading: FloatArray? = null,
        lensShadingWidth: Int = 0,
        lensShadingHeight: Int = 0,
        applyLensShadingCorrection: Boolean = true,
        useCurrentGlContext: Boolean = false,
        exportGpuLinearRgbSource: Boolean = false,
        gpuLinearRgbStorage: GpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16UI,
        enableHdrFusion: Boolean = true,
        coreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
    ): RawStackResult? {
        if (frames.isEmpty()) return null
        val images = frames.map { it.image }
        val width = images[0].width
        val height = images[0].height
        // Output scaling is an RGB export transform shared by Spatial and Sabre. Only the
        // Bayer-preserving path must remain on the native sensor lattice.
        val effectiveOutputScale = resolveRawStackOutputScale(outputMode, outputScale)
        RawStackRuntimeDebug.d(TAG) {
            "Starting MGC ${if (mergeMethod == MgcMergeMethod.SABRE) "Sabre" else "Spatial ${outputMode.name}"} " +
                "fusion for ${images.size} frames. " +
                "Pattern=$cfaPattern outputScale=$effectiveOutputScale " +
                "BL=${masterBlackLevel.joinToString()} WL=$whiteLevel " +
                "noiseProfile=${noiseProfileSelection.id} " +
                "legacyHdrFlag=$enableHdrFusion"
        }
        val stackLensShading = validLensShadingOrNull(
            lensShading = lensShading,
            width = lensShadingWidth,
            height = lensShadingHeight,
            enabled = applyLensShadingCorrection && outputMode == MgcSpatialOutputMode.RGB,
        )
        return GlesMgcRawFusion(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = masterBlackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            noiseProfileSelection = noiseProfileSelection,
            lensShading = stackLensShading,
            lensShadingWidth = if (stackLensShading != null) lensShadingWidth else 0,
            lensShadingHeight = if (stackLensShading != null) lensShadingHeight else 0,
            outputMode = outputMode,
            mergeMethod = mergeMethod,
            outputScale = effectiveOutputScale,
            useCurrentGlContext = useCurrentGlContext,
            exportGpuLinearRgbSource = exportGpuLinearRgbSource,
            gpuLinearRgbStorage = gpuLinearRgbStorage,
            coreImagingTuning = coreImagingTuning.normalized(),
        ).processFrames(frames)
    }

    private fun validLensShadingOrNull(
        lensShading: FloatArray?,
        width: Int,
        height: Int,
        enabled: Boolean,
    ): FloatArray? {
        if (!enabled || lensShading == null || width <= 0 || height <= 0) return null
        return lensShading.takeIf { it.size >= width * height * 4 }
    }

}
