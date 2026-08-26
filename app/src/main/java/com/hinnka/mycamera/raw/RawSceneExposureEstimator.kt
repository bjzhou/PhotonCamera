package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.preview.PortraitMaskSnapshot
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.support.common.FileUtil
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal data class RawSceneLinearFrame(
    val width: Int,
    val height: Int,
    /** Interleaved, colorized linear-RGB samples from the exact RAW frame. */
    val rgb: FloatArray,
    val fastMomentsStats: RawSceneFastMomentsRawStats,
    /** Camera RGB and WB gains retained for MGC 9.7's pre-ML table AE path. */
    val legacyAeInput: RawSceneLegacyAeInput? = null,
)

internal data class RawSceneLegacyAeInput(
    /** MGC Classic AE's two-component, mask-weighted U15 camera-RGB surface. */
    val splitHdrImage: RawSceneClassicAeMeteringFrame,
    /** MGC ExposeHq's [R, average-G, B] gain vector. */
    val rgbGains: FloatArray,
    /** Row-major camera-RGB transform consumed by MGC ExposeHq after exposure and WB. */
    val rgbTransform: FloatArray,
)

/** Platform-independent equivalent of MGC's Classic-AE SplitHdrImage. */
data class RawSceneClassicAeMeteringFrame(
    val width: Int,
    val height: Int,
    /** Interleaved camera RGB for samples brighter than the local box mean. */
    val brightRgb: FloatArray,
    /** Interleaved camera RGB for the remaining samples. */
    val darkRgb: FloatArray,
    /** Exact unsigned-byte bright-sample ratio used by MGC's weighted histograms. */
    val brightMask: ByteArray,
    /**
     * Fraction reported by RawToLoResRgb before box resampling, black subtraction, and spatial
     * gain: a complete CFA period is clipped when any of its RAW samples reaches white level.
     * This is the Classic table-query field, not the mode-2 1/16 RAW clipping mask.
     */
    val clippedFraction: Float? = null,
)

/** The 1/16-resolution RAW-domain statistics consumed only by Fast Moments mode 2. */
data class RawSceneFastMomentsMeteringFrame(
    /** 64 x 64 sensor-normalized camera RGB before LSC, AWB, rgb2rgb, and U15 conversion. */
    val sensorRgb: FloatArray,
    /** Capture-time gain map owned by this metering frame, independent of fused-pixel LSC. */
    val lensShadingMap: FloatArray? = null,
    val lensShadingMapWidth: Int = 0,
    val lensShadingMapHeight: Int = 0,
    val lensShadingMapGrid: FloatArray? = null,
    /** Selected base RAW converted through the same non-QCOM Classic path as DNG refresh. */
    internal val classicAe: RawSceneClassicAeMeteringFrame? = null,
)

data class RawSceneFastMomentsRawStats(
    val width: Int,
    val height: Int,
    /** Pixel extent represented before the fixed 1/16 RAW-statistics downsample. */
    val sourceWidth: Int,
    val sourceHeight: Int,
    /** Per-cell component maxima in canonical [R, Gr, Gb, B] order. */
    val channelMax: FloatArray,
    /** True for direct black-subtracted sensor samples; false for camera-RGB fallback data. */
    val sensorNormalized: Boolean,
    /** Normalized source bounds represented by this statistics surface. */
    val sourceBounds: FloatArray,
    val sourceRotationDegrees: Int,
    /**
     * Optional metering surface from the selected base RAW. Carrying it alongside the clipping
     * surface prevents ML AE from accidentally observing the merged LinearRaw image.
     */
    val baseFrameMetering: RawSceneFastMomentsMeteringFrame? = null,
)

/** Capture-side value consumed by MGC HDRNet. */
internal data class RawSceneExposureEstimate(
    val hdrRatio: Float,
    val finalShortTetMs: Float,
    val finalLongTetMs: Float,
    val finalShortGain: Float,
    val portraitRelightingGain: Float,
    val safeUnderexposure: Float,
    val fractionPixelsClippedAtFinalShortTet: Float,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
        require(finalShortTetMs.isFinite() && finalShortTetMs > 0f)
        require(finalLongTetMs.isFinite() && finalLongTetMs >= finalShortTetMs)
        require(finalShortGain.isFinite() && finalShortGain > 0f)
        require(portraitRelightingGain.isFinite() && portraitRelightingGain > 0f)
        require(safeUnderexposure.isFinite() && safeUnderexposure >= 1f)
        require(
            fractionPixelsClippedAtFinalShortTet.isFinite() &&
                fractionPixelsClippedAtFinalShortTet in 0f..1f,
        )
    }
}

internal data class RawSceneBrightnessMeasurement(
    val geometricSignal: Float,
    val predictedImageBrightness: Float,
    val exposureTimeMs: Float,
    val overallGain: Float,
    val currentTetMs: Float,
    val sensorSensitivity: Float,
    val logSceneBrightness: Float,
)

internal enum class RawSceneExposureShotMaxSource {
    MAX_POST_CAPTURE_GAIN,
    MAX_OVERALL_GAIN,
}

internal data class RawSceneExposureShotRange(
    /** Lower endpoint supplied to ComputeAeResults before mode-2 RAW-stat adjustment. */
    val requestMinTetMs: Float,
    /** Lower endpoint reconstructed by ProcessAeStats from the current frame and request. */
    val minTetMs: Float,
    val maxTetMs: Float,
    val maxPostCaptureTetMs: Float,
    val maxOverallTetMs: Float,
    val maxSource: RawSceneExposureShotMaxSource,
)

internal data class RawSceneExposureBranches(
    val shortLogGain: Float,
    val longLogGain: Float,
    val portraitLogGain: Float,
)

internal data class RawSceneExposureIdeals(
    val shortTetMs: Float,
    val longTetMs: Float,
    val portraitTetMs: Float,
    val shortGain: Float,
    val longGain: Float,
    val portraitGain: Float,
)

/** State produced by MGC's Fast Moments process-AE-stats step (`ComputeAeResults(..., true)`). */
internal data class RawSceneFastMomentsAeStats(
    val processAeStatsExecuted: Boolean,
    val statsShotMinTetMs: Float,
    val statsShotMaxTetMs: Float,
    val anticipatedUnderexposure: Float,
    val safeUnderexposure: Float,
    val allowedUnderexposure: Float,
    val adjustedShotMinTetMs: Float,
    val fractionPixelsClippedAtBaseTet: Float,
)

/** Inputs to MGC's post-inference ComputeAeResults finalization. */
internal data class RawSceneExposureFinalization(
    val shotMinTetMs: Float,
    val shotMaxTetMs: Float,
    /** User-requested AE target offset. MGC applies it after ML inference, in stops. */
    val exposureCompensationEv: Float = 0f,
    val maxHdrRatio: Float? = null,
    val weightedFractionOfPixelsFromLongExposure: Float = 0f,
    val touchRoiClipProtectionTripped: Boolean = false,
    val safeUnderexposureTetMs: Float? = null,
    val finalShortTetOverrideMs: Float? = null,
    val finalLongTetOverrideMs: Float? = null,
    val finalPortraitTetOverrideMs: Float? = null,
)

internal data class RawSceneExposureFusion(
    val idealShortTetMs: Float,
    val idealLongTetMs: Float,
    val idealPortraitTetMs: Float,
    val exposureCompensationGain: Float,
    val compensatedShortTetMs: Float,
    val compensatedLongTetMs: Float,
    val finalShortTetMs: Float,
    val finalLongTetMs: Float,
    val finalPortraitTetMs: Float,
    val shortIdealGain: Float,
    val longIdealGain: Float,
    val portraitIdealGain: Float,
    val finalShortGain: Float,
    val finalLongGain: Float,
    val finalPortraitGain: Float,
    val finalGain: Float,
    val hdrRatioBeforeLimit: Float,
    val finalHdrRatio: Float,
    val hdrRatioLimited: Boolean,
    val safeUnderexposureApplied: Boolean,
    val sourceClippedFraction: Float,
    val shortClippedFraction: Float,
    val longClippedFraction: Float,
    val portraitClippedFraction: Float,
    val finalClippedFraction: Float,
)

/** Pure scene-coordinate, model-input and branch-fusion math. */
internal object RawSceneExposureMath {
    private const val TAG = "RawSceneExposureMath"
    const val INPUT_WIDTH = 64
    const val INPUT_HEIGHT = 64
    const val COLOR_CHANNELS = 4
    const val SEMANTIC_CHANNELS = 5
    const val INPUT_CHANNELS = COLOR_CHANNELS + SEMANTIC_CHANNELS
    const val FAST_MOMENTS_RAW_STATS_DOWNSAMPLE = RawFastMomentsStatsAlgorithm.DOWNSAMPLE

    // Ordinary MGC/Google ZSL exposure tuning. These are finalizer constraints, not sensor limits.
    const val MAX_POST_CAPTURE_GAIN = 26.5f
    const val MAX_OVERALL_GAIN = 102f
    // MGC 9.7 CaptureTuning::max_hdr_ratio(kHdrPlusOn, autoNight=false, factor=-1).
    // This limits the AE final long/short TET pair before the highlight-preservation step.
    const val FAST_MOMENTS_MAX_HDR_RATIO = 9.8f
    const val MGC_DEFAULT_UNSAFE_UNDEREXPOSURE_MULTIPLIER = 1.1f
    const val FACE_MASK_RMS_FLOOR = 0.02f
    // DNG exposure equations use ISO 100 as the portable reference sensitivity. Supported sensor
    // ISO ranges are not part of the DNG image contract and must not be read from the current phone.
    const val DNG_REFERENCE_SENSITIVITY_ISO = 100

