package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

internal data class ColorPassLocations(
    val programId: Int,
    val uMVPMatrixLocation: Int,
    val uSTMatrixLocation: Int,
    val uCameraTextureLocation: Int,
    val uLutTextureLocation: Int,
    val uLutSizeLocation: Int,
    val uLutIntensityLocation: Int,
    val uLutEnabledLocation: Int,
    val uLutMaskTypeLocation: Int,
    val uLutCurveLocation: Int,
    val uLutColorSpaceLocation: Int,
    val uVideoLogEnabledLocation: Int,
    val uVideoLogCurveLocation: Int,
    val uVideoColorSpaceLocation: Int,
    val uIsHlgInputLocation: Int,
    val uColorRecipeEnabledLocation: Int,
    val uExposureLocation: Int,
    val uContrastLocation: Int,
    val uSaturationLocation: Int,
    val uTemperatureLocation: Int,
    val uTintLocation: Int,
    val uFadeLocation: Int,
    val uVibranceLocation: Int,
    val uHighlightsLocation: Int,
    val uShadowsLocation: Int,
    val uToneToeLocation: Int,
    val uToneShoulderLocation: Int,
    val uTonePivotLocation: Int,
    val uFilmGrainLocation: Int,
    val uVignetteLocation: Int,
    val uBleachBypassLocation: Int,
    val uChromaticAberrationLocation: Int,
    val uNoiseLocation: Int,
    val uNoiseSeedLocation: Int,
    val uLowResLocation: Int,
    val uAspectRatioLocation: Int,
    val uLchHueAdjustmentsLocation: Int,
    val uLchChromaAdjustmentsLocation: Int,
    val uLchLightnessAdjustmentsLocation: Int,
    val uPrimaryCalibrationMatrixLocation: Int,
    val uSTMatrixFragLocation: Int,
    val uCropRectLocation: Int,
    val uApertureLocation: Int,
    val uFocusPointLocation: Int,
    val uTexelSizeLocation: Int,
    val uCurveTextureLocation: Int,
    val uCurveEnabledLocation: Int,
    val aPositionLocation: Int,
    val aTexCoordLocation: Int,
)

internal class PreviewColorProgramCache {
    private val programs = mutableMapOf<PreviewColorShaderVariant, ColorPassLocations>()

    fun get(variant: PreviewColorShaderVariant): ColorPassLocations? {
        programs[variant]?.let { return it }

        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(
            GLES30.GL_FRAGMENT_SHADER,
            PreviewColorShader.source(variant)
        )
        if (vertexShader == 0 || fragmentShader == 0) {
            PLog.e(TAG, "Failed to compile preview color shader: $variant")
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            return null
        }

        val programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (programId == 0) {
            PLog.e(TAG, "Failed to link preview color shader: $variant")
            return null
        }

        val locations = queryLocations(programId)
        programs[variant] = locations
        PLog.d(TAG, "Compiled preview color shader variant: $variant")
        return locations
    }

    fun release() {
        programs.values.forEach { GlUtils.deleteProgram(it.programId) }
        programs.clear()
    }

    fun reset() {
        programs.clear()
    }

