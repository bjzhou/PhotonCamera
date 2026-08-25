package com.hinnka.mycamera.frame

import android.content.Context
import android.location.Address
import android.location.Geocoder
import android.net.Uri
import android.os.Build
import android.util.LruCache
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.data.FrameAssetPathMigrator
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.util.Locale
import java.util.UUID
import kotlin.coroutines.resume

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
        private const val LOCATION_CACHE_SIZE = 64
        private const val LOCATION_COORDINATE_PRECISION = 4

        // 自定义属性 DataStore Key 生成函数（每个 Frame ID 独立）
        private fun customPropertiesKey(frameId: String) = stringPreferencesKey("${frameId}_customProperties")
    }

    private val customImportManager = CustomImportManager(context)
    
    // 模板缓存
    private val templateCache = LruCache<String, FrameTemplate>(CACHE_SIZE)

    // 反向地理编码结果缓存。同一照片在预览、导出 HDR/SDR 时无需重复查询。
    private val locationCache = LruCache<String, String>(LOCATION_CACHE_SIZE)
    
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
        locationCache.evictAll()
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

    /**
     * 在模板包含地点文本时，用照片 GPS 补全可供边框渲染的地点名称。
     *
     * 模板或照片级 LOCATION 覆盖值优先；系统地理编码不可用时显示经纬度，
     * 避免已经保存 GPS 的照片出现空白地点元素。
     */
    suspend fun resolveFrameLocation(
        template: FrameTemplate,
        metadata: MediaMetadata,
    ): MediaMetadata {
        if (!template.requiresMetadataLocation(metadata)) return metadata

        val latitude = metadata.latitude?.takeIf { it in -90.0..90.0 } ?: return metadata
        val longitude = metadata.longitude?.takeIf { it in -180.0..180.0 } ?: return metadata
        val cacheKey = locationCacheKey(latitude, longitude)
        val displayLocation = locationCache.get(cacheKey)
            ?: resolveAddress(latitude, longitude)
                ?.also { locationCache.put(cacheKey, it) }
            ?: formatCoordinates(latitude, longitude)

        return metadata.copy(location = displayLocation)
    }

    private fun FrameTemplate.requiresMetadataLocation(metadata: MediaMetadata): Boolean {
        if (!metadata.location.isNullOrBlank() || metadata.customProperties.containsKey(TextType.LOCATION.name)) {
            return false
        }

        return (elements + elementsTop.orEmpty())
            .filterIsInstance<FrameElement.Text>()
            .any { element ->
                element.textType == TextType.LOCATION && element.overrideText == null
            }
    }

    private suspend fun resolveAddress(latitude: Double, longitude: Double): String? {
        if (!Geocoder.isPresent()) return null

        return runCatching {
            val geocoder = Geocoder(context, Locale.getDefault())
            val addresses = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                getAddressesAsync(geocoder, latitude, longitude)
            } else {
                withContext(Dispatchers.IO) {
                    @Suppress("DEPRECATION")
                    geocoder.getFromLocation(latitude, longitude, 1).orEmpty()
                }
            }
            addresses.firstOrNull()?.toDisplayLocation()
        }.onFailure { error ->
            PLog.w(TAG, "Failed to resolve frame location", error)
        }.getOrNull()
    }

    private suspend fun getAddressesAsync(
        geocoder: Geocoder,
        latitude: Double,
        longitude: Double,
    ): List<Address> = suspendCancellableCoroutine { continuation ->
        geocoder.getFromLocation(
            latitude,
            longitude,
            1,
            object : Geocoder.GeocodeListener {
                override fun onGeocode(addresses: MutableList<Address>) {
                    if (continuation.isActive) continuation.resume(addresses)
                }

                override fun onError(errorMessage: String?) {
                    if (continuation.isActive) continuation.resume(emptyList())
                }
            }
        )
    }

    private fun Address.toDisplayLocation(): String? {
        val parts = listOf(subLocality, locality, subAdminArea, adminArea, countryName)
            .mapNotNull { it?.trim()?.takeIf(String::isNotEmpty) }
            .distinctBy { it.lowercase(Locale.getDefault()) }

        return parts.takeIf { it.isNotEmpty() }?.joinToString(", ")
            ?: getAddressLine(0)?.trim()?.takeIf(String::isNotEmpty)
    }

    private fun locationCacheKey(latitude: Double, longitude: Double): String {
        return String.format(
            Locale.US,
            "%s:%.${LOCATION_COORDINATE_PRECISION}f,%.${LOCATION_COORDINATE_PRECISION}f",
            Locale.getDefault().toLanguageTag(),
            latitude,
            longitude,
        )
    }

    private fun formatCoordinates(latitude: Double, longitude: Double): String {
        return String.format(
            Locale.US,
            "%.${LOCATION_COORDINATE_PRECISION}f\u00B0, %.${LOCATION_COORDINATE_PRECISION}f\u00B0",
            latitude,
            longitude,
        )
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
                    FrameAssetPathMigrator.rebaseInstalledCustomProperties(
                        jsonToMap(jsonString),
                        context.filesDir,
                    )
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
                    FrameAssetPathMigrator.rebaseInstalledCustomProperties(
                        jsonToMap(jsonString),
                        context.filesDir,
                    )
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
