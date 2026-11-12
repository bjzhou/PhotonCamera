package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.ColorSpace
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import java.nio.ByteBuffer
import kotlin.math.abs
import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Night vision global tone curve, applied to luma only.
 *
 * Each pixel is scaled by `gain = curve(Y) / Y`, so hue and saturation stay unchanged. The gain is
 * then limited per pixel so the brightest channel can use at most [NightVisionTone.HIGHLIGHT_HEADROOM]
 * of its remaining headroom, measured against [whitePoint]. The preview shader
 * and capture GPU pass share `applyNightVisionTone` ([com.hinnka.mycamera.lut.NightVisionToneGl.GLSL]),
 * which implements the same formula.
 */
internal class NightVisionToneCurve(
    /** [NightVisionTone.CURVE_SIZE] samples of output luma over input luma in [0, 1]. */
    val values: FloatArray,
    /** 99.5th percentile of the per-pixel max channel; the highlight cap is relative to it. */
    val whitePoint: Float,
    /** Scene gate in [0, 1]; 0 means the curve is the identity. */
    val strength: Float,
) {
    init {
        require(values.size == NightVisionTone.CURVE_SIZE) { "Curve needs ${NightVisionTone.CURVE_SIZE} samples" }
    }

    val isIdentity: Boolean
        get() = strength <= 0f

    fun lumaAt(y: Float): Float {
        val position = y.coerceIn(0f, 1f) * LAST_INDEX
        val lower = position.toInt().coerceAtMost(LAST_INDEX - 1)
        val amount = position - lower
        return values[lower] + (values[lower + 1] - values[lower]) * amount
    }

    /** Per-pixel gain for encoded RGB in [0, 1]. */
    fun pixelGain(r: Float, g: Float, b: Float): Float {
        val y = NightVisionTone.luma(r, g, b)
        if (y <= MIN_LUMA) return 1f
        val gain = lumaAt(y) / y
        return limitGain(gain, max(max(r, g), b))
    }

    /** Applies the highlight cap to [gain] for a pixel whose brightest channel is [maxChannel]. */
    fun limitGain(gain: Float, maxChannel: Float): Float {
        val m = max(maxChannel, MIN_LUMA)
        val normalized = min(m / whitePoint, 1f)
        val limit = (normalized + (1f - normalized) * NightVisionTone.HIGHLIGHT_HEADROOM) / m
        return max(NightVisionTone.softMin(gain, limit), min(1f, gain))
    }

    /** Moves this curve toward [target] by [amount] in [0, 1]; used for preview temporal smoothing. */
    fun blendedToward(target: NightVisionToneCurve, amount: Float): NightVisionToneCurve {
        val t = amount.coerceIn(0f, 1f)
        return NightVisionToneCurve(
            values = FloatArray(values.size) { values[it] + (target.values[it] - values[it]) * t },
            whitePoint = whitePoint + (target.whitePoint - whitePoint) * t,
            strength = strength + (target.strength - strength) * t,
        )
    }

    companion object {
        private const val LAST_INDEX = NightVisionTone.CURVE_SIZE - 1
        private const val MIN_LUMA = 1e-4f

        val IDENTITY = NightVisionToneCurve(
            values = FloatArray(NightVisionTone.CURVE_SIZE) { it / LAST_INDEX.toFloat() },
            whitePoint = 1f,
            strength = 0f,
        )
    }
}

/** MGC bitmap denoise strengths, in [DenoiseStrength] units. */
internal data class NightVisionDenoiseStrength(val luma: Float, val chroma: Float) {
    val isZero: Boolean
        get() = luma <= 0f && chroma <= 0f
}

/**
 * Turns the CPGA-Net low-light output into a [NightVisionToneCurve] and derives the extra denoise
 * that the brightening needs.
 *
 * Curve construction, on the model's 256x256 input and output:
 * 1. Bin the input luma, average the output luma per bin, force monotone, smooth.
 * 2. Gate by scene brightness: the geometric mean of the per-pixel max channel (as the RAW scene
 *    brightness measurement uses, on encoded values here). Full strength at <= [GATE_FULL_SIGNAL],
 *    identity at >= [GATE_OFF_SIGNAL], smoothstep between. The model brightens every image,
 *    daylight included.
 * 3. Cap each tone so it uses at most [HIGHLIGHT_HEADROOM] of its headroom relative to the
 *    image white point; an underexposed frame keeps a white paper white.
 * 4. A shadow-only toe below the median output luma restores the contrast the lift removes.
 *
 * The toe and the cap both scale with the gate, so a daylight scene gets the identity curve and
 * therefore zero extra denoise.
 */
