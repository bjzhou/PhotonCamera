package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** M9 DSP matrix/lookup stage; see docs/leica-rendering.md for the normalized input boundary. */
internal object LeicaToneShader {
    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = """
            uniform highp sampler2D uLeicaTables;
            uniform highp ivec3 uLeicaRedAtLeastGreenMatrix[3];
            uniform highp ivec3 uLeicaRedBelowGreenMatrix[3];
        """.trimIndent(),
        engineFunctions = """
            int leicaMatrixIndex(ivec3 coefficients, ivec3 camera) {
                int value = coefficients.r * camera.r + coefficients.g * camera.g
                          + coefficients.b * camera.b;
                // Signed high word of the DSP integer MAC, then 11-bit clipping.
                return clamp(value >> 16, 0, 2047);
            }

            float leicaLookup(int index) {
                // Original byte lookup; the DSP does not interpolate adjacent entries.
                return texelFetch(uLeicaTables, ivec2(index % 1024, index / 1024), 0).r;
            }

            vec3 applyEngineTone(vec3 color) {
                // Input is calibrated, white-balanced M9 RGB after shared PGTM/exposure.
                // Host normalized black/white maps to the DSP's 14-bit input domain.
                ivec3 camera = ivec3(floor(clamp(color, 0.0, 1.0) * 16383.0));
                ivec3 indices;
                if (camera.r >= camera.g) {
                    indices = ivec3(leicaMatrixIndex(uLeicaRedAtLeastGreenMatrix[0], camera),
                                    leicaMatrixIndex(uLeicaRedAtLeastGreenMatrix[1], camera),
                                    leicaMatrixIndex(uLeicaRedAtLeastGreenMatrix[2], camera));
                } else {
                    indices = ivec3(leicaMatrixIndex(uLeicaRedBelowGreenMatrix[0], camera),
                                    leicaMatrixIndex(uLeicaRedBelowGreenMatrix[1], camera),
                                    leicaMatrixIndex(uLeicaRedBelowGreenMatrix[2], camera));
                }
                vec3 encodedSrgb = vec3(leicaLookup(indices.r), leicaLookup(indices.g),
                                        leicaLookup(indices.b));
                // Shared adjustments require linear sRGB and the output pass encodes once.
                bvec3 high = greaterThan(encodedSrgb, vec3(0.04045));
                vec3 low = encodedSrgb / 12.92;
                vec3 upper = pow((encodedSrgb + 0.055) / 1.055, vec3(2.4));
                return vec3(high.r ? upper.r : low.r, high.g ? upper.g : low.g,
                            high.b ? upper.b : low.b);
            }
        """.trimIndent(),
    )
}

internal class LeicaToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, LeicaToneShader.DEFINITION) {
    private var texture = 0
    private var uploadedTables: FloatArray? = null

    override fun bindEngineResources(program: Int, input: RawEngineColorResources) {
        super.bindEngineResources(program, input)
        val plan = requireNotNull(input.leicaRenderPlan) { "Leica requires an M9 render plan" }
        ensureTexture(plan.tables)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLeicaTables"), TEXTURE_UNIT)
        GLES30.glUniform3iv(GLES30.glGetUniformLocation(program, "uLeicaRedAtLeastGreenMatrix[0]"),
            3, plan.redAtLeastGreenMatrix, 0)
        GLES30.glUniform3iv(GLES30.glGetUniformLocation(program, "uLeicaRedBelowGreenMatrix[0]"),
            3, plan.redBelowGreenMatrix, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        RawGlesProgram.logErrors("LeicaToneAlgorithm.bindEngineResources")
    }

    private fun ensureTexture(tables: FloatArray) {
        if (texture != 0 && uploadedTables === tables) return
        require(tables.size == LeicaProfile.TABLE_WIDTH * LeicaProfile.TABLE_HEIGHT)
        releaseEngineResources()
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_IMAGE_UNITS, limit, 0)
        check(limit[0] > TEXTURE_UNIT) { "Leica texture unit unavailable" }
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
        check(limit[0] >= LeicaProfile.TABLE_WIDTH) { "Leica table texture exceeds GL limit" }
        val unpackAlignment = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_UNPACK_ALIGNMENT, unpackAlignment, 0)
        try {
            val names = IntArray(1)
            GLES30.glGenTextures(1, names, 0)
            texture = names[0]
            check(texture != 0) { "Unable to allocate Leica table texture" }
            val buffer = ByteBuffer.allocateDirect(tables.size * Float.SIZE_BYTES)
                .order(ByteOrder.nativeOrder()).asFloatBuffer()
            buffer.put(tables).position(0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + TEXTURE_UNIT)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F,
                LeicaProfile.TABLE_WIDTH, LeicaProfile.TABLE_HEIGHT)
            GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0,
                LeicaProfile.TABLE_WIDTH, LeicaProfile.TABLE_HEIGHT, GLES30.GL_RED, GLES30.GL_FLOAT, buffer)
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "Leica table upload failed: GL error=$error" }
            uploadedTables = tables
        } catch (error: Throwable) {
            releaseEngineResources()
            throw error
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, unpackAlignment[0])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        }
    }

    override fun releaseEngineResources() {
        if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        texture = 0
        uploadedTables = null
    }

    private companion object {
        // PGTM uses 7 and HDR reference uses 2/4; GLES 3 guarantees 16 fragment units.
        const val TEXTURE_UNIT = 10
    }
}
