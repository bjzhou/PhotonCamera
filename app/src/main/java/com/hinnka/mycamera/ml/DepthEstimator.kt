package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.gpu.CompatibilityList
import org.tensorflow.lite.gpu.GpuDelegate
import org.tensorflow.lite.support.common.FileUtil
import org.tensorflow.lite.support.image.ImageProcessor
import org.tensorflow.lite.support.image.TensorImage
import org.tensorflow.lite.support.image.ops.ResizeOp
import org.tensorflow.lite.support.tensorbuffer.TensorBuffer
import org.tensorflow.lite.nnapi.NnApiDelegate

class DepthEstimator(context: Context) {
    private var interpreter: Interpreter? = null
    private var gpuDelegate: GpuDelegate? = null
    private var nnApiDelegate: NnApiDelegate? = null
    private var isInitialized = false

    // Input shape for Midas-v2 is typically [1, 256, 256, 3]
    private val inputSize = 256
    
    // Output shape is [1, 256, 256, 1] for depth map
    private val outputSize = 256

    init {
        try {
            val modelFile = FileUtil.loadMappedFile(context, "midas.tflite")
            
            // Try GPU
            val gpuOptions = Interpreter.Options()
            val compatList = CompatibilityList()
            gpuDelegate = if (compatList.isDelegateSupportedOnThisDevice) {
                val delegateOptions = compatList.bestOptionsForThisDevice
                GpuDelegate(delegateOptions)
            } else {
                GpuDelegate()
            }
            gpuOptions.addDelegate(gpuDelegate)
            try {
                interpreter = Interpreter(modelFile, gpuOptions)
                isInitialized = true
                PLog.d(TAG, "Using GPU Delegate for Depth Estimator")
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to initialize GPU delegate, falling back to NNAPI", e)
                gpuDelegate?.close()
                gpuDelegate = null
            }

            // Try NNAPI (NPU) if GPU failed or not supported
            if (!isInitialized) {
                val nnApiOptions = Interpreter.Options()
                nnApiDelegate = NnApiDelegate()
                nnApiOptions.addDelegate(nnApiDelegate)
                try {
                    interpreter = Interpreter(modelFile, nnApiOptions)
                    isInitialized = true
                    PLog.d(TAG, "Using NNAPI (NPU) for Depth Estimator")
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
                interpreter = Interpreter(modelFile, cpuOptions)
                isInitialized = true
                PLog.d(TAG, "Using CPU for Depth Estimator")
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Error initializing DepthEstimator", e)
        }
    }

    /**
     * Estimates depth for the given bitmap.
     * @param inputBitmap Original image bitmap.
     * @return Depth map bitmap of size 256x256, or null if failed.
     */
    fun estimateDepth(inputBitmap: Bitmap): Bitmap? {
        if (!isInitialized || interpreter == null) {
            PLog.e(TAG, "DepthEstimator is not initialized.")
            return null
        }

        try {
            // 1. Get input/output metadata
            val inputTensor = interpreter!!.getInputTensor(0)
            val outputTensor = interpreter!!.getOutputTensor(0)
            val inputDataType = inputTensor.dataType()
            val outputDataType = outputTensor.dataType()

            // 2. Preprocess the input image
            val imageProcessor = ImageProcessor.Builder()
                .add(ResizeOp(inputSize, inputSize, ResizeOp.ResizeMethod.BILINEAR))
                .build()

            var tensorImage = TensorImage(inputDataType)
            tensorImage.load(inputBitmap)
            tensorImage = imageProcessor.process(tensorImage)

            // 3. Prepare the output buffer
            val outputBuffer = TensorBuffer.createFixedSize(outputTensor.shape(), outputDataType)

            // 4. Run inference
            interpreter?.run(tensorImage.buffer, outputBuffer.buffer)

            // 5. Post-process to Bitmap (Grayscale)
            return if (outputDataType == DataType.FLOAT32) {
                convertOutputToBitmap(outputBuffer.floatArray)
            } else {
                // If quantized output, convert to float first or handle UINT8 directly
                val floatArray = FloatArray(outputBuffer.flatSize)
                if (outputDataType == DataType.UINT8) {
                    val byteBuffer = outputBuffer.buffer
                    byteBuffer.rewind()
                    val bytes = ByteArray(outputBuffer.flatSize)
                    byteBuffer.get(bytes)
                    for (i in bytes.indices) {
                        floatArray[i] = (bytes[i].toInt() and 0xFF).toFloat()
                    }
                }
                convertOutputToBitmap(floatArray)
            }
            
        } catch (e: Exception) {
            PLog.e(TAG, "Error during depth estimation", e)
            return null
        }
    }

    /**
     * Converts a float array output [256*256] to a Grayscale Bitmap.
     */
    private fun convertOutputToBitmap(outputArray: FloatArray): Bitmap {
        // Find min and max for normalization
        var min = Float.MAX_VALUE
        var max = Float.MIN_VALUE
        for (value in outputArray) {
            if (value < min) min = value
            if (value > max) max = value
        }

        val range = max - min
        val finalRange = if (range == 0f) 1f else range // avoid division by zero

        val pixels = IntArray(outputSize * outputSize)
        val limit = minOf(outputArray.size, pixels.size)
        for (i in 0 until limit) {
            // Normalize to [0, 255]
            val normalized = ((outputArray[i] - min) / finalRange * 255f).toInt().coerceIn(0, 255)
            // Create a grayscale color (ARGB)
            pixels[i] = (0xFF shl 24) or (normalized shl 16) or (normalized shl 8) or normalized
        }

        val bitmap = Bitmap.createBitmap(outputSize, outputSize, Bitmap.Config.ARGB_8888)
        bitmap.setPixels(pixels, 0, outputSize, 0, 0, outputSize, outputSize)
        return bitmap
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
    }
}
