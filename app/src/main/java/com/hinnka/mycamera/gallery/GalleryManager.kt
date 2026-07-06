package com.hinnka.mycamera.gallery

import android.app.PendingIntent
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.DocumentsContract
import android.provider.MediaStore
import androidx.core.graphics.createBitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.HdrBracketConfig
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.gallery.db.GalleryMediaStore
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.hdr.GainmapSourceSet
import com.hinnka.mycamera.hdr.HdrGainmapStrength
import com.hinnka.mycamera.hdr.SourceKind
import com.hinnka.mycamera.hdr.UltraHdrWriter
import com.hinnka.mycamera.hdr.UnifiedGainmapProducer
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.lut.applyEffectsToVideoFile
import com.hinnka.mycamera.lut.isVideoTransformerExportSupported
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.processor.MultiFrameStacker
import com.hinnka.mycamera.processor.RawHdrStackFrame
import com.hinnka.mycamera.processor.RawStackResult
import com.hinnka.mycamera.processor.YuvHdrStackFrame
import com.hinnka.mycamera.processor.YuvHdrStackFrameRole
import com.hinnka.mycamera.raw.DngEmbeddedProfile
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.RawDefaultCropOverride
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawSharpeningDefaults
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.DngBlackLevelPatcher
import com.hinnka.mycamera.utils.DngCfaPatternPatcher
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import com.hinnka.mycamera.utils.SuperResolutionDngWriter
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import java.io.File
import java.io.FileOutputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.IntBuffer
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicLong
import kotlin.io.copyTo
import kotlin.io.deleteRecursively
import kotlin.io.extension
import kotlin.io.inputStream
import kotlin.io.walkBottomUp
import kotlin.math.ln
import kotlin.math.roundToInt
import kotlin.system.measureTimeMillis
import kotlin.use

/**
 * 照片管理器
 *
 * 统一管理照片文件、元数据、缩略图等
 * 存储路径: context.filesDir/photos/<photoId>/
 */
object GalleryManager {
    private const val TAG = "PhotoManager"
    private val metadataMutex = Mutex()
    private const val THUMBNAIL_MAX_EDGE = 512
    private const val PHOTOS_DIR = "photos"
    private const val BURST_DIR = "burst"
    private const val PHOTO_FILE = "original.jpg"
    private const val HIGH_QUALITY_PHOTO_FILE = "original.heic"
    private const val LEGACY_JXL_FILE = "original.jxl"
    private const val INTERNAL_HEIC_QUALITY = 100
    private const val HDR_FILE = "original_hdr.bin"
    private const val VIDEO_FILE = "video.mp4"
    private const val DNG_FILE = "original.dng"
    private const val AI_DENOISE_FILE = "ai_denoise.jpg"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"
    private const val BOKEH_FILE = "bokeh.jpg"
    private const val DETAIL_HDR_FILE = "detail_hdr.jpg"
    private const val MULTIPLE_EXPOSURE_DIR = "multiple_exposure_sessions"
    private const val MULTIPLE_EXPOSURE_PREVIEW_FILE = "preview.jpg"
    private const val HDR_BRACKET_FRAME_COUNT = 3
    private const val HDR_BRACKET_ZERO_INDEX = 0
    private const val HDR_BRACKET_HIGH_INDEX = 1
    private const val HDR_BRACKET_LOW_INDEX = 2
    private const val HDR_ROLE_MEASURED_PRODUCT_MIN_SPREAD = 1.10f

    private data class RawHdrStackCandidate(
        val image: SafeImage,
        val captureResult: CaptureResult,
        val exposureProduct: Double,
        val index: Int,
    )

    private data class YuvHdrFrameSelection(
        val indexedProducts: Map<Int, Float>,
        val zeroIndices: Set<Int>,
        val highIndex: Int,
        val lowIndex: Int,
        val fusionExposureProducts: FloatArray,
    )

    data class VideoRecordInfo(
        val uri: Uri,
        val displayName: String,
        val dateTaken: Long,
        val size: Long,
        val width: Int,
        val height: Int,
        val durationMs: Long,
        val mimeType: String?,
        val frameRate: Int?,
        val bitrate: Long?,
        val rotationDegrees: Int?,
        val hasAudio: Boolean?
    )

    data class PhotoDirectoryRecoveryResult(
        val scannedCount: Int,
        val restoredCount: Int,
        val skippedExistingCount: Int,
        val skippedUnsupportedCount: Int,
        val failedCount: Int
    )

    private data class PhotoExportDestination(
        val savePath: PhotoSavePath,
        val treeUri: String?
    )

    val processingScope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private val gainmapProducer = UnifiedGainmapProducer()

    @Volatile
    var hdrSdrRatio: Float = 0f
    private val detailHdrBuildJobs = ConcurrentHashMap<String, Job>()
    private val detailHdrBuildGenerations = ConcurrentHashMap<String, AtomicLong>()
    private val detailHdrPublishLock = Any()
    private val _detailHdrReadyEvents = MutableSharedFlow<String>(extraBufferCapacity = 16)
    val detailHdrReadyEvents: SharedFlow<String> = _detailHdrReadyEvents.asSharedFlow()

    private suspend fun resolveRawAutoWhiteBalanceEstimate(
        context: Context,
        metadata: MediaMetadata?
    ): Boolean {
        return metadata?.rawAutoWhiteBalanceEstimate
            ?: (ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
                ?.rawAutoWhiteBalanceEstimate ?: false)
    }

    private suspend fun resolveRawLensShadingCorrectionEnabled(
        context: Context,
        metadata: MediaMetadata?
    ): Boolean {
        return metadata?.rawLensShadingCorrectionEnabled
            ?: (ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
                ?.rawLensShadingCorrectionEnabled ?: true)
    }

    private suspend fun resolveRawAutoExposure(
        context: Context,
        metadata: MediaMetadata?
    ): Boolean {
        return metadata?.rawAutoExposure
            ?: (ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
                ?.rawAutoExposure ?: true)
    }

    private fun resolveNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.noiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    private fun resolveChromaNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    private fun MediaMetadata.withRawAutoAdjustments(
        adjustments: RawDemosaicProcessor.RawAutoAdjustments
    ): MediaMetadata {
        return copy(
            rawExposureCompensation = adjustments.exposureCompensation,
            rawHighlightsAdjustment = adjustments.highlights,
            rawShadowsAdjustment = adjustments.shadows
        )
    }

    data class PhotoMetadataUpdate(
        val photoId: String,
        val metadata: MediaMetadata
    )

    private val _photoMetadataUpdatedEvents =
        MutableSharedFlow<PhotoMetadataUpdate>(extraBufferCapacity = 16)
    val photoMetadataUpdatedEvents: SharedFlow<PhotoMetadataUpdate> =
        _photoMetadataUpdatedEvents.asSharedFlow()

    private val _photoLibraryChangedEvents = MutableSharedFlow<Unit>(extraBufferCapacity = 16)
    val photoLibraryChangedEvents: SharedFlow<Unit> = _photoLibraryChangedEvents.asSharedFlow()
    private val _photoThumbnailUpdatedEvents = MutableSharedFlow<String>(extraBufferCapacity = 16)
    val photoThumbnailUpdatedEvents: SharedFlow<String> = _photoThumbnailUpdatedEvents.asSharedFlow()
    private val _preparedPhotoThumbnailEvents = MutableSharedFlow<String>(extraBufferCapacity = 16)
    val preparedPhotoThumbnailEvents: SharedFlow<String> = _preparedPhotoThumbnailEvents.asSharedFlow()
    private val hdrWorkLock = Any()
    private val hdrWorkCounts = ConcurrentHashMap<String, Int>()

    private fun notifyPhotoMetadataUpdated(photoId: String, metadata: MediaMetadata) {
        _photoMetadataUpdatedEvents.tryEmit(PhotoMetadataUpdate(photoId, metadata))
    }

    fun notifyPhotoLibraryChanged() {
        _photoLibraryChangedEvents.tryEmit(Unit)
    }

    private fun notifyPhotoThumbnailUpdated(photoId: String) {
        _photoThumbnailUpdatedEvents.tryEmit(photoId)
    }

    private fun notifyPreparedPhotoThumbnail(photoId: String) {
        _preparedPhotoThumbnailEvents.tryEmit(photoId)
    }

