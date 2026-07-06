package com.hinnka.mycamera.frame

import android.content.Context
import android.net.Uri
import android.util.Log
import android.util.LruCache
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map
import org.json.JSONObject
import java.io.File
import java.util.UUID

/**
 * DataStore 扩展属性
 */
private val Context.framePropertiesDataStore: DataStore<Preferences> by preferencesDataStore(name = "frame_properties_preferences")

/**
 * 边框管理器
 * 
 * 负责边框模板的加载、缓存和管理，以及自定义属性的持久化
 */
class FrameManager(private val context: Context) {
    
    companion object {
        private const val TAG = "FrameManager"
        private const val CACHE_SIZE = 5

        // 自定义属性 DataStore Key 生成函数（每个 Frame ID 独立）
        private fun customPropertiesKey(frameId: String) = stringPreferencesKey("${frameId}_customProperties")
    }

    private val customImportManager = CustomImportManager(context)
    
    // 模板缓存
    private val templateCache = LruCache<String, FrameTemplate>(CACHE_SIZE)
    
    // 可用边框列表
    private var availableFrames: List<FrameInfo> = emptyList()
    
    /**
     * 初始化，扫描可用的边框模板
     */
    fun initialize() {
        val builtInFrames = FrameTemplateParser.listAvailableFrames(context)
        val customFrames = customImportManager.getCustomFrames()
        availableFrames = (builtInFrames + customFrames).distinctBy { it.id }
        PLog.d(TAG, "Found ${availableFrames.size} frame templates (${builtInFrames.size} built-in, ${customFrames.size} custom)")
    }
    
    /**
     * 获取可用的边框列表
     */
    fun getAvailableFrames(): List<FrameInfo> = availableFrames
    
    /**
     * 通过 ID 获取边框信息
     */
    fun getFrameInfo(id: String): FrameInfo? {
        return availableFrames.find { it.id == id }
    }

    fun createEditorDraft(frameId: String?, imageFrame: Boolean = false): FrameEditorDraft {
        if (frameId == null) {
            return FrameEditorDraft.createNew(imageFrame = imageFrame)
        }

        val template = loadTemplate(frameId)
        val frameInfo = getFrameInfo(frameId)
        return if (template != null) {
            FrameEditorDraft.fromTemplate(template, frameInfo)
        } else {
            FrameEditorDraft.createNew(imageFrame = imageFrame)
        }
    }
    
    /**
     * 加载边框模板
     * 
     * @param id 边框 ID
     * @return 边框模板，如果加载失败返回 null
     */
    fun loadTemplate(id: String): FrameTemplate? {
        // 先从缓存查找
        templateCache.get(id)?.let {
//            PLog.d(TAG, "Frame template loaded from cache: $id")
            return it
        }
        
        // 查找边框信息
        val frameInfo = getFrameInfo(id) ?: run {
            PLog.e(TAG, "Frame not found: $id")
            return null
        }
        
        // 根据是否为内置边框决定加载方式
        return try {
            val template = if (frameInfo.isBuiltIn) {
                FrameTemplateParser.parseFromAssets(context, frameInfo.path)
            } else {
                // 自定义边框从文件加载
                val filePath = frameInfo.path
                FrameTemplateParser.parseFromFile(filePath)
            }
            
            if (template != null) {
                templateCache.put(id, template)
                PLog.d(TAG, "Frame template loaded: $id (builtIn=${frameInfo.isBuiltIn})")
            }
            template
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load frame template: $id", e)
            null
        }
    }
    
    /**
     * 预加载边框模板
     */
    fun preloadTemplate(id: String) {
        if (templateCache.get(id) != null) {
            return
        }
        
        Thread {
            loadTemplate(id)
        }.start()
    }
    
    /**
     * 清除缓存中的特定模板
     */
    fun evictTemplate(id: String) {
        templateCache.remove(id)
    }
    
