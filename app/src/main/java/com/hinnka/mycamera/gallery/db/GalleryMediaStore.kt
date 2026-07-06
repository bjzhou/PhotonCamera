package com.hinnka.mycamera.gallery.db

import android.content.Context
import android.graphics.ColorSpace
import android.graphics.Rect
import android.net.Uri
import android.os.Environment
import android.provider.OpenableColumns
import androidx.core.net.toUri
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.gallery.MediaType
import com.hinnka.mycamera.hdr.HdrGainmapStrength
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.io.File

object GalleryMediaStore {
    private const val TAG = "GalleryMediaStore"
    private const val PREFS_NAME = "gallery_media_store"
    private const val KEY_FILE_INDEXED = "file_indexed_v2"
    private const val PHOTOS_DIR = "photos"
    private const val BURST_DIR = "burst"
    private const val PHOTO_FILE = "original.jpg"
    private const val HIGH_QUALITY_PHOTO_FILE = "original.heic"
    private const val VIDEO_FILE = "video.mp4"
    private const val DNG_FILE = "original.dng"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"

    private val migrationMutex = Mutex()

    @Volatile
    private var migrationChecked = false

    suspend fun ensureMigrated(context: Context) {
        if (migrationChecked) return
        val appContext = context.applicationContext
        migrationMutex.withLock {
            if (migrationChecked) return
            withContext(Dispatchers.IO) {
                val prefs = appContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
                val dao = GalleryDatabase.getInstance(appContext).galleryMediaDao()
                val shouldIndex = !prefs.getBoolean(KEY_FILE_INDEXED, false) || dao.count() == 0
                if (shouldIndex) {
                    val entities = getPhotosBaseDir(appContext)
                        .listFiles()
                        ?.asSequence()
                        ?.filter { it.isDirectory }
                        ?.mapNotNull { buildMigrateEntity(appContext, it) }
                        ?.toList()
                        ?: emptyList()
                    if (entities.isNotEmpty()) dao.upsertAll(entities)
                    prefs.edit().putBoolean(KEY_FILE_INDEXED, true).apply()
                    PLog.d(TAG, "File gallery index complete: ${entities.size} records")
                }
                migrationChecked = true
            }
        }
    }