    // MGC stores its 64 x 64 metering RGB as U15 and converts it with 1/32768. Both scene
    // brightness measurement and PrepareMlAeInput consume that same normalized surface.
    private const val SIGNAL_FLOOR = 10f / 32768f
    private const val METERING_U15_MAX = 32767
    private const val METERING_U15_SCALE = 32768f
    // PrepareMlAeInput converts every color channel to ln(max(linearRgb, 0) + 1e-6).
    private const val MODEL_RGB_LOG_FLOOR = 1e-6f
    // PrepareMlAeInput's advanced-channel fallback does not clear every unavailable semantic
    // plane. Missing saliency is initialized to 0.05 (0x3D4CCCCD); portrait mask, skin type,
    // skin mask, and the remaining semantic plane stay at zero. The learned models distinguish
    // this sentinel from a real all-zero saliency map.
    private const val MISSING_SALIENCY_VALUE = 0.05f
    // Semantic enum 3 is MGC's portrait mask; the combined model stores enums 3..7 after RGB/SB.
    private const val PORTRAIT_MASK_SEMANTIC_CHANNEL = 0
    private const val SALIENCY_SEMANTIC_CHANNEL = 3
    // MeasureLogSceneBrightness uses the reflected-light calibration constant directly.
    private const val SCENE_BRIGHTNESS_CALIBRATION = 14.6
    // MGC 9.7 V25's blueline tuning supplies a positive hard-coded sensor_sensitivity, so
    // EstimateSensorSensitivity does not enter its min_iso / f_number^2 fallback. Running the
    // original libgcam_ae.so on the PXL reference SplitHdrImage reports 17.61 and reproduces the
    // MakerNote short/long scene coordinates to within 0.003 natural-log units.
    private const val MGC_V25_SENSOR_SENSITIVITY = 17.61
    private const val SCENE_BRIGHTNESS_LOG_FLOOR = 1e-4
    // RunMlAeCore performs expf(model_output) - 1e-6 before using every branch gain.
    private const val MODEL_LINEAR_GAIN_EPSILON = 1e-6
    private const val NANOS_PER_MILLISECOND = 1_000_000.0
    private const val MILLIS_PER_SECOND = 1_000.0
    private const val HIGHLIGHT_CLIP_LEVEL = 1.0
    private const val RAW_CLIP_LEVEL = 1.0f
    private const val HIGHLIGHT_PRESERVATION_RATIO_FLOOR = 24f
    fun measureSceneBrightness(
        frame: RawSceneLinearFrame,
        exposureTimeNs: Long,
        sensitivityIso: Int,
        referenceSensitivityIso: Int,
        aperture: Float,
    ): RawSceneBrightnessMeasurement? {
        val pixelCount = frame.width * frame.height
        if (frame.width <= 0 || frame.height <= 0 || frame.rgb.size != pixelCount * 3) {
            return null
        }
        if (exposureTimeNs <= 0L || sensitivityIso <= 0 || referenceSensitivityIso <= 0 ||
            !aperture.isFinite() || aperture <= 0f
        ) {
            return null
        }

        var logSignalSum = 0.0
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            val red = frame.rgb[offset]
            val green = frame.rgb[offset + 1]
            val blue = frame.rgb[offset + 2]
            if (!red.isFinite() || !green.isFinite() || !blue.isFinite()) return null
            val signal = maxOf(red, green, blue, 0f).toDouble()
            logSignalSum += kotlin.math.ln(signal + SIGNAL_FLOOR)
        }
        val geometricSignal = (
            kotlin.math.exp(logSignalSum / pixelCount.toDouble()) - SIGNAL_FLOOR
            ).coerceAtLeast(0.0)
        if (!geometricSignal.isFinite() || geometricSignal <= 0.0) return null

        val predictedImageBrightness = geometricSignal
        val exposureTimeMs = exposureTimeNs.toDouble() / NANOS_PER_MILLISECOND
        // MGC FrameMetadata defines overall_gain against the sensor's reference sensitivity.
        // Its current TET is exposure_time_ms * overall_gain; RAW sample normalization does not
        // remove that metadata term from the scene-brightness coordinate.
        val overallGain = sensitivityIso.toDouble() / referenceSensitivityIso.toDouble()
        val currentTetMs = exposureTimeMs * overallGain
        if (!currentTetMs.isFinite() || currentTetMs <= 0.0) return null
        // RunAe first consumes the positive hard-coded sensor_sensitivity from the V25 tuning.
        // Aperture and min ISO only participate in MGC's fallback path, which is not selected by
        // this tuning. Using that fallback here shifted every table scene coordinate downward by
        // ln((minIso / f^2) / 14.6), about 1.01 for the reference capture.
        val sensorSensitivity = MGC_V25_SENSOR_SENSITIVITY
        val normalizedExposure =
            (sensorSensitivity / SCENE_BRIGHTNESS_CALIBRATION) *
                (currentTetMs / MILLIS_PER_SECOND)
        if (!normalizedExposure.isFinite() || normalizedExposure <= 0.0) return null
        val logSceneBrightness = kotlin.math.ln(
            predictedImageBrightness / normalizedExposure + SCENE_BRIGHTNESS_LOG_FLOOR,
        )
        if (!logSceneBrightness.isFinite()) return null

