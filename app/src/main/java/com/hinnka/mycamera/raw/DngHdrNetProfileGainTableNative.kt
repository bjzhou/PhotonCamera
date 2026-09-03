package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonDehazeTuning

/** Native hot path for converting HDRNet's bilateral grid into a dense PGTM gain table. */
internal object DngHdrNetProfileGainTableNative {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun generateGains(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        acr3Curve: FloatArray,
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        minTableGain: Float,
        maxTableGain: Float,
        dehazeCurve: PhotonDehazeCurveParameters,
        postExposureGain: Float,
    ): FloatArray? {
        if (!postExposureGain.isFinite() || postExposureGain <= 0f) return null
        val outputCount = plan.cellCount.toLong() * plan.pointCount
        if (outputCount !in 1..Int.MAX_VALUE.toLong()) return null
        val output = FloatArray(outputCount.toInt())
        val completed = nativeGenerateGains(
            coefficients = coefficients,
            modelInput = modelInput,
            inputWidth = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH,
            inputHeight = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT,
            inputChannels = HDRNET_INPUT_CHANNELS,
            sourceGridWidth = DngPhotonProfileGainTableGenerator.HDRNET_GRID_WIDTH,
            sourceGridHeight = DngPhotonProfileGainTableGenerator.HDRNET_GRID_HEIGHT,
            sourceGridDepth = DngPhotonProfileGainTableGenerator.HDRNET_GRID_DEPTH,
            coefficientCount = DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT,
            outputGridWidth = plan.grid.mapPointsH,
            outputGridHeight = plan.grid.mapPointsV,
            pointCount = plan.pointCount,
            hdrRatio = plan.hdrRatio,
            sourceToShortGain = plan.sourceToShortGain,
            rendererBaselineGain = plan.rendererBaselineGain,
            renderMinGain = renderMinGain,
            renderMaxGain = renderMaxGain,
            renderMaxGainBlendThreshold = renderMaxGainBlendThreshold,
            minTableGain = minTableGain,
            maxTableGain = maxTableGain,
            guideShifts = guideShifts,
            guideSlopes = guideSlopes,
            acr3Curve = acr3Curve,
            dehazeCurve = dehazeCurve.toNativeArray(),
            postExposureGain = postExposureGain,
            outputGains = output,
        )
        return output.takeIf { completed }
    }

    data class Evaluation(
        val displayLinearLumas: FloatArray,
        val dehazeCurve: PhotonDehazeCurveParameters,
        /** Full 256 x 192 post-Dehaze/DHA p99 maximum RGB channel. */
        val postDehazeP99Peak: Float,
    )

    fun evaluateDehazedDisplayLinearLumaGrid(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
        outputRotation: Int,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        dehazeTuning: PhotonDehazeTuning,
        outputGridWidth: Int,
        outputGridHeight: Int,
    ): Evaluation? {
        val outputCount = outputGridWidth.toLong() * outputGridHeight
        if (outputCount !in 1..Int.MAX_VALUE.toLong()) return null
        val output = FloatArray(outputCount.toInt())
        val curveValues = FloatArray(PhotonDehazeCurveParameters.NATIVE_VALUE_COUNT)
        val metrics = FloatArray(EVALUATION_METRIC_COUNT)
        val normalizedTuning = dehazeTuning.normalized()
        val completed = nativeEvaluateDisplayLinearLumaGrid(
            coefficients = coefficients,
            sourceGridWidth = DngPhotonProfileGainTableGenerator.HDRNET_GRID_WIDTH,
            sourceGridHeight = DngPhotonProfileGainTableGenerator.HDRNET_GRID_HEIGHT,
            sourceGridDepth = DngPhotonProfileGainTableGenerator.HDRNET_GRID_DEPTH,
            coefficientCount = DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT,
            modelInput = modelInput,
            inputWidth = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH,
            inputHeight = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT,
            inputChannels = HDRNET_INPUT_CHANNELS,
            outputGridWidth = outputGridWidth,
            outputGridHeight = outputGridHeight,
            hdrRatio = plan.hdrRatio,
            renderMinGain = renderMinGain,
            renderMaxGain = renderMaxGain,
            renderMaxGainBlendThreshold = renderMaxGainBlendThreshold,
            dehazeEnabled = normalizedTuning.isActive,
            dehazeStrength = normalizedTuning.strength,
            dynamicHighlightStrength = normalizedTuning.dynamicHighlightStrength,
            outputRotation = outputRotation,
            guideShifts = guideShifts,
            guideSlopes = guideSlopes,
            outputLumas = output,
            outputDehazeCurve = curveValues,
            outputMetrics = metrics,
        )
        if (!completed) return null
        val curve = PhotonDehazeCurveParameters.fromNativeArray(curveValues) ?: return null
        val postDehazeP99Peak = metrics[METRIC_POST_DEHAZE_P99_PEAK]
            .takeIf { it.isFinite() && it in 0f..1f }
            ?: return null
        return Evaluation(
            displayLinearLumas = output,
            dehazeCurve = curve,
            postDehazeP99Peak = postDehazeP99Peak,
        )
    }

    private external fun nativeEvaluateDisplayLinearLumaGrid(
        coefficients: FloatArray,
        sourceGridWidth: Int,
        sourceGridHeight: Int,
        sourceGridDepth: Int,
        coefficientCount: Int,
        modelInput: FloatArray,
        inputWidth: Int,
        inputHeight: Int,
        inputChannels: Int,
        outputGridWidth: Int,
        outputGridHeight: Int,
        hdrRatio: Float,
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        dehazeEnabled: Boolean,
        dehazeStrength: Float,
        dynamicHighlightStrength: Float,
        outputRotation: Int,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        outputLumas: FloatArray,
        outputDehazeCurve: FloatArray,
        outputMetrics: FloatArray,
    ): Boolean

    private external fun nativeGenerateGains(
        coefficients: FloatArray,
        modelInput: FloatArray,
        inputWidth: Int,
        inputHeight: Int,
        inputChannels: Int,
        sourceGridWidth: Int,
        sourceGridHeight: Int,
        sourceGridDepth: Int,
        coefficientCount: Int,
        outputGridWidth: Int,
        outputGridHeight: Int,
        pointCount: Int,
        hdrRatio: Float,
        sourceToShortGain: Float,
        rendererBaselineGain: Float,
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        minTableGain: Float,
        maxTableGain: Float,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        acr3Curve: FloatArray,
        dehazeCurve: FloatArray,
        postExposureGain: Float,
        outputGains: FloatArray,
    ): Boolean

    private const val HDRNET_INPUT_CHANNELS = 4
    private const val EVALUATION_METRIC_COUNT = 1
    private const val METRIC_POST_DEHAZE_P99_PEAK = 0
}
