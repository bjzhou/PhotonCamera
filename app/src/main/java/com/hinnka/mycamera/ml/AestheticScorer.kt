package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.FileChannel

/**
 * Aesthetic score of one image with CLIP ViT-B/32 + LAION aesthetic head ([AestheticModelManager]).
 *
 * The model takes the CLIP view of the image: the centered square, resized to 224 x 224, sRGB in
 * [0, 1] (CLIP normalization is inside the model). The score is on the LAION scale, roughly 1..10.
 * Runs on the CPU (XNNPACK). Instances are not thread-safe; use one from a single sequential context.
 */
class AestheticScorer private constructor(private val interpreter: Interpreter) : AutoCloseable {
    private val input = ByteBuffer.allocateDirect(SIZE * SIZE * 3 * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
    private val output = ByteBuffer.allocateDirect(Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
    private val pixels = IntArray(SIZE * SIZE)

    fun score(bitmap: Bitmap): Float {
        val view = clipView(bitmap)
        try {
            view.getPixels(pixels, 0, SIZE, 0, 0, SIZE, SIZE)
        } finally {
            view.recycle()
        }
        input.rewind()
        val floats = input.asFloatBuffer()
        for (pixel in pixels) {
            floats.put(((pixel shr 16) and 0xFF) / 255f)
            floats.put(((pixel shr 8) and 0xFF) / 255f)
            floats.put((pixel and 0xFF) / 255f)
        }
        output.rewind()
        interpreter.run(input, output)
        output.rewind()
        val score = output.float
        check(score.isFinite()) { "Aesthetic model produced a non-finite score" }
        return score
    }

    override fun close() = interpreter.close()

    companion object {
        private const val SIZE = 224
        private const val CPU_THREADS = 4

        /** Opens the installed model. Throws when it is not installed or does not match the contract. */
        fun open(context: Context): AestheticScorer {
            val file = AestheticModelManager.installedModelFileOrNull(context)
                ?: throw IllegalStateException("Aesthetic model is not installed")
            val model = FileInputStream(file).channel.use { it.map(FileChannel.MapMode.READ_ONLY, 0, it.size()) }
            val interpreter = Interpreter(model, Interpreter.Options().setNumThreads(CPU_THREADS).setUseXNNPACK(true))
            try {
                checkContract(interpreter)
            } catch (e: Exception) {
                interpreter.close()
                throw e
            }
            return AestheticScorer(interpreter)
        }

        /** Model contract check, shared with [AestheticModelManager] at install time. */
        internal fun checkContract(interpreter: Interpreter) {
            check(interpreter.inputTensorCount == 1 && interpreter.outputTensorCount == 1) {
                "Aesthetic model must have one input and one output"
            }
            val input = interpreter.getInputTensor(0)
            val output = interpreter.getOutputTensor(0)
            check(
                input.shape().contentEquals(intArrayOf(1, SIZE, SIZE, 3)) &&
                    output.shape().contentEquals(intArrayOf(1, 1))
            ) {
                "Unexpected aesthetic tensor shapes: input=${input.shape().contentToString()} " +
                    "output=${output.shape().contentToString()}"
            }
            check(input.dataType() == DataType.FLOAT32 && output.dataType() == DataType.FLOAT32) {
                "Unexpected aesthetic tensor types: input=${input.dataType()} output=${output.dataType()}"
            }
        }

        /** The centered square of [bitmap], bilinear-resized to 224 x 224 sRGB ARGB_8888. */
        private fun clipView(bitmap: Bitmap): Bitmap {
            val source = if (bitmap.config == Bitmap.Config.HARDWARE) {
                bitmap.copy(Bitmap.Config.ARGB_8888, false)
            } else {
                bitmap
            }
            try {
                val side = minOf(source.width, source.height)
                require(side > 0) { "Empty bitmap" }
                val left = (source.width - side) / 2
                val top = (source.height - side) / 2
                val view = Bitmap.createBitmap(SIZE, SIZE, Bitmap.Config.ARGB_8888)
                Canvas(view).drawBitmap(
                    source,
                    Rect(left, top, left + side, top + side),
                    Rect(0, 0, SIZE, SIZE),
                    Paint(Paint.FILTER_BITMAP_FLAG)
                )
                return view
            } finally {
                if (source !== bitmap) source.recycle()
            }
        }
    }
}