    suspend fun loadMetadata(context: Context, photoId: String): MediaMetadata? {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            val dao = GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao()
            val entity = dao.getById(photoId) ?: return@withContext null
            entity.toMetadata()
        }
    }

    suspend fun saveMetadata(context: Context, photoId: String, metadata: MediaMetadata): Boolean {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            try {
                val dao = GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao()
                val existingDateAdded = dao.getById(photoId)?.dateAdded?.takeIf { it > 0L }
                dao.upsert(
                    buildEntity(
                        context.applicationContext,
                        photoId,
                        metadata,
                        existingDateAdded = existingDateAdded
                    )
                )
                true
            } catch (e: Exception) {
                if (e is CancellationException) throw e
                PLog.e(TAG, "Failed to save metadata to DB for photo: $photoId", e)
                false
            }
        }
    }

    suspend fun updateMetadata(
        context: Context,
        photoId: String,
        update: (MediaMetadata) -> MediaMetadata
    ): MediaMetadata? {
        val current = loadMetadata(context, photoId) ?: return null
        val updated = update(current)
        return if (saveMetadata(context, photoId, updated)) updated else null
    }

    suspend fun deleteMedia(context: Context, photoId: String) {
        ensureMigrated(context)
        withContext(Dispatchers.IO) {
            GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao().deleteById(photoId)
        }
    }

    suspend fun queryPhotos(context: Context, offset: Int, limit: Int): List<MediaData> {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            val dao = GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao()
            val list = dao.queryPage(offset, limit)
            val result = list.mapNotNull { entity ->
                entity.toMediaData(context.applicationContext, entity.toMetadata())
            }
            result
        }
    }

    suspend fun queryLatestPhoto(context: Context): MediaData? {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            val dao = GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao()
            dao.queryPage(offset = 0, limit = 1).firstNotNullOfOrNull { entity ->
                entity.toMediaData(context.applicationContext, entity.toMetadata())
            }
        }
    }

    suspend fun getPhotoData(context: Context, photoId: String): MediaData? {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            val dao = GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao()
            val entity = dao.getById(photoId) ?: return@withContext null
            entity.toMediaData(context.applicationContext, entity.toMetadata())
        }
    }

    suspend fun getPhotoIds(context: Context): List<String> {
        ensureMigrated(context)
        return withContext(Dispatchers.IO) {
            GalleryDatabase.getInstance(context.applicationContext).galleryMediaDao().getIds()
        }
    }

    private fun buildMigrateEntity(context: Context, photoDir: File): GalleryMediaEntity? {
        val metadataFile = File(photoDir, "metadata.json")
        if (!metadataFile.exists()) return null
        val content = metadataFile.readText()
        val metadata = MediaMetadata.fromLegacyJson(content) ?: return null
        return buildEntity(context, photoDir.name, metadata)
    }

    private fun buildEntity(
        context: Context,
        photoId: String,
        metadata: MediaMetadata,
        existingDateAdded: Long? = null
    ): GalleryMediaEntity {
        val photoDir = getPhotoDir(context, photoId)
        val photoFile = File(photoDir, PHOTO_FILE)
        val thumbnailFile = File(photoDir, THUMBNAIL_FILE)
        val videoFile = File(photoDir, VIDEO_FILE)
        val dngFile = File(photoDir, DNG_FILE)
        val highQualityPhotoFile = File(photoDir, HIGH_QUALITY_PHOTO_FILE)
        val displayFile = photoFile.takeIf { it.exists() } ?: highQualityPhotoFile.takeIf { it.exists() }
        val originalFile = dngFile.takeIf { it.exists() } ?: highQualityPhotoFile.takeIf { it.exists() } ?: photoFile
        val sourceOnlySize = if (displayFile == null) {
            metadata.sourceUri?.let { runCatching { queryContentSize(context, Uri.parse(it)) }.getOrNull() } ?: 0L
        } else {
            0L
        }
        val isVideo = metadata.mediaType == MediaType.VIDEO
        val initialDateAdded = if (isVideo) {
            photoDir.lastModified().takeIf { it > 0L } ?: System.currentTimeMillis()
        } else {
            originalFile.lastModified().takeIf { originalFile.exists() && it > 0L }
                ?: photoDir.lastModified().takeIf { it > 0L }
                ?: System.currentTimeMillis()
        }
        val dateAdded = existingDateAdded ?: initialDateAdded
        return GalleryMediaEntity(
            id = photoId,
            mediaType = metadata.mediaType.name,
            dateAdded = dateAdded,
            size = displayFile?.length() ?: sourceOnlySize,
            photoPath = photoFile.absolutePath,
            thumbnailPath = thumbnailFile.absolutePath,
            videoPath = videoFile.absolutePath,
            dngPath = dngFile.absolutePath,
            yuvPath = highQualityPhotoFile.absolutePath,
            hasOriginal = displayFile != null,
            hasThumbnail = thumbnailFile.exists(),
            hasVideo = videoFile.exists(),
            hasDng = dngFile.exists(),
            hasYuv = highQualityPhotoFile.exists(),
            isBurstPhoto = hasBurstPhotos(photoDir),
            updatedAt = System.currentTimeMillis(),
            version = metadata.version,
            lutId = metadata.lutId,
            tonemapMode = metadata.tonemapMode,
            colorRecipeParams = metadata.colorRecipeParams,
            baselineTarget = metadata.baselineTarget?.name,
            baselineLutId = metadata.baselineLutId,
            baselineColorRecipeParams = metadata.baselineColorRecipeParams,
            sharpening = metadata.sharpening,
            noiseReduction = metadata.noiseReduction,
            chromaNoiseReduction = metadata.chromaNoiseReduction,
            captureNoiseReductionLevel = metadata.captureNoiseReductionLevel,
            rawDenoiseValue = metadata.rawDenoiseValue,
            rawExposureCompensation = metadata.rawExposureCompensation,
            rawAutoExposure = metadata.rawAutoExposure,
            rawHighlightsAdjustment = metadata.rawHighlightsAdjustment,
            rawShadowsAdjustment = metadata.rawShadowsAdjustment,
            rawBlackPointCorrection = metadata.rawBlackPointCorrection,
            rawWhitePointCorrection = metadata.rawWhitePointCorrection,
            rawAutoWhiteBalanceEstimate = metadata.rawAutoWhiteBalanceEstimate,
            rawLensShadingCorrectionEnabled = metadata.rawLensShadingCorrectionEnabled,
            rawDcpId = metadata.rawDcpId,
            rawColorEngine = metadata.rawRenderingEngine.name,
            rawAgxBlackRelativeExposure = metadata.rawToneMappingParameters.agxBlackRelativeExposure,
            rawAgxWhiteRelativeExposure = metadata.rawToneMappingParameters.agxWhiteRelativeExposure,
            rawAgxToe = metadata.rawToneMappingParameters.agxToe,
            rawAgxShoulder = metadata.rawToneMappingParameters.agxShoulder,
            rawFilmicBlackRelativeExposure = metadata.rawToneMappingParameters.filmicBlackRelativeExposure,
            rawFilmicWhiteRelativeExposure = metadata.rawToneMappingParameters.filmicWhiteRelativeExposure,
            rawGooglePixelToneMap = metadata.rawToneMappingParameters.useGooglePixelToneMap,
            rawOppoMasterToneMap = metadata.rawToneMappingParameters.useOppoMasterToneMap,
            frameId = metadata.frameId,
            width = metadata.width,
            height = metadata.height,
            ratio = metadata.ratio?.name,
            cropLeft = metadata.cropRegion?.left,
            cropTop = metadata.cropRegion?.top,
            cropRight = metadata.cropRegion?.right,
            cropBottom = metadata.cropRegion?.bottom,
            rotation = metadata.rotation,
            deviceModel = metadata.deviceModel,
            brand = metadata.brand,
            dateTaken = metadata.dateTaken,
            location = metadata.location,
            latitude = metadata.latitude,
            longitude = metadata.longitude,
            altitude = metadata.altitude,
            iso = metadata.iso,
            shutterSpeed = metadata.shutterSpeed,
            focalLength = metadata.focalLength,
            focalLength35mm = metadata.focalLength35mm,
            aperture = metadata.aperture,
            exposureBias = metadata.exposureBias,
            isImported = metadata.isImported,
            sourceUri = metadata.sourceUri,
            mimeType = metadata.mimeType ?: if (isVideo) null else "image/jpeg",
            durationMs = metadata.durationMs,
            frameRate = metadata.frameRate,
            bitrate = metadata.bitrate,
            rotationDegrees = metadata.rotationDegrees,
            hasAudio = metadata.hasAudio,
            videoWidth = metadata.videoWidth,
            videoHeight = metadata.videoHeight,
            customProperties = GalleryDelimitedCodec.encodeMap(metadata.customProperties),
            exportedUris = GalleryDelimitedCodec.encodeList(metadata.exportedUris),
            computationalAperture = metadata.computationalAperture,
            focusPointX = metadata.focusPointX,
            focusPointY = metadata.focusPointY,
            postCropLeft = metadata.postCropRegion?.left,
            postCropTop = metadata.postCropRegion?.top,
            postCropRight = metadata.postCropRegion?.right,
            postCropBottom = metadata.postCropRegion?.bottom,
            presentationTimestampUs = metadata.presentationTimestampUs,
            droMode = metadata.droMode,
            software = metadata.software,
            isMirrored = metadata.isMirrored,
            colorSpace = metadata.colorSpace.name,
            manualHdrEffectEnabled = metadata.manualHdrEffectEnabled,
            hdrEffectStrength = metadata.hdrEffectStrength,
            hasEmbeddedGainmap = metadata.hasEmbeddedGainmap,
            dynamicRangeProfile = metadata.dynamicRangeProfile,
            captureMode = metadata.captureMode,
            multipleExposureFrameCount = metadata.multipleExposureFrameCount,
            hasAiDenoisedBase = metadata.hasAiDenoisedBase,
            aiDenoiseStrength = metadata.aiDenoiseStrength,
            rawBlackLevelMode = metadata.rawBlackLevelMode,
            rawCustomBlackLevel = metadata.rawCustomBlackLevel,
            rawWhiteLevelMode = metadata.rawWhiteLevelMode,
            rawCfaCorrectionMode = metadata.rawCfaCorrectionMode,
            rawBlackBorderCropLeftPx = metadata.rawBlackBorderCrop.leftPx,
            rawBlackBorderCropTopPx = metadata.rawBlackBorderCrop.topPx,
            rawBlackBorderCropRightPx = metadata.rawBlackBorderCrop.rightPx,
            rawBlackBorderCropBottomPx = metadata.rawBlackBorderCrop.bottomPx,
            rawDROEnabled = false,
            cameraId = metadata.cameraId,
            applyEffectsToVideo = metadata.applyEffectsToVideo,
            spectralFilmEnabled = false,
            spectralFilmStock = metadata.spectralFilmStock,
            spectralFilmPrint = metadata.spectralFilmPrint,
            spectralFilmCDensityGain = metadata.spectralFilmCDensityGain,
            spectralFilmMDensityGain = metadata.spectralFilmMDensityGain,
            spectralFilmYDensityGain = metadata.spectralFilmYDensityGain
        )
    }

    private fun GalleryMediaEntity.toMediaData(context: Context, metadata: MediaMetadata): MediaData? {
        val photoDir = getPhotoDir(context, id)
        val photoFile = File(photoDir, PHOTO_FILE)
        val thumbnailFile = File(photoDir, THUMBNAIL_FILE)
        val videoFile = File(photoDir, VIDEO_FILE)
        val dngFile = File(photoDir, DNG_FILE)
        val highQualityPhotoFile = File(photoDir, HIGH_QUALITY_PHOTO_FILE)
        val thumbnailUri = when {
            thumbnailFile.exists() -> Uri.fromFile(thumbnailFile)
            sourceUri != null -> sourceUri.toUri()
            else -> return null
        }
        val resolvedType = runCatching { MediaType.valueOf(mediaType) }.getOrDefault(MediaType.IMAGE)
        if (resolvedType == MediaType.VIDEO) {
            val resolvedSourceUri = sourceUri?.let(Uri::parse) ?: return null
            return MediaData(
                id = id,
                uri = resolvedSourceUri,
                thumbnailUri = thumbnailUri,
                displayName = resolvedSourceUri.lastPathSegment ?: "video_$id",
                dateAdded = dateAdded,
                size = size,
                width = videoWidth ?: width,
                height = videoHeight ?: height,
                mediaType = MediaType.VIDEO,
                mimeType = mimeType,
                durationMs = durationMs,
                sourceUri = resolvedSourceUri,
                metadata = metadata
            )
        }

        val displayFile = photoFile.takeIf { it.exists() } ?: highQualityPhotoFile.takeIf { it.exists() }
        if (displayFile == null) {
            val resolvedSourceUri = sourceUri?.let(Uri::parse) ?: return null
            return MediaData(
                id = id,
                uri = resolvedSourceUri,
                thumbnailUri = thumbnailUri,
                displayName = resolvedSourceUri.lastPathSegment ?: "image_$id",
                dateAdded = dateAdded,
                size = size,
                width = width,
                height = height,
                mediaType = MediaType.IMAGE,
                mimeType = mimeType ?: "image/jpeg",
                sourceUri = resolvedSourceUri,
                isBurstPhoto = hasBurstPhotos(photoDir),
                metadata = metadata
            )
        }
        return MediaData(
            id = id,
            uri = Uri.fromFile(displayFile),
            thumbnailUri = thumbnailUri,
            displayName = displayFile.name,
            dateAdded = dateAdded,
            size = displayFile.length(),
            width = width,
            height = height,
            mediaType = MediaType.IMAGE,
            mimeType = mimeType ?: if (displayFile.extension.equals("heic", ignoreCase = true)) "image/heic" else "image/jpeg",
            sourceUri = sourceUri?.let(Uri::parse),
            isMotionPhoto = videoFile.exists(),
            isBurstPhoto = hasBurstPhotos(photoDir),
            metadata = metadata
        )
    }

    private fun GalleryMediaEntity.toMetadata(): MediaMetadata {
        return MediaMetadata(
            version = version.takeIf { it > 0 } ?: MediaMetadata().version,
            mediaType = runCatching { MediaType.valueOf(mediaType) }.getOrDefault(MediaType.IMAGE),
            lutId = lutId,
            tonemapMode = tonemapMode,
            colorRecipeParams = colorRecipeParams,
            baselineTarget = baselineTarget?.let { runCatching { BaselineColorCorrectionTarget.valueOf(it) }.getOrNull() },
            baselineLutId = baselineLutId,
            baselineColorRecipeParams = baselineColorRecipeParams,
            sharpening = sharpening,
            noiseReduction = noiseReduction,
            chromaNoiseReduction = chromaNoiseReduction,
            captureNoiseReductionLevel = captureNoiseReductionLevel,
            rawDenoiseValue = rawDenoiseValue,
            rawExposureCompensation = rawExposureCompensation,
            rawAutoExposure = rawAutoExposure,
            rawHighlightsAdjustment = rawHighlightsAdjustment,
            rawShadowsAdjustment = rawShadowsAdjustment,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
            rawLensShadingCorrectionEnabled = rawLensShadingCorrectionEnabled,
            rawDcpId = rawDcpId,
            rawRenderingEngine = RawRenderingEngine.fromPersistedName(
                rawColorEngine,
                fallback = RawRenderingEngine.AdobeCurve
            ),
            rawToneMappingParameters = RawToneMappingParameters(
                agxBlackRelativeExposure = rawAgxBlackRelativeExposure,
                agxWhiteRelativeExposure = rawAgxWhiteRelativeExposure,
                agxToe = rawAgxToe,
                agxShoulder = rawAgxShoulder,
                filmicBlackRelativeExposure = rawFilmicBlackRelativeExposure,
                filmicWhiteRelativeExposure = rawFilmicWhiteRelativeExposure,
                useGooglePixelToneMap = rawGooglePixelToneMap,
                useOppoMasterToneMap = rawOppoMasterToneMap
            ).normalized(),
            frameId = frameId,
            width = width,
            height = height,
            ratio = ratio?.let { runCatching { AspectRatio.valueOf(it) }.getOrNull() },
            cropRegion = rectOrNull(cropLeft, cropTop, cropRight, cropBottom),
            rotation = rotation,
            deviceModel = deviceModel,
            brand = brand,
            dateTaken = dateTaken,
            location = location,
            latitude = latitude,
            longitude = longitude,
            altitude = altitude,
            iso = iso,
            shutterSpeed = shutterSpeed,
            focalLength = focalLength,
            focalLength35mm = focalLength35mm,
            aperture = aperture,
            exposureBias = exposureBias,
            isImported = isImported,
            sourceUri = sourceUri,
            mimeType = mimeType,
            durationMs = durationMs,
            frameRate = frameRate,
            bitrate = bitrate,
            rotationDegrees = rotationDegrees,
            hasAudio = hasAudio,
            videoWidth = videoWidth,
            videoHeight = videoHeight,
            customProperties = GalleryDelimitedCodec.decodeMap(customProperties),
            exportedUris = GalleryDelimitedCodec.decodeList(exportedUris),
            computationalAperture = computationalAperture,
            focusPointX = focusPointX,
            focusPointY = focusPointY,
            postCropRegion = rectOrNull(postCropLeft, postCropTop, postCropRight, postCropBottom),
            presentationTimestampUs = presentationTimestampUs,
            droMode = droMode,
            software = software,
            isMirrored = isMirrored,
            colorSpace = runCatching { ColorSpace.Named.valueOf(colorSpace) }.getOrDefault(ColorSpace.Named.SRGB),
            manualHdrEffectEnabled = manualHdrEffectEnabled,
            hdrEffectStrength = HdrGainmapStrength.coerce(hdrEffectStrength),
            hasEmbeddedGainmap = hasEmbeddedGainmap,
            dynamicRangeProfile = dynamicRangeProfile,
            captureMode = captureMode,
            multipleExposureFrameCount = multipleExposureFrameCount,
            hasAiDenoisedBase = hasAiDenoisedBase,
            aiDenoiseStrength = aiDenoiseStrength,
            rawBlackLevelMode = rawBlackLevelMode,
            rawCustomBlackLevel = rawCustomBlackLevel,
            rawWhiteLevelMode = rawWhiteLevelMode,
            rawCfaCorrectionMode = rawCfaCorrectionMode,
            rawBlackBorderCrop = RawBlackBorderCrop(
                leftPx = rawBlackBorderCropLeftPx,
                topPx = rawBlackBorderCropTopPx,
                rightPx = rawBlackBorderCropRightPx,
                bottomPx = rawBlackBorderCropBottomPx
            ),
            cameraId = cameraId,
            applyEffectsToVideo = applyEffectsToVideo,
            spectralFilmStock = spectralFilmStock,
            spectralFilmPrint = spectralFilmPrint,
            spectralFilmCDensityGain = spectralFilmCDensityGain,
            spectralFilmMDensityGain = spectralFilmMDensityGain,
            spectralFilmYDensityGain = spectralFilmYDensityGain
        )
    }

    private fun rectOrNull(left: Int?, top: Int?, right: Int?, bottom: Int?): Rect? {
        if (left == null || top == null || right == null || bottom == null) return null
        return Rect(left, top, right, bottom)
    }

    private fun getPhotosBaseDir(context: Context): File {
        return File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), PHOTOS_DIR)
    }

    private fun getPhotoDir(context: Context, photoId: String): File {
        return File(getPhotosBaseDir(context), photoId)
    }

    private fun hasBurstPhotos(photoDir: File): Boolean {
        val burstDir = File(photoDir, BURST_DIR)
        return burstDir.exists() && (burstDir.listFiles()?.isNotEmpty() == true)
    }

    private fun queryContentSize(context: Context, uri: Uri): Long {
        context.contentResolver.query(uri, arrayOf(OpenableColumns.SIZE), null, null, null)?.use { cursor ->
            val sizeColumn = cursor.getColumnIndex(OpenableColumns.SIZE)
            if (sizeColumn >= 0 && cursor.moveToFirst()) {
                return cursor.getLong(sizeColumn)
            }
        }
        return context.contentResolver.openFileDescriptor(uri, "r")?.use { descriptor ->
            descriptor.statSize
        } ?: 0L
    }
}
