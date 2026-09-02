package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.graphics.Bitmap
import android.graphics.PointF
import android.graphics.SurfaceTexture
import android.opengl.GLSurfaceView
import android.util.AttributeSet
import android.view.Surface
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutRenderer
import com.hinnka.mycamera.preview.EyeFocusPreviewFrame
import com.hinnka.mycamera.preview.EyeFocusProcessingTiming
import com.hinnka.mycamera.lut.PreviewCaptureSource
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.stabilization.DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
import com.hinnka.mycamera.stabilization.RealtimeStabilizationCoordinator
import com.hinnka.mycamera.stabilization.StabilizationUseCase
import com.hinnka.mycamera.stabilization.normalizeStabilizationLookahead
import com.hinnka.mycamera.stabilization.normalizeStabilizationStrength
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.video.VideoLogProfile

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

    private val renderer: LutRenderer = LutRenderer(context.applicationContext)
    private var currentStabilizationCoordinator: RealtimeStabilizationCoordinator? = null
    private var currentPreviewStabilizationUseCase: StabilizationUseCase? = null
    private var currentPreviewStabilizationStrength = 0f

    var onHistogramUpdated: ((IntArray) -> Unit)? = null
    var onMeteringUpdated: ((Double, Double) -> Unit)? = null
    var onHighlightPointUpdated: ((Float, Float) -> Unit)? = null
    var onEyeFocusInputAvailable: ((EyeFocusPreviewFrame) -> Unit)? = null
        set(value) {
            field = value
            renderer.onEyeFocusInputAvailable = if (value == null) {
                renderer.isEyeFocusBusy = false
                null
            } else {
                { frame ->
                    post {
                        field?.invoke(frame) ?: frame.bitmap.recycle()
                    }
                }
            }
        }

    var onSurfaceReady: ((Surface) -> Unit)? = null
    var onSurfaceDestroyed: (() -> Unit)? = null
    var onFirstPreviewFrame: (() -> Unit)? = null
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

        renderer.onHighlightPointUpdated = { hx, hy ->
            onHighlightPointUpdated?.invoke(hx, hy)
        }

        renderer.onFirstFrameRendered = {
            post { onFirstPreviewFrame?.invoke() }
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

    fun setStabilizationInputSize(width: Int, height: Int) {
        queueEvent {
            renderer.setStabilizationInputSize(width, height)
        }
    }

    fun setCaptureSize(width: Int, height: Int) {
        queueEvent {
            renderer.setCaptureSize(width, height)
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

    fun setCaptureAspectRatio(aspectRatio: Float) {
        queueEvent {
            renderer.setCaptureAspectRatio(aspectRatio)
        }
    }

    fun setStabilizationCoordinator(coordinator: RealtimeStabilizationCoordinator?) {
        if (currentStabilizationCoordinator === coordinator) return
        currentStabilizationCoordinator = coordinator
        queueEvent {
            renderer.setStabilizationCoordinator(coordinator)
            requestRender()
        }
    }

    private var currentPreviewStabilizationLookahead = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD

    fun setPreviewStabilization(
        useCase: StabilizationUseCase?,
        strength: Float,
        lookaheadFrames: Int = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD,
    ) {
        val normalizedStrength = normalizeStabilizationStrength(strength)
        val normalizedLookahead = normalizeStabilizationLookahead(lookaheadFrames)
        if (currentPreviewStabilizationUseCase == useCase &&
            kotlin.math.abs(currentPreviewStabilizationStrength - normalizedStrength) <= 0.0001f &&
            currentPreviewStabilizationLookahead == normalizedLookahead
        ) {
            return
        }
        currentPreviewStabilizationUseCase = useCase
        currentPreviewStabilizationStrength = normalizedStrength
        currentPreviewStabilizationLookahead = normalizedLookahead
        queueEvent {
            renderer.setPreviewStabilization(useCase, normalizedStrength, normalizedLookahead)
            requestRender()
        }
    }

    fun setFocusPoint(point: PointF?) {
        renderer.focusPoint = point
    }

    fun setMeteringMode(mode: MeteringMode) {
        renderer.meteringMode = mode
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

    fun setBaselineLut(lutConfig: LutConfig?) {
        queueEvent {
            renderer.setBaselineLut(lutConfig)
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

    fun setBaselineLutEnabled(enabled: Boolean) {
        renderer.baselineLutEnabled = enabled
        requestRender()
    }

    fun setAutoFocus(auto: Boolean) {
        renderer.isAutoFocus = auto
        requestRender()
    }

    fun setFocusPeakingEnabled(enabled: Boolean) {
        renderer.focusPeakingEnabled = enabled
        requestRender()
    }

    fun setEyeFocusBusy(busy: Boolean) {
        renderer.isEyeFocusBusy = busy
        requestRender()
    }

    fun updateEyeFocusTiming(timing: EyeFocusProcessingTiming) {
        renderer.updateEyeFocusTiming(timing)
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

    fun setBaselineColorRecipeEnabled(enabled: Boolean) {
        renderer.baselineColorRecipeEnabled = enabled
        requestRender()
    }

    /**
     * 设置参数
     */
    fun setParams(params: ColorRecipeParams) {
        val effectiveParams = ColorPaletteMapper.mergeIntoEffectiveParams(params)

        renderer.setRecipeParams(effectiveParams)
        requestRender()
    }

    fun setBaselineParams(params: ColorRecipeParams) {
        val effectiveParams = ColorPaletteMapper.mergeIntoEffectiveParams(params)
        renderer.updateBaselineRecipeParams(effectiveParams)
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

    fun getRenderSurface(): Surface? = currentSurface

    fun setSourceCrop(crop: PhantomPipCrop) {
        queueEvent {
            renderer.setSourceCrop(crop)
            requestRender()
        }
    }

    /**
     * 捕获预览帧
     * @param callback 捕获完成后的回调，在主线程调用
     */
    fun capturePreviewFrame(callback: (Bitmap) -> Unit) {
        capturePreviewFrameInternal(
            maxLongEdge = null,
            source = PreviewCaptureSource.FinalDisplay,
            requestRenderImmediately = true
        ) { bitmap ->
            bitmap?.let(callback)
        }
    }

    fun capturePreviewFrame(maxLongEdge: Int, callback: (Bitmap) -> Unit) {
        capturePreviewFrameInternal(
            maxLongEdge = maxLongEdge,
            source = PreviewCaptureSource.FinalDisplay,
            requestRenderImmediately = true
        ) { bitmap ->
            bitmap?.let(callback)
        }
    }

    fun captureNextPreviewFrame(maxLongEdge: Int, callback: (Bitmap) -> Unit) {
        capturePreviewFrameInternal(
            maxLongEdge = maxLongEdge,
            source = PreviewCaptureSource.FinalDisplay,
            requestRenderImmediately = false
        ) { bitmap ->
            bitmap?.let(callback)
        }
    }

    fun captureOriginalPreviewFrame(callback: (Bitmap?) -> Unit) {
        capturePreviewFrameInternal(
            maxLongEdge = null,
            source = PreviewCaptureSource.Original,
            requestRenderImmediately = true,
            callback = callback
        )
    }

    private fun capturePreviewFrameInternal(
        maxLongEdge: Int?,
        source: PreviewCaptureSource,
        requestRenderImmediately: Boolean,
        callback: (Bitmap?) -> Unit
    ) {
        queueEvent {
            val onCaptured: (Bitmap) -> Unit = { bitmap ->
                // 在主线程回调
                post {
                    callback(bitmap)
                }
            }
            if (maxLongEdge != null) {
                renderer.capturePreviewFrame(maxLongEdge, source, onCaptured)
            } else {
                renderer.capturePreviewFrame(source = source, onCaptured = onCaptured)
            }
            if (requestRenderImmediately) {
                requestRender()
            }
        }
    }

    /**
     * 设置 Live Photo 录制器
     */
    fun setLivePhotoRecorder(recorder: LivePhotoRecorder?) {
        renderer.livePhotoRecorder = recorder
    }

    fun setVideoLogProfile(profile: VideoLogProfile) {
        renderer.videoLogProfile = profile
        requestRender()
    }

    override fun onPause() {
        renderer.setRenderingPaused(true)
        super.onPause()
        PLog.d(TAG, "onPause")
    }

    override fun onResume() {
        renderer.setRenderingPaused(false)
        super.onResume()
        PLog.d(TAG, "onResume")
    }

    fun restoreRenderStateAfterResume() {
        queueEvent {
            renderer.restoreLutTexturesAfterResume()
            requestRender()
        }
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        PLog.d(TAG, "onDetachedFromWindow")

        // 通知 Surface 销毁
        onSurfaceDestroyed?.invoke()
        onEyeFocusInputAvailable = null

        // 释放 Surface
        currentSurface?.release()
        currentSurface = null

        // 在 GL 线程中释放资源
        queueEvent {
            renderer.release()
        }
    }
}
