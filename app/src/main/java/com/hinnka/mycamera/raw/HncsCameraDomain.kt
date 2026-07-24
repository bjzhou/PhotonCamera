package com.hinnka.mycamera.raw

import kotlin.math.max

/**
 * Phocus ColorCorrectAll camera-domain contract, adapted to PhotonCamera's
 * black-subtracted and white-level-normalized RAW input.
 *
 * PhotonCamera expresses Phocus' active camera-gain and source-exposure terms
 * in one canonical form: normalize the gains by their largest component, clamp
 * in camera space, and restore the factored scale through inputEV:
 *
 * camera = clamp(raw * normalizedGain / hrTrunc, 0, hrMax) * inputEV
 *
 * With no imported Phocus image-correction state, hrTrunc/hrMax are both one.
 * DNG BaselineExposure is the source exposure factor in PhotonCamera's already
 * white-level-normalized domain.
 */
internal data class HncsCameraDomainContract(
    val normalizedGain: FloatArray,
    val inputEv: Float,
    val hrTrunc: Float,
    val hrMax: Float,
    val cameraToWorkingMatrix: FloatArray,
) {
    init {
        require(normalizedGain.size == 3 && normalizedGain.all { it.isFinite() && it > 0f })
        require(inputEv.isFinite() && inputEv > 0f)
        require(hrTrunc.isFinite() && hrTrunc > 0f)
        require(hrMax.isFinite() && hrMax > 0f)
        require(cameraToWorkingMatrix.size == 9 && cameraToWorkingMatrix.all(Float::isFinite))
    }

    internal fun applyCameraDomain(rgb: FloatArray): FloatArray {
        require(rgb.size >= 3)
        return FloatArray(3) { channel ->
            val gained = rgb[channel] * normalizedGain[channel] / hrTrunc
            gained.coerceIn(0f, hrMax) * inputEv
        }
    }
}

internal object HncsCameraDomain {
    const val DEFAULT_HR_TRUNC = 1f
    const val DEFAULT_HR_MAX = 1f

    private const val MIN_CAMERA_GAIN = 1e-3f
    private const val MAX_CAMERA_GAIN = 64f

    /**
     * Factors the camera gains out of a composite camera-to-working matrix so
     * they can be applied and clipped in camera space before that matrix.
     */
    fun resolve(
        compositeCameraToWorkingMatrix: FloatArray,
        cameraGains: FloatArray,
        baselineExposureEv: Float,
        additionalExposureEv: Float = 0f,
    ): HncsCameraDomainContract {
        require(
            compositeCameraToWorkingMatrix.size == 9 &&
                compositeCameraToWorkingMatrix.all(Float::isFinite)
        )
        val gains = sanitizeCameraGains(cameraGains)
        val maximumGain = max(gains[0], max(gains[1], gains[2]))
        val normalizedGain = FloatArray(3) { channel ->
            gains[channel] / maximumGain
        }
        val cameraToWorkingMatrix = compositeCameraToWorkingMatrix.copyOf()
        for (row in 0 until 3) {
            for (column in 0 until 3) {
                cameraToWorkingMatrix[row * 3 + column] /= gains[column]
            }
        }
        val exposureGain = DngBaselineExposure.exactGain(
            DngBaselineExposure.sanitize(baselineExposureEv) +
                DngBaselineExposure.sanitize(additionalExposureEv)
        )
        return HncsCameraDomainContract(
            normalizedGain = normalizedGain,
            inputEv = exposureGain * maximumGain,
            hrTrunc = DEFAULT_HR_TRUNC,
            hrMax = DEFAULT_HR_MAX,
            cameraToWorkingMatrix = cameraToWorkingMatrix,
        )
    }

    /**
     * Phocus GetHrEV consumes the active as-shot RGB gains. Camera2/DNG stores
     * two green gains, so use their mean for the three-channel camera domain.
     */
    fun fromWhiteBalanceGains(whiteBalanceGains: FloatArray): FloatArray {
        fun component(index: Int, fallback: Float): Float {
            val value = whiteBalanceGains.getOrElse(index) { fallback }
            return value.takeIf { it.isFinite() && it > 0f } ?: fallback
        }

        val greenEven = component(1, 1f)
        val greenOdd = component(2, greenEven)
        val green = (greenEven + greenOdd) * 0.5f
        return sanitizeCameraGains(
            floatArrayOf(
                component(0, green),
                green,
                component(3, green),
            )
        )
    }

    private fun sanitizeCameraGains(cameraGains: FloatArray): FloatArray {
        return FloatArray(3) { channel ->
            cameraGains.getOrElse(channel) { 1f }
                .takeIf { it.isFinite() && it > 0f }
                ?.coerceIn(MIN_CAMERA_GAIN, MAX_CAMERA_GAIN)
                ?: 1f
        }
    }
}
