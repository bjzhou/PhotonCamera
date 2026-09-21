package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.*
import android.graphics.drawable.AdaptiveIconDrawable
import android.graphics.drawable.Drawable
import androidx.annotation.RequiresApi
import androidx.core.graphics.withSave
import androidx.core.graphics.drawable.toBitmap
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.lut.LutManager
import java.text.SimpleDateFormat
import java.util.*
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.pow
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
    // ALPHA_8 stores gain samples in alpha; they are data, not coverage to blend over the fill.
    private val gainmapPaint = Paint(Paint.FILTER_BITMAP_FLAG).apply {
        blendMode = BlendMode.SRC
    }

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
        val photoWidth = originalBitmap.width
        val photoHeight = originalBitmap.height

        val dimensions = FrameDimensions(photoWidth, photoHeight, layout.designSize, layout.elementSpacingPx)

        val frameHeight = dimensions.toPixels(layout.heightPx).toInt()
        val padding = dimensions.toPixels(layout.paddingPx)
        val verticalPadding = dimensions.toPixels(layout.verticalPaddingPx)
        val borderWidth = dimensions.toPixels(layout.borderWidthPx).toInt()
        val borderHeight = dimensions.toPixels(layout.borderHeightPx).toInt()

        // 计算输出尺寸
        val outputWidth: Int
        val outputHeight: Int

        when (layout.position) {
            FramePosition.BOTTOM -> {
                outputWidth = photoWidth
                outputHeight = photoHeight + frameHeight
            }

            FramePosition.TOP -> {
                outputWidth = photoWidth
                outputHeight = photoHeight + frameHeight
            }

            FramePosition.BOTH -> {
                outputWidth = photoWidth + borderWidth * 2
                outputHeight = photoHeight + frameHeight * 2
            }

            FramePosition.OVERLAY -> {
                outputWidth = photoWidth
                outputHeight = photoHeight
            }

            FramePosition.BORDER -> {
                // 照片顶部/左右边框 + 底部信息区；水印侧不额外占用 border。
                outputWidth = photoWidth + borderWidth * 2
                outputHeight = photoHeight + frameHeight + borderHeight
            }

            FramePosition.IMAGE -> {
                // IMAGE 模式使用单独的渲染方法
                return renderImageFrame(originalBitmap, template.layout)
            }
        }

        // 创建输出 Bitmap
        val output = createBitmap(outputWidth, outputHeight)
        val canvas = Canvas(output)
        PLog.d(TAG, "Frame ${template.id}: design=${layout.designSize.width}x${layout.designSize.height}, photo=${photoWidth}x${photoHeight}, scale=${dimensions.scale}")

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
                photoTop = borderHeight.toFloat()
            }
        }
        if (layout.position != FramePosition.OVERLAY) {
            if (layout.effectiveBackgroundType.usesPhoto) {
                drawPhotoBackground(canvas, originalBitmap, layout, outputWidth, outputHeight, dimensions)
            } else {
                backgroundPaint.color = layout.backgroundColor
                canvas.drawRect(0f, 0f, outputWidth.toFloat(), outputHeight.toFloat(), backgroundPaint)
            }
        }
        drawPhotoBorder(
            canvas = canvas,
            layout = layout,
            borderWidth = borderWidth,
            borderHeight = borderHeight,
            photoLeft = photoLeft,
            photoTop = photoTop,
            photoWidth = photoWidth.toFloat(),
            photoHeight = photoHeight.toFloat(),
            outputWidth = outputWidth.toFloat()
        )
        drawPhotoShadowIfNeeded(
            canvas = canvas,
            layout = layout,
            photoLeft = photoLeft,
            photoTop = photoTop,
            photoWidth = photoWidth.toFloat(),
            photoHeight = photoHeight.toFloat(),
            borderWidth = borderWidth,
            borderHeight = borderHeight,
            dimensions = dimensions
        )
        drawPhotoBitmap(canvas, originalBitmap, layout, photoLeft, photoTop, dimensions)

        // 绘制边框内容
        when (layout.position) {
            FramePosition.BOTTOM -> {
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding,
                    top = photoHeight.toFloat(),
                    right = outputWidth - padding,
                    bottom = outputHeight.toFloat(),
                    dimensions = dimensions
                )
            }

            FramePosition.TOP -> {
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding,
                    top = 0f,
                    right = outputWidth - padding,
                    bottom = frameHeight.toFloat(),
                    dimensions = dimensions
                )
            }

            FramePosition.BOTH -> {
                // 顶部
                drawFrameContent(
                    canvas, template.elementsTop ?: template.elements, metadata, template.layout,
                    left = padding,
                    top = 0f,
                    right = outputWidth - padding,
                    bottom = frameHeight.toFloat(),
                    dimensions = dimensions
                )
                // 底部
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding,
                    top = (photoHeight + frameHeight).toFloat(),
                    right = outputWidth - padding,
                    bottom = outputHeight.toFloat(),
                    dimensions = dimensions
                )
            }

            FramePosition.OVERLAY -> {
                // 叠加模式只在底部水印区域绘制背景。
                val overlayTop = (photoHeight - frameHeight).toFloat()

                val glassBounds = if (layout.effectiveBackgroundType == FrameBackgroundType.LIQUID_GLASS) {
                    FrameGlassOverlay.bounds(
                        outputWidth.toFloat(), outputHeight.toFloat(), frameHeight.toFloat(),
                        dimensions
                    )
                } else null

                if (glassBounds != null) {
                    drawPhotoBackground(canvas, originalBitmap, layout, outputWidth, outputHeight, dimensions)
                } else if (layout.effectiveBackgroundType.usesPhoto) {
                    if (frameHeight > 0) canvas.withSave {
                        clipRect(0f, overlayTop, outputWidth.toFloat(), outputHeight.toFloat())
                        drawPhotoBackground(this, originalBitmap, layout, outputWidth, outputHeight, dimensions)
                    }
                } else {
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
                    backgroundPaint.shader = null
                }


                // 胶囊内的文字与背景共同上移；圆角外的照片不被文字覆盖。
                if (glassBounds != null) {
                    val contentBounds = FrameGlassOverlay.contentBounds(glassBounds, padding, verticalPadding)
                    if (!contentBounds.isEmpty) canvas.withSave {
                        clipPath(FrameGlassOverlay.outline(glassBounds))
                        drawFrameContent(
                            this, template.elements, metadata, layout,
                            contentBounds.left, contentBounds.top, contentBounds.right, contentBounds.bottom, dimensions
                        )
                    }
                } else {
                    drawFrameContent(
                        canvas, template.elements, metadata, layout,
                        left = padding, top = overlayTop + verticalPadding,
                        right = outputWidth - padding, bottom = outputHeight.toFloat() - verticalPadding,
                        dimensions = dimensions
                    )
                }
            }

            FramePosition.BORDER -> {
                // 四周边框模式：底部信息区
                val infoTop = (photoHeight + borderHeight).toFloat()
                drawFrameContent(
                    canvas, template.elements, metadata, template.layout,
                    left = padding,
                    top = infoTop,
                    right = outputWidth - padding,
                    bottom = outputHeight.toFloat(),
                    dimensions = dimensions
                )
            }
        }

        return output
    }

    private fun drawPhotoBackground(
        canvas: Canvas,
        photo: Bitmap,
        layout: FrameLayout,
        width: Int,
        height: Int,
        dimensions: FrameDimensions,
    ) {
        val blurRadius = layout.backgroundBlurRadiusPx.coerceAtLeast(0f)
        val frameHeight = dimensions.toPixels(layout.heightPx).toInt().toFloat()
        val materialBounds = if (layout.effectiveBackgroundType == FrameBackgroundType.LIQUID_GLASS) {
            FrameGlassOverlay.bounds(width.toFloat(), height.toFloat(), frameHeight, dimensions)
        } else {
            RectF(0f, 0f, width.toFloat(), height.toFloat()).apply {
                if (layout.position == FramePosition.OVERLAY) top = (height - frameHeight).coerceAtLeast(0f)
            }
        }
        FrameBackgroundRenderer.draw(
            context, canvas, photo, layout, width, height,
            sigma = dimensions.toPixels(blurRadius),
            materialBounds = materialBounds,
            unitScale = dimensions.toPixels(3.0f),
        )
    }

    @RequiresApi(34)
    fun renderGainmapContents(
        originalBitmap: Bitmap,
        gainmap: Gainmap,
        template: FrameTemplate,
    ): Bitmap {
        val gainmapContents = gainmap.gainmapContents
        val neutralColor = neutralGainmapColor(gainmap)
        if (gainmapContents.isRecycled || originalBitmap.width <= 0 || originalBitmap.height <= 0) {
            return gainmapContents
        }

        if (template.layout.position == FramePosition.IMAGE) {
            return renderImageFrameGainmapContents(originalBitmap, gainmapContents, template.layout, neutralColor)
        }

        val geometry = calculateFrameGeometry(originalBitmap, template.layout) ?: return gainmapContents
        val layout = template.layout
        val photoBackground = layout.effectiveBackgroundType.usesPhoto
        val photoHeight = originalBitmap.height
        val photoWidth = originalBitmap.width
        val dimensions = FrameDimensions(photoWidth, photoHeight, layout.designSize, layout.elementSpacingPx)
        val frameHeight = dimensions.toPixels(layout.heightPx).toInt()
        val replacedOverlay = photoBackground && layout.position == FramePosition.OVERLAY && frameHeight > 0
        val cornerRadius = dimensions.toPixels(layout.photoCornerRadiusPx.coerceAtLeast(0f))
        if (
            !replacedOverlay && cornerRadius == 0f &&
            geometry.outputWidth == originalBitmap.width &&
            geometry.outputHeight == originalBitmap.height &&
            geometry.photoRect.left == 0f &&
            geometry.photoRect.top == 0f
        ) {
            return gainmapContents
        }

        val output = renderGainmapIntoPhotoRect(
            originalBitmap = originalBitmap,
            gainmapContents = gainmapContents,
            outputWidth = geometry.outputWidth,
            outputHeight = geometry.outputHeight,
            photoRect = geometry.photoRect,
            neutralColor = neutralColor,
            photoCornerRadius = cornerRadius,
        )
        if (replacedOverlay) {
            // The replacement background is SDR; original sharp gain samples must not survive there.
            val canvas = Canvas(output)
            canvas.scale(
                output.width.toFloat() / geometry.outputWidth,
                output.height.toFloat() / geometry.outputHeight
            )
            val designWidth = geometry.outputWidth
            val designHeight = geometry.outputHeight
            val neutralPaint = Paint().apply {
                color = neutralColor
                blendMode = BlendMode.SRC
                isAntiAlias = layout.effectiveBackgroundType == FrameBackgroundType.LIQUID_GLASS
            }
            val bounds = RectF(
                0f, (photoHeight - frameHeight).coerceAtLeast(0).toFloat(),
                designWidth.toFloat(), designHeight.toFloat()
            )
            if (layout.effectiveBackgroundType == FrameBackgroundType.LIQUID_GLASS) {
                val capsule = FrameGlassOverlay.bounds(
                    designWidth.toFloat(), designHeight.toFloat(), frameHeight.toFloat(),
                    dimensions
                )
                if (!capsule.isEmpty) canvas.drawPath(FrameGlassOverlay.outline(capsule), neutralPaint)
            } else {
                canvas.drawRect(bounds, neutralPaint)
            }
        }
        return output
    }

    private fun calculateFrameGeometry(
        originalBitmap: Bitmap,
        layout: FrameLayout,
    ): FrameGeometry? {
        val photoWidth = originalBitmap.width
        val photoHeight = originalBitmap.height
        val dimensions = FrameDimensions(photoWidth, photoHeight, layout.designSize, layout.elementSpacingPx)
        val frameHeight = dimensions.toPixels(layout.heightPx).toInt()
        val borderWidth = dimensions.toPixels(layout.borderWidthPx).toInt()
        val borderHeight = dimensions.toPixels(layout.borderHeightPx).toInt()

        val outputWidth: Int
        val outputHeight: Int
        val photoLeft: Float
        val photoTop: Float

        when (layout.position) {
            FramePosition.BOTTOM -> {
                outputWidth = photoWidth
                outputHeight = photoHeight + frameHeight
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.TOP -> {
                outputWidth = photoWidth
                outputHeight = photoHeight + frameHeight
                photoLeft = 0f
                photoTop = frameHeight.toFloat()
            }

            FramePosition.BOTH -> {
                outputWidth = photoWidth + borderWidth * 2
                outputHeight = photoHeight + frameHeight * 2
                photoLeft = borderWidth.toFloat()
                photoTop = frameHeight.toFloat()
            }

            FramePosition.OVERLAY -> {
                outputWidth = photoWidth
                outputHeight = photoHeight
                photoLeft = 0f
                photoTop = 0f
            }

            FramePosition.BORDER -> {
                outputWidth = photoWidth + borderWidth * 2
                outputHeight = photoHeight + frameHeight + borderHeight
                photoLeft = borderWidth.toFloat()
                photoTop = borderHeight.toFloat()
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
                photoLeft + photoWidth,
                photoTop + photoHeight
            )
        )
    }

    private fun renderGainmapIntoPhotoRect(
        originalBitmap: Bitmap,
        gainmapContents: Bitmap,
        outputWidth: Int,
        outputHeight: Int,
        photoRect: RectF,
        neutralColor: Int,
        photoCornerRadius: Float = 0f,
    ): Bitmap {
        val gainmapWidthScale = gainmapContents.width.toFloat() / originalBitmap.width.toFloat()
        val gainmapHeightScale = gainmapContents.height.toFloat() / originalBitmap.height.toFloat()
        val outputGainmapWidth = (outputWidth * gainmapWidthScale).roundToInt().coerceAtLeast(1)
        val outputGainmapHeight = (outputHeight * gainmapHeightScale).roundToInt().coerceAtLeast(1)
        val output = createNeutralGainmapBitmap(
            width = outputGainmapWidth,
            height = outputGainmapHeight,
            source = gainmapContents,
            neutralColor = neutralColor,
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
        canvas.withSave {
            if (photoCornerRadius > 0f) {
                val clip = Path().apply {
                    addRoundRect(
                        destination, photoCornerRadius * outputScaleX, photoCornerRadius * outputScaleY,
                        Path.Direction.CW
                    )
                }
                clipPath(clip)
            }
            drawBitmap(gainmapContents, null, destination, gainmapPaint)
        }
        return output
    }

    private fun drawPhotoBitmap(
        canvas: Canvas,
        originalBitmap: Bitmap,
        layout: FrameLayout,
        photoLeft: Float,
        photoTop: Float,
        dimensions: FrameDimensions,
    ) {
        val cornerRadius = dimensions.toPixels(layout.photoCornerRadiusPx.coerceAtLeast(0f))
        val photoWidth = originalBitmap.width
        val photoHeight = originalBitmap.height
        canvas.withSave {
            if (cornerRadius > 0f) {
                val photoRect = RectF(photoLeft, photoTop, photoLeft + photoWidth, photoTop + photoHeight)
                photoClipPath.reset()
                photoClipPath.addRoundRect(photoRect, cornerRadius, cornerRadius, Path.Direction.CW)
                clipPath(photoClipPath)
            }
            drawBitmap(originalBitmap, photoLeft, photoTop, null)
        }
    }
    private fun drawPhotoBorder(
        canvas: Canvas,
        layout: FrameLayout,
        borderWidth: Int,
        borderHeight: Int,
        photoLeft: Float,
        photoTop: Float,
        photoWidth: Float,
        photoHeight: Float,
        outputWidth: Float
    ) {
        if (borderWidth <= 0 && borderHeight <= 0) return
        if (layout.effectiveBackgroundType.usesPhoto) return
        if (layout.position != FramePosition.BORDER && layout.position != FramePosition.BOTH) return

        backgroundPaint.color = layout.borderColor

        if (layout.position == FramePosition.BORDER) {
            canvas.drawRect(0f, 0f, outputWidth, borderHeight.toFloat(), backgroundPaint)
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
        borderHeight: Int,
        dimensions: FrameDimensions
    ) {
        val supportsBorderShadow = (borderWidth > 0 || (layout.position == FramePosition.BORDER && borderHeight > 0)) &&
            (layout.position == FramePosition.BORDER || layout.position == FramePosition.BOTH)
        if (!supportsBorderShadow || !layout.photoShadowEnabled) return

        val shadowAlpha = (layout.photoShadowColor ushr 24) and 0xFF
        if (shadowAlpha == 0) return

        val radius = dimensions.toPixels(layout.photoShadowRadiusPx.coerceAtLeast(0f))
        val cornerRadius = dimensions.toPixels(layout.photoCornerRadiusPx.coerceAtLeast(0f))
        val offsetX = dimensions.toPixels(layout.photoShadowOffsetXPx)
        val offsetY = dimensions.toPixels(layout.photoShadowOffsetYPx)

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
        dimensions: FrameDimensions
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
            visibleElements.filter { it.line == line }.maxOf { measureElementHeight(it, metadata, dimensions) }
        }
        val spacingPx = dimensions.toPixels(layout.lineSpacingPx)
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
                val width = drawElement(canvas, element, metadata, x, centerY, leftToRight, dimensions)

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
            for ((line, lineElements) in elementsByLine) {
                val trailingSpacing = when (lineElements.last()) {
                    is FrameElement.Text, is FrameElement.Logo -> dimensions.elementSpacing
                    else -> 0f
                }
                // 计算该行的总宽度（扣除最后一个元素的间距）
                val lineWidth = lineElements.sumOf {
                    measureElementWidth(it, metadata, dimensions).toDouble()
                }.toFloat() - trailingSpacing

                // 计算该行的起始 X 位置（居中）
                val startX = left + (availableWidth - lineWidth) / 2f
                val centerY = getLineCenterY(line)

                // 绘制该行的所有元素
                var currentX = startX
                for (element in lineElements) {
                    currentX += drawElement(canvas, element, metadata, currentX, centerY, true, dimensions)
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
        dimensions: FrameDimensions
    ): Float {
        val xPerLine = mutableMapOf<Int, Float>()
        val realLines = elements.map { getLine(it) }.filter { it >= 0 }.distinct().sorted()
        val knownLines = if (realLines.isEmpty()) listOf(0) else realLines
        for (element in elements) {
            val width = measureElementWidth(element, metadata, dimensions)
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
    private fun dividerLength(element: FrameElement.Divider, dimensions: FrameDimensions): Float =
        dimensions.toPixels(element.lengthPx)

    private fun dividerThickness(element: FrameElement.Divider, dimensions: FrameDimensions): Float =
        dimensions.toPixels(element.thicknessPx)

    private fun measureElementHeight(
        element: FrameElement,
        metadata: MediaMetadata,
        dimensions: FrameDimensions,
    ): Float = when (element) {
        is FrameElement.Text -> dimensions.toPixels(element.fontSizePx)
        is FrameElement.Logo -> measureLogoSize(element, metadata, dimensions).second.toFloat()
        is FrameElement.Divider -> if (element.orientation == DividerOrientation.VERTICAL) {
            dividerLength(element, dimensions)
        } else {
            dividerThickness(element, dimensions)
        }
        is FrameElement.Spacer -> 0f
    }

    private fun measureElementWidth(
        element: FrameElement,
        metadata: MediaMetadata,
        dimensions: FrameDimensions
    ): Float {
        return when (element) {
            is FrameElement.Text -> {
                val text = getTextContent(element, metadata) ?: return 0f
                textPaint.textSize = dimensions.toPixels(element.fontSizePx)
                textPaint.typeface = getTextTypeface(element, metadata)
                textPaint.measureText(text) + dimensions.elementSpacing
            }

            is FrameElement.Logo -> {
                val logoKey = metadata.customProperties["LOGO"]
                if (logoKey == "none") return 0f
                val (bmpW, _) = measureLogoSize(element, metadata, dimensions)
                bmpW + dimensions.toPixels(element.marginPx) * 2 + dimensions.elementSpacing
            }

            is FrameElement.Divider -> {
                if (element.orientation == DividerOrientation.VERTICAL) {
                    dividerThickness(element, dimensions) + dimensions.toPixels(element.marginPx) * 2
                } else {
                    dividerLength(element, dimensions) + dimensions.toPixels(element.marginPx) * 2
                }
            }

            is FrameElement.Spacer -> {
                dimensions.toPixels(element.widthPx)
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
        dimensions: FrameDimensions
    ): Float {
        return when (element) {
            is FrameElement.Text -> drawTextElement(
                canvas,
                element,
                metadata,
                x,
                centerY,
                leftToRight,
                dimensions
            )

            is FrameElement.Logo -> drawLogoElement(
                canvas,
                element,
                x,
                centerY,
                leftToRight,
                metadata,
                dimensions
            )

            is FrameElement.Divider -> drawDividerElement(canvas, element, x, centerY, leftToRight, dimensions)
            is FrameElement.Spacer -> dimensions.toPixels(element.widthPx)
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
        dimensions: FrameDimensions
    ): Float {
        val text = getTextContent(element, metadata) ?: return x

        textPaint.color = element.color
        textPaint.textSize = dimensions.toPixels(element.fontSizePx)
        textPaint.typeface = getTextTypeface(element, metadata)

        val textWidth = textPaint.measureText(text)
        val textHeight = textPaint.descent() - textPaint.ascent()
        val textY = centerY - (textPaint.descent() + textPaint.ascent()) / 2

        val drawX = if (leftToRight) x else x - textWidth
        canvas.drawText(text, drawX, textY, textPaint)

        val spacing = dimensions.elementSpacing
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

    /** Resolve legacy height-based sizes on the reference photo, never on the current aspect ratio. */
    fun resolveLegacyLogoWidths(template: FrameTemplate, metadata: MediaMetadata): FrameTemplate {
        fun resolve(elements: List<FrameElement>): List<FrameElement> = elements.map { element ->
            if (element is FrameElement.Logo && element.widthPx == null) {
                val ratio = logoAspectRatio(element, metadata)
                element.copy(widthPx = legacyLogoWidthPx(element, ratio))
            } else element
        }
        return template.copy(
            elements = resolve(template.elements),
            elementsTop = template.elementsTop?.let { resolve(it) }
        )
    }

    private fun legacyLogoWidthPx(
        element: FrameElement.Logo,
        aspectRatio: Float,
    ): Float {
        // Legacy size is a design-pixel height; preserve the source aspect ratio.
        val width = element.sizePx * aspectRatio
        return if (element.maxWidthPx > 0f) minOf(width, element.maxWidthPx) else width
    }

    private fun logoAspectRatio(element: FrameElement.Logo, metadata: MediaMetadata?): Float {
        val logoKey = element.overrideSource ?: metadata?.customProperties?.get("LOGO")
        val width: Int
        val height: Int
        if (logoKey != null && (logoKey.startsWith("/") || logoKey.startsWith("content://"))) {
            val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            if (logoKey.startsWith("content://")) {
                context.contentResolver.openInputStream(android.net.Uri.parse(logoKey))?.use {
                    BitmapFactory.decodeStream(it, null, options)
                }
            } else {
                BitmapFactory.decodeFile(logoKey, options)
            }
            width = options.outWidth
            height = options.outHeight
        } else {
            val drawableRes = when (element.logoType) {
                LogoType.APP -> R.mipmap.ic_launcher_round
                LogoType.BRAND -> getBrandLogoDrawable(logoKey ?: metadata?.brand, element.light)
            }
            val drawable = requireNotNull(context.getDrawable(drawableRes))
            width = drawable.intrinsicWidth
            height = drawable.intrinsicHeight
        }
        require(width > 0 && height > 0) { "Invalid logo dimensions: $logoKey ($width x $height)" }
        return width.toFloat() / height
    }

    private fun measureLogoSize(
        element: FrameElement.Logo,
        metadata: MediaMetadata?,
        dimensions: FrameDimensions
    ): Pair<Int, Int> {
        return try {
            val ratio = logoAspectRatio(element, metadata)
            val widthPx = element.widthPx ?: legacyLogoWidthPx(element, ratio)
            val width = dimensions.toPixels(widthPx)
            width.roundToInt() to (width / ratio).roundToInt()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to measure logo size", e)
            0 to 0
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
        dimensions: FrameDimensions
    ): Float {
        // 如果是 App Logo 且不显示品牌，则跳过
        val margin = dimensions.toPixels(element.marginPx)

        // 获取对应的 drawable
        val logoKey = element.overrideSource ?: metadata?.customProperties?.get("LOGO")
        if (logoKey == "none") return 0f

        try {
            val (bmpW, bmpH) = measureLogoSize(element, metadata, dimensions)
            if (bmpW <= 0 || bmpH <= 0) return 0f

            val bitmap = (if (logoKey != null && logoKey.startsWith("content://")) {
                context.contentResolver.openInputStream(android.net.Uri.parse(logoKey))?.use {
                    BitmapFactory.decodeStream(it)
                }
            } else if (logoKey != null && logoKey.startsWith("/")) {
                BitmapFactory.decodeFile(logoKey)
            } else {
                val drawableRes = when (element.logoType) {
                    LogoType.APP -> R.mipmap.ic_launcher_round
                    LogoType.BRAND -> getBrandLogoDrawable(logoKey ?: metadata?.brand, element.light)
                }
                val drawable = context.getDrawable(drawableRes) ?: return 0f
                drawableToBitmap(drawable, bmpW.coerceAtLeast(1), bmpH.coerceAtLeast(1))
            }) ?: return 0f

            // 如果 bitmap 尺寸与 measure 不一致，则缩放
            val drawnBitmap = if (bitmap.width != bmpW || bitmap.height != bmpH) {
                Bitmap.createScaledBitmap(bitmap, bmpW.coerceAtLeast(1), bmpH.coerceAtLeast(1), true)
            } else {
                bitmap
            }

            val drawX = if (leftToRight) (x + margin) else (x - bmpW - margin)
            val drawY = centerY - bmpH / 2f

            canvas.drawBitmap(drawnBitmap, drawX, drawY, null)

            return bmpW + margin * 2 + dimensions.elementSpacing
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
        "oppo" to listOf(R.drawable.ic_brand_oppo, R.drawable.ic_brand_oppo_light),
        "realme" to listOf(R.drawable.ic_brand_realme, R.drawable.ic_brand_realme),
        "oneplus" to listOf(R.drawable.ic_brand_oneplus, R.drawable.ic_brand_oneplus),
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
        dimensions: FrameDimensions
    ): Float {
        linePaint.color = element.color
        linePaint.strokeWidth = dividerThickness(element, dimensions)

        val length = dividerLength(element, dimensions)
        val margin = dimensions.toPixels(element.marginPx)

        val drawX = if (leftToRight) x + margin else x - margin

        if (element.orientation == DividerOrientation.VERTICAL) {
            val centerX = drawX + if (leftToRight) linePaint.strokeWidth / 2f else -linePaint.strokeWidth / 2f
            canvas.drawLine(
                centerX, centerY - length / 2f,
                centerX, centerY + length / 2f,
                linePaint
            )
            return margin * 2 + linePaint.strokeWidth
        } else {
            // 水平线（通常不常用）
            canvas.drawLine(
                drawX, centerY,
                drawX + if (leftToRight) length else -length, centerY,
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
    private fun imageFrameGeometry(
        photo: Bitmap,
        frame: Bitmap,
        aperture: Rect,
        layout: FrameLayout,
    ): FrameGeometry {
        val dimensions = FrameDimensions(photo.width, photo.height, layout.designSize, layout.elementSpacingPx)
        val left = dimensions.toPixels(aperture.left * layout.designSize.width / aperture.width()).roundToInt()
        val right = dimensions.toPixels((frame.width - aperture.right) * layout.designSize.width / aperture.width()).roundToInt()
        val top = dimensions.toPixels(aperture.top * layout.designSize.height / aperture.height()).roundToInt()
        val bottom = dimensions.toPixels((frame.height - aperture.bottom) * layout.designSize.height / aperture.height()).roundToInt()
        return FrameGeometry(
            photo.width + left + right,
            photo.height + top + bottom,
            RectF(left.toFloat(), top.toFloat(), (left + photo.width).toFloat(), (top + photo.height).toFloat())
        )
    }

    private fun renderImageFrame(originalBitmap: Bitmap, layout: FrameLayout): Bitmap {
        val frame = loadImageFrameBitmap(layout) ?: return originalBitmap
        try {
            val aperture = detectTransparentBounds(frame)
            if (aperture.isEmpty) {
                PLog.e(TAG, "No transparent area detected in frame image")
                return originalBitmap
            }
            val geometry = imageFrameGeometry(originalBitmap, frame, aperture, layout)
            val output = createBitmap(geometry.outputWidth, geometry.outputHeight)
            val canvas = Canvas(output)
            canvas.drawBitmap(originalBitmap, geometry.photoRect.left, geometry.photoRect.top, null)
            // Keep the four borders attached to the real photo rectangle as its aspect ratio changes.
            val sourceX = intArrayOf(0, aperture.left, aperture.right, frame.width)
            val sourceY = intArrayOf(0, aperture.top, aperture.bottom, frame.height)
            val targetX = floatArrayOf(0f, geometry.photoRect.left, geometry.photoRect.right, output.width.toFloat())
            val targetY = floatArrayOf(0f, geometry.photoRect.top, geometry.photoRect.bottom, output.height.toFloat())
            val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
            for (row in 0..2) for (column in 0..2) {
                val source = Rect(sourceX[column], sourceY[row], sourceX[column + 1], sourceY[row + 1])
                val target = RectF(targetX[column], targetY[row], targetX[column + 1], targetY[row + 1])
                if (!source.isEmpty && !target.isEmpty) canvas.drawBitmap(frame, source, target, paint)
            }
            return output
        } finally {
            frame.recycle()
        }
    }

    private fun renderImageFrameGainmapContents(
        originalBitmap: Bitmap,
        gainmapContents: Bitmap,
        layout: FrameLayout,
        neutralColor: Int,
    ): Bitmap {
        val frame = loadImageFrameBitmap(layout) ?: return gainmapContents
        try {
            val aperture = detectTransparentBounds(frame)
            if (aperture.isEmpty) return gainmapContents
            val geometry = imageFrameGeometry(originalBitmap, frame, aperture, layout)
            return renderGainmapIntoPhotoRect(
                originalBitmap, gainmapContents, geometry.outputWidth, geometry.outputHeight,
                geometry.photoRect, neutralColor
            )
        } finally {
            frame.recycle()
        }
    }

    /** The transparent photo window defines an imported image frame's design dimensions. */
    fun readImageFrameDesignSize(imagePath: String): FrameDesignSize? {
        val bitmap = BitmapFactory.decodeFile(imagePath) ?: return null
        return try {
            val bounds = detectTransparentBounds(bitmap)
            if (bounds.isEmpty) null else FrameDesignSize(bounds.width().toFloat(), bounds.height().toFloat())
        } finally {
            bitmap.recycle()
        }
    }

    private fun loadImageFrameBitmap(layout: FrameLayout): Bitmap? {
        val frameBitmap = try {
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

        return frameBitmap
    }

    /** Unity gain is sample 0.5 for RAW's 0.25..4 range, not sample zero. */
    @RequiresApi(34)
    private fun neutralGainmapColor(gainmap: Gainmap): Int {
        val minimum = gainmap.ratioMin
        val maximum = gainmap.ratioMax
        val gamma = gainmap.gamma
        val channels = IntArray(3) { channel ->
            val low = ln(minimum[channel].toDouble())
            val high = ln(maximum[channel].toDouble())
            val sample = if (high == low) 0.0 else {
                (-low / (high - low)).coerceIn(0.0, 1.0).pow(1.0 / gamma[channel])
            }
            (sample * 255.0).roundToInt()
        }
        return if (gainmap.gainmapContents.config == Bitmap.Config.ALPHA_8) {
            Color.argb(channels[0], 0, 0, 0)
        } else {
            Color.rgb(channels[0], channels[1], channels[2])
        }
    }

    private fun createNeutralGainmapBitmap(width: Int, height: Int, source: Bitmap, neutralColor: Int): Bitmap {
        val config = source.config?.takeUnless { it == Bitmap.Config.HARDWARE } ?: Bitmap.Config.ALPHA_8
        return Bitmap.createBitmap(width, height, config).also {
            it.eraseColor(neutralColor)
        }
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
