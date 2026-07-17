package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

/** Deterministic JVM mirror of [DngHdrProfileGainTableGpuShaders.GAIN_CURVES]. */
internal object DngHdrProfileGainTableCpuReference {
    private const val SYNTHETIC_EXPOSURE_COUNT = 8
    private const val MIN_TABLE_GAIN = 0.05f
    private const val CURVE_EPS = 1e-6f
    private const val EXPOSURE_STEPS_PER_EV = 128f
    private const val WEIGHT_STEPS_PER_EV = 256f
    private const val WEIGHT_MAX_DISTANCE_EV = 12f

    fun generate(plan: HdrProfileGainTablePlan): FloatArray {
        val cellCount = plan.grid.mapPointsH * plan.grid.mapPointsV
        val output = FloatArray(cellCount * plan.pointCount)
        val weightLut = DngHdrProfileGainTableGenerator.interleavedWellExposedWeightLut()
        val curveCache = HashMap<Long, FloatArray>()
        plan.cellPlans.forEachIndexed { cell, cellPlan ->
            val brightestKey = quantizedExposureKey(cellPlan.brightestExposureGain)
            val darkestKey = quantizedExposureKey(cellPlan.darkestExposureGain)
            val cacheKey = (brightestKey.toLong() shl 32) xor
                (darkestKey.toLong() and 0xffffffffL)
            val curve = curveCache.getOrPut(cacheKey) {
                generateCurve(plan, cellPlan, weightLut)
            }
            curve.copyInto(output, destinationOffset = cell * plan.pointCount)
        }
        return output
    }

    private fun generateCurve(
        plan: HdrProfileGainTablePlan,
        cellPlan: HdrLtmExposurePlan,
        weightLut: FloatArray,
    ): FloatArray {
        val brightestGain = quantizedExposureGain(cellPlan.brightestExposureGain)
            .coerceIn(plan.inputScale, plan.fusionParameters.maxExposureGain)
        val darkestGain = quantizedExposureGain(cellPlan.darkestExposureGain)
            .coerceIn(plan.inputScale, brightestGain)
        val brightestEv = log2(brightestGain)
        val darkestEv = log2(darkestGain)
        val exposureGains = FloatArray(SYNTHETIC_EXPOSURE_COUNT) { exposure ->
            val amount = exposure.toFloat() / (SYNTHETIC_EXPOSURE_COUNT - 1).toFloat()
            2.0f.pow(lerp(brightestEv, darkestEv, amount))
        }
        val exposureGainEvs = FloatArray(SYNTHETIC_EXPOSURE_COUNT) { exposure ->
            log2(exposureGains[exposure])
        }
        var previousTrueOutput = 0f
        var previousFinalOutput = 0f
        return FloatArray(plan.pointCount) { point ->
            val tableInput = if (point == plan.pointCount - 1) {
                1f
            } else {
                point.toFloat() / plan.pointCount.toFloat()
            }
            val trueGain = if (tableInput <= CURVE_EPS) {
                brightestGain
            } else {
                val sceneInput = tableInput / plan.inputScale
                val sceneFromKeyEv = log2(
                    max(sceneInput, CURVE_EPS) / plan.fusionParameters.wellExposedKey
                )
                val highlightStrength = smoothStep(
                    plan.fusionParameters.highlightFusionStart,
                    plan.fusionParameters.highlightFusionEnd,
                    sceneInput * exposureGains.last(),
                )
                var weightSum = 0f
                var outputSum = 0f
                var nearestDistanceEv = Float.MAX_VALUE
                var nearestOutput = 0f
                exposureGains.indices.forEach { exposure ->
                    val exposed = max(sceneInput * exposureGains[exposure], CURVE_EPS)
                    val distanceEv = sceneFromKeyEv + exposureGainEvs[exposure]
                    val weight = lerp(
                        sampledWeight(distanceEv, component = 0, weightLut),
                        sampledWeight(distanceEv, component = 1, weightLut),
                        highlightStrength,
                    )
                    val clippedOutput = min(exposed, 1f)
                    weightSum += weight
                    outputSum += weight * clippedOutput
                    if (abs(distanceEv) < nearestDistanceEv) {
                        nearestDistanceEv = abs(distanceEv)
                        nearestOutput = clippedOutput
                    }
                }
                val fusedOutput = if (weightSum <= 0f) {
                    nearestOutput
                } else {
                    (outputSum / weightSum).coerceIn(0f, 1f)
                }
                val monotonicOutput = max(previousTrueOutput, fusedOutput)
                previousTrueOutput = monotonicOutput
                (monotonicOutput / sceneInput).coerceIn(
                    MIN_TABLE_GAIN,
                    plan.fusionParameters.maxExposureGain,
                )
            }

            val band = plan.diagnosticBand
            if (band == null) {
                trueGain
            } else {
                val mask = diagnosticMask(tableInput, band)
                val mixedGain = when (band.mode) {
                    DngHdrProfileGainTableGenerator.DiagnosticMode.PASS_ONLY -> {
                        lerp(1f, trueGain, mask)
                    }
                    DngHdrProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY -> {
                        lerp(trueGain, 1f, mask)
                    }
                }
                val monotonicOutput = max(previousFinalOutput, tableInput * mixedGain)
                previousFinalOutput = monotonicOutput
                if (tableInput <= CURVE_EPS) {
                    mixedGain.coerceIn(MIN_TABLE_GAIN, plan.fusionParameters.maxExposureGain)
                } else {
                    (monotonicOutput / tableInput).coerceIn(
                        MIN_TABLE_GAIN,
                        plan.fusionParameters.maxExposureGain,
                    )
                }
            }
        }
    }

    private fun sampledWeight(
        distanceEv: Float,
        component: Int,
        weightLut: FloatArray,
    ): Float {
        val scaled = abs(distanceEv) * WEIGHT_STEPS_PER_EV
        if (scaled >= WEIGHT_MAX_DISTANCE_EV * WEIGHT_STEPS_PER_EV) return 0f
        val index = floor(scaled).toInt()
        val fraction = scaled - index.toFloat()
        val first = weightLut[index * 2 + component]
        val second = weightLut[(index + 1) * 2 + component]
        return lerp(first, second, fraction)
    }

    private fun diagnosticMask(
        input: Float,
        band: DngHdrProfileGainTableGenerator.DiagnosticBand,
    ): Float {
        val enter = if (band.start <= 0f || band.feather <= 0f) {
            if (input >= band.start) 1f else 0f
        } else {
            smoothStep(band.start - band.feather, band.start + band.feather, input)
        }
        val exit = if (band.end >= 1f || band.feather <= 0f) {
            if (input <= band.end) 1f else 0f
        } else {
            1f - smoothStep(band.end - band.feather, band.end + band.feather, input)
        }
        return min(enter, exit).coerceIn(0f, 1f)
    }

    private fun quantizedExposureKey(gain: Float): Int {
        return floor(log2(max(gain, CURVE_EPS)) * EXPOSURE_STEPS_PER_EV + 0.5f).toInt()
    }

    private fun quantizedExposureGain(gain: Float): Float {
        return 2.0f.pow(quantizedExposureKey(gain).toFloat() / EXPOSURE_STEPS_PER_EV)
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val amount = ((value - edge0) / max(edge1 - edge0, CURVE_EPS)).coerceIn(0f, 1f)
        return amount * amount * (3f - 2f * amount)
    }

    private fun lerp(first: Float, second: Float, amount: Float): Float {
        return first + (second - first) * amount
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, CURVE_EPS).toDouble()) / ln(2.0)).toFloat()
    }
}
