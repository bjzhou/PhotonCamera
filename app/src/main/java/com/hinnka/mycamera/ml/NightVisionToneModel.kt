package com.hinnka.mycamera.ml

import android.content.Context
import com.google.ai.edge.litert.CompiledModel
import com.hinnka.mycamera.processor.NightVisionTone
import com.hinnka.mycamera.processor.NightVisionToneCurve
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.util.concurrent.Executors

/**
 * Bundled CPGA-Net low-light model (assets/night_vision), used only to estimate the night vision
 * tone curve. LiteRtGpuModel is not thread-safe, so preview and capture share one model confined
 * to a single thread. XNNPACK rejects the FP16 graph; without the GPU accelerator the mode has no
 * curve and [estimate] returns null.
 */
internal object NightVisionToneModel {
    private const val TAG = "NightVisionToneModel"
    private const val MODEL_ASSET = "night_vision/cpga_fp16.tflite"
    private const val PLANE = NightVisionTone.MODEL_SIZE * NightVisionTone.MODEL_SIZE
    private const val ELEMENT_COUNT = PLANE * 3

    private val dispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "NightVisionTone").apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private var model: LiteRtGpuModel? = null
    private var loadFailed = false

    /** Runs the model on [input] (HWC RGB, see [NightVisionTone.modelInputFrom]) and fits the curve. */
    suspend fun estimate(context: Context, input: FloatArray): NightVisionToneCurve? = withContext(dispatcher) {
        require(input.size == ELEMENT_COUNT) { "Night vision model input must be ${ELEMENT_COUNT} floats" }
        val loaded = obtainModel(context.applicationContext) ?: return@withContext null
        val nchw = FloatArray(ELEMENT_COUNT)
        for (i in 0 until PLANE) {
            nchw[i] = input[i * 3]
            nchw[PLANE + i] = input[i * 3 + 1]
            nchw[2 * PLANE + i] = input[i * 3 + 2]
        }
        val outputNchw = loaded.run(nchw)
        val output = FloatArray(ELEMENT_COUNT)
        for (i in 0 until PLANE) {
            output[i * 3] = outputNchw[i]
            output[i * 3 + 1] = outputNchw[PLANE + i]
            output[i * 3 + 2] = outputNchw[2 * PLANE + i]
        }
        NightVisionTone.estimate(input, output)
    }

    private fun obtainModel(context: Context): LiteRtGpuModel? {
        model?.let { return it }
        if (loadFailed) return null
        return try {
            val modelSize = context.assets.open(MODEL_ASSET).use { it.readBytes().size }
            val cache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "cpga_night_vision_litert",
                modelAssetName = MODEL_ASSET,
                modelSizeBytes = modelSize,
            )
            LiteRtGpuModel.fromAsset(
                context = context,
                assetName = MODEL_ASSET,
                cache = cache,
                precision = CompiledModel.GpuOptions.Precision.DEFAULT,
                inputElementCount = ELEMENT_COUNT,
                outputElementCount = ELEMENT_COUNT,
            ).also { model = it }
        } catch (error: Exception) {
            loadFailed = true
            PLog.e(TAG, "Night vision model unavailable on the GPU accelerator; tone curve disabled", error)
            null
        }
    }
}
