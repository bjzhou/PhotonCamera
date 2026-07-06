package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.data.AiFocusTargetMode
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.gpu.CompatibilityList
import org.tensorflow.lite.gpu.GpuDelegate
import org.tensorflow.lite.nnapi.NnApiDelegate
import org.tensorflow.lite.support.common.FileUtil
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.max

class YoloXObjectDetector(context: Context) {
    data class Detection(
        val label: String,
        val score: Float,
        val left: Float,
        val top: Float,
        val right: Float,
        val bottom: Float,
        val priority: Int,
    ) {
        val centerX: Float get() = ((left + right) * 0.5f).coerceIn(0f, 1f)
        val centerY: Float get() = ((top + bottom) * 0.5f).coerceIn(0f, 1f)
        val focusX: Float get() = centerX
        val focusY: Float get() = (top + (bottom - top) * focusYOffset).coerceIn(0f, 1f)
        val area: Float get() = max(0f, right - left) * max(0f, bottom - top)

        private val focusYOffset: Float
            get() = when (priority) {
                3 -> 0.28f
                2 -> 0.38f
                else -> 0.5f
            }
    }

    private var interpreter: Interpreter? = null
    private var gpuDelegate: GpuDelegate? = null
    private var nnApiDelegate: NnApiDelegate? = null
    private var isInitialized = false
    private var activeBackend = "NONE"
    private val labels: List<String>
    private val inputBuffer = ByteBuffer.allocateDirect(INPUT_SIZE * INPUT_SIZE * 3).order(ByteOrder.nativeOrder())
    private val boxesBuffer = ByteBuffer.allocateDirect(DETECTION_COUNT * 4).order(ByteOrder.nativeOrder())
    private val scoresBuffer = ByteBuffer.allocateDirect(DETECTION_COUNT).order(ByteOrder.nativeOrder())
    private val classIdxBuffer = ByteBuffer.allocateDirect(DETECTION_COUNT).order(ByteOrder.nativeOrder())
    private val pixels = IntArray(INPUT_SIZE * INPUT_SIZE)
    private val byteBufferArray = ByteArray(INPUT_SIZE * INPUT_SIZE * 3)
    private val outputs = mapOf(0 to boxesBuffer, 1 to scoresBuffer, 2 to classIdxBuffer)

    @Volatile
    var targetMode: AiFocusTargetMode = AiFocusTargetMode.OFF

    @Volatile
    var scoreThreshold: Float = 0.5f

    init {
        labels = runCatching {
            context.assets.open(LABELS_ASSET).bufferedReader().use { it.readLines() }
        }.getOrElse {
            PLog.e(TAG, "Failed to load YOLOX labels", it)
            emptyList()
        }

        try {
            val modelFile = StartupTrace.measure("YoloXObjectDetector.loadMappedFile") {
                FileUtil.loadMappedFile(context, MODEL_ASSET)
            }
            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "yolox_object",
                modelAssetName = MODEL_ASSET,
                modelSizeBytes = modelFile.capacity()
            )

            val compatList = StartupTrace.measure("YoloXObjectDetector.CompatibilityList") {
                CompatibilityList()
            }

            try {
                val gpuOptions = Interpreter.Options()
                gpuDelegate = StartupTrace.measure("YoloXObjectDetector.GpuDelegate") {
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
                gpuOptions.addDelegate(gpuDelegate)
                interpreter = StartupTrace.measure("YoloXObjectDetector.Interpreter.GPU") {
                    Interpreter(modelFile, gpuOptions)
                }
                activeBackend = "GPU"
                PLog.d(TAG, "Using GPU delegate for YOLOX object detector")
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to initialize YOLOX with GPU, falling back to NNAPI", e)
                gpuDelegate?.close()
                gpuDelegate = null
            }

            if (interpreter == null) {
                val nnApiOptions = Interpreter.Options().apply {
                    setNumThreads(2)
                }
                nnApiDelegate = StartupTrace.measure("YoloXObjectDetector.NnApiDelegate") {
                    val delegateOptions = NnApiDelegate.Options()
                    delegateCache?.let {
                        delegateOptions
                            .setCacheDir(it.directory.absolutePath)
                            .setModelToken(it.modelToken)
                    }
                    NnApiDelegate(delegateOptions)
                }
                nnApiOptions.addDelegate(nnApiDelegate)
                try {
                    interpreter = StartupTrace.measure("YoloXObjectDetector.Interpreter.NNAPI") {
                        Interpreter(modelFile, nnApiOptions)
                    }
                    activeBackend = "NNAPI"
                    PLog.d(TAG, "Using NNAPI for YOLOX object detector")
                } catch (e: Exception) {
                    PLog.w(TAG, "Failed to initialize YOLOX with NNAPI, falling back to CPU", e)
                    nnApiDelegate?.close()
                    nnApiDelegate = null
                }
            }

            if (interpreter == null) {
                interpreter = Interpreter(modelFile, Interpreter.Options().apply { setNumThreads(4) })
                activeBackend = "CPU"
                PLog.d(TAG, "Using CPU for YOLOX object detector")
            }

            isInitialized = true
        } catch (e: Exception) {
            PLog.e(TAG, "Error initializing YOLOX object detector", e)
        }
    }

