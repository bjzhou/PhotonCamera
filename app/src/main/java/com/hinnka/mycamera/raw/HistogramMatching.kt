package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SplineInterpolator
import java.nio.FloatBuffer
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.roundToInt

/**
 * RawTherapee-style histogram matching:
 * use an embedded preview/JPEG as source and a neutral RAW rendering as target,
 * then build a monotonic tone curve by matching both luminance CDFs.
 */
object HistogramMatching {
    private const val TAG = "HistogramMatching"
    private const val LUT_SIZE = 256
    private const val MIN_REFERENCE_PIXELS = 19_200

    data class AnalysisResult(
        val curveLut: FloatArray?
    )

    fun analyze(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve,
        referenceBitmap: Bitmap?
    ): AnalysisResult {
        if (referenceBitmap == null) {
            PLog.d(TAG, "No embedded preview found, using neutral curve")
            return AnalysisResult(null)
        }

        val reference = prepareReference(referenceBitmap, width, height) ?: run {
            PLog.d(TAG, "Embedded preview too small or invalid, using neutral curve")
            return AnalysisResult(null)
        }

        val targetHistogram = buildHistogramFromNeutral(neutralBuffer, width, height, logCurve)
        val sourceHistogram = buildHistogramFromBitmap(reference, logCurve)
        val mapping = buildMapping(targetHistogram, sourceHistogram)
        val curve = mappingToCurve(mapping, logCurve)

        return AnalysisResult(curve)
    }

    private fun prepareReference(bitmap: Bitmap, targetWidth: Int, targetHeight: Int): Bitmap? {
        val sourcePixels = bitmap.width * bitmap.height
        if (sourcePixels < MIN_REFERENCE_PIXELS) {
            return null
        }

        val sourceRatio = bitmap.width.toFloat() / max(bitmap.height, 1)
        val targetRatio = targetWidth.toFloat() / max(targetHeight, 1)
        val ratioDiff = abs(sourceRatio - targetRatio)

        val cropped = if (ratioDiff > 0.01f) {
            cropToAspect(bitmap, targetRatio)
        } else {
            bitmap
        }

        val scaledWidth = targetWidth.coerceAtLeast(1)
        val scaledHeight = targetHeight.coerceAtLeast(1)
        return if (cropped.width != scaledWidth || cropped.height != scaledHeight) {
            Bitmap.createScaledBitmap(cropped, scaledWidth, scaledHeight, false)
        } else {
            cropped
        }
    }

    private fun cropToAspect(bitmap: Bitmap, targetRatio: Float): Bitmap {
        val currentRatio = bitmap.width.toFloat() / max(bitmap.height, 1)
        return if (currentRatio > targetRatio) {
            val newWidth = (bitmap.height * targetRatio).roundToInt().coerceAtMost(bitmap.width)
            val x = ((bitmap.width - newWidth) / 2).coerceAtLeast(0)
            Bitmap.createBitmap(bitmap, x, 0, newWidth, bitmap.height)
        } else {
            val newHeight = (bitmap.width / targetRatio).roundToInt().coerceAtMost(bitmap.height)
            val y = ((bitmap.height - newHeight) / 2).coerceAtLeast(0)
            Bitmap.createBitmap(bitmap, 0, y, bitmap.width, newHeight)
        }
    }

    private fun buildHistogramFromNeutral(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve
    ): IntArray {
        val histogram = IntArray(LUT_SIZE)
        neutralBuffer.position(0)
        repeat(width * height) {
            val r = neutralBuffer.get()
            val g = neutralBuffer.get()
            val b = neutralBuffer.get()
            neutralBuffer.get()

            val luma = (r * 0.2126f + g * 0.7152f + b * 0.0722f).coerceAtLeast(0f)
            val logValue = logCurve.linearToLog(luma).coerceIn(0f, 1f)
            val bin = (logValue * (LUT_SIZE - 1)).roundToInt().coerceIn(0, LUT_SIZE - 1)
            histogram[bin]++
        }
        neutralBuffer.position(0)
        return histogram
    }

    private fun buildHistogramFromBitmap(bitmap: Bitmap, logCurve: LogCurve): IntArray {
        val histogram = IntArray(LUT_SIZE)
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        for (pixel in pixels) {
            val r = ((pixel shr 16) and 0xFF) / 255f
            val g = ((pixel shr 8) and 0xFF) / 255f
            val b = (pixel and 0xFF) / 255f
            val linearR = srgbToLinear(r)
            val linearG = srgbToLinear(g)
            val linearB = srgbToLinear(b)
            val luma = linearR * 0.2126f + linearG * 0.7152f + linearB * 0.0722f
            val logValue = logCurve.linearToLog(luma).coerceIn(0f, 1f)
            val bin = (logValue * (LUT_SIZE - 1)).roundToInt().coerceIn(0, LUT_SIZE - 1)
            histogram[bin]++
        }
        return histogram
    }

    private fun buildMapping(targetHistogram: IntArray, sourceHistogram: IntArray): IntArray {
        val targetCdf = buildCdf(targetHistogram)
        val sourceCdf = buildCdf(sourceHistogram)
        val mapping = IntArray(LUT_SIZE)
        var j = 0

        for (i in 0 until LUT_SIZE) {
            val targetValue = targetCdf[i]
            while (j < LUT_SIZE - 1 && sourceCdf[j] < targetValue) {
                j++
            }
            mapping[i] = j
        }
        return mapping
    }

    private fun buildCdf(histogram: IntArray): FloatArray {
        val total = histogram.sum().coerceAtLeast(1)
        val cdf = FloatArray(histogram.size)
        var running = 0
        for (i in histogram.indices) {
            running += histogram[i]
            cdf[i] = running.toFloat() / total
        }
        return cdf
    }

    private fun mappingToCurve(mapping: IntArray, logCurve: LogCurve): FloatArray {
        val x = FloatArray(LUT_SIZE)
        val y = FloatArray(LUT_SIZE)
        for (i in 0 until LUT_SIZE) {
            val input = i.toFloat() / (LUT_SIZE - 1)
            val mapped = mapping[i].toFloat() / (LUT_SIZE - 1)
            x[i] = input
            y[i] = logCurve.logToLinear(mapped).coerceAtLeast(0f)
        }
        val interpolator = SplineInterpolator(x, y)
        return interpolator.generateLut(LUT_SIZE)
    }

    private fun srgbToLinear(v: Float): Float {
        return if (v <= 0.04045f) {
            v / 12.92f
        } else {
            ((v + 0.055f) / 1.055f).toDouble().pow(2.4).toFloat()
        }
    }
}
