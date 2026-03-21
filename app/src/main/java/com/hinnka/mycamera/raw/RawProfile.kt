package com.hinnka.mycamera.raw

enum class RawProfile(
    val colorSpace: ColorSpace,
    val logCurve: LogCurve,
    val rawLut: String
) {
    ACES_CINE(
        colorSpace = ColorSpace.ACES_AP1,
        logCurve = LogCurve.ACES_CCT,
        rawLut = "P3.plut"
    ),
    FUJI_PROVIA(
        colorSpace = ColorSpace.BT2020,
        logCurve = LogCurve.FLOG2,
        rawLut = "PROVIA.plut"
    ),
    STANDARD_SRGB(
        colorSpace = ColorSpace.SRGB,
        logCurve = LogCurve.SRGB,
        rawLut = "none"
    );

    companion object {
        val default = FUJI_PROVIA

        fun fromComponents(
            colorSpace: ColorSpace,
            logCurve: LogCurve,
            rawLut: String?
        ): RawProfile {
            return entries.firstOrNull { profile ->
                profile.colorSpace == colorSpace &&
                    profile.logCurve == logCurve &&
                    profile.rawLut == (rawLut ?: defaultLutFor(colorSpace, logCurve))
            } ?: entries.firstOrNull { profile ->
                profile.colorSpace == colorSpace && profile.logCurve == logCurve
            } ?: default
        }

        fun defaultLutFor(colorSpace: ColorSpace, logCurve: LogCurve): String {
            return entries.firstOrNull { it.colorSpace == colorSpace && it.logCurve == logCurve }?.rawLut
                ?: default.rawLut
        }
    }
}
