package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.ColorSpace
import android.graphics.Paint
import android.graphics.Rect
import android.os.SystemClock
import com.hinnka.mycamera.utils.PLog
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.FloatBuffer
import java.nio.channels.FileChannel
import java.util.concurrent.Executors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import com.google.ai.edge.litert.CompiledModel
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter

/**
 * Owns the bundled U2NetP model on one thread for its complete lifetime.
 * The LiteRT GPU compiled model is preferred; the CPU / XNNPACK interpreter replaces
 * it when the GPU accelerator is unavailable, fails to compile, or a GPU inference fails.
 */
object SharedSubjectMaskEstimator {
    private const val TAG = "SharedSubjectMaskEstimator"
    private const val MODEL_ASSET = "u2netp/u2netp.tflite"
    private const val MODEL_SIZE = 320
    private const val CPU_THREADS = 4
    private const val CHANNEL_COUNT = 3
    private const val MIN_OUTPUT_RANGE = 1e-6f
    private val INPUT_MEAN = floatArrayOf(0.485f, 0.456f, 0.406f)
    private val INPUT_STD = floatArrayOf(0.229f, 0.224f, 0.225f)
    private val mutex = Mutex()
    private val estimatorDispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, TAG).apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private sealed interface LoadedModel {
        val backend: String
        val isGpu: Boolean
        fun run(input: FloatArray): FloatArray
        fun close()
    }

    private class GpuModel(private val runner: LiteRtGpuModel) : LoadedModel {
        override val backend = "GPU"
        override val isGpu = true
        override fun run(input: FloatArray): FloatArray = runner.run(input)
        override fun close() = runner.close()
    }

    private class CpuModel(private val interpreter: Interpreter) : LoadedModel {
        override val backend = "CPU/XNNPACK"
        override val isGpu = false

        override fun run(input: FloatArray): FloatArray {
            val values = FloatArray(MODEL_SIZE * MODEL_SIZE)
            interpreter.run(FloatBuffer.wrap(input), FloatBuffer.wrap(values))
            return values
        }

        override fun close() = interpreter.close()
    }

    // Access, including initialization and destruction, is confined to the dispatcher:
    // the GPU model is created, run and closed on one thread.
    private var model: LoadedModel? = null
    private var gpuDisabled = false

    suspend fun estimateMask(context: Context, inputBitmap: Bitmap, depthMap: RelativeDepthMap): SubjectMask? {
        return try {
            withContext(estimatorDispatcher) {
                mutex.withLock {
                    ensureActive()
                    val appContext = context.applicationContext
                    ensureActive()
                    val planStartedAt = SystemClock.elapsedRealtime()
                    val plan = DepthSubjectCropPlanner.plan(depthMap, inputBitmap.width, inputBitmap.height)
                    PLog.d(TAG, "U2NetP depth crop: reason=${plan.reason} crop=${plan.crop} " +
                        "gain=${plan.linearGain} foreground=${plan.foregroundFraction} separation=${plan.separation} " +
                        "plan=${SystemClock.elapsedRealtime() - planStartedAt}ms")
                    var result = infer(appContext, inputBitmap, plan.crop)
                    ensureActive()
                    if (result.touchesInteriorCropBoundary()) {
                        // The local prediction provides evidence that the proposed extent is
                        // incomplete. Re-estimate from the complete image; never clip or fill it.
                        PLog.d(TAG, "U2NetP crop rejected: foreground reaches crop boundary; evaluating full image")
                        result = infer(appContext, inputBitmap,
                            DepthSubjectCropPlanner.Crop(0, 0, inputBitmap.width, inputBitmap.height))
                    }
                    ensureActive()
                    result
                }
            }
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (error: Exception) {
            PLog.e(TAG, "U2NetP subject mask inference failed", error)
            null
        }
    }

    suspend fun close() {
        withContext(estimatorDispatcher) {
            mutex.withLock {
                val current = model
                model = null
                current?.close()
            }
        }
    }

    /**
     * Runs on the loaded backend. A failed GPU inference, including an invalid
     * output, disables the GPU delegate for the process and repeats on CPU.
     */
    private fun infer(context: Context, inputBitmap: Bitmap, crop: DepthSubjectCropPlanner.Crop): SubjectMask {
        val loaded = model ?: createModel(context).also { model = it }
        if (!loaded.isGpu) return runInference(loaded, inputBitmap, crop)
        return try {
            runInference(loaded, inputBitmap, crop)
        } catch (error: Exception) {
            PLog.w(TAG, "U2NetP GPU inference failed; switching to CPU/XNNPACK", error)
            gpuDisabled = true
            model = null
            loaded.close()
            val cpu = createModel(context).also { model = it }
            runInference(cpu, inputBitmap, crop)
        }
    }

    private fun createModel(context: Context): LoadedModel {
        val startedAt = SystemClock.elapsedRealtime()
        val modelBuffer = context.assets.openFd(MODEL_ASSET).use { descriptor ->
            FileInputStream(descriptor.fileDescriptor).channel.use { channel ->
                channel.map(FileChannel.MapMode.READ_ONLY, descriptor.startOffset, descriptor.declaredLength)
            }
        }
        if (!gpuDisabled) {
            createGpuModel(context, modelBuffer)?.let { loaded ->
                logReady(loaded, startedAt)
                return loaded
            }
            gpuDisabled = true
        }
        val options = Interpreter.Options().apply {
            setNumThreads(CPU_THREADS)
            setUseXNNPACK(true)
        }
        val interpreter = Interpreter(modelBuffer, options)
        try {
            validateTensors(interpreter)
        } catch (error: Throwable) {
            interpreter.close()
            throw error
        }
        val loaded = CpuModel(interpreter)
        logReady(loaded, startedAt)
        return loaded
    }

    /** The GPU compiled model, or null when the accelerator is unavailable or fails to compile / validate. */
    private fun createGpuModel(context: Context, modelBuffer: ByteBuffer): LoadedModel? {
        return try {
            // The tensor contract is checked on the plain interpreter: the compiled model
            // exposes buffer sizes but not shapes or element types.
            Interpreter(modelBuffer, Interpreter.Options().setUseXNNPACK(false)).use(::validateTensors)
            val cache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "u2netp_subject_mask_litert",
                modelAssetName = MODEL_ASSET,
                modelSizeBytes = modelBuffer.capacity(),
            )
            GpuModel(
                LiteRtGpuModel.fromAsset(
                    context = context,
                    assetName = MODEL_ASSET,
                    cache = cache,
                    precision = CompiledModel.GpuOptions.Precision.DEFAULT,
                    inputElementCount = MODEL_SIZE * MODEL_SIZE * CHANNEL_COUNT,
                    outputElementCount = MODEL_SIZE * MODEL_SIZE,
                )
            )
        } catch (error: Exception) {
            PLog.w(TAG, "U2NetP GPU accelerator unavailable; using CPU/XNNPACK", error)
            null
        }
    }

    private fun validateTensors(interpreter: Interpreter) {
        check(interpreter.inputTensorCount == 1 && interpreter.outputTensorCount == 1) {
            "U2NetP requires exactly one input and one fused output"
        }
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        check(input.dataType() == DataType.FLOAT32 &&
            input.shape().contentEquals(intArrayOf(1, MODEL_SIZE, MODEL_SIZE, CHANNEL_COUNT))) {
            "Unexpected U2NetP input: ${input.dataType()} ${input.shape().contentToString()}"
        }
        check(output.dataType() == DataType.FLOAT32 &&
            output.shape().contentEquals(intArrayOf(1, MODEL_SIZE, MODEL_SIZE, 1))) {
            "Unexpected U2NetP output: ${output.dataType()} ${output.shape().contentToString()}"
        }
    }

    private fun logReady(loaded: LoadedModel, startedAt: Long) {
        PLog.d(TAG, "U2NetP ready: backend=${loaded.backend}" +
            (if (!loaded.isGpu) " threads=$CPU_THREADS" else "") +
            " init=${SystemClock.elapsedRealtime() - startedAt}ms")
    }

    private fun runInference(
        loaded: LoadedModel,
        inputBitmap: Bitmap,
        crop: DepthSubjectCropPlanner.Crop,
    ): SubjectMask {
        val startedAt = SystemClock.elapsedRealtime()
        var guide: Bitmap? = null
        try {
            // Resize and color-convert in one draw; never allocate a full-size SDR copy.
            val resized = Bitmap.createBitmap(
                MODEL_SIZE, MODEL_SIZE, Bitmap.Config.ARGB_8888, false,
                ColorSpace.get(ColorSpace.Named.SRGB),
            )
            guide = resized
            Canvas(resized).drawBitmap(
                inputBitmap, Rect(crop.left, crop.top, crop.right, crop.bottom), Rect(0, 0, MODEL_SIZE, MODEL_SIZE),
                Paint(Paint.FILTER_BITMAP_FLAG),
            )
            val pixels = IntArray(MODEL_SIZE * MODEL_SIZE)
            resized.getPixels(pixels, 0, MODEL_SIZE, 0, 0, MODEL_SIZE, MODEL_SIZE)
            var maximumChannel = 0
            for (pixel in pixels) {
                val pixelMaximum = maxOf((pixel ushr 16) and 0xff,
                    (pixel ushr 8) and 0xff, pixel and 0xff)
                maximumChannel = maxOf(maximumChannel, pixelMaximum)
            }
            val inputScale = maximumChannel.coerceAtLeast(1).toFloat()
            val pixelCount = MODEL_SIZE * MODEL_SIZE
            val input = FloatArray(pixelCount * CHANNEL_COUNT)
            var inputIndex = 0
            for (pixel in pixels) {
                input[inputIndex++] = (((pixel ushr 16) and 0xff) / inputScale - INPUT_MEAN[0]) / INPUT_STD[0]
                input[inputIndex++] = (((pixel ushr 8) and 0xff) / inputScale - INPUT_MEAN[1]) / INPUT_STD[1]
                input[inputIndex++] = ((pixel and 0xff) / inputScale - INPUT_MEAN[2]) / INPUT_STD[2]
            }
            val runStartedAt = SystemClock.elapsedRealtime()
            val values = loaded.run(input)
            val runFinishedAt = SystemClock.elapsedRealtime()
            check(values.size == pixelCount) { "Unexpected U2NetP output size: ${values.size}" }
            var minimum = Float.POSITIVE_INFINITY
            var maximum = Float.NEGATIVE_INFINITY
            for ((index, value) in values.withIndex()) {
                check(value.isFinite() && value in 0f..1f) {
                    "Invalid U2NetP sigmoid output at $index: $value"
                }
                minimum = minOf(minimum, value)
                maximum = maxOf(maximum, value)
            }
            val range = maximum - minimum
            PLog.d(TAG, "U2NetP inference: backend=${loaded.backend} " +
                "run=${runFinishedAt - runStartedAt}ms " +
                "total=${SystemClock.elapsedRealtime() - startedAt}ms " +
                "rawMin=$minimum rawMax=$maximum inputMax=$maximumChannel " +
                "source=${inputBitmap.width}x${inputBitmap.height} crop=$crop config=${inputBitmap.config}")
            check(range > MIN_OUTPUT_RANGE) { "U2NetP output has no usable dynamic range: $range" }
            for (index in values.indices) {
                values[index] = (values[index] - minimum) / range
            }
            return SubjectMask(MODEL_SIZE, MODEL_SIZE, values, SubjectMaskRegion(
                crop.left.toFloat() / inputBitmap.width, crop.top.toFloat() / inputBitmap.height,
                crop.right.toFloat() / inputBitmap.width, crop.bottom.toFloat() / inputBitmap.height,
            ))
        } finally {
            guide?.recycle()
        }
    }
}
