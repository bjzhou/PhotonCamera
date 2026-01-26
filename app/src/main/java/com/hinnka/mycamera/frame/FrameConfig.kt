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
    val paddingDp: Int = 40,
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
    val version: Int = 1,
    val layout: FrameLayout,
    val elements: List<FrameElement>
) {
    fun getName(locale: java.util.Locale = java.util.Locale.getDefault()): String {
        val language = if (locale.language == "zh") "zh" else "en"
        return nameMap[language] ?: nameMap["en"] ?: id
    }
}

/**
 * 边框布局配置
 */
data class FrameLayout(
    val position: FramePosition = FramePosition.BOTTOM,
    val heightDp: Int = 80,
    val backgroundColor: Int = Color.WHITE,
    val paddingDp: Int = 16,
    val borderWidthDp: Int = 0,  // 四周边框宽度（仅 BORDER 模式使用）
    val imageResName: String? = null,  // 边框图片资源名称（仅 IMAGE 模式使用，内置资源）
    val imagePath: String? = null  // 边框图片文件路径（仅 IMAGE 模式使用，外部导入）
)

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
    open val size: Int,
) {
    /**
     * 文本元素
     */
    data class Text(
        val textType: TextType,
        val alignment: ElementAlignment = ElementAlignment.START,
        val fontSizeSp: Int = 14,
        val color: Int = Color.DKGRAY,
        val fontWeight: FontWeight = FontWeight.NORMAL,
        val fontFamily: String? = null,
        val format: String? = null,
        val prefix: String? = null,
        val suffix: String? = null,
        override val line: Int = 0
    ) : FrameElement(line = line, size = fontSizeSp)
    
    /**
     * Logo/图标元素
     */
    data class Logo(
        val logoType: LogoType,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val sizeDp: Int = 24,
        val light: Boolean = false,
        val marginDp: Int = 8,
        override val line: Int = 0
    ) : FrameElement(line = line, size = sizeDp)
    
    /**
     * 分隔线元素
     */
    data class Divider(
        val orientation: DividerOrientation = DividerOrientation.VERTICAL,
        val alignment: ElementAlignment = ElementAlignment.CENTER,
        val lengthDp: Int = 16,
        val thicknessDp: Int = 1,
        val color: Int = Color.LTGRAY,
        val marginDp: Int = 8,
        override val line: Int = 0
    ) : FrameElement(line, size = lengthDp)
    
    /**
     * 间距元素
     */
    data class Spacer(
        val widthDp: Int = 8,
        override val line: Int = 0
    ) : FrameElement(line, size = widthDp)
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
