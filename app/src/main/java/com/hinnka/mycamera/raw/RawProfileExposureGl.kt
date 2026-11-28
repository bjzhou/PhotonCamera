package com.hinnka.mycamera.raw

import android.opengl.GLES30
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

object RawProfileExposureGl {
    const val DEFAULT_BLACK_RENDER_SHADOWS = 5f
    private const val DEFAULT_BLACK_RENDER_SHADOW_SCALE = 1f

    data class Uniforms(
        val exposureEv: Float,
        val useRamp: Boolean,
        val linearGain: Float,
        val rampSlope: Float,
        val rampBlack: Float,
        val rampRadius: Float,
        val rampQScale: Float,
        val supportOverrange: Boolean,
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
                supportOverrange = false,
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
        defaultBlackRender: DcpDefaultBlackRender = DcpDefaultBlackRender.Auto,
        blackRenderShadows: Float = DEFAULT_BLACK_RENDER_SHADOWS,
        shadowScale: Float = 1f,
        supportOverrange: Boolean = false,
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
                supportOverrange = false,
                toneEnabled = false,
                toneSlope = 1f,
                toneA = 0f,
                toneB = 1f,
                toneC = 0f
            )
        }

        val white = 2.0.pow(-max(0.0, exposureEv.toDouble()))
        // Photon supplies normalized Stage 3 input and consumes BaselineExposure in this ramp,
        // so the Stage3Gain term from dng_render is one here.
        val black = when (defaultBlackRender) {
            DcpDefaultBlackRender.Auto -> blackRenderShadows.toDouble().coerceAtLeast(0.0) *
                sanitizeShadowScale(shadowScale) * 0.001

            DcpDefaultBlackRender.None -> 0.0
        }.coerceIn(0.0, 0.99 * white)
        val slope = (1.0 / (white - black)).takeIf { it > 0.0 && it <= Float.MAX_VALUE } ?: 0.0
        val radius = if (slope > 0.0) min(0.5 * black, (1.0 / 16.0) / slope) else 0.0
        val qScale = if (radius > 0.0) min(slope / (4.0 * radius), Float.MAX_VALUE.toDouble()) else 0.0

        if (exposureEv >= 0f) {
            return Uniforms(
                exposureEv = exposureEv,
                useRamp = true,
                linearGain = linearGain,
                rampSlope = slope.toFloat(),
                rampBlack = black.toFloat(),
                rampRadius = radius.toFloat(),
                rampQScale = qScale.toFloat(),
                supportOverrange = supportOverrange,
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
            rampSlope = slope.toFloat(),
            rampBlack = black.toFloat(),
            rampRadius = radius.toFloat(),
            rampQScale = qScale.toFloat(),
            supportOverrange = supportOverrange,
            toneEnabled = true,
            toneSlope = toneSlope,
            toneA = toneA,
            toneB = toneB,
            toneC = toneC
        )
    }

    internal fun sanitizeShadowScale(shadowScale: Float): Float =
        shadowScale.takeIf { it > 0f && it <= 1f } ?: DEFAULT_BLACK_RENDER_SHADOW_SCALE

    internal fun resolveDefaultBlackRender(
        requested: DcpDefaultBlackRender,
        outputReferred: Boolean = false,
    ): DcpDefaultBlackRender = if (outputReferred) DcpDefaultBlackRender.None else requested

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
            GLES30.glGetUniformLocation(program, "uProfileExposureSupportOverrange"),
            if (exposure.supportOverrange) 1 else 0
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