internal object NightVisionTone {
    const val MODEL_SIZE = 256
    /** Central fraction of the capture width and height sampled by both preview and capture. */
    const val SAMPLE_FRAME_FRACTION = 2f / 3f
    const val CURVE_SIZE = 256
    const val HIGHLIGHT_HEADROOM = 0.55f

    private const val BIN_COUNT = 64
    private const val MIN_BIN_SAMPLES = 20
    private const val SMOOTH_RADIUS = 7
    /**
     * Calibrated on 87 camera JPEGs labelled by EXIF EV100 (docs/night-vision-mode.md): night
     * scenes (EV < 5) sit at 0.16-0.23, daylight (EV >= 10) mostly above 0.30.
     */
    private const val GATE_FULL_SIGNAL = 0.18f
    private const val GATE_OFF_SIGNAL = 0.30f
    /** Floor of the log average: one 8-bit code value, so black pixels do not dominate. */
    private const val GATE_SIGNAL_FLOOR = 1f / 255f
    private const val TOE_AMOUNT = 0.8f
    private const val MIN_TOE_PIVOT = 0.25f
    private const val MAX_TOE_PIVOT = 0.75f
    private const val WHITE_POINT_PERCENTILE = 0.995f
    private const val MIN_WHITE_POINT = 0.2f
    const val SOFT_MIN_WIDTH = 0.02f

    /**
     * Provisional fixed mapping, pending on-device tuning: the extra MGC strength rises linearly
     * with the mean noise amplification, from 0 at 1x to the cap at [FULL_STRENGTH_GAIN]x. Luma
     * noise follows the curve slope, chroma noise the gain. The bitmap noise calibration was made
     * with ISP NR off, so it does not describe an ISP HIGH_QUALITY multi-frame stack; the strength
     * is therefore set directly instead of derived from the residual noise.
     */
    private const val FULL_STRENGTH_GAIN = 3f
    private const val MAX_LUMA_STRENGTH = 0.3f
    private const val MAX_CHROMA_STRENGTH = 1.0f
    private const val SLOPE_STEP = 1f / 255f

    private const val WR = 0.2126f
    private const val WG = 0.7152f
    private const val WB = 0.0722f

    fun luma(r: Float, g: Float, b: Float): Float = WR * r + WG * g + WB * b

    /** Smooth minimum: within about [SOFT_MIN_WIDTH] of the hard minimum, never above it. */
    fun softMin(a: Float, b: Float): Float {
        val hard = min(a, b)
        val distance = abs(a - b) / SOFT_MIN_WIDTH
        if (distance > 12f) return hard
        return hard - SOFT_MIN_WIDTH * ln(1f + exp(-distance))
    }

