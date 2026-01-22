package com.hinnka.mycamera.gallery

import android.net.Uri

/**
 * 照片数据模型
 */
data class PhotoData(
    val id: String,
    val uri: Uri,
    val thumbnailUri: Uri,
    val displayName: String,
    val dateAdded: Long,
    val size: Long,
    val width: Int = 0,
    val height: Int = 0,
    var metadata: PhotoMetadata? = null
) {
    /**
     * 格式化的拍摄时间
     */
    fun getFormattedDate(): String {
        val date = dateAdded
        val sdf = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault())
        return sdf.format(java.util.Date(date))
    }
    
    /**
     * 格式化的文件大小
     */
    fun getFormattedSize(): String {
        return when {
            size < 1024 -> "$size B"
            size < 1024 * 1024 -> "${size / 1024} KB"
            else -> String.format("%.1f MB", size / (1024.0 * 1024.0))
        }
    }
    
    /**
     * 分辨率字符串
     */
    fun getResolution(): String = "${width}x${height}"
}
