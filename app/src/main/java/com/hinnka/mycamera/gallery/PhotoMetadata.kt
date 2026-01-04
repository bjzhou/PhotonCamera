package com.hinnka.mycamera.gallery

import android.content.Context
import android.net.Uri
import android.provider.MediaStore
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.File

/**
 * 照片编辑元数据
 * 
 * 保存 LUT、边框水印和编辑信息，用于非破坏性编辑
 */
data class PhotoMetadata(
    val version: Int = 2,
    val lutId: String? = null,
    val lutIntensity: Float = 1f,
    val brightness: Float = 1f,
    val rotation: Float = 0f,
    // 边框水印配置
    val frameId: String? = null,
    val showAppBranding: Boolean = true,
    val width: Int = 0,
    val height: Int = 0
) {
    fun toJson(): String {
        return JSONObject().apply {
            put("version", version)
            put("lutId", lutId ?: JSONObject.NULL)
            put("lutIntensity", lutIntensity.toDouble())
            put("brightness", brightness.toDouble())
            put("rotation", rotation.toDouble())
            put("frameId", frameId ?: JSONObject.NULL)
            put("showAppBranding", showAppBranding)
            put("width", width)
            put("height", height)
        }.toString(2)
    }
    
    companion object {
        fun fromJson(json: String): PhotoMetadata? {
            return try {
                val obj = JSONObject(json)
                PhotoMetadata(
                    version = obj.optInt("version", 1),
                    lutId = if (obj.isNull("lutId")) null else obj.optString("lutId"),
                    lutIntensity = obj.optDouble("lutIntensity", 1.0).toFloat(),
                    brightness = obj.optDouble("brightness", 1.0).toFloat(),
                    rotation = obj.optDouble("rotation", 0.0).toFloat(),
                    frameId = if (obj.isNull("frameId")) null else obj.optString("frameId"),
                    showAppBranding = obj.optBoolean("showAppBranding", true),
                    width = obj.optInt("width", 0),
                    height = obj.optInt("height", 0)
                )
            } catch (e: Exception) {
                Log.e("PhotoMetadata", "Failed to parse JSON", e)
                null
            }
        }
    }
}
