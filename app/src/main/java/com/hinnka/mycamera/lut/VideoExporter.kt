package com.hinnka.mycamera.lut

import android.content.ContentValues
import android.content.Context
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.UnstableApi
import androidx.media3.transformer.Composition
import androidx.media3.transformer.ExportException
import androidx.media3.transformer.ExportResult
import androidx.media3.transformer.ProgressHolder
import androidx.media3.transformer.Transformer
import androidx.media3.transformer.EditedMediaItem
import androidx.media3.transformer.Effects
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
    outputDisplayName: String? = null,
    onProgress: ((Int) -> Unit)? = null,
): Uri? = withContext(Dispatchers.Main) {
    if (!canUseVideoTransformer("exportVideoWithEffects")) {
        return@withContext null
    }

    // 检测原始视频编码，决定输出 MIME
    val originalMime = detectVideoMime(context, inputUri)
    PLog.d(TAG, "Input video MIME: $originalMime")

    // 构建临时输出文件
    val tempDir = File(context.cacheDir, "video_export").also { it.mkdirs() }
    val tempFile = File(tempDir, "export_${System.nanoTime()}.mp4")

    try {
        // 构建 VideoLutEffect
        val effect = VideoLutEffect(lutConfig, recipeParams)

        // 构建 EditedMediaItem，注入 GL 效果
        val mediaItem = MediaItem.fromUri(inputUri)
        val editedMediaItem = EditedMediaItem.Builder(mediaItem)
            .setEffects(
                Effects(
                    /* audioProcessors= */ emptyList(),
                    /* videoEffects= */ listOf(effect)
                )
            )
            .build()

        // 构建 Transformer
        val transformer = Transformer.Builder(context)
            .also { builder ->
                // 优先保留原始编码，不指定 videoMimeType 则 Transformer 自动保留
                // 若原始为 HEVC 则尝试输出 HEVC，否则回落到 H264
                val targetMime = when {
                    originalMime == MimeTypes.VIDEO_H265 -> MimeTypes.VIDEO_H265
                    else -> MimeTypes.VIDEO_H264
                }
                PLog.d(TAG, "Target video MIME: $targetMime")
                builder.setVideoMimeType(targetMime)
            }
            .build()

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

        PLog.d(TAG, "Transformer succeeded, output size: ${tempFile.length()} bytes")

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
    transformer.start(editedMediaItem, outputPath)
    PLog.d(TAG, "Transformer started, outputPath: $outputPath")

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
    return try {
        val retriever = MediaMetadataRetriever()
        retriever.use {
            it.setDataSource(context, uri)
            it.extractMetadata(MediaMetadataRetriever.METADATA_KEY_MIMETYPE)
        }
    } catch (e: Exception) {
        PLog.w(TAG, "Failed to detect video MIME: ${e.message}")
        null
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
