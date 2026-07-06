package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.ImageDecoder
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Build
import android.os.Environment
import com.hinnka.mycamera.gallery.db.GalleryMediaStore
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.util.Locale
import kotlin.math.roundToInt

/**
 * 开发期私有图库恢复器。
 *
 * 只扫描 App 私有 photos/<photoId> 目录，不访问公开相册或用户自定义公开目录。
 */
internal object PrivatePhotoDirectoryRecovery {
    private const val TAG = "PrivatePhotoRecovery"
    private const val PHOTOS_DIR = "photos"
    private const val PHOTO_FILE = "original.jpg"
    private const val HIGH_QUALITY_PHOTO_FILE = "original.heic"
    private const val VIDEO_FILE = "video.mp4"
    private const val DNG_FILE = "original.dng"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"
    private const val THUMBNAIL_MAX_EDGE = 512

    suspend fun recover(context: Context): GalleryManager.PhotoDirectoryRecoveryResult {
        return withContext(Dispatchers.IO) {
            val appContext = context.applicationContext
            val existingIds = GalleryMediaStore.getPhotoIds(appContext).toMutableSet()
            val photoDirs = getPhotosBaseDir(appContext)
                .listFiles()
                ?.filter { it.isDirectory && it.name.isNotBlank() }
                ?.sortedByDescending { it.lastModified() }
                ?: emptyList()

            var restoredCount = 0
            var skippedExistingCount = 0
            var skippedUnsupportedCount = 0
            var failedCount = 0

            photoDirs.forEach { photoDir ->
                val photoId = photoDir.name
                if (photoId in existingIds) {
                    skippedExistingCount++
                    return@forEach
                }

                val metadata = buildRecoveredPrivatePhotoMetadata(appContext, photoDir)
                if (metadata == null) {
                    skippedUnsupportedCount++
                    return@forEach
                }

                val saved = GalleryManager.saveMetadata(appContext, photoId, metadata)
                if (saved) {
                    existingIds += photoId
                    restoredCount++
                } else {
                    failedCount++
                }
            }

            val result = GalleryManager.PhotoDirectoryRecoveryResult(
                scannedCount = photoDirs.size,
                restoredCount = restoredCount,
                skippedExistingCount = skippedExistingCount,
                skippedUnsupportedCount = skippedUnsupportedCount,
                failedCount = failedCount
            )
            PLog.d(
                TAG,
                "Private photo directory recovery complete: scanned=${result.scannedCount}, " +
                    "restored=${result.restoredCount}, existing=${result.skippedExistingCount}, " +
                    "unsupported=${result.skippedUnsupportedCount}, failed=${result.failedCount}"
            )
            if (restoredCount > 0) {
                GalleryManager.notifyPhotoLibraryChanged()
            }
            result
        }
    }

    private fun buildRecoveredPrivatePhotoMetadata(context: Context, photoDir: File): MediaMetadata? {
        val legacyMetadata = loadLegacyMetadata(photoDir)
        val photoFile = File(photoDir, PHOTO_FILE)
        val dngFile = File(photoDir, DNG_FILE)
        val highQualityPhotoFile = File(photoDir, HIGH_QUALITY_PHOTO_FILE)
        val videoFile = File(photoDir, VIDEO_FILE)
        val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

        val hasImageSource = photoFile.exists() || dngFile.exists() || highQualityPhotoFile.exists()
        if (!hasImageSource && !legacyMetadata?.sourceUri.isNullOrBlank()) {
            return legacyMetadata
        }
        if (!hasImageSource && videoFile.exists()) {
            return buildRecoveredPrivateVideoMetadata(videoFile, thumbnailFile, legacyMetadata)
        }
        if (!hasImageSource) {
            return null
        }

        val displayFile = photoFile.takeIf { it.exists() } ?: highQualityPhotoFile.takeIf { it.exists() }
        if (!thumbnailFile.exists() && displayFile != null) {
            generateThumbnail(displayFile, thumbnailFile)
        }

        val metadataFile = when {
            dngFile.exists() -> dngFile
            photoFile.exists() -> photoFile
            highQualityPhotoFile.exists() -> highQualityPhotoFile
            else -> null
        }
        val inferredMetadata = metadataFile
            ?.let { MediaMetadata.fromUri(context, Uri.fromFile(it)) }
            ?: MediaMetadata()
        val baseMetadata = legacyMetadata ?: inferredMetadata
        val (width, height) = resolveRecoveredImageDimensions(baseMetadata, photoFile, highQualityPhotoFile)
        val originalFile = listOf(dngFile, highQualityPhotoFile, photoFile).firstOrNull { it.exists() }
        val dateTaken = baseMetadata.dateTaken
            ?: originalFile?.lastModified()?.takeIf { it > 0L }
            ?: photoDir.lastModified().takeIf { it > 0L }
        val detectedGainmap = displayFile?.let(::detectEmbeddedGainmap) ?: false

        return baseMetadata.copy(
            mediaType = MediaType.IMAGE,
            width = width,
            height = height,
            dateTaken = dateTaken,
            isImported = legacyMetadata?.isImported ?: false,
            sourceUri = legacyMetadata?.sourceUri,
            mimeType = baseMetadata.mimeType ?: originalFile?.let(::inferMimeType),
            hasEmbeddedGainmap = baseMetadata.hasEmbeddedGainmap || detectedGainmap,
            manualHdrEffectEnabled = baseMetadata.manualHdrEffectEnabled || detectedGainmap
        )
    }