    /**
     * Builds the curve from the model's [input] and [output], both HWC RGB floats in [0, 1] of
     * [MODEL_SIZE] x [MODEL_SIZE] pixels.
     */
    fun estimate(input: FloatArray, output: FloatArray): NightVisionToneCurve {
        val pixelCount = MODEL_SIZE * MODEL_SIZE
        require(input.size == pixelCount * 3 && output.size == pixelCount * 3) {
            "Night vision tone expects ${MODEL_SIZE}x$MODEL_SIZE RGB input and output"
        }
        val inputLuma = FloatArray(pixelCount)
        val maxChannel = FloatArray(pixelCount)
        val binSum = DoubleArray(BIN_COUNT)
        val binCount = IntArray(BIN_COUNT)
        var logSignalSum = 0.0
        for (i in 0 until pixelCount) {
            val o = i * 3
            val r = input[o].coerceIn(0f, 1f)
            val g = input[o + 1].coerceIn(0f, 1f)
            val b = input[o + 2].coerceIn(0f, 1f)
            val y = luma(r, g, b)
            inputLuma[i] = y
            maxChannel[i] = max(max(r, g), b)
            logSignalSum += ln(maxChannel[i] + GATE_SIGNAL_FLOOR)
            val outY = luma(
                output[o].coerceIn(0f, 1f),
                output[o + 1].coerceIn(0f, 1f),
                output[o + 2].coerceIn(0f, 1f),
            )
            val bin = (y * BIN_COUNT).toInt().coerceIn(0, BIN_COUNT - 1)
            binSum[bin] += outY
            binCount[bin]++
        }

        val signal = exp(logSignalSum / pixelCount).toFloat() - GATE_SIGNAL_FLOOR
        val strength = gate(signal)
        val whitePoint = percentile(maxChannel, WHITE_POINT_PERCENTILE).coerceIn(MIN_WHITE_POINT, 1f)
        if (strength <= 0f) {
            return NightVisionToneCurve(NightVisionToneCurve.IDENTITY.values.copyOf(), whitePoint, 0f)
        }

        val modelCurve = fitModelCurve(binSum, binCount)
        val curve = FloatArray(CURVE_SIZE)
        for (i in 0 until CURVE_SIZE) {
            val x = i / (CURVE_SIZE - 1f)
            val lifted = x + strength * (modelCurve[i] - x)
            val normalized = min(x / whitePoint, 1f)
            val cap = normalized + (1f - normalized) * HIGHLIGHT_HEADROOM
            curve[i] = max(softMin(lifted, cap), min(lifted, x))
        }

        val mapped = FloatArray(pixelCount) { interpolate(curve, inputLuma[it]) }
        val pivot = percentile(mapped, 0.5f).coerceIn(MIN_TOE_PIVOT, MAX_TOE_PIVOT)
        val toe = TOE_AMOUNT * strength
        for (i in 0 until CURVE_SIZE) {
            val c = curve[i]
            if (c < pivot) {
                val t = 1f - c / pivot
                curve[i] = c - toe * c * t * t
            }
        }
        enforceMonotone(curve)
        curve[0] = 0f
        return NightVisionToneCurve(curve, whitePoint, strength)
    }

    /**
     * Mean noise amplification of [curve] over the model input [input] (HWC RGB), mapped to MGC
     * strengths. The identity curve returns zero.
     */
    fun denoiseStrength(input: FloatArray, curve: NightVisionToneCurve): NightVisionDenoiseStrength {
        if (curve.isIdentity) return NightVisionDenoiseStrength(0f, 0f)
        val pixelCount = input.size / 3
        var lumaExcess = 0.0
        var chromaExcess = 0.0
        for (i in 0 until pixelCount) {
            val o = i * 3
            val r = input[o].coerceIn(0f, 1f)
            val g = input[o + 1].coerceIn(0f, 1f)
            val b = input[o + 2].coerceIn(0f, 1f)
            val y = luma(r, g, b)
            val gain = curve.pixelGain(r, g, b)
            val lo = (y - SLOPE_STEP).coerceAtLeast(0f)
            val hi = (y + SLOPE_STEP).coerceAtMost(1f)
            val slope = (curve.lumaAt(hi) - curve.lumaAt(lo)) / (hi - lo)
            // Where the highlight cap lowers the gain, the local luma slope drops by the same ratio.
            val uncappedGain = if (y > 1e-4f) curve.lumaAt(y) / y else 1f
            val capRatio = if (uncappedGain > 0f) gain / uncappedGain else 1f
            lumaExcess += (slope * capRatio - 1f).coerceAtLeast(0f)
            chromaExcess += (gain - 1f).coerceAtLeast(0f)
        }
        return NightVisionDenoiseStrength(
            luma = scaledStrength(lumaExcess / pixelCount, MAX_LUMA_STRENGTH),
            chroma = scaledStrength(chromaExcess / pixelCount, MAX_CHROMA_STRENGTH),
        )
    }

