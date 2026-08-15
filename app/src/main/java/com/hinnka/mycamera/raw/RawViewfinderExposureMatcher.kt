package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.io.File
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
 * capture-side GL pass. This solver produces only the automatic viewfinder-match offset; the
 * user's RAW exposure compensation remains an independent development control applied on top.
 */
internal object RawViewfinderExposureMatcher {
    private const val TAG = "RawViewfinderExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private val diagnosticsEnabled: Boolean
        get() = BuildConfig.DEBUG &&
            SystemPropertiesUtil.get("debug.photon.raw_exposure.diagnostics")
                ?.toBooleanStrictOrNull() == true

    private data class ViewfinderReference(
        val analysis: RawViewfinderExposureMath.Reference,
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
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawAutoExposureMeteringPriority: Float = RawAutoExposureMeteringPriority.DEFAULT,
    ): RawDngCaptureProfileResult? {
        val testImageCache = ExposureMatchTestImageCache.create(context)
        val reference = capturePreviewThumbnail?.let { bitmap ->
            buildReference(
                bitmap = bitmap,
                testImageCache = testImageCache,
            )
        }
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
                        testImageCache = testImageCache,
                        meteringPriority = rawAutoExposureMeteringPriority,
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
            rawNoiseProfileId = rawNoiseProfileId,
        )
    }

    private fun buildReference(
        bitmap: Bitmap,
        testImageCache: ExposureMatchTestImageCache?,
    ): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            val frame = RawExposurePreviewFrame(
                width = size.width,
                height = size.height,
                argbPixels = pixels,
            )
            testImageCache?.writeViewfinder(frame)
            val analysis = RawViewfinderExposureMath.buildReference(
                pixels = pixels,
                width = size.width,
                height = size.height,
                left = 0,
                top = 0,
                right = size.width,
                bottom = size.height,
            ) ?: return null
            ViewfinderReference(
                analysis = analysis,
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to analyze capture preview", e)
            null
        }
    }

    private fun solve(
        reference: ViewfinderReference,
        renderSample: (Float) -> RawExposurePreviewFrame?,
        testImageCache: ExposureMatchTestImageCache?,
        meteringPriority: Float,
    ): Float? {
        var candidateIndex = 0
        var meteringSelection: RawViewfinderExposureMath.MeteringSelection? = null
        return RawViewfinderExposureMath.solve { exposureEv ->
            val frame = renderSample(exposureEv)
            if (frame != null) {
                testImageCache?.writeCandidate(
                    index = candidateIndex,
                    exposureEv = exposureEv,
                    frame = frame,
                )
            }
            if (candidateIndex == 0 &&
                frame != null &&
                frame.width == reference.analysis.width &&
                frame.height == reference.analysis.height
            ) {
                meteringSelection = RawViewfinderExposureMath.buildMeteringSelection(
                    reference = reference.analysis,
                    pixels = frame.argbPixels,
                    width = frame.width,
                    height = frame.height,
                    meteringPriority = meteringPriority,
                )
                meteringSelection?.let { selection ->
                    PLog.d(
                        TAG,
                        "RAW metering selection: seedExposureEv=$exposureEv " +
                            "meteringPriority=$meteringPriority " +
                            "candidateDisplayLinearLumaLow=" +
                            "${selection.seedCandidateDisplayLinearLumaLow} " +
                            "candidateDisplayLinearLumaHigh=" +
                            "${selection.seedCandidateDisplayLinearLumaHigh} " +
                            "sampleCount=${selection.sampleCount}"
                    )
                }
            }
            candidateIndex++
            evaluate(
                reference = reference.analysis,
                meteringSelection = meteringSelection,
                exposureEv = exposureEv,
                frame = frame,
            )
        }
    }

    private fun evaluate(
        reference: RawViewfinderExposureMath.Reference,
        meteringSelection: RawViewfinderExposureMath.MeteringSelection?,
        exposureEv: Float,
        frame: RawExposurePreviewFrame?,
    ): Float? {
        if (meteringSelection == null ||
            frame == null ||
            frame.width != reference.width ||
            frame.height != reference.height
        ) {
            return null
        }
        if (!diagnosticsEnabled) {
            return RawViewfinderExposureMath.evaluateMeteringLog2Error(
                reference = reference,
                pixels = frame.argbPixels,
                width = frame.width,
                height = frame.height,
                meteringSelection = meteringSelection,
            )
        }
        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = frame.argbPixels,
            width = frame.width,
            height = frame.height,
            meteringSelection = meteringSelection,
        ) ?: return null
        val meteringLog2Error = match.meteringLog2Error
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
                "${match.candidatePerceptualBrightnessMean} " +
                "meteringSampleCount=${match.meteringSampleCount} " +
                "referenceMeteringDisplayLinearLumaMean=" +
                "${match.referenceMeteringDisplayLinearLumaMean} " +
                "candidateMeteringDisplayLinearLumaMean=" +
                "${match.candidateMeteringDisplayLinearLumaMean}"
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

    private class ExposureMatchTestImageCache private constructor(
        private val directory: File,
    ) {
        fun writeViewfinder(frame: RawExposurePreviewFrame) {
            writeFrame(
                frame = frame,
                target = File(directory, VIEWFINDER_FILE_NAME),
                description = "viewfinder",
            )
        }

        fun writeCandidate(
            index: Int,
            exposureEv: Float,
            frame: RawExposurePreviewFrame,
        ) {
            val target = File(
                directory,
                "$CANDIDATE_FILE_PREFIX${index.toString().padStart(2, '0')}.png",
            )
            writeFrame(
                frame = frame,
                target = target,
                description = "candidate index=$index exposureEv=$exposureEv",
            )
        }

        private fun writeFrame(
            frame: RawExposurePreviewFrame,
            target: File,
            description: String,
        ) {
            if (frame.width <= 0 ||
                frame.height <= 0 ||
                frame.argbPixels.size < frame.width * frame.height
            ) {
                PLog.w(TAG, "Skipped invalid RAW exposure match test image: $description")
                return
            }
            try {
                val bitmap = Bitmap.createBitmap(
                    frame.argbPixels,
                    frame.width,
                    frame.height,
                    Bitmap.Config.ARGB_8888,
                )
                try {
                    target.outputStream().buffered().use { output ->
                        check(bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)) {
                            "Bitmap PNG compression returned false"
                        }
                    }
                } finally {
                    bitmap.recycle()
                }
                PLog.d(
                    TAG,
                    "Cached RAW exposure match test image: $description path=${target.absolutePath}",
                )
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to cache RAW exposure match test image: $description", e)
            }
        }

        companion object {
            private const val CACHE_DIRECTORY_NAME = "raw_viewfinder_exposure_match"
            private const val VIEWFINDER_FILE_NAME = "viewfinder.png"
            private const val CANDIDATE_FILE_PREFIX = "candidate_"

            fun create(context: Context): ExposureMatchTestImageCache? {
                if (!diagnosticsEnabled) return null
                val directory = File(context.cacheDir, CACHE_DIRECTORY_NAME)
                if (!directory.exists() && !directory.mkdirs()) {
                    PLog.w(
                        TAG,
                        "Failed to create RAW exposure match test cache: " +
                            directory.absolutePath,
                    )
                    return null
                }
                if (!directory.isDirectory) {
                    PLog.w(
                        TAG,
                        "RAW exposure match test cache path is not a directory: " +
                            directory.absolutePath,
                    )
                    return null
                }
                directory.listFiles()
                    ?.filter { file ->
                        file.isFile &&
                            (file.name == VIEWFINDER_FILE_NAME ||
                                file.name.startsWith(CANDIDATE_FILE_PREFIX) &&
                                file.extension == "png")
                    }
                    ?.forEach { staleFile ->
                        if (!staleFile.delete()) {
                            PLog.w(
                                TAG,
                                "Failed to remove stale RAW exposure match test image: " +
                                    staleFile.absolutePath,
                            )
                        }
                    }
                return ExposureMatchTestImageCache(directory)
            }
        }
    }
}

internal data class RawExposurePreviewRequest(
    val width: Int,
    val height: Int,
    val solve: ((Float) -> RawExposurePreviewFrame?) -> Float?,
)
