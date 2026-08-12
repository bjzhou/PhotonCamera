package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import android.os.SystemClock
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.gpu.CompatibilityList
import org.tensorflow.lite.gpu.GpuDelegate
import org.tensorflow.lite.nnapi.NnApiDelegate
import org.tensorflow.lite.support.common.FileUtil
import org.tensorflow.lite.support.tensorbuffer.TensorBuffer
import java.nio.ByteBuffer

/** Runs the ETDS M4C32 x2 model in overlapping tiles and stitches a full-size result. */
class EtDsSuperResolutionEstimator(
    context: Context,
    private val modelAssetName: String = MODEL_ETDS_M4C32_X2,
    private val backend: Backend = Backend.AUTO,
) : AutoCloseable {
    private var interpreter: Interpreter? = null
    private var gpuDelegate: GpuDelegate? = null
    private var nnApiDelegate: NnApiDelegate? = null
    private var activeBackend = "none"
    private var inputWidth = 0
    private var inputHeight = 0
    private var outputWidth = 0
    private var outputHeight = 0
    private var scale = 0
    private val interpreterMutex = Mutex()

    val isReady: Boolean
        get() = interpreter != null && inputWidth > 0 && inputHeight > 0 && scale == UPSCALE

    init {
        try {
            val modelFile = StartupTrace.measure("EtDsSuperResolutionEstimator.loadMappedFile") {
                FileUtil.loadMappedFile(context, modelAssetName)
            }
            val delegateCache = MlDelegateCacheFactory.create(
                context = context,
                tag = TAG,
                cacheName = "etds_super_resolution",
                modelAssetName = modelAssetName,
                modelSizeBytes = modelFile.capacity(),
            )

            if (backend == Backend.AUTO || backend == Backend.GPU) {
                val options = Interpreter.Options()
                val compatibility = StartupTrace.measure(
                    "EtDsSuperResolutionEstimator.CompatibilityList"
                ) { CompatibilityList() }
                gpuDelegate = if (compatibility.isDelegateSupportedOnThisDevice) {
                    StartupTrace.measure("EtDsSuperResolutionEstimator.GpuDelegate") {
                        val delegateOptions = compatibility.bestOptionsForThisDevice
                        delegateCache?.let {
                            delegateOptions.setSerializationParams(
                                it.directory.absolutePath,
                                it.modelToken,
                            )
                        }
                        GpuDelegate(delegateOptions)
                    }
                } else {
                    PLog.d(TAG, "GPU delegate is not supported on this device")
                    null
                }
                gpuDelegate?.let { delegate ->
                    options.addDelegate(delegate)
                    try {
                        interpreter = Interpreter(modelFile, options)
                        activeBackend = "GPU"
                    } catch (error: Exception) {
                        PLog.w(TAG, "GPU delegate initialization failed", error)
                        gpuDelegate?.close()
                        gpuDelegate = null
                    }
                }
            }

            if (interpreter == null && backend == Backend.AUTO) {
                val options = Interpreter.Options()
                nnApiDelegate = StartupTrace.measure("EtDsSuperResolutionEstimator.NnApiDelegate") {
                    val delegateOptions = NnApiDelegate.Options()
                    delegateCache?.let {
                        delegateOptions
                            .setCacheDir(it.directory.absolutePath)
                            .setModelToken(it.modelToken)
                    }
                    NnApiDelegate(delegateOptions)
                }
                options.addDelegate(nnApiDelegate)
                try {
                    interpreter = Interpreter(modelFile, options)
                    activeBackend = "NNAPI"
                } catch (error: Exception) {
                    PLog.w(TAG, "NNAPI delegate initialization failed", error)
                    nnApiDelegate?.close()
                    nnApiDelegate = null
                }
            }

            if (interpreter == null) {
                interpreter = Interpreter(
                    modelFile,
                    Interpreter.Options().apply {
                        setNumThreads(CPU_THREADS)
                        setUseXNNPACK(true)
                    },
                )
                activeBackend = "CPU"
            }
            validateTensorContract(interpreter!!)
            PLog.d(
                TAG,
                "ETDS ready: backend=$activeBackend asset=$modelAssetName " +
                    "input=${inputWidth}x$inputHeight output=${outputWidth}x$outputHeight",
            )
        } catch (error: OutOfMemoryError) {
            PLog.e(TAG, "Not enough memory to initialize ETDS super resolution", error)
            close()
        } catch (error: Exception) {
            PLog.e(TAG, "Unable to initialize ETDS super resolution", error)
            close()
        }
    }

    private fun validateTensorContract(interpreter: Interpreter) {
        val input = interpreter.getInputTensor(0)
        val output = interpreter.getOutputTensor(0)
        val inputShape = input.shape()
        val outputShape = output.shape()
        require(inputShape.size == 4 && inputShape[0] == 1 && inputShape[3] == CHANNELS) {
            "ETDS input must be NHWC RGB: ${inputShape.contentToString()}"
        }
        require(outputShape.size == 4 && outputShape[0] == 1 && outputShape[3] == CHANNELS) {
            "ETDS output must be NHWC RGB: ${outputShape.contentToString()}"
        }
        require(input.dataType() == DataType.FLOAT32 && output.dataType() == DataType.FLOAT32) {
            "ETDS tensors must be float32: ${input.dataType()} -> ${output.dataType()}"
        }
        inputHeight = inputShape[1]
        inputWidth = inputShape[2]
        outputHeight = outputShape[1]
        outputWidth = outputShape[2]
        require(outputWidth % inputWidth == 0 && outputHeight % inputHeight == 0) {
            "ETDS output is not an integer scale: ${inputWidth}x$inputHeight -> " +
                "${outputWidth}x$outputHeight"
        }
        val scaleX = outputWidth / inputWidth
        val scaleY = outputHeight / inputHeight
        require(scaleX == scaleY && scaleX == UPSCALE) {
            "ETDS model must use ${UPSCALE}x scale, got ${scaleX}x${scaleY}"
        }
        scale = scaleX
    }

    private external fun preprocessNative(
        bitmap: Bitmap,
        x: Int,
        y: Int,
        width: Int,
        height: Int,
        output: ByteBuffer,
    )

    private external fun postprocessNative(
        input: ByteBuffer,
        bitmap: Bitmap,
        patchX: Int,
        patchY: Int,
        destinationX: Int,
        destinationY: Int,
        width: Int,
        height: Int,
        patchWidth: Int,
        patchHeight: Int,
    )

    suspend fun superResolvePatchwise(
        inputBitmap: Bitmap,
        onProgress: ((Float) -> Unit)? = null,
    ): Bitmap? {
        val activeInterpreter = interpreter
        if (!isReady || activeInterpreter == null) {
            PLog.e(TAG, "ETDS super resolution is not initialized")
            return null
        }
        require(inputBitmap.width > 0 && inputBitmap.height > 0) { "Input bitmap is empty" }

        var result: Bitmap? = null
        var inputBuffer: ByteBuffer? = null
        var completedTiles = 0
        var preprocessMs = 0L
        var inferenceMs = 0L
        var postprocessMs = 0L
        val totalStartMs = SystemClock.elapsedRealtime()

        try {
            val resultWidth = Math.multiplyExact(inputBitmap.width, scale)
            val resultHeight = Math.multiplyExact(inputBitmap.height, scale)
            val resultBitmap = Bitmap.createBitmap(
                resultWidth,
                resultHeight,
                Bitmap.Config.ARGB_8888,
            )
            result = resultBitmap
            val tileInput = LargeDirectBuffer.allocate(
                inputWidth.toLong() * inputHeight.toLong() * CHANNELS * Float.SIZE_BYTES,
                "ETDS input tile",
            ) ?: throw OutOfMemoryError("Unable to allocate the ETDS input tile")
            inputBuffer = tileInput
            val outputTensor = activeInterpreter.getOutputTensor(0)
            val outputBuffer = TensorBuffer.createFixedSize(
                outputTensor.shape(),
                outputTensor.dataType(),
            )
            val strideX = inputWidth - TILE_PADDING * 2
            val strideY = inputHeight - TILE_PADDING * 2
            require(strideX > 0 && strideY > 0) { "ETDS tile padding is too large" }
            val destinationXs = if (inputBitmap.width <= inputWidth) {
                listOf(0)
            } else {
                (0 until inputBitmap.width step strideX).toList()
            }
            val destinationYs = if (inputBitmap.height <= inputHeight) {
                listOf(0)
            } else {
                (0 until inputBitmap.height step strideY).toList()
            }
            val totalTiles = destinationXs.size * destinationYs.size

            for (destinationY in destinationYs) {
                for (destinationX in destinationXs) {
                    currentCoroutineContext().ensureActive()
                    val validWidth = if (inputBitmap.width <= inputWidth) {
                        inputBitmap.width
                    } else {
                        minOf(inputBitmap.width - destinationX, strideX)
                    }
                    val validHeight = if (inputBitmap.height <= inputHeight) {
                        inputBitmap.height
                    } else {
                        minOf(inputBitmap.height - destinationY, strideY)
                    }
                    val centerX = destinationX + validWidth / 2
                    val centerY = destinationY + validHeight / 2
                    val sourceX = (centerX - inputWidth / 2)
                        .coerceIn(0, (inputBitmap.width - inputWidth).coerceAtLeast(0))
                    val sourceY = (centerY - inputHeight / 2)
                        .coerceIn(0, (inputBitmap.height - inputHeight).coerceAtLeast(0))

                    var stageStartMs = SystemClock.elapsedRealtime()
                    preprocessNative(
                        inputBitmap,
                        sourceX,
                        sourceY,
                        inputWidth,
                        inputHeight,
                        tileInput,
                    )
                    preprocessMs += SystemClock.elapsedRealtime() - stageStartMs

                    stageStartMs = SystemClock.elapsedRealtime()
                    interpreterMutex.withLock {
                        tileInput.rewind()
                        outputBuffer.buffer.rewind()
                        activeInterpreter.run(tileInput, outputBuffer.buffer)
                    }
                    inferenceMs += SystemClock.elapsedRealtime() - stageStartMs

                    stageStartMs = SystemClock.elapsedRealtime()
                    outputBuffer.buffer.rewind()
                    postprocessNative(
                        outputBuffer.buffer,
                        resultBitmap,
                        (destinationX - sourceX) * scale,
                        (destinationY - sourceY) * scale,
                        destinationX * scale,
                        destinationY * scale,
                        validWidth * scale,
                        validHeight * scale,
                        outputWidth,
                        outputHeight,
                    )
                    postprocessMs += SystemClock.elapsedRealtime() - stageStartMs

                    completedTiles++
                    onProgress?.invoke(completedTiles.toFloat() / totalTiles)
                }
            }
            PLog.d(
                TAG,
                "ETDS patchwise finished: backend=$activeBackend " +
                    "image=${inputBitmap.width}x${inputBitmap.height}->" +
                    "${resultBitmap.width}x${resultBitmap.height} " +
                    "tiles=$completedTiles tile=${inputWidth}x$inputHeight " +
                    "total=${SystemClock.elapsedRealtime() - totalStartMs}ms " +
                    "preprocess=${preprocessMs}ms inference=${inferenceMs}ms " +
                    "postprocess=${postprocessMs}ms",
            )
            return resultBitmap
        } catch (error: CancellationException) {
            result?.takeIf { !it.isRecycled }?.recycle()
            throw error
        } catch (error: OutOfMemoryError) {
            result?.takeIf { !it.isRecycled }?.recycle()
            PLog.e(TAG, "Not enough memory for ETDS super resolution", error)
            return null
        } catch (error: Exception) {
            result?.takeIf { !it.isRecycled }?.recycle()
            PLog.e(TAG, "ETDS patchwise inference failed", error)
            return null
        } finally {
            LargeDirectBuffer.free(inputBuffer)
        }
    }

    override fun close() {
        interpreter?.close()
        interpreter = null
        gpuDelegate?.close()
        gpuDelegate = null
        nnApiDelegate?.close()
        nnApiDelegate = null
        activeBackend = "none"
    }

    enum class Backend {
        AUTO,
        GPU,
        CPU,
    }

    companion object {
        private const val TAG = "EtDsSuperResolution"
        const val MODEL_ETDS_M4C32_X2 = "etds_m4c32_x2.tflite"
        const val UPSCALE = 2
        private const val CHANNELS = 3
        private const val TILE_PADDING = 8
        private const val CPU_THREADS = 4

        init {
            System.loadLibrary("my-native-lib")
        }
    }
}