        return RawSceneBrightnessMeasurement(
            geometricSignal = geometricSignal.toFloat(),
            predictedImageBrightness = predictedImageBrightness.toFloat(),
            exposureTimeMs = exposureTimeMs.toFloat(),
            overallGain = overallGain.toFloat(),
            currentTetMs = currentTetMs.toFloat(),
            sensorSensitivity = sensorSensitivity.toFloat(),
            logSceneBrightness = logSceneBrightness.toFloat(),
        )
    }

    /** Reproduces MGC's ordinary shot-TET range construction before ComputeAeResults. */
    fun resolveMgcShotRange(
        exposureTimeMs: Float,
        overallGain: Float,
        deviceMinTetMs: Float = RawSceneExposureDeviceLimits.MIN_TET_MS,
        maxPostCaptureGain: Float = MAX_POST_CAPTURE_GAIN,
        maxOverallGain: Float = MAX_OVERALL_GAIN,
    ): RawSceneExposureShotRange? {
        if (!exposureTimeMs.isFinite() || exposureTimeMs <= 0f ||
            !overallGain.isFinite() || overallGain <= 0f ||
            !deviceMinTetMs.isFinite() || deviceMinTetMs <= 0f ||
            !maxPostCaptureGain.isFinite() || maxPostCaptureGain < 1f ||
            !maxOverallGain.isFinite() || maxOverallGain < 1f
        ) {
            return null
        }
        val currentTetMs = exposureTimeMs * overallGain
        val maxPostCaptureTetMs = currentTetMs * maxPostCaptureGain
        val maxOverallTetMs = exposureTimeMs * maxOverallGain
        if (!currentTetMs.isFinite() || !maxPostCaptureTetMs.isFinite() ||
            !maxOverallTetMs.isFinite()
        ) {
            return null
        }
        val minTetMs = maxOf(currentTetMs, deviceMinTetMs)
        val limitedMaxTetMs = minOf(maxPostCaptureTetMs, maxOverallTetMs)
        val maxTetMs = maxOf(minTetMs, limitedMaxTetMs)
        val maxSource = if (maxPostCaptureTetMs <= maxOverallTetMs) {
            RawSceneExposureShotMaxSource.MAX_POST_CAPTURE_GAIN
        } else {
            RawSceneExposureShotMaxSource.MAX_OVERALL_GAIN
        }
        return RawSceneExposureShotRange(
            requestMinTetMs = deviceMinTetMs,
            minTetMs = minTetMs,
            maxTetMs = maxTetMs,
            maxPostCaptureTetMs = maxPostCaptureTetMs,
            maxOverallTetMs = maxOverallTetMs,
            maxSource = maxSource,
        )
    }

    fun writeCombinedModelInput(
        frame: RawSceneLinearFrame,
        logSceneBrightness: Float,
        destination: ByteBuffer,
        portraitMask: FloatArray? = null,
    ): Boolean {
        if (!validateInput(frame, logSceneBrightness) ||
            destination.capacity() < frame.width * frame.height * INPUT_CHANNELS * Float.SIZE_BYTES ||
            (portraitMask != null &&
                (portraitMask.size != frame.width * frame.height ||
                    portraitMask.any { !it.isFinite() || it !in 0f..1f }))
        ) {
            return false
        }
        destination.clear()
        for (pixel in 0 until frame.width * frame.height) {
            val offset = pixel * 3
            destination.putFloat(modelLogColor(frame.rgb[offset]))
            destination.putFloat(modelLogColor(frame.rgb[offset + 1]))
            destination.putFloat(modelLogColor(frame.rgb[offset + 2]))
            destination.putFloat(logSceneBrightness)
            // MGC forces the advanced network when semantic inputs are unavailable. Its channel
            // order after RGB + log-scene-brightness is [3, 4, 5, 6, 7], where enum 6 is
            // saliency and uses the non-zero missing-map sentinel below.
            repeat(SEMANTIC_CHANNELS) { semanticChannel ->
                destination.putFloat(
                    when (semanticChannel) {
                        PORTRAIT_MASK_SEMANTIC_CHANNEL -> portraitMask?.get(pixel) ?: 0f
                        SALIENCY_SEMANTIC_CHANNEL -> MISSING_SALIENCY_VALUE
                        else -> 0f
                    },
                )
            }
        }
        destination.rewind()
        return true
    }

    fun writeSplitModelInputs(
        frame: RawSceneLinearFrame,
        logSceneBrightness: Float,
        colorDestination: ByteBuffer,
        semanticDestination: ByteBuffer,
    ): Boolean {
        val pixelCount = frame.width * frame.height
        if (!validateInput(frame, logSceneBrightness) ||
            colorDestination.capacity() < pixelCount * COLOR_CHANNELS * Float.SIZE_BYTES ||
            semanticDestination.capacity() < pixelCount * SEMANTIC_CHANNELS * Float.SIZE_BYTES
        ) {
            return false
        }
        colorDestination.clear()
        semanticDestination.clear()
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            colorDestination.putFloat(modelLogColor(frame.rgb[offset]))
            colorDestination.putFloat(modelLogColor(frame.rgb[offset + 1]))
            colorDestination.putFloat(modelLogColor(frame.rgb[offset + 2]))
            colorDestination.putFloat(logSceneBrightness)
            repeat(SEMANTIC_CHANNELS) { semanticChannel ->
                semanticDestination.putFloat(
                    if (semanticChannel == SALIENCY_SEMANTIC_CHANNEL) {
                        MISSING_SALIENCY_VALUE
                    } else {
                        0f
                    },
                )
            }
        }
        colorDestination.rewind()
        semanticDestination.rewind()
        return true
    }

    /** Maps the preview-space face ellipse back into MGC's unrotated 64 x 64 sensor grid. */
    fun prepareFaceMeteringMask(snapshot: PortraitMaskSnapshot): FloatArray? {
        if (snapshot.width <= 0 || snapshot.height <= 0 ||
            snapshot.confidence.size != snapshot.width * snapshot.height
        ) {
            return null
        }
        val orientation = Math.floorMod(snapshot.sensorOrientationDegrees, 360)
        if (orientation != 0 && orientation != 90 && orientation != 180 && orientation != 270) {
            return null
        }
        val result = FloatArray(INPUT_WIDTH * INPUT_HEIGHT)
        for (targetY in 0 until INPUT_HEIGHT) {
            val sensorY = (targetY + 0.5f) / INPUT_HEIGHT.toFloat()
            for (targetX in 0 until INPUT_WIDTH) {
                val sensorX = (targetX + 0.5f) / INPUT_WIDTH.toFloat()
                val rotatedX = if (snapshot.isFrontFacing) 1f - sensorX else sensorX
                val rotatedY = sensorY
                val (previewX, previewY) = when (orientation) {
                    0 -> rotatedX to rotatedY
                    90 -> (1f - rotatedY) to rotatedX
                    180 -> (1f - rotatedX) to (1f - rotatedY)
                    270 -> rotatedY to (1f - rotatedX)
                    else -> return null
                }
                result[targetY * INPUT_WIDTH + targetX] = bilinearMaskSample(
                    values = snapshot.confidence,
                    width = snapshot.width,
                    height = snapshot.height,
                    normalizedX = previewX,
                    normalizedY = previewY,
                )
            }
        }
        return result
    }

    fun faceMaskRms(mask: FloatArray?): Float? {
        if (mask == null || mask.isEmpty()) return null
        var sumSquares = 0.0
        for (value in mask) {
            if (!value.isFinite() || value !in 0f..1f) return null
            sumSquares += value.toDouble() * value.toDouble()
        }
        return kotlin.math.sqrt(sumSquares / mask.size.toDouble()).toFloat()
            .takeIf(Float::isFinite)
    }

    private fun bilinearMaskSample(
        values: FloatArray,
        width: Int,
        height: Int,
        normalizedX: Float,
        normalizedY: Float,
    ): Float {
        val x = (normalizedX.coerceIn(0f, 1f) * width - 0.5f).coerceIn(0f, width - 1f)
        val y = (normalizedY.coerceIn(0f, 1f) * height - 0.5f).coerceIn(0f, height - 1f)
        val x0 = x.toInt().coerceIn(0, width - 1)
        val y0 = y.toInt().coerceIn(0, height - 1)
        val x1 = (x0 + 1).coerceAtMost(width - 1)
        val y1 = (y0 + 1).coerceAtMost(height - 1)
        val fx = x - x0
        val fy = y - y0
        val top = values[y0 * width + x0] * (1f - fx) + values[y0 * width + x1] * fx
        val bottom = values[y1 * width + x0] * (1f - fx) + values[y1 * width + x1] * fx
        return (top * (1f - fy) + bottom * fy).coerceIn(0f, 1f)
    }

    /**
     * Reproduces RawToLoResRgb's post-box-filter color contract.
     *
     * [cameraRgb] is either the selected base frame's unshaded sensor RGB or an already
     * lens-shading-corrected camera-RGB fallback. MGC applies spatial gain and AWB before its
     * unit clamp, then applies AwbInfo.rgb2rgb and clamps again before storing U15.
     */
    fun prepareFastMomentsMeteringRgb(
        cameraRgb: FloatArray,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        rgbGains: FloatArray,
        rgbTransform: FloatArray,
        lensShadingStats: RawSceneFastMomentsRawStats? = null,
    ): FloatArray? {
        val pixelCount = width * height
        if (width != INPUT_WIDTH || height != INPUT_HEIGHT ||
            cameraRgb.size != pixelCount * 3 ||
            rgbGains.size < 3 || rgbTransform.size != 9 ||
            cameraRgb.any { !it.isFinite() } ||
            rgbGains.take(3).any { !it.isFinite() || it <= 0f } ||
            rgbTransform.any { !it.isFinite() }
        ) {
            return null
        }
        if (lensShadingStats != null && lensShadingStats.sourceBounds.size < 4) return null

        val output = FloatArray(cameraRgb.size)
        for (y in 0 until height) {
            val v = (y + 0.5f) / height.toFloat()
            for (x in 0 until width) {
                val u = (x + 0.5f) / width.toFloat()
                val inputOffset = (y * width + x) * 3
                val lscRed = lensShadingStats?.let { stats ->
                    lensShadingGainAtStatsUv(metadata, stats, 0, u, v)
                } ?: 1f
                val lscGreen = lensShadingStats?.let { stats ->
                    0.5f * (
                        lensShadingGainAtStatsUv(metadata, stats, 1, u, v) +
                            lensShadingGainAtStatsUv(metadata, stats, 2, u, v)
                        )
                } ?: 1f
                val lscBlue = lensShadingStats?.let { stats ->
                    lensShadingGainAtStatsUv(metadata, stats, 3, u, v)
                } ?: 1f
                if (!validPositiveTets(lscRed, lscGreen, lscBlue)) return null

                val red = (cameraRgb[inputOffset] * lscRed * rgbGains[0]).coerceIn(0f, 1f)
                val green = (cameraRgb[inputOffset + 1] * lscGreen * rgbGains[1])
                    .coerceIn(0f, 1f)
                val blue = (cameraRgb[inputOffset + 2] * lscBlue * rgbGains[2])
                    .coerceIn(0f, 1f)
                val transformedRed = (
                    rgbTransform[0] * red + rgbTransform[1] * green +
                        rgbTransform[2] * blue
                    ).coerceIn(0f, 1f)
                val transformedGreen = (
                    rgbTransform[3] * red + rgbTransform[4] * green +
                        rgbTransform[5] * blue
                    ).coerceIn(0f, 1f)
                val transformedBlue = (
                    rgbTransform[6] * red + rgbTransform[7] * green +
                        rgbTransform[8] * blue
                    ).coerceIn(0f, 1f)
                if (!transformedRed.isFinite() || !transformedGreen.isFinite() ||
                    !transformedBlue.isFinite()
                ) {
                    return null
                }
                output[inputOffset] = toMeteringU15(transformedRed)
                output[inputOffset + 1] = toMeteringU15(transformedGreen)
                output[inputOffset + 2] = toMeteringU15(transformedBlue)
            }
        }
        return output
    }

    /** Reconstructs the camera-RGB surface consumed by MGC 9.7's table AE. */
    fun prepareMgcLegacyMeteringRgb(
        cameraRgb: FloatArray,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        lensShadingStats: RawSceneFastMomentsRawStats? = null,
    ): FloatArray? {
        val pixelCount = width * height
        if (width != INPUT_WIDTH || height != INPUT_HEIGHT ||
            cameraRgb.size != pixelCount * 3 || cameraRgb.any { !it.isFinite() } ||
            (lensShadingStats != null && lensShadingStats.sourceBounds.size < 4)
        ) {
            return null
        }
        val output = FloatArray(cameraRgb.size)
        for (y in 0 until height) {
            val v = (y + 0.5f) / height.toFloat()
            for (x in 0 until width) {
                val u = (x + 0.5f) / width.toFloat()
                val offset = (y * width + x) * 3
                val lscRed = lensShadingStats?.let { stats ->
                    lensShadingGainAtStatsUv(metadata, stats, 0, u, v)
                } ?: 1f
                val lscGreen = lensShadingStats?.let { stats ->
                    0.5f * (
                        lensShadingGainAtStatsUv(metadata, stats, 1, u, v) +
                            lensShadingGainAtStatsUv(metadata, stats, 2, u, v)
                        )
                } ?: 1f
                val lscBlue = lensShadingStats?.let { stats ->
                    lensShadingGainAtStatsUv(metadata, stats, 3, u, v)
                } ?: 1f
                if (!validPositiveTets(lscRed, lscGreen, lscBlue)) return null
                output[offset] = toMeteringU15(
                    (cameraRgb[offset] * lscRed).coerceIn(0f, 1f),
                )
                output[offset + 1] = toMeteringU15(
                    (cameraRgb[offset + 1] * lscGreen).coerceIn(0f, 1f),
                )
                output[offset + 2] = toMeteringU15(
                    (cameraRgb[offset + 2] * lscBlue).coerceIn(0f, 1f),
                )
            }
        }
        return output
    }

    /** Applies MGC RawToLoResRgb's spatial-gain stage to both Classic split components. */
    fun prepareMgcClassicAeMeteringFrame(
        split: RawSceneClassicAeMeteringFrame,
        metadata: RawMetadata,
        sourceBounds: FloatArray,
        lensShadingStats: RawSceneFastMomentsRawStats? = null,
    ): RawSceneClassicAeMeteringFrame? {
        val pixelCount = split.width * split.height
        if (split.width <= 0 || split.height <= 0 ||
            split.brightRgb.size != pixelCount * 3 || split.darkRgb.size != pixelCount * 3 ||
            split.brightMask.size != pixelCount || sourceBounds.size < 4 ||
            split.brightRgb.any { !it.isFinite() || it < 0f } ||
            split.darkRgb.any { !it.isFinite() || it < 0f }
        ) {
            return null
        }
        fun gain(channel: Int, u: Float, v: Float): Float {
            return lensShadingStats?.let { stats ->
                lensShadingGainAtStatsUv(metadata, stats, channel, u, v)
            } ?: lensShadingGain(
                metadata = metadata,
                channel = channel,
                sourceU = sourceBounds[0] + (sourceBounds[2] - sourceBounds[0]) * u,
                sourceV = sourceBounds[1] + (sourceBounds[3] - sourceBounds[1]) * v,
            )
        }
        val bright = FloatArray(split.brightRgb.size)
        val dark = FloatArray(split.darkRgb.size)
        for (y in 0 until split.height) {
            val v = (y + 0.5f) / split.height.toFloat()
            for (x in 0 until split.width) {
                val u = (x + 0.5f) / split.width.toFloat()
                val gains = floatArrayOf(
                    gain(0, u, v),
                    0.5f * (gain(1, u, v) + gain(2, u, v)),
                    gain(3, u, v),
                )
                if (gains.any { !it.isFinite() || it <= 0f }) return null
                val offset = (y * split.width + x) * 3
                for (channel in 0..2) {
                    bright[offset + channel] =
                        (split.brightRgb[offset + channel] * gains[channel]).coerceAtLeast(0f)
                    dark[offset + channel] =
                        (split.darkRgb[offset + channel] * gains[channel]).coerceAtLeast(0f)
                }
            }
        }
        return RawSceneClassicAeMeteringFrame(
            width = split.width,
            height = split.height,
            brightRgb = bright,
            darkRgb = dark,
            brightMask = split.brightMask,
            clippedFraction = split.clippedFraction,
        )
    }

    fun modelLogGainToLinear(logGain: Float): Float? {
        if (!logGain.isFinite()) return null
        val gain = kotlin.math.exp(logGain.toDouble()) - MODEL_LINEAR_GAIN_EPSILON
        return gain.takeIf { it.isFinite() && it > 0.0 }?.toFloat()
    }

    fun linearGainToModelLog(gain: Float): Float? {
        if (!gain.isFinite() || gain <= 0f) return null
        val logGain = kotlin.math.ln(gain + MODEL_LINEAR_GAIN_EPSILON)
        return logGain.takeIf(Double::isFinite)?.toFloat()
    }

    fun resolveIdealExposure(
        currentTetMs: Float,
        branches: RawSceneExposureBranches,
    ): RawSceneExposureIdeals? {
        if (!currentTetMs.isFinite() || currentTetMs <= 0f) return null
        val shortGain = modelLogGainToLinear(branches.shortLogGain) ?: return null
        val longGain = modelLogGainToLinear(branches.longLogGain) ?: return null
        val portraitGain = modelLogGainToLinear(branches.portraitLogGain) ?: return null
        val shortTetMs = currentTetMs * shortGain
        val longTetMs = currentTetMs * longGain
        val portraitTetMs = currentTetMs * portraitGain
        if (!validPositiveTets(shortTetMs, longTetMs, portraitTetMs)) return null
        return RawSceneExposureIdeals(
            shortTetMs = shortTetMs,
            longTetMs = longTetMs,
            portraitTetMs = portraitTetMs,
            shortGain = shortGain,
            longGain = longGain,
            portraitGain = portraitGain,
        )
    }

    /**
     * Reproduces the extra state transition selected by Fast Moments' mode 2 request.
     *
     * MGC first computes the base-frame shot range and initial ML ideals. If the base frame is
     * longer than the shortest learned ideal, `ComputeSafeUnderexposure` examines RAW-clipped
     * samples. At every clipped CFA location it evaluates white-balance gain times spatial gain,
     * takes the global minimum and clamps it to at least one. That factor is then used to lower the
     * shot-min TET before the common AE finalizer runs.
     */
    fun processFastMomentsAeStats(
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        currentTetMs: Float,
        shotRange: RawSceneExposureShotRange,
        ideals: RawSceneExposureIdeals,
    ): RawSceneFastMomentsAeStats? {
        if (!currentTetMs.isFinite() || currentTetMs <= 0f ||
            !validTetRange(shotRange.minTetMs, shotRange.maxTetMs)
        ) {
            return null
        }
        val shortestHdrIdealTetMs = minOf(ideals.shortTetMs, ideals.longTetMs)
        if (!shortestHdrIdealTetMs.isFinite() || shortestHdrIdealTetMs <= 0f) return null
        val anticipatedUnderexposure = maxOf(
            shotRange.minTetMs / shortestHdrIdealTetMs,
            1f,
        )
        val baseRawStats = measureRawClipping(
            frame = frame,
            metadata = metadata,
            relativeTetGain = 1f,
            collectSafeUnderexposure = anticipatedUnderexposure > 1f,
        ) ?: return null
        val safeUnderexposure = if (anticipatedUnderexposure > 1f) {
            baseRawStats.safeUnderexposure
        } else {
            1f
        }
        // ProcessAeStats multiplies ComputeSafeUnderexposure by the default unsafe-underexposure
        // factor (1.1). The optional debug flag replaces this multiplier with infinity, but is not
        // enabled by the V25 production path.
        val allowedUnderexposure =
            safeUnderexposure * MGC_DEFAULT_UNSAFE_UNDEREXPOSURE_MULTIPLIER
        // ComputeSafeUnderexposure deliberately returns FLT_MAX when no RAW sample is clipped.
        // Multiplying that sentinel by 1.1 overflows to +Infinity, which still means unrestricted
        // underexposure in MGC: shotMin / +Infinity becomes zero and requestMin remains the floor.
        // Reject NaN/negative state, but do not reinterpret this valid sentinel as an AE failure.
        if (allowedUnderexposure.isNaN() || allowedUnderexposure < 1f) return null
        // AArch64 `fcsel ..., mi` at MGC 9.7's ProcessAeStats boundary selects the
        // larger endpoint: the RAW-derived underexposure may lower the base-frame
        // minimum, but it must never cross the request/device minimum.
        val adjustedShotMinTetMs = maxOf(
            shotRange.requestMinTetMs,
            shotRange.minTetMs / allowedUnderexposure,
        )
        if (!adjustedShotMinTetMs.isFinite() || adjustedShotMinTetMs <= 0f) return null
        return RawSceneFastMomentsAeStats(
            processAeStatsExecuted = true,
            statsShotMinTetMs = shotRange.minTetMs,
            statsShotMaxTetMs = shotRange.maxTetMs,
            anticipatedUnderexposure = anticipatedUnderexposure,
            safeUnderexposure = safeUnderexposure,
            allowedUnderexposure = allowedUnderexposure,
            adjustedShotMinTetMs = adjustedShotMinTetMs,
            fractionPixelsClippedAtBaseTet = baseRawStats.clippedFraction,
        )
    }

    fun fractionPixelsClippedAtTet(
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        relativeTetGain: Float,
    ): Float? = measureRawClipping(
        frame = frame,
        metadata = metadata,
        relativeTetGain = relativeTetGain,
        collectSafeUnderexposure = false,
    )?.clippedFraction

    /**
     * Reproduces the MGC ML-AE ideal-TET to final-TET state transition.
     *
     * The three neural outputs are exposure gains relative to [currentTetMs]. MGC first turns
     * them into absolute ideal TETs. The final short TET starts at the shortest positive ideal TET;
     * long and portrait remain independent capture roles. MGC then applies the requested exposure
     * compensation to the desired short and long TETs. Shot-range, HDR-ratio,
     * safe-underexposure and explicit final-TET overrides follow in that order, followed by the
     * hard invariant final_short_tet <= min(final_long_tet, final_portrait_tet).
     */
    fun finalizeAeResults(
        frame: RawSceneLinearFrame,
        currentTetMs: Float,
        branches: RawSceneExposureBranches,
        finalization: RawSceneExposureFinalization,
    ): RawSceneExposureFusion? {
        if (!currentTetMs.isFinite() || currentTetMs <= 0f ||
            !validTetRange(finalization.shotMinTetMs, finalization.shotMaxTetMs) ||
            !finalization.exposureCompensationEv.isFinite()
        ) {
            return null
        }
        val ideals = resolveIdealExposure(currentTetMs, branches) ?: return null
        val shortIdealGain = ideals.shortGain
        val longIdealGain = ideals.longGain
        val portraitIdealGain = ideals.portraitGain
        val idealShortTetMs = ideals.shortTetMs
        val idealLongTetMs = ideals.longTetMs
        val idealPortraitTetMs = ideals.portraitTetMs
        // AeHelper::ComputeAeResults applies ShotParams::exposure_compensation after the ML
        // ideals are decoded. The current capture TET defines the re-exposure starting point;
        // this separate factor moves the desired output target and therefore is not already
        // represented by the shutter/ISO of an underexposed metering frame.
        val exposureCompensationGain = Math.pow(
            2.0,
            finalization.exposureCompensationEv.toDouble(),
        ).toFloat()
        if (!exposureCompensationGain.isFinite() || exposureCompensationGain <= 0f) return null
        val compensatedShortTetMs =
            minOf(idealShortTetMs, idealLongTetMs, idealPortraitTetMs) *
                exposureCompensationGain
        val compensatedLongTetMs = idealLongTetMs * exposureCompensationGain
        if (!validPositiveTets(compensatedShortTetMs, compensatedLongTetMs)) return null

        // MGC's AeResults finalizer treats every positive portrait TET as a frame-role constraint;
        // face presence never switches the displayed result from short to portrait.
        var finalShortTetMs = compensatedShortTetMs
            .coerceIn(finalization.shotMinTetMs, finalization.shotMaxTetMs)
        var finalLongTetMs = compensatedLongTetMs.coerceIn(
            finalization.shotMinTetMs,
            finalization.shotMaxTetMs,
        )

        val hdrRatioBeforeLimit = finalLongTetMs / finalShortTetMs
        var hdrRatioLimited = false
        finalization.maxHdrRatio
            ?.takeIf { it.isFinite() && it > 0f && hdrRatioBeforeLimit > it }
            ?.let { maxHdrRatio ->
                val reduction = hdrRatioBeforeLimit / maxHdrRatio
                // Exact MGC migration curve: 0 at 32% long contribution, 1 at 42%.
                val shortMigrationPower = if (finalization.touchRoiClipProtectionTripped) {
                    0f
                } else {
                    ((finalization.weightedFractionOfPixelsFromLongExposure - 0.32f) / 0.10f)
                        .coerceIn(0f, 1f)
                }
                finalShortTetMs *= Math.pow(
                    reduction.toDouble(),
                    shortMigrationPower.toDouble(),
                ).toFloat()
                finalLongTetMs /= Math.pow(
                    reduction.toDouble(),
                    (1f - shortMigrationPower).toDouble(),
                ).toFloat()
                hdrRatioLimited = true
            }

        // MGC factorizes portrait with the same achieved/ideal ratio as long, rather than
        // independently clipping portrait. This preserves the learned portrait/long relationship
        // when the desired long TET lies outside the achievable shot range.
        var finalPortraitTetMs = (idealPortraitTetMs * (finalLongTetMs / idealLongTetMs))
            .coerceIn(finalization.shotMinTetMs, finalization.shotMaxTetMs)

        var safeUnderexposureApplied = false
        finalization.safeUnderexposureTetMs
            ?.takeIf { it.isFinite() && it > 0f }
            ?.let { safeUnderexposureTetMs ->
                // This is the original highlight-preservation floor. The effective HDR-ratio
                // limit is used as the denominator, with 24 as MGC's hard-coded lower bound.
                val preservedShortTetMs = maxOf(
                    safeUnderexposureTetMs,
                    finalLongTetMs / maxOf(
                        finalization.maxHdrRatio ?: 0f,
                        HIGHLIGHT_PRESERVATION_RATIO_FLOOR,
                    ),
                )
                if (preservedShortTetMs < finalShortTetMs) {
                    finalShortTetMs = preservedShortTetMs
                    safeUnderexposureApplied = true
                }
            }

        positiveOverride(finalization.finalShortTetOverrideMs)?.let { finalShortTetMs = it }
        positiveOverride(finalization.finalLongTetOverrideMs)?.let { finalLongTetMs = it }
        positiveOverride(finalization.finalPortraitTetOverrideMs)?.let {
            finalPortraitTetMs = it
        }

        // MGC repeats this invariant after every override; it never selects portrait as the
        // display baseline and never allows short to become longer than either companion role.
        finalShortTetMs = minOf(finalShortTetMs, finalLongTetMs, finalPortraitTetMs)
        if (!validPositiveTets(finalShortTetMs, finalLongTetMs, finalPortraitTetMs)) return null

        val finalShortGain = finalShortTetMs / currentTetMs
        val finalLongGain = finalLongTetMs / currentTetMs
        val finalPortraitGain = finalPortraitTetMs / currentTetMs
        if (!validPositiveTets(finalShortGain, finalLongGain, finalPortraitGain)) return null
        val finalGain = finalShortGain
        val sourceClippedFraction = clippedFraction(frame, 1f) ?: return null
        val shortClippedFraction = clippedFraction(frame, shortIdealGain) ?: return null
        val longClippedFraction = clippedFraction(frame, longIdealGain) ?: return null
        val portraitClippedFraction = clippedFraction(frame, portraitIdealGain) ?: return null
        val finalClippedFraction = clippedFraction(frame, finalGain) ?: return null
        return RawSceneExposureFusion(
            idealShortTetMs = idealShortTetMs,
            idealLongTetMs = idealLongTetMs,
            idealPortraitTetMs = idealPortraitTetMs,
            exposureCompensationGain = exposureCompensationGain,
            compensatedShortTetMs = compensatedShortTetMs,
            compensatedLongTetMs = compensatedLongTetMs,
            finalShortTetMs = finalShortTetMs,
            finalLongTetMs = finalLongTetMs,
            finalPortraitTetMs = finalPortraitTetMs,
            shortIdealGain = shortIdealGain,
            longIdealGain = longIdealGain,
            portraitIdealGain = portraitIdealGain,
            finalShortGain = finalShortGain,
            finalLongGain = finalLongGain,
            finalPortraitGain = finalPortraitGain,
            finalGain = finalGain,
            hdrRatioBeforeLimit = hdrRatioBeforeLimit,
            finalHdrRatio = finalLongTetMs / finalShortTetMs,
            hdrRatioLimited = hdrRatioLimited,
            safeUnderexposureApplied = safeUnderexposureApplied,
            sourceClippedFraction = sourceClippedFraction,
            shortClippedFraction = shortClippedFraction,
            longClippedFraction = longClippedFraction,
            portraitClippedFraction = portraitClippedFraction,
            finalClippedFraction = finalClippedFraction,
        )
    }

    internal fun clippedFraction(frame: RawSceneLinearFrame, gain: Float): Float? {
        val pixelCount = frame.width * frame.height
        if (frame.width <= 0 || frame.height <= 0 || frame.rgb.size != pixelCount * 3 ||
            !gain.isFinite() || gain <= 0f
        ) {
            return null
        }
        var clipped = 0
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            val red = frame.rgb[offset]
            val green = frame.rgb[offset + 1]
            val blue = frame.rgb[offset + 2]
            if (!red.isFinite() || !green.isFinite() || !blue.isFinite()) return null
            if (maxOf(red, green, blue, 0f) * gain >= HIGHLIGHT_CLIP_LEVEL) clipped++
        }
        return clipped.toFloat() / pixelCount.toFloat()
    }

    private data class RawClippingMeasurement(
        val clippedFraction: Float,
        val safeUnderexposure: Float,
    )

    private fun measureRawClipping(
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        relativeTetGain: Float,
        collectSafeUnderexposure: Boolean,
    ): RawClippingMeasurement? {
        val stats = frame.fastMomentsStats
        val pixelCount = stats.width * stats.height
        if (stats.width <= 0 || stats.height <= 0 ||
            stats.sourceWidth <= 0 || stats.sourceHeight <= 0 ||
            stats.channelMax.size != pixelCount * 4 ||
            stats.sourceBounds.size < 4 ||
            stats.sourceBounds.take(4).any { !it.isFinite() } ||
            !relativeTetGain.isFinite() || relativeTetGain <= 0f
        ) {
            PLog.e(
                TAG,
                "Invalid mode-2 RAW stats contract: " +
                    "size=${stats.width}x${stats.height} " +
                    "source=${stats.sourceWidth}x${stats.sourceHeight} " +
                    "channelCount=${stats.channelMax.size} expected=${pixelCount * 4} " +
                    "sourceBounds=${stats.sourceBounds.contentToString()} " +
                    "relativeTetGain=$relativeTetGain",
            )
            return null
        }
        val whiteBalance = metadata.whiteBalanceGains.takeIf { gains ->
            gains.size >= 4 && gains.take(4).all { it.isFinite() && it > 0f }
        } ?: run {
            PLog.e(
                TAG,
                "Invalid mode-2 WB gains: ${metadata.whiteBalanceGains.contentToString()}",
            )
            return null
        }

        var clippedPixels = 0
        // MGC ComputeSafeUnderexposure initializes this reduction with FLT_MAX. No clipped RAW
        // samples therefore leaves underexposure unrestricted; ProcessAeStats can lower shot-min
        // to the request/device floor and the learned ideal short TET remains authoritative.
        // Using +Infinity here is not equivalent because the finite-result validation below would
        // reinterpret the no-clipping case as a gain of one and incorrectly clamp finalShortTet
        // back to the actual capture TET, reducing finalLongTet / finalShortTet.
        var safeUnderexposure = Float.MAX_VALUE
        for (y in 0 until stats.height) {
            for (x in 0 until stats.width) {
                val lscR = minimumLensShadingGain(metadata, stats, 0, x, y)
                val lscGr = minimumLensShadingGain(metadata, stats, 1, x, y)
                val lscGb = minimumLensShadingGain(metadata, stats, 2, x, y)
                val lscB = minimumLensShadingGain(metadata, stats, 3, x, y)
                if (!validPositiveTets(lscR, lscGr, lscGb, lscB)) {
                    PLog.e(
                        TAG,
                        "Invalid mode-2 LSC gain at ($x,$y): " +
                            "[${lscR}, ${lscGr}, ${lscGb}, ${lscB}] " +
                            "map=${metadata.lensShadingMapWidth}x" +
                            "${metadata.lensShadingMapHeight}",
                    )
                    return null
                }

                val offset = (y * stats.width + x) * 4
                val red = stats.channelMax[offset]
                val greenEven = stats.channelMax[offset + 1]
                val greenOdd = stats.channelMax[offset + 2]
                val blue = stats.channelMax[offset + 3]
                if (!validNonNegative(red, greenEven, greenOdd, blue)) {
                    PLog.e(
                        TAG,
                        "Invalid mode-2 CFA maximum at ($x,$y): " +
                            "[${red}, ${greenEven}, ${greenOdd}, ${blue}]",
                    )
                    return null
                }

                var pixelClipped = false
                fun accountChannel(value: Float, lsc: Float, whiteBalanceGain: Float) {
                    val sensorValue = if (stats.sensorNormalized) value else value / lsc
                    if (sensorValue * relativeTetGain >= RAW_CLIP_LEVEL) {
                        pixelClipped = true
                        if (collectSafeUnderexposure) {
                            safeUnderexposure = minOf(
                                safeUnderexposure,
                                whiteBalanceGain * lsc,
                            )
                        }
                    }
                }
                accountChannel(red, lscR, whiteBalance[0])
                accountChannel(greenEven, lscGr, whiteBalance[1])
                accountChannel(greenOdd, lscGb, whiteBalance[2])
                accountChannel(blue, lscB, whiteBalance[3])
                if (pixelClipped) clippedPixels++
            }
        }
        val resolvedSafeUnderexposure = if (
            collectSafeUnderexposure && safeUnderexposure.isFinite()
        ) {
            maxOf(safeUnderexposure, 1f)
        } else {
            1f
        }
        return RawClippingMeasurement(
            clippedFraction = clippedPixels.toFloat() / pixelCount.toFloat(),
            safeUnderexposure = resolvedSafeUnderexposure,
        )
    }

    private fun minimumLensShadingGain(
        metadata: RawMetadata,
        stats: RawSceneFastMomentsRawStats,
        channel: Int,
        x: Int,
        y: Int,
    ): Float {
        val downsample = FAST_MOMENTS_RAW_STATS_DOWNSAMPLE.toFloat()
        val u0 = (x.toFloat() * downsample / stats.sourceWidth.toFloat()).coerceIn(0f, 1f)
        val u1 = ((x + 1f) * downsample / stats.sourceWidth.toFloat()).coerceIn(0f, 1f)
        val v0 = (y.toFloat() * downsample / stats.sourceHeight.toFloat()).coerceIn(0f, 1f)
        val v1 = ((y + 1f) * downsample / stats.sourceHeight.toFloat()).coerceIn(0f, 1f)
        return minOf(
            lensShadingGainAtStatsUv(metadata, stats, channel, u0, v0),
            lensShadingGainAtStatsUv(metadata, stats, channel, u1, v0),
            lensShadingGainAtStatsUv(metadata, stats, channel, u0, v1),
            lensShadingGainAtStatsUv(metadata, stats, channel, u1, v1),
        )
    }

    private fun lensShadingGainAtStatsUv(
        metadata: RawMetadata,
        stats: RawSceneFastMomentsRawStats,
        channel: Int,
        u: Float,
        v: Float,
    ): Float {
        val sourceUv = sourceUv(stats, u, v)
        return lensShadingGain(
            metadata = metadata,
            channel = channel,
            sourceU = sourceUv.first,
            sourceV = sourceUv.second,
        )
    }

    private fun sourceUv(
        stats: RawSceneFastMomentsRawStats,
        u: Float,
        v: Float,
    ): Pair<Float, Float> {
        val rotation = ((stats.sourceRotationDegrees % 360) + 360) % 360
        val orientedU: Float
        val orientedV: Float
        when (rotation) {
            90 -> {
                orientedU = v
                orientedV = 1f - u
            }
            180 -> {
                orientedU = 1f - u
                orientedV = 1f - v
            }
            270 -> {
                orientedU = 1f - v
                orientedV = u
            }
            else -> {
                orientedU = u
                orientedV = v
            }
        }
        return Pair(
            stats.sourceBounds[0] +
                (stats.sourceBounds[2] - stats.sourceBounds[0]) * orientedU,
            stats.sourceBounds[1] +
                (stats.sourceBounds[3] - stats.sourceBounds[1]) * orientedV,
        )
    }

    private fun lensShadingGain(
        metadata: RawMetadata,
        channel: Int,
        sourceU: Float,
        sourceV: Float,
        chooseMinimumNeighbor: Boolean = false,
    ): Float {
        val map = metadata.lensShadingMap ?: return 1f
        val width = metadata.lensShadingMapWidth
        val height = metadata.lensShadingMapHeight
        if (width <= 0 || height <= 0 || map.size != width * height * 4) return 1f

        var textureU = sourceU
        var textureV = sourceV
        metadata.lensShadingMapGrid?.takeIf { it.size >= 8 }?.let { grid ->
            val boundsWidth = maxOf(grid[6] - grid[4], 1f)
            val boundsHeight = maxOf(grid[7] - grid[5], 1f)
            val normalizedX = (sourceU * metadata.width.toFloat() - grid[4]) / boundsWidth
            val normalizedY = (sourceV * metadata.height.toFloat() - grid[5]) / boundsHeight
            val mapX = (normalizedX - grid[0]) / maxOf(grid[2], 1e-8f)
            val mapY = (normalizedY - grid[1]) / maxOf(grid[3], 1e-8f)
            textureU = (mapX + 0.5f) / width.toFloat()
            textureV = (mapY + 0.5f) / height.toFloat()
        }
        val sampleX = (textureU * width.toFloat() - 0.5f).coerceIn(0f, width - 1f)
        val sampleY = (textureV * height.toFloat() - 0.5f).coerceIn(0f, height - 1f)
        val x0 = kotlin.math.floor(sampleX.toDouble()).toInt()
        val y0 = kotlin.math.floor(sampleY.toDouble()).toInt()
        val x1 = (x0 + 1).coerceAtMost(width - 1)
        val y1 = (y0 + 1).coerceAtMost(height - 1)
        val tx = (sampleX - kotlin.math.floor(sampleX.toDouble()).toFloat()).coerceIn(0f, 1f)
        val ty = (sampleY - kotlin.math.floor(sampleY.toDouble()).toFloat()).coerceIn(0f, 1f)
        fun at(px: Int, py: Int): Float = map[(py * width + px) * 4 + channel]
        if (chooseMinimumNeighbor) {
            return minOf(at(x0, y0), at(x1, y0), at(x0, y1), at(x1, y1))
        }
        val top = at(x0, y0) + (at(x1, y0) - at(x0, y0)) * tx
        val bottom = at(x0, y1) + (at(x1, y1) - at(x0, y1)) * tx
        return top + (bottom - top) * ty
    }

    private fun validateInput(frame: RawSceneLinearFrame, logSceneBrightness: Float): Boolean {
        val pixelCount = INPUT_WIDTH * INPUT_HEIGHT
        if (frame.width != INPUT_WIDTH || frame.height != INPUT_HEIGHT ||
            frame.rgb.size != pixelCount * 3 || !logSceneBrightness.isFinite()
        ) {
            return false
        }
        return frame.rgb.all(Float::isFinite)
    }

    private fun modelLogColor(linearColor: Float): Float =
        kotlin.math.ln(linearColor.coerceAtLeast(0f) + MODEL_RGB_LOG_FLOOR)

    private fun toMeteringU15(value: Float): Float {
        val code = kotlin.math.round(value * METERING_U15_MAX)
            .toInt()
            .coerceIn(0, METERING_U15_MAX)
        return code.toFloat() / METERING_U15_SCALE
    }

    private fun validTetRange(minTetMs: Float, maxTetMs: Float): Boolean =
        minTetMs.isFinite() && maxTetMs.isFinite() && minTetMs > 0f && maxTetMs >= minTetMs

    private fun validPositiveTets(vararg tets: Float): Boolean =
        tets.all { it.isFinite() && it > 0f }

    private fun validNonNegative(vararg values: Float): Boolean =
        values.all { it.isFinite() && it >= 0f }

    private fun positiveOverride(value: Float?): Float? =
        value?.takeIf { it.isFinite() && it > 0f }
}

