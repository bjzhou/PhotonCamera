package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog

/** Shared GLES compiler/linker used by self-contained RAW shader passes. */
internal object RawGlesProgram {
    private const val TAG = "RawGlesProgram"

    fun linkFragment(
        vertexSource: String,
        fragmentSource: String,
        name: String,
    ): Int {
        val vertexShader = compileShader(
            type = GLES30.GL_VERTEX_SHADER,
            source = vertexSource,
            name = "${name}Vertex",
        )
        val fragmentShader = compileShader(
            type = GLES30.GL_FRAGMENT_SHADER,
            source = fragmentSource,
            name = "${name}Fragment",
        )
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            return 0
        }

        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        val startedAt = System.currentTimeMillis()
        GLES30.glLinkProgram(program)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)

        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(
                TAG,
                "Program $name linking failed after " +
                    "${System.currentTimeMillis() - startedAt}ms: ${GLES30.glGetProgramInfoLog(program)}",
            )
            GLES30.glDeleteProgram(program)
            return 0
        }
        val elapsedMs = System.currentTimeMillis() - startedAt
        if (elapsedMs > 100) {
            PLog.d(TAG, "Program $name linked: $program, took=${elapsedMs}ms")
        }
        return program
    }

    fun compileCompute(source: String, name: String): Int {
        GlesComputeWorkGroup.requireBaselineCompatible(source, name)
        val shader = compileShader(GLES31.GL_COMPUTE_SHADER, source, name)
        if (shader == 0) return 0

        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        val startedAt = System.currentTimeMillis()
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)

        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(
                TAG,
                "Compute program $name linking failed after " +
                    "${System.currentTimeMillis() - startedAt}ms: ${GLES31.glGetProgramInfoLog(program)}",
            )
            GLES31.glDeleteProgram(program)
            return 0
        }
        val elapsedMs = System.currentTimeMillis() - startedAt
        if (elapsedMs > 100) {
            PLog.d(TAG, "Compute program $name linked: $program, took=${elapsedMs}ms")
        }
        return program
    }

    fun logErrors(operation: String) {
        var error: Int
        while (GLES30.glGetError().also { error = it } != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "$operation: glError $error")
        }
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        val startedAt = System.currentTimeMillis()
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)

        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            PLog.e(
                TAG,
                "Shader $name compilation failed after " +
                    "${System.currentTimeMillis() - startedAt}ms, type=$type, chars=${source.length}: " +
                    GLES30.glGetShaderInfoLog(shader),
            )
            GLES30.glDeleteShader(shader)
            return 0
        }
        val elapsedMs = System.currentTimeMillis() - startedAt
        if (elapsedMs > 100) {
            PLog.d(TAG, "Shader $name compiled, type=$type, chars=${source.length}, took=${elapsedMs}ms")
        }
        return shader
    }
}
