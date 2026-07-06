package com.hinnka.mycamera.raw

/**
 * Legacy RAW processing preferences kept separate from the histogram matching
 * implementation so UI settings can remain compatible while the metering logic
 * is removed from the processing pipeline.
 */
object RawProcessingPreferences {
    enum class DROMode(val captureExposureReductionEv: Float) {
        OFF(0f),
        DR100(0f),
        DR200(1f),
        DR400(2f);

        val isEnabled: Boolean
            get() = this != OFF

        companion object {
            fun fromPersistedName(name: String?): DROMode {
                return when (name) {
                    DR100.name -> DR100
                    DR200.name -> DR200
                    DR400.name -> DR400
                    OFF.name -> OFF
                    else -> OFF
                }
            }
        }
    }
}
