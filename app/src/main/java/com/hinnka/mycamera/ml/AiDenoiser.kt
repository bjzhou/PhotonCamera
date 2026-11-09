package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.os.SystemClock
import com.google.ai.edge.litert.CompiledModel
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.io.FileInputStream
import java.nio.channels.FileChannel

/**
 * AI denoise with SCUNet (color σ=25 weights; conversion in docs/scunet-tflite.md).
 *
 * Model contract: float32 NHWC [1, 256, 256, 3] RGB in [0, 1] -> same shape. The tile size is
 * part of the model (the shifted-window attention mask is built for 256 x 256), so the image
 * is always processed in overlapping 256 x 256 tiles.
 *
 * [denoise] creates, uses and closes the backend on the calling thread: the LiteRT GPU model
 * is bound to the thread that created it.
 */
object AiDenoiser {
    private const val TAG = "AiDenoiser"
    private const val TILE = 256
    private const val CHANNELS = 3
    private const val TILE_ELEMENTS = TILE * TILE * CHANNELS

    /** Minimum overlap between neighbouring tiles; blended with smoothstep weights. */
    private const val OVERLAP = 32

    init {
        System.loadLibrary("my-native-lib")
    }

    /**
     * Returns the denoised image as a new ARGB_8888 bitmap. Throws on model or backend failure.
     */
    fun denoise(
        context: Context,
        input: Bitmap,
        onProgress: (Float) -> Unit,
    ): Bitmap {
        val source = if (input.config == Bitmap.Config.ARGB_8888) input else input.copy(Bitmap.Config.ARGB_8888, false)
            ?: error("Failed to convert ${input.config} bitmap to ARGB_8888")
        try {
            return createBackend(context).use { backend ->
                runTiles(backend, source, onProgress)
            }
        } finally {
            if (source !== input) source.recycle()
        }
    }

    private fun runTiles(backend: Backend, source: Bitmap, onProgress: (Float) -> Unit): Bitmap {
        val width = source.width
        val height = source.height
        val xs = tileOrigins(width)
        val ys = tileOrigins(height)
        val total = xs.size * ys.size
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val tileInput = FloatArray(TILE_ELEMENTS)
        var readMs = 0L
        var inferenceMs = 0L
        var writeMs = 0L
        val startMs = SystemClock.elapsedRealtime()
        var done = 0
        for ((row, y) in ys.withIndex()) {
            // Rows above blend over [y, previous tile bottom); the first row has no blend band.
            val blendTopEnd = if (row == 0) y else minOf(ys[row - 1] + TILE, height)
            for ((col, x) in xs.withIndex()) {
                val blendLeftEnd = if (col == 0) x else minOf(xs[col - 1] + TILE, width)
                var t = SystemClock.elapsedRealtime()
                readTileNative(source, x, y, TILE, tileInput)
                readMs += SystemClock.elapsedRealtime() - t

                t = SystemClock.elapsedRealtime()
                val tileOutput = backend.run(tileInput)
                inferenceMs += SystemClock.elapsedRealtime() - t

                t = SystemClock.elapsedRealtime()
                writeTileNative(tileOutput, result, x, y, TILE, blendLeftEnd, blendTopEnd)
                writeMs += SystemClock.elapsedRealtime() - t

                done++
                onProgress(done.toFloat() / total)
            }
        }
        PLog.d(
            TAG,
            "AI denoise finished: backend=${backend.name} image=${width}x$height tiles=$total " +
                "total=${SystemClock.elapsedRealtime() - startMs}ms read=${readMs}ms " +
                "inference=${inferenceMs}ms write=${writeMs}ms"
        )
        return result
    }

    /** Tile origins along one axis: stride TILE - OVERLAP, last tile aligned to the far edge. */
    private fun tileOrigins(length: Int): IntArray {
        if (length <= TILE) return intArrayOf(0)
        val origins = ArrayList<Int>()
        var p = 0
        while (true) {
            origins += p
            if (p + TILE >= length) break
            p = minOf(p + TILE - OVERLAP, length - TILE)
        }
        return origins.toIntArray()
    }

