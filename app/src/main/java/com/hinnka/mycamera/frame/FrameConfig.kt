package com.hinnka.mycamera.frame

import android.graphics.Color

/**
 * 边框配置数据类
 * 
 * 定义边框渲染所需的参数配置
 */
data class FrameConfig(
    val id: String,
    val name: String,
    val templateId: String,
    val backgroundColor: Int = Color.WHITE,
    val paddingPx: Float = 120.0f,
    val showAppBranding: Boolean = true,
    val customText: String? = null
)

/**
 * 边框信息（用于列表展示）
 */
data class FrameInfo(
    val id: String,
    val path: String,
    val nameMap: Map<String, String>,
    val previewResId: Int = 0,
    val isBuiltIn: Boolean = true,
    val isEditable: Boolean = false,
) {
    /**
     * 获取当前语言名称
     */
    val name: String
        get() = getName()

    fun getName(locale: java.util.Locale = java.util.Locale.getDefault()): String {
        val language = if (locale.language == "zh") "zh" else "en"
        return nameMap[language] ?: nameMap["en"] ?: id
    }
}

/**
 * 边框模板定义
 * 
 * 描述边框的布局和元素组成
 */
data class FrameTemplate(
    val id: String,
    val nameMap: Map<String, String>,
    val version: Int = CURRENT_VERSION,
    val layout: FrameLayout,
    val elements: List<FrameElement>,
    val elementsTop: List<FrameElement>? = null
) {
    companion object {
        const val CURRENT_VERSION = 2
    }

    fun getName(locale: java.util.Locale = java.util.Locale.getDefault()): String {
        val language = if (locale.language == "zh") "zh" else "en"
        return nameMap[language] ?: nameMap["en"] ?: id
    }
}

/**
 * 边框布局配置。尺寸均为设计画幅中的像素，绘制时根据实际照片宽度统一缩放。
 * Logo 按设计像素宽度绘制，高度保持素材比例。
 * 不受设备密度和字体缩放影响。
 */
data class FrameLayout(
    val position: FramePosition = FramePosition.BOTTOM,
    val designSize: FrameDesignSize = FrameDesignSize(),
    val heightPx: Float = 240.0f,
    val backgroundColor: Int = Color.WHITE,
    val backgroundType: FrameBackgroundType = FrameBackgroundType.COLOR,
    val backgroundBlurRadiusPx: Float = 96.0f,
    val borderColor: Int = backgroundColor, // 边框颜色，默认与背景色相同
    val elementSpacingPx: Float = 24.0f,
    val lineSpacingPx: Float = 24.0f, // 行间距
    val paddingPx: Float = 48.0f,
    val verticalPaddingPx: Float = paddingPx,
    val borderWidthPx: Float = 0f,  // 左右边框宽度（BORDER / BOTH）
    val borderHeightPx: Float = borderWidthPx, // 顶部边框高度（BORDER）
    val photoCornerRadiusPx: Float = 0f,
    val photoShadowEnabled: Boolean = false,
    val photoShadowRadiusPx: Float = 0f,
    val photoShadowOffsetXPx: Float = 0f,
    val photoShadowOffsetYPx: Float = 6.0f,
    val photoShadowColor: Int = 0xCC000000.toInt(),
    val imageResName: String? = null,  // 边框图片资源名称（仅 IMAGE 模式使用，内置资源）
    val imagePath: String? = null  // 边框图片文件路径（仅 IMAGE 模式使用，外部导入）
) {
    val effectiveBackgroundType: FrameBackgroundType get() = backgroundType.forPosition(position)
}

enum class FrameBackgroundType {
    COLOR,
    GAUSSIAN_BLUR,
    LIQUID_GLASS;

    val usesPhoto: Boolean get() = this != COLOR

    fun forPosition(position: FramePosition): FrameBackgroundType =
        if (this == LIQUID_GLASS && position != FramePosition.OVERLAY) COLOR else this
}

/**
 * 边框位置
 */
enum class FramePosition {
    TOP,
    BOTTOM,
    BOTH,
    OVERLAY,  // 叠加在图片上，不增加额外边框区域
    BORDER,   // 四周边框 + 底部信息区
    IMAGE     // 使用图片作为边框，照片填充透明区域
}

/**
 * 边框元素基类
 */
sealed class FrameElement(
    open val line: Int,
    open val sizePx: Float,
) {
    /**
     * 文本元素
     */
    data class Text(
        val textType: TextType,
        val alignment: ElementAlignment = ElementAlignment.START,
        val fontSizePx: Float = 42.0f,
        val color: Int = Color.DKGRAY,
        val fontWeight: FontWeight = FontWeight.NORMAL,
        val fontFamily: String? = null,
        val overrideText: String? = null,
        val format: String? = null,
        val prefix: String? = null,
        val suffix: String? = null,
        override val line: Int = 0
    ) : FrameElement(line = line, sizePx = fontSizePx)
    
    /**
     * Logo/图标元素
     */
    data class Logo(
        val logoType: LogoType,
        val overrideSource: String? = null,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val widthPx: Float? = 240.0f,
        // Read-only compatibility for old height-based templates; new templates store width.
        override val sizePx: Float = 72.0f,
        val maxWidthPx: Float = 0f,
        val light: Boolean = false,
        val marginPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElement(line = line, sizePx = sizePx)
    
    /**
     * 分隔线元素
     */
    data class Divider(
        val orientation: DividerOrientation = DividerOrientation.VERTICAL,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val lengthPx: Float = 48.0f,
        val thicknessPx: Float = 3.0f,
        val color: Int = Color.LTGRAY,
        val marginPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElement(line, sizePx = lengthPx)
    
    /**
     * 间距元素
     */
    data class Spacer(
        val widthPx: Float = 24.0f,
        override val line: Int = 0
    ) : FrameElement(line, sizePx = widthPx)
}

/**
 * 文本类型
 */
enum class TextType {
    DEVICE_MODEL,     // 设备型号
    BRAND,            // 品牌名称
    DATE,             // 拍摄日期
    TIME,             // 拍摄时间
    DATETIME,         // 日期时间
    LOCATION,         // 拍摄地点
    ISO,              // ISO 感光度
    SHUTTER_SPEED,    // 快门速度
    FOCAL_LENGTH,     // 焦距
    FOCAL_LENGTH_35MM,     // 35mm等效焦距
    APERTURE,         // 光圈值
    RESOLUTION,       // 分辨率
    FILTER_NAME,      // 滤镜名称
    CUSTOM,           // 自定义文本
    APP_NAME          // App 名称
}

/**
 * Logo 类型
 */
enum class LogoType {
    BRAND,    // 品牌 Logo (如设备厂商)
    APP       // App Logo
}

/**
 * 元素对齐方式
 */
enum class ElementAlignment {
    START,
    CENTER,
    END
}

/**
 * 字体粗细
 */
enum class FontWeight {
    NORMAL,
    MEDIUM,
    BOLD
}

/**
 * 分隔线方向
 */
enum class DividerOrientation {
    HORIZONTAL,
    VERTICAL
}