/** Device-independent, capture-side multi-branch scene exposure model. */
internal object RawSceneExposureEstimator {
    private const val TAG = "RawSceneExposureEstimator"
    private const val PORTRAIT_MODEL_ASSET = "mgc_ae/portrait_scene_exposure.tflite"
    private val lock = Any()

    private data class ExposureEngines(
        val legacyTable: MgcLegacySceneExposureTable,
        val portrait: Interpreter,
    ) {
        fun close() {
            portrait.close()
        }
    }

    @Volatile
    private var engines: ExposureEngines? = null

    fun estimate(
        context: Context,
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        deviceLimits: RawSceneExposureDeviceLimits?,
        faceMask: FloatArray? = null,
    ): RawSceneExposureEstimate? {
        val resolvedDeviceLimits = deviceLimits?.takeIf(RawSceneExposureDeviceLimits::isValid)
        val referenceSensitivityIso = resolvedDeviceLimits?.referenceSensitivityIso
            ?: RawSceneExposureMath.DNG_REFERENCE_SENSITIVITY_ISO
        val measurement = RawSceneExposureMath.measureSceneBrightness(
            frame = frame,
            exposureTimeNs = metadata.shutterSpeed,
            sensitivityIso = metadata.iso,
            referenceSensitivityIso = referenceSensitivityIso,
            aperture = metadata.aperture,
        ) ?: run {
            PLog.e(
                TAG,
                "Invalid RAW scene coordinate: shutterNs=${metadata.shutterSpeed} " +
                    "iso=${metadata.iso} " +
                    "referenceIso=$referenceSensitivityIso " +
                    "aperture=${metadata.aperture}",
            )
            return null
        }
        val shotRange = RawSceneExposureMath.resolveMgcShotRange(
            exposureTimeMs = measurement.exposureTimeMs,
            overallGain = measurement.overallGain,
            deviceMinTetMs = resolvedDeviceLimits?.minTetMs
                ?: RawSceneExposureDeviceLimits.MIN_TET_MS,
        ) ?: run {
            PLog.e(TAG, "Unable to construct MGC AE shot TET range")
            return null
        }

        val combinedInput = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.INPUT_CHANNELS,
        )
        if (!RawSceneExposureMath.writeCombinedModelInput(
                frame = frame,
                logSceneBrightness = measurement.logSceneBrightness,
                destination = combinedInput,
                portraitMask = faceMask,
            )
        ) {
            PLog.e(TAG, "Unable to construct RAW portrait exposure model input")
            return null
        }
        val fractionPixelsClippedAtBaseTet = RawSceneExposureMath.fractionPixelsClippedAtTet(
            frame = frame,
            metadata = metadata,
            relativeTetGain = 1f,
        ) ?: run {
            PLog.e(TAG, "Unable to construct MGC legacy AE clipped-pixel input")
            return null
        }
        val tableQueryClippedFraction = frame.legacyAeInput
            ?.splitHdrImage
            ?.clippedFraction
            ?.takeIf { it.isFinite() && it in 0f..1f }
            ?: fractionPixelsClippedAtBaseTet
        val tableTetMaxMs = resolvedDeviceLimits?.deviceMaxTetMs ?: shotRange.maxTetMs
        val faceMaskRms = RawSceneExposureMath.faceMaskRms(faceMask)
        val detectedFaceMaskEvidence = faceMaskRms
            ?.let { it > RawSceneExposureMath.FACE_MASK_RMS_FLOOR } == true

