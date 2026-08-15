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
 * The RAW renderer supplies default-curve preview samples and prepares the GPU profile map in the
 * same capture-side GL pass. Native code owns grid analysis, candidate scoring and adaptive target
 * selection. The resulting automatic offset remains independent from the user's RAW exposure
 * compensation applied on top during development.
 */
internal object RawViewfinderExposureMatcher {
    private const val TAG = "RawViewfinderExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private val diagnosticsEnabled: Boolean
        get() = BuildConfig.DEBUG &&
            SystemPropertiesUtil.get("debug.photon.raw_exposure.diagnostics")
                ?.toBooleanStrictOrNull() == true

    private data class ViewfinderReference(
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
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
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
                width = it.frame.width,
                height = it.frame.height,
                diagnosticsEnabled = diagnosticsEnabled,
                solve = { renderSample ->
                    solve(
                        reference = it,
                        renderSample = renderSample,
                        testImageCache = testImageCache,
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
            ViewfinderReference(
                frame = frame,
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
    ): Float? {
        val solver = RawViewfinderExposureNativeBridge.Solver.create(reference.frame)
            ?: return null
        return solver.use {
            var candidateIndex = 0
            while (true) {
                val exposureEv = solver.nextExposureEv() ?: break
                val frame = renderSample(exposureEv) ?: return@use null
                testImageCache?.writeCandidate(
                    index = candidateIndex++,
                    exposureEv = exposureEv,
                    frame = frame,
                )
                if (!solver.submitCandidate(exposureEv, frame)) return@use null
                if (diagnosticsEnabled) {
                    solver.lastSample()?.let { sample ->
                        PLog.d(
                            TAG,
                            "RAW viewfinder native sample: exposureEv=${sample.exposureEv} " +
                                "matchedCells=${sample.matchedCellCount}/" +
                                "${sample.validCellCount} " +
                                "matchRate=${sample.matchRate} " +
                                "meanAbsoluteLog2Ratio=${sample.meanAbsoluteLog2Ratio} " +
                                "medianLog2Ratio=${sample.medianLog2Ratio}",
                        )
                    }
                }
            }
            val result = solver.result() ?: return@use null
            PLog.i(
                TAG,
                "RAW viewfinder exposure result: nativeEv=${result.best.exposureEv} " +
                    "matchedCells=${result.best.matchedCellCount}/" +
                    "${result.best.validCellCount} matchRate=${result.best.matchRate} " +
                    "meanAbsoluteLog2Ratio=${result.best.meanAbsoluteLog2Ratio} " +
                    "medianLog2Ratio=${result.best.medianLog2Ratio} " +
                    "sampleCount=${result.evaluatedSampleCount} " +
                    "excludedShadowCells=${result.excludedShadowCellCount} " +
                    "excludedHighlightCells=${result.excludedHighlightCellCount} " +
                    "endpointFallback=${result.endpointFallbackUsed}",
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
    val diagnosticsEnabled: Boolean = false,
    val solve: ((Float) -> RawExposurePreviewFrame?) -> Float?,
)
