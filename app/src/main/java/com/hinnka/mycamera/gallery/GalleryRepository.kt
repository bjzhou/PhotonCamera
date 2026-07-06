package com.hinnka.mycamera.gallery

import android.content.Context
import android.content.ContentUris
import android.net.Uri
import android.provider.MediaStore
import com.hinnka.mycamera.gallery.db.GalleryMediaStore
import com.hinnka.mycamera.utils.StartupTrace
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

/**
 * 相册数据仓库
 * 负责从私有存储读取和管理 PhotonCamera 拍摄的照片
 */
class GalleryRepository(private val context: Context) {

    companion object {
        private const val TAG = "GalleryRepository"
    }

    /**
     * 获取所有照片（按时间倒序）
     */
    fun getPhotos(): Flow<List<MediaData>> = flow {
        emit(queryPhotos())
    }.flowOn(Dispatchers.IO)

    /**
     * 同步获取所有照片
     */
    suspend fun getPhotosSync(): List<MediaData> = withContext(Dispatchers.IO) {
        queryPhotos()
    }

    /**
     * 分页获取 Photon 相册照片
     */
    suspend fun getPhotosPage(offset: Int, limit: Int): List<MediaData> = withContext(Dispatchers.IO) {
        queryPhotos(offset = offset, limit = limit)
    }

    /**
     * 获取最新的一张照片
     */
    suspend fun getLatestPhoto(): MediaData? = withContext(Dispatchers.IO) {
        GalleryMediaStore.queryLatestPhoto(context)
    }

    /**
     * 删除单张照片
     */
    suspend fun deletePhoto(photo: MediaData): Boolean = withContext(Dispatchers.IO) {
        GalleryManager.deletePhoto(context, photo.id)
    }

    /**
     * 批量删除照片
     */
    suspend fun deletePhotos(photos: List<MediaData>): Int = withContext(Dispatchers.IO) {
        var deletedCount = 0
        photos.forEach { photo ->
            if (deletePhoto(photo)) {
                deletedCount++
            }
        }
        deletedCount
    }

    /**
     * 查询系统相册照片
     */
    suspend fun getSystemPhotos(offset: Int, limit: Int): List<MediaData> = withContext(Dispatchers.IO) {
        val imageItems = querySystemImages(offset = 0, limit = offset + limit)
        val videoItems = querySystemVideos(offset = 0, limit = offset + limit)
        (imageItems + videoItems)
            .sortedByDescending { it.dateAdded }
            .drop(offset)
            .take(limit)
    }

    /**
     * 查询全部系统相册照片
     */
    suspend fun getAllSystemPhotos(): List<MediaData> = withContext(Dispatchers.IO) {
        val imageItems = runCatching { querySystemImages() }
            .onFailure { PLog.e(TAG, "Failed to query all system images", it) }
            .getOrDefault(emptyList())
        val videoItems = runCatching { querySystemVideos() }
            .onFailure { PLog.e(TAG, "Failed to query all system videos", it) }
            .getOrDefault(emptyList())

        val directItems = (imageItems + videoItems)
            .sortedByDescending { it.dateAdded }
        PLog.d(
            TAG,
            "getAllSystemPhotos direct query: images=${imageItems.size}, videos=${videoItems.size}, total=${directItems.size}"
        )
        if (directItems.isNotEmpty()) {
            return@withContext directItems
        }

        val fallbackItems = queryAllSystemPhotosByPages()
        PLog.w(TAG, "getAllSystemPhotos fallback paged query loaded ${fallbackItems.size} items")
        fallbackItems
    }

    suspend fun getSystemMediaByUri(uri: Uri): MediaData? = withContext(Dispatchers.IO) {
        when {
            uri.isMediaStoreImageUri() -> querySystemImage(uri)
            uri.isMediaStoreVideoUri() -> querySystemVideo(uri)
            else -> null
        }
    }

    private suspend fun queryAllSystemPhotosByPages(pageSize: Int = 200): List<MediaData> {
        val imageItems = querySystemImagesByPages(pageSize)
        val videoItems = querySystemVideosByPages(pageSize)
        return (imageItems + videoItems).sortedByDescending { it.dateAdded }
    }

