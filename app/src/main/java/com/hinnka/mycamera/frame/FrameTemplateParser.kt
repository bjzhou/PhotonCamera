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
        
        return FrameTemplate(
            id = obj.getString("id"),
            nameMap = parseNameMap(obj.opt("name")),
            version = obj.optInt("version", 1),
            layout = parseLayout(obj.getJSONObject("layout")),
            elements = parseElements(obj.getJSONArray("elements"))
        )
    }
    
    /**
     * 解析布局配置
     */
    private fun parseLayout(obj: JSONObject): FrameLayout {
        return FrameLayout(
            position = FramePosition.valueOf(obj.optString("position", "BOTTOM")),
            heightDp = obj.optInt("height", 80),
            backgroundColor = parseColor(obj.optString("backgroundColor", "#FFFFFF")),
            paddingDp = obj.optInt("padding", 16),
            borderWidthDp = obj.optInt("borderWidth", 0),
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
}
