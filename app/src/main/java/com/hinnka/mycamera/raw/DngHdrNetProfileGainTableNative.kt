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
        val diagnosticBand = plan.diagnosticBand
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
            renderMinGain = renderMinGain,
            renderMaxGain = renderMaxGain,
            renderMaxGainBlendThreshold = renderMaxGainBlendThreshold,
            minTableGain = minTableGain,
            maxTableGain = maxTableGain,
            guideShifts = guideShifts,
            guideSlopes = guideSlopes,
            acr3Curve = acr3Curve,
            diagnosticStart = diagnosticBand?.start ?: 0f,
            diagnosticEnd = diagnosticBand?.end ?: 1f,
            diagnosticFeather = diagnosticBand?.feather ?: 0f,
            diagnosticMode = diagnosticBand?.mode?.ordinal ?: -1,
            outputGains = output,
        )
        return output.takeIf { completed }
    }

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
        renderMinGain: Float,
        renderMaxGain: Float,
        renderMaxGainBlendThreshold: Float,
        minTableGain: Float,
        maxTableGain: Float,
        guideShifts: FloatArray,
        guideSlopes: FloatArray,
        acr3Curve: FloatArray,
        diagnosticStart: Float,
        diagnosticEnd: Float,
        diagnosticFeather: Float,
        diagnosticMode: Int,
        outputGains: FloatArray,
    ): Boolean
}
