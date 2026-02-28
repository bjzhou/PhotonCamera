package com.hinnka.mycamera.ui.camera

import android.graphics.SurfaceTexture
import android.util.Size
import androidx.compose.foundation.background
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
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutRenderer
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.ui.components.FocusIndicator
import com.hinnka.mycamera.utils.OrientationObserver

/**
 * 相机预览组件 - OpenGL ES 版本（Camera2 适配）
 *
 * 使用 GLSurfaceView 渲染相机预览，支持实时 3D LUT 滤镜和色彩配方
 */
@Composable
fun CameraPreviewGL(
    aspectRatio: AspectRatio,
    previewSize: Size,
    sensorOrientation: Int,
    lensFacing: Int,
    calibrationOffset: Int,
    currentLut: LutConfig?,
    colorRecipeParams: ColorRecipeParams,
    focusPoint: Pair<Float, Float>?,
    isFocusing: Boolean,
    focusSuccess: Boolean?,
    onSurfaceTextureReady: (SurfaceTexture) -> Unit,
    onSurfaceDestroyed: () -> Unit,
    onTap: (Float, Float, Int, Int) -> Unit,
    onHistogramUpdated: ((IntArray) -> Unit)? = null,
    onMeteringUpdated: ((Double, Double) -> Unit)? = null,
    livePhotoRecorder: LivePhotoRecorder? = null,
    onGLSurfaceViewReady: ((CameraGLSurfaceView) -> Unit)? = null,
    modifier: Modifier = Modifier
) {
    val rotationDegrees = OrientationObserver.rotationDegrees
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
        val targetRatio = aspectRatio.getValue(false)

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
                    detectTapGestures { offset ->
                        onTap(offset.x, offset.y, viewWidth, viewHeight)
                    }
                }
        ) {
            // GLSurfaceView 用于相机预览
            AndroidView(
                factory = { ctx ->
                    CameraGLSurfaceView(ctx).apply {
                        // 通知 GLSurfaceView 已准备好
                        onGLSurfaceViewReady?.invoke(this)
                    }
                },
                update = { glSurfaceView ->
                    // 更新闭包捕获的状态
                    glSurfaceView.onSurfaceReady = { _ ->
                        // SurfaceTexture 已经准备好，可以开始预览
                        glSurfaceView.getSurfaceTexture()?.let { surfaceTexture ->
                            glSurfaceView.setPreviewSize(previewSize.width, previewSize.height)
                            // 取消从这里回调，统一在 update 中处理
                        }
                    }

                    glSurfaceView.onSurfaceDestroyed = {
                        surfaceTextureNotified = false
                        onSurfaceDestroyed()
                    }

                    glSurfaceView.onHistogramUpdated = { onHistogramUpdated?.invoke(it) }
                    glSurfaceView.onMeteringUpdated = { w, l -> onMeteringUpdated?.invoke(w, l) }

                    viewWidth = glSurfaceView.width
                    viewHeight = glSurfaceView.height
                    glSurfaceView.setSensorOrientation(sensorOrientation)
                    glSurfaceView.setLensFacing(lensFacing)
                    glSurfaceView.setDeviceRotation(rotationDegrees.toInt())
                    glSurfaceView.setCalibrationOffset(calibrationOffset)

                    // 统一控制逻辑：
                    // 当 SurfaceTexture 准备好，且尺寸已准备好，我们通知外部。
                    // 但是如果 previewSize.width 或 previewSize.height 发了改变（被代理到了这里），
                    // 我们只需更新 glSurfaceView 的参数，不需要重新打开相机，否则会打断正在开启的相机。
                    // 因此，只要 surfaceTextureNotified 为 true，就不会再触发 onSurfaceTextureReady。
                    // 如果需要重新打开相机，由外部自己掌控，这里只负责 GL 的同步。
                    if (viewWidth > 0 && viewHeight > 0) {
                        glSurfaceView.getSurfaceTexture()?.let { surfaceTexture ->
                            glSurfaceView.setPreviewSize(previewSize.width, previewSize.height)
                            if (!surfaceTextureNotified) {
                                surfaceTextureNotified = true
                                onSurfaceTextureReady(surfaceTexture)
                            }
                        }
                    }
                    val colorRecipeEnabled = !colorRecipeParams.isDefault()
                    // 更新 LUT 设置
                    if (currentLut != null) {
                        glSurfaceView.setLut(currentLut)
                        glSurfaceView.setLutEnabled(true)
                        glSurfaceView.setColorRecipeEnabled(colorRecipeEnabled)
                        glSurfaceView.setColorRecipeParams(
                            exposure = colorRecipeParams.exposure,
                            contrast = colorRecipeParams.contrast,
                            saturation = colorRecipeParams.saturation,
                            temperature = colorRecipeParams.temperature,
                            tint = colorRecipeParams.tint,
                            fade = colorRecipeParams.fade,
                            vibrance = colorRecipeParams.color,
                            highlights = colorRecipeParams.highlights,
                            shadows = colorRecipeParams.shadows,
                            filmGrain = colorRecipeParams.filmGrain,
                            vignette = colorRecipeParams.vignette,
                            bleachBypass = colorRecipeParams.bleachBypass,
                            lutIntensity = colorRecipeParams.lutIntensity,
                        )
                    } else {
                        glSurfaceView.setLutEnabled(false)
                        glSurfaceView.setColorRecipeEnabled(false)
                    }

                    glSurfaceView.setFocusPoint(focusPoint?.let {
                        android.graphics.PointF(
                            it.first / viewWidth,
                            it.second / viewHeight
                        )
                    })
                    glSurfaceView.setLivePhotoRecorder(livePhotoRecorder)
                },
                modifier = Modifier.fillMaxSize()
            )

            // 对焦指示器
            FocusIndicator(
                position = focusPoint,
                isFocusing = isFocusing,
                focusSuccess = focusSuccess,
                modifier = Modifier.fillMaxSize()
            )
        }
    }
}
