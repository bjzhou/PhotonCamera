package com.hinnka.mycamera.raw

internal fun DngHdrProfileGainTableGenerator.generateForCellStats(
    width: Int,
    height: Int,
    baselineExposureEv: Float,
    packedCellStats: FloatArray,
    noiseSlope: Float,
    noiseOffset: Float,
    diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand? = null,
    curveModel: HdrPgtmCurveModel = HdrPgtmCurveModel.GOOGLE,
): DngProfileGainTableMap? {
    val plan = planForCellStats(
        width = width,
        height = height,
        baselineExposureEv = baselineExposureEv,
        packedCellStats = packedCellStats,
        noiseSlope = noiseSlope,
        noiseOffset = noiseOffset,
        diagnosticBand = diagnosticBand,
        curveModel = curveModel,
    ) ?: return null
    return mapFromGpuGains(plan, DngHdrProfileGainTableCpuReference.generate(plan))
}
