package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import com.google.ai.edge.litert.CompiledModel
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import com.google.ai.edge.litert.support.tensorbuffer.TensorBuffer
import java.io.File
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.MappedByteBuffer
import java.nio.channels.FileChannel

/**
 * Runs the installed monocular depth model and returns a normalized disparity map
 * (larger is nearer) in the orientation of the input image.
 *
 * The default model (Depth Anything 3 Small, see [DepthModelManager]) takes an
 * ImageNet-normalized NCHW image and outputs depth; imported models take [0, 1] RGB and
 * their output polarity is resolved later by the bokeh preprocessor. Models with a
 * non-square input of the other orientation get the image rotated by 90 degrees.
 */
class DepthEstimator(context: Context) {
    private var cpuInterpreter: Interpreter? = null
    private var gpuModel: LiteRtGpuModel? = null
    private var modelBuffer: MappedByteBuffer? = null
    private lateinit var contract: DepthModelContract
    private var isOfficialModel = false
    private var isInitialized = false
    internal val isReady: Boolean
        get() = isInitialized

    init {
        val modelFile = DepthModelManager.requireInstalledModelFile(context)
        try {
            val fingerprint = StartupTrace.measure("DepthEstimator.fingerprint") {
                DepthModelManager.installedModelFingerprint(context)
            }
            isOfficialModel = fingerprint == DepthModelManager.OFFICIAL_MODEL_SHA256
            val buffer = StartupTrace.measure("DepthEstimator.mapModelFile") {
                FileInputStream(modelFile).channel.use { channel ->
                    channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size())
                }
            }
            modelBuffer = buffer
            val outputCount = Interpreter(buffer, Interpreter.Options().setUseXNNPACK(false)).use {
                contract = inspectDepthModelContract(it)
                it.outputTensorCount
            }
            gpuModel = createGpuModel(context, modelFile, fingerprint, outputCount)
            if (gpuModel == null) {
                cpuInterpreter = createCpuInterpreter(buffer)
            }
            isInitialized = true
            PLog.d(
                TAG,
                "Depth model ready: backend=${if (gpuModel != null) "GPU" else "CPU"} official=$isOfficialModel " +
                    "input=${contract.inputWidth}x${contract.inputHeight} output=${contract.outputWidth}x${contract.outputHeight} " +
                    "inputLayout=${if (contract.inputChannelsFirst) "NCHW" else "NHWC"} " +
                    "inputType=${contract.inputDataType} outputType=${contract.outputDataType} outputIndex=${contract.outputTensorIndex}"
            )
        } catch (e: Exception) {
            close()
            PLog.e(TAG, "Error initializing depth model", e)
        }
    }

    /**
     * GPU needs one FLOAT32 input and one FLOAT32 output. The default model is converted
     * for the LiteRT GPU delegate and is exact in FP16; imported models run in FP32.
     */
    private fun createGpuModel(context: Context, file: File, fingerprint: String, outputCount: Int): LiteRtGpuModel? {
        if (
            contract.inputDataType != DataType.FLOAT32 ||
            contract.outputDataType != DataType.FLOAT32 ||
            outputCount != 1
        ) {
            PLog.d(TAG, "Depth model contract is not GPU-eligible; using CPU")
            return null
        }
        val precision = if (isOfficialModel) {
            CompiledModel.GpuOptions.Precision.FP16
        } else {
            CompiledModel.GpuOptions.Precision.FP32
        }
        return try {
            val cache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "depth_${precision.name.lowercase()}",
                modelAssetName = file.name,
                modelSizeBytes = file.length().toInt(),
                modelFingerprint = fingerprint,
            )
            StartupTrace.measure("DepthEstimator.CompiledModel(GPU)") {
                LiteRtGpuModel.fromFile(
                    file = file,
                    cache = cache,
                    precision = precision,
                    inputElementCount = contract.inputWidth * contract.inputHeight * RGB_CHANNELS,
                    outputElementCount = contract.outputWidth * contract.outputHeight,
                )
            }
        } catch (e: Exception) {
            PLog.w(TAG, "LiteRT GPU unavailable for the depth model, falling back to CPU", e)
            null
        }
    }

    private fun createCpuInterpreter(buffer: MappedByteBuffer): Interpreter {
        return StartupTrace.measure("DepthEstimator.Interpreter(CPU)") {
            Interpreter(buffer, Interpreter.Options().setNumThreads(CPU_THREADS).setUseXNNPACK(true))
        }
    }

    /**
     * Estimates depth for the given bitmap.
     * @param inputBitmap Original image bitmap.
     * @return Normalized disparity at the model output resolution (rotated back to the
     * input orientation), or null if failed.
     */
    fun estimateDepth(inputBitmap: Bitmap): RelativeDepthMap? {
        if (!isInitialized) {
            PLog.e(TAG, "DepthEstimator is not initialized")
            return null
        }
        val rotate = contract.inputWidth != contract.inputHeight &&
            (inputBitmap.width > inputBitmap.height) != (contract.inputWidth > contract.inputHeight)
        return try {
            val pixels = readModelInputPixels(inputBitmap, rotate)
            val raw = runGpu(pixels) ?: runCpu(pixels)
            val disparity = if (isOfficialModel) depthToDisparity(raw) else raw
            val map = normalize(disparity, contract.outputWidth, contract.outputHeight)
            if (rotate) rotateBack(map) else map
        } catch (e: Exception) {
            PLog.e(TAG, "Error during depth model inference", e)
            null
        }
    }

    /**
     * Returns null when no GPU model is active. A GPU result without a finite, non-constant
     * range is a delegate failure (seen on some Qualcomm drivers): the GPU model is dropped
     * for the rest of this estimator's lifetime and the CPU path is used.
     */
    private fun runGpu(pixels: IntArray): FloatArray? {
        val gpu = gpuModel ?: return null
        val output = gpu.run(floatInput(pixels))
        var min = Float.POSITIVE_INFINITY
        var max = Float.NEGATIVE_INFINITY
        var finite = true
        for (value in output) {
            if (!value.isFinite()) {
                finite = false
                break
            }
            if (value < min) min = value
            if (value > max) max = value
        }
        if (finite && max > min) return output
        PLog.e(TAG, "GPU depth output is degenerate (finite=$finite min=$min max=$max); switching to CPU")
        gpu.close()
        gpuModel = null
        cpuInterpreter = createCpuInterpreter(modelBuffer!!)
        return null
    }

    private fun runCpu(pixels: IntArray): FloatArray {
        val interpreter = cpuInterpreter ?: error("CPU depth interpreter is not available")
        val outputTensor = interpreter.getOutputTensor(contract.outputTensorIndex)
        val outputBuffer = TensorBuffer.createFixedSize(outputTensor.shape(), contract.outputDataType)
        val inputBuffer = cpuInput(pixels, interpreter)
        try {
            if (interpreter.outputTensorCount == 1 && contract.outputTensorIndex == 0) {
                interpreter.run(inputBuffer, outputBuffer.buffer)
            } else {
                interpreter.runForMultipleInputsOutputs(
                    arrayOf(inputBuffer),
                    mapOf(contract.outputTensorIndex to outputBuffer.buffer),
                )
            }
        } finally {
            LargeDirectBuffer.free(inputBuffer)
        }
        return when (contract.outputDataType) {
            DataType.FLOAT32 -> outputBuffer.floatArray
            DataType.UINT8, DataType.INT8 -> {
                val byteBuffer = outputBuffer.buffer
                byteBuffer.rewind()
                val bytes = ByteArray(outputBuffer.flatSize)
                byteBuffer.get(bytes)
                FloatArray(bytes.size) { i ->
                    if (contract.outputDataType == DataType.UINT8) (bytes[i].toInt() and 0xFF).toFloat()
                    else bytes[i].toFloat()
                }
            }
            else -> error("Unsupported depth model output type: ${contract.outputDataType}")
        }
    }

    /**
     * Resizes (and, for [rotate], turns 90 degrees clockwise) the image into the model input
     * size in one Canvas draw, so RGBA_F16 captures never create a full-resolution
     * ARGB_8888 intermediate bitmap.
     */
    private fun readModelInputPixels(inputBitmap: Bitmap, rotate: Boolean): IntArray {
        val width = contract.inputWidth
        val height = contract.inputHeight
        val prepared = if (
            !rotate &&
            inputBitmap.config == Bitmap.Config.ARGB_8888 &&
            inputBitmap.width == width &&
            inputBitmap.height == height
        ) {
            inputBitmap
        } else {
            Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).also { output ->
                val canvas = Canvas(output)
                if (rotate) {
                    // (u, v) -> (width - v, u): the image's top edge becomes the right edge.
                    canvas.translate(width.toFloat(), 0f)
                    canvas.rotate(90f)
                    canvas.drawBitmap(inputBitmap, null, Rect(0, 0, height, width), Paint(Paint.FILTER_BITMAP_FLAG))
                } else {
                    canvas.drawBitmap(inputBitmap, null, Rect(0, 0, width, height), Paint(Paint.FILTER_BITMAP_FLAG))
                }
            }
        }
        val pixels = IntArray(width * height)
        prepared.getPixels(pixels, 0, width, 0, 0, width, height)
        if (prepared !== inputBitmap) prepared.recycle()
        return pixels
    }

    /** Normalized RGB channel value; ImageNet mean/std for the default model, [0, 1] otherwise. */
    private fun channelValue(pixel: Int, channel: Int): Float {
        val value = when (channel) {
            0 -> (pixel shr 16) and 0xFF
            1 -> (pixel shr 8) and 0xFF
            else -> pixel and 0xFF
        } / 255.0f
        return if (isOfficialModel) (value - IMAGENET_MEAN[channel]) / IMAGENET_STD[channel] else value
    }

    private fun floatInput(pixels: IntArray): FloatArray {
        val out = FloatArray(pixels.size * RGB_CHANNELS)
        if (contract.inputChannelsFirst) {
            for (channel in 0 until RGB_CHANNELS) {
                val base = channel * pixels.size
                for (i in pixels.indices) out[base + i] = channelValue(pixels[i], channel)
            }
        } else {
            for (i in pixels.indices) {
                for (channel in 0 until RGB_CHANNELS) out[i * RGB_CHANNELS + channel] = channelValue(pixels[i], channel)
            }
        }
        return out
    }

    private fun cpuInput(pixels: IntArray, interpreter: Interpreter): ByteBuffer {
        val bytesPerChannel = when (contract.inputDataType) {
            DataType.FLOAT32 -> Float.SIZE_BYTES
            DataType.UINT8, DataType.INT8 -> Byte.SIZE_BYTES
            else -> throw IllegalArgumentException("Unsupported depth model input type: ${contract.inputDataType}")
        }
        val buffer = LargeDirectBuffer.allocate(
            pixels.size.toLong() * RGB_CHANNELS * bytesPerChannel,
            "Depth model input"
        ) ?: throw OutOfMemoryError("Failed to allocate depth model input buffer")
        if (contract.inputDataType == DataType.FLOAT32) {
            buffer.asFloatBuffer().put(floatInput(pixels))
            buffer.rewind()
            return buffer
        }
        val quantization = interpreter.getInputTensor(0).quantizationParams()
        fun putChannel(pixel: Int, channel: Int) {
            val quantized = quantize(channelValue(pixel, channel), quantization.scale, quantization.zeroPoint)
            buffer.put(
                if (contract.inputDataType == DataType.UINT8) quantized.coerceIn(0, 255).toByte()
                else quantized.coerceIn(-128, 127).toByte()
            )
        }
        if (contract.inputChannelsFirst) {
            for (channel in 0 until RGB_CHANNELS) for (pixel in pixels) putChannel(pixel, channel)
        } else {
            for (pixel in pixels) for (channel in 0 until RGB_CHANNELS) putChannel(pixel, channel)
        }
        buffer.rewind()
        return buffer
    }

    private fun quantize(value: Float, scale: Float, zeroPoint: Int): Int {
        require(scale > 0f) { "Quantized depth model input has no valid scale" }
        return kotlin.math.round(value / scale + zeroPoint.toFloat()).toInt()
    }

    /** The default model outputs positive depth; disparity is its reciprocal. */
    private fun depthToDisparity(depth: FloatArray): FloatArray {
        return FloatArray(depth.size) { i ->
            val d = depth[i]
            if (d > 0f) 1f / d else Float.NaN
        }
    }

    /** Normalizes to [0, 1] between the 2nd and 98th percentiles of the finite values. */
    private fun normalize(values: FloatArray, width: Int, height: Int): RelativeDepthMap {
        val normalizedValues = FloatArray(width * height)
        val validValues = FloatArray(values.size)
        var validCount = 0
        for (value in values) {
            if (value.isFinite()) validValues[validCount++] = value
        }
        if (validCount == 0) {
            PLog.e(TAG, "Depth output has no finite values")
            return RelativeDepthMap(width, height, normalizedValues)
        }

        validValues.sort(0, validCount)
        val loIndex = (validCount * CLIP_PERCENTILE).toInt().coerceIn(0, validCount - 1)
        val hiIndex = (validCount * (1.0f - CLIP_PERCENTILE)).toInt().coerceIn(0, validCount - 1)
        var min = validValues[loIndex]
        var max = validValues[hiIndex]
        if (min >= max) {
            min = validValues[0]
            max = validValues[validCount - 1]
        }
        val range = (max - min).takeIf { it > 0f } ?: 1f

        val limit = minOf(values.size, normalizedValues.size)
        for (i in 0 until limit) {
            val value = if (values[i].isFinite()) values[i] else min
            normalizedValues[i] = ((value - min) / range).coerceIn(0.0f, 1.0f)
        }
        return RelativeDepthMap(width, height, normalizedValues)
    }

    /** Inverse of the clockwise input rotation: map (px, py) came from image (py, ow - 1 - px). */
    private fun rotateBack(map: RelativeDepthMap): RelativeDepthMap {
        val ow = map.width
        val oh = map.height
        val values = FloatArray(ow * oh)
        // The restored map is oh wide and ow tall.
        for (y in 0 until ow) {
            for (x in 0 until oh) {
                values[y * oh + x] = map.values[x * ow + (ow - 1 - y)]
            }
        }
        return RelativeDepthMap(oh, ow, values)
    }

    fun close() {
        gpuModel?.close()
        gpuModel = null
        cpuInterpreter?.close()
        cpuInterpreter = null
        modelBuffer = null
        isInitialized = false
    }

    companion object {
        private const val TAG = "DepthEstimator"
        private const val CPU_THREADS = 4
        private const val RGB_CHANNELS = 3
        private const val CLIP_PERCENTILE = 0.02f
        private val IMAGENET_MEAN = floatArrayOf(0.485f, 0.456f, 0.406f)
        private val IMAGENET_STD = floatArrayOf(0.229f, 0.224f, 0.225f)
    }
}
