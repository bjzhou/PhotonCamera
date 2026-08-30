package com.hinnka.mycamera.raw

import android.content.Context
import android.os.SystemClock
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
    val fastMomentsStats: RawSceneAERawStats,
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
)

data class RawSceneAERawStats(
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
    val safeUnderexposure: Float,
    val fractionPixelsClippedAtFinalShortTet: Float,
    /** Capture-time MGC AE inputs and outputs embedded in the DNG as photon:SummaryText. */
    val summaryText: String,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
        require(finalShortTetMs.isFinite() && finalShortTetMs > 0f)
        require(finalLongTetMs.isFinite() && finalLongTetMs >= finalShortTetMs)
        require(finalShortGain.isFinite() && finalShortGain > 0f)
        require(safeUnderexposure.isFinite() && safeUnderexposure >= 1f)
        require(
            fractionPixelsClippedAtFinalShortTet.isFinite() &&
                fractionPixelsClippedAtFinalShortTet in 0f..1f,
        )
        require(summaryText.isNotBlank())
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
    const val FAST_MOMENTS_RAW_STATS_DOWNSAMPLE = RawAEStatsAlgorithm.DOWNSAMPLE

    // Ordinary MGC/Google ZSL exposure tuning. These are finalizer constraints, not sensor limits.
    const val MAX_POST_CAPTURE_GAIN = 26.5f
    const val MAX_OVERALL_GAIN = 102f
    // MGC 9.7 CaptureTuning::max_hdr_ratio(kHdrPlusOn, autoNight=false, factor=-1).
    // This limits the AE final long/short TET pair before the highlight-preservation step.
    const val FAST_MOMENTS_MAX_HDR_RATIO = 9.8f
    const val LARGE_FACE_MAX_HDR_RATIO_FLOOR = 6f
    const val HDR_RATIO_LIMIT_SHORT_POWER = 0.5f
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
    // plane. Missing saliency is initialized to 0.05 (0x3D4CCCCD); face map, portrait mask,
    // skin type and skin mask stay at zero. The learned models distinguish this sentinel from
    // a real all-zero saliency map.
    private const val MISSING_SALIENCY_VALUE = 0.05f
    // Semantic enum 3 is MGC's float face map; enum 4 is the byte portrait-segmentation mask.
    // The combined model stores enums 3..7 after RGB and log-scene-brightness.
    private const val FACE_MAP_SEMANTIC_CHANNEL = 0
    private const val SALIENCY_SEMANTIC_CHANNEL = 3
    // MeasureLogSceneBrightness uses the reflected-light calibration constant directly.
    private const val SCENE_BRIGHTNESS_CALIBRATION = 14.6
    // ComputeAeResults resolves sensor sensitivity before selecting RunMlAeCore or the classic
    // RunAe fallback. MGC 9.7 V25's tuning supplies this positive hard-coded value, so the
    // min_iso / f_number^2 fallback is not entered for these bundled V25 ML models either.
    // Calling the original V25 AE capsule reports 17.61 for the same capture metadata.
    private const val MGC_V25_SENSOR_SENSITIVITY = 17.61
    private const val SCENE_BRIGHTNESS_LOG_FLOOR = 1e-4
    // RunMlAeCore performs expf(model_output) - 1e-6 before using every branch gain.
    private const val MODEL_LINEAR_GAIN_EPSILON = 1e-6
    private const val NANOS_PER_MILLISECOND = 1_000_000.0
    private const val MILLIS_PER_SECOND = 1_000.0
    private const val HIGHLIGHT_CLIP_LEVEL = 1.0
    private const val RAW_CLIP_LEVEL = 1.0f
    private const val HIGHLIGHT_PRESERVATION_RATIO_FLOOR = 24f
    private const val LARGE_FACE_QUANTITY_START = 0.045f
    private const val LARGE_FACE_QUANTITY_SCALE = 33.333f
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
        faceMap: FloatArray? = null,
    ): Boolean {
        if (!validateInput(frame, logSceneBrightness) ||
            destination.capacity() < frame.width * frame.height * INPUT_CHANNELS * Float.SIZE_BYTES ||
            (faceMap != null &&
                (faceMap.size != frame.width * frame.height ||
                    faceMap.any { !it.isFinite() || it !in 0f..1f }))
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
                        FACE_MAP_SEMANTIC_CHANNEL -> faceMap?.get(pixel) ?: 0f
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
        faceMap: FloatArray? = null,
    ): Boolean {
        val pixelCount = frame.width * frame.height
        if (!validateInput(frame, logSceneBrightness) ||
            colorDestination.capacity() < pixelCount * COLOR_CHANNELS * Float.SIZE_BYTES ||
            semanticDestination.capacity() < pixelCount * SEMANTIC_CHANNELS * Float.SIZE_BYTES ||
            (faceMap != null &&
                (faceMap.size != pixelCount ||
                    faceMap.any { !it.isFinite() || it !in 0f..1f }))
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
                    when (semanticChannel) {
                        FACE_MAP_SEMANTIC_CHANNEL -> faceMap?.get(pixel) ?: 0f
                        SALIENCY_SEMANTIC_CHANNEL -> MISSING_SALIENCY_VALUE
                        else -> 0f
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

    /**
     * Approximates MGC's per-face `quantity of face pixels` for the single selected face mask.
     *
     * The native large-face limiter takes the L2 norm of one scalar coverage value per face. Our
     * preview detector deliberately retains only one face, so the matching quantity is the mean
     * mask coverage. Pixel RMS would instead turn a hard 8% mask into sqrt(0.08), changing the
     * native 0.045 threshold by an entire unit of measure.
     */
    fun facePixelQuantity(mask: FloatArray?): Float? {
        if (mask == null || mask.isEmpty()) return null
        var sum = 0.0
        for (value in mask) {
            if (!value.isFinite() || value !in 0f..1f) return null
            sum += value.toDouble()
        }
        return (sum / mask.size.toDouble()).toFloat().takeIf(Float::isFinite)
    }

    /** MGC ReduceMaxHdrRatioForLargeFaces' normalized face-quantity coordinate. */
    fun largeFaceHdrRatioReductionStrength(facePixelQuantity: Float?): Float {
        if (facePixelQuantity == null ||
            !facePixelQuantity.isFinite() || facePixelQuantity < 0f
        ) {
            return 0f
        }
        return ((facePixelQuantity - LARGE_FACE_QUANTITY_START) *
            LARGE_FACE_QUANTITY_SCALE)
            .coerceIn(0f, 1f)
    }

    /**
     * Reduces the ordinary shot max-HDR ratio continuously as the large-face signal grows.
     *
     * MGC uses the same face coordinate, a power-law reduction, and a hard floor of six. Its
     * reduction power is a runtime flag rather than a function of face size. The requested dynamic
     * behavior interpolates in the same logarithmic ratio domain: no large face keeps the
     * configured ratio, while a saturated large-face signal reaches the six-to-one floor.
     */
    fun maxHdrRatioForLargeFace(baseMaxHdrRatio: Float, reductionStrength: Float): Float? {
        if (!baseMaxHdrRatio.isFinite() || baseMaxHdrRatio <= 0f ||
            !reductionStrength.isFinite() || reductionStrength !in 0f..1f
        ) {
            return null
        }
        if (reductionStrength == 0f || baseMaxHdrRatio <= LARGE_FACE_MAX_HDR_RATIO_FLOOR) {
            return baseMaxHdrRatio
        }
        val reduced = Math.exp(
            kotlin.math.ln(baseMaxHdrRatio.toDouble()) * (1f - reductionStrength) +
                kotlin.math.ln(LARGE_FACE_MAX_HDR_RATIO_FLOOR.toDouble()) * reductionStrength,
        ).toFloat()
        if (!reduced.isFinite() || reduced <= 0f) return null
        return maxOf(reduced, LARGE_FACE_MAX_HDR_RATIO_FLOOR)
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
        lensShadingStats: RawSceneAERawStats? = null,
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
                if (!validPositive(lscRed) || !validPositive(lscGreen) ||
                    !validPositive(lscBlue)
                ) {
                    return null
                }

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

    fun modelLogGainToLinear(logGain: Float): Float? {
        if (!logGain.isFinite()) return null
        val gain = kotlin.math.exp(logGain.toDouble()) - MODEL_LINEAR_GAIN_EPSILON
        return gain.takeIf { it.isFinite() && it > 0.0 }?.toFloat()
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
        // ComputeSafeUnderexposure is defined on sensor-normalized CFA maxima: a value of one
        // means that the original RAW sample reached the channel white level. The LinearRaw
        // fallback is already a rendered camera-RGB surface, so values near/above one no longer
        // carry that predicate. It remains useful for table/clipping diagnostics, but using it to
        // constrain shot-min fabricates a RAW saturation event and can erase the learned ideal TET.
        val hasSensorClippingContract = frame.fastMomentsStats.sensorNormalized
        val baseRawStats = measureRawClipping(
            frame = frame,
            metadata = metadata,
            relativeTetGain = 1f,
            collectSafeUnderexposure =
                anticipatedUnderexposure > 1f && hasSensorClippingContract,
        ) ?: return null
        val safeUnderexposure = when {
            anticipatedUnderexposure <= 1f -> 1f
            hasSensorClippingContract -> baseRawStats.safeUnderexposure
            // Linear RGB cannot distinguish an unclipped sensor sample from a clipped sample
            // reconstructed by the upstream render. It therefore cannot justify MGC's FLT_MAX
            // "no clipped RAW sample" result. Keep only ProcessAeStats' production unsafe
            // multiplier below; otherwise refresh incorrectly treats missing CFA evidence as
            // proof that arbitrary underexposure is safe.
            else -> 1f
        }
        // ProcessAeStats multiplies ComputeSafeUnderexposure by the default unsafe-underexposure
        // factor (1.1). The optional debug flag replaces this multiplier with infinity, but is not
        // enabled by the V25 production path.
        val allowedUnderexposure =
            safeUnderexposure * MGC_DEFAULT_UNSAFE_UNDEREXPOSURE_MULTIPLIER
        // Sensor-normalized RAW may legitimately return FLT_MAX when no sample is clipped.
        // Multiplication by 1.1 then produces +Infinity, which preserves MGC's unrestricted
        // underexposure result. Linear RGB never manufactures that sentinel.
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
                // Split an excessive HDR ratio symmetrically in log-exposure space. Both short
                // and long therefore move by sqrt(reduction), preserving their geometric mean.
                val shortMigrationPower = HDR_RATIO_LIMIT_SHORT_POWER
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
                val offset = (y * stats.width + x) * 4
                val red = stats.channelMax[offset]
                val greenEven = stats.channelMax[offset + 1]
                val greenOdd = stats.channelMax[offset + 2]
                val blue = stats.channelMax[offset + 3]
                if (!validNonNegative(red) || !validNonNegative(greenEven) ||
                    !validNonNegative(greenOdd) || !validNonNegative(blue)
                ) {
                    PLog.e(
                        TAG,
                        "Invalid mode-2 CFA maximum at ($x,$y): " +
                            "[${red}, ${greenEven}, ${greenOdd}, ${blue}]",
                    )
                    return null
                }

                if (stats.sensorNormalized) {
                    val redClipped = red * relativeTetGain >= RAW_CLIP_LEVEL
                    val greenEvenClipped =
                        greenEven * relativeTetGain >= RAW_CLIP_LEVEL
                    val greenOddClipped = greenOdd * relativeTetGain >= RAW_CLIP_LEVEL
                    val blueClipped = blue * relativeTetGain >= RAW_CLIP_LEVEL
                    if (!redClipped && !greenEvenClipped && !greenOddClipped && !blueClipped) {
                        continue
                    }
                    clippedPixels++
                    if (!collectSafeUnderexposure) continue

                    val lscR = minimumLensShadingGain(metadata, stats, 0, x, y)
                    val lscGr = minimumLensShadingGain(metadata, stats, 1, x, y)
                    val lscGb = minimumLensShadingGain(metadata, stats, 2, x, y)
                    val lscB = minimumLensShadingGain(metadata, stats, 3, x, y)
                    if (!validLensShadingGains(lscR, lscGr, lscGb, lscB, x, y, metadata)) {
                        return null
                    }
                    if (redClipped) {
                        safeUnderexposure = minOf(safeUnderexposure, whiteBalance[0] * lscR)
                    }
                    if (greenEvenClipped) {
                        safeUnderexposure = minOf(safeUnderexposure, whiteBalance[1] * lscGr)
                    }
                    if (greenOddClipped) {
                        safeUnderexposure = minOf(safeUnderexposure, whiteBalance[2] * lscGb)
                    }
                    if (blueClipped) {
                        safeUnderexposure = minOf(safeUnderexposure, whiteBalance[3] * lscB)
                    }
                    continue
                }

                val lscR = minimumLensShadingGain(metadata, stats, 0, x, y)
                val lscGr = minimumLensShadingGain(metadata, stats, 1, x, y)
                val lscGb = minimumLensShadingGain(metadata, stats, 2, x, y)
                val lscB = minimumLensShadingGain(metadata, stats, 3, x, y)
                if (!validLensShadingGains(lscR, lscGr, lscGb, lscB, x, y, metadata)) {
                    return null
                }
                val redClipped = red / lscR * relativeTetGain >= RAW_CLIP_LEVEL
                val greenEvenClipped = greenEven / lscGr * relativeTetGain >= RAW_CLIP_LEVEL
                val greenOddClipped = greenOdd / lscGb * relativeTetGain >= RAW_CLIP_LEVEL
                val blueClipped = blue / lscB * relativeTetGain >= RAW_CLIP_LEVEL
                if (!redClipped && !greenEvenClipped && !greenOddClipped && !blueClipped) {
                    continue
                }
                clippedPixels++
                if (!collectSafeUnderexposure) continue
                if (redClipped) {
                    safeUnderexposure = minOf(safeUnderexposure, whiteBalance[0] * lscR)
                }
                if (greenEvenClipped) {
                    safeUnderexposure = minOf(safeUnderexposure, whiteBalance[1] * lscGr)
                }
                if (greenOddClipped) {
                    safeUnderexposure = minOf(safeUnderexposure, whiteBalance[2] * lscGb)
                }
                if (blueClipped) {
                    safeUnderexposure = minOf(safeUnderexposure, whiteBalance[3] * lscB)
                }
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
        stats: RawSceneAERawStats,
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
        stats: RawSceneAERawStats,
        channel: Int,
        u: Float,
        v: Float,
    ): Float {
        val rotation = Math.floorMod(stats.sourceRotationDegrees, 360)
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
        val sourceU = stats.sourceBounds[0] +
            (stats.sourceBounds[2] - stats.sourceBounds[0]) * orientedU
        val sourceV = stats.sourceBounds[1] +
            (stats.sourceBounds[3] - stats.sourceBounds[1]) * orientedV
        return lensShadingGain(
            metadata = metadata,
            channel = channel,
            sourceU = sourceU,
            sourceV = sourceV,
        )
    }

    private fun validLensShadingGains(
        red: Float,
        greenEven: Float,
        greenOdd: Float,
        blue: Float,
        x: Int,
        y: Int,
        metadata: RawMetadata,
    ): Boolean {
        if (validPositive(red) && validPositive(greenEven) &&
            validPositive(greenOdd) && validPositive(blue)
        ) {
            return true
        }
        PLog.e(
            TAG,
            "Invalid mode-2 LSC gain at ($x,$y): " +
                "[$red, $greenEven, $greenOdd, $blue] " +
                "map=${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight}",
        )
        return false
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
        // RawToLoResRgb uses llroundf. Inputs are non-negative here, so floor(x + 0.5)
        // preserves its half-away-from-zero behavior; kotlin.math.round uses ties-to-even.
        val code = kotlin.math.floor(value * METERING_U15_MAX + 0.5f)
            .toInt()
            .coerceIn(0, METERING_U15_MAX)
        return code.toFloat() / METERING_U15_SCALE
    }

    private fun validTetRange(minTetMs: Float, maxTetMs: Float): Boolean =
        minTetMs.isFinite() && maxTetMs.isFinite() && minTetMs > 0f && maxTetMs >= minTetMs

    private fun validPositive(value: Float): Boolean = value.isFinite() && value > 0f

    private fun validPositiveTets(vararg tets: Float): Boolean = tets.all(::validPositive)

    private fun validNonNegative(value: Float): Boolean = value.isFinite() && value >= 0f

    private fun positiveOverride(value: Float?): Float? =
        value?.takeIf { it.isFinite() && it > 0f }
}

/** Device-independent, capture-side multi-branch scene exposure model. */
internal object RawSceneExposureEstimator {
    private const val TAG = "RawSceneExposureEstimator"
    private const val SHORT_MODEL_ASSET = "mgc_ae/short_scene_exposure.tflite"
    private const val LONG_MODEL_ASSET = "mgc_ae/long_scene_exposure.tflite"
    private const val PORTRAIT_MODEL_ASSET = "mgc_ae/portrait_scene_exposure.tflite"
    private const val SOLVE_BUDGET_MS = 200f
    private val lock = Any()

    private data class LongModelInputContract(
        val semanticInputIndex: Int,
        val colorInputIndex: Int,
        val semanticInputName: String,
        val colorInputName: String,
    )

    private data class ModelSet(
        val short: Interpreter,
        val long: Interpreter,
        val portrait: Interpreter,
        val shortInputName: String,
        val longInputContract: LongModelInputContract,
        val portraitInputName: String,
    ) {
        fun close() {
            short.close()
            long.close()
            portrait.close()
        }
    }

    @Volatile
    private var models: ModelSet? = null

    /**
     * Moves interpreter creation and the first short/long/portrait inference out of the
     * post-capture critical path. Calls are idempotent and share the inference lock.
     */
    fun warmUp(context: Context) {
        if (models != null) return
        val startedNs = SystemClock.elapsedRealtimeNanos()
        val initialized = synchronized(lock) {
            if (models != null) {
                false
            } else {
                createModels(context.applicationContext)?.let { created ->
                    models = created
                    true
                } ?: false
            }
        }
        PLog.i(
            TAG,
            "RAW_SCENE_EXPOSURE stage=ENGINE_WARMUP initialized=$initialized " +
                "totalMs=${elapsedMs(startedNs)}",
        )
    }

    fun estimate(
        context: Context,
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        deviceLimits: RawSceneExposureDeviceLimits?,
        faceMask: FloatArray? = null,
    ): RawSceneExposureEstimate? {
        val estimateStartedNs = SystemClock.elapsedRealtimeNanos()
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
        val colorInput = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.COLOR_CHANNELS,
        )
        val semanticInput = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.SEMANTIC_CHANNELS,
        )
        if (!RawSceneExposureMath.writeCombinedModelInput(
                frame = frame,
                logSceneBrightness = measurement.logSceneBrightness,
                destination = combinedInput,
                faceMap = faceMask,
            ) || !RawSceneExposureMath.writeSplitModelInputs(
                frame = frame,
                logSceneBrightness = measurement.logSceneBrightness,
                colorDestination = colorInput,
                semanticDestination = semanticInput,
                faceMap = faceMask,
            )
        ) {
            PLog.e(TAG, "Unable to construct RAW scene exposure ML inputs")
            return null
        }
        val faceMaskRms = RawSceneExposureMath.faceMaskRms(faceMask)
        val facePixelQuantity = RawSceneExposureMath.facePixelQuantity(faceMask)
        val detectedFaceMaskEvidence = faceMaskRms
            ?.let { it > RawSceneExposureMath.FACE_MASK_RMS_FLOOR } == true
        val largeFaceHdrRatioReductionStrength =
            RawSceneExposureMath.largeFaceHdrRatioReductionStrength(facePixelQuantity)
        val effectiveMaxHdrRatio = RawSceneExposureMath.maxHdrRatioForLargeFace(
            baseMaxHdrRatio = RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
            reductionStrength = largeFaceHdrRatioReductionStrength,
        ) ?: run {
            PLog.e(TAG, "Unable to resolve the large-face max HDR ratio")
            return null
        }
        val preparationCompletedNs = SystemClock.elapsedRealtimeNanos()

        return synchronized(lock) {
            val lockAcquiredNs = SystemClock.elapsedRealtimeNanos()
            val engineWasCold = models == null
            val engineStartedNs = lockAcquiredNs
            val activeModels = models ?: createModels(context)?.also { models = it }
                ?: return@synchronized null
            val engineCompletedNs = SystemClock.elapsedRealtimeNanos()
            try {
                val shortStartedNs = engineCompletedNs
                val shortLogGain = runCombinedModel(activeModels.short, combinedInput)
                val shortCompletedNs = SystemClock.elapsedRealtimeNanos()
                val longLogGain = runLongModel(
                    interpreter = activeModels.long,
                    contract = activeModels.longInputContract,
                    semanticInput = semanticInput,
                    colorInput = colorInput,
                )
                val longCompletedNs = SystemClock.elapsedRealtimeNanos()
                val portraitLogGain = runCombinedModel(activeModels.portrait, combinedInput)
                val portraitCompletedNs = SystemClock.elapsedRealtimeNanos()
                val branches = RawSceneExposureBranches(
                    shortLogGain = shortLogGain,
                    longLogGain = longLogGain,
                    portraitLogGain = portraitLogGain,
                )
                val ideals = RawSceneExposureMath.resolveIdealExposure(
                    currentTetMs = measurement.currentTetMs,
                    branches = branches,
                ) ?: run {
                    PLog.e(TAG, "RAW scene exposure ML AE ideals are invalid")
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
                        maxHdrRatio = effectiveMaxHdrRatio,
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
                val rawStatsSource = if (frame.fastMomentsStats.sensorNormalized) {
                    "RAW_CFA_16X16_MAX"
                } else {
                    "CAMERA_RGB_FALLBACK"
                }
                val safeUnderexposureSource = if (frame.fastMomentsStats.sensorNormalized) {
                    "RAW_CFA_WHITE_LEVEL"
                } else {
                    "LINEAR_RGB_CONSERVATIVE_ONE"
                }
                val finalizationCompletedNs = SystemClock.elapsedRealtimeNanos()
                PLog.i(
                    TAG,
                    "RAW_SCENE_EXPOSURE stage=SOLVE_TIMING " +
                        "prepareMs=${elapsedMs(estimateStartedNs, preparationCompletedNs)} " +
                        "lockWaitMs=${elapsedMs(preparationCompletedNs, lockAcquiredNs)} " +
                        "engineCold=$engineWasCold " +
                        "engineMs=${elapsedMs(engineStartedNs, engineCompletedNs)} " +
                        "shortMs=${elapsedMs(shortStartedNs, shortCompletedNs)} " +
                        "longMs=${elapsedMs(shortCompletedNs, longCompletedNs)} " +
                        "portraitMs=${elapsedMs(longCompletedNs, portraitCompletedNs)} " +
                        "finalizeMs=${elapsedMs(portraitCompletedNs, finalizationCompletedNs)} " +
                        "totalMs=${elapsedMs(estimateStartedNs, finalizationCompletedNs)} " +
                        "budgetMs=$SOLVE_BUDGET_MS",
                )
                PLog.i(
                    TAG,
                    "RAW_SCENE_EXPOSURE stage=MGC_ML_AE_FINALIZE " +
                        "mode=2 " +
                        "computeAeResultsProcessRawStats=true " +
                        "processAeStatsExecuted=${fastMomentsStats.processAeStatsExecuted} " +
                        "shortLongSource=MGC_9_7_V25_TFLITE " +
                        "modelInputContract=RUN_ML_AE_CORE_ADVANCED_64X64 " +
                        "modelColorContract=LN_R_G_B_PLUS_1E_6_AND_LOG_SCENE_BRIGHTNESS " +
                        "modelSemanticEnums=[3,4,5,6,7] " +
                        "modelFaceMapEnum=3 " +
                        "modelPortraitMaskEnum=4 " +
                        "modelMissingSaliency=0.05 " +
                        "shortInputName=${activeModels.shortInputName} " +
                        "longSemanticInputName=${activeModels.longInputContract.semanticInputName} " +
                        "longColorInputName=${activeModels.longInputContract.colorInputName} " +
                        "portraitInputName=${activeModels.portraitInputName} " +
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
                        "facePixelQuantity=$facePixelQuantity " +
                        "faceMaskSource=${if (faceMask != null) "BLAZEFACE_VALIDATED_SOFT_FACE_ELLIPSE" else "NONE"} " +
                        "shortModelMaskApplied=$detectedFaceMaskEvidence " +
                        "longModelMaskApplied=$detectedFaceMaskEvidence " +
                        "portraitModelMaskApplied=$detectedFaceMaskEvidence " +
                        "portraitGainMigrationApplied=false " +
                        "solver=MGC_RUN_ML_AE_CORE " +
                        "rawStatsFinalizer=MGC_MODE_2 " +
                        "hdrRatioBeforeLimit=${fusion.hdrRatioBeforeLimit} " +
                        "finalHdrRatio=${fusion.finalHdrRatio} " +
                        "hdrNetRatioSource=FINAL_LONG_TET_OVER_FINAL_SHORT_TET " +
                        "baseMaxHdrRatio=${RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO} " +
                        "effectiveMaxHdrRatio=$effectiveMaxHdrRatio " +
                        "largeFaceHdrRatioReductionStrength=$largeFaceHdrRatioReductionStrength " +
                        "hdrRatioLimitShortPower=${RawSceneExposureMath.HDR_RATIO_LIMIT_SHORT_POWER} " +
                        "hdrRatioLimitLongPower=${1f - RawSceneExposureMath.HDR_RATIO_LIMIT_SHORT_POWER} " +
                        "hdrRatioLimited=${fusion.hdrRatioLimited} " +
                        "highlightPreservationTetMs=$highlightPreservationTetMs " +
                        "safeUnderexposureApplied=${fusion.safeUnderexposureApplied} " +
                        "anticipatedUnderexposure=${fastMomentsStats.anticipatedUnderexposure} " +
                        "safeUnderexposure=${fastMomentsStats.safeUnderexposure} " +
                        "safeUnderexposureSource=$safeUnderexposureSource " +
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
                    safeUnderexposure = fastMomentsStats.safeUnderexposure,
                    fractionPixelsClippedAtFinalShortTet =
                        fractionPixelsClippedAtFinalShortTet,
                    summaryText = buildSummaryText(
                        models = activeModels,
                        frame = frame,
                        metadata = metadata,
                        measurement = measurement,
                        referenceSensitivityIso = referenceSensitivityIso,
                        shotRange = shotRange,
                        branches = branches,
                        fastMomentsStats = fastMomentsStats,
                        fusion = fusion,
                        rawStatsSource = rawStatsSource,
                        faceMaskRms = faceMaskRms,
                        facePixelQuantity = facePixelQuantity,
                        faceMaskApplied = detectedFaceMaskEvidence,
                        largeFaceHdrRatioReductionStrength =
                            largeFaceHdrRatioReductionStrength,
                        effectiveMaxHdrRatio = effectiveMaxHdrRatio,
                        fractionPixelsClippedAtFinalShortTet =
                            fractionPixelsClippedAtFinalShortTet,
                    ),
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

    private fun runLongModel(
        interpreter: Interpreter,
        contract: LongModelInputContract,
        semanticInput: ByteBuffer,
        colorInput: ByteBuffer,
    ): Float {
        semanticInput.rewind()
        colorInput.rewind()
        val inputs = Array<Any>(interpreter.inputTensorCount) { colorInput }
        inputs[contract.semanticInputIndex] = semanticInput
        inputs[contract.colorInputIndex] = colorInput
        val output = Array(1) { FloatArray(1) }
        interpreter.runForMultipleInputsOutputs(
            inputs,
            mutableMapOf<Int, Any>(0 to output),
        )
        return output[0][0].also { check(it.isFinite()) }
    }

    private fun buildSummaryText(
        models: ModelSet,
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        measurement: RawSceneBrightnessMeasurement,
        referenceSensitivityIso: Int,
        shotRange: RawSceneExposureShotRange,
        branches: RawSceneExposureBranches,
        fastMomentsStats: RawSceneFastMomentsAeStats,
        fusion: RawSceneExposureFusion,
        rawStatsSource: String,
        faceMaskRms: Float?,
        facePixelQuantity: Float?,
        faceMaskApplied: Boolean,
        largeFaceHdrRatioReductionStrength: Float,
        effectiveMaxHdrRatio: Float,
        fractionPixelsClippedAtFinalShortTet: Float,
    ): String = buildString(3_500) {
        appendLine("PhotonCamera RAW AE SummaryText v1")
        appendLine("stage=MGC_ML_AE_FINALIZE")
        appendLine("mode=2")
        appendLine("shortLongSource=MGC_9_7_V25_TFLITE")
        appendLine("solver=MGC_RUN_ML_AE_CORE")
        appendLine("rawStatsFinalizer=MGC_MODE_2")
        appendLine("modelInputContract=RUN_ML_AE_CORE_ADVANCED_64X64")
        appendLine("modelColorChannels=[LN_R_PLUS_1E_6,LN_G_PLUS_1E_6,LN_B_PLUS_1E_6,LOG_SCENE_BRIGHTNESS]")
        appendLine("modelSemanticChannelEnums=[3,4,5,6,7]")
        appendLine("modelTensorLayout=NHWC_Y_X_CHANNEL")
        appendLine("modelFaceMapEnum=3")
        appendLine("modelPortraitMaskEnum=4")
        appendLine("modelMissingSaliencyEnum=6")
        appendLine("modelMissingSaliencyValue=0.05")
        appendLine("shortModelAsset=$SHORT_MODEL_ASSET")
        appendLine("longModelAsset=$LONG_MODEL_ASSET")
        appendLine("portraitModelAsset=$PORTRAIT_MODEL_ASSET")
        appendLine("shortInputName=${models.shortInputName}")
        appendLine("longSemanticInputName=${models.longInputContract.semanticInputName}")
        appendLine("longSemanticInputIndex=${models.longInputContract.semanticInputIndex}")
        appendLine("longColorInputName=${models.longInputContract.colorInputName}")
        appendLine("longColorInputIndex=${models.longInputContract.colorInputIndex}")
        appendLine("portraitInputName=${models.portraitInputName}")
        appendLine("camera2ColorCorrectionMode=${metadata.camera2ColorCorrectionMode}")
        appendLine("shortLnGain=${branches.shortLogGain}")
        appendLine("longLnGain=${branches.longLogGain}")
        appendLine("portraitLnGain=${branches.portraitLogGain}")
        appendLine("idealShortTetMs=${fusion.idealShortTetMs}")
        appendLine("idealLongTetMs=${fusion.idealLongTetMs}")
        appendLine("idealPortraitTetMs=${fusion.idealPortraitTetMs}")
        appendLine("shortIdealGain=${fusion.shortIdealGain}")
        appendLine("longIdealGain=${fusion.longIdealGain}")
        appendLine("portraitIdealGain=${fusion.portraitIdealGain}")
        appendLine("exposureCompensationEv=${metadata.exposureCompensation}")
        appendLine("exposureCompensationGain=${fusion.exposureCompensationGain}")
        appendLine("compensatedShortTetMs=${fusion.compensatedShortTetMs}")
        appendLine("compensatedLongTetMs=${fusion.compensatedLongTetMs}")
        appendLine("finalShortTetMs=${fusion.finalShortTetMs}")
        appendLine("finalLongTetMs=${fusion.finalLongTetMs}")
        appendLine("finalPortraitTetMs=${fusion.finalPortraitTetMs}")
        appendLine("finalShortGain=${fusion.finalShortGain}")
        appendLine("finalLongGain=${fusion.finalLongGain}")
        appendLine("finalPortraitGain=${fusion.finalPortraitGain}")
        appendLine("hdrRatioBeforeLimit=${fusion.hdrRatioBeforeLimit}")
        appendLine("finalHdrRatio=${fusion.finalHdrRatio}")
        appendLine("baseMaxHdrRatio=${RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO}")
        appendLine("effectiveMaxHdrRatio=$effectiveMaxHdrRatio")
        appendLine("largeFaceHdrRatioReductionStrength=$largeFaceHdrRatioReductionStrength")
        appendLine("hdrRatioLimitShortPower=${RawSceneExposureMath.HDR_RATIO_LIMIT_SHORT_POWER}")
        appendLine("hdrRatioLimitLongPower=${1f - RawSceneExposureMath.HDR_RATIO_LIMIT_SHORT_POWER}")
        appendLine("hdrRatioLimited=${fusion.hdrRatioLimited}")
        appendLine("faceMaskRms=$faceMaskRms")
        appendLine("facePixelQuantity=$facePixelQuantity")
        appendLine("shortModelMaskApplied=$faceMaskApplied")
        appendLine("longModelMaskApplied=$faceMaskApplied")
        appendLine("portraitModelMaskApplied=$faceMaskApplied")
        appendLine("sourceClippedFraction=${fusion.sourceClippedFraction}")
        appendLine("shortClippedFraction=${fusion.shortClippedFraction}")
        appendLine("longClippedFraction=${fusion.longClippedFraction}")
        appendLine("portraitClippedFraction=${fusion.portraitClippedFraction}")
        appendLine("fractionPixelsClippedAtBaseTet=${fastMomentsStats.fractionPixelsClippedAtBaseTet}")
        appendLine("fractionPixelsClippedAtFinalShortTet=$fractionPixelsClippedAtFinalShortTet")
        appendLine("rawStatsSource=$rawStatsSource")
        appendLine("rawStatsSize=${frame.fastMomentsStats.width}x${frame.fastMomentsStats.height}")
        appendLine("exposureTimeMs=${measurement.exposureTimeMs}")
        appendLine("iso=${metadata.iso}")
        appendLine("referenceIso=$referenceSensitivityIso")
        appendLine("sensorSensitivity=${measurement.sensorSensitivity}")
        appendLine("sensorSensitivitySource=MGC_9_7_V25_TUNING")
        appendLine("geometricSignal=${measurement.geometricSignal}")
        appendLine("predictedImageBrightness=${measurement.predictedImageBrightness}")
        appendLine("currentTetMs=${measurement.currentTetMs}")
        appendLine("logSceneBrightness=${measurement.logSceneBrightness}")
        appendLine("requestShotMinTetMs=${shotRange.requestMinTetMs}")
        appendLine("shotMinTetMs=${shotRange.minTetMs}")
        appendLine("shotMaxTetMs=${shotRange.maxTetMs}")
        appendLine("anticipatedUnderexposure=${fastMomentsStats.anticipatedUnderexposure}")
        appendLine("allowedUnderexposure=${fastMomentsStats.allowedUnderexposure}")
        appendLine("adjustedShotMinTetMs=${fastMomentsStats.adjustedShotMinTetMs}")
        appendLine("safeUnderexposure=${fastMomentsStats.safeUnderexposure}")
        appendLine(
            "safeUnderexposureSource=" + if (frame.fastMomentsStats.sensorNormalized) {
                "RAW_CFA_WHITE_LEVEL"
            } else {
                "LINEAR_RGB_CONSERVATIVE_ONE"
            },
        )
    }.trimEnd()

    private fun createModels(context: Context): ModelSet? {
        var short: Interpreter? = null
        var long: Interpreter? = null
        var portrait: Interpreter? = null
        var candidate: ModelSet? = null
        return try {
            val loadedShort = createInterpreter(context, SHORT_MODEL_ASSET).also { short = it }
            val loadedLong = createInterpreter(context, LONG_MODEL_ASSET).also { long = it }
            val loadedPortrait = createInterpreter(context, PORTRAIT_MODEL_ASSET).also {
                portrait = it
            }
            val shortInputName = validateCombinedModel(loadedShort, "short")
            val longInputContract = validateLongModel(loadedLong)
            val portraitInputName = validateCombinedModel(loadedPortrait, "portrait")
            candidate = ModelSet(
                short = loadedShort,
                long = loadedLong,
                portrait = loadedPortrait,
                shortInputName = shortInputName,
                longInputContract = longInputContract,
                portraitInputName = portraitInputName,
            )
            warmCombinedModel(candidate.short)
            warmLongModel(candidate.long, candidate.longInputContract)
            warmCombinedModel(candidate.portrait)
            PLog.i(
                TAG,
                "RAW_SCENE_EXPOSURE stage=ML_MODEL_CONTRACT " +
                    "short=${candidate.shortInputName}:[1,64,64,9] " +
                    "longSemantic=${candidate.longInputContract.semanticInputName}:" +
                    "[1,64,64,5]@${candidate.longInputContract.semanticInputIndex} " +
                    "longColor=${candidate.longInputContract.colorInputName}:" +
                    "[1,64,64,4]@${candidate.longInputContract.colorInputIndex} " +
                    "portrait=${candidate.portraitInputName}:[1,64,64,9]",
            )
            candidate
        } catch (error: Throwable) {
            if (candidate != null) {
                candidate.close()
            } else {
                short?.close()
                long?.close()
                portrait?.close()
            }
            PLog.e(TAG, "Unable to initialize RAW scene exposure ML models", error)
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

    private fun validateCombinedModel(interpreter: Interpreter, name: String): String {
        check(interpreter.inputTensorCount == 1) { "$name AE model input count changed" }
        check(interpreter.outputTensorCount == 1) { "$name AE model output count changed" }
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        check(input.dataType() == DataType.FLOAT32) { "$name AE model input type changed" }
        check(input.shape().contentEquals(intArrayOf(1, 64, 64, 9))) {
            "$name AE model input shape changed: ${input.shape().contentToString()}"
        }
        check(input.name() == "serving_default_combined_input:0") {
            "$name AE model input name changed: ${input.name()}"
        }
        validateScalarOutput(output.dataType(), output.shape(), name)
        return input.name()
    }

    private fun validateLongModel(interpreter: Interpreter): LongModelInputContract {
        check(interpreter.inputTensorCount == 2) { "long AE model input count changed" }
        check(interpreter.outputTensorCount == 1) { "long AE model output count changed" }
        var semanticInputIndex = -1
        var colorInputIndex = -1
        var semanticInputName = ""
        var colorInputName = ""
        repeat(interpreter.inputTensorCount) { index ->
            val input = interpreter.getInputTensor(index)
            check(input.dataType() == DataType.FLOAT32) {
                "long AE model input $index type changed"
            }
            when {
                input.shape().contentEquals(intArrayOf(1, 64, 64, 5)) -> {
                    check(semanticInputIndex == -1) { "long AE semantic input is ambiguous" }
                    semanticInputIndex = index
                    semanticInputName = input.name()
                }
                input.shape().contentEquals(intArrayOf(1, 64, 64, 4)) -> {
                    check(colorInputIndex == -1) { "long AE color input is ambiguous" }
                    colorInputIndex = index
                    colorInputName = input.name()
                }
                else -> error(
                    "long AE model input $index shape changed: ${input.shape().contentToString()}",
                )
            }
        }
        check(semanticInputIndex >= 0 && colorInputIndex >= 0) {
            "long AE model semantic/color inputs are incomplete"
        }
        check(semanticInputName == "serving_default_combined_channels:0") {
            "long AE semantic input name changed: $semanticInputName"
        }
        check(colorInputName == "serving_default_color_channels_and_log_scene_brightness:0") {
            "long AE color input name changed: $colorInputName"
        }
        val output = interpreter.getOutputTensor(0)
        validateScalarOutput(output.dataType(), output.shape(), "long")
        return LongModelInputContract(
            semanticInputIndex = semanticInputIndex,
            colorInputIndex = colorInputIndex,
            semanticInputName = semanticInputName,
            colorInputName = colorInputName,
        )
    }

    private fun warmCombinedModel(interpreter: Interpreter) {
        val input = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.INPUT_CHANNELS,
        )
        check(runCombinedModel(interpreter, input).isFinite())
    }

    private fun warmLongModel(
        interpreter: Interpreter,
        contract: LongModelInputContract,
    ) {
        val semanticInput = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.SEMANTIC_CHANNELS,
        )
        val colorInput = directFloatBuffer(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT *
                RawSceneExposureMath.COLOR_CHANNELS,
        )
        check(runLongModel(interpreter, contract, semanticInput, colorInput).isFinite())
    }

    private fun elapsedMs(startedNs: Long, completedNs: Long = SystemClock.elapsedRealtimeNanos()): Float =
        (completedNs - startedNs).toFloat() / 1_000_000f

    private fun validateScalarOutput(type: DataType, shape: IntArray, name: String) {
        check(type == DataType.FLOAT32) { "$name AE model output type changed" }
        check(shape.contentEquals(intArrayOf(1, 1))) { "$name AE model output shape changed" }
    }

    private fun directFloatBuffer(floatCount: Int): ByteBuffer =
        ByteBuffer.allocateDirect(floatCount * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
}
