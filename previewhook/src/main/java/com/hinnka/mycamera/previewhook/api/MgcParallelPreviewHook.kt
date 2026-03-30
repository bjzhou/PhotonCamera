package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.view.SurfaceView
import android.view.View
import android.view.ViewGroup
import android.view.Gravity
import android.widget.FrameLayout
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutCurve
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.previewhook.generated.DefaultVerificationLutData
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.raw.ColorSpace as RawColorSpace
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer
import java.util.Base64

object MgcParallelPreviewHook {
    private const val TAG = "MgcParallelPreviewHook"

    @Volatile
    private var defaultVerificationLut: LutConfig? = null
    @Volatile
    private var activePreviewSurface: android.view.Surface? = null
    @Volatile
    private var activeHostView: MgcParallelPreviewHostView? = null
    @Volatile
    private var activeAnchorView: View? = null

    fun createHostView(context: Context): MgcParallelPreviewHostView {
        return MgcParallelPreviewHostView(context)
    }

    @JvmStatic
    fun installIntoContainer(container: FrameLayout, anchorView: View): MgcParallelPreviewHostView {
        val existing = activeHostView
        if (existing != null && existing.parent === container) {
            return existing
        }

        (existing?.parent as? ViewGroup)?.removeView(existing)

        val host = MgcParallelPreviewHostView(container.context)
        host.visibility = View.VISIBLE
        host.alpha = 1f
        host.setLutEnabled(true)
        host.applyDefaultVerificationLut()
        host.setSurfaceListener(MgcParallelPreviewSurfaceListener { surface ->
            activePreviewSurface = surface
            requestAnchorRebind()
            PLog.d(TAG, "Parallel hook host ready surface=$surface")
        })
        host.setSurfaceDestroyedListener {
            if (activePreviewSurface === host.getRenderSurface()) {
                activePreviewSurface = null
            }
            PLog.d(TAG, "Parallel hook host destroyed")
        }
        host.getCameraGlSurfaceView().onFirstPreviewFrame = {
            host.showRenderer()
            PLog.d(TAG, "Parallel hook host received first frame")
        }

        val hostLp = FrameLayout.LayoutParams(
            1,
            1,
            Gravity.TOP or Gravity.START
        )
        host.layoutParams = hostLp
        container.addView(host)
        host.onHostResume()
        activeHostView = host
        activeAnchorView = anchorView
        PLog.d(TAG, "Installed parallel host over anchor=${anchorView.javaClass.simpleName}")
        return host
    }

    @JvmStatic
    fun getActivePreviewSurface(): android.view.Surface? = activePreviewSurface

    @JvmStatic
    fun isParallelHostReady(): Boolean = activePreviewSurface != null

    private fun requestAnchorRebind() {
        val anchor = activeAnchorView as? SurfaceView ?: return
        anchor.post {
            val frame = anchor.holder.surfaceFrame
            val width = when {
                frame != null && frame.width() > 0 -> frame.width()
                anchor.width > 0 -> anchor.width
                else -> return@post
            }
            val height = when {
                frame != null && frame.height() > 0 -> frame.height()
                anchor.height > 0 -> anchor.height
                else -> return@post
            }
            anchor.holder.setFixedSize(width, height)
            PLog.d(TAG, "Requested parallel anchor rebind ${width}x${height}")
        }
    }

    fun getDefaultVerificationLut(): LutConfig {
        return defaultVerificationLut ?: synchronized(this) {
            defaultVerificationLut ?: buildDefaultVerificationLut().also { defaultVerificationLut = it }
        }
    }

    fun buildRgb8Lut(
        size: Int,
        rgb: ByteArray,
        title: String = "",
        curveOrdinal: Int = LutCurve.SRGB.ordinal,
        colorSpaceOrdinal: Int = RawColorSpace.SRGB.ordinal,
    ): LutConfig {
        return LutConfig(
            size = size,
            byteBuffer = ByteBuffer.allocateDirect(rgb.size)
                .order(ByteOrder.nativeOrder())
                .put(rgb)
                .apply { position(0) },
            title = title,
            configDataType = LutConfig.CONFIG_DATA_TYPE_UINT8,
            curve = LutCurve.entries.getOrElse(curveOrdinal) { LutCurve.SRGB },
            colorSpace = RawColorSpace.entries.getOrElse(colorSpaceOrdinal) { RawColorSpace.SRGB },
        )
    }

    fun buildRgb16Lut(
        size: Int,
        rgb: ByteArray,
        title: String = "",
        curveOrdinal: Int = LutCurve.SRGB.ordinal,
        colorSpaceOrdinal: Int = RawColorSpace.SRGB.ordinal,
    ): LutConfig {
        return LutConfig(
            size = size,
            byteBuffer = ByteBuffer.allocateDirect(rgb.size)
                .order(ByteOrder.nativeOrder())
                .put(rgb)
                .apply { position(0) },
            title = title,
            configDataType = LutConfig.CONFIG_DATA_TYPE_UINT16,
            curve = LutCurve.entries.getOrElse(curveOrdinal) { LutCurve.SRGB },
            colorSpace = RawColorSpace.entries.getOrElse(colorSpaceOrdinal) { RawColorSpace.SRGB },
        )
    }

    suspend fun renderOfflineArgb64(
        argbData: ShortBuffer,
        width: Int,
        height: Int,
        colorSpace: ColorSpace,
        lutConfig: LutConfig?,
        recipeParams: MgcPreviewRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap {
        val processor = LutImageProcessor()
        check(processor.initialize()) { "LutImageProcessor initialize failed" }
        return try {
            processor.applyLut(
                argbData = argbData,
                width = width,
                height = height,
                colorSpace = colorSpace,
                lutConfig = lutConfig,
                colorRecipeParams = recipeParams?.toColorRecipeParams(),
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue,
            )
        } finally {
            processor.release()
        }
    }

    suspend fun renderOfflineArgb64WithDefaultVerificationLut(
        argbData: ShortBuffer,
        width: Int,
        height: Int,
        colorSpace: ColorSpace,
        recipeParams: MgcPreviewRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap {
        return renderOfflineArgb64(
            argbData = argbData,
            width = width,
            height = height,
            colorSpace = colorSpace,
            lutConfig = getDefaultVerificationLut(),
            recipeParams = recipeParams,
            sharpeningValue = sharpeningValue,
            noiseReductionValue = noiseReductionValue,
            chromaNoiseReductionValue = chromaNoiseReductionValue,
        )
    }

    private fun buildDefaultVerificationLut(): LutConfig {
        val payload = Base64.getDecoder().decode(DefaultVerificationLutData.PAYLOAD_BASE64)
        return LutConfig(
            size = DefaultVerificationLutData.SIZE,
            byteBuffer = ByteBuffer.allocateDirect(payload.size)
                .order(ByteOrder.nativeOrder())
                .put(payload)
                .apply { position(0) },
            title = DefaultVerificationLutData.TITLE,
            configDataType = DefaultVerificationLutData.CONFIG_DATA_TYPE,
            curve = LutCurve.entries.getOrElse(DefaultVerificationLutData.CURVE_ORDINAL) { LutCurve.SRGB },
            colorSpace = RawColorSpace.entries.getOrElse(DefaultVerificationLutData.COLOR_SPACE_ORDINAL) { RawColorSpace.SRGB },
        )
    }
}
