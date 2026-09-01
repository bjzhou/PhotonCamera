package com.hinnka.mycamera.raw

import android.opengl.GLES30

/** Converts demosaicked camera RGB to the linear profile/working RGB contract. */
internal class RawLinearRcdPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
        val colorCorrectionMatrix: FloatArray,
        val cameraWhite: FloatArray,
        val exposureGain: Float,
        val hncsCameraDomainGain: FloatArray?,
        val hncsInputEv: Float,
        val hncsHighlightTruncation: Float,
        val hncsHighlightMaximum: Float,
        val clampProfileRgb: Boolean,
        val hueSatMapSupportsOverrange: Boolean,
        val textureBounds: FloatArray = FULL_TEXTURE_BOUNDS,
        val areaSampleFootprint: FloatArray = NO_AREA_SAMPLE,
        val useAreaSampleMaximum: Boolean = false,
        val textureRotation: Int = 0,
        val bindHueSatMap: (program: Int) -> Unit,
        val label: String,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        RawGlesProgram.logErrors("${input.label} setup framebuffer")
        GLES30.glUseProgram(activeProgram)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uDemosaickedTexture"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(activeProgram, "uColorCorrectionMatrix"),
            1,
            false,
            transpose3x3(input.colorCorrectionMatrix),
            0,
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(activeProgram, "uCameraWhite"),
            input.cameraWhite[0],
            input.cameraWhite[1],
            input.cameraWhite[2],
        )
        input.bindHueSatMap(activeProgram)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uExposureGain"),
            input.exposureGain,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHncsCameraDomainEnabled"),
            if (input.hncsCameraDomainGain != null) 1 else 0,
        )
        GLES30.glUniform3fv(
            GLES30.glGetUniformLocation(activeProgram, "uHncsCameraDomainGain"),
            1,
            input.hncsCameraDomainGain ?: IDENTITY_GAIN,
            0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsInputEV"),
            input.hncsInputEv,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsHrTrunc"),
            input.hncsHighlightTruncation,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsHrMax"),
            input.hncsHighlightMaximum,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uClampProfileRgb"),
            if (input.clampProfileRgb) 1 else 0,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHueSatSupportOverrange"),
            if (input.hueSatMapSupportsOverrange) 1 else 0,
        )
        require(input.textureBounds.size >= 4) { "Expected normalized texture bounds" }
        require(input.areaSampleFootprint.size >= 2) { "Expected an area-sample footprint" }
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(activeProgram, "uTextureBounds"),
            input.textureBounds[0],
            input.textureBounds[1],
            input.textureBounds[2],
            input.textureBounds[3],
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uAreaSampleFootprint"),
            input.areaSampleFootprint[0],
            input.areaSampleFootprint[1],
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uUseAreaSampleMaximum"),
            if (input.useAreaSampleMaximum) 1 else 0,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uTextureRotation"),
            ((input.textureRotation % 360) + 360) % 360,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("${input.label} draw")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "linearRcd")
        return program
    }

    private fun transpose3x3(matrix: FloatArray): FloatArray {
        require(matrix.size == 9) { "Expected a 3x3 matrix" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8],
        )
    }

    companion object {
        private val IDENTITY_GAIN = floatArrayOf(1f, 1f, 1f)
        private val FULL_TEXTURE_BOUNDS = floatArrayOf(0f, 0f, 1f, 1f)
        private val NO_AREA_SAMPLE = floatArrayOf(0f, 0f)

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp sampler3D;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uDemosaickedTexture;
            uniform sampler3D uLinearDcpHueSatMap;
            uniform mat3 uColorCorrectionMatrix;
            uniform vec3 uCameraWhite;
            uniform float uExposureGain;
            uniform int uHncsCameraDomainEnabled;
            uniform vec3 uHncsCameraDomainGain;
            uniform float uHncsInputEV;
            uniform float uHncsHrTrunc;
            uniform float uHncsHrMax;
            uniform int uClampProfileRgb;
            uniform int uHueSatSupportOverrange;
            uniform int uLinearDcpHueSatEnabled;
            uniform ivec3 uLinearDcpHueSatDivisions;
            uniform int uLinearDcpHueSatEncoding;
            uniform vec4 uTextureBounds;
            uniform vec2 uAreaSampleFootprint;
            uniform int uUseAreaSampleMaximum;
            uniform int uTextureRotation;

            ${DcpHueSatMapGl.SHADER_FUNCTIONS}

            vec3 sampleCameraRgb(vec2 center) {
                if (max(uAreaSampleFootprint.x, uAreaSampleFootprint.y) <= 0.0) {
                    return texture(uDemosaickedTexture, center).rgb;
                }

                // MGC constructs the ML-AE RGB surface with an area-kernel resample. Integrate
                // every source texel overlapped by this destination pixel; a fixed sparse grid
                // changes highlight coverage and therefore changes the learned long/short TETs.
                ivec2 sourceSize = textureSize(uDemosaickedTexture, 0);
                vec2 sourceSizeF = vec2(sourceSize);
                vec2 halfFootprint = 0.5 * uAreaSampleFootprint;
                vec2 sourceMin = clamp(
                    (center - halfFootprint) * sourceSizeF,
                    vec2(0.0),
                    sourceSizeF
                );
                vec2 sourceMax = clamp(
                    (center + halfFootprint) * sourceSizeF,
                    vec2(0.0),
                    sourceSizeF
                );
                if (sourceMax.x <= sourceMin.x || sourceMax.y <= sourceMin.y) {
                    return texture(uDemosaickedTexture, center).rgb;
                }

                ivec2 firstTexel = clamp(
                    ivec2(floor(sourceMin)),
                    ivec2(0),
                    sourceSize - ivec2(1)
                );
                ivec2 lastTexel = clamp(
                    ivec2(ceil(sourceMax)) - ivec2(1),
                    ivec2(0),
                    sourceSize - ivec2(1)
                );
                vec3 aggregate = uUseAreaSampleMaximum != 0
                    ? vec3(-65504.0)
                    : vec3(0.0);
                float totalWeight = 0.0;
                for (int sourceY = firstTexel.y; sourceY <= lastTexel.y; ++sourceY) {
                    float weightY = max(
                        0.0,
                        min(sourceMax.y, float(sourceY + 1)) -
                            max(sourceMin.y, float(sourceY))
                    );
                    for (int sourceX = firstTexel.x; sourceX <= lastTexel.x; ++sourceX) {
                        float weightX = max(
                            0.0,
                            min(sourceMax.x, float(sourceX + 1)) -
                                max(sourceMin.x, float(sourceX))
                        );
                        float sampleWeight = weightX * weightY;
                        vec3 sampleValue = texelFetch(
                            uDemosaickedTexture,
                            ivec2(sourceX, sourceY),
                            0
                        ).rgb;
                        aggregate = uUseAreaSampleMaximum != 0
                            ? max(aggregate, sampleValue)
                            : aggregate + sampleValue * sampleWeight;
                        totalWeight += sampleWeight;
                    }
                }
                return uUseAreaSampleMaximum != 0
                    ? aggregate
                    : aggregate / max(totalWeight, 1e-12);
            }

            void main() {
                // Memory row zero is the image top throughout RAW readback and Android Bitmap.
                // This inverse mapping applies a clockwise output rotation in that shared space.
                vec2 orientedCoord = vTexCoord;
                if (uTextureRotation == 90) {
                    orientedCoord = vec2(vTexCoord.y, 1.0 - vTexCoord.x);
                } else if (uTextureRotation == 180) {
                    orientedCoord = vec2(1.0) - vTexCoord;
                } else if (uTextureRotation == 270) {
                    orientedCoord = vec2(1.0 - vTexCoord.y, vTexCoord.x);
                }
                vec2 sourceCoord = mix(uTextureBounds.xy, uTextureBounds.zw, orientedCoord);
                vec3 rgb = sampleCameraRgb(sourceCoord);
                if (uHncsCameraDomainEnabled != 0) {
                    rgb *= uHncsCameraDomainGain;
                    rgb /= uHncsHrTrunc;
                    rgb = clamp(rgb, vec3(0.0), vec3(uHncsHrMax));
                    rgb *= uHncsInputEV;
                }
                if (uClampProfileRgb != 0) {
                    rgb = min(rgb, max(uCameraWhite, vec3(0.001)));
                }
                rgb = uColorCorrectionMatrix * rgb;
                if (uClampProfileRgb != 0) {
                    rgb = clamp(rgb, vec3(0.0), vec3(1.0));
                }
                if (uLinearDcpHueSatEnabled != 0) {
                    rgb = dngApplyHueSatMap(
                        rgb,
                        uLinearDcpHueSatMap,
                        uLinearDcpHueSatDivisions,
                        uLinearDcpHueSatEncoding,
                        uHueSatSupportOverrange != 0
                    );
                }
                rgb *= uExposureGain;
                fragColor = vec4(rgb, 1.0);
            }
        """.trimIndent()
    }
}
