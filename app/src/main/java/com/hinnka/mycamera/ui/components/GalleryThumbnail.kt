package com.hinnka.mycamera.ui.components

import android.net.Uri
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PhotoLibrary
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
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.viewmodel.GalleryViewModel

/**
 * 相册入口缩略图组件
 * 显示最近拍摄的照片缩略图，点击进入相册
 */
@Composable
fun GalleryThumbnail(
    latestPhoto: PhotoData?,
    viewModel: GalleryViewModel,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    
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
            // 显示最近的照片缩略图，优先使用带 LUT 的预览图
            val imageSource = if (latestPhoto.metadata?.lutId != null) {
                latestPhoto.previewUri
            } else {
                latestPhoto.thumbnailUri
            }
            
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(imageSource)
                    .crossfade(true)
                    .build(),
                contentDescription = "Gallery",
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize()
            )
        } else {
            // 没有照片时显示图标
            Icon(
                imageVector = Icons.Default.PhotoLibrary,
                contentDescription = "Gallery",
                tint = Color.White.copy(alpha = 0.7f),
                modifier = Modifier.size(24.dp)
            )
        }
    }
}
