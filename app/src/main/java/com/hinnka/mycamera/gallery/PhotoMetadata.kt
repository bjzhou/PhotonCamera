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
 * 保存 LUT 和编辑信息，用于非破坏性编辑
 */
data class PhotoMetadata(
    val version: Int = 1,
    val lutId: String? = null,
    val lutIntensity: Float = 1f,
    val brightness: Float = 1f,
    val rotation: Float = 0f
) {
    fun toJson(): String {
        return JSONObject().apply {
            put("version", version)
            put("lutId", lutId ?: JSONObject.NULL)
            put("lutIntensity", lutIntensity.toDouble())
            put("brightness", brightness.toDouble())
            put("rotation", rotation.toDouble())
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
                    rotation = obj.optDouble("rotation", 0.0).toFloat()
                )
            } catch (e: Exception) {
                Log.e("PhotoMetadata", "Failed to parse JSON", e)
                null
            }
        }
    }
}


// PhotoMetadataManager removed, replaced by PhotoManager.

