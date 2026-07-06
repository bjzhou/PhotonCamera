package com.hinnka.mycamera.ui.gallery

import android.graphics.Bitmap
import android.graphics.RectF
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.ui.theme.AccentOrange
import androidx.compose.ui.Alignment
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.material.icons.Icons
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import com.hinnka.mycamera.ui.icons.AppIcons

/**
 * 裁剪比例选项
 */
sealed class CropAspectOption(
    val displayName: String,
    val widthRatio: Float,
    val heightRatio: Float
) {
    /** 自由裁剪 */
    data object Free : CropAspectOption("FREE", 0f, 0f)

    /** 原始比例 */
    data object Original : CropAspectOption("ORIGINAL", 0f, 0f)

    /** 来自 AspectRatio 枚举的预设比例 */
    data class FromAspectRatio(val ratio: AspectRatio) : CropAspectOption(
        ratio.getDisplayName(),
        ratio.widthRatio.toFloat(),
        ratio.heightRatio.toFloat()
    )

    /** 自定义比例 */
    data class Custom(val w: Float, val h: Float) : CropAspectOption(
        "${w.toInt()}:${h.toInt()}", w, h
    )

    val isFree get() = this is Free
    val isOriginal get() = this is Original
    val hasFixedRatio get() = !isFree && !isOriginal

    /**
     * 获取宽高比 (w/h)，根据图像方向自动调整
     */
    fun getAspectRatioValue(imageW: Int, imageH: Int): Float? {
        if (isFree) return null
        if (isOriginal) return imageW.toFloat() / imageH.toFloat()
        if (heightRatio == 0f) return null
        return widthRatio / heightRatio
    }
}

/**
 * 获取所有可用的裁剪选项列表
 */
fun getCropAspectOptions(allRatios: List<AspectRatio>): List<CropAspectOption> {
    val options = mutableListOf<CropAspectOption>()
    options.add(CropAspectOption.Free)
    options.add(CropAspectOption.Original)
    
    // Sort ratios to put common ones first if needed, but here we just take them all
    for (ratio in allRatios) {
        val option = CropAspectOption.FromAspectRatio(ratio)
        options.add(option)
        // Also add the inverted version (e.g., 3:4 for 4:3) if not square
        if (ratio.widthRatio != ratio.heightRatio) {
            options.add(CropAspectOption.Custom(ratio.heightRatio.toFloat(), ratio.widthRatio.toFloat()))
        }
    }
    return options
}

/**
 * 裁剪编辑面板
 */
@Composable
fun CropEditPanel(
    selectedOption: CropAspectOption,
    onOptionSelected: (CropAspectOption) -> Unit,
    availableRatios: List<AspectRatio>,
    imageWidth: Int,
    imageHeight: Int,
    modifier: Modifier = Modifier
) {
    val options = remember(availableRatios) {
        getCropAspectOptions(availableRatios)
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 12.dp)
    ) {
        // 比例选择标题
        Row(
            modifier = Modifier.fillMaxWidth().padding(horizontal = 4.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = stringResource(R.string.crop).uppercase(),
                color = Color.White.copy(alpha = 0.4f),
                fontSize = 11.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 1.sp
            )
            
            Text(
                text = when (selectedOption) {
                    is CropAspectOption.Free -> stringResource(R.string.crop_free)
                    is CropAspectOption.Original -> stringResource(R.string.crop_original)
                    else -> selectedOption.displayName
                },
                color = AccentOrange,
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold
            )
        }

        Spacer(modifier = Modifier.height(16.dp))

        LazyRow(
            contentPadding = PaddingValues(horizontal = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            items(options) { option ->
                CropAspectOptionItem(
                    option = option,
                    isSelected = option.displayName == selectedOption.displayName && 
                                 option.widthRatio == selectedOption.widthRatio && 
                                 option.heightRatio == selectedOption.heightRatio,
                    onClick = { onOptionSelected(option) }
                )
            }
        }
    }
}

/**
 * 裁剪比例选项按钮
 */
