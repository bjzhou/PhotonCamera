package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.GyroExposureWindow
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class RawBurstGyroSelectorTest {
    @Test
    fun lowestRiskFrameBecomesReferenceAndLargeOutlierIsRejected() {
        val frames = listOf(
            frame(0L, 0.003f),
            frame(1L, 0.001f),
            frame(2L, 0.002f),
            frame(3L, 0.030f),
            frame(4L, 0.004f),
        )

        val selection = RawBurstGyroSelector.selectMetadata(frames)

        assertEquals(1, selection.referenceOriginalIndex)
        assertEquals(1, selection.orderedAcceptedIndices.first())
        assertArrayEquals(intArrayOf(3), selection.rejectedIndices)
    }

    @Test
    fun missingGyroIsKeptAndNeverPreferredOverReliableReference() {
        val frames = listOf(
            frame(0L, null),
            frame(1L, 0.002f),
            frame(2L, 0.001f),
            frame(3L, null),
        )

        val selection = RawBurstGyroSelector.selectMetadata(frames)

        assertEquals(2, selection.referenceOriginalIndex)
        assertEquals(0, selection.rejectedIndices.size)
        assertEquals(setOf(0, 1, 2, 3), selection.orderedAcceptedIndices.toSet())
    }

    @Test
    fun selectorNeverDropsBelowThreeFrames() {
        val frames = listOf(
            frame(0L, 0.001f),
            frame(1L, 0.0012f),
            frame(2L, 0.0013f),
            frame(3L, 0.050f),
        )

        val selection = RawBurstGyroSelector.selectMetadata(frames)

        assertEquals(3, selection.orderedAcceptedIndices.size)
        assertEquals(1, selection.rejectedIndices.size)
    }

    private fun frame(timestamp: Long, rotationRadians: Float?): RawBurstGyroFrameSample {
        val exposureNs = 10_000_000L
        return RawBurstGyroFrameSample(
            sensorTimestampNs = timestamp,
            exposureTimeNs = exposureNs,
            gyroWindow = rotationRadians?.let {
                GyroExposureWindow(
                    startTimestampNs = timestamp,
                    endTimestampNs = timestamp + exposureNs,
                    sampleCount = 5,
                    integratedRotationRad = floatArrayOf(it, 0f, 0f),
                    angularEnergy = 0f,
                    peakAngularVelocity = 0f,
                    jerkEnergy = 0f,
                    coverageRatio = 1f,
                )
            },
        )
    }
}
