package com.hinnka.mycamera.agc

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.hardware.HardwareBuffer
import android.util.Log
import android.util.Size
import android.view.Surface
import android.view.View
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.atomic.AtomicInteger

/**
 * Static entry points for the AGC smali side.
 *
 * Keep this class Java-friendly: AGC hooks should only need invoke-static calls.
 */
object PhotonAgcBridge {
    private const val TAG = "PhotonAgcBridge"
    private const val PREF_NAME = "photon_agc_lut"
    private const val KEY_SELECTED_LUT_ID = "selected_lut_id"
    private const val JPEG_QUALITY = 95
    @Volatile
    private var appContext: Context? = null
    private val previewFrameCounter = AtomicInteger()

    @Volatile
    private var activeProxy: ProxyRenderSession? = null
    @Volatile
    private var activeSurface: Surface? = null
    @Volatile
    private var activeSize: Size? = null

    @JvmStatic
    fun initialize(context: Context) {
        appContext = context.applicationContext
        runCatching {
            LutManager(context.applicationContext).initialize()
        }.onFailure {
            Log.e(TAG, "initialize failed", it)
        }
    }

    @JvmStatic
    fun getContext(): Context? {
        if (appContext == null) {
            try {
                val activityThread = Class.forName("android.app.ActivityThread")
                val currentApplication = activityThread.getMethod("currentApplication")
                val app = currentApplication.invoke(null) as? Context
                if (app != null) {
                    initialize(app)
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to get Application Context via reflection", e)
            }
        }
        return appContext
    }

    @JvmStatic
    fun recordOriginalSurface(originalSurface: Surface?, size: Size?) {
        Log.d(TAG, "recordOriginalSurface: Surface=${originalSurface}, Size=${size}")
        activeSurface = originalSurface
        activeSize = size
    }

    @JvmStatic
    fun displayBuffer(
        bufferFlinger: Any?,
        hardwareBuffer: HardwareBuffer?,
        srcRect: android.graphics.Rect?,
        dstRect: android.graphics.Rect?,
        rotation: Int,
        listener: Any?
    ): Boolean {
        if (hardwareBuffer == null) return false

        val context = getContext()
        val lutId = context?.let { getSelectedLutId(it) }

        // 如果未开启滤镜，或者没有 context，直接不接管
        if (context == null || lutId.isNullOrBlank()) {
            activeProxy?.let {
                Log.d(TAG, "displayBuffer: LUT selection cleared, releasing activeProxy")
                it.release()
                activeProxy = null
            }
            return false
        }

        // 所有格式（包括 IMPLEMENTATION_DEFINED format=34）统一通过 EGLImage + GL_TEXTURE_EXTERNAL_OES 处理

        val surface = activeSurface ?: return false
        val size = activeSize ?: return false

        return runCatching {
            var session = activeProxy
            if (session == null || session.originalSurface !== surface || session.width != size.width || session.height != size.height) {
                session?.release()
                Log.d(TAG, "displayBuffer: Creating new ProxyRenderSession for ${size.width}x${size.height}")
                session = ProxyRenderSession(surface, size.width, size.height)
                activeProxy = session
            }
            
            session.renderFrame(hardwareBuffer, srcRect, dstRect, rotation, listener)
            true
        }.onFailure { e ->
            Log.e(TAG, "displayBuffer proxy failed, fallback to original", e)
        }.getOrDefault(false)
    }

    @JvmStatic
    fun getSelectedLutId(context: Context): String? {
        return context.applicationContext
            .getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)
            .getString(KEY_SELECTED_LUT_ID, null)
    }

    @JvmStatic
    fun setSelectedLutId(context: Context, lutId: String?) {
        val safeContext = context.applicationContext
        appContext = safeContext
        safeContext
            .getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)
            .edit()
            .putString(KEY_SELECTED_LUT_ID, lutId)
            .apply()
        syncAgcSelection(lutId)
    }

    @JvmStatic
    fun hasSelectedLut(context: Context): Boolean = !getSelectedLutId(context).isNullOrBlank()

    @JvmStatic
    fun showLutSelectorBottomSheet(context: Context, anchor: View?) {
        appContext = context.applicationContext
        runCatching {
            PhotonLutSelectorDialog(context, anchor).show()
        }.onFailure {
            Log.e(TAG, "showLutSelectorBottomSheet failed", it)
        }
    }

    @JvmStatic
    fun postProcessJpeg(context: Context, imagePath: String?): Boolean {
        appContext = context.applicationContext
        if (imagePath.isNullOrBlank()) return false

        return runCatching {
            val appContext = context.applicationContext
            val lutId = getSelectedLutId(appContext)
            if (lutId.isNullOrBlank()) {
                Log.d(TAG, "postProcessJpeg skipped: no selected LUT")
                return false
            }

            val input = File(imagePath)
            if (!input.isFile) {
                Log.w(TAG, "postProcessJpeg skipped: file not found $imagePath")
                return false
            }

            val bitmap = BitmapFactory.decodeFile(input.absolutePath) ?: run {
                Log.w(TAG, "postProcessJpeg skipped: decode failed $imagePath")
                return false
            }

            val lutManager = LutManager(appContext).apply { initialize() }
            val lutConfig = lutManager.loadLut(lutId) ?: run {
                Log.w(TAG, "postProcessJpeg skipped: LUT not found $lutId")
                bitmap.recycle()
                return false
            }
            val recipe = runBlocking {
                lutManager.getColorRecipeParams(lutId).first()
            }

            val output = runBlocking {
                LutImageProcessor().useProcessor { processor ->
                    processor.applyLut(
                        bitmap = bitmap,
                        lutConfig = lutConfig,
                        colorRecipeParams = recipe,
                    )
                }
            }

            FileOutputStream(input).use { stream ->
                output.compress(Bitmap.CompressFormat.JPEG, JPEG_QUALITY, stream)
            }
            bitmap.recycle()
            if (output !== bitmap) output.recycle()
            true
        }.onFailure {
            Log.e(TAG, "postProcessJpeg failed: $imagePath", it)
        }.getOrDefault(false)
    }

    @JvmStatic
    fun processPreviewHardwareBuffer(buffer: HardwareBuffer?): HardwareBuffer? {
        // 由于我们切换到了 Surface 级别的代理，不在这里处理 HardwareBuffer，
        // 我们直接返回原 buffer，避免任何格式或只读缓冲的掉包问题！
        return buffer
    }

    private suspend fun <T> LutImageProcessor.useProcessor(block: suspend (LutImageProcessor) -> T): T {
        return try {
            block(this)
        } finally {
            release()
        }
    }

    private fun syncAgcSelection(lutId: String?) {
        runCatching {
            val pref = Class.forName("com.Utils.Pref")
            pref.getMethod("setAuxProfilePrefIntValue", String::class.java, Integer.TYPE)
                .invoke(null, "lib_lut_id_key", if (lutId.isNullOrBlank()) -1 else 1)
            pref.getMethod("setAuxProfilePrefValue", String::class.java, String::class.java)
                .invoke(null, "lib_lut_key", "")
        }.onFailure {
            Log.w(TAG, "syncAgcSelection failed", it)
        }
    }

    @Suppress("unused")
    private fun defaultRecipe(): ColorRecipeParams = ColorRecipeParams.DEFAULT
}
