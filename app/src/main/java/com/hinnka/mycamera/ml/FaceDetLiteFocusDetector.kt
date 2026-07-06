package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.gpu.CompatibilityList
import org.tensorflow.lite.gpu.GpuDelegate
import org.tensorflow.lite.nnapi.NnApiDelegate
import org.tensorflow.lite.support.common.FileUtil
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.MappedByteBuffer
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.min

class FaceDetLiteFocusDetector(context: Context) {
    data class FaceFocus(
        val x: Float,
        val y: Float,
        val label: String,
        val score: Float,
        val priority: Int,
    )

    private var state: InterpreterState? = null
    private var isInitialized = false
    private val inputBuffer = ByteBuffer.allocateDirect(INPUT_WIDTH * INPUT_HEIGHT).order(ByteOrder.nativeOrder())
    private val heatmapBuffer = ByteBuffer.allocateDirect(HEATMAP_HEIGHT * HEATMAP_WIDTH).order(ByteOrder.nativeOrder())
    private val bboxBuffer = ByteBuffer.allocateDirect(HEATMAP_HEIGHT * HEATMAP_WIDTH * BBOX_SIZE).order(ByteOrder.nativeOrder())
    private val landmarkBuffer = ByteBuffer.allocateDirect(HEATMAP_HEIGHT * HEATMAP_WIDTH * LANDMARK_SIZE).order(ByteOrder.nativeOrder())
    private val pixels = IntArray(INPUT_WIDTH * INPUT_HEIGHT)
    private val outputs = mapOf(0 to heatmapBuffer, 1 to bboxBuffer, 2 to landmarkBuffer)

