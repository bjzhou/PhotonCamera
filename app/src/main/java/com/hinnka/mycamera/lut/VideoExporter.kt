package com.hinnka.mycamera.lut

import android.content.ContentValues
import android.content.Context
import android.media.MediaCodecInfo
import android.media.MediaCodecList
import android.media.MediaExtractor
import android.media.MediaFormat
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.UnstableApi
import androidx.media3.effect.LanczosResample
import androidx.media3.effect.Presentation
import androidx.media3.transformer.Composition
import androidx.media3.transformer.DefaultEncoderFactory
import androidx.media3.transformer.ExportException
import androidx.media3.transformer.ExportResult
import androidx.media3.transformer.ProgressHolder
import androidx.media3.transformer.Transformer
import androidx.media3.transformer.EditedMediaItem
import androidx.media3.transformer.Effects
import androidx.media3.transformer.VideoEncoderSettings
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.coroutines.resume

private const val TAG = "VideoExporter"

private data class VideoSourceFormat(
    val mimeType: String?,
    val width: Int,
    val height: Int,
    val frameRate: Double?,
    val bitrate: Int?,
)

private enum class CodecSupport {
    SUPPORTED,
    UNKNOWN,
    UNSUPPORTED,
}

/**
 * Builds the choices shown by the export UI from the source geometry and the codecs advertised by
 * the device. Codec capability queries are advisory: vendors occasionally publish incomplete
 * ranges, so inconclusive results remain selectable and are surfaced as [VideoExportSupport.MAY_FAIL].
 */
fun getVideoExportOptions(
    context: Context,
    inputUri: Uri,
    fallbackWidth: Int = 0,
    fallbackHeight: Int = 0,
): List<VideoExportOption> {
    val detectedFormat = detectVideoSourceFormat(context, inputUri)
    val sourceFormat = detectedFormat.copy(
        width = detectedFormat.width.takeIf { it > 0 } ?: fallbackWidth,
        height = detectedFormat.height.takeIf { it > 0 } ?: fallbackHeight,
    )
    val sourceDecoderSupport = queryCodecSupport(
        mimeType = sourceFormat.mimeType,
        width = sourceFormat.width,
        height = sourceFormat.height,
        frameRate = sourceFormat.frameRate,
        encoder = false,
    )

    return VideoExportResolution.entries.map { resolution ->
        val outputSize = calculateVideoExportSize(
            sourceWidth = sourceFormat.width,
            sourceHeight = sourceFormat.height,
            resolution = resolution,
        )
        val fallbackOutputSize = VideoExportSize(resolution.longEdge, resolution.shortEdge)
        val resolvedOutputSize = outputSize ?: fallbackOutputSize
        val targetMimeCandidates = if (sourceFormat.mimeType == MimeTypes.VIDEO_H265) {
            listOf(MimeTypes.VIDEO_H265, MimeTypes.VIDEO_H264)
        } else {
            listOf(MimeTypes.VIDEO_H264, MimeTypes.VIDEO_H265)
        }
        val encoderSupportByMime = targetMimeCandidates.associateWith { mimeType ->
            queryCodecSupport(
                mimeType = mimeType,
                width = resolvedOutputSize.width,
                height = resolvedOutputSize.height,
                frameRate = sourceFormat.frameRate,
                encoder = true,
            )
        }
        val targetMime = targetMimeCandidates.firstOrNull {
            encoderSupportByMime[it] == CodecSupport.SUPPORTED
        } ?: targetMimeCandidates.firstOrNull {
            encoderSupportByMime[it] == CodecSupport.UNKNOWN
        } ?: targetMimeCandidates.first()
        val encoderSupport = encoderSupportByMime.getValue(targetMime)
        val targetBitrate = calculateVideoExportBitrate(
            sourceBitrate = sourceFormat.bitrate,
            sourceWidth = sourceFormat.width,
            sourceHeight = sourceFormat.height,
            outputWidth = resolvedOutputSize.width,
            outputHeight = resolvedOutputSize.height,
        )
        val exceedsStandard4K =
            resolvedOutputSize.width.toLong() * resolvedOutputSize.height.toLong() > 3840L * 2160L

        val support = when {
            sourceFormat.width <= 0 || sourceFormat.height <= 0 -> VideoExportSupport.MAY_FAIL
            outputSize == null -> VideoExportSupport.SOURCE_TOO_SMALL
            sourceDecoderSupport == CodecSupport.UNSUPPORTED -> VideoExportSupport.UNSUPPORTED
            encoderSupport == CodecSupport.UNSUPPORTED -> VideoExportSupport.UNSUPPORTED
            exceedsStandard4K -> VideoExportSupport.MAY_FAIL
            encoderSupport == CodecSupport.SUPPORTED && sourceDecoderSupport == CodecSupport.SUPPORTED -> {
                VideoExportSupport.SUPPORTED
            }
            else -> VideoExportSupport.MAY_FAIL
        }

        PLog.d(
            TAG,
            "Export option $resolution: source=${sourceFormat.width}x${sourceFormat.height} " +
                "${sourceFormat.mimeType}@${sourceFormat.frameRate}, output=${resolvedOutputSize.width}x${resolvedOutputSize.height} " +
                "mime=$targetMime bitrate=$targetBitrate decoder=$sourceDecoderSupport " +
                "encoder=$encoderSupport support=$support",
        )
        VideoExportOption(
            resolution = resolution,
            outputWidth = resolvedOutputSize.width,
            outputHeight = resolvedOutputSize.height,
            targetVideoMime = targetMime,
            targetBitrate = targetBitrate,
            support = support,
        )
    }
}

