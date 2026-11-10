package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.os.SystemClock
import com.google.ai.edge.litert.CompiledModel
import com.hinnka.mycamera.raw.MgcRaisrUpscale
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.io.FileInputStream
import java.nio.channels.FileChannel

/**
 * AI denoise with SCUNet real_psnr at half resolution (see docs/scunet-tflite.md and
 * docs/ai-denoise-half-resolution.md).
 *
 * 1. The image is box-downsampled 2x (an exact 2x2 average, which also halves the noise; odd
 *    sizes are padded by repeating the last row / column).
 * 2. SCUNet real_psnr (trained on real camera noise) denoises the half-resolution image in
 *    overlapping 256 x 256 tiles. Model contract: float32 NHWC [1, 256, 256, 3] RGB in [0, 1]
 *    -> same shape; the tile size is part of the model (shifted-window attention mask).
 * 3. MGC V25 RAISR ([MgcRaisrUpscale], resample rate 2) restores full resolution; on real high
 *    ISO photos it is closer to a full-resolution pass than bicubic or Lanczos-3 and restores
 *    edge acuity.
 *
 * About a quarter of the compute of full-resolution SCUNet. [denoise] creates, uses and closes the
 * backend on the calling thread: the LiteRT GPU model is bound to the thread that created it.
 */
object AiDenoiser {
    private const val TAG = "AiDenoiser"
    private const val TILE = 256
    private const val CHANNELS = 3
    private const val TILE_ELEMENTS = TILE * TILE * CHANNELS
    private const val SCALE = 2

    /** Minimum overlap between neighbouring tiles; blended with smoothstep weights. */
    private const val OVERLAP = 32

    /** Share of the progress bar taken by the model; RAISR and the blend take the rest. */
    private const val MODEL_PROGRESS = 0.9f

    init {
        System.loadLibrary("my-native-lib")
    }

    /**
     * Returns the denoised image as a new ARGB_8888 bitmap in the input's size and color space.
     * Throws on model, backend or upscale failure.
     */
    fun denoise(
        context: Context,
        input: Bitmap,
        onProgress: (Float) -> Unit,
    ): Bitmap {
        val source = if (input.config == Bitmap.Config.ARGB_8888) input else input.copy(Bitmap.Config.ARGB_8888, false)
            ?: error("Failed to convert ${input.config} bitmap to ARGB_8888")
        try {
            val startMs = SystemClock.elapsedRealtime()
            val low = boxDownsample(source)
            val denoisedLow = try {
                createBackend(context).use { backend ->
                    runTiles(backend, low) { onProgress(it * MODEL_PROGRESS) }
                }
            } finally {
                low.recycle()
            }
            val modelMs = SystemClock.elapsedRealtime() - startMs
            val upscaled = try {
                MgcRaisrUpscale().upscale(denoisedLow, SCALE.toFloat())
                    ?: error("RAISR upscale failed for ${denoisedLow.width}x${denoisedLow.height}")
            } finally {
                denoisedLow.recycle()
            }
            val result = cropToInput(source, upscaled)
            onProgress(1f)
            PLog.d(
                TAG,
                "AI denoise finished: image=${source.width}x${source.height} " +
                    "model=${modelMs}ms total=${SystemClock.elapsedRealtime() - startMs}ms"
            )
            return result
        } finally {
            if (source !== input) source.recycle()
        }
    }

    /**
     * Exact 2x2 box average: a bilinear 1/2 draw samples each output pixel at the shared corner
     * of its 2x2 source block. Odd sizes are first padded by repeating the last row / column.
     */
    private fun boxDownsample(source: Bitmap): Bitmap {
        val evenWidth = (source.width + 1) / 2 * 2
        val evenHeight = (source.height + 1) / 2 * 2
        val even = if (evenWidth == source.width && evenHeight == source.height) {
            source
        } else {
            createLike(source, evenWidth, evenHeight).also { padded ->
                val canvas = Canvas(padded)
                canvas.drawBitmap(source, 0f, 0f, null)
                val w = source.width
                val h = source.height
                if (evenWidth != w) canvas.drawBitmap(source, Rect(w - 1, 0, w, h), Rect(w, 0, w + 1, h), null)
                if (evenHeight != h) canvas.drawBitmap(source, Rect(0, h - 1, w, h), Rect(0, h, w, h + 1), null)
                if (evenWidth != w && evenHeight != h) {
                    canvas.drawBitmap(source, Rect(w - 1, h - 1, w, h), Rect(w, h, w + 1, h + 1), null)
                }
            }
        }
        try {
            return createLike(source, evenWidth / SCALE, evenHeight / SCALE).also { low ->
                Canvas(low).drawBitmap(
                    even, null, Rect(0, 0, low.width, low.height), Paint(Paint.FILTER_BITMAP_FLAG)
                )
            }
        } finally {
            if (even !== source) even.recycle()
        }
    }

    /**
     * ARGB_8888 bitmap in [like]'s color space. Every intermediate shares it so that Canvas draws
     * never convert colors; the model and RAISR work on the raw pixel values.
     */
    private fun createLike(like: Bitmap, width: Int, height: Int): Bitmap {
        val colorSpace = like.colorSpace
        return if (colorSpace != null) {
            Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888, true, colorSpace)
        } else {
            Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        }
    }

    /**
     * [upscaled] holds raw values in [input]'s color space (every step works on raw pixels):
     * relabel it without converting, then crop the padding of odd sizes. Consumes [upscaled].
     */
    private fun cropToInput(input: Bitmap, upscaled: Bitmap): Bitmap {
        input.colorSpace?.let(upscaled::setColorSpace)
        if (upscaled.width == input.width && upscaled.height == input.height) return upscaled
        return try {
            Bitmap.createBitmap(upscaled, 0, 0, input.width, input.height)
        } finally {
            upscaled.recycle()
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
        var inferenceMs = 0L
        var done = 0
        for ((row, y) in ys.withIndex()) {
            // Rows above blend over [y, previous tile bottom); the first row has no blend band.
            val blendTopEnd = if (row == 0) y else minOf(ys[row - 1] + TILE, height)
            for ((col, x) in xs.withIndex()) {
                val blendLeftEnd = if (col == 0) x else minOf(xs[col - 1] + TILE, width)
                readTileNative(source, x, y, TILE, tileInput)
                val t = SystemClock.elapsedRealtime()
                val tileOutput = backend.run(tileInput)
                inferenceMs += SystemClock.elapsedRealtime() - t
                writeTileNative(tileOutput, result, x, y, TILE, blendLeftEnd, blendTopEnd)
                done++
                onProgress(done.toFloat() / total)
            }
        }
        PLog.d(TAG, "AI denoise model: backend=${backend.name} half=${width}x$height tiles=$total inference=${inferenceMs}ms")
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
                cacheName = "scunet_color_real_psnr_fp16",
                modelAssetName = file.name,
                modelSizeBytes = file.length().toInt(),
                modelFingerprint = AiDenoiseModelManager.sha256,
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
