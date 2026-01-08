package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.*
import android.util.Log
import android.util.TypedValue
import androidx.core.graphics.drawable.toBitmap
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.PhotoMetadata
import java.text.SimpleDateFormat
import java.util.*
import androidx.core.graphics.createBitmap


/**
 * 边框渲染器
 * 
 * 使用 Android Canvas 渲染带边框水印的照片
 */
class FrameRenderer(private val context: Context) {
    
    companion object {
        private const val TAG = "FrameRenderer"
    }
    
    // 缓存的 Paint 对象
    private val textPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        textAlign = Paint.Align.LEFT
    }
    
    private val backgroundPaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val linePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    
    /**
     * 渲染带边框的照片
     * 
     * @param originalBitmap 原始照片
     * @param template 边框模板
     * @param metadata EXIF 元数据
     * @param showAppBranding 是否显示 App 品牌
     * @return 带边框的照片
     */
    fun render(
        originalBitmap: Bitmap,
        template: FrameTemplate,
        metadata: PhotoMetadata,
        showAppBranding: Boolean = true,
    ): Bitmap {

        Log.d(TAG, "render: $metadata")

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
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height + frameHeight * 2
            }
            FramePosition.OVERLAY -> {
                outputWidth = originalBitmap.width
                outputHeight = originalBitmap.height
            }
            FramePosition.BORDER -> {
                // 四周边框 + 底部信息区
                outputWidth = originalBitmap.width + borderWidth * 2
                outputHeight = originalBitmap.height + borderWidth * 2 + frameHeight
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
                photoLeft = 0f
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
        canvas.drawBitmap(originalBitmap, photoLeft, photoTop, null)
        
        // 绘制边框内容
        when (layout.position) {
            FramePosition.BOTTOM -> {
                drawFrameContent(
                    canvas, template.elements, metadata, showAppBranding,
                    left = padding.toFloat(),
                    top = originalBitmap.height.toFloat(),
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat(),
                    scale = scale
                )
            }
            FramePosition.TOP -> {
                drawFrameContent(
                    canvas, template.elements, metadata, showAppBranding,
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
                    canvas, template.elements, metadata, showAppBranding,
                    left = padding.toFloat(),
                    top = 0f,
                    right = (outputWidth - padding).toFloat(),
                    bottom = frameHeight.toFloat(),
                    scale = scale
                )
                // 底部
                drawFrameContent(
                    canvas, template.elements, metadata, showAppBranding,
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
                    canvas, template.elements, metadata, showAppBranding,
                    left = padding.toFloat(),
                    top = overlayTop + padding.toFloat(),
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat() - padding.toFloat(),
                    scale = scale
                )
            }
            FramePosition.BORDER -> {
                // 四周边框模式：底部信息区
                val infoTop = (originalBitmap.height + borderWidth * 2).toFloat()
                drawFrameContent(
                    canvas, template.elements, metadata, showAppBranding,
                    left = padding.toFloat(),
                    top = infoTop,
                    right = (outputWidth - padding).toFloat(),
                    bottom = outputHeight.toFloat() - padding.toFloat(),
                    scale = scale
                )
            }
        }
        
        return output
    }
    
    private fun drawFrameContent(
        canvas: Canvas,
        elements: List<FrameElement>,
        metadata: PhotoMetadata,
        showAppBranding: Boolean,
        left: Float,
        top: Float,
        right: Float,
        bottom: Float,
        scale: Float = 1f
    ) {
        // 将元素按对齐方式分组
        val startElements = elements.filter { getAlignment(it) == ElementAlignment.START }
        val centerElements = elements.filter { getAlignment(it) == ElementAlignment.CENTER }
        val endElements = elements.filter { getAlignment(it) == ElementAlignment.END }

        // 获取所有行号以计算行数
        val allLines = elements.map { getLine(it) }.filter { it >= 0 }.distinct().sorted()
        val lineCount = allLines.size

        val height = bottom - top

        /**
         * 计算指定行号的垂直中心位置
         */
        fun getLineCenterY(line: Int): Float {
            return when {
                line == -1 -> top + height / 2f
                lineCount <= 1 -> top + height / 2f
                lineCount == 2 -> when (line) {
                    0 -> top + height * 0.35f
                    1 -> top + height * 0.65f
                    else -> top + height / 2f
                }
                lineCount >= 3 -> when (line) {
                    0 -> top + height * 0.22f
                    1 -> top + height * 0.50f
                    2 -> top + height * 0.78f
                    else -> top + height / 2f
                }
                else -> top + height / 2f
            }
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
                val width = drawElement(canvas, element, metadata, showAppBranding, x, centerY, leftToRight, scale)
                
                val nextX = if (leftToRight) x + width else x - width
                
                if (line == -1) {
                    // 全局元素，推进所有行的 X 坐标
                    currentXPerLine[-1] = nextX
                    currentXPerLine[0] = nextX
                    currentXPerLine[1] = nextX
                    currentXPerLine[2] = nextX
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
                    measureElementWidth(it, metadata, showAppBranding, scale).toDouble() 
                }.toFloat() - elementSpacing  // 减去最后一个元素多余的间距
                
                // 计算该行的起始 X 位置（居中）
                val startX = left + (availableWidth - lineWidth) / 2f
                val centerY = getLineCenterY(line)
                
                // 绘制该行的所有元素
                var currentX = startX
                for ((index, element) in lineElements.withIndex()) {
                    val isLast = index == lineElements.size - 1
                    val width = drawElement(canvas, element, metadata, showAppBranding, currentX, centerY, true, scale)
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
    
    /**
     * 测量元素组的总宽度
     */
    private fun measureElementsWidth(
        elements: List<FrameElement>,
        metadata: PhotoMetadata,
        showAppBranding: Boolean,
        scale: Float = 1f
    ): Float {
        val xPerLine = mutableMapOf<Int, Float>()
        for (element in elements) {
            val line = getLine(element)
            val width = measureElementWidth(element, metadata, showAppBranding, scale)
            
            if (line == -1) {
                val max = (xPerLine.values.maxOrNull() ?: 0f) + width
                xPerLine[-1] = max
                xPerLine[0] = max
                xPerLine[1] = max
                xPerLine[2] = max
            } else {
                val current = xPerLine.getOrDefault(line, 0f)
                xPerLine[line] = current + width
            }
        }
        return xPerLine.values.maxOrNull() ?: 0f
    }
    
    /**
     * 测量单个元素宽度
     */
    private fun measureElementWidth(
        element: FrameElement,
        metadata: PhotoMetadata,
        showAppBranding: Boolean,
        scale: Float = 1f
    ): Float {
        return when (element) {
            is FrameElement.Text -> {
                val text = getTextContent(element, metadata, showAppBranding) ?: return 0f
                textPaint.textSize = spToPx(element.fontSizeSp) * scale
                textPaint.typeface = getTypeface(element.fontWeight)
                textPaint.measureText(text) + dpToPx(8) * scale
            }
            is FrameElement.Logo -> {
                (dpToPx(element.sizeDp) + dpToPx(8)) * scale + dpToPx(element.marginDp) * scale * 2
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
        metadata: PhotoMetadata,
        showAppBranding: Boolean,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        scale: Float = 1f
    ): Float {
        return when (element) {
            is FrameElement.Text -> drawTextElement(canvas, element, metadata, showAppBranding, x, centerY, leftToRight, scale)
            is FrameElement.Logo -> drawLogoElement(canvas, element, showAppBranding, x, centerY, leftToRight, metadata, scale)
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
        metadata: PhotoMetadata,
        showAppBranding: Boolean,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        scale: Float = 1f
    ): Float {
        val text = getTextContent(element, metadata, showAppBranding) ?: return x
        
        textPaint.color = element.color
        textPaint.textSize = spToPx(element.fontSizeSp) * scale
        textPaint.typeface = getTypeface(element.fontWeight)
        
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
        metadata: PhotoMetadata,
        showAppBranding: Boolean
    ): String? {
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
            TextType.CUSTOM -> element.format
            TextType.APP_NAME -> if (showAppBranding) context.getString(R.string.app_name) else null
        } ?: return null
        
        val prefix = element.prefix ?: ""
        val suffix = element.suffix ?: ""
        return "$prefix$content$suffix"
    }
    
    /**
     * 绘制 Logo 元素
     */
    private fun drawLogoElement(
        canvas: Canvas,
        element: FrameElement.Logo,
        showAppBranding: Boolean,
        x: Float,
        centerY: Float,
        leftToRight: Boolean,
        metadata: PhotoMetadata? = null,
        scale: Float = 1f
    ): Float {
        // 如果是 App Logo 且不显示品牌，则跳过
        if (element.logoType == LogoType.APP && !showAppBranding) {
            return x
        }
        val margin = dpToPx(element.marginDp) * scale
        
        val size = (dpToPx(element.sizeDp) * scale).toInt()
        
        // 获取对应的 drawable
        val drawableRes = when (element.logoType) {
            LogoType.APP -> R.mipmap.ic_launcher_round
            LogoType.BRAND -> getBrandLogoDrawable(metadata?.brand)
        }
        
        try {
            val drawable = context.getDrawable(drawableRes) ?: return x
            val intrinsicW = drawable.intrinsicWidth
            val intrinsicH = drawable.intrinsicHeight
            val (bmpW, bmpH) = if (intrinsicW > 0 && intrinsicH > 0) {
                val ratio = intrinsicW.toFloat() / intrinsicH.toFloat()
                if (ratio >= 1f) {
                    // 宽大于高，以目标 size 为宽，按比例计算高
                    size to (size / ratio).toInt()
                } else {
                    // 高大于宽，以目标 size 为高，按比例计算宽
                    (size * ratio).toInt() to size
                }
            } else {
                // 无内在尺寸，退回到方形
                size to size
            }
            val bitmap = drawable.toBitmap(bmpW.coerceAtLeast(1), bmpH.coerceAtLeast(1))
            
            // 应用 tint 颜色
            val tintedBitmap = if (element.tint != null) {
                val tinted = bitmap.copy(Bitmap.Config.ARGB_8888, true)
                val canvas2 = Canvas(tinted)
                val paint = Paint().apply {
                    colorFilter = PorterDuffColorFilter(element.tint, PorterDuff.Mode.SRC_IN)
                }
                canvas2.drawBitmap(bitmap, 0f, 0f, paint)
                tinted
            } else {
                bitmap
            }
            
            val drawX = if (leftToRight) (x + margin) else (x - size - margin)
            val drawY = centerY - bitmap.height / 2f
            
            canvas.drawBitmap(tintedBitmap, drawX, drawY, null)
            
            val spacing = dpToPx(8) * scale
            return size + spacing + margin * 2
        } catch (e: Exception) {
            Log.e(TAG, "Failed to draw logo", e)
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
    private fun getBrandLogoDrawable(brand: String?): Int {
        if (brand == null) return R.drawable.ic_brand_generic
        
        // 尝试获取品牌特定的 Logo
        val brandLower = brand.lowercase()
        val resourceName = when (brandLower) {
            "samsung" -> "ic_brand_samsung"
            "xiaomi", "redmi", "poco" -> "ic_brand_xiaomi"
            "huawei" -> "ic_brand_huawei"
            "honor" -> "ic_brand_honor"
            "oppo", "realme", "oneplus" -> "ic_brand_oppo"
            "vivo", "iqoo" -> "ic_brand_vivo"
            "apple" -> "ic_brand_apple"
            "sony" -> "ic_brand_sony"
            "canon" -> "ic_brand_canon"
            "dji" -> "ic_brand_dji"
            "fujifilm" -> "ic_brand_fujifilm"
            "hasselblad" -> "ic_brand_hasselblad"
            "leica" -> "ic_brand_leica"
            "nikon" -> "ic_brand_nikon"
            "panasonic" -> "ic_brand_panasonic"
            "olympus" -> "ic_brand_olympus"
            "pentax" -> "ic_brand_pentax"
            "ricoh" -> "ic_brand_ricoh"
            else -> null
        }
        
        if (resourceName != null) {
            // 尝试获取特定品牌资源
            val resId = context.resources.getIdentifier(
                resourceName, "drawable", context.packageName
            )
            if (resId != 0) return resId
        }
        
        // 使用通用品牌图标作为后备
        return R.drawable.ic_brand_generic
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
        val metadata = PhotoMetadata.createDefault(scaledWidth, scaledHeight)
        return render(scaledBitmap, template, metadata, showAppBranding = true)
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
    
    private fun getTypeface(weight: FontWeight): Typeface {
        return when (weight) {
            FontWeight.NORMAL -> Typeface.DEFAULT
            FontWeight.MEDIUM -> Typeface.create(Typeface.DEFAULT, Typeface.NORMAL)
            FontWeight.BOLD -> Typeface.DEFAULT_BOLD
        }
    }
}
