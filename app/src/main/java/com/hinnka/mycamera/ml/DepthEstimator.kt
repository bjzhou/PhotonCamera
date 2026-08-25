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
import org.tensorflow.lite.Tensor
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
    private var inputDataType = DataType.FLOAT32
    private var outputDataType = DataType.FLOAT32
    private var outputTensorIndex = 0
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
                modelFingerprint = DepthModelManager.installedModelFingerprint(context)
            )

            // The GPU delegate is deliberately not used: this model can compile but
            // produce a constant map on affected Qualcomm GLES drivers.
            PLog.d(TAG, "Depth model: trying NNAPI first")
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
                PLog.d(TAG, "Using NNAPI (NPU) for depth model")
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
                PLog.d(TAG, "Using CPU for depth model")
            }

            interpreter?.let {
                applyModelContract(it, inspectDepthModelContract(it))
            }
        } catch (e: Exception) {
            close()
            PLog.e(TAG, "Error initializing depth model", e)
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
            val outputTensor = interpreter!!.getOutputTensor(outputTensorIndex)

            // 2. Preprocess the input image
            val preparedInput = prepareModelInputBitmap(inputBitmap)
            modelInputBitmap = preparedInput
            val inputBuffer = createDepthModelInputBuffer(preparedInput, inputTensor)

            // 3. Prepare the output buffer
            val outputBuffer = TensorBuffer.createFixedSize(outputTensor.shape(), outputDataType)

            try {
                // 4. Run inference
                if (interpreter!!.outputTensorCount == 1 && outputTensorIndex == 0) {
                    interpreter!!.run(inputBuffer, outputBuffer.buffer)
                } else {
                    interpreter!!.runForMultipleInputsOutputs(
                        arrayOf(inputBuffer),
                        mapOf(outputTensorIndex to outputBuffer.buffer),
                    )
                }

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
            PLog.e(TAG, "Error during depth model inference", e)
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

    private fun createDepthModelInputBuffer(inputBitmap: Bitmap, inputTensor: Tensor): ByteBuffer {
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

        val bytesPerChannel = when (inputDataType) {
            DataType.FLOAT32 -> Float.SIZE_BYTES
            DataType.UINT8, DataType.INT8 -> Byte.SIZE_BYTES
            else -> throw IllegalArgumentException("Unsupported depth model input type: $inputDataType")
        }
        val buffer = LargeDirectBuffer.allocate(
            inputWidth.toLong() * inputHeight.toLong() * 3L * bytesPerChannel,
            "Depth model input"
        ) ?: throw OutOfMemoryError("Failed to allocate depth model input buffer")
        fun normalizedChannelValue(pixel: Int, channel: Int): Float {
            return when (channel) {
                0 -> (pixel shr 16) and 0xFF
                1 -> (pixel shr 8) and 0xFF
                else -> pixel and 0xFF
            } / 255.0f
        }
        val quantization = inputTensor.quantizationParams()
        fun putChannel(pixel: Int, channel: Int) {
            val value = normalizedChannelValue(pixel, channel)
            when (inputDataType) {
                DataType.FLOAT32 -> buffer.putFloat(value)
                DataType.UINT8 -> {
                    val quantized = quantize(value, quantization.scale, quantization.zeroPoint)
                        .coerceIn(0, 255)
                    buffer.put(quantized.toByte())
                }
                DataType.INT8 -> {
                    val quantized = quantize(value, quantization.scale, quantization.zeroPoint)
                        .coerceIn(-128, 127)
                    buffer.put(quantized.toByte())
                }
                else -> error("Unsupported depth model input type: $inputDataType")
            }
        }

        if (inputChannelsFirst) {
            for (channel in 0 until 3) {
                for (pixel in pixels) {
                    putChannel(pixel, channel)
                }
            }
        } else {
            for (pixel in pixels) {
                putChannel(pixel, 0)
                putChannel(pixel, 1)
                putChannel(pixel, 2)
            }
        }
        buffer.rewind()
        return buffer
    }

    private fun quantize(value: Float, scale: Float, zeroPoint: Int): Int {
        require(scale > 0f) { "Quantized depth model input has no valid scale" }
        return kotlin.math.round(value / scale + zeroPoint.toFloat()).toInt()
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

    private fun applyModelContract(interpreter: Interpreter, contract: DepthModelContract) {
        val inputShape = interpreter.getInputTensor(0).shape()
        val outputShape = interpreter.getOutputTensor(contract.outputTensorIndex).shape()
        inputWidth = contract.inputWidth
        inputHeight = contract.inputHeight
        inputChannelsFirst = contract.inputChannelsFirst
        inputDataType = contract.inputDataType
        outputTensorIndex = contract.outputTensorIndex
        outputWidth = contract.outputWidth
        outputHeight = contract.outputHeight
        outputDataType = contract.outputDataType

        PLog.d(
            TAG,
            "Depth model ready: input=${inputWidth}x$inputHeight output=${outputWidth}x$outputHeight inputLayout=${if (inputChannelsFirst) "NCHW" else "NHWC"} inputType=$inputDataType outputType=$outputDataType outputIndex=$outputTensorIndex inputShape=${inputShape.contentToString()} outputShape=${outputShape.contentToString()}"
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
