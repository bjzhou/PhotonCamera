package com.hinnka.mycamera.raw

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
        outputCurve: FloatArray,
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        minTableGain: Float,
        maxTableGain: Float,
    ): FloatArray? {
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
            outputCurve = outputCurve,
            mapInputWeights = plan.mapInputWeights,
            outputGains = output,
        )
        return output.takeIf { completed }
    }

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
        outputCurve: FloatArray,
        mapInputWeights: FloatArray,
        outputGains: FloatArray,
    ): Boolean

    private const val HDRNET_INPUT_CHANNELS = 4
}