/**
 * 视频导出器：使用 Media3 Transformer 将 LUT / 色彩配方 GL 效果烘焙到视频文件中并保存到相册。
 *
 * @param context 应用上下文
 * @param inputUri 原始视频 URI（MediaStore 或文件 URI）
 * @param lutConfig LUT 配置（可为空，表示仅应用色彩配方）
 * @param recipeParams 色彩配方参数（可为空）
 * @param outputDisplayName 导出文件名（不含扩展名），默认按时间戳生成
 * @param onProgress 进度回调（0..100），在主线程调用
 * @return 导出成功后写入 MediaStore 的 URI；失败返回 null
 */
@UnstableApi
suspend fun exportVideoWithEffects(
    context: Context,
    inputUri: Uri,
    lutConfig: LutConfig?,
    recipeParams: ColorRecipeParams?,
    exportOption: VideoExportOption,
    outputDisplayName: String? = null,
    onProgress: ((Int) -> Unit)? = null,
): Uri? = withContext(Dispatchers.Main) {
    if (!canUseVideoTransformer("exportVideoWithEffects")) {
        return@withContext null
    }

    // 构建临时输出文件
    val tempDir = File(context.cacheDir, "video_export").also { it.mkdirs() }
    val tempFile = File(tempDir, "export_${System.nanoTime()}.mp4")

    try {
        // Downscale before the LUT pass so high-resolution exports do not keep an 8K intermediate
        // texture alive when the user selected a smaller output.
        val effect = VideoLutEffect(lutConfig, recipeParams)
        val videoEffects = if (exportOption.resolution == VideoExportResolution.ORIGINAL) {
            listOf(effect)
        } else {
            listOf(
                LanczosResample.scaleToFitWithFlexibleOrientation(
                    exportOption.resolution.longEdge,
                    exportOption.resolution.shortEdge,
                ),
                Presentation.createForWidthAndHeight(
                    exportOption.outputWidth,
                    exportOption.outputHeight,
                    Presentation.LAYOUT_SCALE_TO_FIT,
                ),
                effect,
            )
        }

        // 构建 EditedMediaItem，注入 GL 效果
        val mediaItem = MediaItem.fromUri(inputUri)
        val editedMediaItem = EditedMediaItem.Builder(mediaItem)
            .setEffects(
                Effects(
                    /* audioProcessors= */ emptyList(),
                    /* videoEffects= */ videoEffects
                )
            )
            .build()

        // 构建 Transformer
        val encoderSettings = VideoEncoderSettings.Builder()
            .setEncoderPerformanceParameters(
                VideoEncoderSettings.RATE_UNSET,
                VideoEncoderSettings.RATE_UNSET,
            )
            .also { settings ->
                exportOption.targetBitrate?.let(settings::setBitrate)
            }
            .build()
        val transformer = Transformer.Builder(context)
            .setVideoMimeType(exportOption.targetVideoMime)
            // The selected resolution is a contract with the user. Do not silently fall back to a
            // smaller encoder size after they explicitly chose 8K or 4K.
            .setEncoderFactory(
                DefaultEncoderFactory.Builder(context)
                    .setEnableFallback(false)
                    .setRequestedVideoEncoderSettings(encoderSettings)
                    .build()
            )
            .build()

        PLog.d(
            TAG,
            "Exporting ${exportOption.resolution} at ${exportOption.outputWidth}x${exportOption.outputHeight}, " +
                "target MIME: ${exportOption.targetVideoMime}, bitrate=${exportOption.targetBitrate}",
        )

        // 执行转码（挂起，直到完成或出错）
        val exportResult = runTransformer(
            transformer = transformer,
            editedMediaItem = editedMediaItem,
            outputPath = tempFile.absolutePath,
            onProgress = onProgress
        )

        if (exportResult == null) {
            PLog.e(TAG, "Transformer returned null result (export failed or cancelled)")
            return@withContext null
        }

        val outputSizeMatchesSelection =
            (exportResult.width == exportOption.outputWidth && exportResult.height == exportOption.outputHeight) ||
                (exportResult.width == exportOption.outputHeight && exportResult.height == exportOption.outputWidth)
        if (!outputSizeMatchesSelection) {
            PLog.e(
                TAG,
                "Transformer ignored selected output size: requested=${exportOption.outputWidth}x${exportOption.outputHeight}, " +
                    "actual=${exportResult.width}x${exportResult.height}",
            )
            return@withContext null
        }

        PLog.d(
            TAG,
            "Transformer succeeded, resolution=${exportResult.width}x${exportResult.height}, " +
                "size=${tempFile.length()} bytes",
        )

        // 将临时文件写入 MediaStore Movies/PhotonCamera/
        val displayName = outputDisplayName
            ?: "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}_edit"
        val savedUri = saveVideoToMediaStore(context, tempFile, "$displayName.mp4")
        PLog.d(TAG, "Video saved to MediaStore: $savedUri")
        savedUri
    } catch (e: CancellationException) {
        PLog.d(TAG, "Video export cancelled")
        throw e
    } catch (e: Exception) {
        PLog.e(TAG, "Video export failed", e)
        null
    } finally {
        tempFile.delete()
    }
}

