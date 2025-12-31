package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.graphics.SurfaceTexture
import android.opengl.GLSurfaceView
import android.util.AttributeSet
import android.util.Log
import android.view.Surface
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutRenderer

/**
 * 相机预览 GLSurfaceView
 * 
 * 使用 OpenGL ES 3.0 渲染相机预览，支持实时 3D LUT 滤镜
 */
class CameraGLSurfaceView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : GLSurfaceView(context, attrs) {
    
    companion object {
        private const val TAG = "CameraGLSurfaceView"
    }
    
    private val renderer: LutRenderer = LutRenderer()
    
    // 回调
    var onSurfaceReady: ((Surface) -> Unit)? = null
    var onSurfaceDestroyed: (() -> Unit)? = null
    
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
            val surface = Surface(surfaceTexture)
            
            // 注意：不要在这里再次设置 setOnFrameAvailableListener！
            // LutRenderer 已经设置了，我们只需要在收到新帧时请求渲染
            // 在 LutRenderer 中，当 onFrameAvailable 被调用时，我们需要请求渲染
            
            // 通知调用者 Surface 已准备好
            post {
                onSurfaceReady?.invoke(surface)
            }
        }
        
        // 设置渲染请求回调（当有新帧可用时由 LutRenderer 调用）
        // 始终调用 requestRender，GLSurfaceView 内部会处理帧同步
        renderer.onRequestRender = {
            requestRender()
        }
        
        // 保持 EGL 上下文
        preserveEGLContextOnPause = true
        
        Log.d(TAG, "CameraGLSurfaceView initialized")
    }
    
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
        
        // 在 GL 线程中释放资源
        queueEvent {
            renderer.release()
        }
    }
}
