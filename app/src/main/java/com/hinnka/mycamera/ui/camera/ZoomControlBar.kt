package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.drawText
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.camera.CameraInfo
import kotlin.math.abs
import kotlin.math.roundToInt

@Composable
fun ZoomControlBar(
    zoomRatio: Float,
    maxZoom: Float,
    minZoom: Float,
    onZoomChange: (Float) -> Unit,
    onZoomStop: () -> Unit = {},
    onFilterClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .padding(16.dp)
            .height(32.dp),
        contentAlignment = Alignment.Center
    ) {
        // Filter Button (Right aligned)
        IconButton(
            onClick = onFilterClick,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .size(32.dp)
        ) {
            Icon(
                imageVector = Icons.Default.AutoAwesome,
                contentDescription = "Filters",
                modifier = Modifier.size(32.dp)
                    .background(Color.Black.copy(alpha = 0.3f), CircleShape)
                    .padding(8.dp),
                tint = Color.Yellow
            )
        }

        // Zoom Ruler (Center)
        // We define a fixed set of zoom stops for simplicity, similar to the image: 0.6, 1x, 2, 3, 10
        val stops = listOf(0.6f, 1f, 2f, 3f, 5f, 10f).filter { it <= maxZoom && it >= minZoom }
        
        ZoomRuler(
            zoomRatio = zoomRatio,
            stops = stops,
            onZoomChange = onZoomChange,
            modifier = Modifier
                .fillMaxWidth(0.7f) // Leave room for filter button
                .fillMaxHeight()
        )
    }
}

@Composable
fun ZoomRuler(
    zoomRatio: Float,
    stops: List<Float>,
    onZoomChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    val textMeasurer = rememberTextMeasurer()
    val activeColor = Color(0xFFFFD700)
    val inactiveColor = Color.White.copy(alpha = 0.5f)

    Canvas(
        modifier = modifier
            .background(Color.Black.copy(alpha = 0.3f), RoundedCornerShape(20.dp))
            .pointerInput(Unit) {
            detectTapGestures { offset ->
                // Simple tap to nearest stop logic could be added here
                // For now, let's just use drag
                val width = size.width
                val stepWidth = width / stops.size
                val index = (offset.x / stepWidth).toInt().coerceIn(0, stops.lastIndex)
                onZoomChange(stops[index])
            }
        }
    ) {
        val width = size.width
        val height = size.height
        val stepWidth = width / stops.size
        
        stops.forEachIndexed { index, stop ->
            val isSelected = abs(stop - zoomRatio) < 0.1f
            val x = stepWidth * index + stepWidth / 2
            
            // Draw text
            val text = "${stop}x".replace(".0x", "x")
            val style = TextStyle(
                fontSize = if (isSelected) 13.sp else 9.sp,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                color = if (isSelected) activeColor else inactiveColor
            )
            
            val textLayoutResult = textMeasurer.measure(text, style)
            val textWidth = textLayoutResult.size.width
            val textHeight = textLayoutResult.size.height
            
            drawText(
                textLayoutResult = textLayoutResult,
                topLeft = Offset(x - textWidth / 2, height / 2 - textHeight / 2)
            )
        }
    }
}