    private fun buildRecoveredPrivateVideoMetadata(
        videoFile: File,
        thumbnailFile: File,
        legacyMetadata: MediaMetadata?
    ): MediaMetadata? {
        val videoUri = Uri.fromFile(videoFile)
        val info = readPrivateVideoFileInfo(videoFile)
        if (!thumbnailFile.exists()) {
            saveVideoThumbnail(videoFile, thumbnailFile)
        }
        return legacyMetadata?.copy(
            mediaType = MediaType.VIDEO,
            sourceUri = legacyMetadata.sourceUri ?: videoUri.toString(),
            mimeType = legacyMetadata.mimeType ?: info?.mimeType ?: inferMimeType(videoFile),
            dateTaken = legacyMetadata.dateTaken ?: info?.dateTaken ?: videoFile.lastModified().takeIf { it > 0L },
            width = legacyMetadata.width.takeIf { it > 0 } ?: info?.width ?: 0,
            height = legacyMetadata.height.takeIf { it > 0 } ?: info?.height ?: 0,
            durationMs = legacyMetadata.durationMs ?: info?.durationMs,
            frameRate = legacyMetadata.frameRate ?: info?.frameRate,
            bitrate = legacyMetadata.bitrate ?: info?.bitrate,
            rotationDegrees = legacyMetadata.rotationDegrees ?: info?.rotationDegrees,
            hasAudio = legacyMetadata.hasAudio ?: info?.hasAudio,
            videoWidth = legacyMetadata.videoWidth ?: info?.width,
            videoHeight = legacyMetadata.videoHeight ?: info?.height,
            captureMode = legacyMetadata.captureMode ?: "video"
        ) ?: info?.let {
            MediaMetadata(
                mediaType = MediaType.VIDEO,
                dateTaken = it.dateTaken.takeIf { date -> date > 0L } ?: videoFile.lastModified().takeIf { date -> date > 0L },
                width = it.width,
                height = it.height,
                sourceUri = videoUri.toString(),
                mimeType = it.mimeType ?: inferMimeType(videoFile),
                durationMs = it.durationMs,
                frameRate = it.frameRate,
                bitrate = it.bitrate,
                rotationDegrees = it.rotationDegrees,
                hasAudio = it.hasAudio,
                videoWidth = it.width,
                videoHeight = it.height,
                isImported = false,
                captureMode = "video"
            )
        } ?: MediaMetadata(
            mediaType = MediaType.VIDEO,
            dateTaken = videoFile.lastModified().takeIf { it > 0L },
            sourceUri = videoUri.toString(),
            mimeType = inferMimeType(videoFile),
            isImported = false,
            captureMode = "video"
        )
    }

