package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.graphics.Bitmap
import android.graphics.PointF
import android.util.AttributeSet
import android.view.Gravity
import android.view.Surface
import android.widget.FrameLayout
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.ui.camera.CameraGLSurfaceView
import com.hinnka.mycamera.utils.PLog

class MgcParallelPreviewHostView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs) {

    companion object {
        private const val TAG = "MgcParallelPreviewHostView"
    }

    private val glView = CameraGLSurfaceView(context)
    private var surfaceListener: MgcParallelPreviewSurfaceListener? = null
    private var destroyListener: (() -> Unit)? = null

    init {
        addView(
            glView,
            LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT, Gravity.CENTER)
        )
        glView.onSurfaceReady = { surface ->
            PLog.d(TAG, "host surface ready=$surface")
            surfaceListener?.onSurfaceReady(surface)
        }
        glView.onSurfaceDestroyed = {
            PLog.d(TAG, "host surface destroyed")
            destroyListener?.invoke()
        }
    }

    fun setSurfaceListener(listener: MgcParallelPreviewSurfaceListener?) {
        surfaceListener = listener
        glView.getRenderSurface()?.let { listener?.onSurfaceReady(it) }
    }

    fun setSurfaceDestroyedListener(listener: (() -> Unit)?) {
        destroyListener = listener
    }

    fun getRenderSurface(): Surface? = glView.getRenderSurface()

    fun getCameraGlSurfaceView(): CameraGLSurfaceView = glView

    fun showRenderer() {
        PLog.d(TAG, "showRenderer ignored for 1x1 parallel sampler")
    }

    fun onHostResume() = glView.onResume()

    fun onHostPause() = glView.onPause()

    fun setPreviewSize(width: Int, height: Int) = glView.setPreviewSize(width, height)

    fun setSensorOrientation(orientation: Int) = glView.setSensorOrientation(orientation)

    fun setCalibrationOffset(offset: Int) = glView.setCalibrationOffset(offset)

    fun setDeviceRotation(degrees: Int) = glView.setDeviceRotation(degrees)

    fun setLensFacing(facing: Int) = glView.setLensFacing(facing)

    fun setFocusPoint(point: PointF?) = glView.setFocusPoint(point)

    fun setSourceCrop(crop: PhantomPipCrop) = glView.setSourceCrop(crop)

    fun setLut(lutConfig: LutConfig?) = glView.setLut(lutConfig)

    fun applyDefaultVerificationLut() = glView.setLut(MgcParallelPreviewHook.getDefaultVerificationLut())

    fun setLutEnabled(enabled: Boolean) = glView.setLutEnabled(enabled)

    fun setColorRecipeEnabled(enabled: Boolean) = glView.setColorRecipeEnabled(enabled)

    fun setParams(params: ColorRecipeParams, aperture: Float) = glView.setParams(params, aperture)

    fun requestRenderFrame() = glView.requestRenderFrame()

    fun capturePreviewFrame(callback: (Bitmap) -> Unit) = glView.capturePreviewFrame(callback)
}
