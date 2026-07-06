package com.hinnka.mycamera.ui.camera

import android.graphics.SurfaceTexture
import android.util.Size
import androidx.compose.foundation.background
import com.hinnka.mycamera.utils.PLog
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.camera.FocusPointSource
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.ui.components.FocusIndicator
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoRecorder

/**
 * 相机预览组件 - OpenGL ES 版本（Camera2 适配）
 *
 * 使用 GLSurfaceView 渲染相机预览，支持实时 3D LUT 滤镜和色彩配方
 */
@Composable
fun CameraPreviewGL(
    aspectRatio: Float,
    previewSize: Size,
    captureSize: Size,
    captureMode: CaptureMode,
    sensorOrientation: Int,
    lensFacing: Int,
    calibrationOffset: Int,
    baselineLut: LutConfig?,
    currentLut: LutConfig?,
    baselineColorRecipeParams: ColorRecipeParams,
    colorRecipeParams: ColorRecipeParams,
    focusPoint: Pair<Float, Float>?,
    focusPointSource: FocusPointSource = FocusPointSource.MANUAL,
    isFocusLocked: Boolean = false,
    isFocusing: Boolean,
    focusSuccess: Boolean?,
    meteringMode: MeteringMode = MeteringMode.SYSTEM_DEFAULT,
    onSurfaceTextureReady: (SurfaceTexture) -> Unit,
    onSurfaceDestroyed: (SurfaceTexture?) -> Unit,
    onTap: (Float, Float, Int, Int) -> Unit,
    onLongPress: (Float, Float, Int, Int) -> Unit,
    onHistogramUpdated: ((IntArray) -> Unit)? = null,
    onMeteringUpdated: ((Double, Double) -> Unit)? = null,
    onHighlightPointUpdated: ((Float, Float) -> Unit)? = null,
    onDepthInputAvailable: ((android.graphics.Bitmap) -> Unit)? = null,
    onAiFocusInputAvailable: ((android.graphics.Bitmap) -> Unit)? = null,
    livePhotoRecorder: LivePhotoRecorder? = null,
    videoRecorder: VideoRecorder? = null,
    videoLogProfile: VideoLogProfile = VideoLogProfile.OFF,
    isHlgInput: Boolean = false,
    naturalLightEnabled: Boolean = false,
    rawExposureCompensation: Float = 0f,
    rawBlackPointCorrection: Float = 0f,
    rawWhitePointCorrection: Float = 0f,
    rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
    rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
    isAiFocusBusy: Boolean = false,
    onGLSurfaceViewReady: ((CameraGLSurfaceView) -> Unit)? = null,
    aperture: Float = 0f,
    isAutoFocus: Boolean = true,
    focusPeakingEnabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    val rotationDegrees = OrientationObserver.rotationDegrees
    val lifecycleOwner = LocalLifecycleOwner.current
    var glSurfaceViewRef by remember { mutableStateOf<CameraGLSurfaceView?>(null) }
    var resumeGeneration by remember { mutableIntStateOf(0) }
    val currentOnTap by rememberUpdatedState(onTap)
    val currentOnLongPress by rememberUpdatedState(onLongPress)

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_PAUSE -> glSurfaceViewRef?.onPause()
                Lifecycle.Event.ON_RESUME -> {
                    glSurfaceViewRef?.onResume()
                    glSurfaceViewRef?.restoreRenderStateAfterResume()
                    resumeGeneration++
                }
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    // 计算预览区域尺寸，保持目标比例
    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black),
        contentAlignment = Alignment.Center
    ) {
        val containerWidth = constraints.maxWidth.toFloat()
        val containerHeight = constraints.maxHeight.toFloat()

        // 目标显示比例
        val targetRatio = aspectRatio

        // 计算裁切后的显示区域大小
        val displayWidth: Float
        val displayHeight: Float

        if (containerWidth / containerHeight > targetRatio) {
            // 容器更宽，以高度为基准
            displayHeight = containerHeight
            displayWidth = displayHeight * targetRatio
        } else {
            // 容器更高，以宽度为基准
            displayWidth = containerWidth
            displayHeight = displayWidth / targetRatio
        }

        var viewWidth by remember { mutableIntStateOf(0) }
        var viewHeight by remember { mutableIntStateOf(0) }

        // 标记是否已经通知过 SurfaceTexture
        var surfaceTextureNotified by remember { mutableStateOf(false) }
        var notifiedPreviewSize by remember { mutableStateOf<Size?>(null) }
        var notifiedResumeGeneration by remember { mutableIntStateOf(-1) }
        var notifiedSurfaceTexture by remember { mutableStateOf<SurfaceTexture?>(null) }
        // 标记 Surface 是否已经准备好
        var surfaceAvailable by remember { mutableStateOf(false) }

        Box(
            modifier = Modifier
                .width(with(LocalDensity.current) { displayWidth.toDp() })
                .height(with(LocalDensity.current) { displayHeight.toDp() })
                .clipToBounds()
                .onSizeChanged { size ->
                    viewWidth = size.width
                    viewHeight = size.height
                }
                .pointerInput(Unit) {
                    detectTapGestures(
                        onLongPress = { offset ->
                            currentOnLongPress(offset.x, offset.y, viewWidth, viewHeight)
                        },
                        onTap = { offset ->
                            currentOnTap(offset.x, offset.y, viewWidth, viewHeight)
                        }
                    )
                }
        ) {
            // GLSurfaceView 用于相机预览
            key(previewSize.width, previewSize.height, captureMode) {
                AndroidView(
                    factory = { ctx ->
                        CameraGLSurfaceView(ctx).apply {
                            glSurfaceViewRef = this
                            // 通知 GLSurfaceView 已准备好
                            onGLSurfaceViewReady?.invoke(this)
                        }
                    },
                    update = { glSurfaceView ->
                        // 更新闭包捕获的状态
                        glSurfaceView.onSurfaceReady = { _ ->
                            if (glSurfaceViewRef !== glSurfaceView) {
                                PLog.d("CameraPreviewGL", "Ignoring stale onSurfaceReady")
                            } else {
                                PLog.d("CameraPreviewGL", "onSurfaceReady called")
                                // SurfaceTexture 已经准备好，可以开始预览
                                surfaceAvailable = true
                                glSurfaceView.getSurfaceTexture()?.let { surfaceTexture ->
                                    glSurfaceView.setPreviewSize(previewSize.width, previewSize.height)
                                    PLog.d("CameraPreviewGL", "onSurfaceReady: notifiedST=$notifiedSurfaceTexture, newST=$surfaceTexture")
                                    // If the SurfaceTexture changed (e.g. Surface recreated due to layout bounds change), force notify
                                    if (notifiedSurfaceTexture != null && notifiedSurfaceTexture != surfaceTexture) {
                                        PLog.d("CameraPreviewGL", "onSurfaceReady: Forcing surfaceTextureNotified = false")
                                        surfaceTextureNotified = false
                                    }
                                    // 取消从这里回调，统一在 update 中处理
                                }
                            }
                        }

                        glSurfaceView.onSurfaceDestroyed = {
                            val destroyedSurfaceTexture = glSurfaceView.getSurfaceTexture()
                            if (glSurfaceViewRef === glSurfaceView) {
                                surfaceAvailable = false
                                surfaceTextureNotified = false
                                notifiedPreviewSize = null
                                notifiedResumeGeneration = -1
                                notifiedSurfaceTexture = null
                                glSurfaceViewRef = null
                                onSurfaceDestroyed(destroyedSurfaceTexture)
                            } else if (destroyedSurfaceTexture != null) {
                                onSurfaceDestroyed(destroyedSurfaceTexture)
                            }
                        }

                        glSurfaceView.onHistogramUpdated = { onHistogramUpdated?.invoke(it) }
                        glSurfaceView.onMeteringUpdated = { w, l -> onMeteringUpdated?.invoke(w, l) }
                        glSurfaceView.onHighlightPointUpdated = { hx, hy -> onHighlightPointUpdated?.invoke(hx, hy) }
                        glSurfaceView.onDepthInputAvailable = { onDepthInputAvailable?.invoke(it) }
                        glSurfaceView.onAiFocusInputAvailable = { onAiFocusInputAvailable?.invoke(it) }

                        viewWidth = glSurfaceView.width
                        viewHeight = glSurfaceView.height
                        glSurfaceView.setSensorOrientation(sensorOrientation)
                        glSurfaceView.setLensFacing(lensFacing)
                        glSurfaceView.setDeviceRotation(rotationDegrees.toInt())
                        glSurfaceView.setCalibrationOffset(calibrationOffset)
                        glSurfaceView.setCaptureAspectRatio(aspectRatio)

                        // 当 SurfaceTexture 准备好且尺寸已就绪时，通知外部打开相机。
                        // 对 previewSize 变化使用 key 重建 GLSurfaceView，避免旧 SurfaceTexture
                        // 的残留帧在新尺寸矩阵下继续显示几帧。
                        
                        // 强制在所有的条件分支之外读取这几个 State，让 Compose 确保能监听到变化！
                        val currentSurfaceNotified = surfaceTextureNotified
                        val currentNotifiedST = notifiedSurfaceTexture
                        val currentNotifiedResumeGen = notifiedResumeGeneration
                        val currentNotifiedPreviewSize = notifiedPreviewSize
                        
                        if (viewWidth > 0 && viewHeight > 0 && surfaceAvailable) {
                            glSurfaceView.getSurfaceTexture()?.let { surfaceTexture ->
                                glSurfaceView.setPreviewSize(previewSize.width, previewSize.height)
                                glSurfaceView.setCaptureSize(captureSize.width, captureSize.height)
                                val shouldNotifySurfaceTexture =
                                    !currentSurfaceNotified ||
                                        currentNotifiedPreviewSize != previewSize ||
                                        currentNotifiedResumeGen != resumeGeneration ||
                                        currentNotifiedST != surfaceTexture
                                if (shouldNotifySurfaceTexture) {
                                    PLog.d("CameraPreviewGL", "shouldNotifySurfaceTexture is true, calling onSurfaceTextureReady")
                                    surfaceTextureNotified = true
                                    notifiedPreviewSize = previewSize
                                    notifiedResumeGeneration = resumeGeneration
                                    notifiedSurfaceTexture = surfaceTexture
                                    onSurfaceTextureReady(surfaceTexture)
                                }
                            }
                        }
                        val colorRecipeEnabled = !colorRecipeParams.isDefault()
                        val baselineColorRecipeEnabled = !baselineColorRecipeParams.isDefault()
                        // 更新 LUT 设置
                        glSurfaceView.setBaselineLut(baselineLut)
                        glSurfaceView.setBaselineLutEnabled(baselineLut != null)
                        glSurfaceView.setLut(currentLut)
                        glSurfaceView.setLutEnabled(currentLut != null)
                        glSurfaceView.setBaselineColorRecipeEnabled(baselineColorRecipeEnabled)
                        glSurfaceView.setColorRecipeEnabled(colorRecipeEnabled)

                        glSurfaceView.setBaselineParams(baselineColorRecipeParams)
                        glSurfaceView.setParams(colorRecipeParams, aperture)

                        glSurfaceView.setFocusPoint(focusPoint?.let {
                            android.graphics.PointF(
                                it.first,
                                it.second
                            )
                        })
                        glSurfaceView.setMeteringMode(meteringMode)
                        glSurfaceView.setLivePhotoRecorder(livePhotoRecorder)
                        glSurfaceView.setVideoRecorder(videoRecorder)
                        glSurfaceView.setVideoLogProfile(videoLogProfile)
                        glSurfaceView.setIsHlgInput(isHlgInput)
                        glSurfaceView.setRawPreviewSettings(
                            enabled = naturalLightEnabled,
                            exposureCompensation = rawExposureCompensation,
                            blackPointCorrection = rawBlackPointCorrection,
                            whitePointCorrection = rawWhitePointCorrection,
                            renderingEngine = rawRenderingEngine,
                            toneMappingParameters = rawToneMappingParameters
                        )
                        glSurfaceView.setAutoFocus(isAutoFocus)
                        glSurfaceView.setFocusPeakingEnabled(focusPeakingEnabled)
                        glSurfaceView.setAiFocusBusy(isAiFocusBusy)
                    },
                    modifier = Modifier.fillMaxSize()
                )
            }

            // 对焦指示器
            FocusIndicator(
                position = focusPoint,
                source = focusPointSource,
                isFocusLocked = isFocusLocked,
                isFocusing = isFocusing,
                focusSuccess = focusSuccess,
                modifier = Modifier.fillMaxSize()
            )
        }
    }
}
