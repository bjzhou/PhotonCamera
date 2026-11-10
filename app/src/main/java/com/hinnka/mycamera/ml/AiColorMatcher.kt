package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.os.SystemClock
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.FileChannel
import java.util.Locale
import kotlin.math.exp
import kotlin.math.floor

/**
 * AI color match with ColorFM-L (conversion in docs/colorfm-tflite.md).
 *
 * The parameter network sees the content (the photo before its LUT) and the style reference, each
 * stretched to 256 x 256 exactly like the original (bilinear, align_corners = false, no
 * antialiasing; the result is sensitive to this), and outputs two per-pixel MLPs. Their
 * composition is a pure RGB -> RGB function on sRGB values, baked here into a 33^3 .cube LUT.
 * It runs once per match, so it uses the CPU (XNNPACK).
 */
object AiColorMatcher {
    private const val TAG = "AiColorMatcher"
    private const val SIZE = 256
    private const val MAT = 16
    private const val SIDE_PARAMS = 4 * MAT + MAT * MAT + MAT * MAT + MAT * 3
    private const val PARAMS = 2 * SIDE_PARAMS
    private const val LUT_SIZE = 33
    private const val CPU_THREADS = 4

    /** Returns the .cube text mapping colors of [content] toward the look of [style]. Throws on failure. */
    fun createCube(context: Context, content: Bitmap, style: Bitmap, title: String): String {
        val file = ColorFmModelManager.installedModelFileOrNull(context)
            ?: throw IllegalStateException("AI color match model is not installed")
        val start = SystemClock.elapsedRealtime()
        val input = ByteBuffer.allocateDirect(2 * SIZE * SIZE * 3 * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        val floats = input.asFloatBuffer()
        floats.put(resize256(content))
        floats.put(resize256(style))
        val output = ByteBuffer.allocateDirect(PARAMS * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        val model = FileInputStream(file).channel.use { it.map(FileChannel.MapMode.READ_ONLY, 0, it.size()) }
        Interpreter(model, Interpreter.Options().setNumThreads(CPU_THREADS).setUseXNNPACK(true)).use { interpreter ->
            checkContract(interpreter)
            interpreter.run(input, output)
        }
        val params = FloatArray(PARAMS)
        output.rewind()
        output.asFloatBuffer().get(params)
        check(params.all { it.isFinite() }) { "AI color match produced non-finite parameters" }
        val inferenceMs = SystemClock.elapsedRealtime() - start
        val cube = bakeCube(params, title)
        PLog.d(TAG, "AI color match finished: inference=${inferenceMs}ms total=${SystemClock.elapsedRealtime() - start}ms")
        return cube
    }

    /** Model contract check, shared with [ColorFmModelManager] at install time. */
    internal fun checkContract(interpreter: Interpreter) {
        check(interpreter.inputTensorCount == 1 && interpreter.outputTensorCount == 1) {
            "AI color match model must have one input and one output"
        }
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        check(
            input.shape().contentEquals(intArrayOf(2, SIZE, SIZE, 3)) &&
                output.shape().contentEquals(intArrayOf(1, PARAMS))
        ) {
            "Unexpected AI color match tensor shapes: input=${input.shape().contentToString()} " +
                "output=${output.shape().contentToString()}"
        }
        check(input.dataType() == DataType.FLOAT32 && output.dataType() == DataType.FLOAT32) {
            "Unexpected AI color match tensor types: input=${input.dataType()} output=${output.dataType()}"
        }
    }

    /**
     * NHWC RGB [256, 256, 3] in [0, 1]: torch bilinear resize with align_corners = false and no
     * antialiasing (source coordinate (i + 0.5) * scale - 0.5, clamped at 0).
     */
    private fun resize256(bitmap: Bitmap): FloatArray {
        val src = if (bitmap.config == Bitmap.Config.ARGB_8888) bitmap else bitmap.copy(Bitmap.Config.ARGB_8888, false)
        try {
            val w = src.width
            val h = src.height
            val out = FloatArray(SIZE * SIZE * 3)
            val xs0 = IntArray(SIZE)
            val xs1 = IntArray(SIZE)
            val xf = FloatArray(SIZE)
            for (i in 0 until SIZE) {
                val sx = maxOf((i + 0.5f) * w / SIZE - 0.5f, 0f)
                xs0[i] = minOf(floor(sx).toInt(), w - 1)
                xs1[i] = minOf(xs0[i] + 1, w - 1)
                xf[i] = sx - xs0[i]
            }
            val row0 = IntArray(w)
            val row1 = IntArray(w)
            for (j in 0 until SIZE) {
                val sy = maxOf((j + 0.5f) * h / SIZE - 0.5f, 0f)
                val y0 = minOf(floor(sy).toInt(), h - 1)
                val y1 = minOf(y0 + 1, h - 1)
                val fy = sy - y0
                src.getPixels(row0, 0, w, 0, y0, w, 1)
                src.getPixels(row1, 0, w, 0, y1, w, 1)
                for (i in 0 until SIZE) {
                    val a = row0[xs0[i]]
                    val b = row0[xs1[i]]
                    val c = row1[xs0[i]]
                    val d = row1[xs1[i]]
                    val fx = xf[i]
                    val o = (j * SIZE + i) * 3
                    for (ch in 0 until 3) {
                        val shift = 16 - 8 * ch
                        val top = ((a shr shift) and 0xFF) * (1 - fx) + ((b shr shift) and 0xFF) * fx
                        val bottom = ((c shr shift) and 0xFF) * (1 - fx) + ((d shr shift) and 0xFF) * fx
                        out[o + ch] = (top * (1 - fy) + bottom * fy) / 255f
                    }
                }
            }
            return out
        } finally {
            if (src !== bitmap) src.recycle()
        }
    }

    /** m = c + mlp(c, 0, content); out = m - mlp(m, 1, style), evaluated on a 33^3 grid. */
    private fun bakeCube(params: FloatArray, title: String): String {
        val content = Mlp(params, 0)
        val style = Mlp(params, SIDE_PARAMS)
        val sb = StringBuilder(LUT_SIZE * LUT_SIZE * LUT_SIZE * 24)
        sb.append("TITLE \"").append(title.replace("\"", "'")).append("\"\n")
        sb.append("LUT_3D_SIZE ").append(LUT_SIZE).append('\n')
        val c = FloatArray(3)
        val m = FloatArray(3)
        val delta = FloatArray(3)
        val scale = 1f / (LUT_SIZE - 1)
        // .cube order: red changes fastest, then green, then blue.
        for (b in 0 until LUT_SIZE) for (g in 0 until LUT_SIZE) for (r in 0 until LUT_SIZE) {
            c[0] = r * scale; c[1] = g * scale; c[2] = b * scale
            content.eval(c, 0f, delta)
            for (k in 0 until 3) m[k] = c[k] + delta[k]
            style.eval(m, 1f, delta)
            sb.append(String.format(Locale.US, "%.6f %.6f %.6f\n",
                (m[0] - delta[0]).coerceIn(0f, 1f),
                (m[1] - delta[1]).coerceIn(0f, 1f),
                (m[2] - delta[2]).coerceIn(0f, 1f)))
        }
        return sb.toString()
    }

    /** One side's MLP: [v, t] (4) -> 16 -> 16 -> 16 -> 3, Swish between layers; matrices row-major. */
    private class Mlp(p: FloatArray, offset: Int) {
        private val k1 = p.copyOfRange(offset, offset + 4 * MAT)
        private val k2 = p.copyOfRange(offset + 4 * MAT, offset + 4 * MAT + MAT * MAT)
        private val k3 = p.copyOfRange(offset + 4 * MAT + MAT * MAT, offset + 4 * MAT + 2 * MAT * MAT)
        private val k4 = p.copyOfRange(offset + 4 * MAT + 2 * MAT * MAT, offset + SIDE_PARAMS)
        private val a = FloatArray(MAT)
        private val b = FloatArray(MAT)
        private val input = FloatArray(4)

        fun eval(v: FloatArray, t: Float, out: FloatArray) {
            input[0] = v[0]; input[1] = v[1]; input[2] = v[2]; input[3] = t
            layer(input, 4, k1, MAT, a, swish = true)
            layer(a, MAT, k2, MAT, b, swish = true)
            layer(b, MAT, k3, MAT, a, swish = true)
            layer(a, MAT, k4, 3, out, swish = false)
        }

        private fun layer(x: FloatArray, n: Int, k: FloatArray, cols: Int, y: FloatArray, swish: Boolean) {
            for (j in 0 until cols) {
                var s = 0f
                for (i in 0 until n) s += x[i] * k[i * cols + j]
                y[j] = if (swish) s / (1f + exp(-s)) else s
            }
        }
    }
}
