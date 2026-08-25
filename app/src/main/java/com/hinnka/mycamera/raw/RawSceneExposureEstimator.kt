package com.hinnka.mycamera.raw

import android.content.Context
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
)

/** Capture-side value consumed by MGC HDRNet. */
internal data class RawSceneExposureEstimate(
    val hdrRatio: Float,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
    }
}

internal data class RawSceneBrightnessMeasurement(
    val geometricSignal: Float,
    val predictedImageBrightness: Float,
    val exposureTimeMs: Float,
    val overallGain: Float,
    val currentTetMs: Float,
    val apertureTransmission: Float,
    val logSceneBrightness: Float,
)

internal enum class RawSceneExposureShotMaxSource {
    MAX_POST_CAPTURE_GAIN,
    MAX_OVERALL_GAIN,
}

internal data class RawSceneExposureShotRange(
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

/** Inputs to MGC's post-inference ComputeAeResults finalization. */
internal data class RawSceneExposureFinalization(
    val shotMinTetMs: Float,
    val shotMaxTetMs: Float,
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
    const val INPUT_WIDTH = 64
    const val INPUT_HEIGHT = 64
    const val COLOR_CHANNELS = 4
    const val SEMANTIC_CHANNELS = 5
    const val INPUT_CHANNELS = COLOR_CHANNELS + SEMANTIC_CHANNELS

    // Ordinary MGC/Google ZSL exposure tuning. These are finalizer constraints, not sensor limits.
    const val MAX_POST_CAPTURE_GAIN = 26.5f
    const val MAX_OVERALL_GAIN = 102f
    // DNG exposure equations use ISO 100 as the portable reference sensitivity. Supported sensor
    // ISO ranges are not part of the DNG image contract and must not be read from the current phone.
    const val DNG_REFERENCE_SENSITIVITY_ISO = 100

    // MGC's low-resolution RGB scene measurement uses ten U15 code values as its floor.
    private const val SIGNAL_FLOOR = 10f / 32767f
    // PrepareMlAeInput converts every color channel to ln(max(linearRgb, 0) + 1e-6).
    private const val MODEL_RGB_LOG_FLOOR = 1e-6f
    // MeasureLogSceneBrightness uses the reflected-light calibration constant directly.
    private const val SCENE_BRIGHTNESS_CALIBRATION = 14.6
    private const val SCENE_BRIGHTNESS_LOG_FLOOR = 1e-4
    // RunMlAeCore performs expf(model_output) - 1e-6 before using every branch gain.
    private const val MODEL_LINEAR_GAIN_EPSILON = 1e-6
    private const val NANOS_PER_MILLISECOND = 1_000_000.0
    private const val MILLIS_PER_SECOND = 1_000.0
    private const val HIGHLIGHT_CLIP_LEVEL = 1.0
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
        val apertureTransmission = 1.0 / (aperture.toDouble() * aperture.toDouble())
        val normalizedExposure =
            (apertureTransmission / SCENE_BRIGHTNESS_CALIBRATION) *
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
            apertureTransmission = apertureTransmission.toFloat(),
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
    ): Boolean {
        if (!validateInput(frame, logSceneBrightness) ||
            destination.capacity() < frame.width * frame.height * INPUT_CHANNELS * Float.SIZE_BYTES
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
            // MGC explicitly runs the advanced model with zero-valued missing semantic inputs.
            repeat(SEMANTIC_CHANNELS) { destination.putFloat(0f) }
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
            repeat(SEMANTIC_CHANNELS) { semanticDestination.putFloat(0f) }
        }
        colorDestination.rewind()
        semanticDestination.rewind()
        return true
    }

    fun modelLogGainToLinear(logGain: Float): Float? {
        if (!logGain.isFinite()) return null
        val gain = kotlin.math.exp(logGain.toDouble()) - MODEL_LINEAR_GAIN_EPSILON
        return gain.takeIf { it.isFinite() && it > 0.0 }?.toFloat()
    }

    /**
     * Reproduces the MGC ML-AE ideal-TET to final-TET state transition.
     *
     * The three neural outputs are exposure gains relative to [currentTetMs]. MGC first turns
     * them into absolute ideal TETs. The final short TET starts at the shortest positive ideal TET;
     * long and portrait remain independent capture roles. Shot-range, HDR-ratio, safe-underexposure
     * and explicit final-TET overrides are then applied in the same order, followed by the hard
     * invariant final_short_tet <= min(final_long_tet, final_portrait_tet).
     */
    fun finalizeAeResults(
        frame: RawSceneLinearFrame,
        currentTetMs: Float,
        branches: RawSceneExposureBranches,
        finalization: RawSceneExposureFinalization,
    ): RawSceneExposureFusion? {
        if (!currentTetMs.isFinite() || currentTetMs <= 0f ||
            !validTetRange(finalization.shotMinTetMs, finalization.shotMaxTetMs)
        ) {
            return null
        }
        val shortIdealGain = modelLogGainToLinear(branches.shortLogGain) ?: return null
        val longIdealGain = modelLogGainToLinear(branches.longLogGain) ?: return null
        val portraitIdealGain = modelLogGainToLinear(branches.portraitLogGain) ?: return null
        val idealShortTetMs = currentTetMs * shortIdealGain
        val idealLongTetMs = currentTetMs * longIdealGain
        val idealPortraitTetMs = currentTetMs * portraitIdealGain
        if (!validPositiveTets(idealShortTetMs, idealLongTetMs, idealPortraitTetMs)) return null

        // MGC's AeResults finalizer treats every positive portrait TET as a frame-role constraint;
        // face presence never switches the displayed result from short to portrait.
        var finalShortTetMs = minOf(idealShortTetMs, idealLongTetMs, idealPortraitTetMs)
            .coerceIn(finalization.shotMinTetMs, finalization.shotMaxTetMs)
        var finalLongTetMs = idealLongTetMs.coerceIn(
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
                // This is the original highlight-preservation floor. idealLongTetMs is the
                // pre-shot-range desired long TET and 24 is MGC's hard-coded denominator floor.
                val preservedShortTetMs = maxOf(
                    safeUnderexposureTetMs,
                    finalLongTetMs / maxOf(idealLongTetMs, 24f),
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

    private fun validTetRange(minTetMs: Float, maxTetMs: Float): Boolean =
        minTetMs.isFinite() && maxTetMs.isFinite() && minTetMs > 0f && maxTetMs >= minTetMs

    private fun validPositiveTets(vararg tets: Float): Boolean =
        tets.all { it.isFinite() && it > 0f }

    private fun positiveOverride(value: Float?): Float? =
        value?.takeIf { it.isFinite() && it > 0f }
}

/** Device-independent, capture-side multi-branch scene exposure model. */
internal object RawSceneExposureEstimator {
    private const val TAG = "RawSceneExposureEstimator"
    private const val SHORT_MODEL_ASSET = "mgc_ae/short_scene_exposure.tflite"
    private const val LONG_MODEL_ASSET = "mgc_ae/long_scene_exposure.tflite"
    private const val PORTRAIT_MODEL_ASSET = "mgc_ae/portrait_scene_exposure.tflite"
    private val lock = Any()

    private data class ModelSet(
        val short: Interpreter,
        val long: Interpreter,
        val portrait: Interpreter,
    ) {
        fun close() {
            short.close()
            long.close()
            portrait.close()
        }
    }

    @Volatile
    private var models: ModelSet? = null

    fun estimate(
        context: Context,
        frame: RawSceneLinearFrame,
        metadata: RawMetadata,
        deviceLimits: RawSceneExposureDeviceLimits?,
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
            ) || !RawSceneExposureMath.writeSplitModelInputs(
                frame = frame,
                logSceneBrightness = measurement.logSceneBrightness,
                colorDestination = colorInput,
                semanticDestination = semanticInput,
            )
        ) {
            PLog.e(TAG, "Unable to construct RAW scene exposure model inputs")
            return null
        }

        return synchronized(lock) {
            val activeModels = models ?: createModels(context)?.also { models = it }
                ?: return@synchronized null
            try {
                val shortLogGain = runCombinedModel(activeModels.short, combinedInput)
                val longLogGain = runLongModel(activeModels.long, semanticInput, colorInput)
                val portraitLogGain = runCombinedModel(activeModels.portrait, combinedInput)
                val branches = RawSceneExposureBranches(
                    shortLogGain = shortLogGain,
                    longLogGain = longLogGain,
                    portraitLogGain = portraitLogGain,
                )
                val fusion = RawSceneExposureMath.finalizeAeResults(
                    frame = frame,
                    currentTetMs = measurement.currentTetMs,
                    branches = branches,
                    finalization = RawSceneExposureFinalization(
                        shotMinTetMs = shotRange.minTetMs,
                        shotMaxTetMs = shotRange.maxTetMs,
                    ),
                ) ?: run {
                    PLog.e(TAG, "RAW scene exposure MGC AE finalization returned invalid values")
                    return@synchronized null
                }
                PLog.i(
                    TAG,
                    "RAW_SCENE_EXPOSURE stage=MGC_AE_FINALIZE " +
                        "shortLnGain=${branches.shortLogGain} " +
                        "longLnGain=${branches.longLogGain} " +
                        "portraitLnGain=${branches.portraitLogGain} " +
                        "idealShortTetMs=${fusion.idealShortTetMs} " +
                        "idealLongTetMs=${fusion.idealLongTetMs} " +
                        "idealPortraitTetMs=${fusion.idealPortraitTetMs} " +
                        "finalShortTetMs=${fusion.finalShortTetMs} " +
                        "finalLongTetMs=${fusion.finalLongTetMs} " +
                        "finalPortraitTetMs=${fusion.finalPortraitTetMs} " +
                        "shortIdealGain=${fusion.shortIdealGain} " +
                        "longIdealGain=${fusion.longIdealGain} " +
                        "portraitIdealGain=${fusion.portraitIdealGain} " +
                        "finalShortGain=${fusion.finalShortGain} " +
                        "finalLongGain=${fusion.finalLongGain} " +
                        "finalPortraitGain=${fusion.finalPortraitGain} " +
                        "solver=MGC_ML_AE_ORIGINAL_TET " +
                        "hdrRatioBeforeLimit=${fusion.hdrRatioBeforeLimit} " +
                        "finalHdrRatio=${fusion.finalHdrRatio} " +
                        "hdrRatioLimited=${fusion.hdrRatioLimited} " +
                        "safeUnderexposureApplied=${fusion.safeUnderexposureApplied} " +
                        "clipSource=${fusion.sourceClippedFraction} " +
                        "clipShort=${fusion.shortClippedFraction} " +
                        "clipLong=${fusion.longClippedFraction} " +
                        "clipPortrait=${fusion.portraitClippedFraction} " +
                        "clipFinal=${fusion.finalClippedFraction} " +
                        "faceEvidence=${metadata.sceneHasFace} " +
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
                        "shotMinTetMs=${shotRange.minTetMs} " +
                        "shotMaxTetMs=${shotRange.maxTetMs} " +
                        "shotMaxSource=${shotRange.maxSource} " +
                        "maxPostCaptureTetMs=${shotRange.maxPostCaptureTetMs} " +
                        "maxOverallTetMs=${shotRange.maxOverallTetMs} " +
                        "maxPostCaptureGain=${RawSceneExposureMath.MAX_POST_CAPTURE_GAIN} " +
                        "tuningMaxOverallGain=${RawSceneExposureMath.MAX_OVERALL_GAIN} " +
                        "apertureTransmission=${measurement.apertureTransmission}",
                )
                RawSceneExposureEstimate(
                    hdrRatio = fusion.finalHdrRatio,
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
        semanticInput: ByteBuffer,
        colorInput: ByteBuffer,
    ): Float {
        semanticInput.rewind()
        colorInput.rewind()
        val output = Array(1) { FloatArray(1) }
        interpreter.runForMultipleInputsOutputs(
            arrayOf(semanticInput, colorInput),
            mutableMapOf<Int, Any>(0 to output),
        )
        return output[0][0].also { check(it.isFinite()) }
    }

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
            candidate = ModelSet(
                short = loadedShort,
                long = loadedLong,
                portrait = loadedPortrait,
            )
            validateCombinedModel(candidate.short, "short")
            validateLongModel(candidate.long)
            validateCombinedModel(candidate.portrait, "portrait")
            candidate
        } catch (error: Throwable) {
            if (candidate != null) {
                candidate.close()
            } else {
                short?.close()
                long?.close()
                portrait?.close()
            }
            PLog.e(TAG, "Unable to initialize RAW scene exposure models", error)
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

    private fun validateLongModel(interpreter: Interpreter) {
        check(interpreter.inputTensorCount == 2) { "long AE model input count changed" }
        val semantic = interpreter.getInputTensor(0)
        val color = interpreter.getInputTensor(1)
        val output = interpreter.getOutputTensor(0)
        check(semantic.dataType() == DataType.FLOAT32)
        check(semantic.shape().contentEquals(intArrayOf(1, 64, 64, 5)))
        check(color.dataType() == DataType.FLOAT32)
        check(color.shape().contentEquals(intArrayOf(1, 64, 64, 4)))
        validateScalarOutput(output.dataType(), output.shape(), "long")
    }

    private fun validateScalarOutput(type: DataType, shape: IntArray, name: String) {
        check(type == DataType.FLOAT32) { "$name AE model output type changed" }
        check(shape.contentEquals(intArrayOf(1, 1))) { "$name AE model output shape changed" }
    }

    private fun directFloatBuffer(floatCount: Int): ByteBuffer =
        ByteBuffer.allocateDirect(floatCount * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
}
