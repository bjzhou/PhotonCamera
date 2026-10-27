package com.hinnka.mycamera.ml

import android.content.Context
import com.google.ai.edge.litert.Accelerator
import com.google.ai.edge.litert.CompiledModel
import com.google.ai.edge.litert.TensorBuffer
import java.io.File

/**
 * A single-input, single-output FLOAT32 model compiled for the LiteRT GPU accelerator.
 *
 * The tensor contract (shape, layout, element type) is validated by the caller with the
 * plain interpreter before compiling; this class checks the element counts it exchanges.
 * Instances are not thread-safe and must be created, run and closed on one thread.
 */
internal class LiteRtGpuModel private constructor(
    private val model: CompiledModel,
    private val inputElementCount: Int,
    private val outputElementCount: Int,
) : AutoCloseable {
    private val inputBuffers: List<TensorBuffer>
    private val outputBuffers: List<TensorBuffer>

    init {
        var inputs: List<TensorBuffer> = emptyList()
        var outputs: List<TensorBuffer> = emptyList()
        try {
            inputs = model.createInputBuffers()
            outputs = model.createOutputBuffers()
            check(inputs.size == 1 && outputs.size == 1) {
                "LiteRT GPU model requires one input and one output, " +
                    "actual inputs=${inputs.size} outputs=${outputs.size}"
            }
        } catch (error: Throwable) {
            inputs.forEach(TensorBuffer::close)
            outputs.forEach(TensorBuffer::close)
            model.close()
            throw error
        }
        inputBuffers = inputs
        outputBuffers = outputs
    }

    fun run(input: FloatArray): FloatArray {
        require(input.size == inputElementCount) {
            "Unexpected input size: ${input.size}, expected $inputElementCount"
        }
        inputBuffers[0].writeFloat(input)
        model.run(inputBuffers, outputBuffers)
        val output = outputBuffers[0].readFloat()
        check(output.size == outputElementCount) {
            "Unexpected output size: ${output.size}, expected $outputElementCount"
        }
        return output
    }

    override fun close() {
        inputBuffers.forEach(TensorBuffer::close)
        outputBuffers.forEach(TensorBuffer::close)
        model.close()
    }

    companion object {
        fun fromAsset(
            context: Context,
            assetName: String,
            cache: MlDelegateCache?,
            precision: CompiledModel.GpuOptions.Precision,
            inputElementCount: Int,
            outputElementCount: Int,
        ): LiteRtGpuModel {
            val model = CompiledModel.create(context.assets, assetName, gpuOptions(cache, precision), null)
            return LiteRtGpuModel(model, inputElementCount, outputElementCount)
        }

        fun fromFile(
            file: File,
            cache: MlDelegateCache?,
            precision: CompiledModel.GpuOptions.Precision,
            inputElementCount: Int,
            outputElementCount: Int,
        ): LiteRtGpuModel {
            val model = CompiledModel.create(file.absolutePath, gpuOptions(cache, precision), null)
            return LiteRtGpuModel(model, inputElementCount, outputElementCount)
        }

        /**
         * [precision] is part of the compiled program, so callers must use a cache name
         * that is distinct per precision.
         */
        private fun gpuOptions(
            cache: MlDelegateCache?,
            precision: CompiledModel.GpuOptions.Precision,
        ): CompiledModel.Options {
            return CompiledModel.Options(Accelerator.GPU).apply {
                gpuOptions = CompiledModel.GpuOptions(
                    precision = precision,
                    serializationDir = cache?.directory?.absolutePath,
                    modelCacheKey = cache?.modelToken,
                    serializeProgramCache = cache != null,
                )
            }
        }
    }
}
