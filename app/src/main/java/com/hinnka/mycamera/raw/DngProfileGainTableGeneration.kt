package com.hinnka.mycamera.raw

/** Legacy GPU result kept until the obsolete render-time PGTM shader is removed. */
internal data class DngProfileGainTableGeneration(
    val baselineExposureEv: Float,
    val profileGainTableMap: DngProfileGainTableMap,
)
