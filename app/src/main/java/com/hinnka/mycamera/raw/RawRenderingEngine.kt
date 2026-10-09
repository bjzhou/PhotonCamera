package com.hinnka.mycamera.raw

const val RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV = 0.7f

enum class RawExposureCompensationDomain {
    Curve,
    Linear
}

enum class RawRenderingEngine(
    val shaderId: Int,
    val workingColorSpace: ColorSpace,
    val defaultExposureCompensationEv: Float,
    val exposureCompensationDomain: RawExposureCompensationDomain
) {
    AdobeCurve(
        shaderId = 0,
        workingColorSpace = ColorSpace.ProPhoto,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Curve
    ),
    Hncs(
        shaderId = 6,
        workingColorSpace = ColorSpace.HNCS,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    Lumix(
        shaderId = 7,
        // Output/adjustment space only: calibration maps source WB camera RGB
        // to S9 camera RGB before the PhotoStyle curve/LUT, without sRGB encoding.
        workingColorSpace = ColorSpace.SRGB,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    Canon(
        shaderId = 8,
        // Output/adjustment space; the renderer owns its Picture Style input domain.
        workingColorSpace = ColorSpace.SRGB,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    Leica(
        shaderId = 10,
        // Output/adjustment space; M9's matrix/LUT stage consumes WB camera RGB.
        workingColorSpace = ColorSpace.SRGB,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    AgX(
        shaderId = 1,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    Spektrafilm(
        shaderId = 2,
        workingColorSpace = ColorSpace.ProPhoto,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    DarktableSigmoid(
        shaderId = 3,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    DarktableFilmic(
        shaderId = 4,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    ;

    val isHncs: Boolean
        get() = this == Hncs

    val isLumix: Boolean
        get() = this == Lumix

    val isCanon: Boolean
        get() = this == Canon

    val isLeica: Boolean
        get() = this == Leica

    val usesCameraInputDomain: Boolean
        get() = isLumix || isHncs || isCanon || isLeica

    companion object {
        fun fromPersistedName(
            value: String?,
            fallback: RawRenderingEngine = AdobeCurve
        ): RawRenderingEngine {
            if (value.equals("HncsCcm", ignoreCase = true) ||
                value.equals("HncsLut", ignoreCase = true)) return Hncs
            return entries.firstOrNull { it.name.equals(value, ignoreCase = true) } ?: fallback
        }
    }
}
