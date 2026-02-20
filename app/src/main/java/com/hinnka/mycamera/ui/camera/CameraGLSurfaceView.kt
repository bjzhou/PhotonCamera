package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.graphics.Bitmap
import android.graphics.PointF
import android.graphics.SurfaceTexture
import android.opengl.GLSurfaceView
import android.util.AttributeSet
import android.util.Log
import android.view.Surface
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutRenderer
import com.hinnka.mycamera.utils.PLog

/**
 * 相机预览 GLSurfaceView
 * 
 * 实现 CameraX Preview.SurfaceProvider 接口
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

    var onHistogramUpdated: ((IntArray) -> Unit)? = null
    var onMeteringUpdated: ((Double, Double) -> Unit)? = null

    var onSurfaceReady: ((Surface) -> Unit)? = null
    var onSurfaceDestroyed: (() -> Unit)? = null
    private var currentSurface: Surface? = null

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
                val surface = currentSurface ?: return@post
                onSurfaceReady?.invoke(surface)
            }
        }

        // 设置渲染请求回调（当有新帧可用时由 LutRenderer 调用）
        renderer.onRequestRender = {
            requestRender()
        }

        renderer.onHistogramUpdated = { histogram ->
            onHistogramUpdated?.invoke(histogram)
        }

        renderer.onMeteringUpdated = { totalWeight, weightedSumLuminance ->
            onMeteringUpdated?.invoke(totalWeight, weightedSumLuminance)
        }

        // 保持 EGL 上下文
        preserveEGLContextOnPause = true

        PLog.d(TAG, "CameraGLSurfaceView initialized")
    }

    /**
     * 设置预览尺寸
     */
    fun setPreviewSize(width: Int, height: Int) {
        queueEvent {
            renderer.setPreviewSize(width, height)
        }
    }

    fun setSensorOrientation(orientation: Int) {
        queueEvent {
            renderer.setSensorOrientation(orientation)
        }
    }

    fun setCalibrationOffset(offset: Int) {
        queueEvent {
            renderer.setCalibrationOffset(offset)
        }
    }

    fun setDeviceRotation(degrees: Int) {
        queueEvent {
            renderer.setDeviceRotation(degrees)
        }
    }

    fun setLensFacing(facing: Int) {
        queueEvent {
            renderer.setLensFacing(facing)
        }
    }

    fun setFocusPoint(point: PointF?) {
        renderer.focusPoint = point
    }

    fun setMeteringEnabled(enabled: Boolean) {
        renderer.meteringEnabled = enabled
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
     * 设置色彩配方是否启用
     */
    fun setColorRecipeEnabled(enabled: Boolean) {
        renderer.colorRecipeEnabled = enabled
        requestRender()
    }

    /**
     * 设置色彩配方参数
     */
    fun setColorRecipeParams(
        exposure: Float,
        contrast: Float,
        saturation: Float,
        temperature: Float,
        tint: Float,
        fade: Float,
        vibrance: Float,
        highlights: Float,
        shadows: Float,
        filmGrain: Float,
        vignette: Float,
        bleachBypass: Float,
        lutIntensity: Float,
    ) {
        renderer.exposure = exposure
        renderer.contrast = contrast
        renderer.saturation = saturation
        renderer.temperature = temperature
        renderer.tint = tint
        renderer.fade = fade
        renderer.vibrance = vibrance
        renderer.highlights = highlights
        renderer.shadows = shadows
        renderer.filmGrain = filmGrain
        renderer.vignette = vignette
        renderer.bleachBypass = bleachBypass
        renderer.lutIntensity = lutIntensity
        requestRender()
    }

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

    /**
     * 捕获预览帧
     * @param callback 捕获完成后的回调，在主线程调用
     */
    fun capturePreviewFrame(callback: (Bitmap) -> Unit) {
        renderer.onPreviewFrameCaptured = { bitmap ->
            // 在主线程回调
            post {
                callback(bitmap)
            }
        }
        queueEvent {
            renderer.capturePreviewFrame()
            requestRender()
        }
    }

    /**
     * 设置 Live Photo 录制器
     */
    fun setLivePhotoRecorder(recorder: LivePhotoRecorder?) {
        renderer.livePhotoRecorder = recorder
    }

    override fun onPause() {
        super.onPause()
        PLog.d(TAG, "onPause")
    }

    override fun onResume() {
        super.onResume()
        PLog.d(TAG, "onResume")
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        PLog.d(TAG, "onDetachedFromWindow")

        // 通知 Surface 销毁
        onSurfaceDestroyed?.invoke()

        // 释放 Surface
        currentSurface?.release()
        currentSurface = null

        // 在 GL 线程中释放资源
        queueEvent {
            renderer.release()
        }
    }
}