    private suspend fun querySystemImagesByPages(pageSize: Int): List<MediaData> {
        val items = mutableListOf<MediaData>()
        var offset = 0
        while (true) {
            val page = runCatching { querySystemImages(offset = offset, limit = pageSize) }
                .onFailure { PLog.e(TAG, "Failed to query system images page at offset=$offset", it) }
                .getOrDefault(emptyList())
            items += page
            if (page.size < pageSize) break
            offset += pageSize
        }
        return items
    }

    private fun querySystemImage(uri: Uri): MediaData? {
        val projection = arrayOf(
            MediaStore.Images.Media._ID,
            MediaStore.Images.Media.DISPLAY_NAME,
            MediaStore.Images.Media.DATE_TAKEN,
            MediaStore.Images.Media.DATE_ADDED,
            MediaStore.Images.Media.SIZE,
            MediaStore.Images.Media.WIDTH,
            MediaStore.Images.Media.HEIGHT,
            MediaStore.Images.Media.MIME_TYPE
        )

        return context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
            if (!cursor.moveToFirst()) return@use null

            val idColumn = cursor.getColumnIndex(MediaStore.Images.Media._ID)
            val mediaId = cursor.getOptionalLong(idColumn)
                .takeIf { it > 0L }
                ?: uri.mediaStoreIdOrNull()
                ?: return@use null
            val nameColumn = cursor.getColumnIndex(MediaStore.Images.Media.DISPLAY_NAME)
            val dateTakenColumn = cursor.getColumnIndex(MediaStore.Images.Media.DATE_TAKEN)
            val dateColumn = cursor.getColumnIndex(MediaStore.Images.Media.DATE_ADDED)
            val sizeColumn = cursor.getColumnIndex(MediaStore.Images.Media.SIZE)
            val widthColumn = cursor.getColumnIndex(MediaStore.Images.Media.WIDTH)
            val heightColumn = cursor.getColumnIndex(MediaStore.Images.Media.HEIGHT)
            val mimeColumn = cursor.getColumnIndex(MediaStore.Images.Media.MIME_TYPE)
            val contentUri = uri
            val displayDate = resolveSystemMediaDate(
                dateTakenMillis = cursor.getOptionalLong(dateTakenColumn),
                dateAddedSeconds = cursor.getOptionalLong(dateColumn),
                mediaId = "image_$mediaId"
            )

            MediaData(
                id = "image_$mediaId",
                uri = contentUri,
                thumbnailUri = contentUri,
                displayName = cursor.getOptionalString(nameColumn) ?: uri.lastPathSegment ?: "image_$mediaId",
                dateAdded = displayDate,
                size = cursor.getOptionalLong(sizeColumn),
                width = cursor.getOptionalInt(widthColumn),
                height = cursor.getOptionalInt(heightColumn),
                mediaType = MediaType.IMAGE,
                mimeType = cursor.getOptionalString(mimeColumn),
                sourceUri = contentUri
            )
        }
    }

    private suspend fun querySystemVideosByPages(pageSize: Int): List<MediaData> {
        val items = mutableListOf<MediaData>()
        var offset = 0
        while (true) {
            val page = runCatching { querySystemVideos(offset = offset, limit = pageSize) }
                .onFailure { PLog.e(TAG, "Failed to query system videos page at offset=$offset", it) }
                .getOrDefault(emptyList())
            items += page
            if (page.size < pageSize) break
            offset += pageSize
        }
        return items
    }

    /**
     * 查询私有存储中的照片
     */
    private suspend fun queryPhotos(offset: Int = 0, limit: Int = Int.MAX_VALUE): List<MediaData> {
        return GalleryMediaStore.queryPhotos(context, offset, limit)
    }

    private suspend fun querySystemImages(offset: Int = 0, limit: Int? = null): List<MediaData> {
        val items = mutableListOf<MediaData>()
        val projection = arrayOf(
            MediaStore.Images.Media._ID,
            MediaStore.Images.Media.DISPLAY_NAME,
            MediaStore.Images.Media.DATE_TAKEN,
            MediaStore.Images.Media.DATE_ADDED,
            MediaStore.Images.Media.SIZE,
            MediaStore.Images.Media.WIDTH,
            MediaStore.Images.Media.HEIGHT,
            MediaStore.Images.Media.MIME_TYPE
        )
        val cursor = if (limit != null || offset > 0) {
            val queryArgs = android.os.Bundle().apply {
                putInt(android.content.ContentResolver.QUERY_ARG_OFFSET, offset)
                limit?.let { putInt(android.content.ContentResolver.QUERY_ARG_LIMIT, it) }
                putString(
                    android.content.ContentResolver.QUERY_ARG_SQL_SORT_ORDER,
                    "${MediaStore.Images.Media.DATE_ADDED} DESC"
                )
            }
            context.contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, projection, queryArgs, null)
        } else {
            context.contentResolver.query(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                projection,
                null,
                null,
                "${MediaStore.Images.Media.DATE_ADDED} DESC"
            )
        }
        cursor
            ?.use { cursor ->
                PLog.d(TAG, "querySystemImages offset=$offset limit=$limit cursorCount=${cursor.count}")
                val idColumn = cursor.getColumnIndex(MediaStore.Images.Media._ID)
                if (idColumn < 0) {
                    PLog.e(TAG, "querySystemImages missing required _ID column")
                    return@use
                }
                val nameColumn = cursor.getColumnIndex(MediaStore.Images.Media.DISPLAY_NAME)
                val dateTakenColumn = cursor.getColumnIndex(MediaStore.Images.Media.DATE_TAKEN)
                val dateColumn = cursor.getColumnIndex(MediaStore.Images.Media.DATE_ADDED)
                val sizeColumn = cursor.getColumnIndex(MediaStore.Images.Media.SIZE)
                val widthColumn = cursor.getColumnIndex(MediaStore.Images.Media.WIDTH)
                val heightColumn = cursor.getColumnIndex(MediaStore.Images.Media.HEIGHT)
                val mimeColumn = cursor.getColumnIndex(MediaStore.Images.Media.MIME_TYPE)

                while (cursor.moveToNext()) {
                    try {
                        val id = cursor.getLong(idColumn)
                        val contentUri = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, id)
                        val displayDate = resolveSystemMediaDate(
                            dateTakenMillis = cursor.getOptionalLong(dateTakenColumn),
                            dateAddedSeconds = cursor.getOptionalLong(dateColumn),
                            mediaId = "image_$id"
                        )
                        items.add(
                            MediaData(
                                id = "image_$id",
                                uri = contentUri,
                                thumbnailUri = contentUri,
                                displayName = cursor.getOptionalString(nameColumn) ?: "image_$id",
                                dateAdded = displayDate,
                                size = cursor.getOptionalLong(sizeColumn),
                                width = cursor.getOptionalInt(widthColumn),
                                height = cursor.getOptionalInt(heightColumn),
                                mediaType = MediaType.IMAGE,
                                mimeType = cursor.getOptionalString(mimeColumn),
                                sourceUri = contentUri
                            )
                        )
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to build system image item, skipping", e)
                    }
                }
            }
        return items
    }

    private suspend fun querySystemVideos(offset: Int = 0, limit: Int? = null): List<MediaData> {
        val items = mutableListOf<MediaData>()
        val projection = arrayOf(
            MediaStore.Video.Media._ID,
            MediaStore.Video.Media.DISPLAY_NAME,
            MediaStore.Video.Media.DATE_TAKEN,
            MediaStore.Video.Media.DATE_ADDED,
            MediaStore.Video.Media.SIZE,
            MediaStore.Video.Media.WIDTH,
            MediaStore.Video.Media.HEIGHT,
            MediaStore.Video.Media.ORIENTATION,
            MediaStore.Video.Media.MIME_TYPE,
            MediaStore.Video.Media.DURATION
        )
        val cursor = if (limit != null || offset > 0) {
            val queryArgs = android.os.Bundle().apply {
                putInt(android.content.ContentResolver.QUERY_ARG_OFFSET, offset)
                limit?.let { putInt(android.content.ContentResolver.QUERY_ARG_LIMIT, it) }
                putString(
                    android.content.ContentResolver.QUERY_ARG_SQL_SORT_ORDER,
                    "${MediaStore.Video.Media.DATE_ADDED} DESC"
                )
            }
            context.contentResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, projection, queryArgs, null)
        } else {
            context.contentResolver.query(
                MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
                projection,
                null,
                null,
                "${MediaStore.Video.Media.DATE_ADDED} DESC"
            )
        }
        cursor
            ?.use { cursor ->
                PLog.d(TAG, "querySystemVideos offset=$offset limit=$limit cursorCount=${cursor.count}")
                val idColumn = cursor.getColumnIndex(MediaStore.Video.Media._ID)
                if (idColumn < 0) {
                    PLog.e(TAG, "querySystemVideos missing required _ID column")
                    return@use
                }
                val nameColumn = cursor.getColumnIndex(MediaStore.Video.Media.DISPLAY_NAME)
                val dateTakenColumn = cursor.getColumnIndex(MediaStore.Video.Media.DATE_TAKEN)
                val dateColumn = cursor.getColumnIndex(MediaStore.Video.Media.DATE_ADDED)
                val sizeColumn = cursor.getColumnIndex(MediaStore.Video.Media.SIZE)
                val widthColumn = cursor.getColumnIndex(MediaStore.Video.Media.WIDTH)
                val heightColumn = cursor.getColumnIndex(MediaStore.Video.Media.HEIGHT)
                val orientationColumn = cursor.getColumnIndex(MediaStore.Video.Media.ORIENTATION)
                val mimeColumn = cursor.getColumnIndex(MediaStore.Video.Media.MIME_TYPE)
                val durationColumn = cursor.getColumnIndex(MediaStore.Video.Media.DURATION)

                while (cursor.moveToNext()) {
                    try {
                        val id = cursor.getLong(idColumn)
                        val contentUri = ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, id)
                        val mimeType = cursor.getOptionalString(mimeColumn)
                        val durationMs = cursor.getOptionalLong(durationColumn)
                        val displayDate = resolveSystemMediaDate(
                            dateTakenMillis = cursor.getOptionalLong(dateTakenColumn),
                            dateAddedSeconds = cursor.getOptionalLong(dateColumn),
                            mediaId = "video_$id"
                        )
                        val width = cursor.getOptionalInt(widthColumn)
                        val height = cursor.getOptionalInt(heightColumn)
                        val orientation = cursor.getOptionalInt(orientationColumn)

                        items.add(
                            MediaData(
                                id = "video_$id",
                                uri = contentUri,
                                thumbnailUri = contentUri,
                                displayName = cursor.getOptionalString(nameColumn) ?: "video_$id",
                                dateAdded = displayDate,
                                size = cursor.getOptionalLong(sizeColumn),
                                width = width,
                                height = height,
                                mediaType = MediaType.VIDEO,
                                mimeType = mimeType,
                                durationMs = durationMs,
                                sourceUri = contentUri,
                                metadata = MediaMetadata(
                                    mediaType = MediaType.VIDEO,
                                    dateTaken = displayDate,
                                    width = width,
                                    height = height,
                                    sourceUri = contentUri.toString(),
                                    mimeType = mimeType,
                                    durationMs = durationMs,
                                    rotationDegrees = orientation,
                                    videoWidth = width,
                                    videoHeight = height
                                )
                            )
                        )
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to build system video item, skipping", e)
                    }
                }
            }
        return items
    }

    private fun querySystemVideo(uri: Uri): MediaData? {
        val projection = arrayOf(
            MediaStore.Video.Media._ID,
            MediaStore.Video.Media.DISPLAY_NAME,
            MediaStore.Video.Media.DATE_TAKEN,
            MediaStore.Video.Media.DATE_ADDED,
            MediaStore.Video.Media.SIZE,
            MediaStore.Video.Media.WIDTH,
            MediaStore.Video.Media.HEIGHT,
            MediaStore.Video.Media.ORIENTATION,
            MediaStore.Video.Media.MIME_TYPE,
            MediaStore.Video.Media.DURATION
        )

        return context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
            if (!cursor.moveToFirst()) return@use null

            val idColumn = cursor.getColumnIndex(MediaStore.Video.Media._ID)
            val mediaId = cursor.getOptionalLong(idColumn)
                .takeIf { it > 0L }
                ?: uri.mediaStoreIdOrNull()
                ?: return@use null
            val nameColumn = cursor.getColumnIndex(MediaStore.Video.Media.DISPLAY_NAME)
            val dateTakenColumn = cursor.getColumnIndex(MediaStore.Video.Media.DATE_TAKEN)
            val dateColumn = cursor.getColumnIndex(MediaStore.Video.Media.DATE_ADDED)
            val sizeColumn = cursor.getColumnIndex(MediaStore.Video.Media.SIZE)
            val widthColumn = cursor.getColumnIndex(MediaStore.Video.Media.WIDTH)
            val heightColumn = cursor.getColumnIndex(MediaStore.Video.Media.HEIGHT)
            val orientationColumn = cursor.getColumnIndex(MediaStore.Video.Media.ORIENTATION)
            val mimeColumn = cursor.getColumnIndex(MediaStore.Video.Media.MIME_TYPE)
            val durationColumn = cursor.getColumnIndex(MediaStore.Video.Media.DURATION)
            val contentUri = uri
            val mimeType = cursor.getOptionalString(mimeColumn)
            val durationMs = cursor.getOptionalLong(durationColumn)
            val width = cursor.getOptionalInt(widthColumn)
            val height = cursor.getOptionalInt(heightColumn)
            val orientation = cursor.getOptionalInt(orientationColumn)
            val displayDate = resolveSystemMediaDate(
                dateTakenMillis = cursor.getOptionalLong(dateTakenColumn),
                dateAddedSeconds = cursor.getOptionalLong(dateColumn),
                mediaId = "video_$mediaId"
            )

            MediaData(
                id = "video_$mediaId",
                uri = contentUri,
                thumbnailUri = contentUri,
                displayName = cursor.getOptionalString(nameColumn) ?: uri.lastPathSegment ?: "video_$mediaId",
                dateAdded = displayDate,
                size = cursor.getOptionalLong(sizeColumn),
                width = width,
                height = height,
                mediaType = MediaType.VIDEO,
                mimeType = mimeType,
                durationMs = durationMs,
                sourceUri = contentUri,
                metadata = MediaMetadata(
                    mediaType = MediaType.VIDEO,
                    dateTaken = displayDate,
                    width = width,
                    height = height,
                    sourceUri = contentUri.toString(),
                    mimeType = mimeType,
                    durationMs = durationMs,
                    rotationDegrees = orientation,
                    videoWidth = width,
                    videoHeight = height
                )
            )
        }
    }

    private fun resolveSystemMediaDate(
        dateTakenMillis: Long,
        dateAddedSeconds: Long,
        mediaId: String
    ): Long {
        if (dateTakenMillis > 0L) return dateTakenMillis

        val fallbackDate = dateAddedSeconds * 1000L
        return fallbackDate
    }

    private fun android.database.Cursor.getOptionalLong(columnIndex: Int): Long {
        return if (columnIndex >= 0 && !isNull(columnIndex)) getLong(columnIndex) else 0L
    }

    private fun android.database.Cursor.getOptionalInt(columnIndex: Int): Int {
        return if (columnIndex >= 0 && !isNull(columnIndex)) getInt(columnIndex) else 0
    }

    private fun android.database.Cursor.getOptionalString(columnIndex: Int): String? {
        return if (columnIndex >= 0 && !isNull(columnIndex)) getString(columnIndex) else null
    }

    private fun Uri.isMediaStoreImageUri(): Boolean {
        return scheme == "content" &&
            authority == MediaStore.AUTHORITY &&
            pathSegments.any { it == "images" }
    }

    private fun Uri.isMediaStoreVideoUri(): Boolean {
        return scheme == "content" &&
            authority == MediaStore.AUTHORITY &&
            pathSegments.any { it == "video" }
    }

    private fun Uri.mediaStoreIdOrNull(): Long? {
        return runCatching { ContentUris.parseId(this) }
            .getOrNull()
            ?.takeIf { it > 0L }
    }
}
