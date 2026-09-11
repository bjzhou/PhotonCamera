package com.hinnka.mycamera.raw

import kotlin.math.abs
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class DirectCameraColorTransformTest {
    // Matrix fixture from the bundled Panasonic DC-S9 Adobe Standard DCP.
    private val profile = RawCameraCalibration(
        colorMatrix1 = floatArrayOf(
            1.2599f, -0.7524f, 0.072f, -0.4116f, 1.1989f, 0.2399f, -0.0184f, 0.076f, 0.698f,
        ),
        colorMatrix2 = floatArrayOf(
            0.9983f, -0.389f, -0.0841f, -0.418f, 1.2164f, 0.2263f, -0.0249f, 0.1139f, 0.5766f,
        ),
        calibrationIlluminant1 = 17,
        calibrationIlluminant2 = 21,
        forwardMatrix1 = floatArrayOf(
            0.4409f, 0.4176f, 0.1058f, 0.2049f, 0.7639f, 0.0311f, 0.0759f, 0.0003f, 0.7489f,
        ),
        forwardMatrix2 = floatArrayOf(
            0.4594f, 0.3471f, 0.1578f, 0.2504f, 0.7023f, 0.0473f, 0.1023f, 0.0032f, 0.7195f,
        ),
    ).toDcpProfile()
    private val whites = listOf(
        floatArrayOf(0.44757f, 0.40745f),
        floatArrayOf(0.3369536f, 0.35767f), // logged S9 RW2 as-shot white
        floatArrayOf(0.3127f, 0.3290f),
    )
    private val wb = floatArrayOf(2.1054688f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 1.7070312f)
    // IFD0 ColorMatrix1 in 4777366646.3fr (X2D II 100C), with no illuminant tags.
    private val hncsProfile = RawCameraCalibration(
        colorMatrix1 = floatArrayOf(
            0.5950573751f, -0.146674752f, -0.03412952103f,
            -0.5159296309f, 1.26306183f, 0.2826110949f,
            -0.103825823f, 0.1675577691f, 0.6152086f,
        ),
        colorMatrix2 = null,
        calibrationIlluminant1 = 0,
        calibrationIlluminant2 = 0,
    ).toDcpProfile()

    @Test
    fun sharedSpaceIsColorimetricAndPhotoStyleReceivesCameraRgbWithOneWhiteBalance() {
        for (profile in listOf(profile, hncsProfile)) for (white in whites) {
            val transform = DirectCameraColorTransform.fromProfile(profile, white)
            val sensorToProfile = transform.sensorToProPhoto(wb)
            val recovered = DngSdkColorSpec.multiplyMatrix3x3(
                transform.proPhotoToWhiteBalancedCamera, sensorToProfile,
            )
            assertArrayEquals(wb, recovered, 0.000002f)
            // A neutral must remain neutral in the shared ProPhoto space.
            assertArrayEquals(floatArrayOf(1f, 1f, 1f), multiply(sensorToProfile,
                floatArrayOf(1f / wb[0], 1f, 1f / wb[8])), 0.001f)
            // This regression used to label unchanged WB camera RGB as ProPhoto.
            assertTrue(sensorToProfile.indices.any { abs(sensorToProfile[it] - wb[it]) > 0.05f })
        }
    }

    @Test
    fun pgtmGainReturnsToCameraDomainWithoutClippingNegativeOrOverrangeChannels() {
        val samples = listOf(
            floatArrayOf(0.7f, 0.2f, 0.01f),
            floatArrayOf(-0.01f, 0.3f, 2f),
            floatArrayOf(8f, 16f, 4f),
        )
        for (profile in listOf(profile, hncsProfile)) for (white in whites) {
            val transform = DirectCameraColorTransform.fromProfile(profile, white)
            for (sample in samples) for (gain in listOf(1f, 0.25f, 3.5f)) {
                val working = multiply(transform.sensorToProPhoto(wb), sample)
                val camera = multiply(transform.proPhotoToWhiteBalancedCamera,
                    working.map { it * gain }.toFloatArray())
                assertArrayEquals(multiply(wb, sample).map { it * gain }.toFloatArray(), camera, 0.00004f)
            }
        }
    }

    @Test
    fun targetColorMatrixIgnoresForwardAndCreativeDcpTables() {
        val creativeProfile = profile.copy(
            hueSatDeltas1 = DcpHueSatMap(1, 1, 1, floatArrayOf(45f, 0.5f, 2f)),
            lookTable = DcpHueSatMap(1, 1, 1, floatArrayOf(-30f, 2f, 0.5f)),
            baselineExposureOffset = 2f,
        )
        val matrixProfile = EquivalentCameraCalibration.colorMatrixProfile(creativeProfile)
        assertNull(matrixProfile.forwardMatrix1)
        assertNull(matrixProfile.forwardMatrix2)
        assertNull(matrixProfile.hueSatDeltas1)
        assertNull(matrixProfile.lookTable)
        for (white in whites) {
            val expected = DngSdkColorSpec.computeWhiteBalancedCameraToWorkingMatrix(
                matrixProfile, white, ColorSpace.ProPhoto,
            )!!
            val transform = DirectCameraColorTransform.fromProfile(creativeProfile, white)
            assertArrayEquals(expected, transform.whiteBalancedCameraToProPhoto, 0f)
            val forwardBased = DngSdkColorSpec.computeWhiteBalancedCameraToWorkingMatrix(
                profile, white, ColorSpace.ProPhoto,
            )!!
            assertTrue(expected.indices.any { abs(expected[it] - forwardBased[it]) > 0.01f })
        }
    }

    @Test
    fun matchingSourceAndTargetRecoverWhiteBalancedSensorRgbWithoutDcpLook() {
        for (profile in listOf(profile, hncsProfile)) {
            val metadata = RawMetadata(
                width = 16,
                height = 16,
                cfaPattern = RawMetadata.CFA_RGGB,
                blackLevel = FloatArray(4),
                whiteLevel = 4095f,
                whiteBalanceGains = floatArrayOf(wb[0], 1f, 1f, wb[8]),
                colorCorrectionMatrix = FloatArray(9),
                cameraCalibration = RawCameraCalibration.fromProfile(profile),
            )
            val white = DngSdkColorSpec.whiteXyForProfile(profile, metadata)!!
            val cameraWhite = DngSdkColorSpec.computeCameraWhite(profile, metadata)!!
            val sourceToProPhoto = EquivalentCameraCalibration.sourceToProPhoto(metadata)
            val target = DirectCameraColorTransform.fromProfile(profile, white)
            val combined = DngSdkColorSpec.multiplyMatrix3x3(
                target.proPhotoToWhiteBalancedCamera, sourceToProPhoto,
            )
            val expected = FloatArray(9) { index ->
                if (index / 3 == index % 3) 1f / cameraWhite[index / 3] else 0f
            }
            assertArrayEquals(expected, combined, 0.000003f)
            // Original processing uses only neutral-normalized WB through the shared
            // target-space bridge, even when this source also has a valid calibration.
            val originalInput = EquivalentCameraCalibration.whiteBalanceTransform(
                metadata.copy(cameraWhite = cameraWhite),
            )
            val original = DngSdkColorSpec.multiplyMatrix3x3(
                target.proPhotoToWhiteBalancedCamera, target.sensorToProPhoto(originalInput),
            )
            assertArrayEquals(expected, original, 0.000003f)
        }
    }

    private fun multiply(matrix: FloatArray, vector: FloatArray) = FloatArray(3) { row ->
        (0..2).sumOf { column -> (matrix[row * 3 + column] * vector[column]).toDouble() }.toFloat()
    }
}
