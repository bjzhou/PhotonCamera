package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingGl
import com.hinnka.mycamera.raw.SpectralFilmLut
import com.hinnka.mycamera.raw.SpectralFilmStageTextures
import com.hinnka.mycamera.raw.SpectralFilmUniformLocations
import com.hinnka.mycamera.raw.SpektrafilmToneShader
import kotlin.math.pow

internal data class SpectralFilmPreviewLocations(
    val stages: SpectralFilmUniformLocations,
    val inputTransform: Int,
    val outputTransform: Int,
    val exposureGain: Int,
) {
    companion object {
        fun query(program: Int) = SpectralFilmPreviewLocations(
            stages = SpectralFilmUniformLocations.query(program),
            inputTransform = GLES30.glGetUniformLocation(program, "uSpectralPreviewInputTransform"),
            outputTransform = GLES30.glGetUniformLocation(program, "uSpectralPreviewOutputTransform"),
            exposureGain = GLES30.glGetUniformLocation(program, "uSpectralPreviewExposureGain"),
        )
    }
}

/**
 * Realtime Spektrafilm rendering of the ISP's display-referred sRGB preview.
 *
 * The ISP output is brought back to an approximate scene-linear engine input
 * (sRGB decode, inverse ACR3 tone curve, Spektrafilm's default linear exposure
 * compensation, sRGB -> ProPhoto) and then rendered with the same film/print
 * stages as the RAW engine before returning to display sRGB.
 */
internal class SpectralFilmPreviewGl {
    // Units 0..4 are owned by the preview color pass (camera, LUT, curve, basic tone, inverse ACR3).
    private val stages = SpectralFilmStageTextures(filmUnit = 5, printUnit = 6)

    fun bind(locations: SpectralFilmPreviewLocations?, lut: SpectralFilmLut?) {
        if (locations == null) return
        stages.bind(locations.stages, lut)
        GLES30.glUniformMatrix3fv(locations.inputTransform, 1, false, SRGB_TO_PROPHOTO, 0)
        GLES30.glUniformMatrix3fv(locations.outputTransform, 1, false, PROPHOTO_TO_SRGB, 0)
        GLES30.glUniform1f(locations.exposureGain, EXPOSURE_GAIN)
    }

    fun release() = stages.release()

    fun reset() = stages.reset()

    companion object {
        private val EXPOSURE_GAIN = 2f.pow(RawRenderingEngine.Spektrafilm.defaultExposureCompensationEv)

        // Row-major transforms, transposed for column-major GL upload.
        private val SRGB_TO_PROPHOTO = RawToneMappingGl.transposeMatrix3x3(
            RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.SRGB, ColorSpace.ProPhoto)
        )
        private val PROPHOTO_TO_SRGB = RawToneMappingGl.transposeMatrix3x3(
            RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.ProPhoto, ColorSpace.SRGB)
        )

        /** Requires [PreviewColorShaderModules.COLOR_TRANSFER_CORE] and [LogInputGl.GLSL]. */
        val GLSL = """
            ${SpektrafilmToneShader.SPECTRAL_FILM_UNIFORMS}
            uniform mat3 uSpectralPreviewInputTransform;
            uniform mat3 uSpectralPreviewOutputTransform;
            uniform float uSpectralPreviewExposureGain;

            ${SpektrafilmToneShader.SPECTRAL_FILM_FUNCTIONS}

            vec3 applySpectralFilmPreview(vec3 srgbColor) {
                vec3 displayLinear = srgbToLinear(clamp(srgbColor, 0.0, 1.0));
                vec3 sceneLinear = vec3(
                    inverseAcr3(displayLinear.r),
                    inverseAcr3(displayLinear.g),
                    inverseAcr3(displayLinear.b)
                ) * uSpectralPreviewExposureGain;
                vec3 proPhotoLinear = uSpectralPreviewInputTransform * sceneLinear;
                vec3 filmLinear = uSpectralPreviewOutputTransform * applySpectralFilm(proPhotoLinear);
                return linearToSrgb(clamp(filmLinear, 0.0, 1.0));
            }
        """.trimIndent()
    }
}
