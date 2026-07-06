package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Icon
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import com.hinnka.mycamera.ui.icons.AppIcons

/**
 * 相册入口缩略图组件
 * 显示最近拍摄的照片缩略图，点击进入相册
 */
@Composable
fun GalleryThumbnail(
    latestPhoto: MediaData?,
    viewModel: GalleryViewModel,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val refreshKey = latestPhoto?.id?.let { viewModel.getPreparedPhotoThumbnailRefreshKey(it) } ?: 0L
    
    Box(
        modifier = modifier
            .size(48.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(Color.Black.copy(alpha = 0.5f))
            .border(2.dp, Color.White.copy(alpha = 0.3f), RoundedCornerShape(8.dp))
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
        if (latestPhoto != null) {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(latestPhoto.thumbnailUri)
                    .memoryCacheKey(
                        "gallery_thumbnail_${latestPhoto.id}_${latestPhoto.thumbnailUri}_${refreshKey}"
                    )
                    .crossfade(true)
                    .build(),
                contentDescription = "Gallery",
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize()
            )
            if (latestPhoto.isVideo) {
                Icon(
                    imageVector = Icons.Default.PlayArrow,
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(20.dp)
                )
            }
        } else {
            // 没有照片时显示图标
            Icon(
                imageVector = AppIcons.PhotoLibrary,
                contentDescription = "Gallery",
                tint = Color.White.copy(alpha = 0.7f),
                modifier = Modifier.size(24.dp)
            )
        }
    }
}
