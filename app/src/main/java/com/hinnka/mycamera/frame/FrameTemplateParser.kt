package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.Color
import androidx.compose.runtime.snapshots.toInt
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * 边框模板解析器
 * 
 * 从 JSON 文件解析边框模板配置
 */
object FrameTemplateParser {
    
    private const val TAG = "FrameTemplateParser"
    private const val TEMPLATES_FOLDER = "frames"
    
    /**
     * 列出所有可用的边框模板
     */
    fun listAvailableFrames(context: Context): List<FrameInfo> {
        val frames = mutableListOf<FrameInfo>()
        
        try {
            val files = context.assets.list(TEMPLATES_FOLDER) ?: return frames
            
            for (fileName in files) {
                if (fileName.endsWith(".json")) {
                    parseFrameInfo(context, "$TEMPLATES_FOLDER/$fileName")?.let { frames.add(it) }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to list frame templates", e)
        }
        
        return frames
    }
    
    /**
     * 解析边框模板名称映射
     */
    private fun parseFrameInfo(context: Context, path: String): FrameInfo? {
        return try {
            val json = readAssetFile(context, path)
            val jsonObject = JSONObject(json)
            val id = jsonObject.optString("id")
            val name = parseNameMap(jsonObject.opt("name"))
            val editable = jsonObject.optBoolean("editable")
            FrameInfo(
                id = id,
                path = path,
                nameMap = name,
                isBuiltIn = true,
                isEditable = editable
            )
        } catch (e: Exception) {
            null
        }
    }

    /**
     * 解析名称映射（支持 String 或 JSONObject）
     */
    private fun parseNameMap(nameObj: Any?): Map<String, String> {
        val map = mutableMapOf<String, String>()
        when (nameObj) {
            is String -> {
                map["en"] = nameObj
                map["zh"] = nameObj
            }
            is JSONObject -> {
                val keys = nameObj.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    map[key] = nameObj.getString(key)
                }
            }
        }
        return map
    }
    
    /**
     * 从 assets 加载并解析边框模板
     */
    fun parseFromAssets(context: Context, path: String): FrameTemplate? {
        return try {
            val json = readAssetFile(context, path)
            parseTemplate(json)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to parse frame template: $path", e)
            null
        }
    }

    /**
     * 从文件路径加载并解析边框模板
     */
    fun parseFromFile(filePath: String): FrameTemplate? {
        return try {
            val file = java.io.File(filePath)
            if (!file.exists()) {
                PLog.e(TAG, "Frame template file not found: $filePath")
                return null
            }
            val json = file.readText()
            parseTemplate(json)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to parse frame template from file: $filePath", e)
            null
        }
    }
    
    /**
     * 读取 asset 文件内容
     */
    private fun readAssetFile(context: Context, path: String): String {
        return context.assets.open(path).use { inputStream ->
            BufferedReader(InputStreamReader(inputStream)).use { reader ->
                reader.readText()
            }
        }
    }
    
    /**
     * 解析模板 JSON
     */
    fun parseTemplate(json: String): FrameTemplate {
        val obj = JSONObject(json)
        
        return FrameTemplate(
            id = obj.getString("id"),
            nameMap = parseNameMap(obj.opt("name")),
            version = obj.optInt("version", 1),
            layout = parseLayout(obj.getJSONObject("layout")),
            elements = parseElements(obj.getJSONArray("elements")),
            elementsTop = obj.optJSONArray("elementsTop")?.let { parseElements(it) }
        )
    }

    /**
     * 将模板序列化为 JSON，保持与解析器字段定义对称。
     */
    fun serializeTemplate(template: FrameTemplate): String {
        val obj = JSONObject().apply {
            put("id", template.id)
            put("name", JSONObject().apply {
                template.nameMap.forEach { (lang, value) ->
                    put(lang, value)
                }
            })
            put("version", template.version)
            put("layout", JSONObject().apply {
                put("position", template.layout.position.name)
                put("height", template.layout.heightDp)
                put("backgroundColor", colorToHex(template.layout.backgroundColor))
                put("borderColor", colorToHex(template.layout.borderColor))
                put("lineSpacing", template.layout.lineSpacingDp)
                put("padding", template.layout.paddingDp)
                if (template.layout.borderWidthDp > 0) {
                    put("borderWidth", template.layout.borderWidthDp)
                }
                if (template.layout.photoCornerRadiusDp > 0) {
                    put("photoCornerRadius", template.layout.photoCornerRadiusDp)
                }
                if (template.layout.photoShadowEnabled) {
                    put("photoShadowEnabled", true)
                }
                if (template.layout.photoShadowRadiusDp > 0) {
                    put("photoShadowRadius", template.layout.photoShadowRadiusDp)
                }
                if (template.layout.photoShadowOffsetXDp != 0) {
                    put("photoShadowOffsetX", template.layout.photoShadowOffsetXDp)
                }
                if (template.layout.photoShadowOffsetYDp != 2) {
                    put("photoShadowOffsetY", template.layout.photoShadowOffsetYDp)
                }
                if (template.layout.photoShadowColor != 0xCC000000.toInt()) {
                    put("photoShadowColor", colorToHex(template.layout.photoShadowColor))
                }
                template.layout.imageResName?.let { put("imageResName", it) }
                template.layout.imagePath?.let { put("imagePath", it) }
            })
            put("elements", JSONArray().apply {
                template.elements.forEach { element ->
                    put(serializeElement(element))
                }
            })
            template.elementsTop?.let { elementsTop ->
                put("elementsTop", JSONArray().apply {
                    elementsTop.forEach { element ->
                        put(serializeElement(element))
                    }
                })
            }
        }
        return obj.toString(2)
    }

    fun validateTemplate(template: FrameTemplate): List<String> {
        val errors = mutableListOf<String>()

        if (template.getName().isBlank()) {
            errors += "name"
        }

        if (template.layout.heightDp < 0) errors += "layout.height"
        if (template.layout.paddingDp < 0) errors += "layout.padding"
        if (template.layout.borderWidthDp < 0) errors += "layout.borderWidth"
        if (template.layout.photoCornerRadiusDp < 0) errors += "layout.photoCornerRadius"
        if (template.layout.photoShadowRadiusDp < 0) errors += "layout.photoShadowRadius"
        if (template.layout.position == FramePosition.IMAGE &&
            template.layout.imageResName.isNullOrBlank() &&
            template.layout.imagePath.isNullOrBlank()
        ) {
            errors += "layout.imageSource"
        }

        template.elements.forEachIndexed { index, element ->
            validateElement(element, "elements[$index]", errors)
        }

        template.elementsTop?.forEachIndexed { index, element ->
            validateElement(element, "elementsTop[$index]", errors)
        }

        return errors
    }

    private fun validateElement(element: FrameElement, path: String, errors: MutableList<String>) {
        when (element) {
            is FrameElement.Text -> {
                if (element.fontSizeSp < 0) errors += "$path.fontSize"
            }

            is FrameElement.Logo -> {
                if (element.sizeDp < 0) errors += "$path.size"
                if (element.maxWidth < 0) errors += "$path.maxWidth"
                if (element.marginDp < 0) errors += "$path.margin"
            }

            is FrameElement.Divider -> {
                if (element.lengthDp < 0) errors += "$path.length"
                if (element.thicknessDp < 0) errors += "$path.thickness"
                if (element.marginDp < 0) errors += "$path.margin"
            }

            is FrameElement.Spacer -> {
                if (element.widthDp < 0) errors += "$path.width"
            }
        }
    }
    
    /**
     * 解析布局配置
     */
    private fun parseLayout(obj: JSONObject): FrameLayout {
        val backgroundColor = parseColor(obj.optString("backgroundColor", "#FFFFFF"))
        return FrameLayout(
            position = FramePosition.valueOf(obj.optString("position", "BOTTOM")),
            heightDp = obj.optInt("height", 80),
            backgroundColor = backgroundColor,
            borderColor = parseColor(obj.optString("borderColor", colorToHex(backgroundColor))),
            lineSpacingDp = obj.optInt("lineSpacing", 8),
            paddingDp = obj.optInt("padding", 16),
            borderWidthDp = obj.optInt("borderWidth", 0),
            photoCornerRadiusDp = obj.optInt("photoCornerRadius", 0),
            photoShadowEnabled = obj.optBoolean("photoShadowEnabled", false),
            photoShadowRadiusDp = obj.optInt("photoShadowRadius", 0),
            photoShadowOffsetXDp = obj.optInt("photoShadowOffsetX", 0),
            photoShadowOffsetYDp = obj.optInt("photoShadowOffsetY", 2),
            photoShadowColor = parseColor(obj.optString("photoShadowColor", "#CC000000")),
            imageResName = obj.optString("imageResName").takeIf { it.isNotEmpty() },
            imagePath = obj.optString("imagePath").takeIf { it.isNotEmpty() }
        )
    }
    
    /**
     * 解析元素列表
     */
    private fun parseElements(arr: JSONArray): List<FrameElement> {
        val elements = mutableListOf<FrameElement>()
        
        for (i in 0 until arr.length()) {
            val obj = arr.getJSONObject(i)
            val element = parseElement(obj)
            if (element != null) {
                elements.add(element)
            }
        }
        
        return elements
    }
    
    /**
     * 解析单个元素
     */
    private fun parseElement(obj: JSONObject): FrameElement? {
        return when (obj.getString("type")) {
            "text" -> parseTextElement(obj)
            "logo" -> parseLogoElement(obj)
            "divider" -> parseDividerElement(obj)
            "spacer" -> parseSpacerElement(obj)
            else -> null
        }
    }

    private fun serializeElement(element: FrameElement): JSONObject {
        return when (element) {
            is FrameElement.Text -> JSONObject().apply {
                put("type", "text")
                put("textType", element.textType.name)
                put("alignment", element.alignment.name)
                put("fontSize", element.fontSizeSp)
                put("color", colorToHex(element.color))
                put("fontWeight", element.fontWeight.name)
                element.fontFamily?.let { put("fontFamily", it) }
                element.overrideText?.let { put("overrideText", it) }
                element.format?.let { put("format", it) }
                element.prefix?.let { put("prefix", it) }
                element.suffix?.let { put("suffix", it) }
                if (element.line != 0) {
                    put("line", element.line)
                }
            }

            is FrameElement.Logo -> JSONObject().apply {
                put("type", "logo")
                put("logoType", element.logoType.name)
                element.overrideSource?.let { put("overrideSource", it) }
                put("alignment", element.alignment.name)
                put("size", element.sizeDp)
                if (element.maxWidth > 0) {
                    put("maxWidth", element.maxWidth)
                }
                if (element.light) {
                    put("light", true)
                }
                put("margin", element.marginDp)
                if (element.line != 0) {
                    put("line", element.line)
                }
            }

            is FrameElement.Divider -> JSONObject().apply {
                put("type", "divider")
                put("orientation", element.orientation.name)
                put("alignment", element.alignment.name)
                put("length", element.lengthDp)
                put("thickness", element.thicknessDp)
                put("color", colorToHex(element.color))
                put("margin", element.marginDp)
                if (element.line != 0) {
                    put("line", element.line)
                }
            }

            is FrameElement.Spacer -> JSONObject().apply {
                put("type", "spacer")
                put("width", element.widthDp)
                if (element.line != 0) {
                    put("line", element.line)
                }
            }
        }
    }
    
    /**
     * 解析文本元素
     */
    private fun parseTextElement(obj: JSONObject): FrameElement.Text {
        return FrameElement.Text(
            textType = TextType.valueOf(obj.getString("textType")),
            alignment = ElementAlignment.valueOf(obj.optString("alignment", "START")),
            fontSizeSp = obj.optInt("fontSize", 14),
            color = parseColor(obj.optString("color", "#333333")),
            fontWeight = FontWeight.valueOf(obj.optString("fontWeight", "NORMAL")),
            fontFamily = obj.optString("fontFamily").takeIf { it.isNotEmpty() },
            overrideText = obj.optString("overrideText").takeIf { it.isNotEmpty() },
            format = obj.optString("format").takeIf { it.isNotEmpty() },
            prefix = obj.optString("prefix").takeIf { it.isNotEmpty() },
            suffix = obj.optString("suffix").takeIf { it.isNotEmpty() },
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析 Logo 元素
     */
    private fun parseLogoElement(obj: JSONObject): FrameElement.Logo {
        return FrameElement.Logo(
            logoType = LogoType.valueOf(obj.getString("logoType")),
            overrideSource = obj.optString("overrideSource").takeIf { it.isNotEmpty() },
            alignment = ElementAlignment.valueOf(obj.optString("alignment", "CENTER")),
            sizeDp = obj.optInt("size", 24),
            maxWidth = obj.optInt("maxWidth", 0),
            light = obj.optBoolean("light", false),
            marginDp = obj.optInt("margin", 8),
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析分隔线元素
     */
    private fun parseDividerElement(obj: JSONObject): FrameElement.Divider {
        return FrameElement.Divider(
            orientation = DividerOrientation.valueOf(obj.optString("orientation", "VERTICAL")),
            alignment = ElementAlignment.valueOf(obj.optString("alignment", "CENTER")),
            lengthDp = obj.optInt("length", 16),
            thicknessDp = obj.optInt("thickness", 1),
            color = parseColor(obj.optString("color", "#CCCCCC")),
            marginDp = obj.optInt("margin", 8),
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析间距元素
     */
    private fun parseSpacerElement(obj: JSONObject): FrameElement.Spacer {
        return FrameElement.Spacer(
            widthDp = obj.optInt("width", 8),
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析颜色字符串
     */
    private fun parseColor(colorStr: String): Int {
        return try {
            Color.parseColor(colorStr)
        } catch (e: Exception) {
            Color.BLACK
        }
    }

    private fun colorToHex(color: Int): String {
        return if ((color ushr 24) == 0xFF) {
            String.format("#%06X", color and 0xFFFFFF)
        } else {
            String.format("#%08X", color)
        }
    }
}
