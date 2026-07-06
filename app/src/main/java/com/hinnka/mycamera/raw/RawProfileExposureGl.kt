package com.hinnka.mycamera.raw

import android.opengl.GLES30
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

object RawProfileExposureGl {
    private const val DEFAULT_BLACK_RENDER_SHADOWS = 5f
    private const val DEFAULT_BLACK_RENDER_SHADOW_SCALE = 1f
    private const val DEFAULT_BLACK_RENDER_STAGE3_GAIN = 1f

    data class Uniforms(
        val exposureEv: Float,
        val useRamp: Boolean,
        val linearGain: Float,
        val rampSlope: Float,
        val rampBlack: Float,
        val rampRadius: Float,
        val rampQScale: Float,
        val toneEnabled: Boolean,
        val toneSlope: Float,
        val toneA: Float,
        val toneB: Float,
        val toneC: Float
    ) {
        companion object {
            val NEUTRAL = Uniforms(
                exposureEv = 0f,
                useRamp = false,
                linearGain = 1f,
                rampSlope = 1f,
                rampBlack = 0f,
                rampRadius = 0f,
                rampQScale = 0f,
                toneEnabled = false,
                toneSlope = 1f,
                toneA = 0f,
                toneB = 1f,
                toneC = 0f
            )
        }
    }

    fun compute(
        profileExposureCompensation: Float,
        dngBaselineExposure: Float = 0f,
        dcpBaselineExposureOffset: Float = 0f,
        defaultBlackRender: DcpDefaultBlackRender = DcpDefaultBlackRender.None,
        shadowScale: Float = 1f,
        useRamp: Boolean
    ): Uniforms {
        val exposureEv = profileExposureCompensation + dngBaselineExposure + dcpBaselineExposureOffset
        val linearGain = 2.0f.pow(exposureEv)
        if (!useRamp) {
            return Uniforms(
                exposureEv = exposureEv,
                useRamp = false,
                linearGain = linearGain,
                rampSlope = 1f,
                rampBlack = 0f,
                rampRadius = 0f,
                rampQScale = 0f,
                toneEnabled = false,
                toneSlope = 1f,
                toneA = 0f,
                toneB = 1f,
                toneC = 0f
            )
        }

        val positiveExposureEv = max(0f, exposureEv)
        val white = 1f / 2.0f.pow(positiveExposureEv)
        val safeShadowScale = if (shadowScale.isFinite() && shadowScale > 0f && shadowScale <= 1f) {
            shadowScale
        } else {
            DEFAULT_BLACK_RENDER_SHADOW_SCALE
        }
        val black = when (defaultBlackRender) {
            DcpDefaultBlackRender.Auto -> DEFAULT_BLACK_RENDER_SHADOWS *
                safeShadowScale *
                DEFAULT_BLACK_RENDER_STAGE3_GAIN *
                0.001f

            DcpDefaultBlackRender.None -> 0f
        }.coerceIn(0f, 0.99f * white)
        val slope = 1f / max(white - black, 1e-6f)
        val radius = min(0.5f * black, (1f / 16f) / max(slope, 1e-6f))
        val qScale = if (radius > 0f) slope / (4f * radius) else 0f

        if (exposureEv >= 0f) {
            return Uniforms(
                exposureEv = exposureEv,
                useRamp = true,
                linearGain = linearGain,
                rampSlope = slope,
                rampBlack = black,
                rampRadius = radius,
                rampQScale = qScale,
                toneEnabled = false,
                toneSlope = 1f,
                toneA = 0f,
                toneB = 1f,
                toneC = 0f
            )
        }

        val toneSlope = 2.0f.pow(exposureEv)
        val toneA = (16f / 9f) * (1f - toneSlope)
        val toneB = toneSlope - 0.5f * toneA
        val toneC = 1f - toneA - toneB
        return Uniforms(
            exposureEv = exposureEv,
            useRamp = true,
            linearGain = linearGain,
            rampSlope = slope,
            rampBlack = black,
            rampRadius = radius,
            rampQScale = qScale,
            toneEnabled = true,
            toneSlope = toneSlope,
            toneA = toneA,
            toneB = toneB,
            toneC = toneC
        )
    }

    fun bindUniforms(program: Int, exposure: Uniforms) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
            exposure.linearGain
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uProfileExposureRampEnabled"),
            if (exposure.useRamp) 1 else 0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureRampSlope"),
            exposure.rampSlope
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureRampBlack"),
            exposure.rampBlack
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureRampRadius"),
            exposure.rampRadius
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureRampQScale"),
            exposure.rampQScale
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uProfileExposureToneEnabled"),
            if (exposure.toneEnabled) 1 else 0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureToneSlope"),
            exposure.toneSlope
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureToneA"),
            exposure.toneA
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureToneB"),
            exposure.toneB
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureToneC"),
            exposure.toneC
        )
    }
}
