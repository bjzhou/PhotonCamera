package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal object LumixToneShader {
    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = """
            uniform highp sampler2D uLumixCurve;
            uniform highp sampler3D uLumixLow;
            uniform highp sampler3D uLumixHigh;
            uniform float uLumixHighWeight;
            uniform float uLumixStyleGain;
            uniform float uLumixOutputClip;
            ${EquivalentCameraLutShader.UNIFORMS}
        """.trimIndent(),
        engineFunctions = """
            ${EquivalentCameraLutShader.FUNCTIONS}

            float lumixShape(float value) {
                float position = clamp(value, 0.0, 1.0) * 2047.0;
                int lower = min(int(floor(position)), 2046);
                return mix(texelFetch(uLumixCurve, ivec2(lower, 0), 0).r,
                           texelFetch(uLumixCurve, ivec2(lower + 1, 0), 0).r,
                           position - float(lower));
            }

            vec3 lumixCube(highp sampler3D lut, vec3 value) {
                vec3 position = clamp(value, 0.0, 1.0) * 32.0;
                ivec3 p = min(ivec3(floor(position)), ivec3(31));
                vec3 f = position - vec3(p);
                // PSL1 uses red-fast RGB nodes. Match cnvOnlyProcess's eight-corner
                // trilinear interpolation explicitly, including the last grid node.
                vec3 c00 = mix(texelFetch(lut, p, 0).rgb,
                               texelFetch(lut, p + ivec3(1,0,0), 0).rgb, f.r);
                vec3 c10 = mix(texelFetch(lut, p + ivec3(0,1,0), 0).rgb,
                               texelFetch(lut, p + ivec3(1,1,0), 0).rgb, f.r);
                vec3 c01 = mix(texelFetch(lut, p + ivec3(0,0,1), 0).rgb,
                               texelFetch(lut, p + ivec3(1,0,1), 0).rgb, f.r);
                vec3 c11 = mix(texelFetch(lut, p + ivec3(0,1,1), 0).rgb,
                               texelFetch(lut, p + ivec3(1,1,1), 0).rgb, f.r);
                return mix(mix(c00, c10, f.g), mix(c01, c11, f.g), f.b);
            }

            vec3 applyEngineTone(vec3 color) {
                color = equivalentCameraRgb(color);
                vec3 camera = clamp(color * uLumixStyleGain, 0.0, 1.0);
                vec3 shaped = vec3(lumixShape(camera.r), lumixShape(camera.g), lumixShape(camera.b));
                vec3 encoded = clamp(mix(lumixCube(uLumixLow, shaped),
                                         lumixCube(uLumixHigh, shaped), uLumixHighWeight), 0.0, uLumixOutputClip);
                encoded = floor(encoded * 4095.0) / 4095.0;
                // PhotoStyle already produces output code values. The shared pipeline expects
                // linear sRGB and encodes once in RawSrgbPass. Decode here so neutral editing
                // preserves those code values, including a deliberately flat V-Log preview.
                return mix(encoded / 12.92, pow((encoded + 0.055) / 1.055, vec3(2.4)),
                           step(vec3(0.04045), encoded));
            }
        """.trimIndent(),
    )
}

internal class LumixToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, LumixToneShader.DEFINITION) {
    private val textures = IntArray(3)
    private var uploadedTables: LumixPhotoStyleTables? = null
    private val calibration = EquivalentCameraLutGl()

    override fun bindEngineResources(program: Int, input: RawEngineTonePass.Input) {
        super.bindEngineResources(program, input)
        val plan = requireNotNull(input.lumixRenderPlan) { "Lumix requires an S9 render plan" }
        ensureTextures(plan.tables)
        calibration.bind(program, plan.calibrationLuts, plan.calibrationFirstWeight)
        val units = intArrayOf(2, 3, 6)
        val names = arrayOf("uLumixCurve", "uLumixLow", "uLumixHigh")
        for (index in textures.indices) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + units[index])
            GLES30.glBindTexture(if (index == 0) GLES30.GL_TEXTURE_2D else GLES30.GL_TEXTURE_3D, textures[index])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, names[index]), units[index])
        }
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLumixHighWeight"), plan.highWeight)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLumixOutputClip"), plan.outputClip)
        // Source camera RGB uses the Standard-family exposure scale. These offsets are
        // S9's original STD -> target-family transitions, not a fitted brightness correction.
        val styleEv = when (plan.tables.style) {
            LumixPhotoStyle.CinelikeD2, LumixPhotoStyle.CinelikeV2 -> -7.0 / 6.0
            LumixPhotoStyle.VLog -> -8.0 / 3.0
            else -> 0.0
        }
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLumixStyleGain"), Math.pow(2.0, styleEv).toFloat())
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        RawGlesProgram.logErrors("LumixToneAlgorithm.bindEngineResources")
    }

    override fun releaseEngineResources() {
        calibration.release()
        releaseStyleTextures()
    }

    private fun releaseStyleTextures() {
        GLES30.glDeleteTextures(textures.size, textures, 0)
        textures.fill(0)
        uploadedTables = null
    }

    private fun ensureTextures(tables: LumixPhotoStyleTables) {
        if (uploadedTables === tables && textures.all { it != 0 }) return
        releaseStyleTextures()
        GLES30.glGenTextures(textures.size, textures, 0)
        try {
            require(textures.all { it != 0 }) { "Unable to allocate S9 LUT textures" }
            // Unpack state belongs to the caller/context, not to a texture object.
            val unpack = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_UNPACK_ALIGNMENT, unpack, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            try {
                upload(0, tables.curve)
                upload(1, tables.low)
                upload(2, tables.high)
            } finally {
                GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, unpack[0])
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            }
            uploadedTables = tables
        } catch (error: Throwable) {
            releaseEngineResources()
            throw error
        }
    }

    private fun upload(index: Int, values: FloatArray) {
        val target = if (index == 0) GLES30.GL_TEXTURE_2D else GLES30.GL_TEXTURE_3D
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + intArrayOf(2, 3, 6)[index])
        GLES30.glBindTexture(target, textures[index])
        GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val data = ByteBuffer.allocateDirect(values.size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer()
        data.put(values).position(0)
        if (index == 0) {
            GLES30.glTexImage2D(target, 0, GLES30.GL_R32F, 2048, 1, 0, GLES30.GL_RED, GLES30.GL_FLOAT, data)
        } else {
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexImage3D(target, 0, GLES30.GL_RGB32F, 33, 33, 33, 0, GLES30.GL_RGB, GLES30.GL_FLOAT, data)
        }
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "S9 LUT upload failed: texture=$index GL error=$error" }
    }
}
