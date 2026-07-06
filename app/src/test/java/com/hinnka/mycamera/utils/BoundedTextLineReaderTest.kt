package com.hinnka.mycamera.utils

import java.io.StringReader
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class BoundedTextLineReaderTest {
    @Test
    fun forEachLine_readsCommonLineEndings() {
        val lines = mutableListOf<String>()

        BoundedTextLineReader.forEachLine(StringReader("a\nb\r\nc\rd")) {
            lines += it
        }

        assertEquals(listOf("a", "b", "c", "d"), lines)
    }

    @Test
    fun forEachLine_rejectsLineLongerThanLimit() {
        assertThrows(TextLineTooLongException::class.java) {
            BoundedTextLineReader.forEachLine(StringReader("123456"), maxLineLength = 5) {
                // No-op
            }
        }
    }
}
