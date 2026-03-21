package com.hinnka.mycamera.raw

/**
 * Legacy RAW processing preferences kept separate from the histogram matching
 * implementation so UI settings can remain compatible while the metering logic
 * is removed from the processing pipeline.
 */
object RawProcessingPreferences {
    enum class DROMode {
        OFF, LOW, HIGH
    }
}
