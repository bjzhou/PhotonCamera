package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.max

internal data class RawExposurePreviewFrame(
    val width: Int,
    val height: Int,
    val argbPixels: IntArray,
)

/**
 * Capture-side viewfinder matcher.
 *
 * Thumbnail analysis, error calculation and iterative exposure solving live here. The RAW
 * renderer supplies default-curve preview samples and prepares the GPU profile map in the same
 * capture-side GL pass.
 */
internal object RawViewfinderExposureMatcher {
    private const val TAG = "RawViewfinderExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256
    private const val LUMA_FLOOR = 0.001f
    private const val MAX_SOLVE_STEPS = 3
    private const val EV_TOLERANCE = 0.05f
    private const val MIN_STEP_EV = 0.025f

    suspend fun prepareCaptureProfile(
        renderer: RawDemosaicProcessor,
        context: Context,
        input: RawDngCaptureProfileInput,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        capturePreviewThumbnail: Bitmap?,
        profileToneMapMode: RawProfileToneMapMode,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
    ): RawDngCaptureProfileResult? {
        val reference = capturePreviewThumbnail?.let(::buildReference)
        if (capturePreviewThumbnail != null && reference == null) {
            PLog.w(TAG, "Viewfinder match skipped: capture preview is unavailable")
        }
        val request = reference?.let {
            RawExposurePreviewRequest(
                width = it.width,
                height = it.height,
                solve = { renderSample -> solve(it, renderSample) },
            )
        }
        return renderer.prepareCaptureProfile(
            context = context,
            input = input,
            aspectRatio = aspectRatio,
            cropRegion = cropRegion,
            rotation = rotation,
            request = request,
            profileToneMapMode = profileToneMapMode,
            statsBounds = statsBounds,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
            applyLensShadingCorrection = applyLensShadingCorrection,
            rawBlackBorderCrop = rawBlackBorderCrop,
        )
    }

    private data class Reference(
        val width: Int,
        val height: Int,
        val bounds: Rect,
        val targetDisplayLuma: Float,
    )

    private data class Sample(
        val exposureEv: Float,
        val errorEv: Float,
        val renderedDisplayLuma: Float,
    )

