package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileOutputStream
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
    private const val DIAGNOSTIC_DIRECTORY = "raw_viewfinder_exposure_match"

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
                        context = context,
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
        context: Context,
        reference: ViewfinderReference,
        renderSample: (Float) -> RawExposurePreviewFrame?,
    ): Float? {
        val solvedExposureEv = RawViewfinderExposureMath.solve { exposureEv ->
            evaluate(reference.analysis, exposureEv, renderSample(exposureEv))
        }
        if (BuildConfig.DEBUG && solvedExposureEv != null) {
            val solvedFrame = renderSample(solvedExposureEv)
            if (solvedFrame != null &&
                solvedFrame.width == reference.frame.width &&
                solvedFrame.height == reference.frame.height
            ) {
                saveDiagnosticFrames(
                    context = context,
                    reference = reference,
                    candidate = solvedFrame,
                    solvedExposureEv = solvedExposureEv,
                )
            } else {
                PLog.w(
                    TAG,
                    "RAW viewfinder diagnostic skipped: solved candidate frame is unavailable " +
                        "exposureEv=$solvedExposureEv " +
                        "reference=${reference.frame.width}x${reference.frame.height} " +
                        "candidate=${solvedFrame?.let { "${it.width}x${it.height}" } ?: "null"}",
                )
            }
        }
        return solvedExposureEv
    }

    private fun saveDiagnosticFrames(
        context: Context,
        reference: ViewfinderReference,
        candidate: RawExposurePreviewFrame,
        solvedExposureEv: Float,
    ) {
        val rootDirectory = File(context.cacheDir, DIAGNOSTIC_DIRECTORY)
        if (!rootDirectory.exists() && !rootDirectory.mkdirs()) {
            PLog.w(TAG, "Unable to create RAW viewfinder diagnostic directory: $rootDirectory")
            return
        }
        val directory = File(rootDirectory, System.currentTimeMillis().toString())
        if (!directory.mkdirs()) {
            PLog.w(TAG, "Unable to create RAW viewfinder capture directory: $directory")
            return
        }
        val referenceFile = File(directory, "reference.png")
        val candidateFile = File(directory, "candidate.png")
        val referenceRoiFile = File(directory, "reference_roi.png")
        val candidateRoiFile = File(directory, "candidate_roi.png")
        val bounds = Rect(
            reference.analysis.left,
            reference.analysis.top,
            reference.analysis.right,
            reference.analysis.bottom,
        )
        val referenceBitmap = Bitmap.createBitmap(
            reference.frame.argbPixels,
            reference.frame.width,
            reference.frame.height,
            Bitmap.Config.ARGB_8888,
        )
        val candidateBitmap = Bitmap.createBitmap(
            candidate.argbPixels,
            candidate.width,
            candidate.height,
            Bitmap.Config.ARGB_8888,
        )
        var referenceRoiBitmap: Bitmap? = null
        var candidateRoiBitmap: Bitmap? = null
        try {
            val referenceRoi = Bitmap.createBitmap(
                referenceBitmap,
                bounds.left,
                bounds.top,
                bounds.width(),
                bounds.height(),
            )
            val candidateRoi = Bitmap.createBitmap(
                candidateBitmap,
                bounds.left,
                bounds.top,
                bounds.width(),
                bounds.height(),
            )
            referenceRoiBitmap = referenceRoi
            candidateRoiBitmap = candidateRoi
            val saved = listOf(
                writePng(referenceBitmap, referenceFile),
                writePng(candidateBitmap, candidateFile),
                writePng(referenceRoi, referenceRoiFile),
                writePng(candidateRoi, candidateRoiFile),
            ).all { it }
            if (saved) {
                PLog.i(
                    TAG,
                    "RAW viewfinder diagnostic saved: exposureEv=$solvedExposureEv " +
                        "size=${candidate.width}x${candidate.height} roi=$bounds " +
                        "reference=${referenceFile.absolutePath} " +
                        "candidate=${candidateFile.absolutePath} " +
                        "referenceRoi=${referenceRoiFile.absolutePath} " +
                        "candidateRoi=${candidateRoiFile.absolutePath}",
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save RAW viewfinder diagnostic frames", e)
        } finally {
            referenceRoiBitmap?.recycle()
            candidateRoiBitmap?.recycle()
            referenceBitmap.recycle()
            candidateBitmap.recycle()
        }
    }

    private fun writePng(bitmap: Bitmap, file: File): Boolean {
        return try {
            FileOutputStream(file, false).use { output ->
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write RAW viewfinder diagnostic PNG: $file", e)
            false
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
        PLog.d(
            TAG,
                "RAW viewfinder sample: exposureEv=$exposureEv " +
                "matchLog2Error=${match.matchLog2Error} " +
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
        return match.matchLog2Error
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
