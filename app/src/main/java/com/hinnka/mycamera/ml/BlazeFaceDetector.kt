package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import com.google.ai.edge.litert.support.common.FileUtil
import java.io.Closeable
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.min

/**
 * BlazeFace full-range detector running directly on TFLite.
 *
 * Mirrors MediaPipe's face_detection_full_range graph: letterboxed 192x192 input in [-1, 1],
 * single-layer SSD anchors (stride 4, fixed size), sigmoid scores clipped at ±100 and weighted
 * NMS with IoU 0.3. All returned coordinates are normalized to the source bitmap.
 */
class BlazeFaceDetector(
    context: Context,
    private val minScore: Float,
    modelAsset: String = DEFAULT_MODEL_ASSET,
) : Closeable {

    class Detection(
        /** Normalized bounding box in source-image space. */
        val box: RectF,
        val score: Float,
        /** Normalized (x, y) pairs: right eye, left eye, nose, mouth, right ear, left ear. */
        val keypoints: FloatArray,
    )

    private class RawDetection(
        val xMin: Float,
        val yMin: Float,
        val xMax: Float,
        val yMax: Float,
        val score: Float,
        val keypoints: FloatArray,
    ) {
        val area: Float get() = max(0f, xMax - xMin) * max(0f, yMax - yMin)
    }

    companion object {
        const val DEFAULT_MODEL_ASSET = "blaze_face_full_range.tflite"
        private const val INPUT_SIZE = 192
        private const val GRID_SIZE = 48
        private const val NUM_ANCHORS = GRID_SIZE * GRID_SIZE
        private const val NUM_COORDS = 16
        private const val NUM_KEYPOINTS = 6
        private const val KEYPOINT_OFFSET = 4
        private const val SCORE_CLIPPING_THRESHOLD = 100f
        private const val MIN_SUPPRESSION_THRESHOLD = 0.3f
    }

    private val interpreter = Interpreter(
        FileUtil.loadMappedFile(context.applicationContext, modelAsset),
        Interpreter.Options().apply {
            setNumThreads(2)
            setUseXNNPACK(true)
        },
    )
    private val regressorOutputIndex: Int
    private val classifierOutputIndex: Int

    private val inputBitmap = Bitmap.createBitmap(INPUT_SIZE, INPUT_SIZE, Bitmap.Config.ARGB_8888)
    private val inputCanvas = Canvas(inputBitmap)
    private val inputPaint = Paint(Paint.FILTER_BITMAP_FLAG)
    private val inputPixels = IntArray(INPUT_SIZE * INPUT_SIZE)
    private val inputBuffer = ByteBuffer.allocateDirect(INPUT_SIZE * INPUT_SIZE * 3 * 4)
        .order(ByteOrder.nativeOrder())
    private val regressors = Array(1) { Array(NUM_ANCHORS) { FloatArray(NUM_COORDS) } }
    private val scores = Array(1) { Array(NUM_ANCHORS) { FloatArray(1) } }
    private val dstRect = RectF()

    init {
        val input = interpreter.getInputTensor(0)
        check(input.dataType() == DataType.FLOAT32) { "BlazeFace input type changed" }
        check(input.shape().contentEquals(intArrayOf(1, INPUT_SIZE, INPUT_SIZE, 3))) {
            "BlazeFace input shape changed"
        }
        check(interpreter.outputTensorCount == 2) { "BlazeFace output count changed" }
        val regressorShape = intArrayOf(1, NUM_ANCHORS, NUM_COORDS)
        val classifierShape = intArrayOf(1, NUM_ANCHORS, 1)
        regressorOutputIndex = (0 until 2).first { interpreter.getOutputTensor(it).shape().contentEquals(regressorShape) }
        classifierOutputIndex = (0 until 2).first { interpreter.getOutputTensor(it).shape().contentEquals(classifierShape) }
    }

    /** Not thread-safe; call from a single inference thread. */
    fun detect(bitmap: Bitmap): List<Detection> {
        val width = bitmap.width
        val height = bitmap.height
        if (width <= 0 || height <= 0) return emptyList()

        // Letterbox (FIT) into the square model input, keeping the aspect ratio.
        val scale = min(INPUT_SIZE.toFloat() / width, INPUT_SIZE.toFloat() / height)
        val contentWidth = width * scale / INPUT_SIZE
        val contentHeight = height * scale / INPUT_SIZE
        val padX = (1f - contentWidth) * 0.5f
        val padY = (1f - contentHeight) * 0.5f
        dstRect.set(
            padX * INPUT_SIZE,
            padY * INPUT_SIZE,
            (padX + contentWidth) * INPUT_SIZE,
            (padY + contentHeight) * INPUT_SIZE,
        )
        // Software canvases cannot draw hardware bitmaps.
        val drawable = if (bitmap.config == Bitmap.Config.HARDWARE) {
            bitmap.copy(Bitmap.Config.ARGB_8888, false)
                ?: throw IllegalStateException("Unable to convert BlazeFace input bitmap")
        } else {
            bitmap
        }
        inputCanvas.drawColor(Color.BLACK)
        inputCanvas.drawBitmap(drawable, null, dstRect, inputPaint)
        if (drawable !== bitmap) drawable.recycle()
        inputBitmap.getPixels(inputPixels, 0, INPUT_SIZE, 0, 0, INPUT_SIZE, INPUT_SIZE)

        inputBuffer.rewind()
        for (pixel in inputPixels) {
            inputBuffer.putFloat(((pixel shr 16) and 0xFF) / 127.5f - 1f)
            inputBuffer.putFloat(((pixel shr 8) and 0xFF) / 127.5f - 1f)
            inputBuffer.putFloat((pixel and 0xFF) / 127.5f - 1f)
        }
        inputBuffer.rewind()

        interpreter.runForMultipleInputsOutputs(
            arrayOf<Any>(inputBuffer),
            mapOf<Int, Any>(regressorOutputIndex to regressors, classifierOutputIndex to scores),
        )

        val candidates = decode()
        return weightedNonMaxSuppression(candidates).mapNotNull { raw ->
            removeLetterbox(raw, padX, padY, contentWidth, contentHeight)
        }
    }

    private fun decode(): List<RawDetection> {
        val result = ArrayList<RawDetection>()
        val anchorScale = 1f / INPUT_SIZE
        for (i in 0 until NUM_ANCHORS) {
            val logit = scores[0][i][0]
                .coerceIn(-SCORE_CLIPPING_THRESHOLD, SCORE_CLIPPING_THRESHOLD)
            val score = 1f / (1f + exp(-logit))
            if (score < minScore) continue

            // Anchors are laid out row-major with a fixed size of 1x1, so w/h scale is 1.
            val anchorX = (i % GRID_SIZE + 0.5f) / GRID_SIZE
            val anchorY = (i / GRID_SIZE + 0.5f) / GRID_SIZE
            val raw = regressors[0][i]
            val centerX = raw[0] * anchorScale + anchorX
            val centerY = raw[1] * anchorScale + anchorY
            val halfW = raw[2] * anchorScale * 0.5f
            val halfH = raw[3] * anchorScale * 0.5f
            val keypoints = FloatArray(NUM_KEYPOINTS * 2)
            for (k in 0 until NUM_KEYPOINTS) {
                keypoints[k * 2] = raw[KEYPOINT_OFFSET + k * 2] * anchorScale + anchorX
                keypoints[k * 2 + 1] = raw[KEYPOINT_OFFSET + k * 2 + 1] * anchorScale + anchorY
            }
            result += RawDetection(
                xMin = centerX - halfW,
                yMin = centerY - halfH,
                xMax = centerX + halfW,
                yMax = centerY + halfH,
                score = score,
                keypoints = keypoints,
            )
        }
        return result
    }

    /** MediaPipe's WEIGHTED NMS: overlapping boxes are score-weighted into the top-scoring one. */
    private fun weightedNonMaxSuppression(detections: List<RawDetection>): List<RawDetection> {
        var remaining = detections.sortedByDescending { it.score }
        val output = ArrayList<RawDetection>()
        while (remaining.isNotEmpty()) {
            val top = remaining[0]
            val overlapping = ArrayList<RawDetection>()
            val rest = ArrayList<RawDetection>()
            for (candidate in remaining) {
                if (iou(top, candidate) > MIN_SUPPRESSION_THRESHOLD) {
                    overlapping += candidate
                } else {
                    rest += candidate
                }
            }
            output += if (overlapping.size <= 1) {
                top
            } else {
                var totalScore = 0f
                var xMin = 0f
                var yMin = 0f
                var xMax = 0f
                var yMax = 0f
                val keypoints = FloatArray(NUM_KEYPOINTS * 2)
                for (candidate in overlapping) {
                    val weight = candidate.score
                    totalScore += weight
                    xMin += candidate.xMin * weight
                    yMin += candidate.yMin * weight
                    xMax += candidate.xMax * weight
                    yMax += candidate.yMax * weight
                    for (k in keypoints.indices) keypoints[k] += candidate.keypoints[k] * weight
                }
                for (k in keypoints.indices) keypoints[k] /= totalScore
                RawDetection(
                    xMin = xMin / totalScore,
                    yMin = yMin / totalScore,
                    xMax = xMax / totalScore,
                    yMax = yMax / totalScore,
                    score = top.score,
                    keypoints = keypoints,
                )
            }
            remaining = rest
        }
        return output
    }

    private fun iou(a: RawDetection, b: RawDetection): Float {
        val intersectionWidth = min(a.xMax, b.xMax) - max(a.xMin, b.xMin)
        val intersectionHeight = min(a.yMax, b.yMax) - max(a.yMin, b.yMin)
        if (intersectionWidth <= 0f || intersectionHeight <= 0f) return 0f
        val intersection = intersectionWidth * intersectionHeight
        val union = a.area + b.area - intersection
        return if (union > 0f) intersection / union else 0f
    }

    private fun removeLetterbox(
        raw: RawDetection,
        padX: Float,
        padY: Float,
        contentWidth: Float,
        contentHeight: Float,
    ): Detection? {
        if (contentWidth <= 0f || contentHeight <= 0f) return null
        fun mapX(x: Float) = (x - padX) / contentWidth
        fun mapY(y: Float) = (y - padY) / contentHeight
        val keypoints = FloatArray(raw.keypoints.size)
        for (k in 0 until NUM_KEYPOINTS) {
            keypoints[k * 2] = mapX(raw.keypoints[k * 2])
            keypoints[k * 2 + 1] = mapY(raw.keypoints[k * 2 + 1])
        }
        return Detection(
            box = RectF(mapX(raw.xMin), mapY(raw.yMin), mapX(raw.xMax), mapY(raw.yMax)),
            score = raw.score,
            keypoints = keypoints,
        )
    }

    override fun close() {
        interpreter.close()
        inputBitmap.recycle()
    }
}
