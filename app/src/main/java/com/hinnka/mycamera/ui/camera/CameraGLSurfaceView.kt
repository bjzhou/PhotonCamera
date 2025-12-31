package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.graphics.SurfaceTexture
import android.opengl.GLSurfaceView
import android.util.AttributeSet
import android.util.Log
import android.util.Size
import android.view.Surface
import androidx.camera.core.Preview
import androidx.camera.core.SurfaceRequest
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutRenderer
import java.util.concurrent.Executor

/**
 * 相机预览 GLSurfaceView
 * 
 * 实现 CameraX Preview.SurfaceProvider 接口
 * 使用 OpenGL ES 3.0 渲染相机预览，支持实时 3D LUT 滤镜
 */
class CameraGLSurfaceView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : GLSurfaceView(context, attrs), Preview.SurfaceProvider {
    
    companion object {
        private const val TAG = "CameraGLSurfaceView"
    }
    
    private val renderer: LutRenderer = LutRenderer()
    
    // 回调 - 保留用于兼容（已弃用）
    @Deprecated("Use getSurfaceProvider() instead")
    var onSurfaceReady: ((Surface) -> Unit)? = null
    var onSurfaceDestroyed: (() -> Unit)? = null
    
    // CameraX SurfaceProvider 相关
    private var currentSurfaceRequest: SurfaceRequest? = null
    private var currentSurface: Surface? = null
    
    // SurfaceProvider 可用回调
    var onSurfaceProviderReady: ((Preview.SurfaceProvider) -> Unit)? = null
    
    init {
        // 设置 OpenGL ES 3.0
        setEGLContextClientVersion(3)
        
        // 设置渲染器
        setRenderer(renderer)
        
        // 按需渲染模式（当有新帧时才渲染）
        renderMode = RENDERMODE_WHEN_DIRTY
        
        // 设置 SurfaceTexture 可用回调
        renderer.onSurfaceTextureAvailable = { surfaceTexture ->
            // 在 GL 线程中创建 Surface
            currentSurface = Surface(surfaceTexture)
            
            // 通知 SurfaceProvider 已准备好
            post {
                onSurfaceProviderReady?.invoke(this)
                
                // 兼容旧接口
                @Suppress("DEPRECATION")
                onSurfaceReady?.invoke(currentSurface!!)
            }
        }
        
        // 设置渲染请求回调（当有新帧可用时由 LutRenderer 调用）
        renderer.onRequestRender = {
            requestRender()
        }
        
        // 保持 EGL 上下文
        preserveEGLContextOnPause = true
        
        Log.d(TAG, "CameraGLSurfaceView initialized")
    }
    
    /**
     * CameraX Preview.SurfaceProvider 接口实现
     * 
     * 当 CameraX 需要 Surface 时会调用此方法
     */
    override fun onSurfaceRequested(request: SurfaceRequest) {
        Log.d(TAG, "onSurfaceRequested: ${request.resolution}")
        
        // 保存当前请求
        currentSurfaceRequest = request
        
        // 更新预览尺寸
        val resolution = request.resolution
        queueEvent {
            renderer.setPreviewSize(resolution.width, resolution.height)
        }
        
        // 等待 Surface 准备好
        val surface = currentSurface
        if (surface != null) {
            // Surface 已准备好，提供给 CameraX
            request.provideSurface(surface, { runnable -> post(runnable) }) { result ->
                Log.d(TAG, "Surface result: ${result.resultCode}")
                when (result.resultCode) {
                    SurfaceRequest.Result.RESULT_SURFACE_USED_SUCCESSFULLY -> {
                        Log.d(TAG, "Surface used successfully")
                    }
                    SurfaceRequest.Result.RESULT_REQUEST_CANCELLED -> {
                        Log.d(TAG, "Surface request cancelled")
                    }
                    SurfaceRequest.Result.RESULT_INVALID_SURFACE -> {
                        Log.e(TAG, "Invalid surface")
                    }
                    else -> {
                        Log.w(TAG, "Unknown result code: ${result.resultCode}")
                    }
                }
            }
        } else {
            // Surface 还没准备好，等待渲染器回调
            Log.d(TAG, "Surface not ready yet, waiting...")
            renderer.onSurfaceTextureAvailable = { surfaceTexture ->
                currentSurface = Surface(surfaceTexture)
                
                // 提供 Surface 给 CameraX
                request.provideSurface(currentSurface!!, { runnable -> post(runnable) }) { result ->
                    Log.d(TAG, "Surface result (delayed): ${result.resultCode}")
                }
                
                // 通知 SurfaceProvider 已准备好
                post {
                    onSurfaceProviderReady?.invoke(this)
                    
                    @Suppress("DEPRECATION")
                    onSurfaceReady?.invoke(currentSurface!!)
                }
            }
        }
    }
    
    /**
     * 获取 SurfaceProvider（用于 CameraX 绑定）
     */
    fun getSurfaceProvider(): Preview.SurfaceProvider = this
    
    /**
     * 设置预览尺寸
     */
    fun setPreviewSize(width: Int, height: Int) {
        queueEvent {
            renderer.setPreviewSize(width, height)
        }
    }
    
    /**
     * 设置 LUT
     * 
     * @param lutConfig LUT 配置，传 null 表示移除 LUT
     */
    fun setLut(lutConfig: LutConfig?) {
        queueEvent {
            renderer.setLut(lutConfig)
            requestRender()
        }
    }
    
    /**
     * 设置 LUT 强度
     * 
     * @param intensity 强度值 (0.0 - 1.0)
     */
    fun setLutIntensity(intensity: Float) {
        renderer.lutIntensity = intensity.coerceIn(0f, 1f)
        requestRender()
    }
    
    /**
     * 设置 LUT 是否启用
     */
    fun setLutEnabled(enabled: Boolean) {
        renderer.lutEnabled = enabled
        requestRender()
    }
    
    /**
     * 获取当前 LUT 强度
     */
    fun getLutIntensity(): Float = renderer.lutIntensity
    
    /**
     * 获取 LUT 是否启用
     */
    fun isLutEnabled(): Boolean = renderer.lutEnabled
    
    /**
     * 请求渲染帧
     */
    fun requestRenderFrame() {
        requestRender()
    }
    
    /**
     * 获取 SurfaceTexture
     */
    fun getSurfaceTexture(): SurfaceTexture? = renderer.getSurfaceTexture()
    
    override fun onPause() {
        super.onPause()
        Log.d(TAG, "onPause")
    }
    
    override fun onResume() {
        super.onResume()
        Log.d(TAG, "onResume")
    }
    
    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        Log.d(TAG, "onDetachedFromWindow")
        
        // 通知 Surface 销毁
        onSurfaceDestroyed?.invoke()
        
        // 释放 Surface
        currentSurface?.release()
        currentSurface = null
        currentSurfaceRequest = null
        
        // 在 GL 线程中释放资源
        queueEvent {
            renderer.release()
        }
    }
}
