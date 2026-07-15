package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog

/**
 * Photon uses Google's current PGTM implementation and translates a fixed-span synthetic
 * exposure stack from the historical Photon scene-brightness target. The fusion key remains a
 * curve-shape parameter; one exposure stays pinned to inputScale to protect highlight layers.
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
        val brightnessTarget = PhotonPgtmBrightnessModel.resolve(globalStats)
        var fusionResolution: HdrExposureFusionResolutionDiagnostics? = null
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = baselineExposureEv,
            packedCellStats = packedCellStats,
            tablePointCount = tablePointCount,
            diagnosticBand = diagnosticBand,
            fusionParameters = PHOTON_FUSION_PARAMETERS,
            brightnessTarget = brightnessTarget?.fusionTarget,
            resolutionDiagnostics = { fusionResolution = it },
        ) ?: return null

        if (emitDiagnostics) {
            val inputScale = map.mapInputWeights.sum()
            val sceneWhite = 1f / inputScale
            val p50Input = globalStats.p50.takeIf { it.isFinite() && it > 0f } ?: 0f
            PLog.d(
                TAG,
                "Built adaptive Photon with Google PGTM: grid=${map.mapPointsH}x${map.mapPointsV}x" +
                    "${map.mapPointsN} statsSource=$statsSource " +
                    "globalSampleCount=${globalStats.sampleCount} baselineEv=$baselineExposureEv " +
                    "autoExposureTarget=${PHOTON_FUSION_PARAMETERS.autoExposureTarget} " +
                    "wellExposedKey=${PHOTON_FUSION_PARAMETERS.wellExposedKey} " +
                    "maxExposureGain=${PHOTON_FUSION_PARAMETERS.maxExposureGain} " +
                    "compactHdrOffsetEv=${PHOTON_FUSION_PARAMETERS.compactHdrExposureOffsetEv} " +
                    "inputScale=$inputScale sceneWhite=$sceneWhite " +
                    "p50Input=$p50Input " +
                    "brightnessAnchor=${brightnessTarget?.sceneAnchor} " +
                    "anchorSource=${brightnessTarget?.anchorSource} " +
                    "displayTarget=${brightnessTarget?.displayTarget} " +
                    "exposureLiftEv=${brightnessTarget?.exposureLiftEv} " +
                    "tailRangeEv=${brightnessTarget?.tailRangeEv} " +
                    "exposureRangeEv=${brightnessTarget?.exposureRangeEv} " +
                    "highlightGapEv=${brightnessTarget?.highlightGapEv} " +
                    "sparseStrength=${brightnessTarget?.sparseHighlightStrength} " +
                    "dynamicRangeEv=${brightnessTarget?.dynamicRangeEv} " +
                    "referenceCenterEv=${fusionResolution?.referenceCenterEv} " +
                    "resolvedCenterEv=${fusionResolution?.resolvedCenterEv} " +
                    "centeredSpanEv=${fusionResolution?.centeredExposureSpanEv} " +
                    "brightnessErrorEv=${fusionResolution?.brightnessErrorEv} " +
                    "protectedExposureGain=${fusionResolution?.protectedExposureGain}"
            )
        }
        return map
    }
}
