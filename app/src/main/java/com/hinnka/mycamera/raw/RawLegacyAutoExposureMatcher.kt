package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max

internal data class RawLegacyExposurePreviewFrame(
    val width: Int,
    val height: Int,
    val argbPixels: IntArray,
)

internal data class RawLegacyAutoExposureRequest(
    val width: Int,
    val height: Int,
    val solve: ((Float) -> RawLegacyExposurePreviewFrame?) -> Float?,
)

/**
 * Classic capture-side auto exposure restored from the implementation immediately before
 * 6c09a4da72f0aec065b9e4afdc35a73fcde42eac.
 */
internal object RawLegacyAutoExposureMatcher {
    private const val TAG = "RawLegacyAutoExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private data class ViewfinderReference(
        val analysis: RawLegacyAutoExposureMath.Reference,
    )

    fun createRequest(capturePreviewThumbnail: Bitmap?): RawLegacyAutoExposureRequest? {
        val reference = capturePreviewThumbnail?.let(::buildReference)
        if (capturePreviewThumbnail != null && reference == null) {
            PLog.w(TAG, "Classic auto exposure skipped: capture preview is unavailable")
        }
        return reference?.let {
            RawLegacyAutoExposureRequest(
                width = it.analysis.width,
                height = it.analysis.height,
                solve = { renderSample -> solve(it, renderSample) },
            )
        }
    }

    private fun buildReference(bitmap: Bitmap): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            val bounds = centerTwoThirdsBounds(size.width, size.height) ?: return null
            val analysis = RawLegacyAutoExposureMath.buildReference(
                pixels = pixels,
                width = size.width,
                height = size.height,
                left = bounds.left,
                top = bounds.top,
                right = bounds.right,
                bottom = bounds.bottom,
            ) ?: return null
            ViewfinderReference(analysis = analysis)
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to analyze capture preview", error)
            null
        }
    }

    private fun solve(
        reference: ViewfinderReference,
        renderSample: (Float) -> RawLegacyExposurePreviewFrame?,
    ): Float? {
        return RawLegacyAutoExposureMath.solve { exposureEv ->
            evaluate(reference.analysis, exposureEv, renderSample(exposureEv))
        }
    }

    private fun evaluate(
        reference: RawLegacyAutoExposureMath.Reference,
        exposureEv: Float,
        frame: RawLegacyExposurePreviewFrame?,
    ): Float? {
        if (frame == null || frame.width != reference.width || frame.height != reference.height) {
            return null
        }
        val match = RawLegacyAutoExposureMath.evaluate(
            reference = reference,
            pixels = frame.argbPixels,
            width = frame.width,
            height = frame.height,
        ) ?: return null
        PLog.d(
            TAG,
            "Classic auto exposure sample: exposureEv=$exposureEv " +
                "meteringLog2Error=${match.meanBrightnessLog2Error} " +
                "quantileBlendLog2Error=${match.matchLog2Error} " +
                "quantileSpreadLog2=${match.quantileSpreadLog2} " +
                "referenceSampleCount=${match.referenceSampleCount} " +
                "candidateSampleCount=${match.candidateSampleCount}",
        )
        return match.meanBrightnessLog2Error
    }

    private data class Size(val width: Int, val height: Int)

    private fun longEdgeSize(sourceWidth: Int, sourceHeight: Int, maxLongEdge: Int): Size {
        val longEdge = minOf(max(sourceWidth, sourceHeight), maxLongEdge.coerceAtLeast(1))
        return if (sourceWidth >= sourceHeight) {
            Size(
                width = longEdge,
                height = (longEdge.toFloat() * sourceHeight / sourceWidth).toInt()
                    .coerceAtLeast(1),
            )
        } else {
            Size(
                width = (longEdge.toFloat() * sourceWidth / sourceHeight).toInt()
                    .coerceAtLeast(1),
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
}
