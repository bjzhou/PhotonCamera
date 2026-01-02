package com.hinnka.mycamera.ui.camera

import android.graphics.SurfaceTexture
import android.util.Size
import android.view.Surface
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.viewinterop.AndroidView
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.ui.components.FocusIndicator

/**
 * 相机预览组件 - OpenGL ES 版本（Camera2 适配）
 * 
 * 使用 GLSurfaceView 渲染相机预览，支持实时 3D LUT 滤镜
 */
@Composable
fun CameraPreviewGL(
    aspectRatio: AspectRatio,
    previewSize: Size,
    currentLut: LutConfig?,
    lutIntensity: Float,
    focusPoint: Pair<Float, Float>?,
    isFocusing: Boolean,
    focusSuccess: Boolean?,
    onSurfaceTextureReady: (SurfaceTexture) -> Unit,
    onSurfaceDestroyed: () -> Unit,
    onTap: (Float, Float, Int, Int) -> Unit,
    modifier: Modifier = Modifier
) {
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
                        this.onSurfaceReady = { _ ->

                            // SurfaceTexture 已经准备好，可以开始预览
                            getSurfaceTexture()?.let { surfaceTexture ->
                                setPreviewSize(previewSize.width, previewSize.height)
                                if (!surfaceTextureNotified) {
                                    surfaceTextureNotified = true
                                    onSurfaceTextureReady(surfaceTexture)
                                }
                            }
                        }
                        
                        this.onSurfaceDestroyed = {
                            surfaceTextureNotified = false
                            onSurfaceDestroyed()
                        }
                    }
                },
                update = { glSurfaceView ->
                    viewWidth = glSurfaceView.width
                    viewHeight = glSurfaceView.height
                    
                    // 如果尺寸有变化且 SurfaceTexture 已准备好，重新通知
                    if (viewWidth > 0 && viewHeight > 0 && !surfaceTextureNotified) {
                        glSurfaceView.getSurfaceTexture()?.let { surfaceTexture ->
                            glSurfaceView.setPreviewSize(previewSize.width, previewSize.height)
                            surfaceTextureNotified = true
                            onSurfaceTextureReady(surfaceTexture)
                        }
                    }
                    
                    // 更新 LUT 设置
                    if (currentLut != null) {
                        glSurfaceView.setLut(currentLut)
                        glSurfaceView.setLutEnabled(true)
                    } else {
                        glSurfaceView.setLutEnabled(false)
                    }
                    glSurfaceView.setLutIntensity(lutIntensity)
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
