package com.hinnka.mycamera.gallery

import android.app.PendingIntent
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraMetadata
import android.hardware.camera2.CaptureResult
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.os.FileObserver
import android.provider.DocumentsContract
import android.provider.MediaStore
import androidx.core.graphics.createBitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.camera.HdrBracketConfig
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.gallery.db.GalleryMediaStore
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.hdr.GainmapSourceSet
import com.hinnka.mycamera.hdr.HdrGainmapStrength
import com.hinnka.mycamera.hdr.SourceKind
import com.hinnka.mycamera.hdr.UltraHdrWriter
import com.hinnka.mycamera.hdr.UnifiedGainmapProducer
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.ChromaDenoiseDefaults
import com.hinnka.mycamera.lut.applyEffectsToVideoFile
import com.hinnka.mycamera.lut.isVideoTransformerExportSupported
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.processor.BokehStyle
import com.hinnka.mycamera.processor.GpuBayerSource
import com.hinnka.mycamera.processor.GpuLinearRgbSource
import com.hinnka.mycamera.processor.GpuLinearRgbStorage
import com.hinnka.mycamera.processor.PhotonCoreImagingTuning
import com.hinnka.mycamera.processor.MgcSpatialOutputMode
import com.hinnka.mycamera.processor.MgcMergeMethod
import com.hinnka.mycamera.processor.MultiFrameStacker
import com.hinnka.mycamera.raw.RawNoiseProfileManager
import com.hinnka.mycamera.processor.RawStackBufferLayout
import com.hinnka.mycamera.processor.RawStackFrame
import com.hinnka.mycamera.processor.YuvHdrStackFrame
import com.hinnka.mycamera.processor.YuvHdrStackFrameRole
import com.hinnka.mycamera.raw.DngEmbeddedProfile
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.GpuDemosaicedRawSource
import com.hinnka.mycamera.raw.MgcSpatialGpuDenoiseMode
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawDefaultCropOverride
import com.hinnka.mycamera.raw.RawDngProfilePreparation
import com.hinnka.mycamera.raw.RawDngProfilePreparationOptions
import com.hinnka.mycamera.raw.RawDngCaptureProfilePreparer
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import com.hinnka.mycamera.raw.RawSharpeningDefaults
import com.hinnka.mycamera.raw.RawAdaptiveExposureMode
import com.hinnka.mycamera.raw.RawCaptureProfileCoordinator
import com.hinnka.mycamera.raw.RawPhotonHdrRatioMetadata
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.preview.PortraitMaskSnapshot
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.DngBlackLevelPatcher
import com.hinnka.mycamera.utils.DngCfaPatternPatcher
import com.hinnka.mycamera.utils.DngWhiteLevelPatcher
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
import java.io.IOException
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.IntBuffer
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong
import kotlin.coroutines.resume
import kotlin.io.copyTo
import kotlin.io.deleteRecursively
import kotlin.io.extension
import kotlin.io.inputStream
import kotlin.io.walkBottomUp
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
            ?: if (metadata?.isImported == true) {
                // Imported DNG files default to consuming their embedded residual/complete map,
                // while an explicit photo-level edit is still honored above.
                true
            } else {
                ContentRepository.getInstance(context).userPreferencesRepository.userPreferences.firstOrNull()
                    ?.rawLensShadingCorrectionEnabled ?: true
            }
    }

    private suspend fun resolveRawNoiseProfileId(
        context: Context,
        metadata: MediaMetadata?,
    ): String {
        val preferences = ContentRepository.getInstance(context)
            .userPreferencesRepository
            .userPreferences
            .firstOrNull()
        return preferences?.rawNoiseProfileIdForLens(metadata?.cameraId)
            ?: RawNoiseProfileManager.DEFAULT_PROFILE_ID
    }

    private fun resolveNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.noiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    private fun resolveChromaNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    suspend fun saveMgcRawDngPhoto(
        context: Context,
        sourceDngFile: File,
        sourcePackage: String? = null,
        source: String? = null,
        sourceUri: Uri? = null,
        dateTaken: Long? = null,
        rotation: Int = 0,
        shouldAutoSave: Boolean = true,
        photoQuality: Int = 95,
    ): String? = withContext(Dispatchers.IO) {
        if (!sourceDngFile.exists() || sourceDngFile.length() <= 0L) {
            PLog.w(TAG, "saveMgcRawDngPhoto skipped empty source=${sourceDngFile.absolutePath}")
            return@withContext null
        }

        val repository = ContentRepository.getInstance(context)
        if (repository.getAvailableLuts().isEmpty()) {
            repository.initialize()
        }
        val preferences = repository.userPreferencesRepository.userPreferences.firstOrNull()
        val photoId = UUID.randomUUID().toString()
        val photoDir = getPhotoDir(context, photoId, true)
        val dngFile = File(photoDir, DNG_FILE)
        val tempDngFile = File(photoDir, "temp_mgc.dng")
        val rawSharpening = preferences?.rawSharpening
            ?: RawSharpeningDefaults.DEFAULT_STRENGTH
        val rawNoiseReduction = preferences?.rawNoiseReduction
            ?: RawDenoiseDefaults.RAW_LUMA_STRENGTH
        val rawChromaNoiseReduction = preferences?.rawChromaNoiseReduction
            ?: RawDenoiseDefaults.RAW_CHROMA_STRENGTH

        try {
            sourceDngFile.copyTo(tempDngFile, overwrite = true)
            if (dngFile.exists() && !dngFile.delete()) {
                PLog.w(TAG, "Unable to replace existing MGC DNG for $photoId")
            }
            if (!tempDngFile.renameTo(dngFile)) {
                tempDngFile.copyTo(dngFile, overwrite = true)
                tempDngFile.delete()
            }

            val baseMetadata = MediaMetadata.fromUri(context, Uri.fromFile(dngFile))
            val lutId = preferences?.lutId
                ?: repository.getAvailableLuts().firstOrNull { it.isDefault }?.id
            val baselineLutId = preferences?.rawBaselineLutId
            val rawToneMappingParameters =
                (preferences?.rawToneMappingParameters ?: RawToneMappingParameters.DEFAULT).normalized()
            val spectralFilmStock = preferences?.rawSpectralFilmStock ?: "kodak_portra_400"
            val spectralFilmTuning = (
                preferences?.rawSpectralFilmTuningsByStock?.get(spectralFilmStock)
                    ?: SpectralFilmTuning.DEFAULT
                ).normalized()
            val resolvedDateTaken = dateTaken
                ?: baseMetadata.dateTaken
                ?: System.currentTimeMillis()
            val resolvedRotation = rotation.takeIf { it != 0 } ?: baseMetadata.rotation
            val customProperties = baseMetadata.customProperties.toMutableMap().apply {
                put("captureSource", "MGC")
                sourcePackage?.takeIf { it.isNotBlank() }?.let { put("mgcSourcePackage", it) }
                source?.takeIf { it.isNotBlank() }?.let { put("mgcSource", it) }
            }
            val metadata = baseMetadata.copy(
                lutId = lutId,
                tonemapMode = mgcTonemapMode(preferences?.naturalLightEnabled, preferences?.tonemapMode),
                colorRecipeParams = lutId?.let { repository.lutManager.loadColorRecipeParams(it) },
                baselineTarget = baselineLutId?.let { BaselineColorCorrectionTarget.RAW },
                baselineLutId = baselineLutId,
                baselineColorRecipeParams = baselineLutId?.let {
                    repository.lutManager.loadColorRecipeParams(it, BaselineColorCorrectionTarget.RAW)
                },
                sharpening = rawSharpening,
                noiseReduction = rawNoiseReduction,
                chromaNoiseReduction = rawChromaNoiseReduction,
                rawDcpId = preferences?.rawDcpIdForLens(null),
                rawExposureCompensation = preferences?.rawExposureCompensation ?: 0f,
                rawAutoExposure = preferences?.rawAutoExposure ?: true,
                rawHighlightsAdjustment = preferences?.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = preferences?.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = preferences?.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = preferences?.rawWhitePointCorrection ?: 0f,
                rawAutoWhiteBalanceEstimate = preferences?.rawAutoWhiteBalanceEstimate ?: false,
                rawLensShadingCorrectionEnabled = preferences?.rawLensShadingCorrectionEnabled,
                rawBlackLevelMode = RawCfaCorrection.MODE_DEFAULT,
                rawCustomBlackLevel = 0f,
                rawWhiteLevelMode = RawWhiteLevelCorrection.MODE_DEFAULT,
                rawCfaCorrectionMode = RawCfaCorrection.MODE_DEFAULT,
                rawRenderingEngine = preferences?.rawRenderingEngine ?: RawRenderingEngine.AdobeCurve,
                rawToneMappingParameters = rawToneMappingParameters,
                dateTaken = resolvedDateTaken,
                rotation = resolvedRotation,
                sourceUri = sourceUri?.toString(),
                mimeType = "image/x-adobe-dng",
                isImported = false,
                software = baseMetadata.software ?: "MGC/libgcam",
                customProperties = customProperties,
                manualHdrEffectEnabled = preferences?.ultraHdrGainMapEnabled ?: false,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = preferences?.rawSpectralFilmPrint ?: "kodak_portra_endura",
                spectralFilmCDensityGain = spectralFilmTuning.cDensityGain,
                spectralFilmMDensityGain = spectralFilmTuning.mDensityGain,
                spectralFilmYDensityGain = spectralFilmTuning.yDensityGain,
            )

            saveMetadata(context, photoId, metadata)
            renderRawDngPhotoOutputs(
                context = context,
                photoId = photoId,
                dngFile = dngFile,
                aspectRatio = metadata.ratio ?: AspectRatio.RATIO_4_3,
                metadata = metadata,
                rotation = metadata.rotation,
                exposureBias = metadata.exposureBias,
                photoProcessor = repository.photoProcessor,
                sharpeningValue = rawSharpening,
                noiseReductionValue = rawNoiseReduction,
                chromaNoiseReductionValue = rawChromaNoiseReduction,
                photoQuality = photoQuality,
                shouldAutoSave = shouldAutoSave
            )

            if (!getPhotoFile(context, photoId).exists()) {
                PLog.e(TAG, "MGC RAW render did not produce JPEG for $photoId")
                GalleryMediaStore.deleteMedia(context, photoId)
                photoDir.deleteRecursively()
                return@withContext null
            }

            notifyPhotoLibraryChanged()
            PLog.d(TAG, "MGC RAW DNG rendered into Photon gallery photoId=$photoId")
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save MGC RAW DNG", e)
            GalleryMediaStore.deleteMedia(context, photoId)
            photoDir.deleteRecursively()
            null
        } finally {
            tempDngFile.delete()
        }
    }

    private fun mgcTonemapMode(naturalLightEnabled: Boolean?, tonemapMode: String?): String {
        if (naturalLightEnabled == true) return TONEMAP_MODE_NATURAL_LIGHT
        return when (tonemapMode) {
            "FAST", "HIGH_QUALITY", null -> "SYSTEM_DEFAULT"
            "REC709" -> "SRGB"
            "SYSTEM_DEFAULT", "SRGB" -> tonemapMode
            else -> "SYSTEM_DEFAULT"
        }
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

    /**
     * Suspends until a prepared Photon photo publishes a non-empty internal display file.
     *
     * Capture creates an empty [PHOTO_FILE] so the pending item can enter the gallery, then
     * atomically moves the completed JPEG/HEIC into the same directory. Watching the directory
     * is required because watching the empty file itself would remain attached to the replaced
     * inode.
     */
    suspend fun awaitInternalPhotoReady(context: Context, photoId: String): Boolean {
        val photoDir = getPhotoDir(context, photoId)
        if (!photoDir.isDirectory) return false
        if (getOriginalImageFile(context, photoId) != null) return true

        return suspendCancellableCoroutine { continuation ->
            val completed = AtomicBoolean(false)
            lateinit var observer: FileObserver

            fun complete(result: Boolean) {
                if (!completed.compareAndSet(false, true)) return
                observer.stopWatching()
                continuation.resume(result)
            }

            fun completeIfReady() {
                if (getOriginalImageFile(context, photoId) != null) {
                    PLog.d(TAG, "Observed internal photo ready: $photoId")
                    complete(true)
                }
            }

            observer = object : FileObserver(
                photoDir,
                FileObserver.CREATE or
                    FileObserver.CLOSE_WRITE or
                    FileObserver.MOVED_TO or
                    FileObserver.DELETE_SELF
            ) {
                override fun onEvent(event: Int, path: String?) {
                    val eventType = event and FileObserver.ALL_EVENTS
                    if (eventType == FileObserver.DELETE_SELF) {
                        complete(false)
                        return
                    }
                    if (path != PHOTO_FILE && path != HIGH_QUALITY_PHOTO_FILE) return
                    if (
                        eventType == FileObserver.CREATE ||
                        eventType == FileObserver.CLOSE_WRITE ||
                        eventType == FileObserver.MOVED_TO
                    ) {
                        completeIfReady()
                    }
                }
            }

            // Start before registering cancellation/checking readiness so neither publication nor
            // an already-cancelled continuation can leave an unowned observer running.
            observer.startWatching()
            continuation.invokeOnCancellation {
                if (completed.compareAndSet(false, true)) {
                    observer.stopWatching()
                }
            }
            completeIfReady()
        }
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

    fun getFloatDepthFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), "depthmap.phdp")
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

    private fun writeExportJpeg(
        bitmap: Bitmap,
        outputFile: File,
        quality: Int,
        captureInfo: CaptureInfo,
        gainmapResult: GainmapResult? = null,
        preferJpeg444: Boolean = false,
    ): Boolean {
        if (preferJpeg444) {
            val encoded = Jpeg444ExportEncoder.write(
                bitmap = bitmap,
                outputFile = outputFile,
                quality = quality,
                gainmapResult = gainmapResult,
                captureInfo = captureInfo,
            )
            if (encoded) {
                return true
            }
            PLog.w(TAG, "JPEG 4:4:4 export failed, falling back to standard JPEG")
        }

        val encoded = FileOutputStream(outputFile).use { outputStream ->
            writeFinalJpeg(
                bitmap = bitmap,
                outputStream = outputStream,
                quality = quality,
                gainmapResult = gainmapResult,
            )
        }
        if (encoded) {
            ExifWriter.writeExif(outputFile, captureInfo)
        }
        return encoded
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
        mimeType: String,
        dateTaken: Long?,
    ): Uri? {
        return if (destination.savePath == PhotoSavePath.EXTERNAL_TREE) {
            createPhotoExportTreeUri(context, destination.treeUri, displayName, mimeType)
        } else {
            val relativePath = destination.savePath.relativePath ?: PhotoSavePath.DCIM_PHOTON.relativePath
            val contentValues = ContentValues().apply {
                put(MediaStore.MediaColumns.DISPLAY_NAME, displayName)
                put(MediaStore.MediaColumns.MIME_TYPE, mimeType)
                put(MediaStore.MediaColumns.RELATIVE_PATH, relativePath)
                dateTaken?.let { put(MediaStore.MediaColumns.DATE_TAKEN, it) }
                put(MediaStore.MediaColumns.IS_PENDING, 1)
            }
            context.contentResolver.insert(collectionUri, contentValues)
        }
    }

    private fun publishPhotoExportUri(
        context: Context,
        destination: PhotoExportDestination,
        uri: Uri,
    ): Boolean {
        if (destination.savePath == PhotoSavePath.EXTERNAL_TREE) return true

        return try {
            val updatedRows = context.contentResolver.update(
                uri,
                ContentValues().apply {
                    put(MediaStore.MediaColumns.IS_PENDING, 0)
                },
                null,
                null,
            )
            if (updatedRows <= 0) {
                PLog.e(TAG, "Failed to publish MediaStore export: no row updated for $uri")
                false
            } else {
                true
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to publish MediaStore export: $uri", e)
            false
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
        sourceFile: File,
        dateTaken: Long?,
    ): Uri? {
        if (!sourceFile.exists() || sourceFile.length() <= 0L) {
            PLog.e(TAG, "Cannot export missing or empty file: ${sourceFile.absolutePath}")
            return null
        }
        val uri = createPhotoExportUri(
            context = context,
            destination = destination,
            collectionUri = collectionUri,
            displayName = displayName,
            mimeType = mimeType,
            dateTaken = dateTaken,
        )
            ?: run {
                PLog.e(TAG, "Failed to create export URI for $displayName")
                return null
            }
        val written = writeToPhotoExportUri(context, uri) { output ->
            sourceFile.inputStream().use { input ->
                input.copyTo(output)
            }
        }
        if (!written) {
            discardPhotoExportUri(context, uri)
            return null
        }
        if (!publishPhotoExportUri(context, destination, uri)) {
            discardPhotoExportUri(context, uri)
            return null
        }
        PLog.d(TAG, "Published photo export: uri=$uri, mimeType=$mimeType, bytes=${sourceFile.length()}")
        return uri
    }

    private fun exportBytesToConfiguredPhotoStorage(
        context: Context,
        destination: PhotoExportDestination,
        collectionUri: Uri,
        displayName: String,
        mimeType: String,
        data: ByteArray,
        dateTaken: Long?,
    ): Uri? {
        val uri = createPhotoExportUri(
            context = context,
            destination = destination,
            collectionUri = collectionUri,
            displayName = displayName,
            mimeType = mimeType,
            dateTaken = dateTaken,
        )
            ?: run {
                PLog.e(TAG, "Failed to create export URI for $displayName")
                return null
            }
        val written = writeToPhotoExportUri(context, uri) { output ->
            output.write(data)
        }
        if (!written) {
            discardPhotoExportUri(context, uri)
            return null
        }
        if (!publishPhotoExportUri(context, destination, uri)) {
            discardPhotoExportUri(context, uri)
            return null
        }
        PLog.d(TAG, "Published photo export: uri=$uri, mimeType=$mimeType, bytes=${data.size}")
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
        preferJpeg444Export: Boolean? = null,
        bitmapComputationalBokehApplied: Boolean = false,
    ): Boolean {
        return withContext(Dispatchers.IO) {
            val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
            var quickShotSourceBitmap: Bitmap? = null
            try {
                val hasEncodingOverride =
                    preferHeicExport != null || preferJpeg444Export != null
                val exportPreferences = if (!hasEncodingOverride) {
                    ContentRepository.getInstance(context)
                        .userPreferencesRepository
                        .userPreferences
                        .firstOrNull()
                } else {
                    null
                }
                val shouldPreferHeic = if (hasEncodingOverride) {
                    preferHeicExport == true
                } else {
                    exportPreferences?.useHeicExport ?: false
                }
                val shouldPreferJpeg444 = if (hasEncodingOverride) {
                    preferHeicExport != true && preferJpeg444Export == true
                } else {
                    (exportPreferences?.useJpeg444Export ?: false) && !shouldPreferHeic
                }
                val exportDestination = resolvePhotoExportDestination(context)
                quickShotSourceBitmap = if (
                    bitmap == null &&
                    metadata.captureMode == "quick_shot" &&
                    getOriginalImageFile(context, id) == null
                ) {
                    metadata.sourceUri
                        ?.let(Uri::parse)
                        ?.let { sourceUri -> loadBitmap(context, sourceUri) }
                        .also { sourceBitmap ->
                            if (sourceBitmap == null && !metadata.sourceUri.isNullOrBlank()) {
                                PLog.w(TAG, "Unable to load quick-shot source for export: ${metadata.sourceUri}")
                            }
                        }
                } else {
                    null
                }
                val exportInputBitmap = bitmap ?: quickShotSourceBitmap

                if (
                    !shouldPreferHeic &&
                    !shouldPreferJpeg444 &&
                    exportInputBitmap == null &&
                    canReuseEmbeddedGainmap(metadata)
                ) {
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
                } else exportInputBitmap?.let {
                    photoProcessor.processBitmap(
                        context = context,
                        photoId = id,
                        input = exportInputBitmap,
                        metadata = bitmapPostMetadata,
                        sharpening = bitmapSharpeningValue,
                        noiseReduction = bitmapNoiseReductionValue,
                        chromaNoiseReduction = bitmapChromaNoiseReductionValue,
                        useComputationalAperture = !bitmapComputationalBokehApplied,
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
                val captureInfo = metadata.toCaptureInfo().copy(
                    imageWidth = outputBitmap.width,
                    imageHeight = outputBitmap.height
                )
                var jpegEncoded = false
                val exportWriteElapsed = measureTimeMillis {
                    jpegEncoded = writeExportJpeg(
                        bitmap = outputBitmap,
                        outputFile = tempExportFile,
                        quality = photoQuality,
                        captureInfo = captureInfo,
                        gainmapResult = if (isLivePhoto) null else outputGainmapResult,
                        preferJpeg444 = shouldPreferJpeg444,
                    )
                }
                PLog.d(
                    TAG,
                    "exportPhoto JPEG encode took ${exportWriteElapsed}ms, " +
                        "jpeg444=$shouldPreferJpeg444, success=$jpegEncoded"
                )
                if (!jpegEncoded) {
                    if (outputBitmap !== processedBitmap && !outputBitmap.isRecycled) {
                        outputBitmap.recycle()
                    }
                    if (!processedBitmap.isRecycled) {
                        processedBitmap.recycle()
                    }
                    return@withContext false
                }

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
                            sourceFile = photoExportFile,
                            dateTaken = date,
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
                                        sourceFile = tempMotionVideoFile,
                                        dateTaken = date,
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
                        sourceFile = tempExportFile,
                        dateTaken = date,
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
                quickShotSourceBitmap?.takeUnless { it.isRecycled }?.recycle()
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
                sourceFile = tempExportFile,
                dateTaken = date,
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
            val exportPreferences = ContentRepository.getInstance(context)
                .userPreferencesRepository
                .userPreferences
                .firstOrNull()
            val shouldPreferHeic = exportPreferences?.useHeicExport ?: false
            val shouldPreferJpeg444 =
                (exportPreferences?.useJpeg444Export ?: false) && !shouldPreferHeic
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
                val jpegSaved = writeExportJpeg(
                    bitmap = bitmap,
                    outputFile = jpegFile,
                    quality = photoQuality,
                    captureInfo = captureInfo,
                    preferJpeg444 = shouldPreferJpeg444,
                )
                if (!jpegSaved) {
                    jpegFile.delete()
                    photoDir.deleteRecursively()
                    return@withContext null
                }
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
                sourceFile = encodedFile,
                dateTaken = date,
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
            val dateTaken = metadata.dateTaken ?: System.currentTimeMillis()
            val uri = exportFileToConfiguredPhotoStorage(
                context = context,
                destination = destination,
                collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                displayName = filename,
                mimeType = mimeType,
                sourceFile = tempExportFile,
                dateTaken = dateTaken,
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

    suspend fun exportDng(
        context: Context,
        photoId: String,
        data: ByteArray,
        metadata: MediaMetadata,
    ): Boolean =
        withContext(Dispatchers.IO) {
            try {
                val dateTaken = metadata.dateTaken ?: System.currentTimeMillis()
                val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    .format(Date(dateTaken))
                val dngFilename = "PhotonCamera_${timestamp}.dng"
                val destination = resolvePhotoExportDestination(context)
                val uri = exportBytesToConfiguredPhotoStorage(
                    context = context,
                    destination = destination,
                    collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    displayName = dngFilename,
                    mimeType = "image/x-adobe-dng",
                    data = data,
                    dateTaken = dateTaken,
                ) ?: return@withContext false

                PLog.d(TAG, "DNG exported: $uri")

                updateMetadata(context, photoId) { current ->
                    current.copy(
                        exportedUris = current.exportedUris + uri.toString()
                    )
                }
                PLog.d(TAG, "Exported URI saved: $uri")
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
                false
            }
        }

    suspend fun exportDng(
        context: Context,
        photoId: String,
        sourceFile: File,
        metadata: MediaMetadata,
    ): Boolean =
        withContext(Dispatchers.IO) {
            try {
                if (!sourceFile.exists() || sourceFile.length() <= 0L) {
                    PLog.w(TAG, "Skipping DNG export because source file is missing or empty: ${sourceFile.absolutePath}")
                    return@withContext false
                }

                val dateTaken = metadata.dateTaken ?: System.currentTimeMillis()
                val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    .format(Date(dateTaken))
                val dngFilename = "PhotonCamera_${timestamp}.dng"
                val destination = resolvePhotoExportDestination(context)
                val uri = exportFileToConfiguredPhotoStorage(
                    context = context,
                    destination = destination,
                    collectionUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    displayName = dngFilename,
                    mimeType = "image/x-adobe-dng",
                    sourceFile = sourceFile,
                    dateTaken = dateTaken,
                ) ?: return@withContext false

                PLog.d(TAG, "DNG exported from file: $uri")

                updateMetadata(context, photoId) { current ->
                    current.copy(
                        exportedUris = current.exportedUris + uri.toString()
                    )
                }
                PLog.d(TAG, "Exported URI saved: $uri")
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
                false
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
            if (includeCropRegionInOutputSize) {
                PLog.i(
                    TAG,
                    "RAW_CROP_TRACE stage=PREPARE_RESULT image=${metadata.width}x${metadata.height} " +
                        "scalerCrop=${captureResult?.get(CaptureResult.SCALER_CROP_REGION)} " +
                        "zoomRatio=${captureResult?.get(CaptureResult.CONTROL_ZOOM_RATIO)} " +
                        "distortionMode=${captureResult?.get(CaptureResult.DISTORTION_CORRECTION_MODE)} " +
                        "legacyDerivedCrop=$cropRegion"
                )
            }
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

            // The preview bitmap is the UI placeholder shown while the final image is being
            // processed. For flash captures it must not participate in RAW scene exposure,
            // but it should still be published immediately and replaced by the rendered result.
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

    private suspend fun renderAndSaveBokehPhoto(
        context: Context,
        photoId: String,
        metadata: MediaMetadata,
        bitmap: Bitmap,
    ): Bitmap {
        val aperture = metadata.computationalAperture ?: 0f
        if (aperture <= 0f) {
            getBokehFile(context, photoId).takeIf { it.exists() }?.delete()
            return bitmap
        }
        val focusPointX = metadata.focusPointX
        val focusPointY = metadata.focusPointY
        val bokeh = ContentRepository.getInstance(context).depthBokehProcessor.applyHighQualityBokeh(
            context,
            photoId,
            bitmap,
            focusPointX,
            focusPointY,
            aperture,
            BokehStyle.fromPersistedName(metadata.computationalBokehStyle),
        )
        saveBokehPhoto(context, photoId, bokeh)
        return bokeh
    }

    suspend fun generateBokehPhoto(context: Context, photoId: String, metadata: MediaMetadata, bitmap: Bitmap) {
        val bokeh = renderAndSaveBokehPhoto(context, photoId, metadata, bitmap)
        if (bokeh !== bitmap && !bokeh.isRecycled) {
            bokeh.recycle()
        }
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
        var previewBitmap: Bitmap? = null
        var bokehBitmap: Bitmap? = null
        var preparedUltraHdrSource: GainmapSourceSet? = null
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

            previewBitmap = processedPreview ?: return@withContext

            if (metadata.isMirrored) {
                val sourcePreview = checkNotNull(previewBitmap)
                val mirroredPreview = BitmapUtils.flipHorizontal(sourcePreview)
                if (mirroredPreview !== sourcePreview && !sourcePreview.isRecycled) {
                    sourcePreview.recycle()
                }
                previewBitmap = mirroredPreview
            }

            if (metadata.usesNaturalLightToneMap()) {
                val sourcePreview = checkNotNull(previewBitmap)
                val toneMappedPreview = photoProcessor.processCapturePreviewToneMap(sourcePreview, metadata)
                if (toneMappedPreview !== sourcePreview && !sourcePreview.isRecycled) {
                    sourcePreview.recycle()
                }
                previewBitmap = toneMappedPreview
            }
            val originalFile = writeInternalOriginalPhoto(photoDir, checkNotNull(previewBitmap), photoQuality)
                ?: return@withContext
            PLog.d(TAG, "saveYuvPhoto internal original saved=${originalFile.name}")
            bokehBitmap = renderAndSaveBokehPhoto(context, photoId, metadata, checkNotNull(previewBitmap))

            preparedUltraHdrSource = photoProcessor.prepareUltraHdrSourceFromProcessedSdr(
                context = context,
                photoId = photoId,
                processedSdr = checkNotNull(bokehBitmap),
                metadata = metadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
            )
            val preparedGainmapResult = preparedUltraHdrSource?.let { source ->
                gainmapProducer.build(source, HdrGainmapStrength.coerce(metadata.hdrEffectStrength))
            }
            if (preparedUltraHdrSource != null) {
                PLog.d(TAG, "saveYuvPhoto reusing one in-memory bokeh/HDR source: $photoId")
                buildDetailHdrCache(
                    context = context,
                    photoId = photoId,
                    metadata = metadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    preparedUltraHdrSource = preparedUltraHdrSource,
                    preparedGainmapResult = preparedGainmapResult,
                )
            } else {
                deleteDetailHdrFile(context, photoId)
            }
//                updateThumbnail(context, photoId, photoProcessor, metadata)
            if (shouldAutoSave) {
                exportPhoto(
                    context = context,
                    id = photoId,
                    bitmap = bokehBitmap,
                    photoProcessor = photoProcessor,
                    metadata = metadata,
                    sharpeningValue = sharpeningValue,
                    noiseReductionValue = noiseReductionValue,
                    chromaNoiseReductionValue = chromaNoiseReductionValue,
                    photoQuality = photoQuality,
                    preparedUltraHdrSource = preparedUltraHdrSource,
                    preparedGainmapResult = preparedGainmapResult,
                    bitmapComputationalBokehApplied = true,
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        } finally {
            preparedUltraHdrSource?.hdrReference?.bitmap?.let { bitmap ->
                if (!bitmap.isRecycled) bitmap.recycle()
            }
            preparedUltraHdrSource?.lutLuminanceGainMap?.bitmap?.let { bitmap ->
                if (!bitmap.isRecycled) bitmap.recycle()
            }
            preparedUltraHdrSource?.sdrBase?.let { bitmap ->
                if (bitmap !== bokehBitmap && bitmap !== previewBitmap && !bitmap.isRecycled) {
                    bitmap.recycle()
                }
            }
            bokehBitmap?.let { bitmap ->
                if (bitmap !== previewBitmap && !bitmap.isRecycled) bitmap.recycle()
            }
            previewBitmap?.let { bitmap ->
                if (!bitmap.isRecycled) bitmap.recycle()
            }
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
        captureExposureCompensationEv: Float = 0f,
        exportDngWithRawExport: Boolean = false,
        capturePortraitMask: PortraitMaskSnapshot? = null,
    ) = withContext(Dispatchers.IO) {
        var rawBufferToRelease: ByteBuffer? = null
        var preparedDemosaicSourceToRelease: GpuDemosaicedRawSource? = null
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
            val mainFlashFired = didMainFlashFire(resolvedCaptureResult)
            val dngThumbnail = thumbnail.takeUnless { mainFlashFired }
            val sourceRawWidth = image.width
            val sourceRawHeight = image.height
            if (mainFlashFired && thumbnail != null) {
                PLog.i(
                    TAG,
                    "RAW flash capture: ignoring the unflashed preview thumbnail for " +
                        "DNG embedding and capture-scene exposure estimation"
                )
            }

            val captureInfo = metadata.toCaptureInfo()
            val physicalRawCrop = RawProcessor.resolveCameraRawPhysicalCrop(
                width = sourceRawWidth,
                height = sourceRawHeight,
                characteristics = characteristics,
                captureResult = resolvedCaptureResult,
            )
            val rawWidth = physicalRawCrop.width
            val rawHeight = physicalRawCrop.height
            val rawDngDefaultCrop = physicalRawCrop.outputBounds
            val blackBorderDefaultCrop = RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = rawWidth,
                height = rawHeight,
                rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                metadataDefaultCrop = rawDngDefaultCrop,
            ) ?: rawDngDefaultCrop
            val processingRawBounds = RawDefaultCropOverride.resolveOutputSourceBounds(
                width = rawWidth,
                height = rawHeight,
                aspectRatio = aspectRatio,
                // CaptureResult's zoom crop has already been physically removed above.
                userCrop = null,
                metadataDefaultCrop = blackBorderDefaultCrop,
            )
            var updatedMetadata: MediaMetadata = metadata.copy(cropRegion = null)
            val rawSharpening = updatedMetadata.sharpening
                ?: RawSharpeningDefaults.normalize(sharpeningValue)
            val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
            val rawChromaNoiseReduction = updatedMetadata.chromaNoiseReduction
                ?: ChromaDenoiseDefaults.forRawCapture(chromaNoiseReductionValue)
            val sourceRawMetadata = RawMetadata.create(
                width = sourceRawWidth,
                height = sourceRawHeight,
                characteristics = characteristics,
                captureResult = resolvedCaptureResult,
                userExposureBias = exposureBias,
                captureExposureCompensationEv = captureExposureCompensationEv,
            ).let(physicalRawCrop::rebase).copy(
                exposureCompensation = captureExposureCompensationEv,
                coreImagingTuning = PhotonCoreImagingTuning.fromCustomProperties(
                    metadata.customProperties,
                ),
            )
            val rawBuffer = image.use {
                RawProcessor.copyRawSensorImageToContiguousBuffer(
                    image = image,
                    sourceBounds = physicalRawCrop.sourceBounds,
                )
            } ?: return@withContext
            rawBufferToRelease = rawBuffer
            val processor = RawDemosaicProcessor.getInstance()
            val profileOptions = rawDngProfilePreparationOptions(
                context = context,
                metadata = metadata,
                width = rawWidth,
                height = rawHeight,
                defaultCrop = processingRawBounds,
                cropRegion = null,
                aspectRatio = aspectRatio,
                rotation = rotation,
                capturePreviewThumbnail = dngThumbnail,
                capturePortraitMask = capturePortraitMask,
                viewfinderMirroredHorizontally = characteristics.get(
                    CameraCharacteristics.LENS_FACING,
                ) == CameraCharacteristics.LENS_FACING_FRONT,
                viewfinderPreviewToCaptureRotationDegrees =
                    viewfinderPreviewToCaptureRotationDegrees(rotation, characteristics),
            )
            val preparedProfile = RawProcessor.prepareRawDngProfile(
                rawBuffer = rawBuffer,
                width = rawWidth,
                height = rawHeight,
                characteristics = characteristics,
                captureResult = resolvedCaptureResult,
                captureExposureCompensationEv = captureExposureCompensationEv,
                cfaPattern = sourceRawMetadata.cfaPattern,
                blackLevel = sourceRawMetadata.blackLevel,
                whiteLevel = sourceRawMetadata.whiteLevel.toInt(),
                valueDomain = RawProcessor.RawBufferValueDomain.SENSOR,
                blackLevelMode = metadata.rawBlackLevelMode,
                customBlackLevel = metadata.rawCustomBlackLevel,
                whiteLevelMode = metadata.rawWhiteLevelMode,
                customWhiteLevel = metadata.rawCustomWhiteLevel,
                cfaCorrectionMode = metadata.rawCfaCorrectionMode,
                options = profileOptions,
                defaultCrop = processingRawBounds,
                physicalRawCrop = physicalRawCrop,
            ) ?: return@withContext
            preparedDemosaicSourceToRelease = preparedProfile.gpuDemosaicedRawSource
            updatedMetadata = updatedMetadata.copy(
                customProperties = RawPhotonHdrRatioMetadata.write(
                    updatedMetadata.customProperties,
                    preparedProfile.hdrRatio,
                    preparedProfile.finalShortGain,
                ),
            )

            suspend fun persistDng(): Boolean {
                tempDngFile.delete()
                val written = try {
                    FileOutputStream(tempDngFile).use { outputStream ->
                        RawProcessor.saveRawBufferToDng(
                            rawBuffer = rawBuffer.duplicate(),
                            width = rawWidth,
                            height = rawHeight,
                            characteristics = characteristics,
                            captureResult = resolvedCaptureResult,
                            outputStream = outputStream,
                            rotation = rotation,
                            thumbnail = dngThumbnail,
                            cfaPattern = sourceRawMetadata.cfaPattern,
                            blackLevel = sourceRawMetadata.blackLevel,
                            whiteLevel = sourceRawMetadata.whiteLevel.toInt(),
                            valueDomain = RawProcessor.RawBufferValueDomain.SENSOR,
                            customWriter = true,
                            blackLevelMode = metadata.rawBlackLevelMode,
                            customBlackLevel = metadata.rawCustomBlackLevel,
                            whiteLevelMode = metadata.rawWhiteLevelMode,
                            customWhiteLevel = metadata.rawCustomWhiteLevel,
                            cfaCorrectionMode = metadata.rawCfaCorrectionMode,
                            effectiveFocalLengthMm = captureInfo.focalLength,
                            effectiveFocalLength35mm = captureInfo.focalLength35mm,
                            captureInfo = captureInfo,
                            dngProfilePreparationOptions = profileOptions,
                            defaultCrop = processingRawBounds,
                            preparedDngProfile = preparedProfile,
                            physicalRawCrop = physicalRawCrop,
                        )
                    }
                } catch (error: Throwable) {
                    PLog.e(TAG, "DNG save failed", error)
                    false
                }
                if (!written || !tempDngFile.exists() || tempDngFile.length() <= 0L) {
                    tempDngFile.delete()
                    return false
                }
                patchSavedDngCorrections(tempDngFile, metadata)
                if (dngFile.exists()) dngFile.delete()
                if (!tempDngFile.renameTo(dngFile)) {
                    tempDngFile.copyTo(dngFile, overwrite = true)
                    tempDngFile.delete()
                }
                if (shouldAutoSave && exportDngWithRawExport) {
                    if (!exportDng(context, photoId, dngFile, metadata)) {
                        PLog.e(TAG, "RAW DNG auto-export failed for photo $photoId")
                    }
                }
                return true
            }

            suspend fun renderPersistedDng() = processor.processForHdrSources(
                context,
                dngFile.absolutePath,
                includeHdrReference = updatedMetadata.manualHdrEffectEnabled,
                aspectRatio = aspectRatio,
                cropRegion = null,
                rotation = rotation,
                exposureBias = exposureBias ?: 0f,
                rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
                sharpeningValue = rawSharpening,
                processLocalCoreImagingTuning = sourceRawMetadata.coreImagingTuning,
                denoiseValue = rawNoiseReduction,
                chromaDenoiseValue = rawChromaNoiseReduction,
                rawDcpId = updatedMetadata.rawDcpId,
                rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
                rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                rawHncsProfileId = updatedMetadata.rawHncsProfileId,
                rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
                rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
                rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                spectralFilmStock = updatedMetadata.spectralFilmStock,
                spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                spectralFilmTuning = SpectralFilmTuning(
                    cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                    mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                    yDensityGain = updatedMetadata.spectralFilmYDensityGain,
                ),
                onMetadata = { raw -> updatedMetadata = updatedMetadata.merge(raw) },
            )

            val directBufferCompatible = RawProcessor.canRenderDngBufferDirectly(
                width = rawWidth,
                height = rawHeight,
                characteristics = characteristics,
            )
            val renderMetadata = if (directBufferCompatible) {
                RawProcessor.buildCfaDngRenderMetadata(
                    width = rawWidth,
                    height = rawHeight,
                    characteristics = characteristics,
                    captureResult = resolvedCaptureResult,
                    sourceMetadata = sourceRawMetadata,
                    defaultCrop = processingRawBounds,
                    rotation = rotation,
                    profilePreparation = preparedProfile,
                    blackLevelMode = metadata.rawBlackLevelMode,
                    customBlackLevel = metadata.rawCustomBlackLevel,
                    whiteLevelMode = metadata.rawWhiteLevelMode,
                    customWhiteLevel = metadata.rawCustomWhiteLevel,
                    cfaCorrectionMode = metadata.rawCfaCorrectionMode,
                )
            } else {
                null
            }
            val embeddedRenderPlan = renderMetadata?.let { preparedMetadata ->
                SuperResolutionDngWriter.resolveEmbeddedRenderPlan(
                    characteristics = characteristics,
                    metadata = preparedMetadata,
                    imageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
                    // Mirror the profile which saveRawBufferToDng will serialize. Passing null
                    // here made the first in-memory render resolve DefaultBlackRender=Auto even
                    // though its final metadata already contained a ProfileGainTableMap and the
                    // persisted DNG correctly wrote DefaultBlackRender=None.
                    profileGainTableMap = preparedMetadata.profileGainTableMap,
                    profileToneCurve = null,
                )
            }
            val inMemoryResult = if (renderMetadata != null && embeddedRenderPlan != null) {
                processor.processDngBufferForHdrSources(
                    context = context,
                    includeHdrReference = updatedMetadata.manualHdrEffectEnabled,
                    rawData = rawBuffer.duplicate(),
                    width = rawWidth,
                    height = rawHeight,
                    rowStride = rawWidth * Short.SIZE_BYTES,
                    samplesPerPixel = 1,
                    gpuDemosaicedRawSource = preparedProfile.gpuDemosaicedRawSource,
                    metadata = renderMetadata,
                    aspectRatio = aspectRatio,
                    cropRegion = null,
                    rotation = rotation,
                    exposureBias = exposureBias ?: 0f,
                    rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                    rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                    rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                    rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                    rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                    rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                    applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                    rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                    rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                    rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                    rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
                    sharpeningValue = rawSharpening,
                    denoiseValue = rawNoiseReduction,
                    chromaDenoiseValue = rawChromaNoiseReduction,
                    rawDcpId = updatedMetadata.rawDcpId,
                    rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
                    rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                    rawHncsProfileId = updatedMetadata.rawHncsProfileId,
                    rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
                    rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
                    embeddedDngRenderPlan = embeddedRenderPlan,
                    rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                    rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                    rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                    rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                    spectralFilmStock = updatedMetadata.spectralFilmStock,
                    spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                    spectralFilmTuning = SpectralFilmTuning(
                        cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                        mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                        yDensityGain = updatedMetadata.spectralFilmYDensityGain,
                    ),
                    onMetadata = { raw -> updatedMetadata = updatedMetadata.merge(raw) },
                )
            } else {
                null
            }
            val rawResult = if (inMemoryResult != null) {
                PLog.i(TAG, "Single-frame RAW rendered from memory before DNG persistence")
                if (!persistDng()) {
                    inMemoryResult.hdrReferenceBitmap?.let { hdrBitmap ->
                        if (hdrBitmap !== inMemoryResult.sdrBitmap && !hdrBitmap.isRecycled) {
                            hdrBitmap.recycle()
                        }
                    }
                    if (!inMemoryResult.sdrBitmap.isRecycled) {
                        inMemoryResult.sdrBitmap.recycle()
                    }
                    return@withContext
                }
                inMemoryResult
            } else {
                PLog.w(TAG, "Single-frame in-memory RAW render unavailable; using persisted DNG fallback")
                // A source that was not adopted by the direct render has no role in the
                // persisted-DNG fallback. Release it before decoding to avoid keeping two
                // full-resolution RGBA16F demosaics alive at the same time.
                processor.releaseGpuDemosaicedRawSource(preparedDemosaicSourceToRelease)
                preparedDemosaicSourceToRelease = null
                if (!persistDng()) return@withContext
                renderPersistedDng() ?: return@withContext
            }
            var bitmap = rawResult.sdrBitmap

            if (updatedMetadata.isMirrored) {
                bitmap = BitmapUtils.flipHorizontal(bitmap)
            }
            updatedMetadata = updatedMetadata.copy(
                width = bitmap.width,
                height = bitmap.height,
                sharpening = rawSharpening,
                chromaNoiseReduction = rawChromaNoiseReduction
            )

            val jpegWritten = FileOutputStream(tempFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            if (!jpegWritten) {
                tempFile.delete()
                throw IOException("Failed to encode final JPEG for $photoId")
            }
            if (!tempFile.renameTo(photoFile)) {
                tempFile.delete()
                throw IOException("Failed to publish final JPEG for $photoId")
            }
            saveMetadata(context, photoId, updatedMetadata)
            val bokehBitmap = renderAndSaveBokehPhoto(context, photoId, updatedMetadata, bitmap)
            val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
                photoProcessor.prepareUltraHdrSourceFromRawResult(
                    context = context,
                    photoId = photoId,
                    rawResult = rawResult,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    applyMirror = true,
                    preparedSdrBitmap = bokehBitmap,
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
                val jpegExported = exportPhoto(
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
                if (!jpegExported) {
                    PLog.e(TAG, "RAW JPEG auto-export failed for photo $photoId")
                }
            }
            preparedUltraHdrSource?.hdrReference?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.lutLuminanceGainMap?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.sdrBase?.let {
                if (it !== bitmap && it !== bokehBitmap && !it.isRecycled) {
                    it.recycle()
                }
            }
            if (bokehBitmap !== bitmap && !bokehBitmap.isRecycled) {
                bokehBitmap.recycle()
            }
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        } finally {
            image.close()
            RawDemosaicProcessor.getInstance().releaseGpuDemosaicedRawSource(
                preparedDemosaicSourceToRelease,
            )
            LargeDirectBuffer.free(rawBufferToRelease)
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
        captureExposureCompensationEv: Float = 0f,
        exportDngWithRawExport: Boolean = false,
        capturePortraitMask: PortraitMaskSnapshot? = null,
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
                    photoQuality = photoQuality,
                    exposureBias = exposureBias,
                    captureExposureCompensationEv = captureExposureCompensationEv,
                    exportDngWithRawExport = exportDngWithRawExport,
                    capturePortraitMask = capturePortraitMask,
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

    suspend fun composeHdrBracketPhoto(
        images: List<SafeImage>,
        captureResults: List<CaptureResult?> = emptyList(),
        zeroEvFrameCount: Int = (images.size - 2).coerceAtLeast(1),
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldMirror: Boolean,
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
        return when {
            index == HDR_BRACKET_HIGH_INDEX -> Math.pow(
                2.0,
                HdrBracketConfig.YUV_LONG_EV.toDouble(),
            ).toFloat()
            index == HDR_BRACKET_LOW_INDEX -> Math.pow(
                2.0,
                HdrBracketConfig.YUV_SHORT_EV.toDouble(),
            ).toFloat()
            else -> 1f
        }
    }

    private fun processHdrBracketYuvFrames(
        images: List<SafeImage>,
        frameSelection: YuvHdrFrameSelection,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldMirror: Boolean,
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
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)
            val metadata = loadMetadata(context, photoId) ?: return@withContext

            deleteDeprecatedJxlStorage(photoDir)

            var result = MultiFrameStacker.processBurst(
                images = images,
                rotation = rotation,
                aspectRatio = aspectRatio,
                enableSuperResolution = useSuperResolution,
                colorSpace = ColorSpace.get(metadata.colorSpace),
            )

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
        exposureBias: Float? = null,
        captureExposureCompensationEv: Float = 0f,
        exportDngWithRawExport: Boolean = false,
        capturePreviewThumbnail: Bitmap? = null,
        capturePortraitMask: PortraitMaskSnapshot? = null,
        frameExposureProducts: List<Double?> = emptyList(),
        frameFocusDistances: List<Float?> = emptyList(),
        rawStackFrames: List<RawStackFrame> = emptyList(),
        rawMaxHdrFusionEnabled: Boolean = true,
        rawMaxSpatialOutputMode: MgcSpatialOutputMode = MgcSpatialOutputMode.BAYER,
        rawMaxMergeMethod: MgcMergeMethod = MgcMergeMethod.SPATIAL_BAYER,
    ) = withContext(Dispatchers.IO) {
        var stackProcessor: RawDemosaicProcessor? = null
        var gpuSourceToRelease: GpuLinearRgbSource? = null
        var gpuBayerSourceToRelease: GpuBayerSource? = null
        var pendingDngWrite: Deferred<Boolean>? = null
        var releaseStackCpuBuffer: (() -> Unit)? = null
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

            val physicalRawCrop = RawProcessor.resolveCameraRawPhysicalCrop(
                width = firstImageWidth,
                height = firstImageHeight,
                characteristics = characteristics,
                captureResult = captureResult,
            )

            val noiseProfileSelection = ContentRepository.getInstance(context)
                .rawNoiseProfileManager
                .resolveSelection(resolveRawNoiseProfileId(context, metadata))
            val captureRawMetadata = RawMetadata.create(
                width = firstImageWidth,
                height = firstImageHeight,
                characteristics = characteristics,
                captureResult = captureResult,
                userExposureBias = exposureBias,
                captureExposureCompensationEv = captureExposureCompensationEv,
                colorSpace = RawDemosaicProcessor.getInstance().getRawColorSpace(),
            ).let(physicalRawCrop::rebase).copy(
                exposureCompensation = captureExposureCompensationEv,
            )
            val rawMetadata = captureRawMetadata.withNoiseProfileSelection(noiseProfileSelection)
            val captureRawDefaultCrop = physicalRawCrop.outputBounds
            val captureBlackBorderCrop =
                RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                    width = physicalRawCrop.width,
                    height = physicalRawCrop.height,
                    rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                    metadataDefaultCrop = captureRawDefaultCrop,
                ) ?: captureRawDefaultCrop
            val captureProcessingBounds = RawDefaultCropOverride.resolveOutputSourceBounds(
                width = physicalRawCrop.width,
                height = physicalRawCrop.height,
                aspectRatio = aspectRatio,
                userCrop = null,
                metadataDefaultCrop = captureBlackBorderCrop,
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
                whiteLevelMode = metadata.rawWhiteLevelMode,
                customWhiteLevel = metadata.rawCustomWhiteLevel
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

            val currentUseSuperResolution =
                useSuperResolution && rawMaxSpatialOutputMode == MgcSpatialOutputMode.RGB
            val rawStackOutputScale = if (currentUseSuperResolution) {
                MultiFrameConfig.normalizeOutputScale(superResolutionScale)
            } else {
                1f
            }
            val applyRawLensShading = resolveRawLensShadingCorrectionEnabled(context, metadata)
            val effectiveRawStackFrames = if (rawStackFrames.size == images.size &&
                rawStackFrames.indices.all { rawStackFrames[it].image === images[it] }
            ) {
                if (!RawProcessor.isBlackLevelOverrideMode(metadata.rawBlackLevelMode)) {
                    rawStackFrames
                } else {
                    // A configured override is authoritative for every frame in the burst.
                    rawStackFrames.map { frame ->
                        frame.copy(dynamicBlackLevelByCfaPosition = null)
                    }
                }
            } else {
                images.mapIndexed { index, image ->
                    RawStackFrame(
                        image = image,
                        exposureTimeNs = rawMetadata.shutterSpeed,
                        sensitivityIso = rawMetadata.iso,
                        minimumSensitivityIso = rawMetadata.minimumSensitivityIso,
                        maximumAnalogSensitivityIso = rawMetadata.maxAnalogSensitivity,
                        exposureProduct = frameExposureProducts.getOrNull(index)
                            ?.takeIf { it.isFinite() && it > 0.0 }
                            ?: 1.0,
                        focusDistanceDiopters = frameFocusDistances.getOrNull(index)
                            ?.takeIf { it.isFinite() }
                            ?: Float.NaN,
                        // Spatial resolves Camera2 versus calibrated profiles itself so that a
                        // canonical profile is never reinterpreted as CFA-phase-ordered Camera2.
                        channelNoiseProfile = captureRawMetadata.channelNoiseProfile
                            .takeIf { it.size >= 8 },
                    )
                }
            }
            val processor = RawDemosaicProcessor.getInstance()
            stackProcessor = processor
            val rawStackResult = processor.runStackingOnGlContext {
                MultiFrameStacker.processBurstRaw(
                    frames = effectiveRawStackFrames,
                    cfaPattern = stackCfaPattern,
                    outputMode = rawMaxSpatialOutputMode,
                    outputScale = rawStackOutputScale,
                    masterBlackLevel = stackBlackLevel,
                    whiteLevel = stackWhiteLevel,
                    whiteBalanceGains = rawMetadata.whiteBalanceGains,
                    noiseProfileSelection = noiseProfileSelection,
                    lensShading = rawMetadata.lensShadingMap,
                    lensShadingWidth = rawMetadata.lensShadingMapWidth,
                    lensShadingHeight = rawMetadata.lensShadingMapHeight,
                    applyLensShadingCorrection = applyRawLensShading,
                    sourceBounds = physicalRawCrop.sourceBounds,
                    useCurrentGlContext = true,
                    exportGpuLinearRgbSource = true,
                    gpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16F,
                    enableHdrFusion = rawMaxHdrFusionEnabled,
                    mergeMethod = rawMaxMergeMethod,
                    coreImagingTuning = PhotonCoreImagingTuning.fromCustomProperties(
                        metadata.customProperties,
                    ),
                )
            }

            val finalStackResult = rawStackResult ?: return@withContext
            gpuSourceToRelease = finalStackResult.gpuLinearRgbSource
            gpuBayerSourceToRelease = finalStackResult.gpuBayerSource
            fun releaseInitialFusedBuffer() {
                val buffer = finalStackResult.fusedBayerBuffer ?: return
                finalStackResult.fusedBayerBuffer = null
                if (finalStackResult.fusedBayerUsesNativeAllocator) {
                    LargeDirectBuffer.free(buffer)
                    PLog.d(TAG, "Released initial stacked RAW CPU buffer")
                }
            }
            releaseStackCpuBuffer = ::releaseInitialFusedBuffer

            val spatialInputSamples = finalStackResult.inputColStepSamples
                ?: if (finalStackResult.bufferLayout == RawStackBufferLayout.LINEAR_RGB) 3 else 1
            val spatialInputRowStepSamples = finalStackResult.inputRowStepSamples
                ?: finalStackResult.width * spatialInputSamples
            val mergeOutputMetadata = rawMetadata.copy(
                width = finalStackResult.width,
                height = finalStackResult.height,
                blackLevel = if (finalStackResult.isNormalizedSensorData) {
                    finalStackResult.blackLevel.copyOf()
                } else {
                    stackBlackLevel.copyOf()
                },
                whiteLevel = if (finalStackResult.isNormalizedSensorData) {
                    65535f
                } else {
                    stackWhiteLevel.toFloat()
                },
                frameCount = finalStackResult.mergedFrameCount,
                mgcDenoiseCorrelation = finalStackResult.mgcDenoiseCorrelation,
                mgcDenoiseReadNoise = finalStackResult.mgcDenoiseReadNoise,
                mgcDenoiseShotNoise = finalStackResult.mgcDenoiseShotNoise,
                mgcSpatialStrengthMap = finalStackResult.mgcSpatialStrengthMap,
                mgcSabreNoiseModelScale =
                    finalStackResult.mgcSabreNoiseModelScale,
                mgcDenoiseTuningSnr = finalStackResult.mgcDenoiseTuningSnr,
                mgcSharpenAttenuationScale =
                    finalStackResult.mgcSharpenAttenuationScale,
                coreImagingTuning = finalStackResult.coreImagingTuning,
            )
            val configuredRawMaxLumaStrength = RawDenoiseDefaults.normalize(
                metadata.rawDenoiseValue ?: RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH
            )
            val configuredRawMaxChromaStrength = RawDenoiseDefaults.normalize(
                metadata.rawChromaDenoiseValue
                    ?: RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH
            )
            val defaultDenoiseRequested =
                (configuredRawMaxLumaStrength > 0f || configuredRawMaxChromaStrength > 0f)
            val defaultDenoiseMode = when {
                !defaultDenoiseRequested ->
                    MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE
                rawMaxMergeMethod == MgcMergeMethod.SABRE ->
                    MgcSpatialGpuDenoiseMode.SABRE_DEFAULT
                else -> MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT
            }
            val defaultDenoiseModelAvailable = when (defaultDenoiseMode) {
                MgcSpatialGpuDenoiseMode.SABRE_DEFAULT ->
                    finalStackResult.mgcSabreNoiseModelScale?.let {
                        it.isFinite() && it > 0f
                    } == true
                MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT ->
                    MultiFrameConfig.ENABLE_MGC_SPATIAL_DEFAULT_DENOISE &&
                        !finalStackResult.mgcSpatialReferenceOnlyDiagnostic &&
                        finalStackResult.mgcDenoiseCorrelation?.size == 128 &&
                        finalStackResult.mgcDenoiseReadNoise?.size == 3 &&
                        finalStackResult.mgcDenoiseShotNoise?.size == 3
                MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE -> true
            }
            if (defaultDenoiseRequested && !defaultDenoiseModelAvailable) {
                PLog.e(
                    TAG,
                    "RAW stack aborted: configured RAWmax base denoise cannot be baked " +
                        "without a complete ${rawMaxMergeMethod.name} noise model",
                )
                return@withContext
            }
            val defaultDenoised = processor.processMgcSpatialGpuLinearRgb(
                context = context,
                rawData = finalStackResult.fusedBayerBuffer,
                width = finalStackResult.width,
                height = finalStackResult.height,
                rowStride = spatialInputRowStepSamples * Short.SIZE_BYTES,
                samplesPerPixel = spatialInputSamples,
                gpuLinearRgbSource = finalStackResult.gpuLinearRgbSource,
                gpuBayerSource = finalStackResult.gpuBayerSource,
                metadata = mergeOutputMetadata,
                outputScale = rawStackOutputScale,
                sourcePixelsIncludeLensShadingCorrection =
                    finalStackResult.lensShadingCorrectionApplied,
                applyLensShadingCorrection = applyRawLensShading,
                mode = defaultDenoiseMode,
                lumaStrengthScale = if (defaultDenoiseRequested) {
                    configuredRawMaxLumaStrength
                } else {
                    0f
                },
                chromaStrengthScale = if (defaultDenoiseRequested) {
                    configuredRawMaxChromaStrength
                } else {
                    0f
                },
            )
            if (defaultDenoised == null) {
                PLog.e(
                    TAG,
                    "RAW stack aborted: MGC ${rawMaxMergeMethod.name} processing did not " +
                        "produce a GPU " +
                        "LinearRaw source",
                )
                return@withContext
            }
            val defaultDenoisedGpuSource = defaultDenoised.gpuLinearRgbSource
            // Merge storage and its process-local denoise model have both been
            // consumed. Downstream consumers keep the normalized default-denoised result on GPU.
            releaseInitialFusedBuffer()
            gpuSourceToRelease = defaultDenoisedGpuSource
            gpuBayerSourceToRelease = null
            if (finalStackResult.gpuLinearRgbSource?.textureId !=
                defaultDenoisedGpuSource.textureId
            ) {
                processor.releaseGpuLinearRgbSource(finalStackResult.gpuLinearRgbSource)
            }
            processor.releaseGpuBayerSource(finalStackResult.gpuBayerSource)
            val stackedRawMetadata = mergeOutputMetadata.copy(
                blackLevel = FloatArray(4),
                whiteLevel = 65535f,
                frameCount = 1,
                mgcDenoiseCorrelation = null,
                mgcDenoiseReadNoise = null,
                mgcDenoiseShotNoise = null,
                mgcSpatialStrengthMap = null,
                mgcSabreNoiseModelScale = null,
                mgcDenoiseTuningSnr = null,
            )

            val outputRawBlackBorderCrop =
                metadata.rawBlackBorderCrop.scaledForOutput(rawStackOutputScale)
            val stackedMetadata = metadata
                .withNormalizedRawLevelCorrectionsCleared("MGC default-denoised RAW stack")
                .copy(
                    cropRegion = null,
                    rawBlackBorderCrop = outputRawBlackBorderCrop,
                    // These fields describe the processor-specific FinishRaw denoise already
                    // baked into LinearRaw; the merge itself remains represented by the pixels.
                    rawDenoiseValue = if (defaultDenoiseRequested) {
                        configuredRawMaxLumaStrength
                    } else {
                        0f
                    },
                    rawChromaDenoiseValue = if (defaultDenoiseRequested) {
                        configuredRawMaxChromaStrength
                    } else {
                        0f
                    },
                )
            if (outputRawBlackBorderCrop != metadata.rawBlackBorderCrop) {
                PLog.i(
                    TAG,
                    "RAWmax black border crop mapped to output scale: " +
                        "scale=$rawStackOutputScale native=${metadata.rawBlackBorderCrop} " +
                        "output=$outputRawBlackBorderCrop"
                )
            }

            var updatedMetadata: MediaMetadata = stackedMetadata
            val rawSharpening = updatedMetadata.sharpening
                ?: RawSharpeningDefaults.normalize(sharpeningValue)
            val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
            val rawChromaNoiseReduction = updatedMetadata.chromaNoiseReduction
                ?: ChromaDenoiseDefaults.forRawCapture(chromaNoiseReductionValue)
            val rawResult = try {
                val imageLayout = SuperResolutionDngWriter.ImageLayout.LINEAR_RAW_RGB
                val inputSamplesPerPixel = 3
                val inputRowStepSamples = finalStackResult.width * inputSamplesPerPixel
                val dngDefaultCrop = RawDefaultCropOverride.scaleToSize(
                    crop = captureProcessingBounds,
                    sourceWidth = physicalRawCrop.width,
                    sourceHeight = physicalRawCrop.height,
                    targetWidth = finalStackResult.width,
                    targetHeight = finalStackResult.height,
                ) ?: Rect(0, 0, finalStackResult.width and -2, finalStackResult.height and -2)
                val profileOptions = rawDngProfilePreparationOptions(
                    context = context,
                    metadata = stackedMetadata,
                    width = finalStackResult.width,
                    height = finalStackResult.height,
                    defaultCrop = dngDefaultCrop,
                    cropRegion = null,
                    aspectRatio = aspectRatio,
                    rotation = rotation,
                    capturePreviewThumbnail = capturePreviewThumbnail,
                    capturePortraitMask = capturePortraitMask,
                    viewfinderMirroredHorizontally = characteristics.get(
                        CameraCharacteristics.LENS_FACING,
                    ) == CameraCharacteristics.LENS_FACING_FRONT,
                    viewfinderPreviewToCaptureRotationDegrees =
                        viewfinderPreviewToCaptureRotationDegrees(rotation, characteristics),
                )
                val profileStartMs = System.currentTimeMillis()
                val dngProfilePreparation = RawProcessor.prepareRawDngProfile(
                    rawBuffer = null,
                    gpuLinearRgbSource = defaultDenoisedGpuSource,
                    fastMomentsRawStats = finalStackResult.fastMomentsRawStats,
                    width = finalStackResult.width,
                    height = finalStackResult.height,
                    characteristics = characteristics,
                    captureResult = captureResult,
                    captureExposureCompensationEv = captureExposureCompensationEv,
                    cfaPattern = rawMetadata.cfaPattern,
                    blackLevel = FloatArray(4),
                    whiteLevel = 65535,
                    valueDomain = RawProcessor.RawBufferValueDomain.NORMALIZED_SENSOR_RANGE,
                    cfaCorrectionMode = stackedMetadata.rawCfaCorrectionMode,
                    baselineExposureEv = finalStackResult.baselineExposureEv,
                    imageLayout = imageLayout,
                    inputRowStepSamples = inputRowStepSamples,
                    inputColStepSamples = inputSamplesPerPixel,
                    pixelsIncludeLensShadingCorrection =
                        defaultDenoised.pixelsIncludeLensShadingCorrection,
                    options = profileOptions,
                    defaultCrop = dngDefaultCrop,
                    physicalRawCrop = physicalRawCrop,
                )
                if (dngProfilePreparation == null) {
                    PLog.e(TAG, "Failed to prepare shared RAW render/DNG profile")
                    return@withContext
                }
                updatedMetadata = updatedMetadata.copy(
                    customProperties = RawPhotonHdrRatioMetadata.write(
                        updatedMetadata.customProperties,
                        dngProfilePreparation.hdrRatio,
                        dngProfilePreparation.finalShortGain,
                    ),
                )
                val profileElapsedMs = System.currentTimeMillis() - profileStartMs

                suspend fun materializeAndPersistDng(): Boolean {
                    val dngBuffer = processor.materializeGpuLinearRgbSource(
                        defaultDenoisedGpuSource,
                    ) ?: return false
                    return try {
                        trySaveStackedRawDng(
                            context = context,
                            photoId = photoId,
                            dngFile = dngFile,
                            fusedBayerBuffer = dngBuffer,
                            width = finalStackResult.width,
                            height = finalStackResult.height,
                            rawMetadata = stackedRawMetadata,
                            stackBlackLevel = FloatArray(4),
                            stackWhiteLevel = 65535,
                            isNormalizedSensorData = true,
                            characteristics = characteristics,
                            captureResult = captureResult,
                            rotation = rotation,
                            aspectRatio = aspectRatio,
                            capturePreviewThumbnail = capturePreviewThumbnail,
                            thumbnail = null,
                            metadata = stackedMetadata,
                            shouldAutoSave = shouldAutoSave,
                            exportDngWithRawExport = exportDngWithRawExport,
                            imageLayout = imageLayout,
                            compression = SuperResolutionDngWriter.Compression.JPEG_LOSSLESS,
                            inputRowStepSamples = inputRowStepSamples,
                            inputColStepSamples = inputSamplesPerPixel,
                            pixelsIncludeLensShadingCorrection =
                                defaultDenoised.pixelsIncludeLensShadingCorrection,
                            baselineExposureEv = finalStackResult.baselineExposureEv,
                            preparedDngProfile = dngProfilePreparation,
                            preparedProfileOptions = profileOptions,
                            defaultCrop = dngDefaultCrop,
                        )
                    } finally {
                        LargeDirectBuffer.free(dngBuffer)
                    }
                }

                suspend fun renderPersistedDng() = processor.processForHdrSources(
                    context,
                    dngFile.absolutePath,
                    includeHdrReference = updatedMetadata.manualHdrEffectEnabled,
                    aspectRatio = aspectRatio,
                    cropRegion = updatedMetadata.cropRegion,
                    rotation = rotation,
                    exposureBias = exposureBias ?: 0f,
                    rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                    rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                    rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                    rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                    rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                    rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                    applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                    rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                    rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                    rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                    rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
                    sharpeningValue = rawSharpening,
                    processLocalMgcSharpenAttenuationScale =
                        finalStackResult.mgcSharpenAttenuationScale,
                    processLocalCoreImagingTuning =
                        finalStackResult.coreImagingTuning,
                    denoiseValue = rawNoiseReduction,
                    chromaDenoiseValue = rawChromaNoiseReduction,
                    rawDcpId = updatedMetadata.rawDcpId,
                    rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
                    rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                    rawHncsProfileId = updatedMetadata.rawHncsProfileId,
                    rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
                    rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
                    rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                    rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                    rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                    rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                    spectralFilmStock = updatedMetadata.spectralFilmStock,
                    spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                    spectralFilmTuning = SpectralFilmTuning(
                        cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                        mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                        yDensityGain = updatedMetadata.spectralFilmYDensityGain,
                    ),
                    onMetadata = { raw -> updatedMetadata = updatedMetadata.merge(raw) },
                )

                val directBufferCompatible =
                    RawProcessor.canRenderDngBufferDirectly(
                        width = finalStackResult.width,
                        height = finalStackResult.height,
                        characteristics = characteristics,
                    )
                val renderMetadata = if (directBufferCompatible) {
                    RawProcessor.buildLinearDngRenderMetadata(
                        width = finalStackResult.width,
                        height = finalStackResult.height,
                        characteristics = characteristics,
                        captureResult = captureResult,
                        baseMetadata = stackedRawMetadata,
                        defaultCrop = dngDefaultCrop,
                        rotation = rotation,
                        profilePreparation = dngProfilePreparation,
                    )
                } else {
                    null
                }
                val embeddedRenderPlan = renderMetadata?.let { preparedMetadata ->
                    SuperResolutionDngWriter.resolveEmbeddedRenderPlan(
                        characteristics = characteristics,
                        metadata = preparedMetadata,
                        imageLayout = imageLayout,
                        // Use the final prepared profile for the pre-persistence render as well as
                        // for DNG serialization, so both paths resolve the same black-render mode.
                        profileGainTableMap = preparedMetadata.profileGainTableMap,
                        profileToneCurve = null,
                    )
                }
                val canBypassDngPixels = directBufferCompatible &&
                    renderMetadata != null && embeddedRenderPlan != null

                if (canBypassDngPixels) {
                    val renderStartMs = System.currentTimeMillis()
                    val inMemoryResult = processor.processDngBufferForHdrSources(
                        context = context,
                        includeHdrReference = updatedMetadata.manualHdrEffectEnabled,
                        rawData = null,
                        width = finalStackResult.width,
                        height = finalStackResult.height,
                        rowStride = inputRowStepSamples * Short.SIZE_BYTES,
                        samplesPerPixel = inputSamplesPerPixel,
                        gpuLinearRgbSource = defaultDenoisedGpuSource,
                        metadata = checkNotNull(renderMetadata),
                        aspectRatio = aspectRatio,
                        cropRegion = updatedMetadata.cropRegion,
                        rotation = rotation,
                        exposureBias = exposureBias ?: 0f,
                        rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                        rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                        rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                        rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                        rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                        rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                        applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                        rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                        rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                        rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                        rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
                        sharpeningValue = rawSharpening,
                        denoiseValue = rawNoiseReduction,
                        chromaDenoiseValue = rawChromaNoiseReduction,
                        rawDcpId = updatedMetadata.rawDcpId,
                        rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
                        rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                        rawHncsProfileId = updatedMetadata.rawHncsProfileId,
                        rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
                        rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
                        embeddedDngRenderPlan = checkNotNull(embeddedRenderPlan),
                        rawRenderingEngine = updatedMetadata.rawRenderingEngine,
                        rawToneMappingParameters = updatedMetadata.rawToneMappingParameters,
                        rawCfaCorrectionMode = updatedMetadata.rawCfaCorrectionMode,
                        rawBlackBorderCrop = updatedMetadata.rawBlackBorderCrop,
                        spectralFilmStock = updatedMetadata.spectralFilmStock,
                        spectralFilmPrint = updatedMetadata.spectralFilmPrint,
                        spectralFilmTuning = SpectralFilmTuning(
                            cDensityGain = updatedMetadata.spectralFilmCDensityGain,
                            mDensityGain = updatedMetadata.spectralFilmMDensityGain,
                            yDensityGain = updatedMetadata.spectralFilmYDensityGain,
                        ),
                        onMetadata = { raw -> updatedMetadata = updatedMetadata.merge(raw) },
                    )
                    val renderCompletedMs = System.currentTimeMillis()
                    PLog.i(
                        TAG,
                        "RAW GPU handoff timing profile=${profileElapsedMs}ms " +
                            "render=${renderCompletedMs - renderStartMs}ms " +
                            "cpuMaterializationBeforeRender=false",
                    )
                    if (inMemoryResult != null) {
                        pendingDngWrite = async(
                            context = Dispatchers.IO,
                            start = CoroutineStart.LAZY,
                        ) {
                            try {
                                val dngStartMs = System.currentTimeMillis()
                                val written = materializeAndPersistDng()
                                PLog.i(
                                    TAG,
                                    "Deferred stacked DNG timing total=" +
                                        "${System.currentTimeMillis() - dngStartMs}ms success=$written",
                                )
                                written
                            } catch (error: Exception) {
                                PLog.e(TAG, "Deferred stacked DNG task failed", error)
                                false
                            }
                        }
                        PLog.i(
                            TAG,
                            "RAW GPU render completed; DNG materialization queued behind " +
                                "SDR JPEG publication",
                        )
                        inMemoryResult
                    } else {
                        PLog.w(TAG, "In-memory LinearRaw render failed; using persisted DNG fallback")
                        if (!materializeAndPersistDng()) {
                            PLog.e(TAG, "Failed to persist stacked RAW DNG for render fallback")
                            return@withContext
                        }
                        @Suppress("ExplicitGarbageCollectionCall")
                        System.gc()
                        renderPersistedDng() ?: return@withContext
                    }
                } else {
                    PLog.w(
                        TAG,
                        "RAW_LINEAR_DNG_BYPASS unavailable layout=LINEAR_RGB " +
                            "normalized=true " +
                            "bufferCompatible=$directBufferCompatible embeddedProfile=${embeddedRenderPlan != null}; " +
                            "using persisted DNG"
                    )
                    if (!materializeAndPersistDng()) {
                        PLog.e(TAG, "Failed to persist stacked RAW DNG before rendering preview")
                        return@withContext
                    }
                    @Suppress("ExplicitGarbageCollectionCall")
                    System.gc()
                    renderPersistedDng() ?: return@withContext
                }
            } finally {
                releaseInitialFusedBuffer()
            }
            var bitmap = rawResult.sdrBitmap
            if (updatedMetadata.isMirrored) {
                bitmap = BitmapUtils.flipHorizontal(bitmap)
            }
            updatedMetadata = updatedMetadata.copy(
                width = bitmap.width,
                height = bitmap.height,
                sharpening = rawSharpening,
                chromaNoiseReduction = rawChromaNoiseReduction,
            )
            val jpegWritten = FileOutputStream(tempFile).use { outputStream ->
                writeFinalJpeg(bitmap, outputStream, photoQuality)
            }
            if (!jpegWritten) {
                tempFile.delete()
                throw IOException("Failed to encode final stacked JPEG for $photoId")
            }
            if (!tempFile.renameTo(photoFile)) {
                tempFile.delete()
                throw IOException("Failed to publish final stacked JPEG for $photoId")
            }
            saveMetadata(context, photoId, updatedMetadata)
            PLog.i(TAG, "RAW output schedule stage=SDR_JPEG_PUBLISHED")
            pendingDngWrite?.let { write ->
                PLog.i(
                    TAG,
                    "RAW output schedule stage=DNG_MATERIALIZATION_START",
                )
                write.start()
            }
            val bokehBitmap = renderAndSaveBokehPhoto(context, photoId, updatedMetadata, bitmap)

            val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
                photoProcessor.prepareUltraHdrSourceFromRawResult(
                    context = context,
                    photoId = photoId,
                    rawResult = rawResult,
                    metadata = updatedMetadata,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    applyMirror = true,
                    preparedSdrBitmap = bokehBitmap,
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
                val jpegExported = exportPhoto(
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
                if (!jpegExported) {
                    PLog.e(TAG, "Stacked RAW JPEG auto-export failed for photo $photoId")
                }
            }
            preparedUltraHdrSource?.hdrReference?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.lutLuminanceGainMap?.bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                }
            }
            preparedUltraHdrSource?.sdrBase?.let {
                if (it !== bitmap && it !== bokehBitmap && !it.isRecycled) {
                    it.recycle()
                }
            }
            if (bokehBitmap !== bitmap && !bokehBitmap.isRecycled) {
                bokehBitmap.recycle()
            }
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        } finally {
            withContext(NonCancellable) {
                pendingDngWrite?.let { write ->
                    runCatching { write.await() }
                        .onSuccess { written ->
                            if (!written) {
                                PLog.e(TAG, "Deferred stacked DNG write did not complete successfully")
                            }
                        }
                        .onFailure { error ->
                            PLog.e(TAG, "Deferred stacked DNG write failed", error)
                        }
                }
                releaseStackCpuBuffer?.invoke()
                stackProcessor?.releaseGpuLinearRgbSource(gpuSourceToRelease)
                stackProcessor?.releaseGpuBayerSource(gpuBayerSourceToRelease)
            }
        }
    }

    private fun MediaMetadata.withNormalizedRawLevelCorrectionsCleared(source: String): MediaMetadata {
        val hasLevelOverride = rawBlackLevelMode != null ||
                rawCustomBlackLevel != null ||
                rawWhiteLevelMode != null ||
                rawCustomWhiteLevel != null
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
            rawWhiteLevelMode = null,
            rawCustomWhiteLevel = null
        )
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
        var updatedMetadata: MediaMetadata = metadata
        val rawSharpening = updatedMetadata.sharpening
            ?: RawSharpeningDefaults.normalize(sharpeningValue)
        val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, noiseReductionValue)
        val rawChromaNoiseReduction = updatedMetadata.chromaNoiseReduction
            ?: ChromaDenoiseDefaults.forRawCapture(chromaNoiseReductionValue)
        val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
            context,
            dngFile.absolutePath,
            includeHdrReference = updatedMetadata.manualHdrEffectEnabled,
            aspectRatio = aspectRatio,
            cropRegion = updatedMetadata.cropRegion,
            rotation = rotation,
            exposureBias = exposureBias ?: 0f,
            rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
            rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
            rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
            applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
            rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
            rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
            rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
            rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
            sharpeningValue = rawSharpening,
            processLocalCoreImagingTuning =
                PhotonCoreImagingTuning.fromCustomProperties(updatedMetadata.customProperties),
            denoiseValue = rawNoiseReduction,
            chromaDenoiseValue = rawChromaNoiseReduction,
            rawDcpId = updatedMetadata.rawDcpId,
            rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
            rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
            rawHncsProfileId = updatedMetadata.rawHncsProfileId,
            rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
            rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
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
            }
        ) ?: return
        var bitmap = rawResult.sdrBitmap

        if (updatedMetadata.isMirrored) {
            bitmap = BitmapUtils.flipHorizontal(bitmap)
        }
        updatedMetadata = updatedMetadata.copy(
            width = bitmap.width,
            height = bitmap.height,
            sharpening = rawSharpening,
            chromaNoiseReduction = rawChromaNoiseReduction
        )

        FileOutputStream(tempFile).use { outputStream ->
            writeFinalJpeg(bitmap, outputStream, photoQuality)
        }
        tempFile.renameTo(photoFile)
        saveMetadata(context, photoId, updatedMetadata)
        val bokehBitmap = renderAndSaveBokehPhoto(context, photoId, updatedMetadata, bitmap)

        val preparedUltraHdrSource = if (updatedMetadata.manualHdrEffectEnabled) {
            photoProcessor.prepareUltraHdrSourceFromRawResult(
                context = context,
                photoId = photoId,
                rawResult = rawResult,
                metadata = updatedMetadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                applyMirror = true,
                preparedSdrBitmap = bokehBitmap,
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
        preparedUltraHdrSource?.lutLuminanceGainMap?.bitmap?.let {
            if (!it.isRecycled) {
                it.recycle()
            }
        }
        preparedUltraHdrSource?.sdrBase?.let {
            if (it !== bitmap && it !== bokehBitmap && !it.isRecycled) {
                it.recycle()
            }
        }
        if (bokehBitmap !== bitmap && !bokehBitmap.isRecycled) {
            bokehBitmap.recycle()
        }
        if (!bitmap.isRecycled) {
            bitmap.recycle()
        }
    }

    private fun RawStackBufferLayout.toDngImageLayout(): SuperResolutionDngWriter.ImageLayout =
        when (this) {
            RawStackBufferLayout.CFA -> SuperResolutionDngWriter.ImageLayout.CFA
            RawStackBufferLayout.LINEAR_RGB -> SuperResolutionDngWriter.ImageLayout.LINEAR_RAW_RGB
        }

    private fun RawStackBufferLayout.toDngCompression(): SuperResolutionDngWriter.Compression =
        when (this) {
            RawStackBufferLayout.CFA -> SuperResolutionDngWriter.Compression.UNCOMPRESSED
            RawStackBufferLayout.LINEAR_RGB -> SuperResolutionDngWriter.Compression.JPEG_LOSSLESS
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
        captureMetadataResult: CaptureResult? = null,
        rotation: Int,
        aspectRatio: AspectRatio?,
        capturePreviewThumbnail: Bitmap?,
        thumbnail: Bitmap?,
        metadata: MediaMetadata,
        shouldAutoSave: Boolean,
        exportDngWithRawExport: Boolean,
        baselineExposureEv: Float? = null,
        profileGainTableMap: DngProfileGainTableMap? = null,
        imageLayout: SuperResolutionDngWriter.ImageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
        compression: SuperResolutionDngWriter.Compression = SuperResolutionDngWriter.Compression.UNCOMPRESSED,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
        pixelsIncludeLensShadingCorrection: Boolean = false,
        preparedDngProfile: RawDngProfilePreparation? = null,
        preparedProfileOptions: RawDngProfilePreparationOptions? = null,
        defaultCrop: Rect? = null,
    ): Boolean {
        val tempDngFile = File(dngFile.parentFile, "temp_stacked.dng")
        val captureInfo = metadata.toCaptureInfo()
        val rawDngDefaultCrop = RawProcessor.resolveCameraRawDefaultCrop(
            width = width,
            height = height,
            characteristics = characteristics,
            captureResult = captureResult,
        )
        val writtenRawDngDefaultCrop = defaultCrop
            ?: RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = width,
                height = height,
                rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                metadataDefaultCrop = rawDngDefaultCrop,
            ) ?: rawDngDefaultCrop
        val dngWritten = try {
            FileOutputStream(tempDngFile).use { outputStream ->
                RawProcessor.saveRawBufferToDng(
                    rawBuffer = fusedBayerBuffer,
                    width = width,
                    height = height,
                    characteristics = characteristics,
                    captureResult = captureResult,
                    captureMetadataResult = captureMetadataResult,
                    effectiveFocalLengthMm = captureInfo.focalLength,
                    effectiveFocalLength35mm = captureInfo.focalLength35mm,
                    captureInfo = captureInfo,
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
                    profileName = null,
                    profileToneCurve = null,
                    imageLayout = imageLayout,
                    compression = compression,
                    inputRowStepSamples = inputRowStepSamples,
                    inputColStepSamples = inputColStepSamples,
                    pixelsIncludeLensShadingCorrection =
                        pixelsIncludeLensShadingCorrection,
                    dngProfilePreparationOptions = preparedProfileOptions
                        ?: rawDngProfilePreparationOptions(
                            context = context,
                            metadata = metadata,
                            width = width,
                            height = height,
                            defaultCrop = rawDngDefaultCrop,
                            aspectRatio = aspectRatio,
                            rotation = rotation,
                            capturePreviewThumbnail = capturePreviewThumbnail,
                            viewfinderMirroredHorizontally = characteristics.get(
                                CameraCharacteristics.LENS_FACING,
                            ) == CameraCharacteristics.LENS_FACING_FRONT,
                            viewfinderPreviewToCaptureRotationDegrees =
                                viewfinderPreviewToCaptureRotationDegrees(
                                    rotation,
                                    characteristics,
                                ),
                        ),
                    // Serialize the resolved Camera2/ISZ crop through the standard DNG tags.
                    defaultCrop = writtenRawDngDefaultCrop,
                    preparedDngProfile = preparedDngProfile,
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
            if (!exportDng(context, photoId, dngFile, metadata)) {
                PLog.e(TAG, "Stacked RAW DNG auto-export failed for photo $photoId")
            }
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
        val whitePatched = DngWhiteLevelPatcher.patchFromMode(
            file = dngFile,
            mode = metadata.rawWhiteLevelMode,
            customWhiteLevel = metadata.rawCustomWhiteLevel
        )
        if (whitePatched) {
            PLog.d(TAG, "Applied DNG WhiteLevel correction (${metadata.rawWhiteLevelMode}) to ${dngFile.name}")
        }
        val cfaPatched = DngCfaPatternPatcher.patchFromMode(
            file = dngFile,
            mode = metadata.rawCfaCorrectionMode
        )
        if (cfaPatched) {
            PLog.d(TAG, "Applied DNG CFA correction (${metadata.rawCfaCorrectionMode}) to ${dngFile.name}")
        }
        return patched || whitePatched || cfaPatched
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
        exposureBias: Float? = null,
        captureExposureCompensationEv: Float = 0f,
        exportDngWithRawExport: Boolean = false,
        capturePreviewThumbnail: Bitmap? = null,
        capturePortraitMask: PortraitMaskSnapshot? = null,
        frameExposureProducts: List<Double?> = emptyList(),
        frameFocusDistances: List<Float?> = emptyList(),
        rawStackFrames: List<RawStackFrame> = emptyList(),
        rawMaxHdrFusionEnabled: Boolean = true,
        rawMaxSpatialOutputMode: MgcSpatialOutputMode = MgcSpatialOutputMode.BAYER,
        rawMaxMergeMethod: MgcMergeMethod = MgcMergeMethod.SPATIAL_BAYER,
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
                    superResolutionScale
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
                    superResolutionScale = superResolutionScale,
                    exposureBias = exposureBias,
                    captureExposureCompensationEv = captureExposureCompensationEv,
                    exportDngWithRawExport = exportDngWithRawExport,
                    capturePreviewThumbnail = capturePreviewThumbnail,
                    capturePortraitMask = capturePortraitMask,
                    frameExposureProducts = frameExposureProducts,
                    frameFocusDistances = frameFocusDistances,
                    rawStackFrames = rawStackFrames,
                    rawMaxHdrFusionEnabled = rawMaxHdrFusionEnabled,
                    rawMaxSpatialOutputMode = rawMaxSpatialOutputMode,
                    rawMaxMergeMethod = rawMaxMergeMethod,
                )
            }

            else -> {
                PLog.e(TAG, "Unsupported image format: $format")
                return@withContext null
            }
        }
    }

    private suspend fun rawDngProfilePreparationOptions(
        context: Context,
        metadata: MediaMetadata,
        width: Int,
        height: Int,
        defaultCrop: Rect?,
        cropRegion: Rect? = metadata.cropRegion,
        aspectRatio: AspectRatio?,
        rotation: Int,
        capturePreviewThumbnail: Bitmap?,
        viewfinderMirroredHorizontally: Boolean,
        viewfinderPreviewToCaptureRotationDegrees: Int,
        capturePortraitMask: PortraitMaskSnapshot? = null,
    ): RawDngProfilePreparationOptions {
        val exposureMode = RawAdaptiveExposureMode.resolve(
            usePhotonHdr = metadata.rawToneMappingParameters.usePhotonHdr,
            useLegacyAutoExposure = metadata.rawAutoExposure ?: true,
        )
        val generatePhotonPgtm = exposureMode.usesPhotonHdr
        val scalarViewfinderMatchingEnabled =
            exposureMode == RawAdaptiveExposureMode.OFF ||
                (exposureMode.usesLegacyAutoExposure &&
                    kotlin.math.abs(metadata.rawExposureCompensation ?: 0f) <= 0.0001f)
        val blackBorderDefaultCrop =
            RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = width,
                height = height,
                rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                metadataDefaultCrop = defaultCrop,
            )
        val statsBounds = RawDefaultCropOverride.resolveOutputSourceBounds(
            width = width,
            height = height,
            aspectRatio = aspectRatio,
            userCrop = cropRegion,
            metadataDefaultCrop = blackBorderDefaultCrop ?: defaultCrop,
        ).takeUnless { it.hasSameBounds(Rect(0, 0, width, height)) }
        val captureProfileRequired = generatePhotonPgtm ||
            (scalarViewfinderMatchingEnabled && capturePreviewThumbnail != null)
        val captureProfilePreparer = if (captureProfileRequired) {
            RawDngCaptureProfilePreparer { input ->
                RawCaptureProfileCoordinator.prepareCaptureProfile(
                    renderer = RawDemosaicProcessor.getInstance(),
                    context = context,
                    input = input,
                    mode = exposureMode,
                    aspectRatio = aspectRatio,
                    cropRegion = cropRegion,
                    rotation = rotation,
                    capturePreviewThumbnail = capturePreviewThumbnail,
                    capturePortraitMask = capturePortraitMask,
                    viewfinderMirroredHorizontally = viewfinderMirroredHorizontally,
                    viewfinderPreviewToCaptureRotationDegrees =
                        viewfinderPreviewToCaptureRotationDegrees,
                    statsBounds = statsBounds,
                    rawBlackPointCorrection = metadata.rawBlackPointCorrection ?: 0f,
                    rawWhitePointCorrection = metadata.rawWhitePointCorrection ?: 0f,
                    rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(
                        context,
                        metadata,
                    ),
                    applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(
                        context,
                        metadata,
                    ),
                    rawBlackBorderCrop = metadata.rawBlackBorderCrop,
                    rawNoiseProfileId = resolveRawNoiseProfileId(context, metadata),
                )
            }
        } else {
            null
        }
        PLog.i(
            TAG,
            "RAW_ADAPTIVE_EXPOSURE stage=DNG_PREPARE mode=$exposureMode " +
                "curve=DEFAULT blackBorderDefaultCrop=$blackBorderDefaultCrop " +
                "photonPgtm=$generatePhotonPgtm processingBounds=$statsBounds " +
                "scalarViewfinderMatching=$scalarViewfinderMatchingEnabled " +
                "capturePreview=${capturePreviewThumbnail != null} " +
                "portraitMask=${capturePortraitMask != null} " +
                "additionalExposureEv=${metadata.rawExposureCompensation ?: 0f}"
        )
        return RawDngProfilePreparationOptions(
            generatePhotonPgtm = generatePhotonPgtm,
            statsBounds = statsBounds,
            captureProfilePreparer = captureProfilePreparer,
        )
    }

    private fun didMainFlashFire(captureResult: CaptureResult?): Boolean {
        val flashState = captureResult?.get(CaptureResult.FLASH_STATE)
        if (flashState != CaptureResult.FLASH_STATE_FIRED &&
            flashState != CaptureResult.FLASH_STATE_PARTIAL
        ) {
            return false
        }

        val aeMode = captureResult.get(CaptureResult.CONTROL_AE_MODE)
        val flashMode = captureResult.get(CaptureResult.FLASH_MODE)
        return flashMode == CameraMetadata.FLASH_MODE_SINGLE ||
            aeMode == CameraMetadata.CONTROL_AE_MODE_ON_ALWAYS_FLASH ||
            aeMode == CameraMetadata.CONTROL_AE_MODE_ON_AUTO_FLASH ||
            aeMode == CameraMetadata.CONTROL_AE_MODE_ON_AUTO_FLASH_REDEYE
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

    /**
     * The captured preview bitmap is rotated from the already display-oriented preview, while
     * [rotation] also contains the sensor orientation. Removing that sensor component recovers
     * the exact clockwise rotation applied by CameraViewModel to the matching thumbnail.
     */
    private fun viewfinderPreviewToCaptureRotationDegrees(
        rotation: Int,
        characteristics: CameraCharacteristics,
    ): Int = Math.floorMod(
        rotation - (characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0),
        360,
    )

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
            PLog.w(TAG, "Failed to delete exported document URI: $uri", e)
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
            PLog.w(TAG, "Failed to create MediaStore delete request for $logContext", e)
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
    fun createDeleteRequest(
        context: Context,
        photoId: String,
        metadata: MediaMetadata?
    ): PendingIntent? {
        return try {
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                PLog.w(TAG, "createDeleteRequest requires Android 11+")
                return null
            }

            // Photon 列表项已携带完整元数据，直接使用当前快照，避免在删除交互中
            // 同步等待 Room 查询或 metadataMutex（例如导出正在写入元数据时）。
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
     * 不覆盖已有数据库记录，只为缺失的 photoId 重建最小可用元数据。
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
            } catch (e: CancellationException) {
                PLog.w(TAG, "Failed to update thumbnail for photo: $photoId", e)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to update thumbnail for photo: $photoId", e)
            }
        }
    }

    fun loadBitmap(
        context: Context,
        uri: Uri,
        maxEdge: Int? = null,
        preserveHdr: Boolean = false,
        maxByteCount: Long? = null,
    ): Bitmap? {
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

                val target = calculateBitmapDecodeTarget(
                    sourceWidth = info.size.width,
                    sourceHeight = info.size.height,
                    maxEdge = maxEdge,
                    maxByteCount = maxByteCount,
                    // HDR-capable hardware bitmaps may use RGBA_F16. Budget for the largest
                    // Canvas-visible pixel format before allocating the decode target.
                    assumedBytesPerPixel = if (preserveHdr) 8 else 4,
                )
                if (target.width != info.size.width || target.height != info.size.height) {
                    decoder.setTargetSize(target.width, target.height)
                }
            }
        }.getOrNull() ?: return null
        val decodedBitmap = bitmap.ensurePreviewCompatibleConfig(preserveHdr)
        if (maxByteCount != null && decodedBitmap.byteCount.toLong() > maxByteCount) {
            PLog.e(
                TAG,
                "Rejecting oversized decoded bitmap: uri=$uri " +
                    "size=${decodedBitmap.width}x${decodedBitmap.height} " +
                    "config=${decodedBitmap.config} bytes=${decodedBitmap.byteCount} " +
                    "limit=$maxByteCount preserveHdr=$preserveHdr"
            )
            decodedBitmap.recycle()
            return null
        }
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

    private suspend fun MediaMetadata.withImportedRawToneMapPreference(
        context: Context,
        isDng: Boolean,
        dngFile: File,
    ): MediaMetadata {
        val globalToneMappingParameters = ContentRepository.getInstance(context)
            .userPreferencesRepository
            .userPreferences
            .firstOrNull()
            ?.rawToneMappingParameters
            ?.normalized()
            ?: rawToneMappingParameters.normalized()
        val embeddedProfile = if (isDng) {
            DngEmbeddedProfile.readAllFrom(dngFile)
                .asSequence()
                .filterNot { it.isPhotonHdr }
                .filter { it.profile?.toneCurve?.isValid == true }
                .sortedBy { it.id != DngEmbeddedProfile.PRIMARY_PROFILE_ID }
                .firstOrNull()
        } else {
            null
        }
        val importedToneMappingParameters = when {
            embeddedProfile != null -> globalToneMappingParameters
                .withPhotonHdr(false)
                .withProfileToneMapMode(RawProfileToneMapMode.Profile)
            isDng -> globalToneMappingParameters.withPhotonHdr(false)
            else -> globalToneMappingParameters
        }
        PLog.d(
            TAG,
            "Applying RAW tone defaults to imported RAW: " +
                "profile=${importedToneMappingParameters.profileToneMapMode} " +
                "embeddedProfile=${embeddedProfile?.profileName ?: "none"} " +
                "photonHdr=${importedToneMappingParameters.usePhotonHdr} " +
                "dng=$isDng activation=${when {
                    embeddedProfile != null -> "embedded-profile"
                    isDng -> "manual-only"
                    else -> "global-default"
                }}"
        )
        return copy(
            rawEmbeddedDngProfileId = embeddedProfile?.id,
            rawToneMappingParameters = importedToneMappingParameters,
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
        deferRawPreview: Boolean = false,
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

                val isDng = mimeType?.contains("dng", ignoreCase = true) == true ||
                    fileName.endsWith(".dng", ignoreCase = true)
                val isRaw = mimeType?.contains("raw", ignoreCase = true) == true ||
                        isDng ||
                        fileName.endsWith(".rw2", ignoreCase = true) ||
                        fileName.endsWith(".arw", ignoreCase = true) ||
                        fileName.endsWith(".3fr", ignoreCase = true) ||
                        fileName.endsWith(".cr3", ignoreCase = true)

                if (isRaw) {
                    // --- RAW 处理逻辑 ---
                    // 1. 复制 RAW 文件
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        FileOutputStream(dngFile).use { output ->
                            input.copyTo(output)
                        }
                    }

                    var updatedMetadata: MediaMetadata = metadata
                        .withImportedRawToneMapPreference(context, isDng, dngFile)
                        .let { rawMetadata ->
                            rawMetadata.copy(
                                chromaNoiseReduction = rawMetadata.chromaNoiseReduction
                                    ?: ChromaDenoiseDefaults.RAW_CAPTURE_DEFAULT_STRENGTH
                            )
                        }
                    if (deferRawPreview) {
                        val metadataSaved = saveMetadata(context, photoId, updatedMetadata)
                        if (!metadataSaved) {
                            photoDir.deleteRecursively()
                            return@withContext null
                        }
                    } else {
                        // 3. 处理 RAW 以生成 JPEG 预览
                        val rawNoiseReduction = resolveNoiseReduction(updatedMetadata, 0f)
                        val rawChromaNoiseReduction = updatedMetadata.chromaNoiseReduction
                            ?: ChromaDenoiseDefaults.RAW_CAPTURE_DEFAULT_STRENGTH
                        val processedBitmap = RawDemosaicProcessor.getInstance().process(
                            context,
                            dngFile.absolutePath, null, null, 0,
                            rawExposureCompensation = updatedMetadata.rawExposureCompensation ?: 0f,
                            rawHighlightsAdjustment = updatedMetadata.rawHighlightsAdjustment ?: 0f,
                            rawShadowsAdjustment = updatedMetadata.rawShadowsAdjustment ?: 0f,
                            rawBlackPointCorrection = updatedMetadata.rawBlackPointCorrection ?: 0f,
                            rawWhitePointCorrection = updatedMetadata.rawWhitePointCorrection ?: 0f,
                            rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                            applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                            rawBlackLevelMode = updatedMetadata.rawBlackLevelMode,
                            rawCustomBlackLevel = updatedMetadata.rawCustomBlackLevel,
                            rawWhiteLevelMode = updatedMetadata.rawWhiteLevelMode,
                            rawCustomWhiteLevel = updatedMetadata.rawCustomWhiteLevel,
                            sharpeningValue = RawSharpeningDefaults.DEFAULT_STRENGTH,
                            processLocalCoreImagingTuning =
                                PhotonCoreImagingTuning.fromCustomProperties(
                                    updatedMetadata.customProperties,
                                ),
                            denoiseValue = rawNoiseReduction,
                            chromaDenoiseValue = rawChromaNoiseReduction,
                            rawDcpId = updatedMetadata.rawDcpId,
                            rawEmbeddedDngProfileId = updatedMetadata.rawEmbeddedDngProfileId,
                            rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                            rawHncsProfileId = updatedMetadata.rawHncsProfileId,
                            rawHncsRenderIntent = updatedMetadata.rawHncsRenderIntent,
                            rawHncsFilmCurveMode = updatedMetadata.rawHncsFilmCurveMode,
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
                                rotation = 0,
                                chromaNoiseReduction = rawChromaNoiseReduction
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
                    }
                    if (!deferRawPreview && photoFile.exists()) {
                        syncImportedRawMetadataToOriginalJpeg(
                            context = context,
                            photoId = photoId,
                            photoFile = photoFile,
                        )
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

                if (!(isRaw && deferRawPreview)) {
                    val importedMetadata = loadMetadata(context, photoId) ?: metadata
                    queueDetailHdrCacheBuild(
                        context = context,
                        photoId = photoId,
                        metadata = importedMetadata,
                        sharpening = importedMetadata.sharpening ?: 0f,
                        noiseReduction = importedMetadata.noiseReduction ?: 0f,
                        chromaNoiseReduction = importedMetadata.chromaNoiseReduction ?: 0f
                    )
                }

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
        forceRegeneratePhotonPgtm: Boolean = false,
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
                val rawChromaNoiseReduction = rawMetadata.chromaNoiseReduction
                    ?: ChromaDenoiseDefaults.RAW_CAPTURE_DEFAULT_STRENGTH
                val processedBitmap = RawDemosaicProcessor.getInstance().process(
                    context,
                    dngFile.absolutePath, metadata?.ratio, metadata?.cropRegion, 0,
                    rawExposureCompensation = updatedMetadata?.rawExposureCompensation ?: 0f,
                    rawHighlightsAdjustment = updatedMetadata?.rawHighlightsAdjustment ?: 0f,
                    rawShadowsAdjustment = updatedMetadata?.rawShadowsAdjustment ?: 0f,
                    rawBlackPointCorrection = updatedMetadata?.rawBlackPointCorrection ?: 0f,
                    rawWhitePointCorrection = updatedMetadata?.rawWhitePointCorrection ?: 0f,
                    rawAutoWhiteBalanceEstimate = resolveRawAutoWhiteBalanceEstimate(context, updatedMetadata),
                    applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(context, updatedMetadata),
                    rawBlackLevelMode = updatedMetadata?.rawBlackLevelMode,
                    rawCustomBlackLevel = updatedMetadata?.rawCustomBlackLevel,
                    rawWhiteLevelMode = updatedMetadata?.rawWhiteLevelMode,
                    rawCustomWhiteLevel = updatedMetadata?.rawCustomWhiteLevel,
                    sharpeningValue = updatedMetadata?.sharpening
                        ?: RawSharpeningDefaults.DEFAULT_STRENGTH,
                    processLocalCoreImagingTuning =
                        PhotonCoreImagingTuning.fromCustomProperties(
                            updatedMetadata?.customProperties.orEmpty(),
                        ),
                    denoiseValue = rawNoiseReduction,
                    chromaDenoiseValue = rawChromaNoiseReduction,
                    rawDcpId = updatedMetadata?.rawDcpId,
                    rawEmbeddedDngProfileId = updatedMetadata?.rawEmbeddedDngProfileId,
                    rawNoiseProfileId = resolveRawNoiseProfileId(context, updatedMetadata),
                    rawHncsProfileId = updatedMetadata?.rawHncsProfileId,
                    rawHncsRenderIntent = updatedMetadata?.rawHncsRenderIntent
                        ?: MediaMetadata().rawHncsRenderIntent,
                    rawHncsFilmCurveMode = updatedMetadata?.rawHncsFilmCurveMode
                        ?: MediaMetadata().rawHncsFilmCurveMode,
                    rawRenderingEngine = updatedMetadata?.rawRenderingEngine ?: MediaMetadata().rawRenderingEngine,
                    rawToneMappingParameters = updatedMetadata?.rawToneMappingParameters ?: MediaMetadata().rawToneMappingParameters,
                    forceRegeneratePhotonPgtm = forceRegeneratePhotonPgtm,
                    photonHdrRatio = RawPhotonHdrRatioMetadata.read(
                        rawMetadata.customProperties,
                    ),
                    photonSourceToShortGain = RawPhotonHdrRatioMetadata.readFinalShortGain(
                        rawMetadata.customProperties,
                    ),
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
                            hasAiDenoisedBase = false,
                            chromaNoiseReduction = rawChromaNoiseReduction
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

    private suspend fun syncImportedRawMetadataToOriginalJpeg(
        context: Context,
        photoId: String,
        photoFile: File,
    ) {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeFile(photoFile.absolutePath, options)
        val outputWidth = options.outWidth
        val outputHeight = options.outHeight
        if (outputWidth <= 0 || outputHeight <= 0) {
            PLog.w(TAG, "Unable to read imported RAW original.jpg dimensions: ${photoFile.absolutePath}")
            return
        }
        updateMetadata(context, photoId) { current ->
            current.copy(
                width = outputWidth,
                height = outputHeight,
                rotation = 0,
            )
        }
        PLog.i(
            TAG,
            "RAW_CROP_TRACE stage=IMPORT_METADATA originalJpeg=${outputWidth}x$outputHeight " +
                "photoId=$photoId"
        )
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
