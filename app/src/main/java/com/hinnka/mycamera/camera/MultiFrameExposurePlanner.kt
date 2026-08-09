package com.hinnka.mycamera.camera

import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.roundToInt
import kotlin.math.roundToLong

internal data class MultiFrameLongExposurePlan(
    val sensitivityIso: Int,
    val exposureTimeNs: Long,
    val targetExposureProduct: Double,
    val plannedExposureProduct: Double,
    val plannedDeltaEv: Double,
    val exposureTimeUpperLimitNs: Long,
    val isoUpperLimited: Boolean,
    val shutterUpperLimited: Boolean,
    val upperLimitsProduceLowerExposureThanBase: Boolean,
)

internal object MultiFrameExposurePlanner {
    private val LN_2 = ln(2.0)

    fun planLongExposure(
        baseIso: Int,
        baseExposureTimeNs: Long,
        isoLower: Int,
        isoUpper: Int,
        exposureTimeLowerNs: Long,
        exposureTimeUpperNs: Long,
    ): MultiFrameLongExposurePlan {
        require(baseIso > 0 && baseExposureTimeNs > 0L) { "Base exposure must be positive" }
        require(isoLower > 0 && isoUpper >= isoLower) { "Invalid ISO range" }
        require(exposureTimeLowerNs > 0L && exposureTimeUpperNs >= exposureTimeLowerNs) {
            "Invalid exposure-time range"
        }

        val maximumLongExposureTimeNs = min(
            exposureTimeUpperNs,
            max(
                MultiFrameConfig.LONG_FRAME_MAX_EXPOSURE_TIME_NS,
                baseExposureTimeNs,
            ),
        )
        require(maximumLongExposureTimeNs >= exposureTimeLowerNs) {
            "Sensor minimum exposure time exceeds the long-frame shutter limit"
        }

        val exposureMultiplier = 2.0.pow(MultiFrameConfig.LONG_FRAME_EXPOSURE_EV)
        val baseExposureProduct = baseIso.toDouble() * baseExposureTimeNs.toDouble()
        val targetExposureProduct = baseExposureProduct * exposureMultiplier
        val unboundedExposureTimeNs = baseExposureTimeNs.toDouble() * exposureMultiplier
        val initialExposureTimeNs = unboundedExposureTimeNs
            .roundToLong()
            .coerceIn(exposureTimeLowerNs, maximumLongExposureTimeNs)
        val sensitivityIso = (targetExposureProduct / initialExposureTimeNs.toDouble())
            .roundToInt()
            .coerceIn(isoLower, isoUpper)
        val exposureTimeNs = (targetExposureProduct / sensitivityIso.toDouble())
            .roundToLong()
            .coerceIn(exposureTimeLowerNs, maximumLongExposureTimeNs)
        val plannedExposureProduct = sensitivityIso.toDouble() * exposureTimeNs.toDouble()

        return MultiFrameLongExposurePlan(
            sensitivityIso = sensitivityIso,
            exposureTimeNs = exposureTimeNs,
            targetExposureProduct = targetExposureProduct,
            plannedExposureProduct = plannedExposureProduct,
            plannedDeltaEv = ln(plannedExposureProduct / baseExposureProduct) / LN_2,
            exposureTimeUpperLimitNs = maximumLongExposureTimeNs,
            isoUpperLimited = sensitivityIso == isoUpper &&
                plannedExposureProduct < targetExposureProduct,
            shutterUpperLimited = unboundedExposureTimeNs > maximumLongExposureTimeNs.toDouble(),
            upperLimitsProduceLowerExposureThanBase = sensitivityIso == isoUpper &&
                exposureTimeNs == maximumLongExposureTimeNs &&
                plannedExposureProduct < baseExposureProduct,
        )
    }
}