    /**
     * 清除所有缓存
     */
    fun clearCache() {
        templateCache.evictAll()
        PLog.d(TAG, "Frame template cache cleared")
    }
    
    /**
     * 获取缓存状态信息
     */
    fun getCacheInfo(): String {
        return "Frame Cache: ${templateCache.size()}/$CACHE_SIZE, hits=${templateCache.hitCount()}, misses=${templateCache.missCount()}"
    }

    fun importEditorFrameImage(uri: Uri, frameIdHint: String? = null): String? {
        return customImportManager.importEditorFrameImage(uri, frameIdHint)
    }

    fun saveEditorDraft(draft: FrameEditorDraft): String? {
        val overwriteFrameId = draft.editableFrameId?.takeIf { !draft.isBuiltInSource }
        val templateId = overwriteFrameId ?: draft.sourceFrameId ?: "custom_${UUID.randomUUID()}"
        val template = draft.toTemplate(templateId)
        val validationErrors = FrameTemplateParser.validateTemplate(template)
        if (validationErrors.isNotEmpty()) {
            PLog.e(TAG, "Frame draft validation failed: $validationErrors")
            return null
        }

        val savedId = customImportManager.saveFrameTemplate(template, overwriteFrameId)
        if (savedId != null) {
            draft.sourceFrameId?.let { evictTemplate(it) }
            evictTemplate(savedId)
            initialize()
        }
        return savedId
    }

    // ========== 自定义属性持久化方法 ==========

    /**
     * 获取指定边框的自定义属性 Flow
     */
    fun getCustomProperties(frameId: String): Flow<Map<String, String>> {
        return context.framePropertiesDataStore.data.map { preferences ->
            val jsonString = preferences[customPropertiesKey(frameId)]
            if (jsonString != null) {
                try {
                    jsonToMap(jsonString)
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to parse custom properties JSON for frame [$frameId]", e)
                    emptyMap()
                }
            } else {
                emptyMap()
            }
        }
    }

    /**
     * 保存指定边框的自定义属性
     *
     * @param frameId 边框 ID
     * @param properties 自定义属性 Map
     */
    suspend fun saveCustomProperties(frameId: String, properties: Map<String, String>) {
        context.framePropertiesDataStore.edit { preferences ->
            val jsonString = mapToJson(properties)
            preferences[customPropertiesKey(frameId)] = jsonString
        }
        PLog.d(TAG, "Custom properties saved for frame [$frameId]: $properties")
    }

    /**
     * 加载指定边框的自定义属性（同步方法）
     *
     * @param frameId 边框 ID
     * @return 自定义属性 Map，如果未设置则返回空 Map
     */
    suspend fun loadCustomProperties(frameId: String): Map<String, String> {
        return context.framePropertiesDataStore.data.map { preferences ->
            val jsonString = preferences[customPropertiesKey(frameId)]
            if (jsonString != null) {
                try {
                    jsonToMap(jsonString)
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to parse custom properties JSON for frame [$frameId]", e)
                    emptyMap()
                }
            } else {
                emptyMap()
            }
        }.firstOrNull() ?: emptyMap()
    }

    /**
     * 删除指定边框的自定义属性
     *
     * @param frameId 边框 ID
     */
    suspend fun deleteCustomProperties(frameId: String) {
        context.framePropertiesDataStore.edit { preferences ->
            preferences.remove(customPropertiesKey(frameId))
        }
        PLog.d(TAG, "Custom properties deleted for frame [$frameId]")
    }

    // ========== JSON 辅助方法 ==========

    private fun mapToJson(map: Map<String, String>): String {
        val jsonObject = JSONObject()
        map.forEach { (key, value) ->
            jsonObject.put(key, value)
        }
        return jsonObject.toString()
    }

    private fun jsonToMap(jsonString: String): Map<String, String> {
        val result = mutableMapOf<String, String>()
        val jsonObject = JSONObject(jsonString)
        jsonObject.keys().forEach { key ->
            result[key] = jsonObject.getString(key)
        }
        return result
    }
}
