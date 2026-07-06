package com.hinnka.mycamera.raw

import com.hinnka.mycamera.color.TransferCurve

enum class RawProfile(
    val colorSpace: ColorSpace,
    val logCurve: TransferCurve,
    val rawLut: String
) {
    ACES_CINE(
        colorSpace = ColorSpace.ACES_AP1,
        logCurve = TransferCurve.ACES_CCT,
        rawLut = "P3.plut"
    ),
    FUJI_PROVIA(
        colorSpace = ColorSpace.BT2020,
        logCurve = TransferCurve.FLOG2,
        rawLut = "PROVIA.plut"
    ),
    STANDARD_SRGB(
        colorSpace = ColorSpace.SRGB,
        logCurve = TransferCurve.SRGB,
        rawLut = "none"
    );

    companion object {
        val default = FUJI_PROVIA

        fun fromComponents(
            colorSpace: ColorSpace,
            logCurve: TransferCurve,
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

        fun defaultLutFor(colorSpace: ColorSpace, logCurve: TransferCurve): String {
            return entries.firstOrNull { it.colorSpace == colorSpace && it.logCurve == logCurve }?.rawLut
                ?: default.rawLut
        }
    }
}
