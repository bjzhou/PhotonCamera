package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog

/**
 * Photon uses Google's PGTM implementation directly. The only Photon-specific values are
 * exposure-fusion planning parameters selected to keep its median brightness close to the
 * previous Photon rendering. Input scale estimation, spatial planning, synthetic-exposure
 * fusion, highlight shoulder, and the table endpoint all remain the Google implementation.
 */
internal object DngPhotonProfileGainTableGenerator {
    private const val TAG = "DngPhotonProfileGainTableGenerator"
    private const val DEFAULT_TABLE_POINTS = 257

    internal val PHOTON_FUSION_PARAMETERS = HdrExposureFusionParameters(
        autoExposureTarget = 0.230f,
        wellExposedKey = 0.720f,
        maxExposureGain = 9.50f,
        compactHdrExposureOffsetEv = 0.920f,
        highlightFusionStart = 0.200f,
        highlightFusionEnd = 0.650f,
    )

    fun forCellStats(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        packedCellStats: FloatArray,
        globalStats: DngPgtmGlobalStats,
        tablePointCount: Int = DEFAULT_TABLE_POINTS,
        diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand? = null,
        emitDiagnostics: Boolean = true,
        statsSource: String = "global-samples",
    ): DngProfileGainTableMap? {
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = baselineExposureEv,
            packedCellStats = packedCellStats,
            denseGlobalStats = globalStats,
            tablePointCount = tablePointCount,
            diagnosticBand = diagnosticBand,
            fusionParameters = PHOTON_FUSION_PARAMETERS,
        ) ?: return null

        if (emitDiagnostics) {
            val inputScale = map.mapInputWeights.sum()
            val sceneWhite = 1f / inputScale
            val p50Input = globalStats.p50.takeIf { it.isFinite() && it > 0f } ?: 0f
            PLog.d(
                TAG,
                "Built Photon with Google PGTM: grid=${map.mapPointsH}x${map.mapPointsV}x" +
                    "${map.mapPointsN} statsSource=$statsSource " +
                    "globalSampleCount=${globalStats.sampleCount} baselineEv=$baselineExposureEv " +
                    "autoExposureTarget=${PHOTON_FUSION_PARAMETERS.autoExposureTarget} " +
                    "wellExposedKey=${PHOTON_FUSION_PARAMETERS.wellExposedKey} " +
                    "maxExposureGain=${PHOTON_FUSION_PARAMETERS.maxExposureGain} " +
                    "compactHdrOffsetEv=${PHOTON_FUSION_PARAMETERS.compactHdrExposureOffsetEv} " +
                    "inputScale=$inputScale sceneWhite=$sceneWhite " +
                    "p50Input=$p50Input"
            )
        }
        return map
    }
}
