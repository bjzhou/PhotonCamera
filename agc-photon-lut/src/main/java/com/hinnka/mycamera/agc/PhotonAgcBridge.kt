package com.hinnka.mycamera.agc

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.Log
import android.view.View
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking
import java.io.File
import java.io.FileOutputStream

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

    @JvmStatic
    fun initialize(context: Context) {
        runCatching {
            LutManager(context.applicationContext).initialize()
        }.onFailure {
            Log.e(TAG, "initialize failed", it)
        }
    }

    @JvmStatic
    fun getSelectedLutId(context: Context): String? {
        return context.applicationContext
            .getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)
            .getString(KEY_SELECTED_LUT_ID, null)
    }

    @JvmStatic
    fun setSelectedLutId(context: Context, lutId: String?) {
        context.applicationContext
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
        runCatching {
            PhotonLutSelectorDialog(context, anchor).show()
        }.onFailure {
            Log.e(TAG, "showLutSelectorBottomSheet failed", it)
        }
    }

    @JvmStatic
    fun postProcessJpeg(context: Context, imagePath: String?): Boolean {
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
