package com.hinnka.mycamera.gallery

import android.content.Context
import android.net.Uri
import android.provider.MediaStore
import android.util.Log
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
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
    fun getPhotos(): Flow<List<PhotoData>> = flow {
        emit(queryPhotos())
    }.flowOn(Dispatchers.IO)

    /**
     * 同步获取所有照片
     */
    suspend fun getPhotosSync(): List<PhotoData> = withContext(Dispatchers.IO) {
        queryPhotos()
    }

    /**
     * 获取最新的一张照片
     */
    suspend fun getLatestPhoto(): PhotoData? = withContext(Dispatchers.IO) {
        queryPhotos(limit = 1).firstOrNull()
    }

    /**
     * 删除单张照片
     */
    suspend fun deletePhoto(photo: PhotoData): Boolean = withContext(Dispatchers.IO) {
        PhotoManager.deletePhoto(context, photo.id)
    }

    /**
     * 批量删除照片
     */
    suspend fun deletePhotos(photos: List<PhotoData>): Int = withContext(Dispatchers.IO) {
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
    suspend fun getSystemPhotos(offset: Int, limit: Int): List<PhotoData> = withContext(Dispatchers.IO) {
        val photos = mutableListOf<PhotoData>()
        val projection = arrayOf(
            MediaStore.Images.Media._ID,
            MediaStore.Images.Media.DISPLAY_NAME,
            MediaStore.Images.Media.DATE_ADDED,
            MediaStore.Images.Media.SIZE,
            MediaStore.Images.Media.WIDTH,
            MediaStore.Images.Media.HEIGHT
        )

        val sortOrder = "${MediaStore.Images.Media.DATE_ADDED} DESC"

        val queryArgs = android.os.Bundle().apply {
                putInt(android.content.ContentResolver.QUERY_ARG_OFFSET, offset)
                putInt(android.content.ContentResolver.QUERY_ARG_LIMIT, limit)
                putString(android.content.ContentResolver.QUERY_ARG_SQL_SORT_ORDER, sortOrder)
            }

        val cursor = context.contentResolver.query(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                projection,
                queryArgs,
                null
            )

        cursor?.use {
            val idColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media._ID)
            val nameColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media.DISPLAY_NAME)
            val dateColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media.DATE_ADDED)
            val sizeColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media.SIZE)
            val widthColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media.WIDTH)
            val heightColumn = it.getColumnIndexOrThrow(MediaStore.Images.Media.HEIGHT)

            while (it.moveToNext()) {
                val id = it.getLong(idColumn)
                val contentUri = android.content.ContentUris.withAppendedId(
                    MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    id
                )

                photos.add(
                    PhotoData(
                        id = id.toString(),
                        uri = contentUri,
                        thumbnailUri = contentUri, // Coil can load thumbnails from content URIs
                        displayName = it.getString(nameColumn),
                        dateAdded = it.getLong(dateColumn) * 1000, // MediaStore is in seconds
                        size = it.getLong(sizeColumn),
                        width = it.getInt(widthColumn),
                        height = it.getInt(heightColumn)
                    )
                )
            }
        }
        photos
    }

    /**
     * 查询私有存储中的照片
     */
    private fun queryPhotos(limit: Int = Int.MAX_VALUE): List<PhotoData> {
        val photos = mutableListOf<PhotoData>()
        val photoIds = PhotoManager.getPhotoIds(context)

        photoIds.forEach { id ->
            val photoFile = PhotoManager.getPhotoFile(context, id)

            if (photoFile.exists()) {
                val videoFile = PhotoManager.getVideoFile(context, id)
                val isBurstPhoto = PhotoManager.hasBurstPhotos(context, id)
                photos.add(
                    PhotoData(
                        id = id,
                        uri = Uri.fromFile(photoFile),
                        thumbnailUri = Uri.fromFile(PhotoManager.getThumbnailFile(context, id)),
                        displayName = photoFile.name,
                        dateAdded = photoFile.lastModified(),
                        size = photoFile.length(),
                        isMotionPhoto = videoFile.exists(),
                        isBurstPhoto = isBurstPhoto
                    )
                )
            }
        }

        return photos.take(limit)
    }
}