    private fun getPhotosBaseDir(context: Context): File {
        return File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), PHOTOS_DIR)
    }

    private fun readPrivateVideoFileInfo(videoFile: File): GalleryManager.VideoRecordInfo? {
        if (!videoFile.exists()) return null
        val retriever = MediaMetadataRetriever()
        return try {
            retriever.setDataSource(videoFile.absolutePath)
            val width = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)
                ?.toIntOrNull()
                ?: 0
            val height = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)
                ?.toIntOrNull()
                ?: 0
            val durationMs = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)
                ?.toLongOrNull()
                ?: 0L
            val frameRate = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_CAPTURE_FRAMERATE)
                ?.toFloatOrNull()
                ?.roundToInt()
            val bitrate = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_BITRATE)?.toLongOrNull()
            val rotationDegrees = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)?.toIntOrNull()
            val hasAudio = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_HAS_AUDIO)?.let {
                it == "yes" || it == "true" || it == "1"
            }
            GalleryManager.VideoRecordInfo(
                uri = Uri.fromFile(videoFile),
                displayName = videoFile.name,
                dateTaken = videoFile.lastModified().takeIf { it > 0L } ?: System.currentTimeMillis(),
                size = videoFile.length(),
                width = width,
                height = height,
                durationMs = durationMs,
                mimeType = inferMimeType(videoFile),
                frameRate = frameRate,
                bitrate = bitrate,
                rotationDegrees = rotationDegrees,
                hasAudio = hasAudio
            )
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to read private video metadata for ${videoFile.absolutePath}: ${e.message}")
            null
        } finally {
            retriever.release()
        }
    }

    private fun loadLegacyMetadata(photoDir: File): MediaMetadata? {
        val metadataFile = File(photoDir, "metadata.json")
        if (!metadataFile.exists()) return null
        return runCatching {
            MediaMetadata.fromLegacyJson(metadataFile.readText())
        }.onFailure {
            PLog.w(TAG, "Failed to read legacy metadata for ${photoDir.name}: ${it.message}")
        }.getOrNull()
    }

    private fun resolveRecoveredImageDimensions(
        metadata: MediaMetadata,
        photoFile: File,
        highQualityPhotoFile: File
    ): Pair<Int, Int> {
        if (metadata.width > 0 && metadata.height > 0) return metadata.width to metadata.height
        readImageBounds(photoFile)?.let { return it }
        readImageBounds(highQualityPhotoFile)?.let { return it }
        return metadata.width to metadata.height
    }

    private fun readImageBounds(file: File): Pair<Int, Int>? {
        if (!file.exists()) return null
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeFile(file.absolutePath, options)
        return if (options.outWidth > 0 && options.outHeight > 0) {
            options.outWidth to options.outHeight
        } else {
            null
        }
    }

    private fun generateThumbnail(sourceFile: File, targetFile: File) {
        try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(sourceFile.absolutePath, options)
            options.inSampleSize = calculateInSampleSize(options, THUMBNAIL_MAX_EDGE, THUMBNAIL_MAX_EDGE)
            options.inJustDecodeBounds = false

            val bitmap = BitmapFactory.decodeFile(sourceFile.absolutePath, options)
            if (bitmap != null) {
                targetFile.parentFile?.mkdirs()
                FileOutputStream(targetFile).use { out ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 80, out)
                }
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to generate recovered thumbnail for ${sourceFile.absolutePath}", e)
        }
    }

    private fun saveVideoThumbnail(videoFile: File, outputFile: File): Boolean {
        return try {
            val retriever = MediaMetadataRetriever()
            val bitmap = try {
                retriever.setDataSource(videoFile.absolutePath)
                retriever.getFrameAtTime(0, MediaMetadataRetriever.OPTION_CLOSEST_SYNC)
            } finally {
                retriever.release()
            } ?: return false

            val thumbnail = createScaledThumbnail(bitmap, THUMBNAIL_MAX_EDGE)
            outputFile.parentFile?.mkdirs()
            FileOutputStream(outputFile).use { out ->
                thumbnail.compress(Bitmap.CompressFormat.JPEG, 90, out)
            }
            if (thumbnail != bitmap) {
                bitmap.recycle()
            }
            thumbnail.recycle()
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save recovered video thumbnail for ${videoFile.absolutePath}", e)
            false
        }
    }

    private fun createScaledThumbnail(bitmap: Bitmap, maxEdge: Int): Bitmap {
        val largestEdge = maxOf(bitmap.width, bitmap.height)
        if (largestEdge <= maxEdge) {
            return bitmap
        }

        val scale = maxEdge.toFloat() / largestEdge.toFloat()
        val targetWidth = (bitmap.width * scale).roundToInt().coerceAtLeast(1)
        val targetHeight = (bitmap.height * scale).roundToInt().coerceAtLeast(1)
        return Bitmap.createScaledBitmap(bitmap, targetWidth, targetHeight, true)
    }

    private fun calculateInSampleSize(options: BitmapFactory.Options, reqWidth: Int, reqHeight: Int): Int {
        val (height: Int, width: Int) = options.outHeight to options.outWidth
        var inSampleSize = 1

        if (height > reqHeight || width > reqWidth) {
            val halfHeight: Int = height / 2
            val halfWidth: Int = width / 2
            while (halfHeight / inSampleSize >= reqHeight && halfWidth / inSampleSize >= reqWidth) {
                inSampleSize *= 2
            }
        }
        return inSampleSize
    }

    private fun detectEmbeddedGainmap(file: File): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE || !file.exists()) return false
        return try {
            val source = ImageDecoder.createSource(file)
            val bitmap = ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                decoder.allocator = ImageDecoder.ALLOCATOR_HARDWARE
                val width = info.size.width
                val height = info.size.height
                if (width > THUMBNAIL_MAX_EDGE || height > THUMBNAIL_MAX_EDGE) {
                    val scale = THUMBNAIL_MAX_EDGE.toFloat() / maxOf(width, height)
                    decoder.setTargetSize((width * scale).toInt(), (height * scale).toInt())
                }
            }
            hasBitmapGainmap(bitmap)
        } catch (e: Exception) {
            false
        }
    }

    private fun hasBitmapGainmap(bitmap: Bitmap?): Boolean {
        if (bitmap == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return false
        return try {
            val hasGainmap = bitmap.javaClass.getMethod("hasGainmap")
            hasGainmap.invoke(bitmap) as? Boolean ?: false
        } catch (_: Throwable) {
            false
        }
    }

    private fun inferMimeType(file: File): String? {
        return when (file.extension.lowercase(Locale.US)) {
            "jpg", "jpeg" -> "image/jpeg"
            "heic" -> "image/heic"
            "heif" -> "image/heif"
            "png" -> "image/png"
            "webp" -> "image/webp"
            "dng" -> "image/x-adobe-dng"
            "mp4", "m4v" -> "video/mp4"
            "mov" -> "video/quicktime"
            "3gp" -> "video/3gpp"
            "webm" -> "video/webm"
            "mkv" -> "video/x-matroska"
            else -> null
        }
    }
}
