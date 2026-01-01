package com.hinnka.mycamera.lut

import android.content.Context
import android.util.Log
import android.util.LruCache

/**
 * LUT 管理器
 * 
 * 负责 LUT 的加载、缓存和管理
 */
class LutManager(private val context: Context) {
    
    companion object {
        private const val TAG = "LutManager"
        
        // LUT 缓存大小（最多缓存 5 个 LUT）
        private const val CACHE_SIZE = 5
        
        // 内置 LUT 目录
        private const val BUILT_IN_LUT_FOLDER = "luts"
    }
    
    // LUT 缓存
    private val lutCache = LruCache<String, LutConfig>(CACHE_SIZE)
    
    // 可用 LUT 列表
    private var availableLuts: List<LutInfo> = emptyList()
    
    /**
     * 初始化，扫描可用的 LUT 文件
     */
    fun initialize() {
        availableLuts = LutParser.listAvailableLuts(context, BUILT_IN_LUT_FOLDER)
        Log.d(TAG, "Found ${availableLuts.size} LUT files")
    }
    
    /**
     * 获取可用的 LUT 列表
     */
    fun getAvailableLuts(): List<LutInfo> = availableLuts
    
    /**
     * 通过 ID 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return availableLuts.find { it.id == id }
    }
    
    /**
     * 加载 LUT 配置
     * 
     * @param id LUT ID
     * @return LUT 配置，如果加载失败返回 null
     */
    fun loadLut(id: String): LutConfig? {
        // 先从缓存查找
        lutCache.get(id)?.let {
            Log.d(TAG, "LUT loaded from cache: $id")
            return it
        }
        
        // 查找 LUT 信息
        val lutInfo = getLutInfo(id) ?: run {
            Log.e(TAG, "LUT not found: $id")
            return null
        }
        
        // 从文件加载
        return try {
            val lutConfig = LutParser.parseFromAssets(context, lutInfo.fileName)
            
            if (lutConfig.isValid()) {
                // 添加到缓存
                lutCache.put(id, lutConfig)
                Log.d(TAG, "LUT loaded: $id, size: ${lutConfig.size}")
                lutConfig
            } else {
                Log.e(TAG, "Invalid LUT data: $id")
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load LUT: $id", e)
            null
        }
    }
    
    /**
     * 预加载 LUT
     * 
     * 在后台线程中预加载 LUT，以便快速切换
     */
    fun preloadLut(id: String) {
        if (lutCache.get(id) != null) {
            return // 已在缓存中
        }
        
        // 后台加载
        Thread {
            loadLut(id)
        }.start()
    }
    
    /**
     * 清除缓存中的特定 LUT
     */
    fun evictLut(id: String) {
        lutCache.remove(id)
    }
    
    /**
     * 清除所有缓存
     */
    fun clearCache() {
        lutCache.evictAll()
        Log.d(TAG, "LUT cache cleared")
    }
    
    /**
     * 获取缓存状态信息
     */
    fun getCacheInfo(): String {
        return "LUT Cache: ${lutCache.size()}/${CACHE_SIZE}, hits=${lutCache.hitCount()}, misses=${lutCache.missCount()}"
    }
}
