package com.hinnka.mycamera.raw

import android.graphics.Bitmap
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
 * Classic capture-side auto exposure derived from the adaptive spatial grid matcher in
 * PhotonCamera 1.27.1. The RAW renderer supplies default-curve preview candidates while native
 * code owns endpoint reliability weighting, robust scoring, adaptive search and final selection.
 */
internal object RawLegacyAutoExposureMatcher {
    private const val TAG = "RawLegacyAutoExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private data class ViewfinderReference(
        val frame: RawLegacyExposurePreviewFrame,
    )

    fun createRequest(capturePreviewThumbnail: Bitmap?): RawLegacyAutoExposureRequest? {
        val reference = capturePreviewThumbnail?.let(::buildReference)
        if (capturePreviewThumbnail != null && reference == null) {
            PLog.w(TAG, "Classic auto exposure skipped: capture preview is unavailable")
        }
        return reference?.let {
            RawLegacyAutoExposureRequest(
                width = it.frame.width,
                height = it.frame.height,
                solve = { renderSample -> solve(it, renderSample) },
            )
        }
    }

    private fun buildReference(bitmap: Bitmap): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            ViewfinderReference(
                frame = RawLegacyExposurePreviewFrame(
                    width = size.width,
                    height = size.height,
                    argbPixels = pixels,
                ),
            )
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to analyze capture preview", error)
            null
        }
    }

    private fun solve(
        reference: ViewfinderReference,
        renderSample: (Float) -> RawLegacyExposurePreviewFrame?,
    ): Float? {
        val solver = RawLegacyAutoExposureNativeBridge.Solver.create(reference.frame)
            ?: run {
                PLog.w(
                    TAG,
                    "Classic auto exposure skipped: insufficient reliable non-endpoint cells",
                )
                return null
            }
        return solver.use {
            while (true) {
                val exposureEv = solver.nextExposureEv() ?: break
                val frame = renderSample(exposureEv) ?: return@use null
                if (!solver.submitCandidate(exposureEv, frame)) return@use null
                solver.lastSample()?.let { sample ->
                    PLog.d(
                        TAG,
                        "Classic auto exposure sample: exposureEv=${sample.exposureEv} " +
                            "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                            "matchRate=${sample.matchRate} " +
                            "meanAbsoluteLog2Ratio=${sample.meanAbsoluteLog2Ratio} " +
                            "medianLog2Ratio=${sample.medianLog2Ratio} " +
                            "robustLog2Loss=${sample.robustLog2Loss} " +
                            "referenceWeightSum=${sample.referenceWeightSum}",
                    )
                }
            }
            val result = solver.result() ?: return@use null
            PLog.i(
                TAG,
                "Classic auto exposure result: exposureEv=${result.best.exposureEv} " +
                    "matchedCells=${result.best.matchedCellCount}/${result.best.validCellCount} " +
                    "matchRate=${result.best.matchRate} " +
                    "meanAbsoluteLog2Ratio=${result.best.meanAbsoluteLog2Ratio} " +
                    "medianLog2Ratio=${result.best.medianLog2Ratio} " +
                    "robustLog2Loss=${result.best.robustLog2Loss} " +
                    "referenceWeightSum=${result.best.referenceWeightSum} " +
                    "sampleCount=${result.evaluatedSampleCount} " +
                    "excludedShadowCells=${result.excludedShadowCellCount} " +
                    "excludedHighlightCells=${result.excludedHighlightCellCount} " +
                    "shadowWeightZeroLinear=${result.shadowWeightZeroLinear} " +
                    "highlightWeightZeroLinear=${result.highlightWeightZeroLinear} " +
                    "huberDeltaEv=${result.huberDeltaEv}",
            )
            result.best.exposureEv
        }
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
}
