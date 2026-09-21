package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.Color
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
        val version = obj.optInt("version", 1)
        require(version in 1..FrameTemplate.CURRENT_VERSION) { "Unsupported frame template version: $version" }
        if (version == 1) migrateLegacyDesignPixels(obj)
        
        return FrameTemplate(
            id = obj.getString("id"),
            nameMap = parseNameMap(obj.opt("name")),
            version = FrameTemplate.CURRENT_VERSION,
            layout = parseLayout(obj.getJSONObject("layout")),
            elements = parseElements(obj.getJSONArray("elements")),
            elementsTop = obj.optJSONArray("elementsTop")?.let { parseElements(it) }
        )
    }

    /** Convert original dp/sp values to design pixels at the 4096 × 3072 reference size. */
    private fun migrateLegacyDesignPixels(obj: JSONObject) {
        val legacyScale = 3.0
        fun JSONObject.convert(key: String, default: Double) {
            put(key, optDouble(key, default) * legacyScale)
        }

        val layout = obj.getJSONObject("layout")
        if (!layout.has("designSize")) {
            val designSize = when (val orientation = layout.optString("orientation", "AUTO")) {
                "AUTO", "LANDSCAPE" -> FrameDesignSize()
                "PORTRAIT" -> FrameDesignSize(width = 3072f, height = 4096f)
                else -> throw IllegalArgumentException("Invalid legacy frame orientation: $orientation")
            }
            layout.put("designSize", JSONObject().apply {
                put("width", designSize.width)
                put("height", designSize.height)
            })
        }
        layout.remove("orientation")
        layout.apply {
            put("verticalPadding", optDouble("verticalPadding", optDouble("padding", 16.0)) * legacyScale)
            put("borderHeight", optDouble("borderHeight", optDouble("borderWidth", 0.0)) * legacyScale)
            convert("height", 80.0)
            convert("backgroundBlurRadius", 32.0)
            convert("elementSpacing", 8.0)
            convert("lineSpacing", 8.0)
            convert("padding", 16.0)
            convert("borderWidth", 0.0)
            convert("photoCornerRadius", 0.0)
            convert("photoShadowRadius", 0.0)
            convert("photoShadowOffsetX", 0.0)
            convert("photoShadowOffsetY", 2.0)
        }
        listOfNotNull(obj.optJSONArray("elements"), obj.optJSONArray("elementsTop")).forEach { elements ->
            for (index in 0 until elements.length()) {
                elements.getJSONObject(index).apply {
                    when (optString("type")) {
                        "text" -> convert("fontSize", 14.0)
                        "logo" -> {
                            if (has("width")) convert("width", 0.0)
                            convert("size", 24.0)
                            convert("maxWidth", 0.0)
                            convert("margin", 8.0)
                        }
                        "divider" -> {
                            convert("length", 16.0)
                            convert("thickness", 1.0)
                            convert("margin", 8.0)
                        }
                        "spacer" -> convert("width", 8.0)
                    }
                }
            }
        }
        obj.put("version", FrameTemplate.CURRENT_VERSION)
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
            put("version", FrameTemplate.CURRENT_VERSION)
            put("layout", JSONObject().apply {
                put("position", template.layout.position.name)
                put("designSize", JSONObject().apply {
                    put("width", template.layout.designSize.width)
                    put("height", template.layout.designSize.height)
                })
                put("height", template.layout.heightPx)
                put("backgroundColor", colorToHex(template.layout.backgroundColor))
                put("backgroundType", template.layout.effectiveBackgroundType.name)
                put("backgroundBlurRadius", template.layout.backgroundBlurRadiusPx)
                put("borderColor", colorToHex(template.layout.borderColor))
                put("elementSpacing", template.layout.elementSpacingPx)
                put("lineSpacing", template.layout.lineSpacingPx)
                put("padding", template.layout.paddingPx)
                put("verticalPadding", template.layout.verticalPaddingPx)
                put("borderHeight", template.layout.borderHeightPx)
                if (template.layout.borderWidthPx > 0) {
                    put("borderWidth", template.layout.borderWidthPx)
                }
                if (template.layout.photoCornerRadiusPx > 0) {
                    put("photoCornerRadius", template.layout.photoCornerRadiusPx)
                }
                if (template.layout.photoShadowEnabled) {
                    put("photoShadowEnabled", true)
                }
                if (template.layout.photoShadowRadiusPx > 0) {
                    put("photoShadowRadius", template.layout.photoShadowRadiusPx)
                }
                if (template.layout.photoShadowOffsetXPx != 0f) {
                    put("photoShadowOffsetX", template.layout.photoShadowOffsetXPx)
                }
                if (template.layout.photoShadowOffsetYPx != 6.0f) {
                    put("photoShadowOffsetY", template.layout.photoShadowOffsetYPx)
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

        if (template.version != FrameTemplate.CURRENT_VERSION) errors += "version"
        with(template.layout) {
            if (!designSize.isValid) errors += "layout.designSize"
            validateDimension(heightPx, "layout.height", errors)
            validateDimension(elementSpacingPx, "layout.elementSpacing", errors)
            validateDimension(lineSpacingPx, "layout.lineSpacing", errors)
            validateDimension(paddingPx, "layout.padding", errors)
            validateDimension(verticalPaddingPx, "layout.verticalPadding", errors)
            validateDimension(backgroundBlurRadiusPx, "layout.backgroundBlurRadius", errors)
            validateDimension(borderWidthPx, "layout.borderWidth", errors)
            validateDimension(borderHeightPx, "layout.borderHeight", errors)
            validateDimension(photoCornerRadiusPx, "layout.photoCornerRadius", errors)
            validateDimension(photoShadowRadiusPx, "layout.photoShadowRadius", errors)
            validateDimension(photoShadowOffsetXPx, "layout.photoShadowOffsetX", errors, allowNegative = true)
            validateDimension(photoShadowOffsetYPx, "layout.photoShadowOffsetY", errors, allowNegative = true)
        }
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
                validateDimension(element.fontSizePx, "$path.fontSize", errors)
            }

            is FrameElement.Logo -> {
                element.widthPx?.let { validateDimension(it, "$path.width", errors) }
                validateDimension(element.sizePx, "$path.size", errors)
                validateDimension(element.maxWidthPx, "$path.maxWidth", errors)
                validateDimension(element.marginPx, "$path.margin", errors)
            }

            is FrameElement.Divider -> {
                validateDimension(element.lengthPx, "$path.length", errors)
                validateDimension(element.thicknessPx, "$path.thickness", errors)
                validateDimension(element.marginPx, "$path.margin", errors)
            }

            is FrameElement.Spacer -> {
                validateDimension(element.widthPx, "$path.width", errors)
            }
        }
    }

    private fun validateDimension(
        value: Float,
        path: String,
        errors: MutableList<String>,
        allowNegative: Boolean = false
    ) {
        if (!value.isFinite() || (!allowNegative && value < 0f)) errors += path
    }
    
    /**
     * 解析布局配置
     */
    private fun parseLayout(obj: JSONObject): FrameLayout {
        val backgroundColor = parseColor(obj.optString("backgroundColor", "#FFFFFF"))
        val position = FramePosition.valueOf(obj.optString("position", "BOTTOM"))
        val designObj = obj.getJSONObject("designSize")
        val designSize = FrameDesignSize(
            width = designObj.getDouble("width").toFloat(),
            height = designObj.getDouble("height").toFloat(),
        )
        require(designSize.isValid) { "Invalid frame design size" }
        return FrameLayout(
            position = position,
            designSize = designSize,
            heightPx = obj.optDouble("height", 240.0).toFloat(),
            backgroundColor = backgroundColor,
            backgroundType = FrameBackgroundType.valueOf(obj.optString("backgroundType", "COLOR")).forPosition(position),
            backgroundBlurRadiusPx = obj.optDouble("backgroundBlurRadius", 96.0).toFloat(),
            borderColor = parseColor(obj.optString("borderColor", colorToHex(backgroundColor))),
            elementSpacingPx = obj.optDouble("elementSpacing", 24.0).toFloat(),
            lineSpacingPx = obj.optDouble("lineSpacing", 24.0).toFloat(),
            paddingPx = obj.optDouble("padding", 48.0).toFloat(),
            verticalPaddingPx = obj.optDouble("verticalPadding", obj.optDouble("padding", 48.0)).toFloat(),
            borderWidthPx = obj.optDouble("borderWidth", 0.0).toFloat(),
            borderHeightPx = obj.optDouble("borderHeight", obj.optDouble("borderWidth", 0.0)).toFloat(),
            photoCornerRadiusPx = obj.optDouble("photoCornerRadius", 0.0).toFloat(),
            photoShadowEnabled = obj.optBoolean("photoShadowEnabled", false),
            photoShadowRadiusPx = obj.optDouble("photoShadowRadius", 0.0).toFloat(),
            photoShadowOffsetXPx = obj.optDouble("photoShadowOffsetX", 0.0).toFloat(),
            photoShadowOffsetYPx = obj.optDouble("photoShadowOffsetY", 6.0).toFloat(),
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
                put("fontSize", element.fontSizePx)
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
                if (element.widthPx != null) {
                    put("width", element.widthPx)
                } else {
                    put("size", element.sizePx)
                    if (element.maxWidthPx > 0) {
                        put("maxWidth", element.maxWidthPx)
                    }
                }
                if (element.light) {
                    put("light", true)
                }
                put("margin", element.marginPx)
                if (element.line != 0) {
                    put("line", element.line)
                }
            }

            is FrameElement.Divider -> JSONObject().apply {
                put("type", "divider")
                put("orientation", element.orientation.name)
                put("alignment", element.alignment.name)
                put("length", element.lengthPx)
                put("thickness", element.thicknessPx)
                put("color", colorToHex(element.color))
                put("margin", element.marginPx)
                if (element.line != 0) {
                    put("line", element.line)
                }
            }

            is FrameElement.Spacer -> JSONObject().apply {
                put("type", "spacer")
                put("width", element.widthPx)
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
            fontSizePx = obj.optDouble("fontSize", 42.0).toFloat(),
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
            widthPx = if (obj.has("width")) obj.getDouble("width").toFloat() else null,
            sizePx = obj.optDouble("size", 72.0).toFloat(),
            maxWidthPx = obj.optDouble("maxWidth", 0.0).toFloat(),
            light = obj.optBoolean("light", false),
            marginPx = obj.optDouble("margin", 24.0).toFloat(),
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析分隔线元素
     */
    private fun parseDividerElement(obj: JSONObject): FrameElement.Divider {
        val orientation = DividerOrientation.valueOf(obj.optString("orientation", "VERTICAL"))
        return FrameElement.Divider(
            orientation = orientation,
            alignment = ElementAlignment.valueOf(obj.optString("alignment", "CENTER")),
            lengthPx = obj.optDouble("length", 48.0).toFloat(),
            thicknessPx = obj.optDouble("thickness", 3.0).toFloat(),
            color = parseColor(obj.optString("color", "#CCCCCC")),
            marginPx = obj.optDouble("margin", 24.0).toFloat(),
            line = obj.optInt("line", 0)
        )
    }
    
    /**
     * 解析间距元素
     */
    private fun parseSpacerElement(obj: JSONObject): FrameElement.Spacer {
        return FrameElement.Spacer(
            widthPx = obj.optDouble("width", 24.0).toFloat(),
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
