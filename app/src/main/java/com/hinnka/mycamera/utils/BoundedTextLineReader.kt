package com.hinnka.mycamera.utils

import java.io.Reader

class TextLineTooLongException(maxLineLength: Int) : IllegalArgumentException(
    "Text line exceeds $maxLineLength characters"
)

object BoundedTextLineReader {
    const val DEFAULT_MAX_LINE_LENGTH = 64 * 1024

    fun forEachLine(
        reader: Reader,
        maxLineLength: Int = DEFAULT_MAX_LINE_LENGTH,
        action: (String) -> Unit
    ) {
        require(maxLineLength > 0) { "maxLineLength must be positive" }

        val buffer = CharArray(DEFAULT_BUFFER_SIZE)
        val line = StringBuilder()
        var pendingCarriageReturn = false

        while (true) {
            val read = reader.read(buffer)
            if (read < 0) break

            for (index in 0 until read) {
                val char = buffer[index]
                if (pendingCarriageReturn) {
                    pendingCarriageReturn = false
                    if (char == '\n') {
                        continue
                    }
                }

                when (char) {
                    '\n' -> {
                        action(line.toString())
                        line.setLength(0)
                    }
                    '\r' -> {
                        action(line.toString())
                        line.setLength(0)
                        pendingCarriageReturn = true
                    }
                    else -> {
                        if (line.length >= maxLineLength) {
                            throw TextLineTooLongException(maxLineLength)
                        }
                        line.append(char)
                    }
                }
            }
        }

        if (line.isNotEmpty()) {
            action(line.toString())
        }
    }
}
