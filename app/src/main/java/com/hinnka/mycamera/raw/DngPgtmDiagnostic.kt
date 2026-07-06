package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog

internal object DngPgtmDiagnostic {
    private const val TAG = "DngPgtmDiagnostic"

    // 0 disables gain mutation. For halo isolation, use BLOCK_ONLY and sweep 7..18.
    private const val PGTM_DIAGNOSTIC_BAND_INDEX = 0
    private val PGTM_DIAGNOSTIC_MODE = DngHdrProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY

    // Draws tableInput 0.080..0.140 as 0.005-wide false-color bands in RAW preview.
    private const val PGTM_VISUAL_OVERLAY_MODE = 0

    private var visualOverlayLogged = false

    fun activeBandForSource(source: String): DngHdrProfileGainTableGenerator.DiagnosticBand? {
        val band = activeBand() ?: return null
        PLog.w(
            TAG,
            "PGTM diagnostic band active for $source: mode=${band.mode} " +
                "tableInput=${band.start}..${band.end} feather=${band.feather}"
        )
        return band
    }

    fun visualOverlayModeForSource(source: String): Int {
        if (PGTM_VISUAL_OVERLAY_MODE == 0) return 0
        if (!visualOverlayLogged) {
            visualOverlayLogged = true
            PLog.w(
                TAG,
                "PGTM visual overlay active for $source: tableInput 0.080..0.140 " +
                    "split by 0.005; outside range is dim grayscale"
            )
        }
        return PGTM_VISUAL_OVERLAY_MODE
    }

    fun applyToEmbeddedMap(
        map: DngProfileGainTableMap?,
        source: String,
    ): DngProfileGainTableMap? {
        val embeddedMap = map ?: return null
        val band = activeBandForSource(source) ?: return embeddedMap
        return DngHdrProfileGainTableGenerator.withDiagnosticBand(embeddedMap, band)
    }

    private fun activeBand(): DngHdrProfileGainTableGenerator.DiagnosticBand? {
        return when (PGTM_DIAGNOSTIC_BAND_INDEX) {
            1 -> band(0.000f, 0.005f, feather = 0.0010f)
            2 -> band(0.005f, 0.010f, feather = 0.0010f)
            3 -> band(0.010f, 0.020f, feather = 0.0020f)
            4 -> band(0.020f, 0.040f, feather = 0.0030f)
            5 -> band(0.040f, 0.060f, feather = 0.0030f)
            6 -> band(0.060f, 0.080f, feather = 0.0030f)
            7 -> band(0.080f, 0.085f)
            8 -> band(0.085f, 0.090f)
            9 -> band(0.090f, 0.095f)
            10 -> band(0.095f, 0.100f)
            11 -> band(0.100f, 0.105f)
            12 -> band(0.105f, 0.110f)
            13 -> band(0.110f, 0.115f)
            14 -> band(0.115f, 0.120f)
            15 -> band(0.120f, 0.125f)
            16 -> band(0.125f, 0.130f)
            17 -> band(0.130f, 0.135f)
            18 -> band(0.135f, 0.140f)
            19 -> band(0.140f, 0.160f, feather = 0.0040f)
            20 -> band(0.160f, 0.180f, feather = 0.0040f)
            21 -> band(0.180f, 0.250f, feather = 0.0080f)
            22 -> band(0.250f, 0.400f, feather = 0.0120f)
            else -> null
        }
    }

    private fun band(
        start: Float,
        end: Float,
        feather: Float = 0.0010f,
    ): DngHdrProfileGainTableGenerator.DiagnosticBand {
        return DngHdrProfileGainTableGenerator.DiagnosticBand(
            start = start,
            end = end,
            feather = feather,
            mode = PGTM_DIAGNOSTIC_MODE
        )
    }
}
