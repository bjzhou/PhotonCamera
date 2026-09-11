package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.assertNull
import org.junit.Test

class DngSourceColorMetadataTest {
    private val fm1 = floatArrayOf(0.4409f, 0.4176f, 0.1058f, 0.2049f, 0.7639f, 0.0311f, 0.0759f, 0.0003f, 0.7489f)
    private val fm2 = floatArrayOf(0.4594f, 0.3471f, 0.1578f, 0.2504f, 0.7023f, 0.0473f, 0.1023f, 0.0032f, 0.7195f)

    @Test
    fun forwardOnlyUsesSdkReciprocalTemperatureAndPreservesSlots() {
        val source = RawCameraCalibration(null, null, 17, 21, forwardMatrix1 = fm1, forwardMatrix2 = fm2)
        assertTrue(source.isForwardOnly)
        assertEquals(source, RawCameraCalibration.fromProfile(source.toDcpProfile()))
        val white = floatArrayOf(0.3457f, 0.3585f)
        val temperature = DngSdkColorSpec.colorTemperatureForXy(white)!!.toDouble()
        // dng_camera_profile::IlluminantToTemperature: A=2850, D65=6500.
        val firstWeight = ((1.0 / temperature - 1.0 / 6500.0) /
            (1.0 / 2850.0 - 1.0 / 6500.0)).coerceIn(0.0, 1.0)
        val normalized1 = sdkNormalizeForward(fm1)
        val normalized2 = sdkNormalizeForward(fm2)
        val expected = FloatArray(9) { (normalized1[it] * firstWeight + normalized2[it] * (1.0 - firstWeight)).toFloat() }
        val workingFromPcs = DngSdkColorSpec.computeXyzD50ToGamut(ColorSpace.ProPhoto)!!
        val result = DngSdkColorSpec.computeReferenceCameraToWorkingMatrix(source.toDcpProfile(), white, ColorSpace.ProPhoto)!!
        val actual = DngSdkColorSpec.multiplyMatrix3x3(DngSdkColorSpec.invertMatrix3x3(workingFromPcs)!!, result)
        assertArrayEquals(expected, actual, 0.000002f)
        val reversed = RawCameraCalibration(null, null, 21, 17, forwardMatrix1 = fm2, forwardMatrix2 = fm1)
        assertArrayEquals(result, DngSdkColorSpec.computeReferenceCameraToWorkingMatrix(reversed.toDcpProfile(), white, ColorSpace.ProPhoto)!!, 0.000002f)
        assertNull(DngSdkColorSpec.computeReferenceCameraToWorkingMatrix(source.toDcpProfile(), null, ColorSpace.ProPhoto))
    }

    @Test
    fun forwardOnlyFactorsIndividualCalibrationAndWhiteExactlyOnce() {
        val source = RawCameraCalibration(null, null, 17, 21,
            analogBalance = floatArrayOf(1.1f, 1f, 0.9f),
            cameraCalibration1 = floatArrayOf(1f, 0.02f, 0f, 0f, 1f, 0f, 0f, 0.01f, 1f),
            cameraCalibration2 = floatArrayOf(1f, 0.04f, 0f, 0f, 1f, 0f, 0f, 0.02f, 1f),
            forwardMatrix1 = fm1, forwardMatrix2 = fm2)
        val resolved = DngSdkColorSpec.resolveSourceMetadata(source.toDcpProfile(),
            metadata().copy(whitePointXy = floatArrayOf(0.3457f, 0.3585f)), ColorSpace.ProPhoto)!!
        val neutralOutput = multiply(resolved.colorCorrectionMatrix, resolved.cameraWhite)
        assertArrayEquals(resolved.colorCorrectionMatrix,
            EquivalentCameraCalibration.sourceToProPhoto(resolved), 0f)
        assertArrayEquals(floatArrayOf(1f, 1f, 1f), neutralOutput, 0.002f)
        val referenceToWorking = DngSdkColorSpec.computeReferenceCameraToWorkingMatrix(
            source.toDcpProfile(), resolved.whitePointXy, ColorSpace.ProPhoto,
        )!!
        val recovery = DngSdkColorSpec.invertMatrix3x3(referenceToWorking)!!
        val referenceNeutral = multiply(recovery, neutralOutput)
        assertArrayEquals(floatArrayOf(1f, 1f, 1f), referenceNeutral, 0.000002f)
    }