    private fun queryLocations(program: Int): ColorPassLocations {
        return ColorPassLocations(
            programId = program,
            uMVPMatrixLocation = GLES30.glGetUniformLocation(program, "uMVPMatrix"),
            uSTMatrixLocation = GLES30.glGetUniformLocation(program, "uSTMatrix"),
            uCameraTextureLocation = GLES30.glGetUniformLocation(program, "uCameraTexture"),
            uLutTextureLocation = GLES30.glGetUniformLocation(program, "uLutTexture"),
            uLutSizeLocation = GLES30.glGetUniformLocation(program, "uLutSize"),
            uLutIntensityLocation = GLES30.glGetUniformLocation(program, "uLutIntensity"),
            uLutEnabledLocation = GLES30.glGetUniformLocation(program, "uLutEnabled"),
            uLutMaskTypeLocation = GLES30.glGetUniformLocation(program, "uLutMaskType"),
            uLutCurveLocation = GLES30.glGetUniformLocation(program, "uLutCurve"),
            uLutColorSpaceLocation = GLES30.glGetUniformLocation(program, "uLutColorSpace"),
            uVideoLogEnabledLocation = GLES30.glGetUniformLocation(program, "uVideoLogEnabled"),
            uVideoLogCurveLocation = GLES30.glGetUniformLocation(program, "uVideoLogCurve"),
            uVideoColorSpaceLocation = GLES30.glGetUniformLocation(program, "uVideoColorSpace"),
            uIsHlgInputLocation = GLES30.glGetUniformLocation(program, "uIsHlgInput"),
            uColorRecipeEnabledLocation = GLES30.glGetUniformLocation(program, "uColorRecipeEnabled"),
            uExposureLocation = GLES30.glGetUniformLocation(program, "uExposure"),
            uContrastLocation = GLES30.glGetUniformLocation(program, "uContrast"),
            uSaturationLocation = GLES30.glGetUniformLocation(program, "uSaturation"),
            uTemperatureLocation = GLES30.glGetUniformLocation(program, "uTemperature"),
            uTintLocation = GLES30.glGetUniformLocation(program, "uTint"),
            uFadeLocation = GLES30.glGetUniformLocation(program, "uFade"),
            uVibranceLocation = GLES30.glGetUniformLocation(program, "uVibrance"),
            uHighlightsLocation = GLES30.glGetUniformLocation(program, "uHighlights"),
            uShadowsLocation = GLES30.glGetUniformLocation(program, "uShadows"),
            uToneToeLocation = GLES30.glGetUniformLocation(program, "uToneToe"),
            uToneShoulderLocation = GLES30.glGetUniformLocation(program, "uToneShoulder"),
            uTonePivotLocation = GLES30.glGetUniformLocation(program, "uTonePivot"),
            uFilmGrainLocation = GLES30.glGetUniformLocation(program, "uFilmGrain"),
            uVignetteLocation = GLES30.glGetUniformLocation(program, "uVignette"),
            uBleachBypassLocation = GLES30.glGetUniformLocation(program, "uBleachBypass"),
            uChromaticAberrationLocation = GLES30.glGetUniformLocation(program, "uChromaticAberration"),
            uNoiseLocation = GLES30.glGetUniformLocation(program, "uNoise"),
            uNoiseSeedLocation = GLES30.glGetUniformLocation(program, "uNoiseSeed"),
            uLowResLocation = GLES30.glGetUniformLocation(program, "uLowRes"),
            uAspectRatioLocation = GLES30.glGetUniformLocation(program, "uAspectRatio"),
            uLchHueAdjustmentsLocation = GLES30.glGetUniformLocation(program, "uLchHueAdjustments"),
            uLchChromaAdjustmentsLocation = GLES30.glGetUniformLocation(program, "uLchChromaAdjustments"),
            uLchLightnessAdjustmentsLocation = GLES30.glGetUniformLocation(program, "uLchLightnessAdjustments"),
            uPrimaryCalibrationMatrixLocation = GLES30.glGetUniformLocation(program, "uPrimaryCalibrationMatrix"),
            uSTMatrixFragLocation = GLES30.glGetUniformLocation(program, "uSTMatrix"),
            uCropRectLocation = GLES30.glGetUniformLocation(program, "uCropRect"),
            uApertureLocation = GLES30.glGetUniformLocation(program, "uAperture"),
            uFocusPointLocation = GLES30.glGetUniformLocation(program, "uFocusPoint"),
            uTexelSizeLocation = GLES30.glGetUniformLocation(program, "uTexelSize"),
            uCurveTextureLocation = GLES30.glGetUniformLocation(program, "uCurveTexture"),
            uCurveEnabledLocation = GLES30.glGetUniformLocation(program, "uCurveEnabled"),
            aPositionLocation = GLES30.glGetAttribLocation(program, "aPosition"),
            aTexCoordLocation = GLES30.glGetAttribLocation(program, "aTexCoord"),
        )
    }

    private companion object {
        const val TAG = "PreviewColorProgram"
    }
}
