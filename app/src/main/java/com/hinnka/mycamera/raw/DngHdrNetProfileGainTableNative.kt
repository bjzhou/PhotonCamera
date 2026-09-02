package com.hinnka.mycamera.raw

/** Native hot path for converting HDRNet's bilateral grid into a dense PGTM gain table. */
internal object DngHdrNetProfileGainTableNative {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun generateGains(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        acr3Curve: FloatArray,
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
            outputGains = output,
        )
        return output.takeIf { completed }
    }

    fun evaluateDisplayLinearLumaGrid(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
        outputRotation: Int,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        renderMinGain: Float,
        renderMaxGain: Float,
        outputGridWidth: Int,
        outputGridHeight: Int,
        footprintSamplesPerAxis: Int,
    ): FloatArray? {
        val outputCount = outputGridWidth.toLong() * outputGridHeight
        if (outputCount !in 1..Int.MAX_VALUE.toLong()) return null
        val output = FloatArray(outputCount.toInt())
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
            footprintSamplesPerAxis = footprintSamplesPerAxis,
            hdrRatio = plan.hdrRatio,
            renderMinGain = renderMinGain,
            renderMaxGain = renderMaxGain,
            outputRotation = outputRotation,
            guideShifts = guideShifts,
            guideSlopes = guideSlopes,
            outputLumas = output,
        )
        return output.takeIf { completed }
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
        footprintSamplesPerAxis: Int,
        hdrRatio: Float,
        renderMinGain: Float,
        renderMaxGain: Float,
        outputRotation: Int,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        outputLumas: FloatArray,
    ): Boolean

    private external fun nativeGenerateGains(
        coefficients: FloatArray,
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
        outputGains: FloatArray,
    ): Boolean

    private const val HDRNET_INPUT_CHANNELS = 4
}