    private fun buildReference(bitmap: Bitmap): Reference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            MeteringSystem.analyzeSrgbThumbnail(size.width, size.height, pixels) ?: return null
            val bounds = centerTwoThirdsBounds(size.width, size.height) ?: return null
            val targetLuma = averageDisplayLuma(pixels, size.width, size.height, bounds) ?: return null
            Reference(
                width = size.width,
                height = size.height,
                bounds = bounds,
                targetDisplayLuma = targetLuma,
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to analyze capture preview", e)
            null
        }
    }

    private fun solve(
        reference: Reference,
        renderSample: (Float) -> RawExposurePreviewFrame?,
    ): Float? {
        val zero = evaluate(reference, 0f, renderSample(0f)) ?: return null
        if (abs(zero.errorEv) <= EV_TOLERANCE) return zero.exposureEv

        val samples = mutableListOf(zero)
        var best = zero
        var nextEv = exposureEvForSample(zero)
        repeat(MAX_SOLVE_STEPS) {
            val candidateEv = distinctCandidate(nextEv, samples) ?: return best.exposureEv
            val sample = evaluate(reference, candidateEv, renderSample(candidateEv))
                ?: return best.exposureEv
            samples += sample
            if (abs(sample.errorEv) < abs(best.errorEv)) best = sample
            if (abs(sample.errorEv) <= EV_TOLERANCE) return sample.exposureEv
            nextEv = nextCandidate(samples, sample)
        }
        return best.exposureEv
    }

    private fun evaluate(
        reference: Reference,
        exposureEv: Float,
        frame: RawExposurePreviewFrame?,
    ): Sample? {
        if (frame == null || frame.width != reference.width || frame.height != reference.height) {
            return null
        }
        MeteringSystem.analyzeSrgbThumbnail(frame.width, frame.height, frame.argbPixels) ?: return null
        val renderedLuma = averageDisplayLuma(
            frame.argbPixels,
            frame.width,
            frame.height,
            reference.bounds,
        ) ?: return null
        val errorEv = displayLumaErrorEv(renderedLuma, reference.targetDisplayLuma)
        PLog.d(
            TAG,
            "RAW viewfinder sample: exposureEv=$exposureEv errorEv=$errorEv " +
                "targetLuma=${reference.targetDisplayLuma} renderedLuma=$renderedLuma"
        )
        return Sample(
            exposureEv = exposureEv,
            errorEv = errorEv,
            renderedDisplayLuma = renderedLuma,
        )
    }

    private fun nextCandidate(samples: List<Sample>, latest: Sample): Float {
        bracketedCandidate(samples)?.let { return it }
        val previous = samples.asReversed().firstOrNull {
            it !== latest && abs(it.errorEv - latest.errorEv) > 0.0001f
        }
        return previous?.let { interpolatedExposureEv(it, latest) }
            ?: exposureEvForSample(latest)
    }

    private fun bracketedCandidate(samples: List<Sample>): Float? {
        val sorted = samples.sortedBy { it.exposureEv }
        for (index in 0 until sorted.lastIndex) {
            val lower = sorted[index]
            val upper = sorted[index + 1]
            val crossesTarget =
                (lower.errorEv <= 0f && upper.errorEv >= 0f) ||
                    (lower.errorEv >= 0f && upper.errorEv <= 0f)
            if (!crossesTarget) continue
            val interpolated = interpolatedExposureEv(lower, upper)
            return if (interpolated != null && interpolated in lower.exposureEv..upper.exposureEv) {
                interpolated
            } else {
                sanitizeExposureEv((lower.exposureEv + upper.exposureEv) * 0.5f)
            }
        }
        return null
    }

    private fun interpolatedExposureEv(a: Sample, b: Sample): Float? {
        val errorDelta = b.errorEv - a.errorEv
        if (!errorDelta.isFinite() || abs(errorDelta) <= 0.0001f) return null
        return sanitizeExposureEv(
            a.exposureEv - a.errorEv * (b.exposureEv - a.exposureEv) / errorDelta
        )
    }

    private fun exposureEvForSample(sample: Sample): Float {
        return sanitizeExposureEv(sample.exposureEv - sample.errorEv) ?: sample.exposureEv
    }

    private fun distinctCandidate(candidateEv: Float, samples: List<Sample>): Float? {
        val safeEv = sanitizeExposureEv(candidateEv) ?: return null
        return safeEv.takeUnless { candidate ->
            samples.any { abs(it.exposureEv - candidate) < MIN_STEP_EV }
        }
    }

    private fun sanitizeExposureEv(value: Float): Float? {
        return value.takeIf { it.isFinite() }?.coerceIn(
            MeteringSystem.RAW_EXPOSURE_MIN_EV,
            MeteringSystem.RAW_EXPOSURE_MAX_EV,
        )
    }

    private data class Size(val width: Int, val height: Int)

    private fun longEdgeSize(sourceWidth: Int, sourceHeight: Int, maxLongEdge: Int): Size {
        val longEdge = minOf(max(sourceWidth, sourceHeight), maxLongEdge.coerceAtLeast(1))
        return if (sourceWidth >= sourceHeight) {
            Size(
                width = longEdge,
                height = (longEdge.toFloat() * sourceHeight / sourceWidth).toInt().coerceAtLeast(1),
            )
        } else {
            Size(
                width = (longEdge.toFloat() * sourceWidth / sourceHeight).toInt().coerceAtLeast(1),
                height = longEdge,
            )
        }
    }

    private fun sampleBitmap(bitmap: Bitmap, width: Int, height: Int): IntArray {
        val pixels = IntArray(width * height)
        val row = IntArray(bitmap.width)
        for (y in 0 until height) {
            val sourceY = ((y + 0.5f) * bitmap.height / height).toInt()
                .coerceIn(0, bitmap.height - 1)
            bitmap.getPixels(row, 0, bitmap.width, 0, sourceY, bitmap.width, 1)
            for (x in 0 until width) {
                val sourceX = ((x + 0.5f) * bitmap.width / width).toInt()
                    .coerceIn(0, bitmap.width - 1)
                pixels[y * width + x] = row[sourceX]
            }
        }
        return pixels
    }

    private fun centerTwoThirdsBounds(width: Int, height: Int): Rect? {
        if (width <= 0 || height <= 0) return null
        val left = width / 6
        val top = height / 6
        return Rect(
            left,
            top,
            (width * 5 / 6).coerceAtLeast(left + 1),
            (height * 5 / 6).coerceAtLeast(top + 1),
        )
    }

    private fun averageDisplayLuma(
        pixels: IntArray,
        width: Int,
        height: Int,
        bounds: Rect,
    ): Float? {
        if (pixels.size < width * height || bounds.isEmpty) return null
        var sum = 0.0
        var count = 0
        for (y in bounds.top until bounds.bottom) {
            for (x in bounds.left until bounds.right) {
                val pixel = pixels[y * width + x]
                val alpha = ((pixel ushr 24) and 0xff) / 255f
                val r = ((pixel ushr 16) and 0xff) / 255f
                val g = ((pixel ushr 8) and 0xff) / 255f
                val b = (pixel and 0xff) / 255f
                sum += ((0.2126f * r + 0.7152f * g + 0.0722f * b) * alpha).toDouble()
                count++
            }
        }
        return if (count > 0) (sum / count).toFloat().coerceAtLeast(LUMA_FLOOR) else null
    }

    private fun displayLumaErrorEv(renderedLuma: Float, targetLuma: Float): Float {
        val rendered = renderedLuma.takeIf { it.isFinite() }?.coerceAtLeast(LUMA_FLOOR) ?: LUMA_FLOOR
        val target = targetLuma.takeIf { it.isFinite() }?.coerceAtLeast(LUMA_FLOOR) ?: LUMA_FLOOR
        return (ln(rendered.toDouble() / target.toDouble()) / ln(2.0)).toFloat()
    }
}

internal data class RawExposurePreviewRequest(
    val width: Int,
    val height: Int,
    val solve: ((Float) -> RawExposurePreviewFrame?) -> Float?,
)
