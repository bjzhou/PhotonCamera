package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.gpu.CompatibilityList
import org.tensorflow.lite.gpu.GpuDelegate
import org.tensorflow.lite.nnapi.NnApiDelegate
import org.tensorflow.lite.support.common.FileUtil
import org.tensorflow.lite.support.common.ops.NormalizeOp
import org.tensorflow.lite.support.image.ImageProcessor
import org.tensorflow.lite.support.image.TensorImage
import org.tensorflow.lite.support.image.ops.ResizeOp
import org.tensorflow.lite.support.tensorbuffer.TensorBuffer
import java.nio.ByteBuffer

class DepthEstimator(
    context: Context,
    val modelAssetName: String = MODEL_MIDAS
) {
    private var interpreter: Interpreter? = null
    private var gpuDelegate: GpuDelegate? = null
    private var nnApiDelegate: NnApiDelegate? = null
    private var isInitialized = false
    private var inputWidth = 256
    private var inputHeight = 256
    private var outputWidth = 256
    private var outputHeight = 256
    private var inputChannelsFirst = false

    init {
        try {
            val modelFile = StartupTrace.measure("DepthEstimator.loadMappedFile.$modelAssetName") {
                FileUtil.loadMappedFile(context, modelAssetName)
            }
            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "depth_estimator",
                modelAssetName = modelAssetName,
                modelSizeBytes = modelFile.capacity()
            )

            if (modelAssetName != MODEL_DEPTH_ANYTHING) {
                // Try GPU. Depth Anything V2 is skipped here because the TFLite
                // GPU delegate can compile it but return a constant depth map on
                // some Qualcomm devices.
                val gpuOptions = Interpreter.Options()
                val compatList = StartupTrace.measure("DepthEstimator.CompatibilityList()") {
                    CompatibilityList()
                }
                gpuDelegate = StartupTrace.measure("DepthEstimator.GpuDelegate()") {
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
                StartupTrace.measure("DepthEstimator.gpuOptions.addDelegate") {
                    gpuOptions.addDelegate(gpuDelegate)
                }
                try {
                    interpreter = StartupTrace.measure("DepthEstimator.Interpreter(GPU)") {
                        Interpreter(modelFile, gpuOptions)
                    }
                    isInitialized = true
                    PLog.d(TAG, "Using GPU Delegate for Depth Estimator: $modelAssetName")
                } catch (e: Exception) {
                    PLog.w(TAG, "Failed to initialize GPU delegate, falling back to NNAPI", e)
                    gpuDelegate?.close()
                    gpuDelegate = null
                }
            } else {
                PLog.d(TAG, "Skipping GPU Delegate for Depth Anything V2; trying NNAPI first")
            }

            // Try NNAPI (NPU) if GPU failed or not supported
            if (!isInitialized) {
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
                try {
                    interpreter = StartupTrace.measure("DepthEstimator.Interpreter(NNAPI)") {
                        Interpreter(modelFile, nnApiOptions)
                    }
                    isInitialized = true
                    PLog.d(TAG, "Using NNAPI (NPU) for Depth Estimator: $modelAssetName")
                } catch (e: Exception) {
                    PLog.w(TAG, "Failed to initialize NNAPI delegate, falling back to CPU", e)
                    nnApiDelegate?.close()
                    nnApiDelegate = null
                }
            }

            // Fallback to CPU
            if (!isInitialized) {
                val cpuOptions = Interpreter.Options()
                cpuOptions.setNumThreads(4)
                interpreter = StartupTrace.measure("DepthEstimator.Interpreter(CPU)") {
                    Interpreter(modelFile, cpuOptions)
                }
                isInitialized = true
                PLog.d(TAG, "Using CPU for Depth Estimator: $modelAssetName")
            }

            interpreter?.let {
                updateTensorDimensions(it)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Error initializing DepthEstimator: $modelAssetName", e)
        }
    }

    /**
     * Estimates depth for the given bitmap.
     * @param inputBitmap Original image bitmap.
     * @return Depth map bitmap at the model output resolution, or null if failed.
     */
    fun estimateDepth(inputBitmap: Bitmap): Bitmap? {
        if (!isInitialized || interpreter == null) {
            PLog.e(TAG, "DepthEstimator is not initialized: $modelAssetName")
            return null
        }

        try {
            // 1. Get input/output metadata
            val inputTensor = interpreter!!.getInputTensor(0)
            val outputTensor = interpreter!!.getOutputTensor(0)
            val inputDataType = inputTensor.dataType()
            val outputDataType = outputTensor.dataType()

            // 2. Preprocess the input image
            val inputUsesLargeDirectAllocator = modelAssetName == MODEL_DEPTH_ANYTHING
            val inputBuffer = if (inputUsesLargeDirectAllocator) {
                createDepthAnythingInputBuffer(inputBitmap, inputDataType)
            } else {
                val imageProcessor = buildImageProcessor()
                var tensorImage = TensorImage(inputDataType)
                tensorImage.load(inputBitmap)
                tensorImage = imageProcessor.process(tensorImage)
                tensorImage.buffer
            }

            // 3. Prepare the output buffer
            val outputBuffer = TensorBuffer.createFixedSize(outputTensor.shape(), outputDataType)

            try {
                // 4. Run inference
                interpreter?.run(inputBuffer, outputBuffer.buffer)

                // 5. Post-process to Bitmap (Grayscale)
                return if (outputDataType == DataType.FLOAT32) {
                    convertOutputToBitmap(outputBuffer.floatArray, outputWidth, outputHeight)
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
                    convertOutputToBitmap(floatArray, outputWidth, outputHeight)
                }
            } finally {
                if (inputUsesLargeDirectAllocator) {
                    LargeDirectBuffer.free(inputBuffer)
                }
            }
            
        } catch (e: Exception) {
            PLog.e(TAG, "Error during depth estimation: $modelAssetName", e)
            return null
        }
    }

    private fun buildImageProcessor(): ImageProcessor {
        val builder = ImageProcessor.Builder()
            .add(ResizeOp(inputHeight, inputWidth, ResizeOp.ResizeMethod.BILINEAR))

        if (modelAssetName == MODEL_DEPTH_ANYTHING) {
            builder
                .add(NormalizeOp(0.0f, 255.0f))
                .add(
                    NormalizeOp(
                        floatArrayOf(0.485f, 0.456f, 0.406f),
                        floatArrayOf(0.229f, 0.224f, 0.225f)
                    )
                )
        }

        return builder.build()
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
        val mean = floatArrayOf(0.485f, 0.456f, 0.406f)
        val std = floatArrayOf(0.229f, 0.224f, 0.225f)
        val skipNormalization = modelAssetName == MODEL_DEPTH_ANYTHING

        fun normalized(pixel: Int, channel: Int): Float {
            val value = when (channel) {
                0 -> (pixel shr 16) and 0xFF
                1 -> (pixel shr 8) and 0xFF
                else -> pixel and 0xFF
            } / 255.0f
            
            if (skipNormalization) {
                return value
            }
            return (value - mean[channel]) / std[channel]
        }

        if (inputChannelsFirst) {
            for (channel in 0 until 3) {
                for (pixel in pixels) {
                    buffer.putFloat(normalized(pixel, channel))
                }
            }
        } else {
            for (pixel in pixels) {
                buffer.putFloat(normalized(pixel, 0))
                buffer.putFloat(normalized(pixel, 1))
                buffer.putFloat(normalized(pixel, 2))
            }
        }
        buffer.rewind()
        return buffer
    }

    /**
     * Converts a float array output to a Grayscale Bitmap.
     */
    private fun convertOutputToBitmap(outputArray: FloatArray, width: Int, height: Int): Bitmap {
        if (outputArray.isEmpty()) return Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        val validValues = FloatArray(outputArray.size)
        var validCount = 0
        for (value in outputArray) {
            if (value.isFinite()) {
                validValues[validCount++] = value
            }
        }

        if (validCount == 0) {
            PLog.e(TAG, "Depth output has no finite values: $modelAssetName")
            return Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
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
        PLog.d(TAG, "Depth output range: asset=$modelAssetName min=$min max=$max range=$range valid=$validCount")

        val pixels = IntArray(width * height)
        val limit = minOf(outputArray.size, pixels.size)
        for (i in 0 until limit) {
            // Normalize to [0, 255]
            val value = if (outputArray[i].isFinite()) outputArray[i] else min
            val normalized = ((value - min) / finalRange * 255f).toInt().coerceIn(0, 255)
            // Create a grayscale color (ARGB)
            pixels[i] = (0xFF shl 24) or (normalized shl 16) or (normalized shl 8) or normalized
        }

        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
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
            PLog.w(TAG, "Unexpected depth input shape for $modelAssetName: ${inputShape.contentToString()}")
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
            "Depth model ready: asset=$modelAssetName input=${inputWidth}x$inputHeight output=${outputWidth}x$outputHeight inputLayout=${if (inputChannelsFirst) "NCHW" else "NHWC"} inputType=${interpreter.getInputTensor(0).dataType()} outputType=${interpreter.getOutputTensor(0).dataType()} inputShape=${inputShape.contentToString()} outputShape=${outputShape.contentToString()}"
        )
    }

    fun close() {
        interpreter?.close()
        interpreter = null
        gpuDelegate?.close()
        gpuDelegate = null
        nnApiDelegate?.close()
        nnApiDelegate = null
        isInitialized = false
    }

    companion object {
        private const val TAG = "DepthEstimator"
        const val MODEL_MIDAS = "midas.tflite"
        const val MODEL_DEPTH_ANYTHING = "MGC/depth_anything_v3.tflite"
    }
}
