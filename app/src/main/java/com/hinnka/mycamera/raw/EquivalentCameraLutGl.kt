package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Shared tetrahedral lookup for inverse-DCP camera calibration, in linear WB sensor RGB. */
internal object EquivalentCameraLutShader {
    val UNIFORMS = """
        uniform highp sampler3D uEquivalentCameraLow;
        uniform highp sampler3D uEquivalentCameraHigh;
        uniform float uEquivalentCameraFirstWeight;
    """.trimIndent()
    val FUNCTIONS = """
            vec3 equivalentCameraCube(highp sampler3D lut, vec3 position) {
                ivec3 p = min(ivec3(floor(position)), ivec3(${EquivalentCameraLutNative.SIZE - 2}));
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

            vec3 equivalentCameraRgb(vec3 camera) {
                camera = max(camera, vec3(0.0));
                // A linear [0,1] section followed by HDR logarithmic nodes. This is a
                // lookup coordinate, not sRGB encoding. Extend homogeneously above 16.
                float extension = max(1.0, max(camera.r, max(camera.g,camera.b)) / ${EquivalentCameraLutNative.INPUT_MAX});
                camera /= extension;
                vec3 linear = camera * ${EquivalentCameraLutNative.LINEAR_FRACTION};
                vec3 hdr = vec3(${EquivalentCameraLutNative.LINEAR_FRACTION}) +
                    (1.0-${EquivalentCameraLutNative.LINEAR_FRACTION}) * log(max(camera,vec3(1.0))) / log(${EquivalentCameraLutNative.INPUT_MAX});
                vec3 position = clamp(mix(linear,hdr,step(vec3(1.0),camera)),0.0,1.0) * ${EquivalentCameraLutNative.SIZE - 1}.0;
                return mix(equivalentCameraCube(uEquivalentCameraHigh, position),
                           equivalentCameraCube(uEquivalentCameraLow, position), uEquivalentCameraFirstWeight) * extension;
            }

    """.trimIndent()
}

internal class EquivalentCameraLutGl {
    private val calibrationTextures = IntArray(2)
    private var uploadedCalibrationKey: String? = null

    fun bind(program: Int, luts: EquivalentCameraLuts, firstWeight: Float) {
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uEquivalentCameraFirstWeight"), firstWeight)
        val units = intArrayOf(1, 5)
        val names = arrayOf("uEquivalentCameraLow", "uEquivalentCameraHigh")
        if (calibrationTextures.any { it == 0 }) {
            GLES30.glGenTextures(calibrationTextures.size, calibrationTextures, 0)
            if (calibrationTextures.any { it == 0 }) {
                GLES30.glDeleteTextures(calibrationTextures.size, calibrationTextures, 0)
                calibrationTextures.fill(0)
                error("Unable to allocate Equivalent camera calibration textures")
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
                check(GLES30.glGetError() == GLES30.GL_NO_ERROR) { "Equivalent camera calibration LUT upload failed" }
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


    fun release() {
        GLES30.glDeleteTextures(calibrationTextures.size, calibrationTextures, 0)
        calibrationTextures.fill(0)
        uploadedCalibrationKey = null
    }
}
