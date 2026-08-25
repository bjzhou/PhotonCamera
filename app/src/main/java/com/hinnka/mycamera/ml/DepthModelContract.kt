package com.hinnka.mycamera.ml

import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import org.tensorflow.lite.Tensor

/**
 * Tensor contract required by the app's monocular depth pipeline.
 *
 * Model architecture and version are deliberately not part of the contract. Any
 * TFLite model that accepts one RGB image and exposes a single-channel depth map
 * can be used by [DepthEstimator].
 */
internal data class DepthModelContract(
    val inputWidth: Int,
    val inputHeight: Int,
    val inputChannelsFirst: Boolean,
    val inputDataType: DataType,
    val outputTensorIndex: Int,
    val outputWidth: Int,
    val outputHeight: Int,
    val outputDataType: DataType,
)

internal fun inspectDepthModelContract(interpreter: Interpreter): DepthModelContract {
    require(interpreter.inputTensorCount == 1) {
        "Depth model must have exactly one input tensor"
    }

    val inputTensor = interpreter.getInputTensor(0)
    val inputShape = inputTensor.shape()
    require(inputShape.size == 4 && inputShape[0] == 1) {
        "Depth model input must have shape [1, H, W, 3] or [1, 3, H, W], " +
            "actual=${inputShape.contentToString()}"
    }

    val inputChannelsFirst = inputShape[1] == RGB_CHANNEL_COUNT
    val inputChannelsLast = inputShape[3] == RGB_CHANNEL_COUNT
    require(inputChannelsFirst || inputChannelsLast) {
        "Depth model input must contain three RGB channels, " +
            "actual=${inputShape.contentToString()}"
    }

    val inputHeight = if (inputChannelsFirst) inputShape[2] else inputShape[1]
    val inputWidth = if (inputChannelsFirst) inputShape[3] else inputShape[2]
    require(inputWidth > 0 && inputHeight > 0) {
        "Depth model input dimensions must be fixed and positive"
    }
    require(inputTensor.dataType() in SUPPORTED_INPUT_TYPES) {
        "Unsupported depth model input type: ${inputTensor.dataType()}"
    }

    val outputCandidate = (0 until interpreter.outputTensorCount)
        .mapNotNull { index ->
            createOutputCandidate(index, interpreter.getOutputTensor(index))
        }
        .maxWithOrNull(
            compareBy<DepthOutputCandidate> { it.namePriority }
                .thenBy { it.width.toLong() * it.height.toLong() }
        )
        ?: throw IllegalArgumentException(
            "Depth model must expose a FLOAT32, UINT8, or INT8 single-channel depth output"
        )

    return DepthModelContract(
        inputWidth = inputWidth,
        inputHeight = inputHeight,
        inputChannelsFirst = inputChannelsFirst,
        inputDataType = inputTensor.dataType(),
        outputTensorIndex = outputCandidate.index,
        outputWidth = outputCandidate.width,
        outputHeight = outputCandidate.height,
        outputDataType = outputCandidate.dataType,
    )
}

private fun createOutputCandidate(index: Int, tensor: Tensor): DepthOutputCandidate? {
    if (tensor.dataType() !in SUPPORTED_OUTPUT_TYPES) return null
    val spatialSize = resolveSingleChannelSpatialSize(tensor.shape()) ?: return null
    val normalizedName = tensor.name().lowercase()
    val namePriority = when {
        DEPTH_OUTPUT_NAME_HINTS.any(normalizedName::contains) -> 2
        CONFIDENCE_OUTPUT_NAME_HINTS.any(normalizedName::contains) -> 0
        else -> 1
    }
    return DepthOutputCandidate(
        index = index,
        width = spatialSize.first,
        height = spatialSize.second,
        dataType = tensor.dataType(),
        namePriority = namePriority,
    )
}

private fun resolveSingleChannelSpatialSize(shape: IntArray): Pair<Int, Int>? {
    if (shape.isEmpty() || shape.any { it <= 0 }) return null
    val nonSingletonDimensions = shape.filter { it > 1 }
    val (height, width) = when (nonSingletonDimensions.size) {
        2 -> nonSingletonDimensions[0] to nonSingletonDimensions[1]
        1 -> {
            val side = kotlin.math.sqrt(nonSingletonDimensions[0].toDouble()).toInt()
            if (side * side != nonSingletonDimensions[0]) return null
            side to side
        }
        else -> return null
    }
    val elementCount = shape.fold(1L) { count, dimension -> count * dimension.toLong() }
    if (elementCount != width.toLong() * height.toLong()) return null
    return width to height
}

private data class DepthOutputCandidate(
    val index: Int,
    val width: Int,
    val height: Int,
    val dataType: DataType,
    val namePriority: Int,
)

private const val RGB_CHANNEL_COUNT = 3
private val SUPPORTED_INPUT_TYPES = setOf(DataType.FLOAT32, DataType.UINT8, DataType.INT8)
private val SUPPORTED_OUTPUT_TYPES = setOf(DataType.FLOAT32, DataType.UINT8, DataType.INT8)
private val DEPTH_OUTPUT_NAME_HINTS = listOf("depth", "disparity", "inverse_depth", "inv_depth")
private val CONFIDENCE_OUTPUT_NAME_HINTS = listOf("confidence", "conf", "uncertainty")
