package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.os.SystemClock
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import com.google.ai.edge.litert.CompiledModel
import com.google.ai.edge.litert.support.common.FileUtil
import com.google.ai.edge.litert.support.tensorbuffer.TensorBuffer
import org.tensorflow.lite.Interpreter
import java.nio.ByteBuffer
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

class DnCNNDenoiseEstimator(
    context: Context,
    private val modelAssetName: String = MODEL_DNCNN,
) {
    private var interpreter: Interpreter? = null
    private val extraCpuInterpreters = mutableListOf<Interpreter>()
    private var gpuModel: LiteRtGpuModel? = null
    private var isInitialized = false
    private var activeBackend = "none"
    private var cpuWorkerCount = 1
    private var cpuThreadsPerInterpreter = 4
    private var inputWidth = 256
    private var inputHeight = 256
    private var outputWidth = 256
    private var outputHeight = 256
    private var inputChannelsFirst = false
    private var outputChannelsFirst = false
    private var isRgbModel = false
    private var outputShape = intArrayOf(1, 256, 256, 1)
    private var outputDataType = org.tensorflow.lite.DataType.FLOAT32
    private val interpreterMutex = Mutex()

    init {
        try {
            val modelFile = StartupTrace.measure("DnCNNDenoiseEstimator.loadMappedFile") {
                FileUtil.loadMappedFile(context, modelAssetName)
            }
            // Tensor dimensions are read from the plain interpreter: the compiled model
            // exposes buffer sizes but not shapes.
            Interpreter(modelFile, Interpreter.Options().setUseXNNPACK(false)).use(::updateTensorDimensions)
            val elementCount = inputWidth * inputHeight * if (isRgbModel) 3 else 1

            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "dncnn_denoise_litert",
                modelAssetName = modelAssetName,
                modelSizeBytes = modelFile.capacity()
            )

            try {
                gpuModel = StartupTrace.measure("DnCNNDenoiseEstimator.CompiledModel(GPU)") {
                    LiteRtGpuModel.fromAsset(
                        context = context,
                        assetName = modelAssetName,
                        cache = delegateCache,
                        precision = CompiledModel.GpuOptions.Precision.DEFAULT,
                        inputElementCount = elementCount,
                        outputElementCount = outputWidth * outputHeight * if (isRgbModel) 3 else 1,
                    )
                }
                isInitialized = true
                activeBackend = "GPU"
                PLog.d(TAG, "Using LiteRT GPU for DnCNN Denoise: $modelAssetName")
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to initialize LiteRT GPU, falling back to CPU", e)
            }

            // Fallback to CPU
            if (!isInitialized) {
                configureCpuParallelism()
                val cpuOptions = createCpuOptions(cpuThreadsPerInterpreter)
                interpreter = StartupTrace.measure("DnCNNDenoiseEstimator.Interpreter(CPU)") {
                    Interpreter(modelFile, cpuOptions)
                }
                isInitialized = true
                activeBackend = "CPU"
                PLog.d(
                    TAG,
                    "Using CPU for DnCNN Denoise: $modelAssetName workers=$cpuWorkerCount threadsPerInterpreter=$cpuThreadsPerInterpreter xnnpack=true"
                )
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Error initializing DnCNNDenoiseEstimator: $modelAssetName", e)
        }
    }

    private fun configureCpuParallelism() {
        cpuWorkerCount = 1
        cpuThreadsPerInterpreter = 4
    }

    private fun createCpuOptions(numThreads: Int): Interpreter.Options {
        return Interpreter.Options().apply {
            setNumThreads(numThreads)
            setUseXNNPACK(true)
        }
    }

    private fun updateTensorDimensions(interpreter: Interpreter) {
        val inputShape = interpreter.getInputTensor(0).shape()
        val outputShape = interpreter.getOutputTensor(0).shape()
        this.outputShape = outputShape
        outputDataType = interpreter.getOutputTensor(0).dataType()
        isRgbModel = inputShape.last() == 3 || (inputShape.size == 4 && inputShape[1] == 3)

        // typically [1, 1, H, W] or [1, H, W, 1]
        inputChannelsFirst = inputShape.size == 4 && (inputShape[1] == 1 || inputShape[1] == 3)
        outputChannelsFirst = outputShape.size == 4 && (outputShape[1] == 1 || outputShape[1] == 3)
        if (inputShape.size == 4 && inputShape[3] == 1) {
            inputHeight = inputShape[1]
            inputWidth = inputShape[2]
        } else if (inputChannelsFirst) {
            inputHeight = inputShape[2]
            inputWidth = inputShape[3]
        } else if (inputShape.size == 4 && inputShape[3] == 3) {
            inputHeight = inputShape[1]
            inputWidth = inputShape[2]
        } else {
            PLog.w(TAG, "Unexpected input shape: ${inputShape.contentToString()}")
        }

        if (outputShape.size == 4 && outputShape[3] == 1) {
            outputHeight = outputShape[1]
            outputWidth = outputShape[2]
        } else if (outputChannelsFirst) {
            outputHeight = outputShape[2]
            outputWidth = outputShape[3]
        } else {
            val outputDims = outputShape.filter { it > 1 }
            if (outputDims.size >= 2) {
                outputHeight = outputDims[outputDims.size - 2]
                outputWidth = outputDims[outputDims.size - 1]
            }
        }

        PLog.d(
            TAG,
            "DnCNN model ready: asset=$modelAssetName input=${inputWidth}x$inputHeight output=${outputWidth}x$outputHeight inputLayout=${if (inputChannelsFirst) "NCHW" else "NHWC"} outputLayout=${if (outputChannelsFirst) "NCHW" else "NHWC"} inputType=${interpreter.getInputTensor(0).dataType()} outputType=${interpreter.getOutputTensor(0).dataType()} inputShape=${inputShape.contentToString()} outputShape=${outputShape.contentToString()}"
        )
    }

    private external fun preprocessNative(
        bitmap: Bitmap,
        x: Int,
        y: Int,
        w: Int,
        h: Int,
        outBuffer: ByteBuffer,
        isRgb: Boolean,
        channelsFirst: Boolean
    )

    private external fun postprocessNative(
        inBuffer: ByteBuffer,
        srcBitmap: Bitmap,
        dstBitmap: Bitmap,
        patchX: Int,
        patchY: Int,
        srcX: Int,
        srcY: Int,
        dstX: Int,
        dstY: Int,
        w: Int,
        h: Int,
        patchW: Int,
        patchH: Int,
        strength: Float,
        isRgb: Boolean,
        channelsFirst: Boolean
    )

    /**
     * Denoises a single-channel (Grayscale) Luma component or RGB image.
     * [strength] (0.0 to 1.0) controls the blending with the original image.
     */
    suspend fun denoise(inputBitmap: Bitmap, strength: Float = 1.0f): Bitmap? {
        if (!isInitialized) {
            PLog.e(TAG, "DnCNNDenoiseEstimator is not initialized")
            return null
        }

        try {
            val isRgb = isRgbModel
            val channels = if (isRgb) 3 else 1
            val buffer = LargeDirectBuffer.allocate(
                inputWidth.toLong() * inputHeight.toLong() * channels.toLong() * 4L,
                "DnCNN denoise input"
            ) ?: return null
            try {

                preprocessNative(inputBitmap, 0, 0, inputWidth, inputHeight, buffer, isRgb, inputChannelsFirst)

                val outputBuffer = TensorBuffer.createFixedSize(outputShape, outputDataType)

                StartupTrace.measure("DnCNNDenoiseEstimator.run") {
                    interpreterMutex.withLock {
                        runInference(buffer, outputBuffer.buffer)
                    }
                }

                val resultBitmap = Bitmap.createBitmap(outputWidth, outputHeight, Bitmap.Config.ARGB_8888)
                postprocessNative(
                    outputBuffer.buffer,
                    inputBitmap,
                    resultBitmap,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    outputWidth,
                    outputHeight,
                    outputWidth,
                    outputHeight,
                    strength,
                    isRgb,
                    outputChannelsFirst
                )
            
                return resultBitmap
            } finally {
                LargeDirectBuffer.free(buffer)
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Error during DnCNN denoise", e)
            return null
        }
    }

    /**
     * Denoises the full image by splitting it into patches, processing them separately,
     * and stitching them back together. This preserves the original resolution.
     */
    suspend fun denoisePatchwise(
        inputBitmap: Bitmap,
        strength: Float = 1.0f,
        onProgress: ((Float) -> Unit)? = null
    ): Bitmap? = coroutineScope {
        if (!isInitialized) {
            PLog.e(TAG, "DnCNNDenoiseEstimator is not initialized")
            return@coroutineScope null
        }

        val width = inputBitmap.width
        val height = inputBitmap.height
        val resultBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        val overlap = 4
        val strideX = inputWidth - 2 * overlap
        val strideY = inputHeight - 2 * overlap

        val totalSteps = ((height + strideY - 1) / strideY) * ((width + strideX - 1) / strideX)
        var completedSteps = 0

        val isRgb = isRgbModel
        val channels = if (isRgb) 3 else 1
        var preprocessMs = 0L
        var inferenceMs = 0L
        var postprocessMs = 0L
        val totalStartMs = SystemClock.elapsedRealtime()
        val patchTasks = mutableListOf<DenoisePatchTask>()

        for (dstY in 0 until height step strideY) {
            for (dstX in 0 until width step strideX) {
                val validW = Math.min(width - dstX, strideX)
                val validH = Math.min(height - dstY, strideY)

                val cx = dstX + validW / 2
                val cy = dstY + validH / 2

                var startX = cx - inputWidth / 2
                var startY = cy - inputHeight / 2

                // clamp to image bounds
                if (startX < 0) startX = 0
                if (startY < 0) startY = 0
                if (startX + inputWidth > width) startX = (width - inputWidth).coerceAtLeast(0)
                if (startY + inputHeight > height) startY = (height - inputHeight).coerceAtLeast(0)

                patchTasks += DenoisePatchTask(
                    startX = startX,
                    startY = startY,
                    dstX = dstX,
                    dstY = dstY,
                    validW = validW,
                    validH = validH
                )
            }
        }

        val cpuInterpreters = if (activeBackend == "CPU" && extraCpuInterpreters.isNotEmpty()) {
            listOfNotNull(interpreter) + extraCpuInterpreters
        } else {
            emptyList()
        }

        if (cpuInterpreters.isNotEmpty()) {
            val nextPatch = AtomicInteger(0)
            val completedPatches = AtomicInteger(0)
            val preprocessTotalMs = AtomicLong(0L)
            val inferenceTotalMs = AtomicLong(0L)
            val postprocessTotalMs = AtomicLong(0L)
            val bitmapMutex = Mutex()

            cpuInterpreters.map { workerInterpreter ->
                async(Dispatchers.Default) {
                    val buffer = LargeDirectBuffer.allocate(
                        inputWidth.toLong() * inputHeight.toLong() * channels.toLong() * 4L,
                        "DnCNN worker input"
                    ) ?: throw OutOfMemoryError("Failed to allocate DnCNN worker input buffer")
                    val outBuffer = TensorBuffer.createFixedSize(outputShape, outputDataType)
                    try {
                        while (true) {
                            val patchIndex = nextPatch.getAndIncrement()
                            if (patchIndex >= patchTasks.size) break

                            val task = patchTasks[patchIndex]
                            var stageStartMs = SystemClock.elapsedRealtime()
                            bitmapMutex.withLock {
                                preprocessNative(inputBitmap, task.startX, task.startY, inputWidth, inputHeight, buffer, isRgb, inputChannelsFirst)
                            }
                            preprocessTotalMs.addAndGet(SystemClock.elapsedRealtime() - stageStartMs)

                            stageStartMs = SystemClock.elapsedRealtime()
                            buffer.rewind()
                            outBuffer.buffer.rewind()
                            workerInterpreter.run(buffer, outBuffer.buffer)
                            inferenceTotalMs.addAndGet(SystemClock.elapsedRealtime() - stageStartMs)

                            stageStartMs = SystemClock.elapsedRealtime()
                            bitmapMutex.withLock {
                                postprocessNative(
                                    outBuffer.buffer, inputBitmap, resultBitmap,
                                    task.dstX - task.startX, task.dstY - task.startY,
                                    task.dstX, task.dstY,
                                    task.dstX, task.dstY,
                                    task.validW, task.validH,
                                    outputWidth, outputHeight,
                                    strength, isRgb, outputChannelsFirst
                                )
                            }
                            postprocessTotalMs.addAndGet(SystemClock.elapsedRealtime() - stageStartMs)

                            val progress = completedPatches.incrementAndGet().toFloat() / totalSteps
                            onProgress?.invoke(progress)
                        }
                    } finally {
                        LargeDirectBuffer.free(buffer)
                    }
                }
            }.awaitAll()

            completedSteps = completedPatches.get()
            preprocessMs = preprocessTotalMs.get()
            inferenceMs = inferenceTotalMs.get()
            postprocessMs = postprocessTotalMs.get()
        } else {
            val buffer = LargeDirectBuffer.allocate(
                inputWidth.toLong() * inputHeight.toLong() * channels.toLong() * 4L,
                "DnCNN patch input"
            ) ?: return@coroutineScope null
            val outBuffer = TensorBuffer.createFixedSize(outputShape, outputDataType)

            try {
                for (task in patchTasks) {
                    var stageStartMs = SystemClock.elapsedRealtime()
                    preprocessNative(inputBitmap, task.startX, task.startY, inputWidth, inputHeight, buffer, isRgb, inputChannelsFirst)
                    preprocessMs += SystemClock.elapsedRealtime() - stageStartMs

                    stageStartMs = SystemClock.elapsedRealtime()
                    StartupTrace.measure("DnCNNDenoiseEstimator.run") {
                        interpreterMutex.withLock {
                            runInference(buffer, outBuffer.buffer)
                        }
                    }
                    inferenceMs += SystemClock.elapsedRealtime() - stageStartMs

                    stageStartMs = SystemClock.elapsedRealtime()
                    postprocessNative(
                        outBuffer.buffer, inputBitmap, resultBitmap,
                        task.dstX - task.startX, task.dstY - task.startY,
                        task.dstX, task.dstY,
                        task.dstX, task.dstY,
                        task.validW, task.validH,
                        outputWidth, outputHeight,
                        strength, isRgb, outputChannelsFirst
                    )
                    postprocessMs += SystemClock.elapsedRealtime() - stageStartMs

                    completedSteps++
                    onProgress?.invoke(completedSteps.toFloat() / totalSteps)
                }
            } finally {
                LargeDirectBuffer.free(buffer)
            }
        }

        val totalMs = SystemClock.elapsedRealtime() - totalStartMs
        PLog.d(
            TAG,
            "DnCNN patchwise finished: backend=$activeBackend image=${width}x${height} patches=$completedSteps patch=${inputWidth}x$inputHeight stride=${strideX}x$strideY total=${totalMs}ms preprocess=${preprocessMs}ms inference=${inferenceMs}ms postprocess=${postprocessMs}ms layout=${if (inputChannelsFirst) "NCHW" else "NHWC"}->${if (outputChannelsFirst) "NCHW" else "NHWC"} rgb=$isRgb"
        )

        return@coroutineScope resultBitmap
    }

    /** Runs one patch on the active backend; both buffers hold FLOAT32 tensors. */
    private fun runInference(input: ByteBuffer, output: ByteBuffer) {
        input.rewind()
        output.rewind()
        val gpu = gpuModel
        if (gpu != null) {
            val inputValues = FloatArray(input.capacity() / Float.SIZE_BYTES)
            input.asFloatBuffer().get(inputValues)
            output.asFloatBuffer().put(gpu.run(inputValues))
        } else {
            interpreter?.run(input, output)
        }
    }

    fun close() {
        interpreter?.close()
        interpreter = null
        gpuModel?.close()
        gpuModel = null
        extraCpuInterpreters.forEach { it.close() }
        extraCpuInterpreters.clear()
        isInitialized = false
    }

    companion object {
        private const val TAG = "DnCNNDenoiseEstimator"
        const val MODEL_DNCNN = "dncnn.tflite"

        init {
            System.loadLibrary("my-native-lib")
        }
    }

    enum class Backend {
        AUTO,
        GPU,
        CPU
    }

    private data class DenoisePatchTask(
        val startX: Int,
        val startY: Int,
        val dstX: Int,
        val dstY: Int,
        val validW: Int,
        val validH: Int
    )
}
