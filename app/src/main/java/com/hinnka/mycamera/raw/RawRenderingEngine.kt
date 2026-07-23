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
    DarktableFilmic(
        shaderId = 4,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    AgX(
        shaderId = 1,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_DEFAULT_EXPOSURE_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    DarktableSigmoid(
        shaderId = 3,
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
    HncsCcm(
        shaderId = 5,
        workingColorSpace = ColorSpace.HNCS,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    HncsLut(
        shaderId = 6,
        workingColorSpace = ColorSpace.HNCS,
        defaultExposureCompensationEv = 0f,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    ;

    val isHncs: Boolean
        get() = this == HncsCcm || this == HncsLut

    val usesHncsColorMap: Boolean
        get() = this == HncsLut

    companion object {
        fun fromPersistedName(
            value: String?,
            fallback: RawRenderingEngine = AdobeCurve
        ): RawRenderingEngine {
            return entries.firstOrNull { it.name.equals(value, ignoreCase = true) } ?: fallback
        }
    }
}
