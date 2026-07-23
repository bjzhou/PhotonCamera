package com.hinnka.mycamera.raw

import kotlin.math.max
import kotlin.math.pow

/** Float CPU mirror of the production PGTM curve shaders. */
internal object DngHdrProfileGainTableCpuReference {
    fun generate(plan: HdrProfileGainTablePlan): FloatArray = when (plan.curveModel) {
        HdrPgtmCurveModel.GOOGLE -> generateGoogle(plan, requireNotNull(plan.googlePlan))
        HdrPgtmCurveModel.PHOTON ->
            error("Photon curves require the sampled image; use DngPhotonLocalToneMapper.generate")
    }

    private fun generateGoogle(
        plan: HdrProfileGainTablePlan,
        googlePlan: GooglePgtmPlan,
    ): FloatArray {
        val result = FloatArray(googlePlan.cellPlans.size * plan.pointCount)
        val curveParameters = googlePlan.curveParameters
        googlePlan.cellPlans.forEachIndexed { cell, cellPlan ->
            val ratio = cellPlan.blackGain / max(cellPlan.endpointGain, CURVE_EPS)
            val shoulderAmount = ratio.pow(curveParameters.shapeQ) - 1f
            var previousFinalOutput = 0f
            repeat(plan.pointCount) { point ->
                val tableInput = tableInput(point, plan.pointCount)
                val shoulderInput = (
                    (tableInput - curveParameters.toeEnd) /
                        (1f - curveParameters.toeEnd)
                    ).coerceIn(0f, 1f)
                val denominator = max(
                    1f + shoulderAmount * shoulderInput.pow(cellPlan.shapePower),
                    CURVE_EPS,
                ).pow(1f / curveParameters.shapeQ)
                val trueGain = if (point == plan.pointCount - 1) {
                    googlePlan.inputScale
                } else {
                    (cellPlan.blackGain / denominator).coerceIn(
                        curveParameters.minTableGain,
                        curveParameters.maxTableGain,
                    )
                }
                val finalGain = applyDiagnostic(
                    trueGain = trueGain,
                    tableInput = tableInput,
                    physicalInput = tableInput,
                    previousFinalOutput = previousFinalOutput,
                    plan = plan,
                    minGain = curveParameters.minTableGain,
                    maxGain = curveParameters.maxTableGain,
                )
                if (plan.diagnosticBand != null) {
                    previousFinalOutput = max(previousFinalOutput, tableInput * finalGain)
                }
                result[cell * plan.pointCount + point] = finalGain
            }
        }
        return result
    }

    private fun applyDiagnostic(
        trueGain: Float,
        tableInput: Float,
        physicalInput: Float,
        previousFinalOutput: Float,
        plan: HdrProfileGainTablePlan,
        minGain: Float,
        maxGain: Float,
    ): Float {
        val band = plan.diagnosticBand ?: return trueGain
        val mask = diagnosticMask(tableInput, band)
        val mixed = when (band.mode) {
            DngHdrProfileGainTableGenerator.DiagnosticMode.PASS_ONLY ->
                lerp(1f, trueGain, mask)
            DngHdrProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY ->
                lerp(trueGain, 1f, mask)
        }
        val output = max(previousFinalOutput, physicalInput * mixed)
        return if (physicalInput <= CURVE_EPS) {
            mixed.coerceIn(minGain, maxGain)
        } else {
            (output / physicalInput).coerceIn(minGain, maxGain)
        }
    }

    private fun tableInput(point: Int, count: Int): Float =
        if (point == count - 1) 1f else point.toFloat() / count.toFloat()

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
        return minOf(enter, exit).coerceIn(0f, 1f)
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / max(edge1 - edge0, CURVE_EPS)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun lerp(start: Float, end: Float, amount: Float) =
        start + (end - start) * amount

    private const val CURVE_EPS = 1e-6f
}