/**
 * Applies LUT and recipe effects to a video and writes the result directly to a local file.
 *
 * @param context Application context
 * @param inputUri Source video Uri
 * @param outputFile Target file to write the processed video to
 * @param lutConfig LUT configuration to apply
 * @param recipeParams Recipe parameters to apply
 * @return True if successful, false otherwise
 */
@UnstableApi
suspend fun applyEffectsToVideoFile(
    context: Context,
    inputUri: Uri,
    outputFile: File,
    lutConfig: LutConfig?,
    recipeParams: ColorRecipeParams?,
): Boolean = withContext(Dispatchers.Main) {
    if (!canUseVideoTransformer("applyEffectsToVideoFile")) {
        return@withContext false
    }

    val originalMime = detectVideoMime(context, inputUri)
    PLog.d(TAG, "applyEffectsToVideoFile: Input video MIME: $originalMime")

    outputFile.parentFile?.mkdirs()

    try {
        val effect = VideoLutEffect(lutConfig, recipeParams)

        val mediaItem = MediaItem.fromUri(inputUri)
        val editedMediaItem = EditedMediaItem.Builder(mediaItem)
            .setEffects(
                Effects(
                    /* audioProcessors= */ emptyList(),
                    /* videoEffects= */ listOf(effect)
                )
            )
            .build()

        val transformer = Transformer.Builder(context)
            .also { builder ->
                val targetMime = when {
                    originalMime == MimeTypes.VIDEO_H265 -> MimeTypes.VIDEO_H265
                    else -> MimeTypes.VIDEO_H264
                }
                PLog.d(TAG, "applyEffectsToVideoFile: Target video MIME: $targetMime")
                builder.setVideoMimeType(targetMime)
            }
            .build()

        val exportResult = runTransformer(
            transformer = transformer,
            editedMediaItem = editedMediaItem,
            outputPath = outputFile.absolutePath,
            onProgress = null
        )

        if (exportResult == null) {
            PLog.e(TAG, "applyEffectsToVideoFile: Transformer returned null result")
            false
        } else {
            PLog.d(TAG, "applyEffectsToVideoFile: Succeeded, size: ${outputFile.length()} bytes")
            true
        }
    } catch (e: CancellationException) {
        PLog.d(TAG, "applyEffectsToVideoFile: Cancelled")
        throw e
    } catch (e: Exception) {
        PLog.e(TAG, "applyEffectsToVideoFile: Failed", e)
        false
    }
}