    /**
     * Resizes the central [SAMPLE_FRAME_FRACTION] of each capture dimension to [MODEL_SIZE]².
     * Matches the preview sampling matrix; the fitted curve is still applied to the whole image.
     * Returns HWC RGB floats in the bitmap's encoded color space.
     */
    fun modelInputFrom(bitmap: Bitmap): FloatArray {
        val scaled = Bitmap.createBitmap(
            MODEL_SIZE,
            MODEL_SIZE,
            Bitmap.Config.ARGB_8888,
            bitmap.hasAlpha(),
            bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB),
        )
        try {
            val insetX = bitmap.width * (1f - SAMPLE_FRAME_FRACTION) * 0.5f
            val insetY = bitmap.height * (1f - SAMPLE_FRAME_FRACTION) * 0.5f
            val matrix = Matrix().apply {
                setRectToRect(
                    RectF(insetX, insetY, bitmap.width - insetX, bitmap.height - insetY),
                    RectF(0f, 0f, MODEL_SIZE.toFloat(), MODEL_SIZE.toFloat()),
                    Matrix.ScaleToFit.FILL,
                )
            }
            Canvas(scaled).drawBitmap(bitmap, matrix, Paint(Paint.FILTER_BITMAP_FLAG))
            val bytes = ByteBuffer.allocate(scaled.rowBytes * scaled.height)
            scaled.copyPixelsToBuffer(bytes)
            return modelInputFromRgba(bytes.array(), scaled.rowBytes)
        } finally {
            scaled.recycle()
        }
    }

    /** Converts [MODEL_SIZE]² RGBA8 pixels with [rowBytes] stride to HWC RGB floats. */
    fun modelInputFromRgba(rgba: ByteArray, rowBytes: Int = MODEL_SIZE * 4): FloatArray {
        val out = FloatArray(MODEL_SIZE * MODEL_SIZE * 3)
        var o = 0
        for (row in 0 until MODEL_SIZE) {
            var p = row * rowBytes
            for (col in 0 until MODEL_SIZE) {
                out[o++] = (rgba[p].toInt() and 0xFF) / 255f
                out[o++] = (rgba[p + 1].toInt() and 0xFF) / 255f
                out[o++] = (rgba[p + 2].toInt() and 0xFF) / 255f
                p += 4
            }
        }
        return out
    }

    private fun scaledStrength(meanExcessGain: Double, maxStrength: Float): Float {
        val fraction = (meanExcessGain / (FULL_STRENGTH_GAIN - 1f)).toFloat().coerceIn(0f, 1f)
        return DenoiseStrength.clamp(maxStrength * fraction)
    }

    private fun gate(signal: Float): Float {
        val t = ((GATE_OFF_SIGNAL - signal) / (GATE_OFF_SIGNAL - GATE_FULL_SIGNAL)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun fitModelCurve(binSum: DoubleArray, binCount: IntArray): FloatArray {
        val xs = ArrayList<Float>(BIN_COUNT + 2)
        val ys = ArrayList<Float>(BIN_COUNT + 2)
        xs += 0f
        ys += 0f
        for (bin in 0 until BIN_COUNT) {
            if (binCount[bin] >= MIN_BIN_SAMPLES) {
                xs += (bin + 0.5f) / BIN_COUNT
                ys += (binSum[bin] / binCount[bin]).toFloat()
            }
        }
        xs += 1f
        ys += 1f
        for (i in 1 until ys.size) ys[i] = min(1f, max(ys[i], ys[i - 1]))

        val sampled = FloatArray(CURVE_SIZE)
        var segment = 0
        for (i in 0 until CURVE_SIZE) {
            val x = i / (CURVE_SIZE - 1f)
            while (segment < xs.size - 2 && x > xs[segment + 1]) segment++
            val x0 = xs[segment]
            val x1 = xs[segment + 1]
            val t = if (x1 > x0) ((x - x0) / (x1 - x0)).coerceIn(0f, 1f) else 0f
            sampled[i] = ys[segment] + (ys[segment + 1] - ys[segment]) * t
        }

        val smoothed = FloatArray(CURVE_SIZE)
        val window = 2 * SMOOTH_RADIUS + 1
        for (i in 0 until CURVE_SIZE) {
            var sum = 0f
            for (k in -SMOOTH_RADIUS..SMOOTH_RADIUS) {
                sum += sampled[(i + k).coerceIn(0, CURVE_SIZE - 1)]
            }
            smoothed[i] = sum / window
        }
        smoothed[0] = 0f
        enforceMonotone(smoothed)
        return smoothed
    }

    private fun interpolate(curve: FloatArray, x: Float): Float {
        val position = x.coerceIn(0f, 1f) * (curve.size - 1)
        val lower = position.toInt().coerceAtMost(curve.size - 2)
        val t = position - lower
        return curve[lower] + (curve[lower + 1] - curve[lower]) * t
    }

    private fun enforceMonotone(curve: FloatArray) {
        for (i in 1 until curve.size) curve[i] = max(curve[i], curve[i - 1])
    }

    private fun percentile(values: FloatArray, fraction: Float): Float {
        val sorted = values.copyOf()
        sorted.sort()
        return sorted[((sorted.size - 1) * fraction).roundToInt()]
    }
}