@Composable
private fun CropAspectOptionItem(
    option: CropAspectOption,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val displayText = when (option) {
        is CropAspectOption.Free -> stringResource(R.string.crop_free)
        is CropAspectOption.Original -> stringResource(R.string.crop_original)
        else -> option.displayName
    }

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(64.dp)
            .clip(RoundedCornerShape(12.dp))
            .clickable { onClick() }
            .padding(vertical = 4.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // Visual Preview
        Box(
            modifier = Modifier
                .size(48.dp)
                .background(
                    if (isSelected) AccentOrange.copy(alpha = 0.15f)
                    else Color.White.copy(alpha = 0.05f),
                    RoundedCornerShape(10.dp)
                )
                .border(
                    1.dp,
                    if (isSelected) AccentOrange else Color.White.copy(alpha = 0.1f),
                    RoundedCornerShape(10.dp)
                ),
            contentAlignment = Alignment.Center
        ) {
            when (option) {
                is CropAspectOption.Free -> {
                    Icon(
                        imageVector = AppIcons.FilterNone,
                        contentDescription = null,
                        tint = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.5f),
                        modifier = Modifier.size(20.dp)
                    )
                }
                is CropAspectOption.Original -> {
                    Icon(
                        imageVector = AppIcons.Article,
                        contentDescription = null,
                        tint = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.5f),
                        modifier = Modifier.size(20.dp)
                    )
                }
                else -> {
                    val w = option.widthRatio
                    val h = option.heightRatio
                    val maxDim = 24.dp
                    val displayW: androidx.compose.ui.unit.Dp
                    val displayH: androidx.compose.ui.unit.Dp
                    
                    if (w > h) {
                        displayW = maxDim
                        displayH = maxDim * (h / w)
                    } else {
                        displayH = maxDim
                        displayW = maxDim * (w / h)
                    }
                    
                    Box(
                        modifier = Modifier
                            .size(displayW, displayH)
                            .background(
                                if (isSelected) AccentOrange else Color.White.copy(alpha = 0.4f),
                                RoundedCornerShape(2.dp)
                            )
                    )
                }
            }
        }

        Text(
            text = displayText,
            color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.6f),
            fontSize = 11.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
            maxLines = 1,
            textAlign = TextAlign.Center
        )
    }
}

/**
 * 裁剪叠加层 - 在图片上方显示裁剪框
 */
