package com.hinnka.mycamera.gallery

import android.net.Uri

enum class MediaType {
    IMAGE,
    VIDEO
}

/**
 * 照片数据模型
 */
data class MediaData(
    val id: String,
    val uri: Uri,
    val thumbnailUri: Uri,
    val displayName: String,
    val dateAdded: Long,
    val size: Long,
    val width: Int = 0,
    val height: Int = 0,
    val mediaType: MediaType = MediaType.IMAGE,
    val mimeType: String? = null,
    val durationMs: Long? = null,
    val sourceUri: Uri? = null,
    var isMotionPhoto: Boolean = false,
    var isBurstPhoto: Boolean = false,
    // 复杂编辑元数据：LUT、边框、水印、RAW 参数、导出 URI 等。列表轻量查询不要填充它。
    var metadata: MediaMetadata? = null,
    var relatedPhoto: MediaData? = null
) {
    val isVideo: Boolean
        get() = mediaType == MediaType.VIDEO

    val isImage: Boolean
        get() = mediaType == MediaType.IMAGE

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

    fun getFormattedDuration(): String {
        val totalSeconds = ((durationMs ?: 0L) / 1000L).coerceAtLeast(0L)
        val hours = totalSeconds / 3600L
        val minutes = (totalSeconds % 3600L) / 60L
        val seconds = totalSeconds % 60L
        return if (hours > 0L) {
            String.format("%d:%02d:%02d", hours, minutes, seconds)
        } else {
            String.format("%02d:%02d", minutes, seconds)
        }
    }
}