/**
 * 在协程中运行 Transformer，通过 listener 回调转为 suspend 函数。
 * 同时轮询进度并上报给 [onProgress]。
 * 返回 ExportResult（成功）或 null（失败/取消）。
 */
@UnstableApi
private suspend fun runTransformer(
    transformer: Transformer,
    editedMediaItem: EditedMediaItem,
    outputPath: String,
    onProgress: ((Int) -> Unit)?
): ExportResult? = suspendCancellableCoroutine { cont ->
    var completed = false

    // 启动进度轮询协程（需要在 Dispatchers.Main 上调用 getProgress）
    val pollingJob = if (onProgress != null) {
        CoroutineScope(Dispatchers.Main).launch {
            val progressHolder = ProgressHolder()
            while (!completed && isActive) {
                try {
                    delay(300)
                    if (completed) break
                    val state = transformer.getProgress(progressHolder)
                    if (state == Transformer.PROGRESS_STATE_AVAILABLE) {
                        onProgress(progressHolder.progress)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Error getting progress", e)
                    break
                }
            }
        }
    } else {
        null
    }

    val listener = object : Transformer.Listener {
        override fun onCompleted(composition: Composition, exportResult: ExportResult) {
            if (!completed) {
                completed = true
                pollingJob?.cancel()
                PLog.d(TAG, "Transformer.onCompleted")
                onProgress?.invoke(100)
                cont.resume(exportResult)
            }
        }

        override fun onError(
            composition: Composition,
            exportResult: ExportResult,
            exportException: ExportException
        ) {
            if (!completed) {
                completed = true
                pollingJob?.cancel()
                PLog.e(TAG, "Transformer.onError: ${exportException.errorCode}", exportException)
                cont.resume(null)
            }
        }
    }

    transformer.addListener(listener)
    try {
        transformer.start(editedMediaItem, outputPath)
        PLog.d(TAG, "Transformer started, outputPath: $outputPath")
    } catch (error: Exception) {
        completed = true
        pollingJob?.cancel()
        PLog.e(TAG, "Transformer failed to start", error)
        cont.resume(null)
    }

    // 在取消时停止 Transformer
    cont.invokeOnCancellation {
        pollingJob?.cancel()
        PLog.d(TAG, "Cancelling transformer")
        transformer.cancel()
    }
}

/**
 * 检测视频的编码 MIME 类型（用于决定输出编码）。
 */
private fun detectVideoMime(context: Context, uri: Uri): String? {
    return detectVideoSourceFormat(context, uri).mimeType
}

private fun detectVideoSourceFormat(context: Context, uri: Uri): VideoSourceFormat {
    var mimeType: String? = null
    var width = 0
    var height = 0
    var frameRate: Double? = null
    var bitrate: Int? = null

    try {
        val extractor = MediaExtractor()
        try {
            extractor.setDataSource(context, uri, emptyMap())
            for (trackIndex in 0 until extractor.trackCount) {
                val format = extractor.getTrackFormat(trackIndex)
                val trackMime = format.getString(MediaFormat.KEY_MIME)
                if (trackMime?.startsWith("video/") != true) continue
                mimeType = trackMime
                width = format.getIntegerOrNull(MediaFormat.KEY_WIDTH) ?: width
                height = format.getIntegerOrNull(MediaFormat.KEY_HEIGHT) ?: height
                frameRate = format.getIntegerOrNull(MediaFormat.KEY_FRAME_RATE)?.toDouble()
                bitrate = format.getIntegerOrNull(MediaFormat.KEY_BIT_RATE)?.takeIf { it > 0 }
                break
            }
        } finally {
            extractor.release()
        }
    } catch (error: Exception) {
        PLog.w(TAG, "MediaExtractor could not inspect $uri: ${error.message}")
    }

    try {
        val retriever = MediaMetadataRetriever()
        retriever.use {
            it.setDataSource(context, uri)
            width = width.takeIf { value -> value > 0 }
                ?: it.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)?.toIntOrNull()
                ?: 0
            height = height.takeIf { value -> value > 0 }
                ?: it.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)?.toIntOrNull()
                ?: 0
            frameRate = frameRate
                ?: it.extractMetadata(MediaMetadataRetriever.METADATA_KEY_CAPTURE_FRAMERATE)?.toDoubleOrNull()
            bitrate = bitrate
                ?: it.extractMetadata(MediaMetadataRetriever.METADATA_KEY_BITRATE)?.toIntOrNull()?.takeIf { value -> value > 0 }
        }
    } catch (error: Exception) {
        PLog.w(TAG, "MediaMetadataRetriever could not inspect $uri: ${error.message}")
    }

    return VideoSourceFormat(mimeType, width, height, frameRate, bitrate)
}

