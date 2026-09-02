package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.stabilization.STABILIZATION_ROW_COUNT
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Exact CPU-side strip geometry built by MGC's iha class. */
internal class MgcEisMesh {
    companion object {
        private const val POSITION_COMPONENT_COUNT = 4
        private const val TEX_COORD_COMPONENT_COUNT = 2
        private const val VERTEX_COUNT = (STABILIZATION_ROW_COUNT + 1) * 2
        const val INDEX_COUNT = STABILIZATION_ROW_COUNT * 6

        internal val textureCoordinates: FloatArray = buildTextureCoordinates()
        internal val indices: ShortArray = ShortArray(INDEX_COUNT).also { output ->
            for (triangle in 0 until STABILIZATION_ROW_COUNT * 2) {
                for (corner in 0 until 3) {
                    output[triangle * 3 + corner] = (triangle + corner).toShort()
                }
            }
        }

        internal fun warpedPositions(rowHomographies: FloatArray): FloatArray {
            require(rowHomographies.size == STABILIZATION_ROW_COUNT * 9)
            val output = FloatArray(VERTEX_COUNT * POSITION_COMPONENT_COUNT)
            for (boundary in 0..STABILIZATION_ROW_COUNT) {
                val matrixIndex = if (boundary == 0) 0 else boundary - 1
                val matrixOffset = matrixIndex * 9
                val y = 1f - 2f * boundary.toFloat() / STABILIZATION_ROW_COUNT.toFloat()
                for (side in 0..1) {
                    val x = if (side == 0) -1f else 1f
                    val outputOffset = (boundary * 2 + side) * POSITION_COMPONENT_COUNT
                    output[outputOffset] =
                        x * rowHomographies[matrixOffset] +
                            y * rowHomographies[matrixOffset + 1] +
                            rowHomographies[matrixOffset + 2]
                    output[outputOffset + 1] =
                        x * rowHomographies[matrixOffset + 3] +
                            y * rowHomographies[matrixOffset + 4] +
                            rowHomographies[matrixOffset + 5]
                    output[outputOffset + 2] = 0f
                    output[outputOffset + 3] =
                        x * rowHomographies[matrixOffset + 6] +
                            y * rowHomographies[matrixOffset + 7] +
                            rowHomographies[matrixOffset + 8]
                }
            }
            return output
        }

        private fun buildTextureCoordinates(): FloatArray {
            val output = FloatArray(VERTEX_COUNT * TEX_COORD_COMPONENT_COUNT)
            for (boundary in 0..STABILIZATION_ROW_COUNT) {
                val y = boundary.toFloat() / STABILIZATION_ROW_COUNT.toFloat()
                val offset = boundary * 4
                output[offset] = 0f
                output[offset + 1] = y
                output[offset + 2] = 1f
                output[offset + 3] = y
            }
            return output
        }
    }

    private var positionBufferId = 0
    private var textureCoordinateBufferId = 0
    private var indexBufferId = 0

    fun initialize() {
        release()
        val ids = IntArray(3)
        GLES30.glGenBuffers(ids.size, ids, 0)
        positionBufferId = ids[0]
        textureCoordinateBufferId = ids[1]
        indexBufferId = ids[2]

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, positionBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            VERTEX_COUNT * POSITION_COMPONENT_COUNT * Float.SIZE_BYTES,
            null,
            GLES30.GL_DYNAMIC_DRAW,
        )
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, textureCoordinateBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            textureCoordinates.size * Float.SIZE_BYTES,
            floatBuffer(textureCoordinates),
            GLES30.GL_STATIC_DRAW,
        )
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(
            GLES30.GL_ELEMENT_ARRAY_BUFFER,
            indices.size * Short.SIZE_BYTES,
            ByteBuffer.allocateDirect(indices.size * Short.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
                .asShortBuffer()
                .apply {
                    put(indices)
                    position(0)
                },
            GLES30.GL_STATIC_DRAW,
        )
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    fun draw(
        positionLocation: Int,
        textureCoordinateLocation: Int,
        rowHomographies: FloatArray,
    ) {
        if (positionBufferId == 0) initialize()
        val positions = warpedPositions(rowHomographies)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, positionBufferId)
        GLES30.glBufferSubData(
            GLES30.GL_ARRAY_BUFFER,
            0,
            positions.size * Float.SIZE_BYTES,
            floatBuffer(positions),
        )
        GLES30.glEnableVertexAttribArray(positionLocation)
        GLES30.glVertexAttribPointer(
            positionLocation,
            POSITION_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0,
        )

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, textureCoordinateBufferId)
        GLES30.glEnableVertexAttribArray(textureCoordinateLocation)
        GLES30.glVertexAttribPointer(
            textureCoordinateLocation,
            TEX_COORD_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0,
        )
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            INDEX_COUNT,
            GLES30.GL_UNSIGNED_SHORT,
            0,
        )
        GLES30.glDisableVertexAttribArray(positionLocation)
        GLES30.glDisableVertexAttribArray(textureCoordinateLocation)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    fun resetAfterContextLoss() {
        positionBufferId = 0
        textureCoordinateBufferId = 0
        indexBufferId = 0
    }

    fun release() {
        val ids = intArrayOf(positionBufferId, textureCoordinateBufferId, indexBufferId)
            .filter { it != 0 }
            .toIntArray()
        if (ids.isNotEmpty()) GLES30.glDeleteBuffers(ids.size, ids, 0)
        resetAfterContextLoss()
    }

    private fun floatBuffer(values: FloatArray) =
        ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                position(0)
            }
}
