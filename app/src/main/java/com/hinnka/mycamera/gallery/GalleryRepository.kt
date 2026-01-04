package com.hinnka.mycamera.gallery

import android.content.Context
import android.net.Uri
import android.util.Log
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
     * 查询私有存储中的照片
     */
    private fun queryPhotos(limit: Int = Int.MAX_VALUE): List<PhotoData> {
        val photos = mutableListOf<PhotoData>()
        val photoIds = PhotoManager.getPhotoIds(context)
        
        photoIds.take(limit).forEach { id ->
            val photoFile = PhotoManager.getPhotoFile(context, id)
            if (photoFile.exists()) {
                photos.add(
                    PhotoData(
                        id = id,
                        uri = Uri.fromFile(photoFile),
                        thumbnailUri = Uri.fromFile(PhotoManager.getThumbnailFile(context, id)),
                        previewUri = Uri.fromFile(PhotoManager.getPreviewFile(context, id)),
                        displayName = photoFile.name,
                        dateAdded = photoFile.lastModified() / 1000,
                        dateTaken = photoFile.lastModified(),
                        size = photoFile.length()
                    )
                )
            }
        }
        
        return photos
    }
}


