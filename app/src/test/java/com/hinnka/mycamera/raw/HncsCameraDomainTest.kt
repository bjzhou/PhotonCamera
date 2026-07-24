package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class HncsCameraDomainTest {
    @Test
    fun factorsCameraGainsWithoutChangingUnclippedColor() {
        val compositeMatrix = floatArrayOf(
            2f, 3f, 5f,
            7f, 11f, 13f,
            17f, 19f, 23f,
        )
        val cameraGains = floatArrayOf(2f, 1f, 4f)
        val raw = floatArrayOf(0.2f, 0.3f, 0.1f)
        val contract = HncsCameraDomain.resolve(
            compositeCameraToWorkingMatrix = compositeMatrix,
            cameraGains = cameraGains,
            baselineExposureEv = 0f,
        )

        val expected = multiply(compositeMatrix, raw)
        val actual = multiply(contract.cameraToWorkingMatrix, contract.applyCameraDomain(raw))

        assertArrayEquals(floatArrayOf(0.5f, 0.25f, 1f), contract.normalizedGain, 0f)
        assertEquals(4f, contract.inputEv, 0f)
        assertArrayEquals(expected, actual, 1e-5f)
    }

    @Test
    fun clipsAfterNormalizedCameraGainAndBeforeInputEv() {
        val contract = HncsCameraDomain.resolve(
            compositeCameraToWorkingMatrix = identityMatrix(),
            cameraGains = floatArrayOf(2f, 1f, 4f),
            baselineExposureEv = 1f,
        )

        val camera = contract.applyCameraDomain(floatArrayOf(0.5f, 0.5f, 1.5f))

        assertEquals(1f, contract.hrTrunc, 0f)
        assertEquals(1f, contract.hrMax, 0f)
        assertEquals(8f, contract.inputEv, 0f)
        assertArrayEquals(floatArrayOf(2f, 1f, 8f), camera, 1e-5f)
    }

    @Test
    fun baselineAndMeteringExposureAreAppliedExactlyOnceThroughInputEv() {
        val contract = HncsCameraDomain.resolve(
            compositeCameraToWorkingMatrix = identityMatrix(),
            cameraGains = floatArrayOf(1f, 1f, 1f),
            baselineExposureEv = -0.5f,
            additionalExposureEv = 1.5f,
        )

        assertEquals(2f, contract.inputEv, 1e-6f)
        assertArrayEquals(
            floatArrayOf(0.4f, 0.8f, 1.2f),
            contract.applyCameraDomain(floatArrayOf(0.2f, 0.4f, 0.6f)),
            1e-6f,
        )
    }

    @Test
    fun convertsFourChannelAsShotGainsToPhocusRgbOrder() {
        assertArrayEquals(
            floatArrayOf(2f, 1.5f, 4f),
            HncsCameraDomain.fromWhiteBalanceGains(floatArrayOf(2f, 1f, 2f, 4f)),
            0f,
        )
    }

    private fun identityMatrix(): FloatArray = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f,
    )

    private fun multiply(matrix: FloatArray, vector: FloatArray): FloatArray =
        FloatArray(3) { row ->
            matrix[row * 3] * vector[0] +
                matrix[row * 3 + 1] * vector[1] +
                matrix[row * 3 + 2] * vector[2]
        }
}
