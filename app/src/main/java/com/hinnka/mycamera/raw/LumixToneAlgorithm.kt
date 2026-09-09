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
            uniform highp sampler3D uLumixCalibrationLow;
            uniform highp sampler3D uLumixCalibrationHigh;
            uniform float uLumixCalibrationFirstWeight;
        """.trimIndent(),
        engineFunctions = """
            vec3 lumixCalibrationCube(highp sampler3D lut, vec3 position) {
                ivec3 p = min(ivec3(floor(position)), ivec3(${LumixLutNative.SIZE - 2}));
                vec3 f = position - vec3(p);
                ivec3 first;
                ivec3 second;
                vec3 weights;
                // Four vertices of the containing tetrahedron. Only calibration uses
                // this interpolation; the original PSL1 sampler below remains trilinear.
                if (f.r >= f.g) {
                    if (f.g >= f.b) { first=ivec3(1,0,0); second=ivec3(1,1,0); weights=f.rgb; }
                    else if (f.r >= f.b) { first=ivec3(1,0,0); second=ivec3(1,0,1); weights=f.rbg; }
                    else { first=ivec3(0,0,1); second=ivec3(1,0,1); weights=f.brg; }
                } else {
                    if (f.r >= f.b) { first=ivec3(0,1,0); second=ivec3(1,1,0); weights=f.grb; }
                    else if (f.g >= f.b) { first=ivec3(0,1,0); second=ivec3(0,1,1); weights=f.gbr; }
                    else { first=ivec3(0,0,1); second=ivec3(0,1,1); weights=f.bgr; }
                }
                return texelFetch(lut,p,0).rgb * (1.0-weights.x) +
                    texelFetch(lut,p+first,0).rgb * (weights.x-weights.y) +
                    texelFetch(lut,p+second,0).rgb * (weights.y-weights.z) +
                    texelFetch(lut,p+ivec3(1),0).rgb * weights.z;
            }

            vec3 lumixEquivalentCamera(vec3 camera) {
                camera = max(camera, vec3(0.0));
                // A linear [0,1] section followed by HDR logarithmic nodes. This is a
                // lookup coordinate, not sRGB encoding. Extend homogeneously above 16.
                float extension = max(1.0, max(camera.r, max(camera.g,camera.b)) / ${LumixLutNative.INPUT_MAX});
                camera /= extension;
                vec3 linear = camera * ${LumixLutNative.LINEAR_FRACTION};
                vec3 hdr = vec3(${LumixLutNative.LINEAR_FRACTION}) +
                    (1.0-${LumixLutNative.LINEAR_FRACTION}) * log(max(camera,vec3(1.0))) / log(${LumixLutNative.INPUT_MAX});
                vec3 position = clamp(mix(linear,hdr,step(vec3(1.0),camera)),0.0,1.0) * ${LumixLutNative.SIZE - 1}.0;
                return mix(lumixCalibrationCube(uLumixCalibrationHigh, position),
                           lumixCalibrationCube(uLumixCalibrationLow, position), uLumixCalibrationFirstWeight) * extension;
            }

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
                color = lumixEquivalentCamera(color);
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
    private val calibrationTextures = IntArray(2)
    private var uploadedCalibrationKey: String? = null

    override fun bindEngineResources(program: Int, input: RawEngineTonePass.Input) {
        super.bindEngineResources(program, input)
        val plan = requireNotNull(input.lumixRenderPlan) { "Lumix requires an S9 render plan" }
        ensureTextures(plan.tables)
        bindCalibration(program, plan)
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
        GLES30.glDeleteTextures(calibrationTextures.size, calibrationTextures, 0)
        calibrationTextures.fill(0)
        uploadedCalibrationKey = null
        releaseStyleTextures()
    }

    private fun releaseStyleTextures() {
        GLES30.glDeleteTextures(textures.size, textures, 0)
        textures.fill(0)
        uploadedTables = null
    }

    private fun bindCalibration(program: Int, plan: LumixRenderPlan) {
        val luts = plan.calibrationLuts
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLumixCalibrationFirstWeight"), plan.calibrationFirstWeight)
        val units = intArrayOf(1, 5)
        val names = arrayOf("uLumixCalibrationLow", "uLumixCalibrationHigh")
        if (calibrationTextures.any { it == 0 }) {
            GLES30.glGenTextures(calibrationTextures.size, calibrationTextures, 0)
            if (calibrationTextures.any { it == 0 }) {
                GLES30.glDeleteTextures(calibrationTextures.size, calibrationTextures, 0)
                calibrationTextures.fill(0)
                error("Unable to allocate Lumix calibration textures")
            }
        }
        val unpack = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_UNPACK_ALIGNMENT, unpack, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        try {
            for (index in units.indices) {
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, names[index]), units[index])
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + units[index])
                GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, calibrationTextures[index])
                if (uploadedCalibrationKey == luts.key) continue
                val values = if (index == 0) luts.low else luts.high
                val data = ByteBuffer.allocateDirect(values.size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer()
                data.put(values).position(0)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glTexImage3D(GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB32F, luts.size, luts.size, luts.size,
                    0, GLES30.GL_RGB, GLES30.GL_FLOAT, data)
                check(GLES30.glGetError() == GLES30.GL_NO_ERROR) { "Lumix calibration LUT upload failed" }
            }
            uploadedCalibrationKey = luts.key
        } catch (error: Throwable) {
            // A partial upload must never be reused as the previous lens's pair.
            GLES30.glDeleteTextures(calibrationTextures.size, calibrationTextures, 0)
            calibrationTextures.fill(0)
            uploadedCalibrationKey = null
            throw error
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, unpack[0])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        }
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