    private fun createBackend(context: Context): Backend {
        val file = AiDenoiseModelManager.installedModelFileOrNull(context)
            ?: throw IllegalStateException("AI denoise model is not installed")
        val modelBuffer = FileInputStream(file).channel.use { it.map(FileChannel.MapMode.READ_ONLY, 0, it.size()) }
        Interpreter(modelBuffer, Interpreter.Options().setUseXNNPACK(false)).use(::checkContract)
        try {
            val cache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "scunet_color_25_fp16",
                modelAssetName = file.name,
                modelSizeBytes = file.length().toInt(),
                modelFingerprint = AiDenoiseModelManager.MODEL_SHA256,
            )
            // FP16 is safe: LayerNorm is pre-scaled so its variance stays within FP16 range.
            val gpu = LiteRtGpuModel.fromFile(
                file = file,
                cache = cache,
                precision = CompiledModel.GpuOptions.Precision.FP16,
                inputElementCount = TILE_ELEMENTS,
                outputElementCount = TILE_ELEMENTS,
            )
            PLog.d(TAG, "Using LiteRT GPU (FP16)")
            return GpuBackend(gpu)
        } catch (e: Exception) {
            PLog.w(TAG, "LiteRT GPU unavailable, falling back to CPU", e)
        }
        val cpu = Interpreter(modelBuffer, Interpreter.Options().setNumThreads(CPU_THREADS).setUseXNNPACK(true))
        PLog.d(TAG, "Using CPU (XNNPACK, $CPU_THREADS threads)")
        return CpuBackend(cpu)
    }

    /** Model contract check, shared with [AiDenoiseModelManager] at install time. */
    internal fun checkContract(interpreter: Interpreter) {
        val expected = intArrayOf(1, TILE, TILE, CHANNELS)
        check(interpreter.inputTensorCount == 1 && interpreter.outputTensorCount == 1) {
            "AI denoise model must have one input and one output"
        }
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        check(input.shape().contentEquals(expected) && output.shape().contentEquals(expected)) {
            "Unexpected AI denoise tensor shapes: input=${input.shape().contentToString()} " +
                "output=${output.shape().contentToString()}"
        }
        check(input.dataType() == DataType.FLOAT32 && output.dataType() == DataType.FLOAT32) {
            "Unexpected AI denoise tensor types: input=${input.dataType()} output=${output.dataType()}"
        }
    }

    private const val CPU_THREADS = 4

    private interface Backend : AutoCloseable {
        val name: String
        fun run(input: FloatArray): FloatArray
    }

    private class GpuBackend(private val model: LiteRtGpuModel) : Backend {
        override val name = "GPU"
        override fun run(input: FloatArray): FloatArray = model.run(input)
        override fun close() = model.close()
    }

    private class CpuBackend(private val interpreter: Interpreter) : Backend {
        override val name = "CPU"
        private val inputBuffer = ByteBuffer.allocateDirect(TILE_ELEMENTS * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        private val outputBuffer = ByteBuffer.allocateDirect(TILE_ELEMENTS * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())

        override fun run(input: FloatArray): FloatArray {
            inputBuffer.rewind()
            inputBuffer.asFloatBuffer().put(input)
            outputBuffer.rewind()
            interpreter.run(inputBuffer, outputBuffer)
            val output = FloatArray(TILE_ELEMENTS)
            outputBuffer.rewind()
            outputBuffer.asFloatBuffer().get(output)
            return output
        }

        override fun close() = interpreter.close()
    }

    /** Fills [out] (NHWC RGB, size x size) from [bitmap] at (x, y), replicating edge pixels. */
    private external fun readTileNative(bitmap: Bitmap, x: Int, y: Int, size: Int, out: FloatArray)

    /**
     * Writes the tile at (x, y) into [dst] (clipped to the image), blended over the existing
     * [dst] content with weight smoothstep across [x, blendLeftEnd) times smoothstep across
     * [y, blendTopEnd).
     */
    private external fun writeTileNative(
        tile: FloatArray,
        dst: Bitmap,
        x: Int,
        y: Int,
        size: Int,
        blendLeftEnd: Int,
        blendTopEnd: Int,
    )
}