@Composable
fun CropOverlay(
    bitmap: Bitmap?,
    cropRect: RectF,
    onCropRectChanged: (RectF) -> Unit,
    aspectOption: CropAspectOption,
    contentPadding: Dp = 0.dp,
    modifier: Modifier = Modifier
) {
    if (bitmap == null) return

    val imageWidth = bitmap.width.toFloat()
    val imageHeight = bitmap.height.toFloat()
    val density = LocalDensity.current
    val contentPaddingPx = with(density) { contentPadding.toPx() }

    var containerSize by remember { mutableStateOf(IntSize.Zero) }
    var dragHandle by remember { mutableStateOf<DragHandle?>(null) }
    
    val safeCropRect = remember(cropRect.left, cropRect.top, cropRect.right, cropRect.bottom) {
        normalizeCropRect(cropRect)
    }
    val currentCropRect by rememberUpdatedState(safeCropRect)

    // 计算图片在容器中的实际显示区域
    val imageDisplayRect = remember(containerSize, imageWidth, imageHeight, contentPaddingPx) {
        if (containerSize.width == 0 || containerSize.height == 0) {
            Rect.Zero
        } else {
            calculateImageDisplayRect(
                containerSize.width.toFloat(),
                containerSize.height.toFloat(),
                imageWidth,
                imageHeight,
                contentPaddingPx
            )
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .onSizeChanged { containerSize = it }
    ) {
        // 绘制图片
        Image(
            bitmap = bitmap.asImageBitmap(),
            contentDescription = null,
            contentScale = ContentScale.Fit,
            modifier = Modifier
                .fillMaxSize()
                .padding(contentPadding)
        )

        // 裁剪叠加层
        if (imageDisplayRect != Rect.Zero) {
            Canvas(
                modifier = Modifier
                    .fillMaxSize()
                    .pointerInput(imageDisplayRect, aspectOption) {
                        detectDragGestures(
                            onDragStart = { offset ->
                                // 转换触摸坐标到归一化坐标
                                val normalizedX = (offset.x - imageDisplayRect.left) / imageDisplayRect.width
                                val normalizedY = (offset.y - imageDisplayRect.top) / imageDisplayRect.height

                                // 判断拖拽哪个手柄
                                dragHandle = detectDragHandle(
                                    normalizedX, normalizedY, currentCropRect,
                                    handleSize = 80f / imageDisplayRect.width
                                )
                            },
                            onDrag = { change, dragAmount ->
                                change.consume()
                                val handle = dragHandle ?: return@detectDragGestures

                                val dx = dragAmount.x / imageDisplayRect.width
                                val dy = dragAmount.y / imageDisplayRect.height

                                val newRect = moveCropRect(
                                    currentCropRect, handle, dx, dy,
                                    aspectOption.getAspectRatioValue(bitmap.width, bitmap.height),
                                    imageWidth / imageHeight
                                )

                                onCropRectChanged(newRect)
                            },
                            onDragEnd = {
                                dragHandle = null
                            }
                        )
                    }
            ) {
                drawCropOverlay(safeCropRect, imageDisplayRect)
            }
        }
    }
}

/**
 * 拖拽手柄类型
 */
private enum class DragHandle {
    TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT,
    TOP, BOTTOM, LEFT, RIGHT,
    CENTER
}

/**
 * 计算图片在容器中的适配显示区域（Fit 模式）
 */
private fun calculateImageDisplayRect(
    containerWidth: Float,
    containerHeight: Float,
    imageWidth: Float,
    imageHeight: Float,
    contentPadding: Float = 0f
): Rect {
    val horizontalPadding = min(contentPadding, containerWidth / 2f)
    val verticalPadding = min(contentPadding, containerHeight / 2f)
    val availableWidth = (containerWidth - horizontalPadding * 2f).coerceAtLeast(1f)
    val availableHeight = (containerHeight - verticalPadding * 2f).coerceAtLeast(1f)
    val imageAspect = imageWidth / imageHeight
    val containerAspect = availableWidth / availableHeight

    val displayWidth: Float
    val displayHeight: Float

    if (imageAspect > containerAspect) {
        displayWidth = availableWidth
        displayHeight = availableWidth / imageAspect
    } else {
        displayHeight = availableHeight
        displayWidth = availableHeight * imageAspect
    }

    val offsetX = horizontalPadding + (availableWidth - displayWidth) / 2f
    val offsetY = verticalPadding + (availableHeight - displayHeight) / 2f

    return Rect(offsetX, offsetY, offsetX + displayWidth, offsetY + displayHeight)
}

/**
 * 检测触摸点对应的拖拽手柄
 */
private fun detectDragHandle(
    x: Float, y: Float,
    rect: RectF,
    handleSize: Float
): DragHandle? {
    val cornerThreshold = handleSize * 2.0f

    // 四角
    if (abs(x - rect.left) < cornerThreshold && abs(y - rect.top) < cornerThreshold)
        return DragHandle.TOP_LEFT
    if (abs(x - rect.right) < cornerThreshold && abs(y - rect.top) < cornerThreshold)
        return DragHandle.TOP_RIGHT
    if (abs(x - rect.left) < cornerThreshold && abs(y - rect.bottom) < cornerThreshold)
        return DragHandle.BOTTOM_LEFT
    if (abs(x - rect.right) < cornerThreshold && abs(y - rect.bottom) < cornerThreshold)
        return DragHandle.BOTTOM_RIGHT

    // 四边
    val edgeThreshold = handleSize
    if (abs(y - rect.top) < edgeThreshold && x > rect.left && x < rect.right)
        return DragHandle.TOP
    if (abs(y - rect.bottom) < edgeThreshold && x > rect.left && x < rect.right)
        return DragHandle.BOTTOM
    if (abs(x - rect.left) < edgeThreshold && y > rect.top && y < rect.bottom)
        return DragHandle.LEFT
    if (abs(x - rect.right) < edgeThreshold && y > rect.top && y < rect.bottom)
        return DragHandle.RIGHT

    // 内部 → 平移
    if (x > rect.left && x < rect.right && y > rect.top && y < rect.bottom)
        return DragHandle.CENTER

    return null
}

/**
 * 根据拖拽更新裁剪矩形
 */
private fun moveCropRect(
    rect: RectF,
    handle: DragHandle,
    dx: Float, dy: Float,
    fixedAspect: Float?,
    imageAspect: Float
): RectF {
    val minSize = 0.1f // 最小裁剪区域为图片的 10%
    val result = normalizeCropRect(rect, minSize)

    when (handle) {
        DragHandle.CENTER -> {
            val w = result.width()
            val h = result.height()
            val maxLeft = (1f - w).coerceAtLeast(0f)
            val maxTop = (1f - h).coerceAtLeast(0f)
            val newLeft = (result.left + dx).coerceIn(0f, maxLeft)
            val newTop = (result.top + dy).coerceIn(0f, maxTop)
            result.set(newLeft, newTop, newLeft + w, newTop + h)
        }
        else -> {
            if (fixedAspect != null) {
                moveWithFixedAspect(result, handle, dx, dy, fixedAspect, imageAspect, minSize)
            } else {
                moveWithFreeAspect(result, handle, dx, dy, minSize)
            }
        }
    }

    // 确保在边界内
    result.left = result.left.coerceIn(0f, 1f)
    result.top = result.top.coerceIn(0f, 1f)
    result.right = result.right.coerceIn(0f, 1f)
    result.bottom = result.bottom.coerceIn(0f, 1f)

    // 确保最小尺寸
    if (result.width() < minSize || result.height() < minSize) {
        return normalizeCropRect(rect, minSize)
    }

    return result
}

private fun normalizeCropRect(rect: RectF, minSize: Float = 0.1f): RectF {
    val rawLeft = min(rect.left.safeCropValue(0f), rect.right.safeCropValue(1f))
    val rawTop = min(rect.top.safeCropValue(0f), rect.bottom.safeCropValue(1f))
    val rawRight = max(rect.left.safeCropValue(0f), rect.right.safeCropValue(1f))
    val rawBottom = max(rect.top.safeCropValue(0f), rect.bottom.safeCropValue(1f))

    var left = rawLeft.coerceIn(0f, 1f)
    var top = rawTop.coerceIn(0f, 1f)
    var right = rawRight.coerceIn(0f, 1f)
    var bottom = rawBottom.coerceIn(0f, 1f)

    val safeMinSize = minSize.coerceIn(0f, 1f)
    if (right - left < safeMinSize) {
        val centerX = ((left + right) / 2f).coerceIn(0f, 1f)
        left = (centerX - safeMinSize / 2f).coerceIn(0f, 1f - safeMinSize)
        right = left + safeMinSize
    }
    if (bottom - top < safeMinSize) {
        val centerY = ((top + bottom) / 2f).coerceIn(0f, 1f)
        top = (centerY - safeMinSize / 2f).coerceIn(0f, 1f - safeMinSize)
        bottom = top + safeMinSize
    }

    return RectF(left, top, right, bottom)
}

private fun Float.safeCropValue(fallback: Float): Float {
    return if (isFinite()) this else fallback
}

/**
 * 自由比例拖拽
 */
private fun moveWithFreeAspect(
    rect: RectF,
    handle: DragHandle,
    dx: Float, dy: Float,
    minSize: Float
) {
    when (handle) {
        DragHandle.TOP_LEFT -> {
            rect.left = min(rect.left + dx, rect.right - minSize)
            rect.top = min(rect.top + dy, rect.bottom - minSize)
        }
        DragHandle.TOP_RIGHT -> {
            rect.right = max(rect.right + dx, rect.left + minSize)
            rect.top = min(rect.top + dy, rect.bottom - minSize)
        }
        DragHandle.BOTTOM_LEFT -> {
            rect.left = min(rect.left + dx, rect.right - minSize)
            rect.bottom = max(rect.bottom + dy, rect.top + minSize)
        }
        DragHandle.BOTTOM_RIGHT -> {
            rect.right = max(rect.right + dx, rect.left + minSize)
            rect.bottom = max(rect.bottom + dy, rect.top + minSize)
        }
        DragHandle.TOP -> {
            rect.top = min(rect.top + dy, rect.bottom - minSize)
        }
        DragHandle.BOTTOM -> {
            rect.bottom = max(rect.bottom + dy, rect.top + minSize)
        }
        DragHandle.LEFT -> {
            rect.left = min(rect.left + dx, rect.right - minSize)
        }
        DragHandle.RIGHT -> {
            rect.right = max(rect.right + dx, rect.left + minSize)
        }
        else -> {}
    }
}

/**
 * 固定比例拖拽
 * aspectRatio = targetW_ratio / targetH_ratio (裁剪比例，如 4:3 → 4/3)
 * imageAspect = image_w / image_h (原图宽高比)
 *
 * 裁剪框的归一化坐标中，实际宽高比 = (rect.width * imageWidth) / (rect.height * imageHeight)
 * 为了让裁剪结果的像素比 = aspectRatio，需要：
 *   rect.width / rect.height = aspectRatio / imageAspect
 */
private fun moveWithFixedAspect(
    rect: RectF,
    handle: DragHandle,
    dx: Float, dy: Float,
    targetAspect: Float,
    imageAspect: Float,
    minSize: Float
) {
    // 在归一化坐标中，保持 w/h = targetAspect / imageAspect
    val normalizedAspect = targetAspect / imageAspect

    when (handle) {
        DragHandle.TOP_LEFT -> {
            val newLeft = min(rect.left + dx, rect.right - minSize)
            val newWidth = rect.right - newLeft
            val newHeight = newWidth / normalizedAspect
            val newTop = rect.bottom - newHeight
            if (newTop >= 0f && newWidth >= minSize && newHeight >= minSize) {
                rect.left = newLeft
                rect.top = newTop
            }
        }
        DragHandle.TOP_RIGHT -> {
            val newRight = max(rect.right + dx, rect.left + minSize)
            val newWidth = newRight - rect.left
            val newHeight = newWidth / normalizedAspect
            val newTop = rect.bottom - newHeight
            if (newTop >= 0f && newWidth >= minSize && newHeight >= minSize) {
                rect.right = newRight
                rect.top = newTop
            }
        }
        DragHandle.BOTTOM_LEFT -> {
            val newLeft = min(rect.left + dx, rect.right - minSize)
            val newWidth = rect.right - newLeft
            val newHeight = newWidth / normalizedAspect
            val newBottom = rect.top + newHeight
            if (newBottom <= 1f && newWidth >= minSize && newHeight >= minSize) {
                rect.left = newLeft
                rect.bottom = newBottom
            }
        }
        DragHandle.BOTTOM_RIGHT -> {
            val newRight = max(rect.right + dx, rect.left + minSize)
            val newWidth = newRight - rect.left
            val newHeight = newWidth / normalizedAspect
            val newBottom = rect.top + newHeight
            if (newBottom <= 1f && newWidth >= minSize && newHeight >= minSize) {
                rect.right = newRight
                rect.bottom = newBottom
            }
        }
        DragHandle.TOP, DragHandle.BOTTOM -> {
            val primaryDy = if (handle == DragHandle.TOP) dy else dy
            val newTop = if (handle == DragHandle.TOP) min(rect.top + primaryDy, rect.bottom - minSize) else rect.top
            val newBottom = if (handle == DragHandle.BOTTOM) max(rect.bottom + primaryDy, rect.top + minSize) else rect.bottom
            val newHeight = newBottom - newTop
            val newWidth = newHeight * normalizedAspect
            val centerX = (rect.left + rect.right) / 2f
            val newLeft = centerX - newWidth / 2f
            val newRight = centerX + newWidth / 2f
            if (newLeft >= 0f && newRight <= 1f && newWidth >= minSize && newHeight >= minSize) {
                rect.top = newTop
                rect.bottom = newBottom
                rect.left = newLeft
                rect.right = newRight
            }
        }
        DragHandle.LEFT, DragHandle.RIGHT -> {
            val newLeft = if (handle == DragHandle.LEFT) min(rect.left + dx, rect.right - minSize) else rect.left
            val newRight = if (handle == DragHandle.RIGHT) max(rect.right + dx, rect.left + minSize) else rect.right
            val newWidth = newRight - newLeft
            val newHeight = newWidth / normalizedAspect
            val centerY = (rect.top + rect.bottom) / 2f
            val newTop = centerY - newHeight / 2f
            val newBottom = centerY + newHeight / 2f
            if (newTop >= 0f && newBottom <= 1f && newWidth >= minSize && newHeight >= minSize) {
                rect.left = newLeft
                rect.right = newRight
                rect.top = newTop
                rect.bottom = newBottom
            }
        }
        else -> {}
    }
}

/**
 * 绘制裁剪叠加效果
 */
private fun DrawScope.drawCropOverlay(
    cropRect: RectF,
    imageDisplayRect: Rect
) {
    val left = imageDisplayRect.left + cropRect.left * imageDisplayRect.width
    val top = imageDisplayRect.top + cropRect.top * imageDisplayRect.height
    val right = imageDisplayRect.left + cropRect.right * imageDisplayRect.width
    val bottom = imageDisplayRect.top + cropRect.bottom * imageDisplayRect.height

    val dimColor = Color.Black.copy(alpha = 0.6f)

    // 上方遮罩
    drawRect(dimColor, Offset(0f, 0f), Size(size.width, top))
    // 下方遮罩
    drawRect(dimColor, Offset(0f, bottom), Size(size.width, size.height - bottom))
    // 左侧遮罩
    drawRect(dimColor, Offset(0f, top), Size(left, bottom - top))
    // 右侧遮罩
    drawRect(dimColor, Offset(right, top), Size(size.width - right, bottom - top))

    // 裁剪框边框
    val borderColor = Color.White
    drawRect(
        borderColor,
        Offset(left, top),
        Size(right - left, bottom - top),
        style = Stroke(width = 3f)
    )

    // 三等分网格线
    val thirdWidth = (right - left) / 3f
    val thirdHeight = (bottom - top) / 3f
    val gridColor = Color.White.copy(alpha = 0.3f)

    // 竖线
    for (i in 1..2) {
        val x = left + thirdWidth * i
        drawLine(gridColor, Offset(x, top), Offset(x, bottom), strokeWidth = 2f)
    }
    // 横线
    for (i in 1..2) {
        val y = top + thirdHeight * i
        drawLine(gridColor, Offset(left, y), Offset(right, y), strokeWidth = 2f)
    }

    // 四角手柄
    val handleLength = 64f
    val handleWidth = 10f
    val handleColor = Color.White

    // 左上
    drawLine(handleColor, Offset(left - 1, top), Offset(left + handleLength, top), strokeWidth = handleWidth)
    drawLine(handleColor, Offset(left, top - 1), Offset(left, top + handleLength), strokeWidth = handleWidth)

    // 右上
    drawLine(handleColor, Offset(right + 1, top), Offset(right - handleLength, top), strokeWidth = handleWidth)
    drawLine(handleColor, Offset(right, top - 1), Offset(right, top + handleLength), strokeWidth = handleWidth)

    // 左下
    drawLine(handleColor, Offset(left - 1, bottom), Offset(left + handleLength, bottom), strokeWidth = handleWidth)
    drawLine(handleColor, Offset(left, bottom + 1), Offset(left, bottom - handleLength), strokeWidth = handleWidth)

    // 右下
    drawLine(handleColor, Offset(right + 1, bottom), Offset(right - handleLength, bottom), strokeWidth = handleWidth)
    drawLine(handleColor, Offset(right, bottom + 1), Offset(right, bottom - handleLength), strokeWidth = handleWidth)
}

/**
 * 根据目标比例计算居中的初始裁剪区域（归一化坐标 0-1）
 */
fun calculateInitialCropRect(
    imageWidth: Int,
    imageHeight: Int,
    aspectOption: CropAspectOption
): RectF {
    if (aspectOption.isFree || aspectOption.isOriginal) {
        return RectF(0f, 0f, 1f, 1f)
    }

    val targetAspect = aspectOption.getAspectRatioValue(imageWidth, imageHeight) ?: return RectF(0f, 0f, 1f, 1f)
    val imageAspect = imageWidth.toFloat() / imageHeight.toFloat()

    // 裁剪框在归一化坐标中的比例 = targetAspect / imageAspect
    val normalizedAspect = targetAspect / imageAspect

    val cropW: Float
    val cropH: Float

    if (normalizedAspect > 1f) {
        // 裁剪框比图片宽 → 宽度为1，高度缩小
        cropW = 1f
        cropH = 1f / normalizedAspect
    } else {
        // 裁剪框比图片窄 → 高度为1，宽度缩小
        cropH = 1f
        cropW = normalizedAspect
    }

    val left = (1f - cropW) / 2f
    val top = (1f - cropH) / 2f

    return RectF(left, top, left + cropW, top + cropH)
}
