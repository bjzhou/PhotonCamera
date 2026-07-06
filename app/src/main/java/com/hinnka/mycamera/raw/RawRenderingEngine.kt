package com.hinnka.mycamera.raw

const val RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV = 0.7f

enum class RawExposureCompensationDomain {
    Curve,
    Linear
}

enum class RawRenderingEngine(
    val shaderId: Int,
    val workingColorSpace: ColorSpace,
    val defaultExposureCompensationEv: Float,
    val meteringCompensationEv: Float,
    val exposureCompensationDomain: RawExposureCompensationDomain
) {
    AdobeCurve(
        shaderId = 0,
        workingColorSpace = ColorSpace.ProPhoto,
        defaultExposureCompensationEv = 0f,
        meteringCompensationEv = 1f,
        exposureCompensationDomain = RawExposureCompensationDomain.Curve
    ),
    DarktableFilmic(
        shaderId = 4,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        meteringCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    AgX(
        shaderId = 1,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        meteringCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    DarktableSigmoid(
        shaderId = 3,
        workingColorSpace = ColorSpace.BT2020,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        meteringCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    Spektrafilm(
        shaderId = 2,
        workingColorSpace = ColorSpace.ProPhoto,
        defaultExposureCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        meteringCompensationEv = RAW_RENDERING_ENGINE_METERING_COMPENSATION_EV,
        exposureCompensationDomain = RawExposureCompensationDomain.Linear
    ),
    ;

    companion object {
        fun fromPersistedName(
            value: String?,
            fallback: RawRenderingEngine = AdobeCurve
        ): RawRenderingEngine {
            return entries.firstOrNull { it.name.equals(value, ignoreCase = true) } ?: fallback
        }
    }
}
