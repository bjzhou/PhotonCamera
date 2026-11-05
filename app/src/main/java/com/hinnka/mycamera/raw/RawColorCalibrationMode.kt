package com.hinnka.mycamera.raw

/**
 * Professional-mode source calibration selection, applied to capture, DNG serialization
 * and DNG reading alike so in-app rendering and written DNGs agree.
 */
enum class RawColorCalibrationMode(val nativeCode: Int) {
    /** sRGB placeholder detection: see [RawColorCalibrationPolicy]. */
    AUTO(0),

    /** DNG convention: ForwardMatrix first, no placeholder detection. */
    DNG_DEFAULT(1),

    /** Built-in fixed calibration ([FixedRawCalibration]) replaces every DNG source calibration. */
    BUILT_IN(2);

    companion object {
        val DEFAULT: RawColorCalibrationMode = AUTO

        fun fromName(name: String?): RawColorCalibrationMode =
            entries.firstOrNull { it.name == name } ?: DEFAULT
    }
}