    private fun getPhotosBaseDir(context: Context): File {
        return File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), PHOTOS_DIR)
    }

    private fun getPhotoDir(context: Context, photoId: String, create: Boolean = false): File {
        val dir = File(getPhotosBaseDir(context), photoId)
        if (create && !dir.exists()) {
            dir.mkdirs()
        }
        return dir
    }

    private fun getMultipleExposureBaseDir(context: Context): File {
        return File(context.cacheDir, MULTIPLE_EXPOSURE_DIR)
    }

    private fun getMultipleExposureSessionDir(context: Context, sessionId: String, create: Boolean = false): File {
        val dir = File(getMultipleExposureBaseDir(context), sessionId)
        if (create && !dir.exists()) {
            dir.mkdirs()
        }
        return dir
    }

    private fun getMultipleExposurePreviewFile(context: Context, sessionId: String): File {
        return File(getMultipleExposureSessionDir(context, sessionId, true), MULTIPLE_EXPOSURE_PREVIEW_FILE)
    }

    fun getPhotoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), PHOTO_FILE)
    }

    fun getHighQualityPhotoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), HIGH_QUALITY_PHOTO_FILE)
    }

    fun hasHighQualityPhoto(context: Context, photoId: String): Boolean {
        val file = getHighQualityPhotoFile(context, photoId)
        return file.exists() && file.length() > 0L
    }

    fun getOriginalImageFile(context: Context, photoId: String): File? {
        val highQualityFile = getHighQualityPhotoFile(context, photoId)
        if (highQualityFile.exists() && highQualityFile.length() > 0L) return highQualityFile
        val photoFile = getPhotoFile(context, photoId)
        if (photoFile.exists() && photoFile.length() > 0L) return photoFile
        return null
    }

    fun getHdrFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), HDR_FILE)
    }

    fun getDngFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), DNG_FILE)
    }

    fun getAiDenoiseFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), AI_DENOISE_FILE)
    }

    fun getDepthFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), "depthmap.png")
    }

    fun getThumbnailFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), THUMBNAIL_FILE)
    }

    fun getBokehFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), BOKEH_FILE)
    }

    fun getDetailHdrFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), DETAIL_HDR_FILE)
    }

    private fun beginHdrWork(photoId: String) {
        synchronized(hdrWorkLock) {
            hdrWorkCounts[photoId] = (hdrWorkCounts[photoId] ?: 0) + 1
        }
    }

    private fun endHdrWork(photoId: String) {
        synchronized(hdrWorkLock) {
            val nextCount = (hdrWorkCounts[photoId] ?: 1) - 1
            if (nextCount > 0) {
                hdrWorkCounts[photoId] = nextCount
            } else {
                hdrWorkCounts.remove(photoId)
            }
        }
    }

    fun isHdrWorkInFlight(photoId: String): Boolean {
        return (hdrWorkCounts[photoId] ?: 0) > 0
    }

    private fun currentDetailHdrBuildGeneration(photoId: String): Long {
        return detailHdrBuildGenerations[photoId]?.get() ?: 0L
    }

    private fun nextDetailHdrBuildGeneration(photoId: String): Long {
        return detailHdrBuildGenerations.getOrPut(photoId) { AtomicLong(0L) }.incrementAndGet()
    }

    private fun isCurrentDetailHdrBuild(photoId: String, generation: Long): Boolean {
        return currentDetailHdrBuildGeneration(photoId) == generation
    }

    private suspend fun awaitDetailHdrBuildIdle(photoId: String) {
        val existingJob = detailHdrBuildJobs[photoId] ?: return
        if (!existingJob.isActive) return
        PLog.d(TAG, "Waiting for detail HDR build before RAW refresh: $photoId")
        existingJob.join()
    }

    fun deleteDetailHdrFile(context: Context, photoId: String) {
        val detailFile = getDetailHdrFile(context, photoId)
        val photoDir = getPhotoDir(context, photoId)
        val stableTimestamp = getOriginalImageFile(context, photoId)?.lastModified()
        synchronized(detailHdrPublishLock) {
            val generation = nextDetailHdrBuildGeneration(photoId)
            if (detailFile.exists()) {
                detailFile.delete()
            }
            stableTimestamp?.let { photoDir.setLastModified(it) }
            PLog.d(TAG, "Invalidated detail HDR cache: $photoId generation=$generation")
        }
    }

    private fun deleteDetailHdrFileIfCurrent(
        context: Context,
        photoId: String,
        expectedGeneration: Long,
    ): Boolean {
        val detailFile = getDetailHdrFile(context, photoId)
        val photoDir = getPhotoDir(context, photoId)
        val stableTimestamp = getOriginalImageFile(context, photoId)?.lastModified()
        return synchronized(detailHdrPublishLock) {
            if (!isCurrentDetailHdrBuild(photoId, expectedGeneration)) {
                PLog.d(
                    TAG,
                    "Skip stale detail HDR delete: $photoId expected=$expectedGeneration current=${currentDetailHdrBuildGeneration(photoId)}"
                )
                return@synchronized false
            }
            val generation = nextDetailHdrBuildGeneration(photoId)
            if (detailFile.exists()) {
                detailFile.delete()
            }
            stableTimestamp?.let { photoDir.setLastModified(it) }
            PLog.d(TAG, "Deleted detail HDR cache from current build: $photoId generation=$generation")
            true
        }
    }

    private fun publishDetailHdrFileIfCurrent(
        context: Context,
        photoId: String,
        tempFile: File,
        stableTimestamp: Long?,
        expectedGeneration: Long,
    ): Boolean {
        val photoDir = getPhotoDir(context, photoId)
        val detailFile = getDetailHdrFile(context, photoId)
        return synchronized(detailHdrPublishLock) {
            if (!isCurrentDetailHdrBuild(photoId, expectedGeneration)) {
                tempFile.delete()
                stableTimestamp?.let { photoDir.setLastModified(it) }
                PLog.d(
                    TAG,
                    "Discarded stale detail HDR build: $photoId expected=$expectedGeneration current=${currentDetailHdrBuildGeneration(photoId)}"
                )
                return@synchronized false
            }

            if (detailFile.exists()) {
                detailFile.delete()
            }
            val published = tempFile.renameTo(detailFile)
            if (!published) {
                tempFile.delete()
            }
            stableTimestamp?.let { photoDir.setLastModified(it) }
            if (published) {
                _detailHdrReadyEvents.tryEmit(photoId)
            }
            published
        }
    }

    fun getVideoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), VIDEO_FILE)
    }

    private fun getExistingMediaFile(context: Context, photoId: String): File? {
        getOriginalImageFile(context, photoId)?.let { return it }
        val videoFile = getVideoFile(context, photoId)
        if (videoFile.exists()) return videoFile
        return null
    }

    private fun readVideoRecordInfo(context: Context, uri: Uri): VideoRecordInfo? {
        return try {
            val projection = arrayOf(
                MediaStore.Video.Media.DISPLAY_NAME,
                MediaStore.Video.Media.DATE_ADDED,
                MediaStore.Video.Media.SIZE,
                MediaStore.Video.Media.WIDTH,
                MediaStore.Video.Media.HEIGHT,
                MediaStore.Video.Media.DURATION,
                MediaStore.Video.Media.MIME_TYPE
            )
            context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                if (!cursor.moveToFirst()) return@use null
                val displayName = cursor.getString(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.DISPLAY_NAME))
                val dateTaken = cursor.getLong(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.DATE_ADDED)) * 1000L
                val size = cursor.getLong(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.SIZE))
                val width = cursor.getInt(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.WIDTH))
                val height = cursor.getInt(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.HEIGHT))
                val durationMs = cursor.getLong(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.DURATION))
                val mimeType = cursor.getString(cursor.getColumnIndexOrThrow(MediaStore.Video.Media.MIME_TYPE))

                var frameRate: Int? = null
                var bitrate: Long? = null
                var rotationDegrees: Int? = null
                var hasAudio: Boolean? = null
                var resolvedWidth = width
                var resolvedHeight = height
                var resolvedDurationMs = durationMs

                val retriever = MediaMetadataRetriever()
                try {
                    retriever.setDataSource(context, uri)
                    resolvedWidth = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)
                        ?.toIntOrNull()
                        ?.takeIf { it > 0 } ?: resolvedWidth
                    resolvedHeight = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)
                        ?.toIntOrNull()
                        ?.takeIf { it > 0 } ?: resolvedHeight
                    resolvedDurationMs = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)
                        ?.toLongOrNull()
                        ?.takeIf { it > 0L } ?: resolvedDurationMs
                    frameRate = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_CAPTURE_FRAMERATE)
                        ?.toFloatOrNull()?.roundToInt()
                    if (frameRate == null) {
                        val frameCount = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_FRAME_COUNT)
                            ?.toLongOrNull()
                        if (frameCount != null && resolvedDurationMs > 0L) {
                            frameRate = ((frameCount * 1000f) / resolvedDurationMs).roundToInt().takeIf { it > 0 }
                        }
                    }
                    bitrate = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_BITRATE)?.toLongOrNull()
                    rotationDegrees = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)?.toIntOrNull()
                    hasAudio = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_HAS_AUDIO)?.let {
                        it == "yes" || it == "true" || it == "1"
                    }
                } catch (e: Exception) {
                    PLog.w(TAG, "Video retriever metadata unavailable for $uri: ${e.message}")
                } finally {
                    retriever.release()
                }

                VideoRecordInfo(
                    uri = uri,
                    displayName = displayName,
                    dateTaken = dateTaken,
                    size = size,
                    width = resolvedWidth,
                    height = resolvedHeight,
                    durationMs = resolvedDurationMs,
                    mimeType = mimeType,
                    frameRate = frameRate,
                    bitrate = bitrate,
                    rotationDegrees = rotationDegrees,
                    hasAudio = hasAudio
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to read video record info: $uri", e)
            null
        }
    }

    private fun saveVideoThumbnail(context: Context, uri: Uri, outputFile: File): Boolean {
        return try {
            val retriever = MediaMetadataRetriever()
            val bitmap = try {
                retriever.setDataSource(context, uri)
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
            PLog.e(TAG, "Failed to save video thumbnail for $uri", e)
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

    private fun hasBitmapGainmap(bitmap: Bitmap?): Boolean {
        if (bitmap == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return false
        return try {
            val hasGainmap = bitmap.javaClass.getMethod("hasGainmap")
            hasGainmap.invoke(bitmap) as? Boolean ?: false
        } catch (_: Throwable) {
            false
        }
    }

    private fun canReuseEmbeddedGainmap(metadata: MediaMetadata): Boolean {
        return EmbeddedGainmapReusePolicy.canReuse(metadata)
    }

    private fun writeFinalJpeg(
        bitmap: Bitmap,
        outputStream: FileOutputStream,
        quality: Int,
        gainmapResult: GainmapResult? = null,
    ): Boolean {
        var success = false
        val elapsed = measureTimeMillis {
            success = UltraHdrWriter.writeJpeg(
                UltraHdrWriter.Request(
                    bitmap = bitmap,
                    outputStream = outputStream,
                    quality = quality,
                    gainmap = gainmapResult?.gainmap,
                )
            )
        }
        PLog.d(
            TAG,
            "writeFinalJpeg took ${elapsed}ms, size=${bitmap.width}x${bitmap.height}, gainmap=${gainmapResult != null}, success=$success"
        )
        return success
    }

    private fun deleteDeprecatedJxlStorage(photoDir: File) {
        File(photoDir, LEGACY_JXL_FILE).takeIf { it.exists() }?.delete()
        File(photoDir, HDR_FILE).takeIf { it.exists() }?.delete()
    }

    private fun writeInternalOriginalPhoto(photoDir: File, bitmap: Bitmap, jpegQuality: Int): File? {
        deleteDeprecatedJxlStorage(photoDir)
        val heicFile = File(photoDir, HIGH_QUALITY_PHOTO_FILE)
        val jpegFile = File(photoDir, PHOTO_FILE)

        if (HeicExportEncoder.isSupported && !bitmap.isRecycled) {
            val tempHeicFile = File(photoDir, "temp_original_${System.nanoTime()}.${HeicExportEncoder.EXTENSION}")
            val saved = HeicExportEncoder.write(
                bitmap = bitmap,
                outputFile = tempHeicFile,
                quality = INTERNAL_HEIC_QUALITY
            )
            if (saved) {
                if (heicFile.exists() && !heicFile.delete()) {
                    tempHeicFile.delete()
                } else if (tempHeicFile.renameTo(heicFile)) {
                    if (jpegFile.exists() && !jpegFile.delete()) {
                        heicFile.delete()
                    } else {
                        return heicFile
                    }
                } else {
                    tempHeicFile.delete()
                }
            } else {
                tempHeicFile.delete()
            }
        }

        heicFile.takeIf { it.exists() }?.delete()
        val tempJpegFile = File(photoDir, "temp_original_${System.nanoTime()}.jpg")
        val jpegSaved = FileOutputStream(tempJpegFile).use { outputStream ->
            writeFinalJpeg(bitmap, outputStream, jpegQuality)
        }
        if (!jpegSaved) {
            tempJpegFile.delete()
            jpegFile.takeIf { it.exists() && it.length() == 0L }?.delete()
            return null
        }
        if (jpegFile.exists() && !jpegFile.delete()) {
            tempJpegFile.delete()
            return null
        }
        return if (tempJpegFile.renameTo(jpegFile)) {
            jpegFile
        } else {
            tempJpegFile.delete()
            null
        }
    }

    suspend fun buildDetailHdrCache(
        context: Context,
        photoId: String,
        metadata: MediaMetadata? = null,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        quality: Int = 92,
        preparedUltraHdrSource: GainmapSourceSet? = null,
        preparedGainmapResult: GainmapResult? = null,
        expectedGeneration: Long = currentDetailHdrBuildGeneration(photoId),
    ): Boolean = withContext(Dispatchers.IO) {
        beginHdrWork(photoId)
        try {
            val resolvedMetadata = metadata ?: loadMetadata(context, photoId) ?: return@withContext false
            if (!resolvedMetadata.manualHdrEffectEnabled) {
                deleteDetailHdrFileIfCurrent(context, photoId, expectedGeneration)
                return@withContext false
            }
            val photoDir = getPhotoDir(context, photoId)
            val stableTimestamp = getOriginalImageFile(context, photoId)?.lastModified()
            val tempFile = File(
                getDetailHdrFile(context, photoId).parentFile,
                "detail_hdr_temp_${expectedGeneration}_${System.nanoTime()}.jpg"
            )

            val photoProcessor = ContentRepository.getInstance(context).photoProcessor
            val ultraHdrSource = preparedUltraHdrSource ?: photoProcessor.prepareUltraHdrSource(
                context = context,
                photoId = photoId,
                metadata = resolvedMetadata,
                sharpening = sharpening,
                noiseReduction = noiseReduction,
                chromaNoiseReduction = chromaNoiseReduction
            )
            if (preparedUltraHdrSource != null) {
                PLog.d(TAG, "buildDetailHdrCache reusing prepared HDR source for $photoId")
            }

            if (ultraHdrSource == null) {
                deleteDetailHdrFileIfCurrent(context, photoId, expectedGeneration)
                return@withContext false
            }

            val gainmapResult = preparedGainmapResult ?: gainmapProducer.build(
                ultraHdrSource,
                HdrGainmapStrength.coerce(resolvedMetadata.hdrEffectStrength)
            )
            if (preparedGainmapResult != null) {
                PLog.d(TAG, "buildDetailHdrCache reused prepared gainmap for $photoId")
            }
            if (!isCurrentDetailHdrBuild(photoId, expectedGeneration)) {
                tempFile.delete()
                stableTimestamp?.let { photoDir.setLastModified(it) }
                PLog.d(
                    TAG,
                    "Aborting stale detail HDR build before frame: $photoId expected=$expectedGeneration current=${currentDetailHdrBuildGeneration(photoId)}"
                )
                return@withContext false
            }
            val hdrOutput = photoProcessor.applyFrameForHdrOutput(
                input = ultraHdrSource.sdrBase,
                metadata = resolvedMetadata,
                gainmapResult = gainmapResult
            )
            try {
                FileOutputStream(tempFile).use { outputStream ->
                    if (!writeFinalJpeg(hdrOutput.bitmap, outputStream, quality, hdrOutput.gainmapResult)) {
                        tempFile.delete()
                        return@withContext false
                    }
                }
            } finally {
                if (hdrOutput.bitmap !== ultraHdrSource.sdrBase && !hdrOutput.bitmap.isRecycled) {
                    hdrOutput.bitmap.recycle()
                }
            }

            if (!publishDetailHdrFileIfCurrent(
                    context = context,
                    photoId = photoId,
                    tempFile = tempFile,
                    stableTimestamp = stableTimestamp,
                    expectedGeneration = expectedGeneration
                )
            ) {
                return@withContext false
            }
            PLog.d(
                TAG,
                "buildDetailHdrCache success: $photoId, source=${ultraHdrSource.sourceKind}, gainmap=${hdrOutput.gainmapResult != null}"
            )
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to build detail HDR cache for $photoId", e)
            false
        } finally {
            endHdrWork(photoId)
        }
    }

    fun queueDetailHdrCacheBuild(
        context: Context,
        photoId: String,
        metadata: MediaMetadata? = null,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ) {
        val existingJob = detailHdrBuildJobs[photoId]
        val generation = nextDetailHdrBuildGeneration(photoId)
        val job = processingScope.launch {
            try {
                existingJob?.join()
                buildDetailHdrCache(
                    context = context,
                    photoId = photoId,
                    metadata = metadata,
                    sharpening = sharpening,
                    noiseReduction = noiseReduction,
                    chromaNoiseReduction = chromaNoiseReduction,
                    expectedGeneration = generation
                )
            } finally {
                detailHdrBuildJobs.remove(photoId, coroutineContext[Job])
            }
        }
        detailHdrBuildJobs[photoId] = job
        PLog.d(TAG, "Queued detail HDR build: $photoId generation=$generation")
    }

    private suspend fun resolvePhotoExportDestination(context: Context): PhotoExportDestination {
        val preferences = ContentRepository.getInstance(context)
            .userPreferencesRepository
            .userPreferences
            .firstOrNull()
        val savePath = preferences?.photoSavePath ?: PhotoSavePath.DCIM_PHOTON
        val treeUri = preferences?.photoSaveTreeUri?.takeIf { it.isNotBlank() }
        return if (savePath == PhotoSavePath.EXTERNAL_TREE && treeUri != null) {
            PhotoExportDestination(savePath, treeUri)
        } else {
            if (savePath == PhotoSavePath.EXTERNAL_TREE) {
                PLog.w(TAG, "Photo external save path selected without tree URI, falling back to MediaStore")
            }
            PhotoExportDestination(PhotoSavePath.DCIM_PHOTON, null)
        }
    }

    private fun createPhotoExportUri(
        context: Context,
        destination: PhotoExportDestination,
        collectionUri: Uri,
        displayName: String,
        mimeType: String
    ): Uri? {
        return if (destination.savePath == PhotoSavePath.EXTERNAL_TREE) {
            createPhotoExportTreeUri(context, destination.treeUri, displayName, mimeType)
        } else {
            val relativePath = destination.savePath.relativePath ?: PhotoSavePath.DCIM_PHOTON.relativePath
            val contentValues = ContentValues().apply {
                put(MediaStore.MediaColumns.DISPLAY_NAME, displayName)
                put(MediaStore.MediaColumns.MIME_TYPE, mimeType)
                put(MediaStore.MediaColumns.RELATIVE_PATH, relativePath)
            }
            context.contentResolver.insert(collectionUri, contentValues)
        }
    }

    private fun createPhotoExportTreeUri(
        context: Context,
        treeUriString: String?,
        displayName: String,
        mimeType: String
    ): Uri? {
        if (treeUriString.isNullOrBlank()) return null
        return try {
            val treeUri = Uri.parse(treeUriString)
            val treeDocumentId = DocumentsContract.getTreeDocumentId(treeUri)
            val parentUri = DocumentsContract.buildDocumentUriUsingTree(treeUri, treeDocumentId)
            DocumentsContract.createDocument(context.contentResolver, parentUri, mimeType, displayName)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create photo export document: $displayName", e)
            null
        }
    }

    private fun discardPhotoExportUri(context: Context, uri: Uri) {
        runCatching {
            if (DocumentsContract.isDocumentUri(context, uri)) {
                DocumentsContract.deleteDocument(context.contentResolver, uri)
            } else {
                context.contentResolver.delete(uri, null, null)
            }
        }.onFailure {
            PLog.w(TAG, "Failed to discard photo export URI $uri: ${it.message}")
        }
    }

    private fun writeToPhotoExportUri(
        context: Context,
        uri: Uri,
        write: (OutputStream) -> Unit
    ): Boolean {
        return try {
            context.contentResolver.openOutputStream(uri)?.use { output ->
                write(output)
            } ?: return false
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write photo export URI: $uri", e)
            false
        }
    }

    private fun exportFileToConfiguredPhotoStorage(
        context: Context,
        destination: PhotoExportDestination,
        collectionUri: Uri,
        displayName: String,
        mimeType: String,
        sourceFile: File
    ): Uri? {
        if (!sourceFile.exists() || sourceFile.length() <= 0L) return null
        val uri = createPhotoExportUri(context, destination, collectionUri, displayName, mimeType)
            ?: return null
        val written = writeToPhotoExportUri(context, uri) { output ->
            sourceFile.inputStream().use { input ->
                input.copyTo(output)
            }
        }
        if (!written) {
            discardPhotoExportUri(context, uri)
            return null
        }
        return uri
    }

    private fun exportBytesToConfiguredPhotoStorage(
        context: Context,
        destination: PhotoExportDestination,
        collectionUri: Uri,
        displayName: String,
        mimeType: String,
        data: ByteArray
    ): Uri? {
        val uri = createPhotoExportUri(context, destination, collectionUri, displayName, mimeType)
            ?: return null
        val written = writeToPhotoExportUri(context, uri) { output ->
            output.write(data)
        }
        if (!written) {
            discardPhotoExportUri(context, uri)
            return null
        }
        return uri
    }

    @androidx.annotation.OptIn(androidx.media3.common.util.UnstableApi::class)
    suspend fun exportPhoto(
        context: Context,
        id: String,
        bitmap: Bitmap? = null,
        photoProcessor: PhotoProcessor,
        metadata: MediaMetadata,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        suffix: String? = null,
        preparedUltraHdrSource: GainmapSourceSet? = null,
        preparedGainmapResult: GainmapResult? = null,
        preferHeicExport: Boolean? = null,
    ): Boolean {
        return withContext(Dispatchers.IO) {
            val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
            try {
                val shouldPreferHeic = preferHeicExport
                    ?: (ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
                        ?.useHeicExport ?: false)
                val exportDestination = resolvePhotoExportDestination(context)

                if (!shouldPreferHeic && bitmap == null && canReuseEmbeddedGainmap(metadata)) {
                    val embeddedBitmap = loadOriginalBitmap(context, id)
                    if (embeddedBitmap != null && hasBitmapGainmap(embeddedBitmap)) {
                        PLog.d(TAG, "Reusing embedded gainmap for export: $id")
                        return@withContext exportBitmapToMediaStore(
                            context = context,
                            id = id,
                            bitmap = embeddedBitmap,
                            metadata = metadata,
                            photoQuality = photoQuality,
                            suffix = suffix,
                            destination = exportDestination
                        )
                    }
                }

                var ultraHdrSource = preparedUltraHdrSource
                if (ultraHdrSource == null) {
                    val ultraHdrPrepareElapsed = measureTimeMillis {
                        ultraHdrSource = photoProcessor.prepareUltraHdrSource(
                            context = context,
                            photoId = id,
                            metadata = metadata,
                            sharpening = sharpeningValue,
                            noiseReduction = noiseReductionValue,
                            chromaNoiseReduction = chromaNoiseReductionValue
                        )
                    }
                    PLog.d(TAG, "prepareUltraHdrSource took ${ultraHdrPrepareElapsed}ms")
                } else {
                    PLog.d(TAG, "prepareUltraHdrSource reused in-memory source for export: $id")
                }
                val isRawPhoto = getDngFile(context, id).exists()
                val bitmapPostMetadata = if (isRawPhoto) {
                    metadata.copy(
                        sharpening = 0f,
                        noiseReduction = 0f,
                        chromaNoiseReduction = 0f
                    )
                } else {
                    metadata
                }
                val bitmapSharpeningValue = if (isRawPhoto) 0f else sharpeningValue
                val bitmapNoiseReductionValue = if (isRawPhoto) 0f else noiseReductionValue
                val bitmapChromaNoiseReductionValue = if (isRawPhoto) 0f else chromaNoiseReductionValue
                var gainmapResult: GainmapResult? = preparedGainmapResult
                if (preparedGainmapResult == null) {
                    val gainmapElapsed = measureTimeMillis {
                        gainmapResult = ultraHdrSource?.let {
                            gainmapProducer.build(it, HdrGainmapStrength.coerce(metadata.hdrEffectStrength))
                        }
                    }
                    PLog.d(TAG, "gainmapProducer.build took ${gainmapElapsed}ms, enabled=${gainmapResult != null}")
                } else {
                    PLog.d(TAG, "gainmapProducer.build reused prepared result, enabled=true")
                }

                // 读取照片
                val sourceBitmap = ultraHdrSource
                    ?.takeUnless { it.sourceKind == SourceKind.SDR_BITMAP && metadata.hasEmbeddedGainmap }
                    ?.sdrBase
                val processedBitmap = (sourceBitmap ?: if (metadata.hasAiDenoisedBase) {
                    photoProcessor.process(
                        context, id, metadata,
                        sharpeningValue, noiseReductionValue, chromaNoiseReductionValue
                    )
                } else bitmap?.let {
                    photoProcessor.processBitmap(
                        context, id, bitmap, bitmapPostMetadata,
                        bitmapSharpeningValue, bitmapNoiseReductionValue, bitmapChromaNoiseReductionValue,
                        true
                    )
                } ?: photoProcessor.process(
                    context, id, metadata,
                    sharpeningValue, noiseReductionValue, chromaNoiseReductionValue
                )) ?: return@withContext false

                PLog.d(
                    TAG,
                    "processedBitmap = ${processedBitmap.colorSpace?.name}, ultraHdrSource=${ultraHdrSource?.sourceKind}, gainmap=${gainmapResult != null}"
                )

                val hdrOutput = sourceBitmap?.let {
                    photoProcessor.applyFrameForHdrOutput(
                        input = it,
                        metadata = metadata,
                        gainmapResult = gainmapResult
                    )
                }
                val outputBitmap = hdrOutput?.bitmap ?: processedBitmap
                val outputGainmapResult = hdrOutput?.gainmapResult ?: gainmapResult

                val videoFile = File(getPhotoDir(context, id), VIDEO_FILE)
                val isLivePhoto = videoFile.exists()

                // 保存到指定目录
                val date = metadata.dateTaken ?: System.currentTimeMillis()

                val lutName =
                    metadata.lutId?.let { ContentRepository.getInstance(context).lutManager.getLutInfo(it)?.getName() }
                var withSuffix = suffix?.let { "_$it" } ?: ""
                lutName?.let {
                    withSuffix += ".$lutName"
                }

                val baseFilename =
                    "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(date))}$withSuffix"

                if (shouldPreferHeic && !isLivePhoto) {
                    val heicExported = exportEncodedPhotoToMediaStore(
                        context = context,
                        id = id,
                        bitmap = outputBitmap,
                        metadata = metadata,
                        photoQuality = photoQuality,
                        baseFilename = baseFilename,
                        extension = HeicExportEncoder.EXTENSION,
                        mimeType = HeicExportEncoder.MIME_TYPE,
                        gainmapResult = outputGainmapResult,
                        destination = exportDestination
                    )
                    if (heicExported) {
                        outputBitmap.recycle()
                        return@withContext true
                    }
                    PLog.w(TAG, "HEIC export unavailable or failed, falling back to JPEG for photo $id")
                }

                val filename = "$baseFilename.jpg"
                val exportWriteElapsed = measureTimeMillis {
                    FileOutputStream(tempExportFile).use { outputStream ->
                        writeFinalJpeg(
                            bitmap = outputBitmap,
                            outputStream = outputStream,
                            quality = photoQuality,
                            gainmapResult = if (isLivePhoto) null else outputGainmapResult
                        )
                    }
                }
                PLog.d(TAG, "exportPhoto writeFinalJpeg wrapper took ${exportWriteElapsed}ms")

                ExifWriter.writeExif(
                    tempExportFile, metadata.toCaptureInfo().copy(
                        imageWidth = outputBitmap.width,
                        imageHeight = outputBitmap.height
                    )
                )

                val uri = if (isLivePhoto) {
                    val tempMotionPhotoFile = File(context.cacheDir, "temp_motion_${System.nanoTime()}.jpg")
                    var tempProcessedVideoFile: File? = null
                    try {
                        PLog.d(
                            TAG,
                            "Attempting to create Motion Photo for export: JPEG=${tempExportFile.length()}, Video=${videoFile.length()}"
                        )

                        // 重新从磁盘加载最新元数据，以获取可能刚写回的 presentationTimestampUs
                        val latestMetadata = loadMetadata(context, id) ?: metadata

                        var finalVideoPath = videoFile.absolutePath
                        if (latestMetadata.applyEffectsToVideo && isVideoTransformerExportSupported()) {
                            val lutId = latestMetadata.lutId
                            val colorRecipeParams = latestMetadata.colorRecipeParams
                            PLog.d(TAG, "exportPhoto: applyEffectsToVideo is true. lutId: $lutId, colorRecipe: ${colorRecipeParams != null}")

                            val lutConfig = if (lutId != null) {
                                ContentRepository.getInstance(context).lutManager.loadLut(lutId)
                            } else {
                                null
                            }

                            val processedFile = File(context.cacheDir, "temp_processed_video_${System.nanoTime()}.mp4")
                            val success = applyEffectsToVideoFile(
                                context = context,
                                inputUri = Uri.fromFile(videoFile),
                                outputFile = processedFile,
                                lutConfig = lutConfig,
                                recipeParams = colorRecipeParams
                            )
                            if (success && processedFile.exists() && processedFile.length() > 0) {
                                tempProcessedVideoFile = processedFile
                                finalVideoPath = processedFile.absolutePath
                                PLog.d(TAG, "exportPhoto: Successfully processed video effects. Size: ${processedFile.length()}")
                            } else {
                                processedFile.delete()
                                PLog.e(TAG, "exportPhoto: Failed to apply video effects, falling back to original video")
                            }
                        } else if (latestMetadata.applyEffectsToVideo) {
                            PLog.w(
                                TAG,
                                "exportPhoto: Skipping video effects because Media3 Transformer requires Android 12/API 31"
                            )
                        }

                        val success = MotionPhotoWriter.write(
                            tempExportFile.absolutePath,
                            finalVideoPath,
                            tempMotionPhotoFile.absolutePath,
                            latestMetadata.presentationTimestampUs ?: 0L,
                            context
                        )

                        PLog.d(TAG, "MotionPhotoWriter result: $success")
                        val photoExportFile = if (success) {
                            PLog.d(TAG, "Exported Live Photo successfully: ${tempMotionPhotoFile.length()} bytes")
                            tempMotionPhotoFile
                        } else {
                            PLog.w(TAG, "Motion Photo synthesis failed, falling back to JPEG")
                            tempExportFile
                        }

                        val exportedPhotoUri = exportFileToConfiguredPhotoStorage(
                            context = context,
                            destination = exportDestination,
                            collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                            displayName = filename,
                            mimeType = "image/jpeg",
                            sourceFile = photoExportFile
                        )

                        if (exportedPhotoUri != null && Build.MANUFACTURER.lowercase().contains("vivo")) {
                            val videoFilename = filename.replace(".jpg", ".mp4")
                            val tempMotionVideoFile = File(tempMotionPhotoFile.absolutePath.replace(".jpg", ".mp4"))
                            try {
                                if (tempMotionVideoFile.exists()) {
                                    exportFileToConfiguredPhotoStorage(
                                        context = context,
                                        destination = exportDestination,
                                        collectionUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
                                        displayName = videoFilename,
                                        mimeType = "video/mp4",
                                        sourceFile = tempMotionVideoFile
                                    )?.let { videoUri ->
                                        updateMetadata(context, id) { current ->
                                            current.copy(
                                                exportedUris = current.exportedUris + videoUri.toString()
                                            )
                                        }
                                    }
                                }
                            } finally {
                                tempMotionVideoFile.delete()
                            }
                        }

                        exportedPhotoUri
                    } finally {
                        tempMotionPhotoFile.delete()
                        tempProcessedVideoFile?.delete()
                    }
                } else {
                    exportFileToConfiguredPhotoStorage(
                        context = context,
                        destination = exportDestination,
                        collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                        displayName = filename,
                        mimeType = "image/jpeg",
                        sourceFile = tempExportFile
                    )
                }

                uri?.let {
                    // Save exported URI to metadata
                    updateMetadata(context, id) { current ->
                        current.copy(
                            exportedUris = current.exportedUris + uri.toString()
                        )
                    }
                    PLog.d(TAG, "Exported URI saved: $uri for photo $id")

                    if (outputBitmap !== processedBitmap && !outputBitmap.isRecycled) {
                        outputBitmap.recycle()
                    }
                    return@withContext true
                }

                if (outputBitmap !== processedBitmap && !outputBitmap.isRecycled) {
                    outputBitmap.recycle()
                }
                processedBitmap.recycle()
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export photo", e)
            } finally {
                tempExportFile.delete()
            }

            false
        }
    }

    private suspend fun exportBitmapToMediaStore(
        context: Context,
        id: String,
        bitmap: Bitmap,
        metadata: MediaMetadata,
        photoQuality: Int,
        suffix: String?,
        destination: PhotoExportDestination,
    ): Boolean {
        val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
        try {
            val date = metadata.dateTaken ?: System.currentTimeMillis()
            val lutName =
                metadata.lutId?.let { ContentRepository.getInstance(context).lutManager.getLutInfo(it)?.getName() }
            var withSuffix = suffix?.let { "_$it" } ?: ""
            lutName?.let { withSuffix += ".$it" }
            val filename =
                "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(date))}$withSuffix.jpg"

            FileOutputStream(tempExportFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            ExifWriter.writeExif(
                tempExportFile, metadata.toCaptureInfo().copy(
                    imageWidth = bitmap.width,
                    imageHeight = bitmap.height
                )
            )
            val uri = exportFileToConfiguredPhotoStorage(
                context = context,
                destination = destination,
                collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                displayName = filename,
                mimeType = "image/jpeg",
                sourceFile = tempExportFile
            ) ?: return false

            updateMetadata(context, id) { current ->
                current.copy(
                    exportedUris = current.exportedUris + uri.toString()
                )
            }
            PLog.d(TAG, "Exported embedded-gainmap URI saved: $uri for photo $id")
            return true
        } finally {
            tempExportFile.delete()
        }
    }

    suspend fun saveQuickShotBitmapToSystemGallery(
        context: Context,
        metadata: MediaMetadata,
        bitmap: Bitmap,
        photoQuality: Int,
        photoId: String = UUID.randomUUID().toString()
    ): String? = withContext(Dispatchers.IO) {
        val date = metadata.dateTaken ?: System.currentTimeMillis()
        val baseFilename = "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(date))}"
        val photoDir = getPhotoDir(context, photoId, true)
        var exportedUri: Uri? = null
        var tempFile: File? = null
        try {
            val shouldPreferHeic = ContentRepository.getInstance(context)
                .userPreferencesRepository
                .userPreferences
                .firstOrNull()
                ?.useHeicExport ?: false
            val captureInfo = metadata.toCaptureInfo().copy(
                imageWidth = bitmap.width,
                imageHeight = bitmap.height
            )

            var extension = "jpg"
            var mimeType = "image/jpeg"
            var encodedFile: File? = null
            if (shouldPreferHeic) {
                val heicFile = File(context.cacheDir, "temp_quick_shot_${System.nanoTime()}.${HeicExportEncoder.EXTENSION}")
                val exifData = ExifWriter.buildExifBlock(context.cacheDir, captureInfo)
                val heicSaved = exifData != null && HeicExportEncoder.write(
                    bitmap = bitmap,
                    outputFile = heicFile,
                    quality = photoQuality,
                    exifData = exifData
                )
                if (heicSaved) {
                    extension = HeicExportEncoder.EXTENSION
                    mimeType = HeicExportEncoder.MIME_TYPE
                    encodedFile = heicFile
                } else {
                    heicFile.delete()
                    PLog.w(TAG, "Quick-shot HEIC save failed or unsupported, falling back to JPEG")
                }
            }

            if (encodedFile == null) {
                val jpegFile = File(context.cacheDir, "temp_quick_shot_${System.nanoTime()}.jpg")
                FileOutputStream(jpegFile).use { outputStream ->
                    writeFinalJpeg(bitmap, outputStream, photoQuality)
                }
                ExifWriter.writeExif(jpegFile, captureInfo)
                encodedFile = jpegFile
            }
            tempFile = encodedFile
            val filename = "$baseFilename.$extension"

            val destination = resolvePhotoExportDestination(context)
            exportedUri = exportFileToConfiguredPhotoStorage(
                context = context,
                destination = destination,
                collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                displayName = filename,
                mimeType = mimeType,
                sourceFile = encodedFile
            )
            val uri = exportedUri ?: run {
                photoDir.deleteRecursively()
                return@withContext null
            }

            generateThumbnail(bitmap, getThumbnailFile(context, photoId))
            val savedMetadata = metadata.copy(
                mediaType = MediaType.IMAGE,
                sourceUri = uri.toString(),
                exportedUris = emptyList(),
                mimeType = mimeType,
                width = bitmap.width,
                height = bitmap.height,
                captureMode = metadata.captureMode ?: "quick_shot"
            )
            val metadataSaved = saveMetadata(context, photoId, savedMetadata)
            if (!metadataSaved) {
                discardPhotoExportUri(context, uri)
                photoDir.deleteRecursively()
                return@withContext null
            }
            photoDir.setLastModified(date)
            notifyPhotoLibraryChanged()
            PLog.d(
                TAG,
                "Quick-shot bitmap saved directly to system gallery: $uri, photoId=$photoId, mimeType=$mimeType"
            )
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save quick-shot bitmap to system gallery", e)
            exportedUri?.let { discardPhotoExportUri(context, it) }
            photoDir.deleteRecursively()
            null
        } finally {
            tempFile?.delete()
        }
    }

    private suspend fun exportEncodedPhotoToMediaStore(
        context: Context,
        id: String,
        bitmap: Bitmap,
        metadata: MediaMetadata,
        photoQuality: Int,
        baseFilename: String,
        extension: String,
        mimeType: String,
        gainmapResult: GainmapResult? = null,
        destination: PhotoExportDestination,
    ): Boolean {
        val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.$extension")
        try {
            val captureInfo = metadata.toCaptureInfo().copy(
                imageWidth = bitmap.width,
                imageHeight = bitmap.height
            )
            val exifData = if (mimeType == HeicExportEncoder.MIME_TYPE) {
                ExifWriter.buildExifBlock(context.cacheDir, captureInfo) ?: return false
            } else {
                null
            }
            val encoded = when (mimeType) {
                HeicExportEncoder.MIME_TYPE -> HeicExportEncoder.write(
                    bitmap = bitmap,
                    outputFile = tempExportFile,
                    quality = photoQuality,
                    gainmapResult = gainmapResult,
                    exifData = exifData
                )
                else -> false
            }
            if (!encoded) return false

            val filename = "$baseFilename.$extension"
            val uri = exportFileToConfiguredPhotoStorage(
                context = context,
                destination = destination,
                collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                displayName = filename,
                mimeType = mimeType,
                sourceFile = tempExportFile
            ) ?: return false

            updateMetadata(context, id) { current ->
                current.copy(
                    exportedUris = current.exportedUris + uri.toString()
                )
            }
            PLog.d(TAG, "Exported $mimeType URI saved: $uri for photo $id")
            return true
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to export encoded photo as $mimeType", e)
            return false
        } finally {
            tempExportFile.delete()
        }
    }

    suspend fun exportDng(context: Context, photoId: String, data: ByteArray, metadata: MediaMetadata) =
        withContext(Dispatchers.IO) {
            try {
                val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    .format(Date())
                val dngFilename = "PhotonCamera_${timestamp}.dng"
                val destination = resolvePhotoExportDestination(context)
                val uri = exportBytesToConfiguredPhotoStorage(
                    context = context,
                    destination = destination,
                    collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    displayName = dngFilename,
                    mimeType = "image/x-adobe-dng",
                    data = data
                )

                uri?.let {
                    PLog.d(TAG, "DNG exported: $uri")

                    updateMetadata(context, photoId) { current ->
                        current.copy(
                            exportedUris = current.exportedUris + uri.toString()
                        )
                    }
                    PLog.d(TAG, "Exported URI saved: $uri")
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
            }
        }

    suspend fun exportDng(context: Context, photoId: String, sourceFile: File, metadata: MediaMetadata) =
        withContext(Dispatchers.IO) {
            try {
                if (!sourceFile.exists() || sourceFile.length() <= 0L) {
                    PLog.w(TAG, "Skipping DNG export because source file is missing or empty: ${sourceFile.absolutePath}")
                    return@withContext
                }

                val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    .format(Date())
                val dngFilename = "PhotonCamera_${timestamp}.dng"
                val destination = resolvePhotoExportDestination(context)
                val uri = exportFileToConfiguredPhotoStorage(
                    context = context,
                    destination = destination,
                    collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    displayName = dngFilename,
                    mimeType = "image/x-adobe-dng",
                    sourceFile = sourceFile
                )

                uri?.let {
                    PLog.d(TAG, "DNG exported from file: $uri")

                    updateMetadata(context, photoId) { current ->
                        current.copy(
                            exportedUris = current.exportedUris + uri.toString()
                        )
                    }
                    PLog.d(TAG, "Exported URI saved: $uri")
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
            }
        }

    suspend fun preparePhoto(
        context: Context,
        metadata: MediaMetadata,
        captureResult: CaptureResult?,
        thumbnail: Bitmap?,
        useLivePhoto: Boolean,
        superResolutionScale: Float,
        includeCropRegionInOutputSize: Boolean = true,
        photoId: String? = null,
    ) = withContext(Dispatchers.IO) {
        try {
            val photoId = photoId ?: UUID.randomUUID().toString()
            val photoDir = getPhotoDir(context, photoId, true)
            val photoFile = File(photoDir, PHOTO_FILE)
            val videoFile = File(photoDir, VIDEO_FILE)
            val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

            var cropRegion = resolveCaptureCropRegion(
                captureResult = captureResult,
                imageWidth = metadata.width,
                imageHeight = metadata.height
            )
            if (superResolutionScale > 1.0f && cropRegion != null) {
                cropRegion = Rect(
                    (cropRegion.left * superResolutionScale).roundToInt(),
                    (cropRegion.top * superResolutionScale).roundToInt(),
                    (cropRegion.right * superResolutionScale).roundToInt(),
                    (cropRegion.bottom * superResolutionScale).roundToInt()
                )
            }
            if (cropRegion != null && !includeCropRegionInOutputSize) {
                PLog.d(TAG, "Ignoring capture crop region for output sizing: $cropRegion")
            }
            val effectiveCropRegion = cropRegion?.takeIf { includeCropRegionInOutputSize }

            val dimensions =
                BitmapUtils.calculateProcessedRect(
                    metadata.width,
                    metadata.height,
                    metadata.ratio,
                    effectiveCropRegion,
                    metadata.rotation
                )
            val finalWidth = dimensions.width()
            val finalHeight = dimensions.height()
            // 保存元数据
            val metadataWithInfo = metadata.copy(
                width = finalWidth,
                height = finalHeight,
                cropRegion = effectiveCropRegion,
            )
            saveMetadata(context, photoId, metadataWithInfo)

            if (thumbnail != null && !thumbnail.isRecycled) {
                generateThumbnail(thumbnail, thumbnailFile)
                notifyPreparedPhotoThumbnail(photoId)
            } else {
                PLog.d(TAG, "Thumbnail unavailable: $thumbnail")
            }
            photoFile.createNewFile()
            if (useLivePhoto) {
                videoFile.createNewFile()
            }
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare photo", e)
            null
        }
    }

    private fun resolveCaptureCropRegion(
        captureResult: CaptureResult?,
        imageWidth: Int,
        imageHeight: Int
    ): Rect? {
        if (captureResult == null) return null

        val scalerCropRegion = captureResult.get(CaptureResult.SCALER_CROP_REGION)
        val zoomRatio = captureResult.get(CaptureResult.CONTROL_ZOOM_RATIO) ?: 1f
        if (zoomRatio <= 1f) {
            return scalerCropRegion
        }

        // CONTROL_ZOOM_RATIO keeps SCALER_CROP_REGION at active-array size. RAW output still
        // needs an equivalent crop region so the software demosaic path matches the preview FOV.
        val baseRegion = scalerCropRegion ?: Rect(
            0,
            0,
            imageWidth.coerceAtLeast(1),
            imageHeight.coerceAtLeast(1)
        )
        if (baseRegion.width() <= 0 || baseRegion.height() <= 0) return scalerCropRegion

        val cropWidth = (baseRegion.width() / zoomRatio).roundToInt().coerceAtLeast(1)
        val cropHeight = (baseRegion.height() / zoomRatio).roundToInt().coerceAtLeast(1)
        val cropLeft = baseRegion.left + (baseRegion.width() - cropWidth) / 2
        val cropTop = baseRegion.top + (baseRegion.height() - cropHeight) / 2
        return Rect(
            cropLeft,
            cropTop,
            cropLeft + cropWidth,
            cropTop + cropHeight
        )
    }

    private fun resolveRawStatsBounds(
        width: Int,
        height: Int,
        defaultCrop: Rect?,
        cropRegion: Rect?
    ): Rect? {
        val imageBounds = Rect(0, 0, width.coerceAtLeast(1), height.coerceAtLeast(1))
        var resolved: Rect? = null
        listOf(defaultCrop, cropRegion).forEach { candidate ->
            val safeCandidate = sanitizeIntersectingCrop(candidate, imageBounds) ?: return@forEach
            resolved = resolved?.let { current ->
                Rect(current).takeIf { it.intersect(safeCandidate) && !it.isEmpty }
            } ?: safeCandidate
        }
        return resolved?.takeUnless { it.hasSameBounds(imageBounds) }
    }

    private fun sanitizeIntersectingCrop(crop: Rect?, imageBounds: Rect): Rect? {
        if (crop == null || crop.isEmpty || imageBounds.isEmpty) return null
        return Rect(crop).takeIf { it.intersect(imageBounds) && !it.isEmpty }
    }

    private fun Rect.hasSameBounds(other: Rect): Boolean {
        return left == other.left && top == other.top && right == other.right && bottom == other.bottom
    }

    suspend fun saveVideo(
        context: Context,
        photoId: String,
        livePhotoVideoDeferred: Deferred<Pair<File, Long>?>? = null
    ) {
        val photoDir = getPhotoDir(context, photoId, true)
        val videoFile = File(photoDir, VIDEO_FILE)
        val livePhotoResult = livePhotoVideoDeferred?.await()
        livePhotoResult?.first?.let { cacheVideoFile ->
            if (cacheVideoFile.exists()) {
                try {
                    cacheVideoFile.copyTo(videoFile, overwrite = true)
                    cacheVideoFile.delete()

                    // 更新元数据以包含时间戳
                    val currentMeta = loadMetadata(context, photoId) ?: return
                    saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to move video file", e)
                }
                PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
            }
        }
    }

    suspend fun saveBokehPhoto(context: Context, photoId: String, bitmap: Bitmap) = withContext(Dispatchers.IO) {
        val photoDir = getPhotoDir(context, photoId, true)
        val bokehFile = File(photoDir, BOKEH_FILE)
        FileOutputStream(bokehFile).use { outputStream ->
            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
        }
    }

    suspend fun generateBokehPhoto(context: Context, photoId: String, metadata: MediaMetadata, bitmap: Bitmap) {
        val aperture = metadata.computationalAperture ?: 0f
        if (aperture <= 0f) {
            getBokehFile(context, photoId).takeIf { it.exists() }?.delete()
            return
        }
        val focusPointX = metadata.focusPointX
        val focusPointY = metadata.focusPointY
        val bokeh = ContentRepository.getInstance(context).depthBokehProcessor.applyHighQualityBokeh(
            context,
            photoId,
            bitmap,
            focusPointX,
            focusPointY,
            aperture
        )
        saveBokehPhoto(context, photoId, bokeh)
    }

    suspend fun saveYuvPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95
    ) = withContext(Dispatchers.IO) {
        beginHdrWork(photoId)
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            deleteDeprecatedJxlStorage(photoDir)

            val metadata = loadMetadata(context, photoId) ?: return@withContext

            PLog.d(TAG, "saveYuvPhoto: ${metadata.width} ${metadata.height} ${metadata.colorSpace.name}")

            var processedPreview: Bitmap? = null
            val nativeProcessElapsed = measureTimeMillis {
                processedPreview = image.use {
                    YuvProcessor.processAndToBitmap(it.image, aspectRatio, rotation)
                }
            }
            PLog.d(TAG, "saveYuvPhoto processAndToBitmap took ${nativeProcessElapsed}ms, success=${processedPreview != null}")

            var previewBitmap = processedPreview ?: return@withContext

            if (metadata.isMirrored) {
                previewBitmap = BitmapUtils.flipHorizontal(previewBitmap)
            }

            if (metadata.usesNaturalLightToneMap()) {
                val toneMappedPreview = photoProcessor.processCapturePreviewToneMap(previewBitmap, metadata)
                if (toneMappedPreview !== previewBitmap && !previewBitmap.isRecycled) {
                    previewBitmap.recycle()
                }
                previewBitmap = toneMappedPreview
            }
            val originalFile = writeInternalOriginalPhoto(photoDir, previewBitmap, photoQuality) ?: return@withContext
            PLog.d(TAG, "saveYuvPhoto internal original saved=${originalFile.name}")
            generateBokehPhoto(context, photoId, metadata, previewBitmap)
            queueDetailHdrCacheBuild(
                context = context,
                photoId = photoId,
                metadata = metadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue
            )
//                updateThumbnail(context, photoId, photoProcessor, metadata)
            if (shouldAutoSave) {
                exportPhoto(
                    context,
                    photoId,
                    null,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        } finally {
            endHdrWork(photoId)
        }
    }

    suspend fun saveRawPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        thumbnail: Bitmap?,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        exposureBias: Float? = null,
        exportDngWithRawExport: Boolean = false
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val dngFile = File(photoDir, DNG_FILE)
            val tempDngFile = File(photoDir, "temp.dng")
            val tempFile = File(photoDir, "temp.jpg")

            val metadata = loadMetadata(context, photoId)
            if (metadata == null) {
                PLog.e(TAG, "saveRawPhoto aborted: metadata unavailable for $photoId")
                image.close()
                return@withContext
            }

            val resolvedCaptureResult = captureResult
            if (resolvedCaptureResult == null) {
                PLog.e(TAG, "saveRawPhoto aborted: captureResult unavailable for $photoId")
                image.close()
                return@withContext
            }

            var dngSaveAttempted = false
            FileOutputStream(tempDngFile).use { outputStream ->
                image.use {
                    try {
                        dngSaveAttempted = RawProcessor.saveToDng(
                            image,
                            characteristics,
                            resolvedCaptureResult,
                            outputStream,
                            rotation,
                            thumbnail,
                            blackLevelMode = metadata.rawBlackLevelMode,
                            customBlackLevel = metadata.rawCustomBlackLevel,
                            whiteLevelMode = metadata.rawWhiteLevelMode,
                            cfaCorrectionMode = metadata.rawCfaCorrectionMode
                        )
                    } catch (e: Throwable) {
                        PLog.e(TAG, "DNG save failed", e)
                    }
                }
            }
            val dngWritten = dngSaveAttempted && tempDngFile.exists() && tempDngFile.length() > 0L
            if (!dngWritten) {
                tempDngFile.delete()
                return@withContext
            }
            patchSavedDngCorrections(tempDngFile, metadata)
            if (dngFile.exists()) {
                dngFile.delete()
            }
            if (!tempDngFile.renameTo(dngFile)) {
                tempDngFile.copyTo(dngFile, overwrite = true)
                tempDngFile.delete()
            }
            if (shouldAutoSave && exportDngWithRawExport) {
                exportDng(context, photoId, dngFile, metadata)
            }

            var updatedMetadata: MediaMetadata = metadata
            val rawSharpening = updatedMetadata.sharpening ?: RawSharpeningDefaults.forCapture(sharpeningValue)
            val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
            val rawChromaNoiseReduction = resolveChromaNoiseReduction(updatedMetadata, chromaNoiseReductionValue)
            val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
                context,
                dngFile.absolutePath,
                aspectRatio = aspectRatio,
                cropRegion = updatedMetadata.cropRegion,
                rotation = rotation,
                exposureBias = exposureBias ?: 0f,
                rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                rawAutoExposure = resolveRawAutoExposure(context, updatedMetadata),
                rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                sharpeningValue = rawSharpening,
                denoiseValue = rawNoiseReduction,
                chromaDenoiseValue = rawChromaNoiseReduction,
                rawDcpId = updatedMetadata.rawDcpId,
                rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                capturePreviewThumbnail = thumbnail,
                rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                spectralFilmStock = updatedMetadata.spectralFilmStock,
                spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                spectralFilmTuning = SpectralFilmTuning(
                    cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                    mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                    yDensityGain = updatedMetadata.spectralFilmYDensityGain
                ),
                onRawAutoAdjustments = { adjustments ->
                    updatedMetadata = updatedMetadata.withRawAutoAdjustments(adjustments)
                },
                onMetadata = { raw ->
                    updatedMetadata = updatedMetadata.merge(raw)
                }
            ) ?: return@withContext
            var bitmap = rawResult.sdrBitmap

            if (updatedMetadata.isMirrored) {
                bitmap = BitmapUtils.flipHorizontal(bitmap)
            }
            updatedMetadata = updatedMetadata.copy(
                width = bitmap.width,
                height = bitmap.height,
                sharpening = rawSharpening
            )

            FileOutputStream(tempFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            tempFile.renameTo(photoFile)
            saveMetadata(context, photoId, updatedMetadata)
            generateBokehPhoto(context, photoId, updatedMetadata, bitmap)
            val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
                photoProcessor.prepareUltraHdrSourceFromRawResult(
                    context = context,
                    photoId = photoId,
                    rawResult = rawResult,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    applyMirror = true
                )
            } else {
                null
            }
            val preparedGainmapResult = preparedUltraHdrSource?.let { source ->
                var result: GainmapResult? = null
                val gainmapElapsed = measureTimeMillis {
                    result = gainmapProducer.build(source, HdrGainmapStrength.coerce(updatedMetadata.hdrEffectStrength))
                }
                PLog.d(TAG, "saveRawPhoto prepared gainmap for reuse, took=${gainmapElapsed}ms")
                result
            }
            preparedUltraHdrSource?.let {
                PLog.d(TAG, "saveRawPhoto building detail HDR from in-memory RAW result: $photoId")
                buildDetailHdrCache(
                    context = context,
                    photoId = photoId,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    preparedUltraHdrSource = it,
                    preparedGainmapResult = preparedGainmapResult
                )
            }
            updateThumbnail(context, photoId, photoProcessor, updatedMetadata, bitmap)
            if (shouldAutoSave) {
                exportPhoto(
                    context,
                    photoId,
                    bitmap,
                    photoProcessor,
                    updatedMetadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    preparedUltraHdrSource = preparedUltraHdrSource,
                    preparedGainmapResult = preparedGainmapResult
                )
            }
            preparedUltraHdrSource?.hdrReference?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.sdrBase?.let {
                if (it !== bitmap && !it.isRecycled) {
                    it.recycle()
                }
            }
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    /**
     * 保存新拍摄的照片
     *
     * @param context Context
     * @param image 原始 Image (YUV420 或 RAW_SENSOR)
     * @param metadata 编辑元数据（LUT、边框等）
     */
    suspend fun savePhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        thumbnail: Bitmap? = null,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        exposureBias: Float? = null,
        exportDngWithRawExport: Boolean = false
    ) {
        // 根据图像格式处理
        when (val format = image.format) {
            ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                saveYuvPhoto(
                    context,
                    photoId,
                    image,
                    rotation,
                    aspectRatio,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }

            ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                saveRawPhoto(
                    context,
                    photoId,
                    image,
                    thumbnail,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    exposureBias,
                    exportDngWithRawExport
                )
            }

            else -> {
                PLog.e(TAG, "Unsupported image format: $format")
            }
        }
    }

    suspend fun saveBitmapPhoto(
        context: Context,
        photoId: String,
        bitmap: Bitmap,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)
            val photoFile = File(photoDir, PHOTO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val metadata = loadMetadata(context, photoId) ?: return@withContext

            FileOutputStream(tempFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            tempFile.renameTo(photoFile)
//            generateBokehPhoto(context, photoId, metadata, bitmap)
            queueDetailHdrCacheBuild(
                context = context,
                photoId = photoId,
                metadata = metadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue
            )
//            updateThumbnail(context, photoId, photoProcessor, metadata)

            if (shouldAutoSave) {
                exportPhoto(
                    context,
                    photoId,
                    bitmap,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save bitmap photo", e)
        }
    }

    suspend fun saveMultipleExposureFrame(
        context: Context,
        sessionId: String,
        frameIndex: Int,
        image: SafeImage,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldMirror: Boolean,
        photoQuality: Int = 95
    ): File? = withContext(Dispatchers.IO) {
        try {
            val sessionDir = getMultipleExposureSessionDir(context, sessionId, true)
            val frameFile = File(sessionDir, String.format(Locale.US, "frame_%02d.jpg", frameIndex))
            val previewBitmap = image.use {
                YuvProcessor.processAndToBitmap(it.image, aspectRatio, rotation)
            }
            val finalBitmap = if (shouldMirror) {
                BitmapUtils.flipHorizontal(previewBitmap)
            } else {
                previewBitmap
            }
            FileOutputStream(frameFile).use { outputStream ->
                finalBitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
            }
            if (finalBitmap !== previewBitmap) {
                previewBitmap.recycle()
            }
            finalBitmap.recycle()
            frameFile
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save multiple exposure frame", e)
            null
        }
    }

    fun getMultipleExposureFrameFiles(context: Context, sessionId: String): List<File> {
        val dir = getMultipleExposureSessionDir(context, sessionId)
        return dir.listFiles { file ->
            file.isFile && file.name.startsWith("frame_") && file.extension.equals(
                "jpg",
                ignoreCase = true
            )
        }
            ?.sortedBy { it.name }
            ?: emptyList()
    }

    suspend fun composeMultipleExposurePreview(
        context: Context,
        sessionId: String,
        maxEdge: Int = 1440,
        photoQuality: Int = 85
    ): Bitmap? = withContext(Dispatchers.IO) {
        val frameFiles = getMultipleExposureFrameFiles(context, sessionId)
        val result = composeAverageBitmap(frameFiles, maxEdge) ?: return@withContext null
        try {
            FileOutputStream(getMultipleExposurePreviewFile(context, sessionId)).use { outputStream ->
                result.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save multiple exposure preview", e)
        }
        result
    }

    suspend fun composeMultipleExposurePhoto(
        context: Context,
        sessionId: String
    ): Bitmap? = withContext(Dispatchers.IO) {
        composeAverageBitmap(getMultipleExposureFrameFiles(context, sessionId), null)
    }

    private fun buildRawHdrStackCandidates(
        images: List<SafeImage>,
        captureResults: List<CaptureResult?>,
        fallbackResult: CaptureResult,
    ): List<RawHdrStackCandidate> {
        return images.mapIndexed { index, image ->
            val result = captureResults.getOrNull(index) ?: fallbackResult
            RawHdrStackCandidate(
                image = image,
                captureResult = result,
                exposureProduct = rawExposureProduct(result),
                index = index,
            )
        }
    }

    private fun selectRawHdrStackFrames(
        candidates: List<RawHdrStackCandidate>,
    ): Pair<RawHdrStackCandidate, List<RawHdrStackCandidate>>? {
        if (candidates.size < HdrBracketConfig.RAW_REFERENCE_FRAME_COUNT) return null
        val shortCandidate = candidates.minByOrNull { it.exposureProduct } ?: return null
        val normalCandidates = candidates
            .filter { candidate ->
                candidate.index != shortCandidate.index &&
                    candidate.exposureProduct > shortCandidate.exposureProduct * 1.05
            }
            .sortedBy { it.index }
        if (normalCandidates.isEmpty()) return null
        PLog.d(
            TAG,
            "RAW HDR stack frame selection: short=${shortCandidate.index}:${shortCandidate.exposureProduct}, " +
                    "normal=${normalCandidates.joinToString { "${it.index}:${it.exposureProduct}" }}"
        )
        return shortCandidate to normalCandidates
    }

    suspend fun composeHdrBracketPhoto(
        images: List<SafeImage>,
        captureResults: List<CaptureResult?> = emptyList(),
        zeroEvFrameCount: Int = (images.size - 2).coerceAtLeast(1),
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldMirror: Boolean,
        useGpuAcceleration: Boolean = true,
        useSuperResolution: Boolean = false,
        colorSpace: ColorSpace = ColorSpace.get(ColorSpace.Named.SRGB),
    ): Bitmap? = withContext(Dispatchers.IO) {
        if (images.size < 3) {
            images.forEach { it.close() }
            PLog.w(TAG, "HDR bracket composition requires at least 3 images, got ${images.size}")
            return@withContext null
        }

        try {
            if (useSuperResolution) {
                PLog.w(TAG, "HDR bracket Mertens fusion uses 0EV stacking without super resolution")
            }
            if (!useGpuAcceleration) {
                PLog.w(TAG, "HDR bracket YUV alignment/denoise uses GLES stacker; ignoring disabled GPU acceleration setting")
            }
            val frameSelection = buildYuvHdrFrameSelection(
                captureResults = captureResults,
                frameCount = images.size,
            )
            val hdrStackResult = processHdrBracketYuvFrames(
                images = images,
                frameSelection = frameSelection,
                rotation = rotation,
                aspectRatio = aspectRatio,
                shouldMirror = shouldMirror,
                useGpuAcceleration = useGpuAcceleration,
                colorSpace = colorSpace,
            )
            hdrStackResult
        } catch (e: Exception) {
            images.forEach { it.close() }
            PLog.e(TAG, "Failed to compose HDR bracket photo", e)
            null
        }
    }

    private fun buildYuvHdrFrameSelection(
        captureResults: List<CaptureResult?>,
        frameCount: Int,
    ): YuvHdrFrameSelection {
        val measuredProducts = (0 until frameCount).associateWith { index ->
            captureExposureProduct(captureResults.getOrNull(index))
        }
        val measuredValues = measuredProducts.values
            .filterNotNull()
            .filter { it.isFinite() && it > 0f }
        val measuredSpread = if (measuredValues.size >= HDR_BRACKET_FRAME_COUNT) {
            val minProduct = measuredValues.minOrNull() ?: 1f
            val maxProduct = measuredValues.maxOrNull() ?: 1f
            maxProduct / minProduct.coerceAtLeast(1e-6f)
        } else {
            1f
        }
        val useMeasuredProductsForRoles = measuredSpread > HDR_ROLE_MEASURED_PRODUCT_MIN_SPREAD
        val indexedProducts = (0 until frameCount).associateWith { index ->
            measuredProducts[index]
                ?.takeIf { it.isFinite() && it > 0f }
                ?: fallbackHdrExposureProduct(index)
        }
        val roleProducts = (0 until frameCount).associateWith { index ->
            if (useMeasuredProductsForRoles) {
                indexedProducts[index] ?: fallbackHdrExposureProduct(index)
            } else {
                fallbackHdrExposureProduct(index)
            }
        }
        val orderedForRoles = roleProducts.entries.sortedWith(
            compareBy<Map.Entry<Int, Float>> { it.value }.thenBy { it.key }
        )
        val lowIndex = orderedForRoles.firstOrNull()?.key ?: HDR_BRACKET_LOW_INDEX.coerceAtMost(frameCount - 1)
        val highIndex = orderedForRoles
            .asReversed()
            .firstOrNull { it.key != lowIndex }
            ?.key
            ?: HDR_BRACKET_HIGH_INDEX.coerceAtMost(frameCount - 1)
        val sideIndices = setOf(highIndex, lowIndex)
        val zeroIndices = (0 until frameCount)
            .filter { it !in sideIndices }
            .toSet()
            .ifEmpty { setOf(HDR_BRACKET_ZERO_INDEX.coerceAtMost(frameCount - 1)) }
        val zeroProduct = zeroIndices
            .mapNotNull { indexedProducts[it] }
            .takeIf { it.isNotEmpty() }
            ?.average()
            ?.toFloat()
            ?.takeIf { it.isFinite() && it > 0f }
            ?: 1f
        val fusionExposureProducts = floatArrayOf(
            zeroProduct,
            indexedProducts[highIndex]
                ?.takeIf { it.isFinite() && it > 0f }
                ?: zeroProduct * fallbackHdrExposureProduct(HDR_BRACKET_HIGH_INDEX),
            indexedProducts[lowIndex]
                ?.takeIf { it.isFinite() && it > 0f }
                ?: zeroProduct * fallbackHdrExposureProduct(HDR_BRACKET_LOW_INDEX),
        )

        return YuvHdrFrameSelection(
            indexedProducts = indexedProducts,
            zeroIndices = zeroIndices,
            highIndex = highIndex,
            lowIndex = lowIndex,
            fusionExposureProducts = fusionExposureProducts,
        )
    }

    private fun captureExposureProduct(result: CaptureResult?): Float? {
        val exposureTime = result?.get(CaptureResult.SENSOR_EXPOSURE_TIME)
            ?.takeIf { it > 0L }
            ?: return null
        val iso = result.get(CaptureResult.SENSOR_SENSITIVITY)
            ?.takeIf { it > 0 }
            ?: return null
        val product = exposureTime.toDouble() * iso.toDouble()
        return product.toFloat().takeIf { it.isFinite() && it > 0f }
    }

    private fun fallbackHdrExposureProduct(index: Int): Float {
        val sideEv = HdrBracketConfig.YUV_SIDE_EV.toDouble()
        return when {
            index == HDR_BRACKET_HIGH_INDEX -> Math.pow(2.0, sideEv).toFloat()
            index == HDR_BRACKET_LOW_INDEX -> Math.pow(2.0, -sideEv).toFloat()
            else -> 1f
        }
    }

    private fun processHdrBracketYuvFrames(
        images: List<SafeImage>,
        frameSelection: YuvHdrFrameSelection,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldMirror: Boolean,
        useGpuAcceleration: Boolean,
        colorSpace: ColorSpace,
    ): Bitmap {
        val stackResult = MultiFrameStacker.processHdrBurstYuv(
            frames = buildYuvHdrStackFrames(
                images = images,
                frameSelection = frameSelection,
            ),
            fusionExposureProducts = frameSelection.fusionExposureProducts,
            rotation = rotation,
            aspectRatio = aspectRatio,
            useGpuAcceleration = useGpuAcceleration,
            colorSpace = colorSpace,
        ) ?: throw IllegalStateException("Failed to stack and compose aligned HDR YUV frames")

        return mirrorBitmapIfNeeded(stackResult, shouldMirror)
    }

    private fun buildYuvHdrStackFrames(
        images: List<SafeImage>,
        frameSelection: YuvHdrFrameSelection,
    ): List<YuvHdrStackFrame> {
        return images.mapIndexed { index, image ->
            val role = when {
                index == frameSelection.highIndex -> YuvHdrStackFrameRole.HIGH_EV
                index == frameSelection.lowIndex -> YuvHdrStackFrameRole.LOW_EV
                index in frameSelection.zeroIndices -> YuvHdrStackFrameRole.ZERO_EV
                else -> YuvHdrStackFrameRole.ZERO_EV
            }
            YuvHdrStackFrame(
                image = image,
                exposureProduct = frameSelection.indexedProducts[index] ?: 1f,
                role = role,
            )
        }
    }

    private fun mirrorBitmapIfNeeded(bitmap: Bitmap, shouldMirror: Boolean): Bitmap {
        if (!shouldMirror) return bitmap
        return BitmapUtils.flipHorizontal(bitmap).also {
            bitmap.recycle()
        }
    }

    fun removeLastMultipleExposureFrame(context: Context, sessionId: String): Boolean {
        val lastFrame = getMultipleExposureFrameFiles(context, sessionId).lastOrNull() ?: return false
        return runCatching { lastFrame.delete() }.getOrDefault(false)
    }

    fun clearMultipleExposureSession(context: Context, sessionId: String) {
        runCatching {
            deleteEmptyDirs(getMultipleExposureSessionDir(context, sessionId))
            getMultipleExposureSessionDir(context, sessionId).deleteRecursively()
        }.onFailure {
            PLog.e(TAG, "Failed to clear multiple exposure session", it)
        }
    }

    private fun composeAverageBitmap(frameFiles: List<File>, maxEdge: Int?): Bitmap? {
        if (frameFiles.isEmpty()) return null

        val options = BitmapFactory.Options().apply {
            if (maxEdge != null) {
                inJustDecodeBounds = true
                BitmapFactory.decodeFile(frameFiles.first().absolutePath, this)
                val largestEdge = maxOf(outWidth, outHeight).coerceAtLeast(1)
                inSampleSize = if (largestEdge > maxEdge) {
                    Integer.highestOneBit((largestEdge / maxEdge).coerceAtLeast(1))
                } else {
                    1
                }
                inJustDecodeBounds = false
            }
        }

        val firstBitmap = BitmapFactory.decodeFile(frameFiles.first().absolutePath, options) ?: return null
        val width = firstBitmap.width
        val height = firstBitmap.height
        val bufferSize = firstBitmap.byteCount
        val outputBuffer = LargeDirectBuffer.allocate(bufferSize.toLong(), "multiple exposure output")
        if (outputBuffer == null) {
            firstBitmap.recycle()
            return null
        }
        val inputBuffer = LargeDirectBuffer.allocate(bufferSize.toLong(), "multiple exposure input")
        if (inputBuffer == null) {
            firstBitmap.recycle()
            LargeDirectBuffer.free(outputBuffer)
            return null
        }
        try {
            val outputInts = outputBuffer.asIntBuffer()
            val inputInts = inputBuffer.asIntBuffer()
            firstBitmap.copyPixelsToBuffer(outputBuffer)
            firstBitmap.recycle()
            var blendedCount = 1

            frameFiles.drop(1).forEach { file ->
                val bitmap = BitmapFactory.decodeFile(file.absolutePath, options) ?: return@forEach
                if (bitmap.width == width && bitmap.height == height) {
                    inputBuffer.clear()
                    bitmap.copyPixelsToBuffer(inputBuffer)
                    blendAverageInto(outputInts, inputInts, width * height, blendedCount + 1)
                    blendedCount++
                } else {
                    PLog.w(TAG, "Skipping mismatched multiple exposure frame: ${file.name}")
                }
                bitmap.recycle()
            }

            return createBitmap(width, height, Bitmap.Config.ARGB_8888).also { output ->
                outputBuffer.rewind()
                output.copyPixelsFromBuffer(outputBuffer)
            }
        } finally {
            LargeDirectBuffer.free(inputBuffer)
            LargeDirectBuffer.free(outputBuffer)
        }
    }

    private fun blendAverageInto(
        outputInts: IntBuffer,
        inputInts: IntBuffer,
        pixelCount: Int,
        nextFrameIndex: Int
    ) {
        outputInts.rewind()
        inputInts.rewind()
        for (i in 0 until pixelCount) {
            val basePixel = outputInts.get(i)
            val newPixel = inputInts.get(i)

            val baseA = basePixel ushr 24 and 0xFF
            val baseR = basePixel ushr 16 and 0xFF
            val baseG = basePixel ushr 8 and 0xFF
            val baseB = basePixel and 0xFF

            val newA = newPixel ushr 24 and 0xFF
            val newR = newPixel ushr 16 and 0xFF
            val newG = newPixel ushr 8 and 0xFF
            val newB = newPixel and 0xFF

            outputInts.put(
                i,
                Color.argb(
                    baseA + (newA - baseA) / nextFrameIndex,
                    baseR + (newR - baseR) / nextFrameIndex,
                    baseG + (newG - baseG) / nextFrameIndex,
                    baseB + (newB - baseB) / nextFrameIndex
                )
            )
        }
        outputInts.rewind()
        inputInts.rewind()
    }

    suspend fun saveYuvStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useSuperResolution: Boolean = false,
        superResolutionScale: Float = 1.0f,
        useGpuAcceleration: Boolean = true,
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)
            val metadata = loadMetadata(context, photoId) ?: return@withContext

            deleteDeprecatedJxlStorage(photoDir)

            var currentUseSuperResolution = useSuperResolution
            var result = MultiFrameStacker.processBurst(
                images,
                rotation,
                aspectRatio,
                currentUseSuperResolution,
                useGpuAcceleration,
                ColorSpace.get(metadata.colorSpace)
            )

            if (result == null && currentUseSuperResolution && !useGpuAcceleration) {
                PLog.w(TAG, "processBurst failed with SR, retrying without SR")
                currentUseSuperResolution = false
                result = MultiFrameStacker.processBurst(
                    images,
                    rotation,
                    aspectRatio,
                    false,
                    useGpuAcceleration,
                    ColorSpace.get(metadata.colorSpace)
                )
            }

            if (result == null) return@withContext

            if (metadata.isMirrored) {
                result = BitmapUtils.flipHorizontal(result)
            }

            var previewBitmap = result
            if (metadata.usesNaturalLightToneMap()) {
                previewBitmap = photoProcessor.processCapturePreviewToneMap(result, metadata)
            }

            val originalFile = writeInternalOriginalPhoto(photoDir, previewBitmap, photoQuality) ?: return@withContext
            PLog.d(TAG, "saveYuvStackedPhoto internal original saved=${originalFile.name}")
            generateBokehPhoto(context, photoId, metadata, previewBitmap)
            if (previewBitmap !== result && !previewBitmap.isRecycled) {
                previewBitmap.recycle()
            }
            // Auto Save
            if (shouldAutoSave) {
                val metadata = loadMetadata(context, photoId) ?: return@withContext
                val exportBitmap = if (hasHighQualityPhoto(context, photoId)) {
                    null
                } else {
                    PLog.w(TAG, "Internal HEIC unavailable; exporting stacked preview bitmap")
                    result
                }
                exportPhoto(
                    context,
                    photoId,
                    exportBitmap,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
            result.recycle()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    suspend fun saveRawStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useSuperResolution: Boolean = false,
        superResolutionScale: Float = 1.0f,
        useGpuAcceleration: Boolean = true,
        exposureBias: Float? = null,
        exportDngWithRawExport: Boolean = false,
        capturePreviewThumbnail: Bitmap? = null
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val dngFile = File(photoDir, DNG_FILE)
            val tempFile = File(photoDir, "temp.jpg")

            val metadata = loadMetadata(context, photoId) ?: return@withContext

            characteristics ?: return@withContext
            captureResult ?: return@withContext

            val firstImageWidth = images[0].width
            val firstImageHeight = images[0].height

            val rawMetadata = RawMetadata.create(
                firstImageWidth,
                firstImageHeight,
                characteristics,
                captureResult,
                exposureBias,
                RawDemosaicProcessor.getInstance().getRawColorSpace()
            )
            val stackBlackLevel = RawProcessor.resolveBlackLevelForMode(
                defaultBlackLevel = rawMetadata.blackLevel,
                blackLevelMode = metadata.rawBlackLevelMode,
                customBlackLevel = metadata.rawCustomBlackLevel
            )
            if (!rawMetadata.blackLevel.contentEquals(stackBlackLevel)) {
                PLog.d(
                    TAG,
                    "RAW stack black level override mode=${metadata.rawBlackLevelMode} value=${stackBlackLevel.joinToString()}"
                )
            }
            val stackWhiteLevel = RawProcessor.resolveWhiteLevelForMode(
                defaultWhiteLevel = rawMetadata.whiteLevel,
                whiteLevelMode = metadata.rawWhiteLevelMode
            ).toInt()
            if (stackWhiteLevel != rawMetadata.whiteLevel.toInt()) {
                PLog.d(TAG, "RAW stack white level override mode=${metadata.rawWhiteLevelMode} value=$stackWhiteLevel")
            }
            val stackCfaPattern = RawProcessor.resolveCfaPatternForMode(
                defaultCfaPattern = rawMetadata.cfaPattern,
                cfaCorrectionMode = metadata.rawCfaCorrectionMode
            )
            if (stackCfaPattern != rawMetadata.cfaPattern) {
                PLog.d(
                    TAG,
                    "RAW stack CFA override mode=${metadata.rawCfaCorrectionMode} cfa=${rawMetadata.cfaPattern}->$stackCfaPattern"
                )
            }

            var currentUseSuperResolution = useSuperResolution
            var rawStackResult = MultiFrameStacker.processBurstRaw(
                images, stackCfaPattern,
                currentUseSuperResolution,
                superResolutionScale,
                useGpuAcceleration,
                masterBlackLevel = stackBlackLevel,
                whiteLevel = stackWhiteLevel,
                whiteBalanceGains = rawMetadata.whiteBalanceGains,
                noiseModel = rawMetadata.noiseProfile,
                lensShading = null,
                lensShadingWidth = 0,
                lensShadingHeight = 0,
                applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, metadata),
            )

            val finalStackResult = rawStackResult ?: return@withContext

            val stackedMetadata = if (finalStackResult.isNormalizedSensorData) {
                metadata.withNormalizedRawLevelCorrectionsCleared("RAW stack")
            } else {
                metadata
            }
            val fusedBayerBuffer = finalStackResult.fusedBayerBuffer ?: return@withContext
            val dngWritten = try {
                trySaveStackedRawDng(
                    context = context,
                    photoId = photoId,
                    dngFile = dngFile,
                    fusedBayerBuffer = fusedBayerBuffer,
                    width = finalStackResult.width,
                    height = finalStackResult.height,
                    rawMetadata = rawMetadata,
                    stackBlackLevel = finalStackResult.blackLevel,
                    stackWhiteLevel = stackWhiteLevel,
                    isNormalizedSensorData = finalStackResult.isNormalizedSensorData,
                    characteristics = characteristics,
                    captureResult = captureResult,
                    rotation = rotation,
                    thumbnail = null,
                    metadata = stackedMetadata,
                    shouldAutoSave = shouldAutoSave,
                    exportDngWithRawExport = exportDngWithRawExport
                )
            } finally {
                finalStackResult.fusedBayerBuffer = null
                if (finalStackResult.fusedBayerUsesNativeAllocator) {
                    LargeDirectBuffer.free(fusedBayerBuffer)
                    PLog.d(TAG, "Released stacked RAW fused Bayer buffer")
                }
            }
            if (!dngWritten) {
                PLog.e(TAG, "Failed to persist stacked RAW DNG before rendering preview")
                return@withContext
            }
            @Suppress("ExplicitGarbageCollectionCall")
            System.gc()

            var updatedMetadata: MediaMetadata = stackedMetadata
            val rawSharpening = updatedMetadata.sharpening ?: RawSharpeningDefaults.forCapture(sharpeningValue)
            val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
            val rawChromaNoiseReduction = resolveChromaNoiseReduction(updatedMetadata, chromaNoiseReductionValue)
            val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
                context,
                dngFile.absolutePath,
                aspectRatio = aspectRatio,
                cropRegion = updatedMetadata.cropRegion,
                rotation = rotation,
                exposureBias = exposureBias ?: 0f,
                rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                rawAutoExposure = resolveRawAutoExposure(context, updatedMetadata),
                rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                sharpeningValue = rawSharpening,
                denoiseValue = rawNoiseReduction,
                chromaDenoiseValue = rawChromaNoiseReduction,
                rawDcpId = updatedMetadata.rawDcpId,
                rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                capturePreviewThumbnail = capturePreviewThumbnail,
                rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                spectralFilmStock = updatedMetadata.spectralFilmStock,
                spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                spectralFilmTuning = SpectralFilmTuning(
                    cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                    mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                    yDensityGain = updatedMetadata.spectralFilmYDensityGain
                ),
                onRawAutoAdjustments = { adjustments ->
                    updatedMetadata = updatedMetadata.withRawAutoAdjustments(adjustments)
                },
                onMetadata = { raw ->
                    updatedMetadata = updatedMetadata.merge(raw)
                }
            ) ?: return@withContext
            var bitmap = rawResult.sdrBitmap

            if (updatedMetadata.isMirrored) {
                bitmap = BitmapUtils.flipHorizontal(bitmap)
            }
            updatedMetadata = updatedMetadata.copy(
                width = bitmap.width,
                height = bitmap.height,
                sharpening = rawSharpening
            )

            // Save Original (Stacked Result)
            FileOutputStream(tempFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            tempFile.renameTo(photoFile)
            saveMetadata(context, photoId, updatedMetadata)
            generateBokehPhoto(context, photoId, updatedMetadata, bitmap)

            val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
                photoProcessor.prepareUltraHdrSourceFromRawResult(
                    context = context,
                    photoId = photoId,
                    rawResult = rawResult,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    applyMirror = true
                )
            } else {
                null
            }
            val preparedGainmapResult = preparedUltraHdrSource?.let { source ->
                var result: GainmapResult? = null
                val gainmapElapsed = measureTimeMillis {
                    result = gainmapProducer.build(source, HdrGainmapStrength.coerce(updatedMetadata.hdrEffectStrength))
                }
                PLog.d(TAG, "saveRawStackedPhoto prepared gainmap for reuse, took=${gainmapElapsed}ms")
                result
            }
            preparedUltraHdrSource?.let {
                PLog.d(TAG, "saveRawStackedPhoto building detail HDR from in-memory RAW result: $photoId")
                buildDetailHdrCache(
                    context = context,
                    photoId = photoId,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    preparedUltraHdrSource = it,
                    preparedGainmapResult = preparedGainmapResult
                )
            }

            updateThumbnail(context, photoId, photoProcessor, updatedMetadata, bitmap)
            // Auto Save
            if (shouldAutoSave) {
                exportPhoto(
                    context,
                    photoId,
                    bitmap,
                    photoProcessor,
                    updatedMetadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    preparedUltraHdrSource = preparedUltraHdrSource,
                    preparedGainmapResult = preparedGainmapResult
                )
            }
            preparedUltraHdrSource?.hdrReference?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.sdrBase?.let {
                if (it !== bitmap && !it.isRecycled) {
                    it.recycle()
                }
            }
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    suspend fun saveRawHdrBracketPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
        captureResults: List<CaptureResult?>,
        zeroEvFrameCount: Int = (images.size - 2).coerceAtLeast(1),
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics,
        lowExposureCaptureResult: CaptureResult,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useGpuAcceleration: Boolean = true,
        exposureBias: Float? = null,
        exportDngWithRawExport: Boolean = false,
        capturePreviewThumbnail: Bitmap? = null
    ): Boolean = withContext(Dispatchers.IO) {
        var rawHdrStackResult: RawStackResult? = null
        val imagesToClose = images.toMutableSet()

        fun closeImagesNow(targets: Iterable<SafeImage>) {
            targets.forEach { image ->
                if (imagesToClose.remove(image)) {
                    image.close()
                }
            }
        }

        fun closeRemainingImages() {
            val remaining = imagesToClose.toList()
            imagesToClose.clear()
            remaining.forEach { it.close() }
        }

        try {
            if (images.size < HdrBracketConfig.RAW_REFERENCE_FRAME_COUNT) {
                PLog.w(
                    TAG,
                    "RAW HDR bracket requires ${HdrBracketConfig.RAW_REFERENCE_FRAME_COUNT} images, got ${images.size}"
                )
                closeRemainingImages()
                return@withContext false
            }

            val photoDir = getPhotoDir(context, photoId, true)
            val dngFile = File(photoDir, DNG_FILE)
            val metadata = loadMetadata(context, photoId) ?: run {
                closeRemainingImages()
                return@withContext false
            }
            val rawHdrStackSelection = selectRawHdrStackFrames(
                candidates = buildRawHdrStackCandidates(
                    images = images,
                    captureResults = captureResults,
                    fallbackResult = lowExposureCaptureResult,
                )
            ) ?: run {
                PLog.e(TAG, "RAW HDR stack frame selection failed; fallback fusion is disabled")
                closeRemainingImages()
                return@withContext false
            }
            val rawHdrMetadataCandidate = rawHdrStackSelection.first
            val rawMetadataImage = rawHdrMetadataCandidate.image
            val rawMetadataResult = rawHdrMetadataCandidate.captureResult

            val rawMetadata = RawMetadata.create(
                rawMetadataImage.width,
                rawMetadataImage.height,
                characteristics,
                rawMetadataResult,
                exposureBias,
                RawDemosaicProcessor.getInstance().getRawColorSpace()
            )
            val stackBlackLevel = RawProcessor.resolveBlackLevelForMode(
                defaultBlackLevel = rawMetadata.blackLevel,
                blackLevelMode = metadata.rawBlackLevelMode,
                customBlackLevel = metadata.rawCustomBlackLevel
            )
            if (!rawMetadata.blackLevel.contentEquals(stackBlackLevel)) {
                PLog.d(
                    TAG,
                    "RAW HDR black level override mode=${metadata.rawBlackLevelMode} value=${stackBlackLevel.joinToString()}"
                )
            }
            val stackWhiteLevel = RawProcessor.resolveWhiteLevelForMode(
                defaultWhiteLevel = rawMetadata.whiteLevel,
                whiteLevelMode = metadata.rawWhiteLevelMode
            ).toInt()
            if (stackWhiteLevel != rawMetadata.whiteLevel.toInt()) {
                PLog.d(TAG, "RAW HDR white level override mode=${metadata.rawWhiteLevelMode} value=$stackWhiteLevel")
            }
            val stackCfaPattern = RawProcessor.resolveCfaPatternForMode(
                defaultCfaPattern = rawMetadata.cfaPattern,
                cfaCorrectionMode = metadata.rawCfaCorrectionMode
            )
            if (stackCfaPattern != rawMetadata.cfaPattern) {
                PLog.d(
                    TAG,
                    "RAW HDR CFA override mode=${metadata.rawCfaCorrectionMode} cfa=${rawMetadata.cfaPattern}->$stackCfaPattern"
                )
            }

            rawHdrStackSelection.let { (shortCandidate, normalCandidates) ->
                val normalReferenceCandidate = normalCandidates.first()
                if (!useGpuAcceleration) {
                    PLog.w(TAG, "RAW HDR denoise requires GLES stacker; ignoring disabled GPU acceleration setting")
                }
                val rawHdrPgtmStatsBounds = resolveRawStatsBounds(
                    width = rawMetadataImage.width,
                    height = rawMetadataImage.height,
                    defaultCrop = RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                        width = rawMetadataImage.width,
                        height = rawMetadataImage.height,
                        rotation = rotation,
                        rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                        metadataDefaultCrop = rawMetadata.defaultCrop
                    ),
                    cropRegion = metadata.cropRegion
                )
                rawHdrStackResult = MultiFrameStacker.processHdrBurstRaw(
                    shortFrame = RawHdrStackFrame(
                        image = shortCandidate.image,
                        exposureProduct = shortCandidate.exposureProduct,
                    ),
                    normalFrames = normalCandidates.map { candidate ->
                        RawHdrStackFrame(
                            image = candidate.image,
                            exposureProduct = candidate.exposureProduct,
                        )
                    },
                    cfaPattern = stackCfaPattern,
                    useGpuAcceleration = true,
                    masterBlackLevel = stackBlackLevel,
                    whiteLevel = stackWhiteLevel,
                    noiseModel = rawMetadata.noiseProfile,
                    lensShading = null,
                    lensShadingWidth = 0,
                    lensShadingHeight = 0,
                    colorCorrectionMatrix = rawMetadata.colorCorrectionMatrix,
                    pgtmStatsBounds = rawHdrPgtmStatsBounds,
                )
                closeImagesNow(images)

                val stackResult = rawHdrStackResult ?: run {
                    PLog.e(TAG, "Failed to stack RAW HDR short/normal frames")
                    return@withContext false
                }
                val fusedBayerBuffer = stackResult.fusedBayerBuffer ?: return@withContext false
                val rawHdrBaselineExposureEv = calculateRawHdrDngBaselineExposureEv(
                    referenceProduct = normalReferenceCandidate.exposureProduct,
                    baseProduct = shortCandidate.exposureProduct,
                )
                PLog.d(
                    TAG,
                    "RAW HDR stack DNG baseline exposure: ${rawHdrBaselineExposureEv}EV, " +
                            "outputDomain=short, normalReference=${normalReferenceCandidate.exposureProduct}, " +
                            "short=${shortCandidate.exposureProduct}"
                )
                val rawHdrProfileGainTableMap = stackResult.profileGainTableMap
                val stackedMetadata = metadata.withNormalizedRawLevelCorrectionsCleared("RAW HDR stack")
                val stackRawMetadata = rawMetadata.copy(
                    cfaPattern = stackCfaPattern,
                    blackLevel = stackBlackLevel,
                    whiteLevel = stackWhiteLevel.toFloat(),
                )
                val dngWritten = try {
                    trySaveStackedRawDng(
                        context = context,
                        photoId = photoId,
                        dngFile = dngFile,
                        fusedBayerBuffer = fusedBayerBuffer,
                        width = stackResult.width,
                        height = stackResult.height,
                        rawMetadata = stackRawMetadata,
                        stackBlackLevel = stackResult.blackLevel,
                        stackWhiteLevel = stackWhiteLevel,
                        isNormalizedSensorData = true,
                        characteristics = characteristics,
                        captureResult = shortCandidate.captureResult,
                        rotation = rotation,
                        thumbnail = null,
                        metadata = stackedMetadata,
                        shouldAutoSave = shouldAutoSave,
                        exportDngWithRawExport = exportDngWithRawExport,
                        baselineExposureEv = rawHdrBaselineExposureEv,
                        profileGainTableMap = rawHdrProfileGainTableMap,
                    )
                } finally {
                    stackResult.fusedBayerBuffer = null
                    rawHdrStackResult = null
                    if (stackResult.fusedBayerUsesNativeAllocator) {
                        LargeDirectBuffer.free(fusedBayerBuffer)
                        PLog.d(TAG, "Released RAW HDR stacked Bayer buffer")
                    }
                }
                if (!dngWritten) {
                    PLog.e(TAG, "Failed to persist RAW HDR DNG before rendering preview")
                    return@withContext false
                }

                renderRawDngPhotoOutputs(
                    context = context,
                    photoId = photoId,
                    dngFile = dngFile,
                    aspectRatio = aspectRatio,
                    metadata = stackedMetadata,
                    rotation = rotation,
                    exposureBias = exposureBias,
                    photoProcessor = photoProcessor,
                    sharpeningValue = sharpeningValue,
                    noiseReductionValue = noiseReductionValue,
                    chromaNoiseReductionValue = chromaNoiseReductionValue,
                    photoQuality = photoQuality,
                    shouldAutoSave = shouldAutoSave,
                    capturePreviewThumbnail = capturePreviewThumbnail
                )
                PLog.d(TAG, "RAW HDR denoise DNG saved and rendered: $photoId")
                return@withContext true
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save RAW HDR bracket photo", e)
            false
        } finally {
            rawHdrStackResult?.let { stack ->
                val buffer = stack.fusedBayerBuffer
                stack.fusedBayerBuffer = null
                if (stack.fusedBayerUsesNativeAllocator) {
                    LargeDirectBuffer.free(buffer)
                }
            }
            closeRemainingImages()
        }
    }

    private fun MediaMetadata.withNormalizedRawLevelCorrectionsCleared(source: String): MediaMetadata {
        val hasLevelOverride = rawBlackLevelMode != null ||
                rawCustomBlackLevel != null ||
                rawWhiteLevelMode != null
        if (!hasLevelOverride) {
            return this
        }
        PLog.d(
            TAG,
            "$source DNG stores normalized RAW values; clearing metadata black/white level overrides"
        )
        return copy(
            rawBlackLevelMode = null,
            rawCustomBlackLevel = null,
            rawWhiteLevelMode = null
        )
    }

    private fun calculateRawHdrDngBaselineExposureEv(
        referenceProduct: Double,
        baseProduct: Double,
    ): Float {
        if (!referenceProduct.isFinite() || referenceProduct <= 0.0 ||
            !baseProduct.isFinite() || baseProduct <= 0.0
        ) {
            return HdrBracketConfig.RAW_SIDE_EV
        }
        val baselineExposureEv = if (baseProduct < referenceProduct) {
            (ln(referenceProduct / baseProduct) / ln(2.0)).toFloat()
        } else {
            0f
        }.coerceIn(0f, 8f)
        PLog.d(
            TAG,
            "RAW HDR DNG baseline exposure: ${baselineExposureEv}EV, " +
                    "referenceProduct=$referenceProduct, baseProduct=$baseProduct"
        )
        return baselineExposureEv
    }

    private fun rawExposureProduct(captureResult: CaptureResult): Double {
        val iso = captureResult.get(CaptureResult.SENSOR_SENSITIVITY)?.coerceAtLeast(1) ?: 1
        val exposureTime = captureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME)?.coerceAtLeast(1L) ?: 1L
        val postRawBoost = (captureResult.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST) ?: 100)
            .coerceAtLeast(1) / 100.0
        return iso.toDouble() * exposureTime.toDouble() * postRawBoost
    }

    private suspend fun renderRawDngPhotoOutputs(
        context: Context,
        photoId: String,
        dngFile: File,
        aspectRatio: AspectRatio,
        metadata: MediaMetadata,
        rotation: Int,
        exposureBias: Float?,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int,
        shouldAutoSave: Boolean,
        capturePreviewThumbnail: Bitmap? = null,
    ) {
        val photoDir = getPhotoDir(context, photoId, true)
        val photoFile = File(photoDir, PHOTO_FILE)
        val tempFile = File(photoDir, "temp.jpg")
        var updatedMetadata: MediaMetadata = metadata.withEmbeddedDngGooglePixelToneMapDefaults(dngFile)
        val rawSharpening = updatedMetadata.sharpening ?: RawSharpeningDefaults.forCapture(sharpeningValue)
        val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
        val rawChromaNoiseReduction = resolveChromaNoiseReduction(updatedMetadata, chromaNoiseReductionValue)
        val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
            context,
            dngFile.absolutePath,
            aspectRatio = aspectRatio,
            cropRegion = updatedMetadata.cropRegion,
            rotation = rotation,
            exposureBias = exposureBias ?: 0f,
            rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
            rawAutoExposure = resolveRawAutoExposure(context, updatedMetadata),
            rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
            rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
            applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
            rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
            rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
            rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
            sharpeningValue = rawSharpening,
            denoiseValue = rawNoiseReduction,
            chromaDenoiseValue = rawChromaNoiseReduction,
            rawDcpId = updatedMetadata.rawDcpId,
            rawRenderingEngine = updatedMetadata.rawRenderingEngine,
            rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
            rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
            capturePreviewThumbnail = capturePreviewThumbnail,
            rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
            spectralFilmStock = updatedMetadata.spectralFilmStock,
            spectralFilmPrint = updatedMetadata.spectralFilmPrint,
            spectralFilmTuning = SpectralFilmTuning(
                cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                yDensityGain = updatedMetadata.spectralFilmYDensityGain
            ),
            onRawAutoAdjustments = { adjustments ->
                updatedMetadata = updatedMetadata.withRawAutoAdjustments(adjustments)
            },
            onMetadata = { raw ->
                updatedMetadata = updatedMetadata.merge(raw)
            }
        ) ?: return
        var bitmap = rawResult.sdrBitmap

        if (updatedMetadata.isMirrored) {
            bitmap = BitmapUtils.flipHorizontal(bitmap)
        }
        updatedMetadata = updatedMetadata.copy(
            width = bitmap.width,
            height = bitmap.height,
            sharpening = rawSharpening
        )

        FileOutputStream(tempFile).use { outputStream ->
            writeFinalJpeg(bitmap, outputStream, photoQuality)
        }
        tempFile.renameTo(photoFile)
        saveMetadata(context, photoId, updatedMetadata)
        generateBokehPhoto(context, photoId, updatedMetadata, bitmap)

        val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
            photoProcessor.prepareUltraHdrSourceFromRawResult(
                context = context,
                photoId = photoId,
                rawResult = rawResult,
                metadata = updatedMetadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                applyMirror = true
            )
        } else {
            null
        }
        val preparedGainmapResult = preparedUltraHdrSource?.let { source ->
            var result: GainmapResult? = null
            val gainmapElapsed = measureTimeMillis {
                result = gainmapProducer.build(source, HdrGainmapStrength.coerce(updatedMetadata.hdrEffectStrength))
            }
            PLog.d(TAG, "renderRawDngPhotoOutputs prepared gainmap for reuse, took=${gainmapElapsed}ms")
            result
        }
        preparedUltraHdrSource?.let {
            PLog.d(TAG, "renderRawDngPhotoOutputs building detail HDR from in-memory RAW result: $photoId")
            buildDetailHdrCache(
                context = context,
                photoId = photoId,
                metadata = updatedMetadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                preparedUltraHdrSource = it,
                preparedGainmapResult = preparedGainmapResult
            )
        }

        updateThumbnail(context, photoId, photoProcessor, updatedMetadata, bitmap)
        if (shouldAutoSave) {
            exportPhoto(
                context,
                photoId,
                bitmap,
                photoProcessor,
                updatedMetadata,
                sharpeningValue,
                noiseReductionValue,
                chromaNoiseReductionValue,
                photoQuality,
                preparedUltraHdrSource = preparedUltraHdrSource,
                preparedGainmapResult = preparedGainmapResult
            )
        }
        preparedUltraHdrSource?.hdrReference?.bitmap?.let {
            if (!it.isRecycled) {
                it.recycle()
            }
        }
        preparedUltraHdrSource?.sdrBase?.let {
            if (it !== bitmap && !it.isRecycled) {
                it.recycle()
            }
        }
        if (!bitmap.isRecycled) {
            bitmap.recycle()
        }
    }

    private suspend fun trySaveStackedRawDng(
        context: Context,
        photoId: String,
        dngFile: File,
        fusedBayerBuffer: ByteBuffer,
        width: Int,
        height: Int,
        rawMetadata: RawMetadata,
        stackBlackLevel: FloatArray,
        stackWhiteLevel: Int,
        isNormalizedSensorData: Boolean,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        rotation: Int,
        thumbnail: Bitmap?,
        metadata: MediaMetadata,
        shouldAutoSave: Boolean,
        exportDngWithRawExport: Boolean,
        baselineExposureEv: Float = 0f,
        profileGainTableMap: DngProfileGainTableMap? = null,
        imageLayout: SuperResolutionDngWriter.ImageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
        compression: SuperResolutionDngWriter.Compression = SuperResolutionDngWriter.Compression.UNCOMPRESSED,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
    ): Boolean {
        val tempDngFile = File(dngFile.parentFile, "temp_stacked.dng")
        val dngWritten = try {
            FileOutputStream(tempDngFile).use { outputStream ->
                RawProcessor.saveRawBufferToDng(
                    rawBuffer = fusedBayerBuffer,
                    width = width,
                    height = height,
                    characteristics = characteristics,
                    captureResult = captureResult,
                    outputStream = outputStream,
                    rotation = rotation,
                    thumbnail = thumbnail,
                    cfaPattern = rawMetadata.cfaPattern,
                    blackLevel = stackBlackLevel,
                    whiteLevel = stackWhiteLevel,
                    valueDomain = if (isNormalizedSensorData) {
                        RawProcessor.RawBufferValueDomain.NORMALIZED_SENSOR_RANGE
                    } else {
                        RawProcessor.RawBufferValueDomain.SENSOR
                    },
                    customWriter = true,
                    blackLevelMode = null,
                    customBlackLevel = null,
                    cfaCorrectionMode = metadata.rawCfaCorrectionMode,
                    baselineExposureEv = baselineExposureEv,
                    profileGainTableMap = profileGainTableMap,
                    imageLayout = imageLayout,
                    compression = compression,
                    inputRowStepSamples = inputRowStepSamples,
                    inputColStepSamples = inputColStepSamples,
                )
            }
        } catch (e: Throwable) {
            PLog.w(TAG, "Failed to build stacked RAW DNG, ignoring", e)
            false
        }

        if (!dngWritten || !tempDngFile.exists() || tempDngFile.length() <= 0L) {
            tempDngFile.delete()
            return false
        }
        try {
            if (dngFile.exists()) {
                dngFile.delete()
            }
            if (!tempDngFile.renameTo(dngFile)) {
                tempDngFile.copyTo(dngFile, overwrite = true)
                tempDngFile.delete()
            }
        } catch (e: Exception) {
            tempDngFile.delete()
            if (dngFile.exists()) {
                dngFile.delete()
            }
            PLog.w(TAG, "Failed to persist stacked RAW DNG, ignoring", e)
            return false
        }

        if (shouldAutoSave && exportDngWithRawExport) {
            exportDng(context, photoId, dngFile, metadata)
        }

        return true
    }

    fun patchDngCorrections(context: Context, photoId: String, metadata: MediaMetadata): Boolean {
        val dngFile = getDngFile(context, photoId)
        if (!dngFile.exists() || dngFile.length() <= 0L) {
            return false
        }
        return patchSavedDngCorrections(dngFile, metadata)
    }

    private fun patchSavedDngCorrections(dngFile: File, metadata: MediaMetadata): Boolean {
        val patched = DngBlackLevelPatcher.patchFromMode(
            file = dngFile,
            mode = metadata.rawBlackLevelMode,
            customBlackLevel = metadata.rawCustomBlackLevel
        )
        if (patched) {
            PLog.d(TAG, "Applied DNG BlackLevel correction (${metadata.rawBlackLevelMode}) to ${dngFile.name}")
        }
        val cfaPatched = DngCfaPatternPatcher.patchFromMode(
            file = dngFile,
            mode = metadata.rawCfaCorrectionMode
        )
        if (cfaPatched) {
            PLog.d(TAG, "Applied DNG CFA correction (${metadata.rawCfaCorrectionMode}) to ${dngFile.name}")
        }
        return patched || cfaPatched
    }


    /**
     * 保存堆栈合成后的照片
     */
    suspend fun saveStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useSuperResolution: Boolean = false,
        superResolutionScale: Float = 1.0f,
        useGpuAcceleration: Boolean = true,
        exposureBias: Float? = null,
        exportDngWithRawExport: Boolean = false,
        capturePreviewThumbnail: Bitmap? = null
    ) = withContext(Dispatchers.IO) {
        when (val format = images[0].format) {
            ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                saveYuvStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    useSuperResolution,
                    superResolutionScale,
                    useGpuAcceleration
                )
            }

            ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                saveRawStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    useSuperResolution,
                    superResolutionScale,
                    useGpuAcceleration,
                    exposureBias,
                    exportDngWithRawExport,
                    capturePreviewThumbnail
                )
            }

            else -> {
                PLog.e(TAG, "Unsupported image format: $format")
                return@withContext null
            }
        }
    }

    /**
     * 保存连拍照片
     */
    suspend fun saveBurstPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        photoQuality: Int = 95
    ) {
        val photoDir = getPhotoDir(context, photoId, true)
        val mainPhotoFile = File(photoDir, PHOTO_FILE)
        val burstDir = File(photoDir, BURST_DIR)
        if (!burstDir.exists()) {
            burstDir.mkdirs()
        }
        try {
            val photoFile = File(burstDir, System.currentTimeMillis().toString() + ".jpg")

            val metadata = loadMetadata(context, photoId) ?: return
            val sharpeningValue = metadata.sharpening ?: 0f
            val noiseReductionValue = metadata.noiseReduction ?: 0f
            val chromaNoiseReductionValue = metadata.chromaNoiseReduction ?: 0f

            val saved = image.use {
                YuvProcessor.processAndSave(
                    image, metadata.rotation, photoFile.absolutePath
                )
            }
            if (!saved || !photoFile.exists()) {
                PLog.e(TAG, "YuvProcessor failed to process and save burst photo for $photoId")
                return
            }
            if (!mainPhotoFile.exists() || mainPhotoFile.length() == 0L) {
                processingScope.launch {
                    try {
                        if (photoFile.exists()) {
                            photoFile.copyTo(mainPhotoFile, overwrite = true)
                            if (shouldAutoSave) {
                                exportPhoto(
                                    context,
                                    photoId,
                                    null,
                                    photoProcessor,
                                    metadata,
                                    sharpeningValue,
                                    noiseReductionValue,
                                    chromaNoiseReductionValue,
                                    photoQuality
                                )
                            }
                        } else {
                            PLog.e(TAG, "Burst photo file does not exist during copy: ${photoFile.absolutePath}")
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to copy burst photo asynchronously", e)
                    }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    suspend fun saveBitmapBurstPhoto(
        context: Context,
        photoId: String,
        bitmap: Bitmap,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95
    ) = withContext(Dispatchers.IO) {
        val photoDir = getPhotoDir(context, photoId, true)
        val mainPhotoFile = File(photoDir, PHOTO_FILE)
        val burstDir = File(photoDir, BURST_DIR)
        if (!burstDir.exists()) {
            burstDir.mkdirs()
        }
        try {
            val photoFile = File(burstDir, System.currentTimeMillis().toString() + ".jpg")
            val metadata = loadMetadata(context, photoId) ?: return@withContext

            FileOutputStream(photoFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }

            if (!mainPhotoFile.exists() || mainPhotoFile.length() == 0L) {
                FileOutputStream(mainPhotoFile).use { outputStream ->
                    writeFinalJpeg(bitmap, outputStream, photoQuality)
                }
                if (shouldAutoSave) {
                    exportPhoto(
                        context,
                        photoId,
                        bitmap,
                        photoProcessor,
                        metadata,
                        sharpeningValue,
                        noiseReductionValue,
                        chromaNoiseReductionValue,
                        photoQuality
                    )
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save bitmap burst photo", e)
        }
    }

    /**
     * 获取指定照片的连拍照片文件列表
     */
    fun getBurstPhotos(context: Context, photoId: String): List<File> {
        val burstDir = File(getPhotoDir(context, photoId), BURST_DIR)
        return if (burstDir.exists()) {
            burstDir.listFiles()?.toList()?.sortedBy { it.lastModified() } ?: emptyList()
        } else {
            emptyList()
        }
    }

    /**
     * 将连拍照片设为主图并重新生成缩略图
     */
    suspend fun setMainBurstPhoto(context: Context, photoId: String, burstFile: File): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val photoDir = getPhotoDir(context, photoId, true)
                val mainPhotoFile = File(photoDir, PHOTO_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (burstFile.exists()) {
                    burstFile.copyTo(mainPhotoFile, overwrite = true)
                    generateThumbnail(burstFile, thumbnailFile)
                    true
                } else {
                    false
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to set main burst photo", e)
                false
            }
        }
    }

    /**
     * 检查是否有连拍照片
     */
    fun hasBurstPhotos(context: Context, photoId: String): Boolean {
        val burstDir = File(getPhotoDir(context, photoId), BURST_DIR)
        return burstDir.exists() && (burstDir.listFiles()?.isNotEmpty() == true)
    }

    /**
     * 生成 512 缩略图
     */
    private suspend fun generateThumbnail(bitmap: Bitmap, targetFile: File) {
        withContext(Dispatchers.IO) {
            try {
                // 生成适合预览和 widget 的小尺寸缩略图
                val thumbnail = createScaledThumbnail(bitmap, THUMBNAIL_MAX_EDGE)
                FileOutputStream(targetFile).use { out ->
                    thumbnail.compress(Bitmap.CompressFormat.JPEG, 80, out)
                }
                if (thumbnail != bitmap) {
                    thumbnail.recycle()
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to generate thumbnail", e)
            }
        }
    }

    /**
     * 生成缩略图
     */
    private fun generateThumbnail(sourceFile: File, targetFile: File) {
        try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(sourceFile.absolutePath, options)

            // 计算缩放比例，缩略图大小不超过 THUMBNAIL_MAX_EDGE
            val targetSize = THUMBNAIL_MAX_EDGE
            options.inSampleSize = calculateInSampleSize(options, targetSize, targetSize)
            options.inJustDecodeBounds = false

            val bitmap = BitmapFactory.decodeFile(sourceFile.absolutePath, options)

            if (bitmap != null) {
                FileOutputStream(targetFile).use { out ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 80, out)
                }
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to generate thumbnail", e)
        }
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

    /**
     * 获取所有照片 ID 列表（按时间降序）
     */
    fun getPhotoIds(context: Context): List<String> {
        return runBlocking {
            GalleryMediaStore.getPhotoIds(context)
        }
    }

    /**
     * 为直接传入的系统 URI 创建删除请求（用于 Android 11+）
     */
    fun createSystemDeleteRequest(context: Context, uri: Uri): PendingIntent? {
        if (uri.scheme != "content") {
            PLog.w(TAG, "createSystemDeleteRequest: URI scheme must be content, but was ${uri.scheme}")
            return null
        }
        return try {
            MediaStore.createDeleteRequest(context.contentResolver, listOf(uri))
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create system delete request for $uri", e)
            null
        }
    }

    private fun isMediaStoreItemUri(uri: Uri): Boolean {
        if (uri.scheme != "content" || uri.authority != MediaStore.AUTHORITY) return false
        return runCatching {
            ContentUris.parseId(uri)
            true
        }.getOrDefault(false)
    }

    private fun deleteDocumentExportUri(context: Context, uri: Uri): Boolean {
        return runCatching {
            DocumentsContract.deleteDocument(context.contentResolver, uri)
        }.onSuccess { deleted ->
            if (deleted) {
                PLog.d(TAG, "Deleted exported document URI: $uri")
            } else {
                PLog.w(TAG, "Document provider refused to delete exported URI: $uri")
            }
        }.onFailure { e ->
            PLog.e(TAG, "Failed to delete exported document URI: $uri", e)
        }.getOrDefault(false)
    }

    private fun collectExportedDeleteUriStrings(metadata: MediaMetadata?): List<String> {
        return buildList {
            addAll(metadata?.exportedUris ?: emptyList())
            val sourceUri = metadata?.sourceUri
            val shouldDeleteSourceUri = metadata != null &&
                !metadata.isImported &&
                !sourceUri.isNullOrBlank() &&
                (metadata.mediaType == MediaType.VIDEO || metadata.captureMode == "quick_shot")
            if (shouldDeleteSourceUri) {
                add(sourceUri)
            }
        }
    }

    private fun parseDeleteUris(uriStrings: Collection<String>, logContext: String): List<Uri> {
        return uriStrings.mapNotNull { uriString ->
            try {
                Uri.parse(uriString)
            } catch (e: Exception) {
                PLog.e(TAG, "Invalid delete URI for $logContext: $uriString", e)
                null
            }
        }
    }

    private fun deleteDocumentExportUris(
        context: Context,
        uris: Collection<Uri>,
        logContext: String
    ): Int {
        var deletedCount = 0
        uris.distinctBy { it.toString() }.forEach { uri ->
            if (uri.scheme == "content" &&
                !isMediaStoreItemUri(uri) &&
                DocumentsContract.isDocumentUri(context, uri)
            ) {
                if (deleteDocumentExportUri(context, uri)) {
                    deletedCount++
                }
            }
        }
        if (deletedCount > 0) {
            PLog.d(TAG, "Deleted $deletedCount exported document URIs for $logContext")
        }
        return deletedCount
    }

    private fun createMediaStoreDeleteRequest(
        context: Context,
        uris: Collection<Uri>,
        logContext: String
    ): PendingIntent? {
        if (uris.isEmpty()) return null

        val mediaStoreUris = mutableListOf<Uri>()
        uris.distinctBy { it.toString() }.forEach { uri ->
            when {
                isMediaStoreItemUri(uri) -> mediaStoreUris.add(uri)
                uri.scheme == "content" && DocumentsContract.isDocumentUri(context, uri) -> {
                    PLog.d(TAG, "Skipping document URI in MediaStore delete request for $logContext: $uri")
                }
                uri.scheme == "content" -> {
                    PLog.w(TAG, "Ignoring non-MediaStore delete URI for $logContext: $uri")
                }
                else -> {
                    PLog.w(TAG, "Ignoring non-content delete URI for $logContext: $uri")
                }
            }
        }

        if (mediaStoreUris.isEmpty()) {
            return null
        }

        return try {
            MediaStore.createDeleteRequest(context.contentResolver, mediaStoreUris)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create MediaStore delete request for $logContext", e)
            null
        }
    }

    fun createDeleteRequest(context: Context, uris: Collection<Uri>): PendingIntent? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
            PLog.w(TAG, "createDeleteRequest requires Android 11+")
            return null
        }
        return createMediaStoreDeleteRequest(context, uris, "exported media")
    }

    suspend fun deleteExportedDocumentUris(context: Context, photoId: String): Int {
        return withContext(Dispatchers.IO) {
            val metadata = loadMetadata(context, photoId)
            val uris = parseDeleteUris(collectExportedDeleteUriStrings(metadata), "photo: $photoId")
            deleteDocumentExportUris(context, uris, "photo: $photoId")
        }
    }

    /**
     * 创建删除系统相册照片的请求（弹出确认对话框）
     *
     * 仅适用于 Android 11+ (API 30+)
     * 返回 PendingIntent，需要在 Activity 中通过 startIntentSenderForResult 启动
     */
    fun createDeleteRequest(context: Context, photoId: String): PendingIntent? {
        return try {
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                PLog.w(TAG, "createDeleteRequest requires Android 11+")
                return null
            }

            // 加载元数据，获取导出的 URI 列表（使用 runBlocking 同步调用）
            val metadata = runBlocking {
                loadMetadata(context, photoId)
            }
            val exportedUris = collectExportedDeleteUriStrings(metadata)

            if (exportedUris.isEmpty()) {
                PLog.d(TAG, "No exported URIs to delete for photo: $photoId")
                return null
            }

            // 将字符串 URI 转换为 Uri 对象列表，并过滤非法 URI
            val uriList = parseDeleteUris(exportedUris, "photo: $photoId")

            if (uriList.isEmpty()) {
                return null
            }

            // 创建删除请求（会弹出系统确认对话框）
            createMediaStoreDeleteRequest(context, uriList, "photo: $photoId")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create delete request for photo: $photoId", e)
            null
        }
    }

    /**
     * 删除照片及其所有相关文件
     */
    suspend fun deletePhoto(
        context: Context,
        photoId: String
    ): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val photoDir = getPhotoDir(context, photoId)
                if (photoDir.exists()) {
                    photoDir.deleteRecursively()
                }
                GalleryMediaStore.deleteMedia(context, photoId)
                PLog.d(TAG, "Photo deleted: $photoId")
                deleteEmptyDirs(getPhotosBaseDir(context))
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to delete photo: $photoId", e)
                false
            }
        }
    }

    fun deleteEmptyDirs(root: File) {
        if (!root.exists() || !root.isDirectory) return
        root.walkBottomUp().forEach { file ->
            if (file.isDirectory && file != root) {
                val contents = file.listFiles()
                if (contents != null && contents.isEmpty()) {
                    val deleted = file.delete()
                    if (deleted) {
                        // PLog.d(TAG, "已清理空文件夹: ${file.absolutePath}")
                    } else {
                        PLog.e(TAG, "无法删除文件夹 (可能权限不足): ${file.absolutePath}")
                    }
                }
            }
        }
    }

    /**
     * 仅删除应用内部的照片，不删除系统相册中的导出照片
     */
    suspend fun deletePhotoOnly(context: Context, photoId: String): Boolean {
        return deletePhoto(context, photoId)
    }

    /**
     * 加载元数据
     */
    suspend fun loadMetadata(context: Context, photoId: String): MediaMetadata? {
        return metadataMutex.withLock {
            loadMetadataInternal(context, photoId)
        }
    }

    private suspend fun loadMetadataInternal(context: Context, photoId: String): MediaMetadata? {
        return GalleryMediaStore.loadMetadata(context, photoId)
    }

    /**
     * 保存元数据
     */
    suspend fun saveMetadata(context: Context, photoId: String, metadata: MediaMetadata): Boolean {
        return metadataMutex.withLock {
            saveMetadataInternal(context, photoId, metadata).also { saved ->
                if (saved) notifyPhotoMetadataUpdated(photoId, metadata)
            }
        }
    }

    private suspend fun saveMetadataInternal(context: Context, photoId: String, metadata: MediaMetadata): Boolean {
        getPhotoDir(context, photoId, true)
        return GalleryMediaStore.saveMetadata(context, photoId, metadata)
    }

    /**
     * 扫描 App 私有照片目录，将文件存在但数据库缺失的记录补回图库数据库。
     *
     * 这是开发期维护入口：不覆盖已有数据库记录，只为缺失的 photoId 重建最小可用元数据。
     */
    suspend fun recoverPrivatePhotoDirectoryToDatabase(context: Context): PhotoDirectoryRecoveryResult {
        return PrivatePhotoDirectoryRecovery.recover(context)
    }

    /**
     * 原子地更新元数据
     */
    suspend fun updateMetadata(
        context: Context,
        photoId: String,
        update: (MediaMetadata) -> MediaMetadata
    ): MediaMetadata? {
        return metadataMutex.withLock {
            GalleryMediaStore.updateMetadata(context, photoId, update).also { updated ->
                if (updated != null) notifyPhotoMetadataUpdated(photoId, updated)
            }
        }
    }

    suspend fun recordVideoCapture(
        context: Context,
        uri: Uri,
        photoId: String = UUID.randomUUID().toString()
    ): String? = withContext(Dispatchers.IO) {
        val info = readVideoRecordInfo(context, uri) ?: return@withContext null
        val metadata = MediaMetadata(
            mediaType = MediaType.VIDEO,
            dateTaken = info.dateTaken,
            width = info.width,
            height = info.height,
            sourceUri = uri.toString(),
            mimeType = info.mimeType,
            durationMs = info.durationMs,
            frameRate = info.frameRate,
            bitrate = info.bitrate,
            rotationDegrees = info.rotationDegrees,
            hasAudio = info.hasAudio,
            videoWidth = info.width,
            videoHeight = info.height,
            captureMode = "video"
        )
        val dir = getPhotoDir(context, photoId, true)
        val thumbnailSaved = saveVideoThumbnail(context, uri, getThumbnailFile(context, photoId))
        if (!thumbnailSaved) {
            PLog.w(TAG, "Video thumbnail not generated for $uri")
        }
        val metadataSaved = saveMetadata(context, photoId, metadata)
        if (!metadataSaved) {
            dir.deleteRecursively()
            return@withContext null
        }
        dir.setLastModified(info.dateTaken)
        notifyPhotoLibraryChanged()
        photoId
    }

    fun loadBitmap(context: Context, photoId: String, maxEdge: Int? = null, preserveHdr: Boolean = false): Bitmap? {
        val bokehFile = getBokehFile(context, photoId)
        if (bokehFile.exists()) {
            return loadBitmap(context, Uri.fromFile(bokehFile), maxEdge, preserveHdr)
        }
        val originalFile = getOriginalImageFile(context, photoId)
        if (originalFile != null) {
            return loadBitmap(context, Uri.fromFile(originalFile), maxEdge, preserveHdr)
        }
        val thumbnailFile = getThumbnailFile(context, photoId)
        if (thumbnailFile.exists()) {
            return loadBitmap(context, Uri.fromFile(thumbnailFile), maxEdge, preserveHdr)
        }
        return null
    }

    fun loadOriginalBitmap(
        context: Context,
        photoId: String,
        maxEdge: Int? = null,
        preserveHdr: Boolean = false
    ): Bitmap? {
        val highQualityFile = getHighQualityPhotoFile(context, photoId)
        if (highQualityFile.exists() && highQualityFile.length() > 0L) {
            loadBitmap(context, Uri.fromFile(highQualityFile), maxEdge, preserveHdr)?.let { return it }
            PLog.w(TAG, "Failed to decode internal HEIC, falling back to JPEG for $photoId")
        }
        val photoFile = getPhotoFile(context, photoId)
        if (!photoFile.exists() || photoFile.length() <= 0L) {
            return null
        }
        return loadBitmap(context, Uri.fromFile(photoFile), maxEdge, preserveHdr)
    }

    suspend fun updateThumbnail(
        context: Context,
        photoId: String,
        photoProcessor: PhotoProcessor,
        metadata: MediaMetadata? = null,
        inputBitmap: Bitmap? = null
    ) {
        withContext(Dispatchers.IO) {
            try {
                val resolvedMetadata = metadata ?: loadMetadata(context, photoId) ?: return@withContext
                // Use provided bitmap or load from disk if unavailable
                val originalBitmap = inputBitmap?.let { 
                    createScaledThumbnail(it, THUMBNAIL_MAX_EDGE) 
                } ?: loadOriginalBitmap(context, photoId, maxEdge = THUMBNAIL_MAX_EDGE)
                  ?: loadBitmap(context, photoId, maxEdge = THUMBNAIL_MAX_EDGE)
                  ?: return@withContext

                // 应用所有效果（LUT、虚化、裁切、边框等）到缩略图尺寸的位图
                val thumbnailMetadata = resolvedMetadata.copy(
                    noiseReduction = 0f,
                    chromaNoiseReduction = 0f
                )
                val processedBitmap = photoProcessor.processBitmap(
                    context = context,
                    photoId = photoId,
                    input = originalBitmap,
                    metadata = thumbnailMetadata,
                    sharpening = 0f,
                    noiseReduction = 0f,
                    chromaNoiseReduction = 0f,
                    useComputationalAperture = false
                )

                val thumbnailFile = getThumbnailFile(context, photoId)
                generateThumbnail(processedBitmap, thumbnailFile)
                notifyPhotoThumbnailUpdated(photoId)

                if (processedBitmap !== originalBitmap) {
                    processedBitmap.recycle()
                }
                // Only recycle originalBitmap if it was newly loaded or scaled
                if (originalBitmap !== inputBitmap) {
                    originalBitmap.recycle()
                }
                PLog.d(TAG, "Thumbnail updated for photo: $photoId")
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to update thumbnail for photo: $photoId", e)
            }
        }
    }

    fun loadBitmap(context: Context, uri: Uri, maxEdge: Int? = null, preserveHdr: Boolean = false): Bitmap? {
        var infoSize: android.util.Size? = null
        var infoMimeType: String? = null
        val source = ImageDecoder.createSource(context.contentResolver, uri)

        val bitmap = runCatching {
            ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                if (preserveHdr) {
                    decoder.allocator = ImageDecoder.ALLOCATOR_HARDWARE
                } else {
                    decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
                }
                // 记录原始信息
                infoSize = info.size
                infoMimeType = info.mimeType

                if (maxEdge != null) {
                    val width = info.size.width
                    val height = info.size.height

                    if (width > maxEdge || height > maxEdge) {
                        val scale = maxEdge.toFloat() / maxOf(width, height)
                        decoder.setTargetSize((width * scale).toInt(), (height * scale).toInt())
                    }
                }
            }
        }.getOrNull() ?: return null
        val decodedBitmap = bitmap.ensurePreviewCompatibleConfig(preserveHdr)
        val isDng = infoMimeType?.contains("dng", ignoreCase = true) == true

        if (!isDng) return decodedBitmap

        return try {
            val orientation = context.contentResolver.openInputStream(uri)?.use { input ->
                ExifInterface(input).getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
            } ?: ExifInterface.ORIENTATION_NORMAL

            // 如果方向正常，直接返回
            if (orientation == ExifInterface.ORIENTATION_NORMAL || orientation == ExifInterface.ORIENTATION_UNDEFINED) {
                return decodedBitmap
            }

            val (infoW, infoH) = infoSize?.let { it.width to it.height } ?: (0 to 0)

            // 准确判断方向是否已被处理：
            // 1. 检查当前方向是否涉及宽高交换。180 度和翻转不会交换宽高，无法通过尺寸判断，
            //    对 DNG 内嵌预览按 EXIF 显式处理。
            val rotationSwapsSize = orientation == ExifInterface.ORIENTATION_ROTATE_90 ||
                    orientation == ExifInterface.ORIENTATION_ROTATE_270 ||
                    orientation == ExifInterface.ORIENTATION_TRANSPOSE ||
                    orientation == ExifInterface.ORIENTATION_TRANSVERSE

            val alreadyHandled = if (rotationSwapsSize && infoW != infoH && infoW > 0) {
                // 如果是 90/270 度旋转且非正方形，检查 Bitmap 宽高比是否相对于原图已反转
                // (bitmapW > bitmapH) 不等于 (infoW > infoH) 说明发生了交换，即已被处理
                (decodedBitmap.width > decodedBitmap.height) != (infoW > infoH)
            } else false

            if (alreadyHandled) {
                decodedBitmap
            } else {
                rotateImageIfRequired(decodedBitmap, orientation)
            }
        } catch (e: Exception) {
            decodedBitmap
        }
    }

    private fun Bitmap.ensurePreviewCompatibleConfig(preserveHdr: Boolean): Bitmap {
        if (preserveHdr || config == Bitmap.Config.ARGB_8888) return this
        return copy(Bitmap.Config.ARGB_8888, false) ?: this
    }

    private fun detectEmbeddedGainmap(context: Context, photoFile: File): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE || !photoFile.exists()) return false
        // Use a small maxEdge for performance; gainmap detection works on downsampled bitmaps.
        return hasBitmapGainmap(loadBitmap(context, Uri.fromFile(photoFile), maxEdge = 512, preserveHdr = true))
    }

    private fun MediaMetadata.withEmbeddedDngGooglePixelToneMapDefaults(
        dngFile: File
    ): MediaMetadata {
        val hasProfileGainTableMap = DngProfileGainTableMap.readFrom(dngFile)?.isValid == true
        if (!hasProfileGainTableMap || !DngEmbeddedProfile.hasGoogleToneMapProfile(dngFile)) return this
        val toneMappingParameters = rawToneMappingParameters.withGooglePixelToneMap(true)
        if (toneMappingParameters == rawToneMappingParameters && manualHdrEffectEnabled) return this
        PLog.d(TAG, "DNG contains PGTM + Google ProfileToneCurve; enabling Pixel-style tone map and HDR gainmap for this photo")
        return copy(
            rawToneMappingParameters = toneMappingParameters,
            manualHdrEffectEnabled = true
        )
    }


    /**
     * 从 URI 获取文件名
     */
    private fun getFileName(context: Context, uri: Uri): String? {
        return try {
            context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
                val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                cursor.moveToFirst()
                cursor.getString(nameIndex)
            }
        } catch (e: Exception) {
            null
        }
    }

    /**
     * 从系统相册导入照片
     */
    suspend fun importPhoto(
        context: Context,
        uri: Uri,
        lutId: String?,
        computationalAperture: Float? = null,
        photoId: String? = null,
        videoUri: Uri? = null,
    ): String? {
        return withContext(Dispatchers.IO) {
            try {
                val photoId = photoId ?: UUID.randomUUID().toString()
                val photoDir = getPhotoDir(context, photoId, true)
                val photoFile = File(photoDir, PHOTO_FILE)
                val dngFile = File(photoDir, DNG_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (photoFile.exists()) {
                    val bakPhotoFile = File(photoDir, "original.${photoFile.lastModified()}.jpg")
                    photoFile.renameTo(bakPhotoFile)
                }

                if (dngFile.exists()) {
                    val bakPhotoFile = File(photoDir, "original.${photoFile.lastModified()}.dng")
                    dngFile.renameTo(bakPhotoFile)
                }

                // 2. 读取元数据以获取旋转信息
                val metadata = MediaMetadata.fromUri(context, uri).copy(
                    lutId = lutId,
                    computationalAperture = computationalAperture,
                    sourceUri = uri.toString()
                )

                // 1. 检测是否为 RAW 或视频文件
                val mimeType = context.contentResolver.getType(uri)
                val fileName = getFileName(context, uri) ?: ""
                val isVideo = mimeType?.startsWith("video/") == true

                if (isVideo) {
                    val info = readVideoRecordInfo(context, uri) ?: return@withContext null
                    val videoMetadata = MediaMetadata(
                        mediaType = MediaType.VIDEO,
                        dateTaken = info.dateTaken,
                        width = info.width,
                        height = info.height,
                        sourceUri = uri.toString(),
                        mimeType = info.mimeType,
                        durationMs = info.durationMs,
                        frameRate = info.frameRate,
                        bitrate = info.bitrate,
                        rotationDegrees = info.rotationDegrees,
                        hasAudio = info.hasAudio,
                        videoWidth = info.width,
                        videoHeight = info.height,
                        captureMode = "video",
                        isImported = true
                    )
                    val thumbnailSaved = saveVideoThumbnail(context, uri, thumbnailFile)
                    if (!thumbnailSaved) {
                        PLog.w(TAG, "Video thumbnail not generated for imported video $uri")
                    }
                    val metadataSaved = saveMetadata(context, photoId, videoMetadata)
                    if (!metadataSaved) {
                        photoDir.deleteRecursively()
                        return@withContext null
                    }
                    notifyPhotoLibraryChanged()
                    return@withContext photoId
                }

                val isRaw = mimeType?.contains("raw", ignoreCase = true) == true ||
                        mimeType?.contains("dng", ignoreCase = true) == true ||
                        fileName.endsWith(".dng", ignoreCase = true) ||
                        fileName.endsWith(".rw2", ignoreCase = true) ||
                        fileName.endsWith(".arw", ignoreCase = true) ||
                        fileName.endsWith(".cr3", ignoreCase = true)

                if (isRaw) {
                    // --- RAW 处理逻辑 ---
                    // 1. 复制 RAW 文件
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        FileOutputStream(dngFile).use { output ->
                            input.copyTo(output)
                        }
                    }

                    // 3. 处理 RAW 以生成 JPEG 预览
                    var updatedMetadata: MediaMetadata = metadata.withEmbeddedDngGooglePixelToneMapDefaults(dngFile)
                    val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, 0f)
                    val rawChromaNoiseReduction = resolveChromaNoiseReduction(updatedMetadata, 0f)
                    val processedBitmap = RawDemosaicProcessor.getInstance().process(
                        context,
                        dngFile.absolutePath, null, null, 0,
                        rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                        rawAutoExposure = resolveRawAutoExposure(context, updatedMetadata),
                        rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                        rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                        rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                        rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                        rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                        applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                        rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                        rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                        rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                        sharpeningValue = RawSharpeningDefaults.CAPTURE_DEFAULT,
                        denoiseValue = rawNoiseReduction,
                        chromaDenoiseValue = rawChromaNoiseReduction,
                        rawDcpId = updatedMetadata.rawDcpId,
                        rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                        rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                        rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                        rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                        spectralFilmStock = updatedMetadata.spectralFilmStock,
                        spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                        spectralFilmTuning = SpectralFilmTuning(
                            cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                            mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                            yDensityGain = updatedMetadata.spectralFilmYDensityGain
                        ),
                        onMetadata = { raw ->
                            updatedMetadata = updatedMetadata.merge(raw)
                        },
                        onRawAutoAdjustments = { adjustments ->
                            updatedMetadata = updatedMetadata.withRawAutoAdjustments(adjustments)
                        }
                    )

                    if (processedBitmap != null) {
                        // 保存为 original.jpg
                        FileOutputStream(photoFile).use { out ->
                            processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                        }

                        // 生成缩略图
                        generateThumbnail(processedBitmap, thumbnailFile)

                        // 更新元数据
                        updatedMetadata = updatedMetadata.copy(
                            width = processedBitmap.width,
                            height = processedBitmap.height,
                            rotation = 0
                        )
                        saveMetadata(context, photoId, updatedMetadata)
//                        if (updatedMetadata.computationalAperture != null) {
//                            generateBokehPhoto(context, photoId, updatedMetadata, processedBitmap)
//                        }

                        processedBitmap.recycle()
                    } else {
                        // 降级：如果 RAW 处理失败，尝试直接解码（某些 DNG 包含内置预览图）
                        // 传递元数据确保旋转信息被正确处理
                        tempImportJpeg(uri, context, metadata, photoFile, thumbnailFile)
                    }
                } else {
                    // --- 常规 JPEG 处理逻辑 ---
                    // 传递元数据确保旋转信息被正确处理
                    tempImportJpeg(uri, context, metadata, photoFile, thumbnailFile)
                    val hasEmbeddedGainmap = detectEmbeddedGainmap(context, photoFile)
                    updateMetadata(context, photoId) { current ->
                        current.copy(
                            hasEmbeddedGainmap = hasEmbeddedGainmap,
                            manualHdrEffectEnabled = hasEmbeddedGainmap
                        )
                    }
//                    if (metadata.computationalAperture != null) {
//                        val bitmap = BitmapFactory.decodeFile(photoFile.absolutePath)
//                        if (bitmap != null) {
//                            generateBokehPhoto(context, photoId, metadata, bitmap)
//                            bitmap.recycle()
//                        }
//                    }
                }

                // If a separate video URI is provided (e.g. Vivo Live Photo), copy it directly to videoFile
                var hasVideo = false
                if (videoUri != null) {
                    val videoFile = File(photoDir, VIDEO_FILE)
                    try {
                        context.contentResolver.openInputStream(videoUri)?.use { input ->
                            FileOutputStream(videoFile).use { output ->
                                input.copyTo(output)
                            }
                        }
                        PLog.d(TAG, "Successfully copied separate video from $videoUri for Vivo Live Photo: $photoId")
                        hasVideo = true
                        updateMetadata(context, photoId) { current ->
                            current.copy(presentationTimestampUs = 0)
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to copy separate video from $videoUri", e)
                    }
                }

                // Check for Motion Photo after import
                if (!hasVideo && photoFile.exists() && MotionPhotoWriter.isMotionPhoto(photoFile.absolutePath)) {
                    val videoFile = File(photoDir, VIDEO_FILE)
                    if (MotionPhotoWriter.extractVideo(photoFile.absolutePath, videoFile.absolutePath)) {
                        PLog.d(TAG, "Extracted video from imported Motion Photo: $photoId")
                        val timestampUs = MotionPhotoWriter.getPresentationTimestampUs(photoFile.absolutePath)
                        updateMetadata(context, photoId) { current ->
                            current.copy(presentationTimestampUs = timestampUs)
                        }
                    }
                }

                val importedMetadata = loadMetadata(context, photoId) ?: metadata
                queueDetailHdrCacheBuild(
                    context = context,
                    photoId = photoId,
                    metadata = importedMetadata,
                    sharpening = importedMetadata.sharpening ?: 0f,
                    noiseReduction = importedMetadata.noiseReduction ?: 0f,
                    chromaNoiseReduction = importedMetadata.chromaNoiseReduction ?: 0f
                )

                PLog.d(TAG, "Photo imported: $photoId (isRaw: $isRaw)")
                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to import photo", e)
                null
            }
        }
    }

    suspend fun refreshRawPreview(
        context: Context,
        photoId: String,
    ): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                awaitDetailHdrBuildIdle(photoId)

                val photoDir = getPhotoDir(context, photoId, true)
                val photoFile = File(photoDir, PHOTO_FILE)
                val tempPhotoFile = File(photoDir, "raw_refresh_temp.jpg")
                val dngFile = File(photoDir, DNG_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (!dngFile.exists()) return@withContext null
                // 2. 读取元数据以获取旋转信息
                val metadata = loadMetadata(context, photoId)

                // 3. 处理 RAW 以生成 JPEG 预览
                var updatedMetadata = metadata
                val rawMetadata = updatedMetadata ?: MediaMetadata()
                val rawNoiseReduction = resolveNoiseReduction(rawMetadata, 0f)
                val rawChromaNoiseReduction = resolveChromaNoiseReduction(rawMetadata, 0f)
                val processedBitmap = RawDemosaicProcessor.getInstance().process(
                    context,
                    dngFile.absolutePath, metadata?.ratio, metadata?.cropRegion, 0,
                    rawExposureCompensation = updatedMetadata?.rawExposureCompensation ?: 0f,
                    rawAutoExposure = resolveRawAutoExposure(context, updatedMetadata),
                    rawHighlightsAdjustment = updatedMetadata?.rawHighlightsAdjustment ?: 0f,
                    rawShadowsAdjustment = updatedMetadata?.rawShadowsAdjustment ?: 0f,
                    rawBlackPointCorrection = updatedMetadata?.rawBlackPointCorrection ?: 0f,
                    rawWhitePointCorrection = updatedMetadata?.rawWhitePointCorrection ?: 0f,
                    rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                    applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                    rawBlackLevelMode = updatedMetadata?.rawBlackLevelMode,
                    rawCustomBlackLevel = updatedMetadata?.rawCustomBlackLevel,
                    rawWhiteLevelMode = updatedMetadata?.rawWhiteLevelMode,
                    sharpeningValue = updatedMetadata?.sharpening ?: RawSharpeningDefaults.CAPTURE_DEFAULT,
                    denoiseValue = rawNoiseReduction,
                    chromaDenoiseValue = rawChromaNoiseReduction,
                    rawDcpId = updatedMetadata?.rawDcpId,
                    rawRenderingEngine = updatedMetadata?.rawRenderingEngine ?: MediaMetadata().rawRenderingEngine,
                    rawToneMappingParameters = updatedMetadata?.rawToneMappingParameters ?: MediaMetadata().rawToneMappingParameters,
                    rawCfaCorrectionMode = updatedMetadata?.rawCfaCorrectionMode,
                    rawBlackBorderCrop = rawMetadata.rawBlackBorderCrop,
                    spectralFilmStock = updatedMetadata?.spectralFilmStock,
                    spectralFilmPrint = updatedMetadata?.spectralFilmPrint,
                    spectralFilmTuning = SpectralFilmTuning(
                        cDensityGain = updatedMetadata?.spectralFilmCDensityGain ?: 1f,
                        mDensityGain = updatedMetadata?.spectralFilmMDensityGain ?: 1f,
                        yDensityGain = updatedMetadata?.spectralFilmYDensityGain ?: 1f
                    ),
                    onMetadata = { raw ->
                        updatedMetadata = updatedMetadata?.merge(raw) ?: MediaMetadata().merge(raw)
                    },
                    onRawAutoAdjustments = { adjustments ->
                        updatedMetadata = (updatedMetadata ?: MediaMetadata()).withRawAutoAdjustments(adjustments)
                    }
                )

                if (processedBitmap != null) {
                    // 先写临时文件再替换，避免详情页或 HDR 任务读到半写入的 original.jpg。
                    FileOutputStream(tempPhotoFile).use { out ->
                        processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                    }
                    if (photoFile.exists() && !photoFile.delete()) {
                        tempPhotoFile.delete()
                        return@withContext null
                    }
                    if (!tempPhotoFile.renameTo(photoFile)) {
                        tempPhotoFile.delete()
                        return@withContext null
                    }
                    // 刷新 RAW 后，AI 降噪结果已失效，清理之
                    getAiDenoiseFile(context, photoId).takeIf { it.exists() }?.delete()

                    updatedMetadata?.let {
                        val finalMetadata = it.copy(
                            width = processedBitmap.width,
                            height = processedBitmap.height,
                            hasAiDenoisedBase = false
                        )
                        generateBokehPhoto(context, photoId, finalMetadata, processedBitmap.copy(Bitmap.Config.ARGB_8888, true))
                        saveMetadata(context, photoId, finalMetadata)
                        if (finalMetadata.manualHdrEffectEnabled) {
                            deleteDetailHdrFile(context, photoId)
                            queueDetailHdrCacheBuild(
                                context = context,
                                photoId = photoId,
                                metadata = finalMetadata,
                                sharpening = finalMetadata.sharpening ?: 0f,
                                noiseReduction = finalMetadata.noiseReduction ?: 0f,
                                chromaNoiseReduction = finalMetadata.chromaNoiseReduction ?: 0f
                            )
                        }
                    }
                    // 生成缩略图
                    generateThumbnail(processedBitmap, thumbnailFile)
                }
                processedBitmap
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to refresh RAW preview", e)
                File(getPhotoDir(context, photoId, true), "raw_refresh_temp.jpg").takeIf { it.exists() }?.delete()
                null
            }
        }
    }

    private suspend fun tempImportJpeg(
        uri: Uri,
        context: Context,
        metadata: MediaMetadata,
        photoFile: File,
        thumbnailFile: File
    ) {
        val photoDir = photoFile.parentFile ?: return
        val tempFile = File(photoDir, "temp.jpg")
        context.contentResolver.openInputStream(uri)?.use { input ->
            FileOutputStream(tempFile).use { output ->
                input.copyTo(output)
            }
        }

        var updatedMetadata = metadata

        val exif = ExifInterface(tempFile)
        val orientation = exif.getAttributeInt(
            ExifInterface.TAG_ORIENTATION,
            ExifInterface.ORIENTATION_NORMAL
        )

        if (orientation != ExifInterface.ORIENTATION_NORMAL &&
            orientation != ExifInterface.ORIENTATION_UNDEFINED
        ) {
            val bitmap = BitmapFactory.decodeFile(tempFile.absolutePath)
            if (bitmap != null) {
                val rotatedBitmap = rotateImageIfRequired(bitmap, orientation)
                FileOutputStream(photoFile).use { out ->
                    rotatedBitmap.compress(Bitmap.CompressFormat.JPEG, 100, out)
                }
                val newExif = ExifInterface(photoFile)
                newExif.setAttribute(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_NORMAL.toString()
                )
                newExif.saveAttributes()

                updatedMetadata = metadata.copy(
                    width = rotatedBitmap.width,
                    height = rotatedBitmap.height,
                    rotation = 0,
                )

                if (rotatedBitmap != bitmap) {
                    rotatedBitmap.recycle()
                }
                bitmap.recycle()
            } else {
                tempFile.copyTo(photoFile, overwrite = true)
            }
        } else {
            tempFile.renameTo(photoFile)
        }

        if (tempFile.exists()) {
            tempFile.delete()
        }

        saveMetadata(context, photoDir.name, updatedMetadata)
        generateThumbnail(photoFile, thumbnailFile)
    }

    /**
     * 根据 EXIF 方向信息旋转图片
     */
    internal fun rotateImageIfRequired(img: Bitmap, orientation: Int): Bitmap {
        return when (orientation) {
            ExifInterface.ORIENTATION_ROTATE_90 -> {
                rotateImage(img, 90f)
            }

            ExifInterface.ORIENTATION_ROTATE_180 -> {
                rotateImage(img, 180f)
            }

            ExifInterface.ORIENTATION_ROTATE_270 -> {
                rotateImage(img, 270f)
            }

            ExifInterface.ORIENTATION_FLIP_HORIZONTAL -> {
                flipImage(img, horizontal = true, vertical = false)
            }

            ExifInterface.ORIENTATION_FLIP_VERTICAL -> {
                flipImage(img, horizontal = false, vertical = true)
            }

            ExifInterface.ORIENTATION_TRANSPOSE -> {
                // 先水平翻转，再旋转 270 度
                val flipped = flipImage(img, horizontal = true, vertical = false)
                val rotated = rotateImage(flipped, 270f)
                if (flipped != img) flipped.recycle()
                rotated
            }

            ExifInterface.ORIENTATION_TRANSVERSE -> {
                // 先垂直翻转，再旋转 270 度
                val flipped = flipImage(img, horizontal = false, vertical = true)
                val rotated = rotateImage(flipped, 270f)
                if (flipped != img) flipped.recycle()
                rotated
            }

            else -> img
        }
    }

    /**
     * 旋转图片
     */
    internal fun rotateImage(img: Bitmap, degree: Float): Bitmap {
        val matrix = Matrix()
        matrix.postRotate(degree)
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, false)
    }

    /**
     * 翻转图片
     */
    internal fun flipImage(img: Bitmap, horizontal: Boolean, vertical: Boolean): Bitmap {
        val matrix = Matrix()
        matrix.postScale(
            if (horizontal) -1f else 1f,
            if (vertical) -1f else 1f
        )
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, false)
    }
}