    fun detect(inputBitmap: Bitmap): List<Detection> {
        val activeInterpreter = interpreter
        if (!isInitialized || activeInterpreter == null) {
            PLog.e(TAG, "YOLOX object detector is not initialized")
            return emptyList()
        }

        return try {
            val input = createInputBuffer(inputBitmap)
            boxesBuffer.rewind()
            scoresBuffer.rewind()
            classIdxBuffer.rewind()

            activeInterpreter.runForMultipleInputsOutputs(arrayOf(input), outputs)
            val detections = parseDetections(boxesBuffer, scoresBuffer, classIdxBuffer)
            detections
        } catch (e: Exception) {
            PLog.e(TAG, "Error during YOLOX inference", e)
            emptyList()
        }
    }

    fun close() {
        interpreter?.close()
        interpreter = null
        gpuDelegate?.close()
        gpuDelegate = null
        nnApiDelegate?.close()
        nnApiDelegate = null
        isInitialized = false
        activeBackend = "NONE"
    }

    private fun createInputBuffer(inputBitmap: Bitmap): ByteBuffer {
        val scaled = if (inputBitmap.width == INPUT_SIZE && inputBitmap.height == INPUT_SIZE) {
            inputBitmap
        } else {
            Bitmap.createScaledBitmap(inputBitmap, INPUT_SIZE, INPUT_SIZE, true)
        }
        scaled.getPixels(pixels, 0, INPUT_SIZE, 0, 0, INPUT_SIZE, INPUT_SIZE)
        inputBuffer.rewind()
        var byteIdx = 0
        for (pixel in pixels) {
            byteBufferArray[byteIdx++] = ((pixel shr 16) and 0xFF).toByte()
            byteBufferArray[byteIdx++] = ((pixel shr 8) and 0xFF).toByte()
            byteBufferArray[byteIdx++] = (pixel and 0xFF).toByte()
        }
        inputBuffer.put(byteBufferArray)
        inputBuffer.rewind()
        return inputBuffer
    }

    private fun parseDetections(
        boxes: ByteBuffer,
        scores: ByteBuffer,
        classIdx: ByteBuffer,
    ): List<Detection> {
        boxes.rewind()
        scores.rewind()
        classIdx.rewind()

        val detections = ArrayList<Detection>()
        repeat(DETECTION_COUNT) { index ->
            val score = dequantize(scores.get(index), SCORE_SCALE, SCORE_ZERO_POINT)
            if (score < scoreThreshold) return@repeat

            val labelIndex = classIdx.get(index).toInt() and 0xFF
            val priority = priorityForClass(labelIndex, targetMode)
            if (priority == 0) return@repeat

            val boxOffset = index * 4
            val left = dequantize(boxes.get(boxOffset), BOX_SCALE, BOX_ZERO_POINT) / INPUT_SIZE
            val top = dequantize(boxes.get(boxOffset + 1), BOX_SCALE, BOX_ZERO_POINT) / INPUT_SIZE
            val right = dequantize(boxes.get(boxOffset + 2), BOX_SCALE, BOX_ZERO_POINT) / INPUT_SIZE
            val bottom = dequantize(boxes.get(boxOffset + 3), BOX_SCALE, BOX_ZERO_POINT) / INPUT_SIZE
            if (right <= left || bottom <= top) return@repeat

            detections += Detection(
                label = labels.getOrElse(labelIndex) { labelIndex.toString() },
                score = score,
                left = left.coerceIn(0f, 1f),
                top = top.coerceIn(0f, 1f),
                right = right.coerceIn(0f, 1f),
                bottom = bottom.coerceIn(0f, 1f),
                priority = priority,
            )
        }
        return detections
    }

    private fun dequantize(value: Byte, scale: Float, zeroPoint: Int): Float {
        return ((value.toInt() and 0xFF) - zeroPoint) * scale
    }

    private fun priorityForClass(classIndex: Int, mode: AiFocusTargetMode): Int {
        return when (mode) {
            AiFocusTargetMode.OFF -> 0
            AiFocusTargetMode.AUTO -> when (classIndex) {
                PERSON_CLASS -> 3
                BIRD_CLASS -> 2
                in ANIMAL_CLASSES -> 2
                in VEHICLE_CLASSES -> 1
                else -> 0
            }
            AiFocusTargetMode.PERSON -> if (classIndex == PERSON_CLASS) 3 else 0
            AiFocusTargetMode.FACE -> if (classIndex == PERSON_CLASS) 3 else 0
            AiFocusTargetMode.ANIMAL -> if (classIndex in ANIMAL_CLASSES) 2 else 0
            AiFocusTargetMode.BIRD -> if (classIndex == BIRD_CLASS) 2 else 0
            AiFocusTargetMode.VEHICLE -> if (classIndex in GROUND_VEHICLE_CLASSES) 1 else 0
            AiFocusTargetMode.AIRPLANE -> if (classIndex == AIRPLANE_CLASS) 1 else 0
        }
    }

    companion object {
        private const val TAG = "YoloXObjectDetector"
        private const val MODEL_ASSET = "yolox.tflite"
        private const val LABELS_ASSET = "labels.txt"
        private const val INPUT_SIZE = 640
        private const val DETECTION_COUNT = 8400
        private const val BOX_SCALE = 4.4156656f
        private const val BOX_ZERO_POINT = 51
        private const val SCORE_SCALE = 0.0038128477f
        private const val SCORE_ZERO_POINT = 0
        private const val PERSON_CLASS = 0
        private const val BIRD_CLASS = 14
        private const val AIRPLANE_CLASS = 4
        private val ANIMAL_CLASSES = setOf(15, 16, 17, 18, 19, 20, 21, 22, 23)
        private val GROUND_VEHICLE_CLASSES = setOf(1, 2, 3, 5, 6, 7, 8)
        private val VEHICLE_CLASSES = GROUND_VEHICLE_CLASSES + AIRPLANE_CLASS
    }
}
