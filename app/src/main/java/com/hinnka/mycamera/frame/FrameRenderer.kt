package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.*
import android.graphics.drawable.AdaptiveIconDrawable
import android.graphics.drawable.Drawable
import android.util.TypedValue
import androidx.core.graphics.withSave
import androidx.core.graphics.drawable.toBitmap
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.lut.LutManager
import java.text.SimpleDateFormat
import java.util.*
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.roundToInt


/**
 * 边框渲染器
 * 
 * 使用 Android Canvas 渲染带边框水印的照片
 */
class FrameRenderer(
    private val context: Context,
    private val lutManager: LutManager? = null
) {

    companion object {
        private const val TAG = "FrameRenderer"
    }

    // 缓存的 Paint 对象
    private val textPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        textAlign = Paint.Align.LEFT
    }

    private val backgroundPaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val linePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val photoShadowPaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val photoClipPath = Path()
    private val gainmapPaint = Paint(Paint.FILTER_BITMAP_FLAG)

    private data class FrameGeometry(
        val outputWidth: Int,
        val outputHeight: Int,
        val photoRect: RectF,
    )

    /**
     * 渲染带边框的照片
     * 
     * @param originalBitmap 原始照片
     * @param template 边框模板
     * @param metadata EXIF 元数据
     * @return 带边框的照片
     */
    fun render(
        originalBitmap: Bitmap,
        template: FrameTemplate,
        metadata: MediaMetadata,
    ): Bitmap {

//        PLog.d(TAG, "render: $metadata")

        val layout = template.layout

        val expectedHeight = originalBitmap.height * 0.08f
        val scale = expectedHeight / dpToPx(80) // 以 80dp 为基准高度计算缩放比例

        val frameHeight = (dpToPx(layout.heightDp) * scale).toInt()
        val padding = (dpToPx(layout.paddingDp) * scale).toInt()
        val borderWidth = (dpToPx(layout.borderWidthDp) * scale).toInt()

        // 计算输出尺寸
        val outputWidth: Int
        val outputHeight: Int

        when (layout.position) {
            FramePosition.BOTTOM -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height + frameHeight
            }

            FramePosition.TOP -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height + frameHeight
            }

            FramePosition.BOTH -> {
                outputWidth = originalBitmap.width + borderWidth * 2
                outputHeight = originalBitmap.height + frameHeight * 2
            }

            FramePosition.OVERLAY -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height
            }

            FramePosition.BORDER -> {
                // 照片顶部/左右边框 + 底部信息区；水印侧不额外占用 border。
                outputWidth = originalBitmap.width + borderWidth * 2
                outputHeight = originalBitmap.height + frameHeight + borderWidth
            }

            FramePosition.IMAGE -> {
                // IMAGE 模式使用单独的渲染方法
                return renderImageFrame(originalBitmap, template.layout)
            }
        }

        // 创建输出 Bitmap
        val output = createBitmap(outputWidth, outputHeight)
        val canvas = Canvas(output)

        // OVERLAY 模式不需要绘制整体背景
        if (layout.position != FramePosition.OVERLAY) {
            backgroundPaint.color = layout.backgroundColor
            canvas.drawRect(0f, 0f, outputWidth.toFloat(), outputHeight.toFloat(), backgroundPaint)
        }

        // 绘制原图
        val photoLeft: Float
        val photoTop: Float

        when (layout.position) {
            FramePosition.BOTTOM -> {
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.TOP -> {
                photoLeft = 0f
                photoTop = frameHeight.toFloat()
            }

            FramePosition.BOTH -> {
                photoLeft = borderWidth.toFloat()
                photoTop = frameHeight.toFloat()
            }

            FramePosition.OVERLAY -> {
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.BORDER -> {
                photoLeft = borderWidth.toFloat()
                photoTop = borderWidth.toFloat()
            }
        }
        drawPhotoBorder(
            canvas = canvas,
            layout = layout,
            borderWidth = borderWidth,
            photoLeft = photoLeft,
            photoTop = photoTop,
            photoWidth = originalBitmap.width.toFloat(),
            photoHeight = originalBitmap.height.toFloat(),
            outputWidth = outputWidth.toFloat()
        )
        drawPhotoShadowIfNeeded(
            canvas = canvas,
            layout = layout,
            photoLeft = photoLeft,
            photoTop = photoTop,
            photoWidth = originalBitmap.width.toFloat(),
            photoHeight = originalBitmap.height.toFloat(),
            borderWidth = borderWidth,
            scale = scale
        )
        drawPhotoBitmap(canvas, originalBitmap, layout, photoLeft, photoTop, scale)

        // 绘制边框内容
        when (layout.position) {
            FramePosition.BOTTOM -> {
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = originalBitmap.height.toFloat(),
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat(),
                    scale = scale
                )
            }

            FramePosition.TOP -> {
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = 0f,
                    right = (outputWidth - padding).toFloat(),
                    bottom = frameHeight.toFloat(),
                    scale = scale
                )
            }

            FramePosition.BOTH -> {
                // 顶部
                drawFrameContent(
                    canvas, template.elementsTop ?: template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = 0f,
                    right = (outputWidth - padding).toFloat(),
                    bottom = frameHeight.toFloat(),
                    scale = scale
                )
                // 底部
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = (originalBitmap.height + frameHeight).toFloat(),
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat(),
                    scale = scale
                )
            }

            FramePosition.OVERLAY -> {
                // 叠加模式：绘制从全透明到半透明的渐变背景
                val overlayTop = (originalBitmap.height - frameHeight).toFloat()

                // 创建线性渐变：从顶部全透明到底部半透明
                val gradientShader = LinearGradient(
                    0f, overlayTop,
                    0f, outputHeight.toFloat(),
                    Color.TRANSPARENT,
                    layout.backgroundColor,
                    Shader.TileMode.CLAMP
                )
                backgroundPaint.shader = gradientShader
                canvas.drawRect(0f, overlayTop, outputWidth.toFloat(), outputHeight.toFloat(), backgroundPaint)
                backgroundPaint.shader = null  // 重置 shader


                // 绘制水印内容
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = overlayTop + padding.toFloat(),
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat() - padding.toFloat(),
                    scale = scale
                )
            }

            FramePosition.BORDER -> {
                // 四周边框模式：底部信息区
                val infoTop = (originalBitmap.height + borderWidth).toFloat()
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding.toFloat(),
                    top = infoTop,
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat(),
                    scale = scale
                )
            }
        }

        return output
    }

    fun renderGainmapContents(
        originalBitmap: Bitmap,
        gainmapContents: Bitmap,
        template: FrameTemplate,
    ): Bitmap {
        if (gainmapContents.isRecycled || originalBitmap.width <= 0 || originalBitmap.height <= 0) {
            return gainmapContents
        }

        if (template.layout.position == FramePosition.IMAGE) {
            return renderImageFrameGainmapContents(originalBitmap, gainmapContents, template.layout)
        }

        val geometry = calculateFrameGeometry(originalBitmap, template.layout) ?: return gainmapContents
        if (
            geometry.outputWidth == originalBitmap.width &&
            geometry.outputHeight == originalBitmap.height &&
            geometry.photoRect.left == 0f &&
            geometry.photoRect.top == 0f
        ) {
            return gainmapContents
        }

        return renderGainmapIntoPhotoRect(
            originalBitmap = originalBitmap,
            gainmapContents = gainmapContents,
            outputWidth = geometry.outputWidth,
            outputHeight = geometry.outputHeight,
            photoRect = geometry.photoRect
        )
    }

    private fun calculateFrameGeometry(
        originalBitmap: Bitmap,
        layout: FrameLayout,
    ): FrameGeometry? {
        val expectedHeight = originalBitmap.height * 0.08f
        val scale = expectedHeight / dpToPx(80)
        val frameHeight = (dpToPx(layout.heightDp) * scale).toInt()
        val borderWidth = (dpToPx(layout.borderWidthDp) * scale).toInt()

        val outputWidth: Int
        val outputHeight: Int
        val photoLeft: Float
        val photoTop: Float

        when (layout.position) {
            FramePosition.BOTTOM -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height + frameHeight
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.TOP -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height + frameHeight
                photoLeft = 0f
                photoTop = frameHeight.toFloat()
            }

            FramePosition.BOTH -> {
                outputWidth = originalBitmap.width + borderWidth * 2
                outputHeight = originalBitmap.height + frameHeight * 2
                photoLeft = borderWidth.toFloat()
                photoTop = frameHeight.toFloat()
            }

            FramePosition.OVERLAY -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.BORDER -> {
                outputWidth = originalBitmap.width + borderWidth * 2
                outputHeight = originalBitmap.height + frameHeight + borderWidth
                photoLeft = borderWidth.toFloat()
                photoTop = borderWidth.toFloat()
            }

            FramePosition.IMAGE -> return null
        }

        if (outputWidth <= 0 || outputHeight <= 0) return null
        return FrameGeometry(
            outputWidth = outputWidth,
            outputHeight = outputHeight,
            photoRect = RectF(
                photoLeft,
                photoTop,
                photoLeft + originalBitmap.width,
                photoTop + originalBitmap.height
            )
        )
    }

    private fun renderGainmapIntoPhotoRect(
        originalBitmap: Bitmap,
        gainmapContents: Bitmap,
        outputWidth: Int,
        outputHeight: Int,
        photoRect: RectF,
    ): Bitmap {
        val gainmapWidthScale = gainmapContents.width.toFloat() / originalBitmap.width.toFloat()
        val gainmapHeightScale = gainmapContents.height.toFloat() / originalBitmap.height.toFloat()
        val outputGainmapWidth = (outputWidth * gainmapWidthScale).roundToInt().coerceAtLeast(1)
        val outputGainmapHeight = (outputHeight * gainmapHeightScale).roundToInt().coerceAtLeast(1)
        val output = createNeutralGainmapBitmap(
            width = outputGainmapWidth,
            height = outputGainmapHeight,
            source = gainmapContents
        )
        val canvas = Canvas(output)
        val outputScaleX = outputGainmapWidth.toFloat() / outputWidth.toFloat()
        val outputScaleY = outputGainmapHeight.toFloat() / outputHeight.toFloat()
        val destination = RectF(
            photoRect.left * outputScaleX,
            photoRect.top * outputScaleY,
            photoRect.right * outputScaleX,
            photoRect.bottom * outputScaleY
        )
        canvas.drawBitmap(gainmapContents, null, destination, gainmapPaint)
        return output
    }

    private fun drawPhotoBitmap(
        canvas: Canvas,
        originalBitmap: Bitmap,
        layout: FrameLayout,
        photoLeft: Float,
        photoTop: Float,
        scale: Float
    ) {
        val cornerRadius = dpToPx(layout.photoCornerRadiusDp.coerceAtLeast(0)).toFloat() * scale
        if (cornerRadius <= 0f) {
            canvas.drawBitmap(originalBitmap, photoLeft, photoTop, null)
            return
        }

        val photoRect = RectF(
            photoLeft,
            photoTop,
            photoLeft + originalBitmap.width,
            photoTop + originalBitmap.height
        )
        photoClipPath.reset()
        photoClipPath.addRoundRect(photoRect, cornerRadius, cornerRadius, Path.Direction.CW)
        canvas.withSave {
            clipPath(photoClipPath)
            drawBitmap(originalBitmap, photoLeft, photoTop, null)
        }
    }

    private fun drawPhotoBorder(
        canvas: Canvas,
        layout: FrameLayout,
        borderWidth: Int,
        photoLeft: Float,
        photoTop: Float,
        photoWidth: Float,
        photoHeight: Float,
        outputWidth: Float
    ) {
        if (borderWidth <= 0) return
        if (layout.position != FramePosition.BORDER && layout.position != FramePosition.BOTH) return

        backgroundPaint.color = layout.borderColor

        if (layout.position == FramePosition.BORDER) {
            canvas.drawRect(0f, 0f, outputWidth, borderWidth.toFloat(), backgroundPaint)
        }

        canvas.drawRect(
            0f,
            photoTop,
            photoLeft,
            photoTop + photoHeight,
            backgroundPaint
        )
        canvas.drawRect(
            photoLeft + photoWidth,
            photoTop,
            outputWidth,
            photoTop + photoHeight,
            backgroundPaint
        )
    }

    private fun drawPhotoShadowIfNeeded(
        canvas: Canvas,
        layout: FrameLayout,
        photoLeft: Float,
        photoTop: Float,
        photoWidth: Float,
        photoHeight: Float,
        borderWidth: Int,
        scale: Float
    ) {
        val supportsBorderShadow = borderWidth > 0 &&
            (layout.position == FramePosition.BORDER || layout.position == FramePosition.BOTH)
        if (!supportsBorderShadow || !layout.photoShadowEnabled) return

        val shadowAlpha = (layout.photoShadowColor ushr 24) and 0xFF
        if (shadowAlpha == 0) return

        val radius = dpToPx(layout.photoShadowRadiusDp.coerceAtLeast(0)).toFloat() * scale
        val cornerRadius = dpToPx(layout.photoCornerRadiusDp.coerceAtLeast(0)).toFloat() * scale
        val offsetX = dpToPx(layout.photoShadowOffsetXDp) * scale
        val offsetY = dpToPx(layout.photoShadowOffsetYDp) * scale

        photoShadowPaint.reset()
        photoShadowPaint.isAntiAlias = true
        photoShadowPaint.color = Color.WHITE
        photoShadowPaint.setShadowLayer(radius, offsetX, offsetY, layout.photoShadowColor)

        val shadowRect = RectF(
            photoLeft,
            photoTop,
            photoLeft + photoWidth,
            photoTop + photoHeight
        )
        canvas.drawRoundRect(shadowRect, cornerRadius, cornerRadius, photoShadowPaint)
        photoShadowPaint.clearShadowLayer()
    }

    private fun drawFrameContent(
        canvas: Canvas,
        elements: List<FrameElement>,
        metadata: MediaMetadata,
        layout: FrameLayout,
        left: Float,
        top: Float,
        right: Float,
        bottom: Float,
        scale: Float = 1f
    ) {
        // 将元素按对齐方式分组并过滤不可见元素
        val startElements = filterVisibleGroup(
            elements.filter { getAlignment(it) == ElementAlignment.START },
            metadata
        )
        val centerElements = filterVisibleGroup(
            elements.filter { getAlignment(it) == ElementAlignment.CENTER },
            metadata
        )
        val endElements =
            filterVisibleGroup(elements.filter { getAlignment(it) == ElementAlignment.END }, metadata)

        val visibleElements = startElements + centerElements + endElements

        // 获取所有行号以计算行数
        val allLines = visibleElements.map { getLine(it) }.filter { it >= 0 }.distinct().sorted()
        val lineCount = allLines.size
        val knownLines = if (allLines.isEmpty()) listOf(0) else allLines

        val height = bottom - top

        val linePixelHeights = allLines.map { line ->
            val maxElement = visibleElements.filter { it.line == line }.maxBy { it.size }
            when (maxElement) {
                is FrameElement.Text -> spToPx(maxElement.fontSizeSp) * scale
                else -> dpToPx(maxElement.size) * scale
            }
        }
        val spacingPx = dpToPx(layout.lineSpacingDp) * scale
        val totalContentHeight = linePixelHeights.sum() + (if (lineCount > 1) (lineCount - 1) * spacingPx else 0f)

        val startY = top + (height - totalContentHeight) / 2f

        /**
         * 计算指定行号的垂直中心位置
         */
        fun getLineCenterY(line: Int): Float {
            if (line == -1 || lineCount <= 1) return top + height / 2f

            val lineIndex = allLines.indexOf(line)
            if (lineIndex == -1) return top + height / 2f

            var currentY = startY
            for (i in 0 until lineIndex) {
                currentY += linePixelHeights[i] + spacingPx
            }
            return currentY + linePixelHeights[lineIndex] / 2f
        }

        /**
         * 绘制左对齐或右对齐的元素组
         */
        fun drawAlignedGroup(groupElements: List<FrameElement>, initialX: Float, leftToRight: Boolean) {
            val currentXPerLine = mutableMapOf<Int, Float>()

            for (element in if (leftToRight) groupElements else groupElements.reversed()) {
                val line = getLine(element)
                val centerY = getLineCenterY(line)

                val x = currentXPerLine.getOrDefault(line, initialX)
                val width = drawElement(canvas, element, metadata, x, centerY, leftToRight, scale)

                val nextX = if (leftToRight) x + width else x - width

                if (line == -1) {
                    // 全局元素，推进所有行的 X 坐标
                    currentXPerLine[-1] = nextX
                    knownLines.forEach { currentLine ->
                        currentXPerLine[currentLine] = nextX
                    }
                } else {
                    currentXPerLine[line] = nextX
                }
            }
        }

        /**
         * 绘制居中对齐的元素组（每行独立居中）
         */
        fun drawCenteredGroup(groupElements: List<FrameElement>) {
            // 按行分组
            val elementsByLine = groupElements.groupBy { getLine(it) }
            val availableWidth = right - left
            val elementSpacing = dpToPx(8) * scale  // 元素间距

            for ((line, lineElements) in elementsByLine) {
                // 计算该行的总宽度（扣除最后一个元素的间距）
                val lineWidth = lineElements.sumOf {
                    measureElementWidth(it, metadata, scale).toDouble()
                }.toFloat() - elementSpacing  // 减去最后一个元素多余的间距

                // 计算该行的起始 X 位置（居中）
                val startX = left + (availableWidth - lineWidth) / 2f
                val centerY = getLineCenterY(line)

                // 绘制该行的所有元素
                var currentX = startX
                for ((index, element) in lineElements.withIndex()) {
                    val isLast = index == lineElements.size - 1
                    val width = drawElement(canvas, element, metadata, currentX, centerY, true, scale)
                    // 最后一个元素不加间距
                    currentX += if (isLast) (width - elementSpacing) else width
                }
            }
        }

        // 绘制左侧元素
        drawAlignedGroup(startElements, left, true)

        // 绘制右侧元素
        drawAlignedGroup(endElements, right, false)

        // 绘制中间元素（每行独立居中）
        drawCenteredGroup(centerElements)
    }

    /**
     * 获取元素对齐方式
     */
    private fun getAlignment(element: FrameElement): ElementAlignment {
        return when (element) {
            is FrameElement.Text -> element.alignment
            is FrameElement.Logo -> element.alignment
            is FrameElement.Divider -> element.alignment
            is FrameElement.Spacer -> ElementAlignment.START
        }
    }

    /**
     * 获取元素行号
     */
    private fun getLine(element: FrameElement): Int {
        return when (element) {
            is FrameElement.Text -> element.line
            is FrameElement.Logo -> element.line
            is FrameElement.Divider -> element.line
            is FrameElement.Spacer -> element.line
        }
    }

    private fun measureElementsWidth(
        elements: List<FrameElement>,
        metadata: MediaMetadata,
        showAppBranding: Boolean,
        scale: Float = 1f
    ): Float {
        val xPerLine = mutableMapOf<Int, Float>()
        val realLines = elements.map { getLine(it) }.filter { it >= 0 }.distinct().sorted()
        val knownLines = if (realLines.isEmpty()) listOf(0) else realLines
        for (element in elements) {
            val width = measureElementWidth(element, metadata, scale)
            val line = getLine(element)

            if (line == -1) {
                val max = (xPerLine.values.maxOrNull() ?: 0f) + width
                xPerLine[-1] = max
                knownLines.forEach { currentLine ->
                    xPerLine[currentLine] = max
                }
            } else {
                val current = xPerLine.getOrDefault(line, 0f)
                xPerLine[line] = current + width
            }
        }
        return xPerLine.values.maxOrNull() ?: 0f
    }

    private fun isElementVisible(element: FrameElement, metadata: MediaMetadata): Boolean {
        return when (element) {
            is FrameElement.Text -> getTextContent(element, metadata) != null
            is FrameElement.Logo -> {
                val logoKey = metadata.customProperties["LOGO"]
                logoKey != "none"
            }

            is FrameElement.Divider -> true
            is FrameElement.Spacer -> true
        }
    }

    private fun filterVisibleGroup(
        elements: List<FrameElement>,
        metadata: MediaMetadata,
    ): List<FrameElement> {
        val initiallyVisible = elements.filter { isElementVisible(it, metadata) }
        val result = mutableListOf<FrameElement>()
        for (i in initiallyVisible.indices) {
            val element = initiallyVisible[i]
            if (element is FrameElement.Divider) {
                val line = getLine(element)
                // A vertical divider needs a non-divider visible element before AND after it in the same line
                if (element.orientation == DividerOrientation.VERTICAL) {
                    val hasBefore = initiallyVisible.take(i).any { getLine(it) == line && it !is FrameElement.Divider }
                    val hasAfter =
                        initiallyVisible.drop(i + 1).any { getLine(it) == line && it !is FrameElement.Divider }
                    if (hasBefore && hasAfter) {
                        result.add(element)
                    }
                } else {
                    result.add(element)
                }
            } else {
                result.add(element)
            }
        }
        return result
    }

    /**
     * 测量单个元素宽度
     */
    private fun measureElementWidth(
        element: FrameElement,
        metadata: MediaMetadata,
        scale: Float = 1f
    ): Float {
        return when (element) {
            is FrameElement.Text -> {
                val text = getTextContent(element, metadata) ?: return 0f
                textPaint.textSize = spToPx(element.fontSizeSp) * scale
                textPaint.typeface = getTextTypeface(element, metadata)
                textPaint.measureText(text) + dpToPx(8) * scale
            }

            is FrameElement.Logo -> {
                val logoKey = metadata.customProperties["LOGO"]
                if (logoKey == "none") return 0f
                val (bmpW, _) = measureLogoSize(element, metadata, scale)
                bmpW + dpToPx(element.marginDp) * scale * 2 + dpToPx(8) * scale
            }

            is FrameElement.Divider -> {
                if (element.orientation == DividerOrientation.VERTICAL) {
                    (dpToPx(element.thicknessDp) + dpToPx(element.marginDp * 2)) * scale
                } else {
                    0f
                }
            }

            is FrameElement.Spacer -> {
                dpToPx(element.widthDp) * scale
            }
        }
    }

    /**
     * 绘制单个元素
     * 
     * @return 下一个元素的 X 位置
     */
    private fun drawElement(
        canvas: Canvas,
        element: FrameElement,
        metadata: MediaMetadata,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        scale: Float = 1f
    ): Float {
        return when (element) {
            is FrameElement.Text -> drawTextElement(
                canvas,
                element,
                metadata,
                x,
                centerY,
                leftToRight,
                scale
            )

            is FrameElement.Logo -> drawLogoElement(
                canvas,
                element,
                x,
                centerY,
                leftToRight,
                metadata,
                scale
            )

            is FrameElement.Divider -> drawDividerElement(canvas, element, x, centerY, leftToRight, scale)
            is FrameElement.Spacer -> dpToPx(element.widthDp) * scale
        }
    }

    /**
     * 绘制文本元素
     */
    private fun drawTextElement(
        canvas: Canvas,
        element: FrameElement.Text,
        metadata: MediaMetadata,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        scale: Float = 1f
    ): Float {
        val text = getTextContent(element, metadata) ?: return x

        textPaint.color = element.color
        textPaint.textSize = spToPx(element.fontSizeSp) * scale
        textPaint.typeface = getTextTypeface(element, metadata)

        val textWidth = textPaint.measureText(text)
        val textHeight = textPaint.descent() - textPaint.ascent()
        val textY = centerY - (textPaint.descent() + textPaint.ascent()) / 2

        val drawX = if (leftToRight) x else x - textWidth
        canvas.drawText(text, drawX, textY, textPaint)

        val spacing = dpToPx(8) * scale
        return textWidth + spacing
    }

    /**
     * 获取文本内容
     */
    private fun getTextContent(
        element: FrameElement.Text,
        metadata: MediaMetadata,
    ): String? {
        val metadataOverride = metadata.customProperties[element.textType.name]
        val content = when (element.textType) {
            TextType.DEVICE_MODEL -> metadata.deviceModel
            TextType.BRAND -> metadata.brand
            TextType.DATE -> metadata.dateTaken?.let {
                formatDate(it, element.format ?: "yyyy.MM.dd")
            }

            TextType.TIME -> metadata.dateTaken?.let {
                formatDate(it, element.format ?: "HH:mm")
            }

            TextType.DATETIME -> metadata.dateTaken?.let {
                formatDate(it, element.format ?: "yyyy.MM.dd HH:mm")
            }

            TextType.LOCATION -> metadata.location
            TextType.ISO -> metadata.iso?.let { "ISO $it" }
            TextType.SHUTTER_SPEED -> metadata.shutterSpeed
            TextType.FOCAL_LENGTH -> metadata.focalLength
            TextType.FOCAL_LENGTH_35MM -> metadata.focalLength35mm
            TextType.APERTURE -> metadata.aperture
            TextType.RESOLUTION -> metadata.resolution
            TextType.FILTER_NAME -> metadata.lutId?.let { lutManager?.getLutInfo(it)?.getName() }
            TextType.CUSTOM -> null
            TextType.APP_NAME -> context.getString(R.string.app_name)
        }

        val finalContent = when {
            element.overrideText != null -> element.overrideText
            metadataOverride != null -> metadataOverride
            element.textType == TextType.CUSTOM -> element.format
            else -> content
        } ?: return null

        val prefix = element.prefix ?: ""
        val suffix = element.suffix ?: ""
        return "$prefix$finalContent$suffix"
    }

    private fun measureLogoSize(
        element: FrameElement.Logo,
        metadata: MediaMetadata?,
        scale: Float = 1f
    ): Pair<Int, Int> {
        val size = (dpToPx(element.sizeDp) * scale).toInt()
        val maxWidth = if (element.maxWidth > 0) {
            (dpToPx(element.maxWidth) * scale).toInt()
        } else {
            0
        }

        // 获取对应的 drawable
        val logoKey = element.overrideSource ?: metadata?.customProperties?.get("LOGO")

        try {
            val bitmap = if (logoKey != null && (logoKey.startsWith("/") || logoKey.startsWith("content://"))) {
                BitmapFactory.decodeFile(logoKey)
            } else {
                val drawableRes = when (element.logoType) {
                    LogoType.APP -> R.mipmap.ic_launcher_round
                    LogoType.BRAND -> getBrandLogoDrawable(logoKey ?: metadata?.brand, element.light)
                }
                val drawable = context.getDrawable(drawableRes) ?: return 0 to 0
                val w = if (drawable.intrinsicWidth > 0) drawable.intrinsicWidth else size
                val h = if (drawable.intrinsicHeight > 0) drawable.intrinsicHeight else size
                drawableToBitmap(drawable, w, h)
            } ?: return 0 to 0

            val intrinsicW = bitmap.width
            val intrinsicH = bitmap.height
            return if (intrinsicW > 0 && intrinsicH > 0) {
                val ratio = (intrinsicW.toFloat() / intrinsicH.toFloat())
                val width = (size * ratio).toInt()
                if (maxWidth in 1..<width) {
                    // 超过最大宽度，按最大宽度计算高度
                    val adjustedHeight = (maxWidth / ratio).toInt()
                    maxWidth to adjustedHeight
                } else {
                    width to size
                }
            } else {
                // 无内在尺寸，退回到方形
                size to size
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to measure logo size", e)
            return 0 to 0
        }
    }

    /**
     * 绘制 Logo 元素
     */
    private fun drawLogoElement(
        canvas: Canvas,
        element: FrameElement.Logo,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        metadata: MediaMetadata? = null,
        scale: Float = 1f
    ): Float {
        // 如果是 App Logo 且不显示品牌，则跳过
        val margin = dpToPx(element.marginDp) * scale

        val size = (dpToPx(element.sizeDp) * scale).toInt()

        // 获取对应的 drawable
        val logoKey = element.overrideSource ?: metadata?.customProperties?.get("LOGO")
        if (logoKey == "none") return 0f

        try {
            val (bmpW, bmpH) = measureLogoSize(element, metadata, scale)
            if (bmpW <= 0 || bmpH <= 0) return x

            val bitmap = if (logoKey != null && (logoKey.startsWith("/") || logoKey.startsWith("content://"))) {
                BitmapFactory.decodeFile(logoKey)
            } else {
                val drawableRes = when (element.logoType) {
                    LogoType.APP -> R.mipmap.ic_launcher_round
                    LogoType.BRAND -> getBrandLogoDrawable(logoKey ?: metadata?.brand, element.light)
                }
                val drawable = context.getDrawable(drawableRes) ?: return x
                drawableToBitmap(drawable, bmpW.coerceAtLeast(1), bmpH.coerceAtLeast(1))
            } ?: return x

            // 如果 bitmap 尺寸与 measure 不一致，则缩放
            val drawnBitmap = if (bitmap.width != bmpW || bitmap.height != bmpH) {
                Bitmap.createScaledBitmap(bitmap, bmpW.coerceAtLeast(1), bmpH.coerceAtLeast(1), true)
            } else {
                bitmap
            }

            val drawX = if (leftToRight) (x + margin) else (x - bmpW - margin)
            val drawY = centerY - bmpH / 2f

            canvas.drawBitmap(drawnBitmap, drawX, drawY, null)

            return bmpW + margin * 2 + dpToPx(8) * scale
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to draw logo", e)
            return 0f
        }
    }

    /**
     * 根据品牌名获取对应的 Logo drawable
     * 
     * 注意：需要在 res/drawable 目录下添加对应的品牌 Logo 文件
     * 如 ic_brand_samsung.xml, ic_brand_xiaomi.xml 等
     * 未找到对应资源时使用通用图标
     */
    private val logoMap = mapOf(
        "photon" to listOf(R.drawable.ic_photon, R.drawable.ic_photon_light),
        "samsung" to listOf(R.drawable.ic_brand_samsung, R.drawable.ic_brand_samsung),
        "xiaomi" to listOf(R.drawable.ic_brand_xiaomi, R.drawable.ic_brand_xiaomi),
        "redmi" to listOf(R.drawable.ic_brand_xiaomi, R.drawable.ic_brand_xiaomi),
        "poco" to listOf(R.drawable.ic_brand_xiaomi, R.drawable.ic_brand_xiaomi),
        "huawei" to listOf(R.drawable.ic_brand_huawei, R.drawable.ic_brand_huawei_light),
        "honor" to listOf(R.drawable.ic_brand_honor, R.drawable.ic_brand_honor),
        "oppo" to listOf(R.drawable.ic_brand_oppo, R.drawable.ic_brand_oppo),
        "realme" to listOf(R.drawable.ic_brand_oppo, R.drawable.ic_brand_oppo),
        "oneplus" to listOf(R.drawable.ic_brand_oppo, R.drawable.ic_brand_oppo),
        "vivo" to listOf(R.drawable.ic_brand_vivo, R.drawable.ic_brand_vivo),
        "iqoo" to listOf(R.drawable.ic_brand_vivo, R.drawable.ic_brand_vivo),
        "apple" to listOf(R.drawable.ic_brand_apple, R.drawable.ic_brand_apple_light),
        "sony" to listOf(R.drawable.ic_brand_sony, R.drawable.ic_brand_sony_light),
        "canon" to listOf(R.drawable.ic_brand_canon, R.drawable.ic_brand_canon),
        "dji" to listOf(R.drawable.ic_brand_dji, R.drawable.ic_brand_dji),
        "fujifilm" to listOf(R.drawable.ic_brand_fujifilm, R.drawable.ic_brand_fujifilm_light),
        "hasselblad" to listOf(R.drawable.ic_brand_hasselblad, R.drawable.ic_brand_hasselblad_light),
        "hasselblad_l" to listOf(R.drawable.ic_brand_hasselblad_l, R.drawable.ic_brand_hasselblad_l_light),
        "leica" to listOf(R.drawable.ic_brand_leica, R.drawable.ic_brand_leica),
        "nikon" to listOf(R.drawable.ic_brand_nikon, R.drawable.ic_brand_nikon),
        "panasonic" to listOf(R.drawable.ic_brand_panasonic, R.drawable.ic_brand_panasonic_light),
        "olympus" to listOf(R.drawable.ic_brand_olympus, R.drawable.ic_brand_olympus),
        "pentax" to listOf(R.drawable.ic_brand_pentax, R.drawable.ic_brand_pentax),
        "ricoh" to listOf(R.drawable.ic_brand_ricoh, R.drawable.ic_brand_ricoh),
        "xpan" to listOf(R.drawable.ic_xpan, R.drawable.ic_xpan_light),
    )

    private fun getBrandLogoDrawable(brand: String?, light: Boolean = false): Int {
        if (brand == null || brand == "none") return R.mipmap.ic_launcher_round

        // 尝试获取品牌特定的 Logo
        val brandLower = brand.lowercase()
        val drawableRes = logoMap.firstNotNullOfOrNull { (key, value) ->
            if (brandLower == key) value.getOrNull(if (light) 1 else 0) else null
        }

        // 使用通用品牌图标作为后备
        return drawableRes ?: R.mipmap.ic_launcher_round
    }

    /**
     * 绘制分隔线元素
     */
    private fun drawDividerElement(
        canvas: Canvas,
        element: FrameElement.Divider,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        scale: Float = 1f
    ): Float {
        linePaint.color = element.color
        linePaint.strokeWidth = dpToPx(element.thicknessDp) * scale

        val length = dpToPx(element.lengthDp) * scale
        val margin = dpToPx(element.marginDp) * scale

        val drawX = if (leftToRight) x + margin else x - margin

        if (element.orientation == DividerOrientation.VERTICAL) {
            canvas.drawLine(
                drawX, centerY - length / 2f,
                drawX, centerY + length / 2f,
                linePaint
            )
            return margin * 2 + linePaint.strokeWidth
        } else {
            // 水平线（通常不常用）
            canvas.drawLine(
                drawX - length / 2f, centerY,
                drawX + length / 2f, centerY,
                linePaint
            )
            return length + margin * 2
        }
    }

    /**
     * 渲染图片边框
     * 
     * 将照片填充到边框图片的透明区域中
     * 
     * @param originalBitmap 原始照片
     * @param layout 边框布局配置
     * @return 合成后的图片
     */
    private fun renderImageFrame(originalBitmap: Bitmap, layout: FrameLayout): Bitmap {
        val frameBitmap = loadImageFrameBitmap(originalBitmap, layout) ?: return originalBitmap

        // 检测透明区域的边界
        val transparentBounds = detectTransparentBounds(frameBitmap)
        if (transparentBounds.width() <= 0 || transparentBounds.height() <= 0) {
            PLog.e(TAG, "No transparent area detected in frame image")
            frameBitmap.recycle()
            return originalBitmap
        }

        PLog.d(TAG, "Transparent bounds: $transparentBounds, frame size: ${frameBitmap.width}x${frameBitmap.height}")

        // 保持模板图片原始尺寸，将原图按 centerCrop 方式填满透明区域，避免出现黑边。
        val output = createBitmap(frameBitmap.width, frameBitmap.height)
        val canvas = Canvas(output)

        drawBitmapCenterCrop(
            canvas = canvas,
            bitmap = originalBitmap,
            destination = RectF(transparentBounds)
        )

        // 再绘制边框图片（透明区域会显示下面的照片）
        canvas.drawBitmap(frameBitmap, 0f, 0f, null)
        frameBitmap.recycle()

        return output
    }

    private fun renderImageFrameGainmapContents(
        originalBitmap: Bitmap,
        gainmapContents: Bitmap,
        layout: FrameLayout
    ): Bitmap {
        val frameBitmap = loadImageFrameBitmap(originalBitmap, layout) ?: return gainmapContents
        try {
            val transparentBounds = detectTransparentBounds(frameBitmap)
            if (transparentBounds.width() <= 0 || transparentBounds.height() <= 0) {
                PLog.e(TAG, "No transparent area detected in frame image gainmap")
                return gainmapContents
            }

            val output = createNeutralGainmapBitmap(
                width = (frameBitmap.width * gainmapContents.width.toFloat() / originalBitmap.width.toFloat())
                    .roundToInt()
                    .coerceAtLeast(1),
                height = (frameBitmap.height * gainmapContents.height.toFloat() / originalBitmap.height.toFloat())
                    .roundToInt()
                    .coerceAtLeast(1),
                source = gainmapContents
            )
            val canvas = Canvas(output)
            val outputScaleX = output.width.toFloat() / frameBitmap.width.toFloat()
            val outputScaleY = output.height.toFloat() / frameBitmap.height.toFloat()
            drawBitmapCenterCrop(
                canvas = canvas,
                bitmap = gainmapContents,
                destination = RectF(
                    transparentBounds.left * outputScaleX,
                    transparentBounds.top * outputScaleY,
                    transparentBounds.right * outputScaleX,
                    transparentBounds.bottom * outputScaleY
                )
            )
            return output
        } finally {
            frameBitmap.recycle()
        }
    }

    private fun loadImageFrameBitmap(originalBitmap: Bitmap, layout: FrameLayout): Bitmap? {
        var frameBitmap = try {
            val options = BitmapFactory.Options().apply {
                inMutable = true
                inPreferredConfig = Bitmap.Config.ARGB_8888
            }

            // 优先使用文件路径（外部导入），其次使用资源名称（内置资源）
            when {
                layout.imagePath != null -> {
                    BitmapFactory.decodeFile(layout.imagePath, options)
                        ?: run {
                            PLog.e(TAG, "Frame image file not found: ${layout.imagePath}")
                            return null
                        }
                }

                layout.imageResName != null -> {
                    val resId = context.resources.getIdentifier(layout.imageResName, "drawable", context.packageName)
                    if (resId == 0) {
                        PLog.e(TAG, "Frame image resource not found: ${layout.imageResName}")
                        return null
                    }
                    BitmapFactory.decodeResource(context.resources, resId, options)
                        ?: run {
                            PLog.e(TAG, "Failed to decode frame image resource: ${layout.imageResName}")
                            return null
                        }
                }

                else -> {
                    PLog.e(TAG, "No image source specified for IMAGE frame")
                    return null
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load frame image", e)
            return null
        }

        // 检查方向是否匹配，如果不匹配则旋转边框
        val isPhotoPortrait = originalBitmap.height > originalBitmap.width
        val isFramePortrait = frameBitmap.height > frameBitmap.width

        if (isPhotoPortrait != isFramePortrait) {
            val matrix = Matrix()
            // 如果原本是不匹配的，旋转90度
            matrix.postRotate(90f)
            try {
                val originalFrame = frameBitmap
                val rotatedFrame = Bitmap.createBitmap(
                    originalFrame, 0, 0,
                    originalFrame.width, originalFrame.height,
                    matrix, true
                )
                frameBitmap = rotatedFrame
                // 只有当 createBitmap 返回了新的 Bitmap 对象时才回收原始对象
                if (rotatedFrame !== originalFrame) {
                    originalFrame.recycle()
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to rotate frame bitmap", e)
            }
        }

        return frameBitmap
    }

    private fun createNeutralGainmapBitmap(width: Int, height: Int, source: Bitmap): Bitmap {
        val config = source.config?.takeUnless { it == Bitmap.Config.HARDWARE } ?: Bitmap.Config.ALPHA_8
        return Bitmap.createBitmap(width, height, config).also {
            it.eraseColor(Color.TRANSPARENT)
        }
    }

    private fun drawBitmapCenterCrop(
        canvas: Canvas,
        bitmap: Bitmap,
        destination: RectF
    ) {
        if (destination.width() <= 0f || destination.height() <= 0f) return

        val srcWidth = bitmap.width.toFloat()
        val srcHeight = bitmap.height.toFloat()
        val dstWidth = destination.width()
        val dstHeight = destination.height()

        val scale = maxOf(dstWidth / srcWidth, dstHeight / srcHeight)
        val scaledWidth = srcWidth * scale
        val scaledHeight = srcHeight * scale

        val left = destination.left - (scaledWidth - dstWidth) / 2f
        val top = destination.top - (scaledHeight - dstHeight) / 2f
        val targetRect = RectF(left, top, left + scaledWidth, top + scaledHeight)

        canvas.drawBitmap(bitmap, null, targetRect, null)
    }

    /**
     * 检测图片中透明区域的边界
     * 
     * 扫描图片找出主要透明区域的矩形边界
     * 
     * @param bitmap 要检测的图片
     * @return 透明区域的矩形边界
     */
    private fun detectTransparentBounds(bitmap: Bitmap): Rect {
        val width = bitmap.width
        val height = bitmap.height

        // 透明度阈值（低于此值认为是透明的）
        val alphaThreshold = 10

        var minX = width
        var minY = height
        var maxX = 0
        var maxY = 0

        // 扫描所有像素找出透明区域边界
        val pixels = IntArray(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)

        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = pixels[y * width + x]
                val alpha = (pixel shr 24) and 0xFF

                if (alpha < alphaThreshold) {
                    if (x < minX) minX = x
                    if (x > maxX) maxX = x
                    if (y < minY) minY = y
                    if (y > maxY) maxY = y
                }
            }
        }

        // 如果没有找到透明区域，返回空矩形
        if (minX > maxX || minY > maxY) {
            return Rect(0, 0, 0, 0)
        }

        return Rect(minX, minY, maxX + 1, maxY + 1)
    }

    /**
     * 生成预览缩略图
     */
    fun renderPreview(
        originalBitmap: Bitmap,
        template: FrameTemplate,
        targetWidth: Int = 200
    ): Bitmap {
        // 缩放原图
        val scale = targetWidth.toFloat() / originalBitmap.width
        val scaledWidth = targetWidth
        val scaledHeight = (originalBitmap.height * scale).toInt()
        val scaledBitmap = Bitmap.createScaledBitmap(originalBitmap, scaledWidth, scaledHeight, true)

        // 渲染边框
        val metadata = MediaMetadata.createDefault(scaledWidth, scaledHeight)
        return render(scaledBitmap, template, metadata)
    }

    // 工具方法

    private fun dpToPx(dp: Int): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP,
            dp.toFloat(),
            context.resources.displayMetrics
        ).toInt()
    }

    private fun spToPx(sp: Int): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_SP,
            sp.toFloat(),
            context.resources.displayMetrics
        ).toInt()
    }

    private fun formatDate(timestamp: Long, format: String): String {
        return try {
            SimpleDateFormat(format, Locale.getDefault()).format(Date(timestamp))
        } catch (e: Exception) {
            ""
        }
    }

    private fun drawableToBitmap(drawable: Drawable, width: Int, height: Int): Bitmap {
        if (drawable is AdaptiveIconDrawable) {
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(bitmap)
            val path = Path().apply {
                addCircle(width / 2f, height / 2f, minOf(width, height) / 2f, Path.Direction.CW)
            }
            canvas.clipPath(path)
            drawable.setBounds(0, 0, width, height)
            drawable.draw(canvas)
            return bitmap
        }
        return drawable.toBitmap(width, height)
    }

    private val typefaceCache = mutableMapOf<String, Typeface>()

    private fun getTypeface(weight: FontWeight, fontFamily: String? = null): Typeface {
        if (fontFamily != null) {
            val cacheKey = "$fontFamily-$weight"
            typefaceCache[cacheKey]?.let { return it }

            try {
                val base = Typeface.createFromAsset(context.assets, "fonts/$fontFamily")
                val style = when (weight) {
                    FontWeight.BOLD -> Typeface.BOLD
                    else -> Typeface.NORMAL
                }
                val typeface = Typeface.create(base, style)
                typefaceCache[cacheKey] = typeface
                return typeface
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load font: fonts/$fontFamily", e)
            }
        }
        return when (weight) {
            FontWeight.NORMAL -> Typeface.DEFAULT
            FontWeight.MEDIUM -> Typeface.create(Typeface.DEFAULT, Typeface.NORMAL)
            FontWeight.BOLD -> Typeface.DEFAULT_BOLD
        }
    }

    private fun getTextTypeface(element: FrameElement.Text, metadata: MediaMetadata): Typeface {
        val elementFont = element.fontFamily
        if (!elementFont.isNullOrBlank()) {
            if (elementFont.startsWith("/")) {
                val cacheKey = "file-$elementFont-${element.fontWeight}"
                typefaceCache[cacheKey]?.let { return it }
                try {
                    val base = Typeface.createFromFile(elementFont)
                    val style = when (element.fontWeight) {
                        FontWeight.BOLD -> Typeface.BOLD
                        else -> Typeface.NORMAL
                    }
                    val typeface = Typeface.create(base, style)
                    typefaceCache[cacheKey] = typeface
                    return typeface
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to load custom font from file: $elementFont", e)
                }
            } else {
                return getTypeface(element.fontWeight, elementFont)
            }
        }

        if (element.textType == TextType.DEVICE_MODEL) {
            val customFont = metadata.customProperties["DEVICE_MODEL_FONT"]
            if (customFont == "Default") {
                return getTypeface(element.fontWeight, null)
            } else if (customFont == "SlacksideOne") {
                return getTypeface(element.fontWeight, "SlacksideOne.ttf")
            } else if (customFont != null && customFont.startsWith("/")) {
                val cacheKey = "file-$customFont-${element.fontWeight}"
                typefaceCache[cacheKey]?.let { return it }
                try {
                    val base = Typeface.createFromFile(customFont)
                    val style = when (element.fontWeight) {
                        FontWeight.BOLD -> Typeface.BOLD
                        else -> Typeface.NORMAL
                    }
                    val typeface = Typeface.create(base, style)
                    typefaceCache[cacheKey] = typeface
                    return typeface
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to load custom font from file: $customFont", e)
                }
            }
        }
        return getTypeface(element.fontWeight, null)
    }
}