    init {
        try {
            val modelFile = StartupTrace.measure("FaceDetLiteFocusDetector.loadModel") {
                FileUtil.loadMappedFile(context, MODEL_ASSET)
            }
            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "face_det_lite_focus",
                modelAssetName = MODEL_ASSET,
                modelSizeBytes = modelFile.capacity()
            )
            val compatList = StartupTrace.measure("FaceDetLiteFocusDetector.CompatibilityList") {
                CompatibilityList()
            }
            state = createInterpreterState(modelFile, compatList, delegateCache)
            isInitialized = true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize FaceDetLite focus detector", e)
        }
    }

    fun detect(inputBitmap: Bitmap, minScore: Float): FaceFocus? {
        val activeState = state
        if (!isInitialized || activeState == null) return null

//        val startTimeMs = System.currentTimeMillis()
        return try {
            val input = createInputBuffer(inputBitmap)
            heatmapBuffer.rewind()
            bboxBuffer.rewind()
            landmarkBuffer.rewind()

            activeState.interpreter.runForMultipleInputsOutputs(arrayOf(input), outputs)
            heatmapBuffer.rewind()
            bboxBuffer.rewind()

            val face = decodeBestFace(heatmapBuffer, bboxBuffer, minScore.coerceIn(0.05f, 0.95f))
//            val elapsedMs = System.currentTimeMillis() - startTimeMs
//            if (face != null) {
//                PLog.d(
//                    TAG,
//                    "FaceDetLite focus: backend=${activeState.backend} face=${elapsedMs}ms score=${face.score} x=${face.x} y=${face.y} box=[${face.left},${face.top},${face.right},${face.bottom}]"
//                )
//            } else {
//                logRejectedBestCandidate(heatmap, bbox, activeState.backend, elapsedMs, minScore)
//            }
            face?.toFaceFocus()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed during FaceDetLite detection", e)
            null
        }
    }

    fun close() {
        state?.close()
        state = null
        isInitialized = false
    }

    private fun decodeBestFace(heatmap: ByteBuffer, bbox: ByteBuffer, minScore: Float): FaceCandidate? {
        var best: FaceCandidate? = null
        repeat(HEATMAP_HEIGHT) { row ->
            repeat(HEATMAP_WIDTH) { col ->
                val index = row * HEATMAP_WIDTH + col
                val score = heatmapScore(heatmap.get(index))
                if (score < minScore) return@repeat

                val boxOffset = index * BBOX_SIZE
                val leftDistance = bboxDistance(bbox.get(boxOffset))
                val topDistance = bboxDistance(bbox.get(boxOffset + 1))
                val rightDistance = bboxDistance(bbox.get(boxOffset + 2))
                val bottomDistance = bboxDistance(bbox.get(boxOffset + 3))
                if (leftDistance + rightDistance < MIN_FACE_SIZE_PX ||
                    topDistance + bottomDistance < MIN_FACE_SIZE_PX
                ) {
                    return@repeat
                }

                val centerX = (col + 0.5f) * STRIDE
                val centerY = (row + 0.5f) * STRIDE
                val left = ((centerX - leftDistance) / INPUT_WIDTH).coerceIn(0f, 1f)
                val top = ((centerY - topDistance) / INPUT_HEIGHT).coerceIn(0f, 1f)
                val right = ((centerX + rightDistance) / INPUT_WIDTH).coerceIn(0f, 1f)
                val bottom = ((centerY + bottomDistance) / INPUT_HEIGHT).coerceIn(0f, 1f)
                if (right <= left || bottom <= top) return@repeat

                val candidate = FaceCandidate(left, top, right, bottom, score)
                val currentBest = best
                if (currentBest == null || candidate.score > currentBest.score) {
                    best = candidate
                }
            }
        }
        return best
    }

    private fun logRejectedBestCandidate(
        heatmap: ByteBuffer,
        bbox: ByteBuffer,
        backend: String,
        elapsedMs: Long,
        minScore: Float,
    ) {
        var bestIndex = 0
        var bestScore = -1f
        repeat(HEATMAP_HEIGHT * HEATMAP_WIDTH) { index ->
            val score = heatmapScore(heatmap.get(index))
            if (score > bestScore) {
                bestScore = score
                bestIndex = index
            }
        }
        val row = bestIndex / HEATMAP_WIDTH
        val col = bestIndex % HEATMAP_WIDTH
        val boxOffset = bestIndex * BBOX_SIZE
        val leftDistance = bboxDistance(bbox.get(boxOffset))
        val topDistance = bboxDistance(bbox.get(boxOffset + 1))
        val rightDistance = bboxDistance(bbox.get(boxOffset + 2))
        val bottomDistance = bboxDistance(bbox.get(boxOffset + 3))
        PLog.d(
            TAG,
            "FaceDetLite no face: backend=$backend face=${elapsedMs}ms topScore=$bestScore threshold=$minScore cell=($col,$row) size=${leftDistance + rightDistance}x${topDistance + bottomDistance} distances=[$leftDistance,$topDistance,$rightDistance,$bottomDistance]"
        )
    }

    private fun createInputBuffer(inputBitmap: Bitmap): ByteBuffer {
        val scaled = Bitmap.createScaledBitmap(inputBitmap, INPUT_WIDTH, INPUT_HEIGHT, true)
        scaled.getPixels(pixels, 0, INPUT_WIDTH, 0, 0, INPUT_WIDTH, INPUT_HEIGHT)
        inputBuffer.rewind()
        pixels.forEach { pixel ->
            val r = (pixel shr 16) and 0xFF
            val g = (pixel shr 8) and 0xFF
            val b = pixel and 0xFF
            val gray = (0.299f * r + 0.587f * g + 0.114f * b).toInt().coerceIn(0, 255)
            inputBuffer.put(gray.toByte())
        }
        inputBuffer.rewind()
        return inputBuffer
    }

    private fun createInterpreterState(
        modelFile: MappedByteBuffer,
        compatList: CompatibilityList,
        delegateCache: MlDelegateCache?,
    ): InterpreterState {
        var gpuDelegate: GpuDelegate? = null
        try {
            val options = Interpreter.Options()
            gpuDelegate = StartupTrace.measure("FaceDetLiteFocusDetector.GpuDelegate") {
                if (compatList.isDelegateSupportedOnThisDevice) {
                    val delegateOptions = compatList.bestOptionsForThisDevice
                    delegateCache?.let {
                        delegateOptions.setSerializationParams(
                            it.directory.absolutePath,
                            it.modelToken
                        )
                    }
                    GpuDelegate(delegateOptions)
                } else {
                    val delegateOptions = GpuDelegate.Options()
                    delegateCache?.let {
                        delegateOptions.setSerializationParams(
                            it.directory.absolutePath,
                            it.modelToken
                        )
                    }
                    GpuDelegate(delegateOptions)
                }
            }
            options.addDelegate(gpuDelegate)
            val interpreter = StartupTrace.measure("FaceDetLiteFocusDetector.Interpreter.GPU") {
                Interpreter(modelFile, options)
            }
            PLog.d(TAG, "Using GPU delegate for FaceDetLite focus detector")
            return InterpreterState(interpreter, gpuDelegate, null, "GPU")
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to initialize FaceDetLite with GPU, falling back to NNAPI", e)
            gpuDelegate?.close()
        }

        var nnApiDelegate: NnApiDelegate? = null
        try {
            val options = Interpreter.Options().apply { setNumThreads(2) }
            nnApiDelegate = StartupTrace.measure("FaceDetLiteFocusDetector.NnApiDelegate") {
                val delegateOptions = NnApiDelegate.Options()
                delegateCache?.let {
                    delegateOptions
                        .setCacheDir(it.directory.absolutePath)
                        .setModelToken(it.modelToken)
                }
                NnApiDelegate(delegateOptions)
            }
            options.addDelegate(nnApiDelegate)
            val interpreter = StartupTrace.measure("FaceDetLiteFocusDetector.Interpreter.NNAPI") {
                Interpreter(modelFile, options)
            }
            PLog.d(TAG, "Using NNAPI for FaceDetLite focus detector")
            return InterpreterState(interpreter, null, nnApiDelegate, "NNAPI")
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to initialize FaceDetLite with NNAPI, falling back to CPU", e)
            nnApiDelegate?.close()
        }

        val interpreter = Interpreter(modelFile, Interpreter.Options().apply { setNumThreads(2) })
        PLog.d(TAG, "Using CPU for FaceDetLite focus detector")
        return InterpreterState(interpreter, null, null, "CPU")
    }

    private data class FaceCandidate(
        val left: Float,
        val top: Float,
        val right: Float,
        val bottom: Float,
        val score: Float,
    ) {
        val x: Float get() = ((left + right) * 0.5f).coerceIn(0f, 1f)
        val y: Float get() = (top + (bottom - top) * 0.36f).coerceIn(0f, 1f)

        fun toFaceFocus(): FaceFocus = FaceFocus(
            x = x,
            y = y,
            label = "face",
            score = score,
            priority = PRIORITY_FACE,
        )
    }

    private data class InterpreterState(
        val interpreter: Interpreter,
        val gpuDelegate: GpuDelegate?,
        val nnApiDelegate: NnApiDelegate?,
        val backend: String,
    ) {
        fun close() {
            interpreter.close()
            gpuDelegate?.close()
            nnApiDelegate?.close()
        }
    }

    private fun dequantize(value: Byte, scale: Float, zeroPoint: Int): Float {
        return ((value.toInt() and 0xFF) - zeroPoint) * scale
    }

    private fun heatmapScore(value: Byte): Float {
        val dequantized = dequantize(value, HEATMAP_SCALE, HEATMAP_ZERO_POINT)
        return if (dequantized in 0f..1f) dequantized else sigmoid(dequantized)
    }

    private fun bboxDistance(value: Byte): Float {
        return (dequantize(value, BBOX_SCALE, BBOX_ZERO_POINT) * STRIDE).coerceAtLeast(0f)
    }

    private fun sigmoid(value: Float): Float {
        return (1f / (1f + exp(-value))).coerceIn(0f, 1f)
    }

    companion object {
        private const val TAG = "FaceDetLiteFocusDetector"
        private const val MODEL_ASSET = "face_det_lite.tflite"
        private const val INPUT_WIDTH = 640
        private const val INPUT_HEIGHT = 480
        private const val HEATMAP_WIDTH = 80
        private const val HEATMAP_HEIGHT = 60
        private const val STRIDE = 8f
        private const val BBOX_SIZE = 4
        private const val LANDMARK_SIZE = 10
        private const val PRIORITY_FACE = 4
        private const val MIN_FACE_SIZE_PX = 18f
        private const val HEATMAP_SCALE = 0.026649248f
        private const val HEATMAP_ZERO_POINT = 191
        private const val BBOX_SCALE = 0.27092865f
        private const val BBOX_ZERO_POINT = 10
    }
}
