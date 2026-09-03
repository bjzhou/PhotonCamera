package com.hinnka.mycamera.raw

import kotlin.math.roundToInt

/** Parameters for the chromaticity-preserving low-frequency dehaze curve. */
internal data class PhotonDehazeCurveParameters(
    val hazePointLow: Float,
    val hazePointHigh: Float,
    val highlightScale: Float,
    val quadraticCoefficient: Float,
    val linearSlope: Float,
    val shoulderValue: Float,
    val detectedHighlightScale: Float,
    val sampledPixelCount: Int,
) {
    init {
        require(
            listOf(
                hazePointLow,
                hazePointHigh,
                highlightScale,
                quadraticCoefficient,
                linearSlope,
                shoulderValue,
                detectedHighlightScale,
            ).all(Float::isFinite),
        ) { "Non-finite Photon dehaze curve" }
        require(hazePointLow in 0f..1f && hazePointHigh in hazePointLow..1f) {
            "Invalid Photon dehaze points"
        }
        require(
            highlightScale > 0f && quadraticCoefficient >= 0f &&
                linearSlope >= 0f && detectedHighlightScale > 0f,
        ) { "Invalid Photon dehaze coefficients" }
        require(sampledPixelCount > 0) { "Photon dehaze curve has no samples" }
    }

    fun toNativeArray(): FloatArray = floatArrayOf(
        hazePointLow,
        hazePointHigh,
        highlightScale,
        quadraticCoefficient,
        linearSlope,
        shoulderValue,
        detectedHighlightScale,
        sampledPixelCount.toFloat(),
    )

    companion object {
        fun fromNativeArray(values: FloatArray): PhotonDehazeCurveParameters? {
            if (values.size != NATIVE_VALUE_COUNT || values.any { !it.isFinite() }) return null
            val sampledPixelCount = values[7].roundToInt()
            if (sampledPixelCount <= 0) return null
            return runCatching {
                PhotonDehazeCurveParameters(
                    hazePointLow = values[0],
                    hazePointHigh = values[1],
                    highlightScale = values[2],
                    quadraticCoefficient = values[3],
                    linearSlope = values[4],
                    shoulderValue = values[5],
                    detectedHighlightScale = values[6],
                    sampledPixelCount = sampledPixelCount,
                )
            }.getOrNull()
        }

        val IDENTITY = PhotonDehazeCurveParameters(
            hazePointLow = 0f,
            hazePointHigh = 0f,
            highlightScale = 1f,
            quadraticCoefficient = 0f,
            linearSlope = 1f,
            shoulderValue = 0f,
            detectedHighlightScale = 1f,
            sampledPixelCount = 1,
        )

        const val NATIVE_VALUE_COUNT = 8
    }
}
