package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.nnapi.NnApiDelegate
import org.tensorflow.lite.support.tensorbuffer.TensorBuffer
import java.io.FileInputStream
import java.nio.ByteBuffer

class DepthEstimator(context: Context) {
    private var interpreter: Interpreter? = null
    private var nnApiDelegate: NnApiDelegate? = null
    private var isInitialized = false
    private var inputWidth = 518
    private var inputHeight = 518
    private var outputWidth = 518
    private var outputHeight = 518
    private var inputChannelsFirst = false
    internal val isReady: Boolean
        get() = isInitialized

    init {
        val modelFile = DepthModelManager.requireInstalledModelFile(context)
        try {
            val modelBuffer = StartupTrace.measure("DepthEstimator.mapModelFile") {
                FileInputStream(modelFile).channel.use { channel ->
                    channel.map(
                        java.nio.channels.FileChannel.MapMode.READ_ONLY,
                        0L,
                        channel.size()
                    )
                }
            }
            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "depth_estimator",
                modelAssetName = modelFile.name,
                modelSizeBytes = modelBuffer.capacity(),
                modelFingerprint = DepthModelManager.MODEL_SHA256
            )

            // The GPU delegate is deliberately not used: this model can compile but
            // produce a constant map on affected Qualcomm GLES drivers.
            PLog.d(TAG, "Depth Anything V2: trying NNAPI first")
            try {
                val nnApiOptions = Interpreter.Options()
                nnApiDelegate = StartupTrace.measure("DepthEstimator.NnApiDelegate()") {
                    val delegateOptions = NnApiDelegate.Options()
                    delegateCache?.let {
                        delegateOptions
                            .setCacheDir(it.directory.absolutePath)
                            .setModelToken(it.modelToken)
                    }
                    NnApiDelegate(delegateOptions)
                }
                StartupTrace.measure("DepthEstimator.nnApiOptions.addDelegate") {
                    nnApiOptions.addDelegate(nnApiDelegate)
                }
                interpreter = StartupTrace.measure("DepthEstimator.Interpreter(NNAPI)") {
                    Interpreter(modelBuffer, nnApiOptions)
                }
                isInitialized = true
                PLog.d(TAG, "Using NNAPI (NPU) for Depth Anything V2")
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to initialize NNAPI delegate, falling back to CPU", e)
                nnApiDelegate?.close()
                nnApiDelegate = null
            }

            // Fallback to CPU
            if (!isInitialized) {
                val cpuOptions = Interpreter.Options()
                cpuOptions.setNumThreads(4)
                interpreter = StartupTrace.measure("DepthEstimator.Interpreter(CPU)") {
                    Interpreter(modelBuffer, cpuOptions)
                }
                isInitialized = true
                PLog.d(TAG, "Using CPU for Depth Anything V2")
            }

            interpreter?.let {
                updateTensorDimensions(it)
            }
        } catch (e: Exception) {
            close()
            PLog.e(TAG, "Error initializing Depth Anything V2", e)
        }
    }

    /**
     * Estimates depth for the given bitmap.
     * @param inputBitmap Original image bitmap.
     * @return Floating-point relative depth at the model output resolution, or null if failed.
     */
    fun estimateDepth(inputBitmap: Bitmap): RelativeDepthMap? {
        if (!isInitialized || interpreter == null) {
            PLog.e(TAG, "DepthEstimator is not initialized")
            return null
        }

        var modelInputBitmap: Bitmap? = null
        try {
            // 1. Get input/output metadata
            val inputTensor = interpreter!!.getInputTensor(0)
            val outputTensor = interpreter!!.getOutputTensor(0)
            val inputDataType = inputTensor.dataType()
            val outputDataType = outputTensor.dataType()

            // 2. Preprocess the input image
            val preparedInput = prepareModelInputBitmap(inputBitmap)
            modelInputBitmap = preparedInput
            val inputBuffer = createDepthAnythingInputBuffer(preparedInput, inputDataType)

            // 3. Prepare the output buffer
            val outputBuffer = TensorBuffer.createFixedSize(outputTensor.shape(), outputDataType)

            try {
                // 4. Run inference
                interpreter?.run(inputBuffer, outputBuffer.buffer)

                // 5. Normalize without quantizing the model output.
                return if (outputDataType == DataType.FLOAT32) {
                    convertOutputToDepthMap(outputBuffer.floatArray, outputWidth, outputHeight)
                } else {
                    // If quantized output, convert to float first or handle UINT8 directly
                    val floatArray = FloatArray(outputBuffer.flatSize)
                    if (outputDataType == DataType.UINT8 || outputDataType == DataType.INT8) {
                        val byteBuffer = outputBuffer.buffer
                        byteBuffer.rewind()
                        val bytes = ByteArray(outputBuffer.flatSize)
                        byteBuffer.get(bytes)
                        for (i in bytes.indices) {
                            floatArray[i] = if (outputDataType == DataType.UINT8) {
                                (bytes[i].toInt() and 0xFF).toFloat()
                            } else {
                                bytes[i].toFloat()
                            }
                        }
                    }
                    convertOutputToDepthMap(floatArray, outputWidth, outputHeight)
                }
            } finally {
                LargeDirectBuffer.free(inputBuffer)
            }
            
        } catch (e: Exception) {
            PLog.e(TAG, "Error during Depth Anything V2 inference", e)
            return null
        } finally {
            modelInputBitmap?.let { bitmap ->
                if (bitmap !== inputBitmap && !bitmap.isRecycled) {
                    bitmap.recycle()
                }
            }
        }
    }

    /**
     * Depth models consume a small, display-referred RGB guide. Convert and resize
     * in one Canvas draw so RGBA_F16 captures never create a full-resolution
     * ARGB_8888 intermediate bitmap.
     */
    private fun prepareModelInputBitmap(inputBitmap: Bitmap): Bitmap {
        if (
            inputBitmap.config == Bitmap.Config.ARGB_8888 &&
            inputBitmap.width == inputWidth &&
            inputBitmap.height == inputHeight
        ) {
            return inputBitmap
        }

        return Bitmap.createBitmap(inputWidth, inputHeight, Bitmap.Config.ARGB_8888).also { output ->
            Canvas(output).drawBitmap(
                inputBitmap,
                null,
                Rect(0, 0, inputWidth, inputHeight),
                Paint(Paint.FILTER_BITMAP_FLAG),
            )
        }
    }

    private fun createDepthAnythingInputBuffer(inputBitmap: Bitmap, inputDataType: DataType): ByteBuffer {
        if (inputDataType != DataType.FLOAT32) {
            throw IllegalArgumentException("Depth Anything V2 input type is not FLOAT32: $inputDataType")
        }

        val resized = if (inputBitmap.width == inputWidth && inputBitmap.height == inputHeight) {
            inputBitmap
        } else {
            Bitmap.createScaledBitmap(inputBitmap, inputWidth, inputHeight, true)
        }
        val pixels = IntArray(inputWidth * inputHeight)
        resized.getPixels(pixels, 0, inputWidth, 0, 0, inputWidth, inputHeight)
        if (resized !== inputBitmap) {
            resized.recycle()
        }

        val buffer = LargeDirectBuffer.allocate(
            inputWidth.toLong() * inputHeight.toLong() * 3L * 4L,
            "Depth Anything input"
        ) ?: throw OutOfMemoryError("Failed to allocate Depth Anything input buffer")
        fun channelValue(pixel: Int, channel: Int): Float {
            return when (channel) {
                0 -> (pixel shr 16) and 0xFF
                1 -> (pixel shr 8) and 0xFF
                else -> pixel and 0xFF
            } / 255.0f
        }

        if (inputChannelsFirst) {
            for (channel in 0 until 3) {
                for (pixel in pixels) {
                    buffer.putFloat(channelValue(pixel, channel))
                }
            }
        } else {
            for (pixel in pixels) {
                buffer.putFloat(channelValue(pixel, 0))
                buffer.putFloat(channelValue(pixel, 1))
                buffer.putFloat(channelValue(pixel, 2))
            }
        }
        buffer.rewind()
        return buffer
    }

    /**
     * Normalizes relative depth while preserving floating-point precision.
     */
    private fun convertOutputToDepthMap(
        outputArray: FloatArray,
        width: Int,
        height: Int,
    ): RelativeDepthMap {
        val normalizedValues = FloatArray(width * height)
        if (outputArray.isEmpty()) return RelativeDepthMap(width, height, normalizedValues)

        val validValues = FloatArray(outputArray.size)
        var validCount = 0
        for (value in outputArray) {
            if (value.isFinite()) {
                validValues[validCount++] = value
            }
        }

        if (validCount == 0) {
            PLog.e(TAG, "Depth output has no finite values")
            return RelativeDepthMap(width, height, normalizedValues)
        }

        validValues.sort(0, validCount)
        val clipPercentile = 0.02f
        val loIndex = (validCount * clipPercentile).toInt().coerceIn(0, validCount - 1)
        val hiIndex = (validCount * (1.0f - clipPercentile)).toInt().coerceIn(0, validCount - 1)

        var min = validValues[loIndex]
        var max = validValues[hiIndex]
        
        if (min >= max) {
            min = validValues[0]
            max = validValues[validCount - 1]
        }

        val range = max - min
        val finalRange = if (range <= 0f) 1f else range // avoid division by zero
//        PLog.d(TAG, "Depth output range: min=$min max=$max range=$range valid=$validCount")

        val limit = minOf(outputArray.size, normalizedValues.size)
        for (i in 0 until limit) {
            val value = if (outputArray[i].isFinite()) outputArray[i] else min
            normalizedValues[i] = ((value - min) / finalRange).coerceIn(0.0f, 1.0f)
        }
        return RelativeDepthMap(width, height, normalizedValues)
    }

    private fun updateTensorDimensions(interpreter: Interpreter) {
        val inputShape = interpreter.getInputTensor(0).shape()
        val outputShape = interpreter.getOutputTensor(0).shape()

        inputChannelsFirst = inputShape.size == 4 && inputShape[1] == 3
        if (inputShape.size == 4 && inputShape[3] == 3) {
            inputHeight = inputShape[1]
            inputWidth = inputShape[2]
        } else if (inputChannelsFirst) {
            inputHeight = inputShape[2]
            inputWidth = inputShape[3]
        } else {
            PLog.w(TAG, "Unexpected depth input shape: ${inputShape.contentToString()}")
        }

        val outputDims = outputShape.filter { it > 1 }
        if (outputDims.size >= 2) {
            outputHeight = outputDims[outputDims.size - 2]
            outputWidth = outputDims[outputDims.size - 1]
        } else if (outputDims.size == 1) {
            val side = kotlin.math.sqrt(outputDims[0].toDouble()).toInt()
            if (side * side == outputDims[0]) {
                outputHeight = side
                outputWidth = side
            }
        }

        PLog.d(
            TAG,
            "Depth Anything V2 ready: input=${inputWidth}x$inputHeight output=${outputWidth}x$outputHeight inputLayout=${if (inputChannelsFirst) "NCHW" else "NHWC"} inputType=${interpreter.getInputTensor(0).dataType()} outputType=${interpreter.getOutputTensor(0).dataType()} inputShape=${inputShape.contentToString()} outputShape=${outputShape.contentToString()}"
        )
    }

    fun close() {
        interpreter?.close()
        interpreter = null
        nnApiDelegate?.close()
        nnApiDelegate = null
        isInitialized = false
    }

    companion object {
        private const val TAG = "DepthEstimator"
    }
}
