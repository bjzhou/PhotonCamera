package com.hinnka.mycamera.raw

/** JVM-only bridge that exercises the production planner with a deterministic curve stage. */
internal fun DngHdrProfileGainTableGenerator.forCellStats(
    width: Int,
    height: Int,
    baselineExposureEv: Float,
    packedCellStats: FloatArray,
    tablePointCount: Int = 257,
    diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand? = null,
    fusionParameters: HdrExposureFusionParameters =
        DngHdrProfileGainTableGenerator.GOOGLE_FUSION_PARAMETERS,
): DngProfileGainTableMap? {
    val plan = planForCellStats(
        width = width,
        height = height,
        baselineExposureEv = baselineExposureEv,
        packedCellStats = packedCellStats,
        tablePointCount = tablePointCount,
        diagnosticBand = diagnosticBand,
        fusionParameters = fusionParameters,
    ) ?: return null
    return mapFromGpuGains(plan, DngHdrProfileGainTableCpuReference.generate(plan))
}