    @Test
    fun aLoneSecondSlotKeepsItsForwardAndCalibration() {
        val cm = floatArrayOf(0.8f, 0.1f, 0.05f, 0.1f, 0.9f, 0.05f, 0.02f, 0.1f, 0.7f)
        val calibration = floatArrayOf(1.1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0.9f)
        val first = RawCameraCalibration(cm, null, 21, 0, cameraCalibration1 = calibration, forwardMatrix1 = fm2)
        val second = RawCameraCalibration(null, cm, 0, 21, cameraCalibration2 = calibration, forwardMatrix2 = fm2)
        assertArrayEquals(DngSdkColorSpec.computeCameraToWorkingMatrix(first.toDcpProfile(), metadata(), ColorSpace.ProPhoto)!!,
            DngSdkColorSpec.computeCameraToWorkingMatrix(second.toDcpProfile(), metadata(), ColorSpace.ProPhoto)!!, 0f)
    }

    private fun sdkNormalizeForward(matrix: FloatArray): FloatArray {
        val white = doubleArrayOf(0.9642957, 1.0, 0.8251046)
        return FloatArray(9) { index ->
            val row = index / 3
            (matrix[index].toDouble() * white[row] /
                (matrix[row * 3].toDouble() + matrix[row * 3 + 1] + matrix[row * 3 + 2])).toFloat()
        }
    }

    private fun multiply(matrix: FloatArray, vector: FloatArray) = FloatArray(3) { row ->
        (0..2).sumOf { column -> (matrix[row * 3 + column] * vector[column]).toDouble() }.toFloat()
    }

    @Test
    fun asShotNeutralReplacesStaleCaptureWhiteAndCalibrationTogether() {
        val source = RawCameraCalibration(
            colorMatrix1 = floatArrayOf(
                0.8f, 0.1f, 0.05f,
                0.1f, 0.9f, 0.05f,
                0.02f, 0.1f, 0.7f,
            ),
            colorMatrix2 = null,
            calibrationIlluminant1 = 21,
            cameraCalibration1 = floatArrayOf(
                1.1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 0.9f,
            ),
        )
        val profile = source.toDcpProfile()
        val stale = metadata().copy(
            whitePointXy = floatArrayOf(0.44757f, 0.40745f),
            colorTemperature = 2856f,
            cameraWhite = floatArrayOf(1f, 1f, 1f),
            cameraCalibration = RawCameraCalibration(
                colorMatrix1 = source.colorMatrix1,
                colorMatrix2 = null,
                calibrationIlluminant1 = 21,
            ),
        )
        val resolved = requireNotNull(
            DngSdkColorSpec.resolveSourceMetadata(profile, stale, ColorSpace.ProPhoto),
        )
        val reopened = requireNotNull(
            DngSdkColorSpec.resolveSourceMetadata(profile, metadata(), ColorSpace.ProPhoto),
        )

        assertArrayEquals(reopened.whitePointXy!!, resolved.whitePointXy!!, 0f)
        assertEquals(reopened.colorTemperature, resolved.colorTemperature)
        assertArrayEquals(reopened.cameraWhite, resolved.cameraWhite, 0f)
        assertArrayEquals(reopened.colorCorrectionMatrix, resolved.colorCorrectionMatrix, 0f)
        assertEquals(source, resolved.cameraCalibration)
        assertTrue(kotlin.math.abs(resolved.colorTemperature!! - stale.colorTemperature!!) > 1f)
        // A calibrated neutral must still map to the working-space white.
        val neutral = FloatArray(3) { row ->
            (0..2).sumOf { column ->
                (resolved.colorCorrectionMatrix[row * 3 + column] *
                    resolved.cameraWhite[column]).toDouble()
            }.toFloat()
        }
        assertArrayEquals(floatArrayOf(1f, 1f, 1f), neutral, 0.002f)
        assertEquals(stale.baselineExposure, resolved.baselineExposure, 0f)
        assertArrayEquals(stale.whiteBalanceGains, resolved.whiteBalanceGains, 0f)
    }

    private fun metadata() = RawMetadata(
        width = 16,
        height = 16,
        cfaPattern = RawMetadata.CFA_RGGB,
        blackLevel = FloatArray(4),
        whiteLevel = 4095f,
        whiteBalanceGains = floatArrayOf(2f, 1f, 1f, 1.5f),
        colorCorrectionMatrix = FloatArray(9),
        baselineExposure = 0.5f,
    )
}