private fun MediaFormat.getIntegerOrNull(key: String): Int? {
    return if (containsKey(key)) runCatching { getInteger(key) }.getOrNull() else null
}

private fun queryCodecSupport(
    mimeType: String?,
    width: Int,
    height: Int,
    frameRate: Double?,
    encoder: Boolean,
): CodecSupport {
    if (mimeType == null || width <= 0 || height <= 0) return CodecSupport.UNKNOWN

    val matchingCodecs = try {
        MediaCodecList(MediaCodecList.REGULAR_CODECS).codecInfos.filter { codecInfo ->
            codecInfo.isEncoder == encoder && codecInfo.supportedTypes.any {
                it.equals(mimeType, ignoreCase = true)
            }
        }
    } catch (error: Exception) {
        PLog.w(TAG, "Unable to enumerate codecs for $mimeType: ${error.message}")
        return CodecSupport.UNKNOWN
    }
    if (matchingCodecs.isEmpty()) return CodecSupport.UNSUPPORTED

    var completedQuery = false
    for (codecInfo in matchingCodecs) {
        val supported = try {
            val capabilities = codecInfo.getCapabilitiesForType(mimeType).videoCapabilities
                ?: error("Codec exposes no video capabilities")
            completedQuery = true
            supportsVideoSizeAndRate(capabilities, width, height, frameRate) ||
                supportsVideoSizeAndRate(capabilities, height, width, frameRate)
        } catch (error: Exception) {
            PLog.w(TAG, "Codec capability query failed for ${codecInfo.name}: ${error.message}")
            continue
        }
        if (supported) return CodecSupport.SUPPORTED
    }
    return if (completedQuery) CodecSupport.UNSUPPORTED else CodecSupport.UNKNOWN
}

private fun supportsVideoSizeAndRate(
    capabilities: MediaCodecInfo.VideoCapabilities,
    width: Int,
    height: Int,
    frameRate: Double?,
): Boolean {
    return if (frameRate != null && frameRate > 0.0) {
        capabilities.areSizeAndRateSupported(width, height, frameRate)
    } else {
        capabilities.isSizeSupported(width, height)
    }
}

private fun canUseVideoTransformer(operation: String): Boolean {
    if (isVideoTransformerExportSupported()) {
        return true
    }
    PLog.w(
        TAG,
        "$operation skipped: Media3 Transformer requires Android 12/API 31, current API ${Build.VERSION.SDK_INT}"
    )
    return false
}

/**
 * 将临时文件插入 MediaStore（Movies/PhotonCamera/）。
 */
private suspend fun saveVideoToMediaStore(
    context: Context,
    sourceFile: File,
    displayName: String
): Uri? = withContext(Dispatchers.IO) {
    try {
        val contentValues = ContentValues().apply {
            put(MediaStore.MediaColumns.DISPLAY_NAME, displayName)
            put(MediaStore.MediaColumns.MIME_TYPE, "video/mp4")
            put(
                MediaStore.MediaColumns.RELATIVE_PATH,
                Environment.DIRECTORY_MOVIES + "/PhotonCamera"
            )
        }

        val uri = context.contentResolver.insert(
            MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
            contentValues
        ) ?: return@withContext null

        context.contentResolver.openOutputStream(uri)?.use { out ->
            sourceFile.inputStream().use { input ->
                input.copyTo(out)
            }
        }

        uri
    } catch (e: Exception) {
        PLog.e(TAG, "Failed to save video to MediaStore", e)
        null
    }
}