        return synchronized(lock) {
            val activeEngines = engines ?: createEngines(context)?.also { engines = it }
                ?: return@synchronized null
            try {
                val legacyResult = activeEngines.legacyTable.solve(
                    frame = frame,
                    fractionPixelsClipped = tableQueryClippedFraction,
                    hasFace = metadata.sceneHasFace || detectedFaceMaskEvidence,
                    currentTetMs = measurement.currentTetMs,
                    sensorSensitivity = measurement.sensorSensitivity,
                    deviceMinTetMs = resolvedDeviceLimits?.minTetMs
                        ?: RawSceneExposureDeviceLimits.MIN_TET_MS,
                    deviceMaxTetMs = tableTetMaxMs,
                ) ?: run {
                    PLog.e(TAG, "MGC legacy AE table lookup returned invalid values")
                    return@synchronized null
                }
                val shortLogGain = RawSceneExposureMath.linearGainToModelLog(
                    legacyResult.short.idealTetMs / measurement.currentTetMs,
                ) ?: return@synchronized null
                val longLogGain = RawSceneExposureMath.linearGainToModelLog(
                    legacyResult.long.idealTetMs / measurement.currentTetMs,
                ) ?: return@synchronized null
                val portraitLogGain = runCombinedModel(activeEngines.portrait, combinedInput)
                val branches = RawSceneExposureBranches(
                    shortLogGain = shortLogGain,
                    longLogGain = longLogGain,
                    portraitLogGain = portraitLogGain,
                )
                val ideals = RawSceneExposureMath.resolveIdealExposure(
                    currentTetMs = measurement.currentTetMs,
                    branches = branches,
                ) ?: run {
                    PLog.e(TAG, "RAW scene exposure legacy-table AE ideals are invalid")
                    return@synchronized null
                }
                val fastMomentsStats = RawSceneExposureMath.processFastMomentsAeStats(
                    frame = frame,
                    metadata = metadata,
                    currentTetMs = measurement.currentTetMs,
                    shotRange = shotRange,
                    ideals = ideals,
                ) ?: run {
                    PLog.e(TAG, "Fast Moments process-AE-stats returned invalid values")
                    return@synchronized null
                }
                // Fast Moments mode 2 passes the higher of the learned short TET and the
                // RAW-stat-adjusted shot minimum into the common highlight-preservation step.
                // This is the FMAX immediately before MGC's ComputeAeResults finalizer.
                val highlightPreservationTetMs = maxOf(
                    ideals.shortTetMs,
                    fastMomentsStats.adjustedShotMinTetMs,
                )
                val fusion = RawSceneExposureMath.finalizeAeResults(
                    frame = frame,
                    currentTetMs = measurement.currentTetMs,
                    branches = branches,
                    finalization = RawSceneExposureFinalization(
                        shotMinTetMs = fastMomentsStats.adjustedShotMinTetMs,
                        shotMaxTetMs = shotRange.maxTetMs,
                        exposureCompensationEv = metadata.exposureCompensation,
                        maxHdrRatio = RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
                        safeUnderexposureTetMs = highlightPreservationTetMs,
                    ),
                ) ?: run {
                    PLog.e(TAG, "RAW scene exposure MGC AE finalization returned invalid values")
                    return@synchronized null
                }
                val fractionPixelsClippedAtFinalShortTet =
                    RawSceneExposureMath.fractionPixelsClippedAtTet(
                        frame = frame,
                        metadata = metadata,
                        relativeTetGain = fusion.finalShortTetMs / measurement.currentTetMs,
                    ) ?: run {
                        PLog.e(TAG, "Fast Moments final-short RAW clipping statistics are invalid")
                        return@synchronized null
                    }
                val portraitRelightingGain = if (detectedFaceMaskEvidence) {
                    fusion.finalPortraitTetMs / fusion.finalLongTetMs
                } else {
                    1f
                }
                if (!portraitRelightingGain.isFinite() || portraitRelightingGain <= 0f) {
                    PLog.e(TAG, "MGC portrait relighting gain is invalid")
                    return@synchronized null
                }
                val rawStatsSource = if (frame.fastMomentsStats.sensorNormalized) {
                    "RAW_CFA_16X16_MAX"
                } else {
                    "CAMERA_RGB_FALLBACK"
                }
                PLog.i(
                    TAG,
                    "RAW_SCENE_EXPOSURE stage=MGC_CLASSIC_SHORT_QUERY_DIAGNOSTIC " +
                        "tableInputPath=NON_QCOM_RAW_TO_LO_RES_RGB " +
                        "tableInputSize=${legacyResult.meteringWidth}x${legacyResult.meteringHeight} " +
                        "tableBrightMaskMean=${legacyResult.brightMaskMean} " +
                        "tableDescriptorContract=MGC_V25_SPLIT_HDR_14_8_6 " +
                        "rawClippingStatsSource=$rawStatsSource " +
                        "tableClippingStatsSource=${if (
                            frame.legacyAeInput?.splitHdrImage?.clippedFraction != null
                        ) {
                            "RAW_TO_LO_RES_RGB"
                        } else {
                            rawStatsSource
                        }} " +
                        "shortQueryHistogramDescriptor=" +
                        "${legacyResult.shortQuery.histogramDescriptor.contentToString()} " +
                        "longQueryHistogramDescriptor=" +
                        "${legacyResult.longQuery.histogramDescriptor.contentToString()} " +
                        "shortMinimumContributingSimilarity=" +
                        "${legacyResult.short.minimumContributingSimilarity} " +
                        "shortAggregationWeightSum=${legacyResult.short.aggregationWeightSum} " +
                        "shortContributingTargetRange=" +
                        "[${legacyResult.short.contributingTargetMinimum}, " +
                        "${legacyResult.short.contributingTargetMaximum}] " +
                        "shortBestMatchTargetT=${legacyResult.short.bestMatchTargetT} " +
                        "shortBestMatchLogSceneBrightness=" +
                        "${legacyResult.short.bestMatchLogSceneBrightness} " +
                        "shortBestMatchImageLogMean=${legacyResult.short.bestMatchImageLogMean} " +
                        "shortBestMatchClippedFraction=" +
                        "${legacyResult.short.bestMatchFractionPixelsClipped} " +
                        "shortBestMatchCategory=${legacyResult.short.bestMatchCategory} " +
                        "shortBestMatchHistogramDescriptor=" +
                        legacyResult.short.bestMatchHistogramDescriptor.contentToString(),
                )
                PLog.i(
                    TAG,
                    "RAW_SCENE_EXPOSURE stage=MGC_CLASSIC_AE_FINALIZE " +
                        "mode=2 " +
                        "computeAeResultsProcessRawStats=true " +
                        "processAeStatsExecuted=${fastMomentsStats.processAeStatsExecuted} " +
                        "shortLongSource=MGC_9_7_V25_START_RELEASE_TABLE " +
                        "tableVersion=0x${Integer.toUnsignedString(activeEngines.legacyTable.version, 16)} " +
                        "tableInputPath=NON_QCOM_RAW_TO_LO_RES_RGB " +
                        "tableInputNormalization=MGC_CLASSIC_SPLIT_HDR_WB_RMS_1_OVER_16 " +
                        "tableQueryColorDomain=MGC_SPLIT_HDR_NORMALIZED_CAMERA_RGB_U15 " +
                        "tableInputSize=${legacyResult.meteringWidth}x${legacyResult.meteringHeight} " +
                        "tableBrightMaskMean=${legacyResult.brightMaskMean} " +
                        "tableDescriptorContract=MGC_V25_SPLIT_HDR_14_8_6 " +
                        "tableInputRmsRgb=${legacyResult.meteringRmsRgb.contentToString()} " +
                        "tableInputWhiteBalancedRmsMax=${legacyResult.meteringWhiteBalancedRmsMax} " +
                        "tableInputNormalizationScale=${legacyResult.meteringNormalizationScale} " +
                        "tableInputNormalizedTetMs=${legacyResult.normalizedMeteringTetMs} " +
                        "shortQueryImageLogMean=${legacyResult.shortQuery.imageLogMean} " +
                        "longQueryImageLogMean=${legacyResult.longQuery.imageLogMean} " +
                        "shortQueryLogSceneBrightness=${legacyResult.shortQuery.logSceneBrightness} " +
                        "longQueryLogSceneBrightness=${legacyResult.longQuery.logSceneBrightness} " +
                        "tableQueryClippedFraction=${legacyResult.shortQuery.fractionPixelsClipped} " +
                        "tableQueryCategory=${legacyResult.shortQuery.category} " +
                        "tableSpatialWeights=MGC_DEFAULT_RADIAL " +
                        "aeSmoothness=${legacyResult.aeSmoothness} " +
                        "shortSmoothnessTOffset=${legacyResult.shortSmoothnessTOffset} " +
                        "longSmoothnessTOffset=${legacyResult.longSmoothnessTOffset} " +
                        "shortTargetT=${legacyResult.short.targetT} " +
                        "longTargetT=${legacyResult.long.targetT} " +
                        "shortTAtCurrentTet=${legacyResult.short.tAtCurrentTet} " +
                        "longTAtCurrentTet=${legacyResult.long.tAtCurrentTet} " +
                        "shortMaxSimilarity=${legacyResult.short.maxSimilarity} " +
                        "longMaxSimilarity=${legacyResult.long.maxSimilarity} " +
                        "shortCandidateCount=${legacyResult.short.candidateCount} " +
                        "longCandidateCount=${legacyResult.long.candidateCount} " +
                        "shortContributingCount=${legacyResult.short.contributingCount} " +
                        "longContributingCount=${legacyResult.long.contributingCount} " +
                        "tableTetMinMs=${resolvedDeviceLimits?.minTetMs ?: RawSceneExposureDeviceLimits.MIN_TET_MS} " +
                        "tableTetMaxMs=$tableTetMaxMs " +
                        "shortLnGain=${branches.shortLogGain} " +
                        "longLnGain=${branches.longLogGain} " +
                        "portraitLnGain=${branches.portraitLogGain} " +
                        "idealShortTetMs=${fusion.idealShortTetMs} " +
                        "idealLongTetMs=${fusion.idealLongTetMs} " +
                        "idealPortraitTetMs=${fusion.idealPortraitTetMs} " +
                        "exposureCompensationEv=${metadata.exposureCompensation} " +
                        "exposureCompensationGain=${fusion.exposureCompensationGain} " +
                        "compensatedShortTetMs=${fusion.compensatedShortTetMs} " +
                        "compensatedLongTetMs=${fusion.compensatedLongTetMs} " +
                        "finalShortTetMs=${fusion.finalShortTetMs} " +
                        "finalLongTetMs=${fusion.finalLongTetMs} " +
                        "finalPortraitTetMs=${fusion.finalPortraitTetMs} " +
                        "shortIdealGain=${fusion.shortIdealGain} " +
                        "longIdealGain=${fusion.longIdealGain} " +
                        "portraitIdealGain=${fusion.portraitIdealGain} " +
                        "finalShortGain=${fusion.finalShortGain} " +
                        "finalLongGain=${fusion.finalLongGain} " +
                        "finalPortraitGain=${fusion.finalPortraitGain} " +
                        "faceMaskAvailable=${faceMask != null} " +
                        "faceMaskRms=$faceMaskRms " +
                        "faceMaskSource=${if (faceMask != null) "BLAZEFACE_VALIDATED_SOFT_FACE_ELLIPSE" else "NONE"} " +
                        "portraitModelMaskApplied=$detectedFaceMaskEvidence " +
                        "relightingExpected=$detectedFaceMaskEvidence " +
                        "portraitRelightingGain=$portraitRelightingGain " +
                        "portraitRelightingGainSource=FINAL_PORTRAIT_TET_OVER_FINAL_LONG_TET " +
                        "portraitGainMigrationApplied=false " +
                        "solver=MGC_CLASSIC_TABLE_RUN_AE " +
                        "rawStatsFinalizer=MGC_MODE_2 " +
                        "hdrRatioBeforeLimit=${fusion.hdrRatioBeforeLimit} " +
                        "finalHdrRatio=${fusion.finalHdrRatio} " +
                        "hdrNetRatioSource=FINAL_LONG_TET_OVER_FINAL_SHORT_TET " +
                        "maxHdrRatio=${RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO} " +
                        "hdrRatioLimited=${fusion.hdrRatioLimited} " +
                        "highlightPreservationTetMs=$highlightPreservationTetMs " +
                        "safeUnderexposureApplied=${fusion.safeUnderexposureApplied} " +
                        "anticipatedUnderexposure=${fastMomentsStats.anticipatedUnderexposure} " +
                        "safeUnderexposure=${fastMomentsStats.safeUnderexposure} " +
                        "unsafeUnderexposureMultiplier=${RawSceneExposureMath.MGC_DEFAULT_UNSAFE_UNDEREXPOSURE_MULTIPLIER} " +
                        "allowedUnderexposure=${fastMomentsStats.allowedUnderexposure} " +
                        "statsShotMinTetMs=${fastMomentsStats.statsShotMinTetMs} " +
                        "statsShotMaxTetMs=${fastMomentsStats.statsShotMaxTetMs} " +
                        "adjustedShotMinTetMs=${fastMomentsStats.adjustedShotMinTetMs} " +
                        "fractionPixelsClippedAtBaseTet=" +
                        "${fastMomentsStats.fractionPixelsClippedAtBaseTet} " +
                        "fractionPixelsClippedAtFinalShortTet=" +
                        "$fractionPixelsClippedAtFinalShortTet " +
                        "rawStatsSource=$rawStatsSource " +
                        "rawStatsSize=${frame.fastMomentsStats.width}x" +
                        "${frame.fastMomentsStats.height} " +
                        "clipSource=${fusion.sourceClippedFraction} " +
                        "clipShort=${fusion.shortClippedFraction} " +
                        "clipLong=${fusion.longClippedFraction} " +
                        "clipPortrait=${fusion.portraitClippedFraction} " +
                        "clipFinal=${fusion.finalClippedFraction} " +
                        "faceEvidence=${metadata.sceneHasFace || detectedFaceMaskEvidence} " +
                        "camera2FaceEvidence=${metadata.sceneHasFace} " +
                        "blazeFaceMaskEvidence=$detectedFaceMaskEvidence " +
                        "logSceneBrightness=${measurement.logSceneBrightness} " +
                        "geometricSignal=${measurement.geometricSignal} " +
                        "predictedImageBrightness=${measurement.predictedImageBrightness} " +
                        "exposureTimeMs=${measurement.exposureTimeMs} " +
                        "iso=${metadata.iso} " +
                        "referenceIso=$referenceSensitivityIso " +
                        "referenceSource=${if (resolvedDeviceLimits != null) "CAMERA2_CAPTURE" else "DNG_ISO_100"} " +
                        "maxAnalogIso=${metadata.maxAnalogSensitivity} " +
                        "overallGain=${measurement.overallGain} " +
                        "currentTetMs=${measurement.currentTetMs} " +
                        "requestShotMinTetMs=${shotRange.requestMinTetMs} " +
                        "shotMinTetMs=${shotRange.minTetMs} " +
                        "shotMaxTetMs=${shotRange.maxTetMs} " +
                        "shotMaxSource=${shotRange.maxSource} " +
                        "maxPostCaptureTetMs=${shotRange.maxPostCaptureTetMs} " +
                        "maxOverallTetMs=${shotRange.maxOverallTetMs} " +
                        "maxPostCaptureGain=${RawSceneExposureMath.MAX_POST_CAPTURE_GAIN} " +
                        "tuningMaxOverallGain=${RawSceneExposureMath.MAX_OVERALL_GAIN} " +
                        "sensorSensitivity=${measurement.sensorSensitivity} " +
                        "sensorSensitivitySource=MGC_9_7_V25_TUNING",
                )
                RawSceneExposureEstimate(
                    hdrRatio = fusion.finalHdrRatio,
                    finalShortTetMs = fusion.finalShortTetMs,
                    finalLongTetMs = fusion.finalLongTetMs,
                    finalShortGain = fusion.finalShortGain,
                    portraitRelightingGain = portraitRelightingGain,
                    safeUnderexposure = fastMomentsStats.safeUnderexposure,
                    fractionPixelsClippedAtFinalShortTet =
                        fractionPixelsClippedAtFinalShortTet,
                )
            } catch (error: Throwable) {
                PLog.e(TAG, "RAW scene exposure inference failed", error)
                null
            }
        }
    }

    private fun runCombinedModel(interpreter: Interpreter, input: ByteBuffer): Float {
        input.rewind()
        val output = Array(1) { FloatArray(1) }
        interpreter.run(input, output)
        return output[0][0].also { check(it.isFinite()) }
    }

    private fun createEngines(context: Context): ExposureEngines? {
        var portrait: Interpreter? = null
        var candidate: ExposureEngines? = null
        return try {
            val legacyTable = MgcLegacySceneExposureTable.load(context)
            check(legacyTable.version == MgcLegacySceneExposureTable.EXPECTED_VERSION) {
                "Unexpected start_release.dat version: " +
                    "0x${Integer.toUnsignedString(legacyTable.version, 16)}"
            }
            val loadedPortrait = createInterpreter(context, PORTRAIT_MODEL_ASSET).also {
                portrait = it
            }
            candidate = ExposureEngines(
                legacyTable = legacyTable,
                portrait = loadedPortrait,
            )
            validateCombinedModel(candidate.portrait, "portrait")
            candidate
        } catch (error: Throwable) {
            if (candidate != null) {
                candidate.close()
            } else {
                portrait?.close()
            }
            PLog.e(TAG, "Unable to initialize MGC legacy AE and portrait model", error)
            null
        }
    }

    private fun createInterpreter(context: Context, asset: String): Interpreter = Interpreter(
        FileUtil.loadMappedFile(context, asset),
        Interpreter.Options().apply {
            setNumThreads(2)
            setUseXNNPACK(true)
        },
    )

    private fun validateCombinedModel(interpreter: Interpreter, name: String) {
        check(interpreter.inputTensorCount == 1) { "$name AE model input count changed" }
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        check(input.dataType() == DataType.FLOAT32)
        check(input.shape().contentEquals(intArrayOf(1, 64, 64, 9)))
        validateScalarOutput(output.dataType(), output.shape(), name)
    }

    private fun validateScalarOutput(type: DataType, shape: IntArray, name: String) {
        check(type == DataType.FLOAT32) { "$name AE model output type changed" }
        check(shape.contentEquals(intArrayOf(1, 1))) { "$name AE model output shape changed" }
    }

    private fun directFloatBuffer(floatCount: Int): ByteBuffer =
        ByteBuffer.allocateDirect(floatCount * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
}
