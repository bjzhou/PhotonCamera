package com.hinnka.mycamera.ui.components

import android.content.Context
import android.graphics.Canvas
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.Shader
import android.os.SystemClock
import android.view.View
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.ProcessingPhoto
import com.hinnka.mycamera.ui.camera.autoRotate

/** A capture preview never asks the gallery renderer to read unfinished output files. */
@Composable
fun ProcessingPhotoPreview(photo: ProcessingPhoto, modifier: Modifier = Modifier) {
    val transition = rememberInfiniteTransition(label = "processingPhoto")
    val sweep by transition.animateFloat(
        initialValue = -1f,
        targetValue = 2f,
        animationSpec = infiniteRepeatable(tween(2200, easing = LinearEasing), RepeatMode.Restart),
        label = "processingPhotoSweep"
    )
    Box(modifier = modifier, contentAlignment = Alignment.Center) {
        val preview = photo.thumbnail?.takeUnless { it.isRecycled }
        val imageModifier = Modifier.fillMaxSize().autoRotate(matchParentSize = true)
            .drawWithContent {
                drawContent()
                val distance = size.width + size.height
                val center = sweep * distance
                drawRect(
                    brush = Brush.linearGradient(
                        colors = listOf(Color.Transparent, Color.White.copy(alpha = 0.12f), Color.Transparent),
                        start = Offset(center - distance * 0.22f, 0f),
                        end = Offset(center, size.height * 0.35f)
                    )
                )
            }
        if (preview != null) {
            Image(
                bitmap = preview.asImageBitmap(),
                contentDescription = photo.photo.displayName,
                contentScale = ContentScale.Fit,
                modifier = imageModifier
            )
        } else {
            AsyncImage(
                model = photo.photo.thumbnailUri,
                contentDescription = photo.photo.displayName,
                contentScale = ContentScale.Fit,
                modifier = imageModifier
            )
        }
        Text(
            text = stringResource(R.string.gallery_photo_processing),
            color = Color.White.copy(alpha = 0.86f),
            modifier = Modifier.align(Alignment.BottomCenter).padding(24.dp)
                .autoRotate()
                .background(Color.Black.copy(alpha = 0.58f), RoundedCornerShape(50))
                .padding(horizontal = 16.dp, vertical = 9.dp)
        )
    }
}

/** RecyclerView equivalent of the detail preview's subtle diagonal sweep. */
class ProcessingPhotoShimmerView(context: Context) : View(context) {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        if (!isShown) return
        val distance = width + height.toFloat()
        val progress = (SystemClock.uptimeMillis() % 2200L) / 2200f * 3f - 1f
        val center = progress * distance
        paint.shader = LinearGradient(
            center - distance * 0.22f, 0f, center, height * 0.35f,
            intArrayOf(0x00FFFFFF, 0x20FFFFFF, 0x00FFFFFF), null, Shader.TileMode.CLAMP
        )
        canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), paint)
        postInvalidateOnAnimation()
    }
}
