package com.hinnka.mycamera.previewhook.api

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import android.util.Log
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.runBlocking
import java.io.ByteArrayOutputStream

object MgcCapturedJpegHook {
    private const val TAG = "codex_post_lut"
    private const val OUTPUT_JPEG_QUALITY = 100

    @Volatile
    private var processor: LutImageProcessor? = null

    @Synchronized
    private fun getOrCreateProcessor(): LutImageProcessor {
        processor?.let { return it }
        val created = LutImageProcessor()
        processor = created
        return created
    }

    @Synchronized
    private fun resetProcessor() {
        val current = processor
        processor = null
        current?.release()
    }

    @JvmStatic
    fun processJpegWithSource(source: String, jpegBytes: ByteArray?): ByteArray? {
        Log.e(TAG, "entry source=$source in=${jpegBytes?.size ?: -1}")
        return processJpeg(jpegBytes)
    }

    @JvmStatic
    fun processJpeg(jpegBytes: ByteArray?): ByteArray? {
        if (jpegBytes == null) {
            Log.e(TAG, "processJpeg bypass because jpegBytes is null")
            return null
        }
        if (jpegBytes.isEmpty()) {
            Log.e(TAG, "processJpeg bypass because jpegBytes is empty")
            return jpegBytes
        }
        val activeLut = MgcVfeLutRuntime.getActiveLutConfig() ?: MgcVfeLutRuntime.ensureBootstrapVerificationLut()
        val activeRecipe = MgcVfeLutRuntime.getActiveRecipeParams().takeUnless(ColorRecipeParams::isDefault)
        Log.e(
            TAG,
            "processJpeg start in=${jpegBytes.size} lutTitle=${activeLut?.title ?: "null"} " +
                "lutValid=${activeLut?.isValid() == true} recipe=${activeRecipe != null}"
        )
        if (activeLut == null && activeRecipe == null) {
            Log.e(TAG, "processJpeg bypass because no LUT/recipe")
            return jpegBytes
        }

        val options = BitmapFactory.Options().apply {
            inPreferredConfig = Bitmap.Config.ARGB_8888
            inMutable = false
        }
        val bitmap = BitmapFactory.decodeByteArray(jpegBytes, 0, jpegBytes.size, options)
        if (bitmap == null) {
            Log.e(TAG, "processJpeg decode returned null")
            return jpegBytes
        }
        Log.e(TAG, "processJpeg decoded ${bitmap.width}x${bitmap.height}")

        return try {
            val processed = runBlocking {
                applyLutWithRecovery(
                    bitmap = bitmap,
                    lutConfig = activeLut,
                    colorRecipeParams = activeRecipe,
                )
            }
            Log.e(TAG, "processJpeg pixels ${samplePixelsSummary(processed)}")
            val encoded = encodeJpeg(processed)
            Log.e(TAG, "processJpeg success out=${encoded.size}")
            encoded
        } catch (t: Throwable) {
            Log.e(TAG, "Failed to process captured JPEG", t)
            jpegBytes
        } finally {
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        }
    }

    private fun encodeJpeg(bitmap: Bitmap): ByteArray {
        return try {
            ByteArrayOutputStream().use { output ->
                check(bitmap.compress(Bitmap.CompressFormat.JPEG, OUTPUT_JPEG_QUALITY, output)) {
                    "Bitmap.compress returned false"
                }
                output.toByteArray()
            }
        } finally {
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        }
    }

    private suspend fun applyLutWithRecovery(
        bitmap: Bitmap,
        lutConfig: com.hinnka.mycamera.lut.LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
    ): Bitmap {
        var processed = applyWithCurrentProcessor(bitmap, lutConfig, colorRecipeParams)
        if (!isClearlyBlankOutput(processed)) {
            return processed
        }

        Log.e(TAG, "processJpeg detected blank output, rebuilding processor")
        if (!processed.isRecycled) {
            processed.recycle()
        }
        resetProcessor()

        processed = applyWithCurrentProcessor(bitmap, lutConfig, colorRecipeParams)
        if (isClearlyBlankOutput(processed)) {
            if (!processed.isRecycled) {
                processed.recycle()
            }
            throw IllegalStateException("LutImageProcessor returned blank output after processor rebuild")
        }
        return processed
    }

    private suspend fun applyWithCurrentProcessor(
        bitmap: Bitmap,
        lutConfig: com.hinnka.mycamera.lut.LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
    ): Bitmap {
        return getOrCreateProcessor().applyLut(
            bitmap = bitmap,
            lutConfig = lutConfig,
            colorRecipeParams = colorRecipeParams,
            sharpeningValue = 0f,
            noiseReductionValue = 0f,
            chromaNoiseReductionValue = 0f,
        )
    }

    private fun isClearlyBlankOutput(bitmap: Bitmap): Boolean {
        val topLeft = bitmap.getPixel(0, 0)
        val center = bitmap.getPixel(bitmap.width / 2, bitmap.height / 2)
        val bottomRight = bitmap.getPixel(bitmap.width - 1, bitmap.height - 1)
        return isTransparentBlack(topLeft) && isTransparentBlack(center) && isTransparentBlack(bottomRight)
    }

    private fun isTransparentBlack(color: Int): Boolean {
        return Color.alpha(color) == 0 &&
            Color.red(color) == 0 &&
            Color.green(color) == 0 &&
            Color.blue(color) == 0
    }

    private fun samplePixelsSummary(bitmap: Bitmap): String {
        val topLeft = bitmap.getPixel(0, 0)
        val center = bitmap.getPixel(bitmap.width / 2, bitmap.height / 2)
        val bottomRight = bitmap.getPixel(bitmap.width - 1, bitmap.height - 1)
        return "tl=a${Color.alpha(topLeft)} r${Color.red(topLeft)} g${Color.green(topLeft)} b${Color.blue(topLeft)} " +
            "center=a${Color.alpha(center)} r${Color.red(center)} g${Color.green(center)} b${Color.blue(center)} " +
            "br=a${Color.alpha(bottomRight)} r${Color.red(bottomRight)} g${Color.green(bottomRight)} b${Color.blue(bottomRight)}"
    }
}
