package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.ColorSpace
import android.graphics.Paint
import android.graphics.Rect
import android.os.SystemClock
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.channels.FileChannel
import java.util.concurrent.Executors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter

/** Owns the bundled U2NetP interpreter on one thread for its complete lifetime. */
object SharedSubjectMaskEstimator {
    private const val TAG = "SharedSubjectMaskEstimator"
    private const val MODEL_ASSET = "u2netp/u2netp.tflite"
    private const val MODEL_SIZE = 320
    private const val CHANNEL_COUNT = 3
    private const val MIN_OUTPUT_RANGE = 1e-6f
    private val INPUT_MEAN = floatArrayOf(0.485f, 0.456f, 0.406f)
    private val INPUT_STD = floatArrayOf(0.229f, 0.224f, 0.225f)
    private val mutex = Mutex()
    private val estimatorDispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, TAG).apply { isDaemon = true }
    }.asCoroutineDispatcher()

    // Access, including initialization and destruction, is confined to the dispatcher.
    private var interpreter: Interpreter? = null

    suspend fun estimateMask(context: Context, inputBitmap: Bitmap, depthMap: RelativeDepthMap): SubjectMask? {
        return try {
            withContext(estimatorDispatcher) {
                mutex.withLock {
                    ensureActive()
                    val resolved = interpreter ?: createInterpreter(context.applicationContext).also {
                        interpreter = it
                    }
                    ensureActive()
                    val planStartedAt = SystemClock.elapsedRealtime()
                    val plan = DepthSubjectCropPlanner.plan(depthMap, inputBitmap.width, inputBitmap.height)
                    PLog.d(TAG, "U2NetP depth crop: reason=${plan.reason} crop=${plan.crop} " +
                        "gain=${plan.linearGain} foreground=${plan.foregroundFraction} separation=${plan.separation} " +
                        "plan=${SystemClock.elapsedRealtime() - planStartedAt}ms")
                    var result = runInference(resolved, inputBitmap, plan.crop)
                    ensureActive()
                    if (result.touchesInteriorCropBoundary()) {
                        // The local prediction provides evidence that the proposed extent is
                        // incomplete. Re-estimate from the complete image; never clip or fill it.
                        PLog.d(TAG, "U2NetP crop rejected: foreground reaches crop boundary; evaluating full image")
                        result = runInference(resolved, inputBitmap,
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
                val current = interpreter
                interpreter = null
                current?.close()
            }
        }
    }

    private fun createInterpreter(context: Context): Interpreter {
        val startedAt = SystemClock.elapsedRealtime()
        val model = context.assets.openFd(MODEL_ASSET).use { descriptor ->
            FileInputStream(descriptor.fileDescriptor).channel.use { channel ->
                channel.map(FileChannel.MapMode.READ_ONLY, descriptor.startOffset, descriptor.declaredLength)
            }
        }
        val options = Interpreter.Options().apply {
            setNumThreads(4)
            setUseXNNPACK(true)
        }
        val created = Interpreter(model, options)
        try {
            check(created.inputTensorCount == 1 && created.outputTensorCount == 1) {
                "U2NetP requires exactly one input and one fused output"
            }
            val input = created.getInputTensor(0)
            val output = created.getOutputTensor(0)
            check(input.dataType() == DataType.FLOAT32 &&
                input.shape().contentEquals(intArrayOf(1, MODEL_SIZE, MODEL_SIZE, CHANNEL_COUNT))) {
                "Unexpected U2NetP input: ${input.dataType()} ${input.shape().contentToString()}"
            }
            check(output.dataType() == DataType.FLOAT32 &&
                output.shape().contentEquals(intArrayOf(1, MODEL_SIZE, MODEL_SIZE, 1))) {
                "Unexpected U2NetP output: ${output.dataType()} ${output.shape().contentToString()}"
            }
            PLog.d(TAG, "U2NetP ready: backend=CPU/XNNPACK threads=4 " +
                "input=${input.shape().contentToString()} output=${output.shape().contentToString()} " +
                "init=${SystemClock.elapsedRealtime() - startedAt}ms")
            return created
        } catch (error: Throwable) {
            created.close()
            throw error
        }
    }

    private fun runInference(
        model: Interpreter,
        inputBitmap: Bitmap,
        crop: DepthSubjectCropPlanner.Crop,
    ): SubjectMask {
        val startedAt = SystemClock.elapsedRealtime()
        var guide: Bitmap? = null
        var inputBytes: ByteBuffer? = null
        var outputBytes: ByteBuffer? = null
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
            val inputBuffer = LargeDirectBuffer.allocate(
                pixelCount.toLong() * CHANNEL_COUNT * Float.SIZE_BYTES, "U2NetP input",
            ) ?: throw IllegalStateException("Unable to allocate U2NetP input buffer")
            inputBytes = inputBuffer
            val outputBuffer = LargeDirectBuffer.allocate(
                pixelCount.toLong() * Float.SIZE_BYTES, "U2NetP output",
            ) ?: throw IllegalStateException("Unable to allocate U2NetP output buffer")
            outputBytes = outputBuffer
            val input = inputBuffer.asFloatBuffer()
            val output = outputBuffer.asFloatBuffer()
            for (pixel in pixels) {
                input.put((((pixel ushr 16) and 0xff) / inputScale - INPUT_MEAN[0]) / INPUT_STD[0])
                input.put((((pixel ushr 8) and 0xff) / inputScale - INPUT_MEAN[1]) / INPUT_STD[1])
                input.put(((pixel and 0xff) / inputScale - INPUT_MEAN[2]) / INPUT_STD[2])
            }
            input.rewind()
            output.rewind()
            val runStartedAt = SystemClock.elapsedRealtime()
            model.run(input, output)
            val runFinishedAt = SystemClock.elapsedRealtime()
            output.rewind()
            val values = FloatArray(pixelCount)
            output.get(values)
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
            PLog.d(TAG, "U2NetP inference: backend=CPU/XNNPACK " +
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
            LargeDirectBuffer.free(outputBytes)
            LargeDirectBuffer.free(inputBytes)
            guide?.recycle()
        }
    }
}
