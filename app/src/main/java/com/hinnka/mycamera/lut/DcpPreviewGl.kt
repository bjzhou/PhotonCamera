package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.ACR3Curve
import com.hinnka.mycamera.raw.AdobeCurveToneShader
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.DcpHueSatMap
import com.hinnka.mycamera.raw.DcpPreviewPlan
import com.hinnka.mycamera.raw.DcpTextureResources
import com.hinnka.mycamera.raw.RawCurveTextureResources
import com.hinnka.mycamera.raw.RawProfileExposureGl
import com.hinnka.mycamera.raw.RawToneMappingGl

/** Same profile/curve code as RAW; units 5..7 are exclusive to the DCP engine variant. */
internal class DcpPreviewGl {
    private val tables = DcpTextureResources()
    private val curve = RawCurveTextureResources()
    private val defaultCurve = ACR3Curve.samples()

    fun bind(program: Int, plan: DcpPreviewPlan) {
        check(plan.profile.workingColorSpace == ColorSpace.ProPhoto)
        fun matrix(name: String, value: FloatArray) = GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, name), 1, false, value, 0,
        )
        matrix("uDcpPreviewInverseCcm", plan.srgbToCamera)
        matrix("uDcpPreviewCameraToProPhoto", RawToneMappingGl.transposeMatrix3x3(plan.profile.colorCorrectionMatrix))
        matrix("uDcpPreviewOutputTransform", PROPHOTO_TO_SRGB)
        GLES30.glUniform3fv(GLES30.glGetUniformLocation(program, "uDcpPreviewCameraWhite"), 1, plan.profile.cameraWhite, 0)
        bindTable(program, "HueSat", 5, plan.profile.hueSatMap)
        bindTable(program, "LookTable", 6, plan.profile.lookTable)
        RawProfileExposureGl.bindUniforms(program, plan.exposure)
        curve.bind(program, plan.profile.toneCurveLut ?: defaultCurve, 7, "uDcpPreviewCurve")
    }

    private fun bindTable(program: Int, name: String, unit: Int, table: DcpHueSatMap?) {
        val active = table?.takeIf { it.isValid }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        val texture = when {
            active == null -> tables.ensureDummyTexture()
            name == "HueSat" -> tables.ensureHueSatTexture(active)
            else -> tables.ensureLookTableTexture(active)
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDcp${name}Texture"), unit)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDcp${name}Enabled"), if (active != null) 1 else 0)
        GLES30.glUniform3i(
            GLES30.glGetUniformLocation(program, "uDcp${name}Divisions"),
            active?.hueDivisions ?: 1, active?.satDivisions ?: 1, active?.valueDivisions ?: 1,
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDcp${name}Encoding"), active?.encoding ?: 0)
    }

    fun release() { tables.release(); curve.release() }
    fun reset() { tables.reset(); curve.reset() }

    companion object {
        private val PROPHOTO_TO_SRGB = RawToneMappingGl.transposeMatrix3x3(
            RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.ProPhoto, ColorSpace.SRGB),
        )
        // The creative layer has its own uCurve* uniforms. Namespace only the shared
        // Adobe curve bindings; the algorithm itself stays identical to the RAW path.
        val GLSL = """
            ${AdobeCurveToneShader.ADOBE_PROFILE_COMBINED_UNIFORMS}
            uniform highp sampler2D uDcpPreviewCurveTexture;
            uniform float uDcpPreviewCurveSize;
            uniform bool uDcpPreviewCurveEnabled;
            uniform mat3 uDcpPreviewInverseCcm;
            uniform mat3 uDcpPreviewCameraToProPhoto;
            uniform mat3 uDcpPreviewOutputTransform;
            uniform vec3 uDcpPreviewCameraWhite;
            ${AdobeCurveToneShader.ADOBE_PROFILE_COMBINED_FUNCTIONS}
            ${AdobeCurveToneShader.CURVE_COMBINED_FUNCTIONS.replace("uCurve", "uDcpPreviewCurve")}

            vec3 applyDcpPreview(vec3 srgbColor) {
                vec3 displayLinear = srgbToLinear(clamp(srgbColor, 0.0, 1.0));
                vec3 sceneLinear = vec3(inverseAcr3(displayLinear.r),
                    inverseAcr3(displayLinear.g), inverseAcr3(displayLinear.b));
                vec3 camera = uDcpPreviewInverseCcm * sceneLinear;
                camera = clamp(camera, vec3(0.0), uDcpPreviewCameraWhite);
                vec3 proPhoto = clamp(uDcpPreviewCameraToProPhoto * camera, 0.0, 1.0);
                proPhoto = applyAdobeCurve(applyAdobeProfilePipeline(proPhoto));
                return linearToSrgb(clamp(uDcpPreviewOutputTransform * proPhoto, 0.0, 1.0));
            }
        """.trimIndent()
    }
}
