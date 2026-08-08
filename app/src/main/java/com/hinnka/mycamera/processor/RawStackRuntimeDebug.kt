package com.hinnka.mycamera.processor

import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil

internal enum class MgcSpatialDiagnosticMode {
    NONE,
    REFERENCE_ONLY,
    IDENTITY_TEMPORAL_WEIGHTS,
    MAIN_REJECTION_ONLY,
    DISABLE_UNBLOCKER,
    DISABLE_LINEAR_KERNEL,
    FORCE_LINEAR_KERNEL,
}

internal object RawStackRuntimeDebug {
    val enabled: Boolean
        get() = BuildConfig.DEBUG

    /**
     * Process-local MGC Spatial isolation selected through
     * debug.photon.mgc_spatial.mode. It is unavailable in release builds and is never persisted.
     */
    val mgcSpatialDiagnosticMode: MgcSpatialDiagnosticMode
        get() {
            if (!enabled) return MgcSpatialDiagnosticMode.NONE
            return when (
                SystemPropertiesUtil.get("debug.photon.mgc_spatial.mode")?.uppercase()
            ) {
                "REFERENCE_ONLY" -> MgcSpatialDiagnosticMode.REFERENCE_ONLY
                "IDENTITY_TEMPORAL_WEIGHTS" ->
                    MgcSpatialDiagnosticMode.IDENTITY_TEMPORAL_WEIGHTS
                "MAIN_REJECTION_ONLY" ->
                    MgcSpatialDiagnosticMode.MAIN_REJECTION_ONLY
                "DISABLE_UNBLOCKER" ->
                    MgcSpatialDiagnosticMode.DISABLE_UNBLOCKER
                "DISABLE_LINEAR_KERNEL" ->
                    MgcSpatialDiagnosticMode.DISABLE_LINEAR_KERNEL
                "FORCE_LINEAR_KERNEL" ->
                    MgcSpatialDiagnosticMode.FORCE_LINEAR_KERNEL
                else -> MgcSpatialDiagnosticMode.NONE
            }
        }

    /**
     * Full CPU scans of the spatial strength inputs are intentionally opt-in. They are useful
     * while validating the capsule boundary, but do not affect the capsule result and are too
     * expensive to run on every debug capture.
     */
    val mgcSpatialInputDiagnosticsEnabled: Boolean
        get() = enabled &&
            SystemPropertiesUtil.get("debug.photon.mgc_spatial.input_diagnostics")
                ?.toBooleanStrictOrNull() == true

    val debugConfig: RawStackDebugConfig
        get() = RawStackDebugConfig.forCurrentBuild()

    inline fun d(tag: String, message: () -> String) {
        if (enabled) {
            PLog.d(tag, message())
        }
    }

    inline fun i(tag: String, message: () -> String) {
        if (enabled) {
            PLog.i(tag, message())
        }
    }
}
