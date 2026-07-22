package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.PLog
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

    private data class ViewfinderReference(
        val analysis: RawViewfinderExposureMath.Reference,
        val frame: RawExposurePreviewFrame,
    )

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
                width = it.analysis.width,
                height = it.analysis.height,
                solve = { renderSample ->
                    solve(
                        reference = it,
                        renderSample = renderSample,
                    )
                },
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

    private fun buildReference(bitmap: Bitmap): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            val bounds = centerTwoThirdsBounds(size.width, size.height) ?: return null
            val analysis = RawViewfinderExposureMath.buildReference(
                pixels = pixels,
                width = size.width,
                height = size.height,
                left = bounds.left,
                top = bounds.top,
                right = bounds.right,
                bottom = bounds.bottom,
            ) ?: return null
            ViewfinderReference(
                analysis = analysis,
                frame = RawExposurePreviewFrame(
                    width = size.width,
                    height = size.height,
                    argbPixels = pixels,
                ),
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to analyze capture preview", e)
            null
        }
    }

    private fun solve(
        reference: ViewfinderReference,
        renderSample: (Float) -> RawExposurePreviewFrame?,
    ): Float? {
        return RawViewfinderExposureMath.solve { exposureEv ->
            evaluate(reference.analysis, exposureEv, renderSample(exposureEv))
        }
    }

    private fun evaluate(
        reference: RawViewfinderExposureMath.Reference,
        exposureEv: Float,
        frame: RawExposurePreviewFrame?,
    ): Float? {
        if (frame == null || frame.width != reference.width || frame.height != reference.height) {
            return null
        }
        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = frame.argbPixels,
            width = frame.width,
            height = frame.height,
        ) ?: return null
        val meteringLog2Error = match.meanBrightnessLog2Error
        PLog.d(
            TAG,
                "RAW viewfinder sample: exposureEv=$exposureEv " +
                "meteringLog2Error=$meteringLog2Error " +
                "quantileBlendLog2Error=${match.matchLog2Error} " +
                "shadowPriorityTrimmedLog2Error=${match.toneWeightedLog2Error} " +
                "linearArithmeticMeanLog2Error=${match.linearArithmeticMeanLog2Error} " +
                "linearLogAverageLog2Error=${match.linearLogAverageLog2Error} " +
                "perceptualArithmeticMeanLog2Error=${match.meanBrightnessLog2Error} " +
                "perceptualLogAverageLog2Error=${match.perceptualLogAverageLog2Error} " +
                "p50PerceptualLog2Error=${match.p50Log2Error} " +
                "quantileLog2Errors=${match.quantileLog2Errors.contentToString()} " +
                "quantileMedianLog2Error=${match.quantileMedianLog2Error} " +
                "solverQuantileTrimmedLog2Error=${match.quantileTrimmedMeanLog2Error} " +
                "quantileSpreadLog2=${match.quantileSpreadLog2} " +
                "referenceSampleCount=${match.referenceSampleCount} " +
                "candidateSampleCount=${match.candidateSampleCount} " +
                "referenceDisplayLinearLumaMean=${match.referenceDisplayLinearLumaMean} " +
                "candidateDisplayLinearLumaMean=${match.candidateDisplayLinearLumaMean} " +
                "referencePerceptualBrightnessMean=" +
                "${match.referencePerceptualBrightnessMean} " +
                "candidatePerceptualBrightnessMean=" +
                "${match.candidatePerceptualBrightnessMean}"
        )
        return meteringLog2Error
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
}

internal data class RawExposurePreviewRequest(
    val width: Int,
    val height: Int,
    val solve: ((Float) -> RawExposurePreviewFrame?) -> Float?,
)
