package com.hinnka.mycamera.lut.creator

import android.content.Context
import android.graphics.ColorSpace
import android.graphics.ImageDecoder
import android.net.Uri
import android.os.SystemClock
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.FileChannel
import java.security.MessageDigest

/** A request owns its CPU interpreter and tensors; cancellation never publishes stale output. */
internal class StyleLutEstimator(private val context: Context) {
    suspend fun estimate(uri: Uri): FloatArray {
        val started = SystemClock.elapsedRealtime()
        val input = prepareInput(uri)
        currentCoroutineContext().ensureActive()
        val model = context.assets.openFd(MODEL_ASSET).use { descriptor ->
            FileInputStream(descriptor.fileDescriptor).channel.use { channel ->
                channel.map(FileChannel.MapMode.READ_ONLY, descriptor.startOffset, descriptor.declaredLength)
            }
        }
        val digest = MessageDigest.getInstance("SHA-256").apply { update(model.duplicate()) }
            .digest().joinToString("") { "%02x".format(it.toInt() and 255) }
        val options = Interpreter.Options()
            .setNumThreads(Runtime.getRuntime().availableProcessors().coerceIn(1, 4))
            .setUseXNNPACK(true)
        val result = Interpreter(model, options).use { interpreter ->
            check(interpreter.inputTensorCount == 1 && interpreter.outputTensorCount == 1)
            val inputTensor = interpreter.getInputTensor(0)
            val outputTensor = interpreter.getOutputTensor(0)
            check(inputTensor.dataType() == DataType.FLOAT32 &&
                inputTensor.shape().contentEquals(intArrayOf(1, 3, IMAGE_SIZE, IMAGE_SIZE)))
            check(outputTensor.dataType() == DataType.FLOAT32 &&
                outputTensor.shape().contentEquals(intArrayOf(1, 3, LUT_SIZE, LUT_SIZE, LUT_SIZE)))
            val output = ByteBuffer.allocateDirect(3 * GRID_POINTS * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
            interpreter.run(input, output)
            currentCoroutineContext().ensureActive()
            output.rewind()
            val planar = output.asFloatBuffer()
            // N,C,B,G,R -> RGB interleaved, with the R grid axis changing fastest in PLUT.
            FloatArray(3 * GRID_POINTS) { index ->
                planar.get(index % 3 * GRID_POINTS + index / 3).also { value ->
                    check(value.isFinite() && value in 0f..1f) { "Invalid predicted LUT value" }
                }
            }
        }
        PLog.d(TAG, "train-srgb SHA256=$digest, decode + inference: ${SystemClock.elapsedRealtime() - started} ms")
        return result
    }

    private fun prepareInput(uri: Uri): ByteBuffer {
        val source = ImageDecoder.createSource(context.contentResolver, uri)
        val bitmap = ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
            decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            decoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB))
            // JPEG draft decode at up to 1/8 resolution; ImageDecoder also applies EXIF orientation.
            var sample = 1
            while (sample < 8 && minOf(info.size.width, info.size.height) / (sample * 2) >= StyleLutPreprocessor.RENDER_SIZE) {
                sample *= 2
            }
            decoder.setTargetSampleSize(sample)
        }
        return try {
            val pixels = IntArray(bitmap.width * bitmap.height)
            bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
            StyleLutPreprocessor.prepare(pixels, bitmap.width, bitmap.height)
        } finally {
            bitmap.recycle()
        }
    }

    companion object {
        private const val TAG = "StyleLutEstimator"
        private const val MODEL_ASSET = "models/style_lut/model.tflite"
        private const val IMAGE_SIZE = StyleLutPreprocessor.IMAGE_SIZE
        const val LUT_SIZE = 33
        private const val GRID_POINTS = LUT_SIZE * LUT_SIZE * LUT_SIZE
    }
}
