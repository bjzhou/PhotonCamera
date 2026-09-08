package com.hinnka.mycamera.camera

import java.lang.reflect.InvocationTargetException
import java.nio.BufferUnderflowException
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertThrows
import org.junit.Test

class CameraMetadataReaderTest {
    @Test
    fun invertedRangeWrappedByReflectionIsUnavailable() {
        val error = AssertionError(InvocationTargetException(IllegalArgumentException("lower > upper")))
            .fromMarshaler("Range")
        val reported = mutableListOf<Throwable>()

        assertNull(decodeCameraMetadata<Int>({ throw error }, reported::add))
        assertSame(error, reported.single())
    }

    @Test
    fun truncatedRggbDoesNotPreventNextValidFrame() {
        val error = BufferUnderflowException().fromMarshaler("RggbChannelVector")
        val reported = mutableListOf<Throwable>()

        assertNull(decodeCameraMetadata<Int>({ throw error }, reported::add))
        assertEquals(42, decodeCameraMetadata({ 42 }, reported::add))
        assertSame(error, reported.single())
    }

    @Test
    fun invalidRggbFloatIsUnavailable() {
        val error = IllegalArgumentException("red must be finite").fromMarshaler("RggbChannelVector")
        assertNull(decodeCameraMetadata<Int>({ throw error }, {}))
    }

    @Test
    fun absentFieldDoesNotReportCorruption() {
        assertNull(decodeCameraMetadata<Int?>({ null }, { throw AssertionError("Unexpected report", it) }))
    }

    @Test
    fun requiredRawFieldRejectsCorruptionWithOriginalCause() {
        val error = BufferUnderflowException().fromMarshaler("RggbChannelVector")
        val thrown = assertThrows(MalformedCaptureMetadataException::class.java) {
            decodeCameraMetadata<Int>(
                read = { throw error },
                onMalformed = { throw MalformedCaptureMetadataException("android.colorCorrection.gains", 42, it) },
            )
        }
        assertSame(error, thrown.cause)
    }

    @Test
    fun applicationExceptionsAndUnrelatedErrorsPropagate() {
        val errors = listOf(
            IllegalArgumentException("application bug"),
            BufferUnderflowException(),
            AssertionError(IllegalArgumentException("application range bug")),
            AssertionError("unrelated framework assertion").fromMarshaler("Range"),
            OutOfMemoryError("fatal"),
        )
        for (error in errors) {
            val thrown = assertThrows(error.javaClass) {
                decodeCameraMetadata<Int>({ throw error }, { throw AssertionError("Unexpected report", it) })
            }
            assertSame(error, thrown)
        }
    }

    private fun <T : Throwable> T.fromMarshaler(type: String): T = apply {
        stackTrace = arrayOf(
            StackTraceElement(
                "android.hardware.camera2.marshal.impl.MarshalQueryable$type\$Marshaler$type",
                "unmarshal",
                "MarshalQueryable$type.java",
                95,
            )
        )
    }
}
