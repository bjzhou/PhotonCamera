package com.hinnka.mycamera.utils

import android.content.Context
import android.media.AudioAttributes
import android.media.SoundPool
import android.util.Log
import java.io.IOException

/**
 * 快门音效播放器
 * 
 * 负责播放拍照时的快门音效
 * 使用 SoundPool 实现低延迟播放
 */
class ShutterSoundPlayer(private val context: Context) {
    
    companion object {
        private const val TAG = "ShutterSoundPlayer"
        private const val SHUTTER_SOUND_PATH = "shutter.mp3"
    }
    
    private var soundPool: SoundPool? = null
    private var soundId: Int = -1
    private var isLoaded = false
    
    init {
        initializePlayer()
    }
    
    /**
     * 初始化 SoundPool
     */
    private fun initializePlayer() {
        try {
            val audioAttributes = AudioAttributes.Builder()
                .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                .build()
                
            soundPool = SoundPool.Builder()
                .setMaxStreams(1)
                .setAudioAttributes(audioAttributes)
                .build()
                
            soundPool?.setOnLoadCompleteListener { _, _, status ->
                if (status == 0) {
                    isLoaded = true
                    Log.d(TAG, "Shutter sound loaded successfully")
                } else {
                    Log.e(TAG, "Failed to load shutter sound, status: $status")
                }
            }
            
            val afd = context.assets.openFd(SHUTTER_SOUND_PATH)
            soundId = soundPool?.load(afd, 1) ?: -1
            afd.close()
            
            Log.d(TAG, "Shutter sound player initialized with SoundPool")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize shutter sound player", e)
            isLoaded = false
        }
    }
    
    /**
     * 播放快门音效
     */
    fun play() {
        if (soundPool == null || soundId == -1 || !isLoaded) {
            Log.w(TAG, "SoundPool not ready: soundPool=$soundPool, soundId=$soundId, isLoaded=$isLoaded")
            // 如果是因为未初始化或加载失败，尝试重新初始化
            if (soundPool == null) {
                initializePlayer()
            }
            return
        }
        
        try {
            // 播放音效：左声道音量, 右声道音量, 优先级, 循环次数(0不循环), 播放速率(1.0正常)
            soundPool?.play(soundId, 1.0f, 1.0f, 1, 0, 1.0f)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to play shutter sound", e)
        }
    }
    
    /**
     * 释放资源
     */
    fun release() {
        try {
            soundPool?.release()
            soundPool = null
            soundId = -1
            isLoaded = false
            Log.d(TAG, "Shutter sound player released")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to release shutter sound player", e)
        }
    }
}
