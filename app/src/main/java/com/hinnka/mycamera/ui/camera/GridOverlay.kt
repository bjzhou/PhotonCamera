package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color

/**
 * 网格线覆盖层
 * 根据画面比例绘制九宫格辅助线
 */
@Composable
fun GridOverlay(
    aspectRatio: Float,
    modifier: Modifier = Modifier
) {
    Canvas(modifier = modifier.fillMaxSize()) {
        val canvasWidth = size.width
        val canvasHeight = size.height
        
        // 计算预览区域的实际宽高比（总是3:4的容器）
        val containerRatio = 3f / 4f
        
        // 获取目标画面比例
        val targetRatio = aspectRatio  // 竖屏模式
        
        // 计算有效绘制区域
        val (drawWidth, drawHeight, offsetX, offsetY) = if (targetRatio > containerRatio) {
            // 画面比容器更宽，以宽度为基准
            val h = canvasWidth / targetRatio
            Quadruple(canvasWidth, h, 0f, (canvasHeight - h) / 2f)
        } else {
            // 画面比容器更窄，以高度为基准
            val w = canvasHeight * targetRatio
            Quadruple(w, canvasHeight, (canvasWidth - w) / 2f, 0f)
        }
        
        // 绘制九宫格线条
        val gridColor = Color.White.copy(alpha = 0.5f)
        val strokeWidth = 1.5f
        
        // 垂直线
        for (i in 1..2) {
            val x = offsetX + drawWidth * i / 3f
            drawLine(
                color = gridColor,
                start = androidx.compose.ui.geometry.Offset(x, offsetY),
                end = androidx.compose.ui.geometry.Offset(x, offsetY + drawHeight),
                strokeWidth = strokeWidth
            )
        }
        
        // 水平线
        for (i in 1..2) {
            val y = offsetY + drawHeight * i / 3f
            drawLine(
                color = gridColor,
                start = androidx.compose.ui.geometry.Offset(offsetX, y),
                end = androidx.compose.ui.geometry.Offset(offsetX + drawWidth, y),
                strokeWidth = strokeWidth
            )
        }
    }
}
