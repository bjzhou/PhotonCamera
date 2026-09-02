package com.hinnka.mycamera.raw

import com.hinnka.mycamera.lut.ShadowsHighlightsShader

/** Selects a rendering engine and composes its shader with the shared tone pipeline. */
internal class RawEngineTonePass(
    private val quad: RawFullscreenQuad,
    private val dcpTextures: DcpTextureResources,
    private val curveTextures: RawCurveTextureResources,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val colorEngine: RawRenderingEngine,
        val profileToEngineTransform: FloatArray,
        val outputTransform: FloatArray,
        val globalOriginX: Int,
        val globalOriginY: Int,
        val fullImageWidth: Int,
        val fullImageHeight: Int,
        val width: Int,
        val height: Int,
        /** Full-image pixel span represented by this possibly downsampled input texture. */
        val globalWidth: Int = width,
        val globalHeight: Int = height,
        val toneMappingParameters: RawToneMappingParameters,
        val profileExposure: RawProfileExposureGl.Uniforms,
        val dcpRenderPlan: DcpRenderPlan?,
        val applyDcpHueSatMap: Boolean,
        val spectralFilmLut: SpectralFilmLut?,
        val hncsRenderPlan: HncsRenderPlan?,
        val bindProfileGainTable: (program: Int) -> Unit,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    /** Raw profile-domain source used when the main HDR input is already prepared engine RGB. */
    data class HdrCoordinateInput(
        val textureId: Int,
        val profileToEngineTransform: FloatArray,
        val profileExposureLinearGain: Float,
    )

    private val adobeCurveAlgorithm = AdobeCurveToneAlgorithm(quad, dcpTextures, curveTextures)
    private val agxAlgorithm = AgXToneAlgorithm(quad)
    private val spektrafilmAlgorithm = SpektrafilmToneAlgorithm(quad)
    private val darktableSigmoidAlgorithm = DarktableSigmoidToneAlgorithm(quad)
    private val darktableFilmicAlgorithm = DarktableFilmicToneAlgorithm(quad)
    private val hncsAlgorithm = HncsToneAlgorithm(quad)

    fun render(input: Input): Output? = algorithmFor(input.colorEngine).render(input)

    fun renderHdrReference(
        input: Input,
        sdrLinearTextureId: Int,
        coordinateInput: HdrCoordinateInput?,
    ): Output? = algorithmFor(input.colorEngine).renderHdrReference(
        input = input,
        sdrLinearTextureId = sdrLinearTextureId,
        coordinateInput = coordinateInput,
    )

    fun release() {
        adobeCurveAlgorithm.release()
        agxAlgorithm.release()
        spektrafilmAlgorithm.release()
        darktableSigmoidAlgorithm.release()
        darktableFilmicAlgorithm.release()
        hncsAlgorithm.release()
        dcpTextures.release()
        curveTextures.release()
    }

    private fun algorithmFor(colorEngine: RawRenderingEngine): RawRenderingEngineToneAlgorithm {
        return when (colorEngine) {
            RawRenderingEngine.AdobeCurve -> adobeCurveAlgorithm
            RawRenderingEngine.AgX -> agxAlgorithm
            RawRenderingEngine.Spektrafilm -> spektrafilmAlgorithm
            RawRenderingEngine.DarktableSigmoid -> darktableSigmoidAlgorithm
            RawRenderingEngine.DarktableFilmic -> darktableFilmicAlgorithm
            RawRenderingEngine.HncsCcm,
            RawRenderingEngine.HncsLut -> hncsAlgorithm
        }
    }

    companion object {
        fun fragmentShaderFor(colorEngine: RawRenderingEngine): String {
            return fragmentShader(shaderDefinitionFor(colorEngine))
        }

        fun hdrReferenceFragmentShaderFor(colorEngine: RawRenderingEngine): String {
            return hdrReferenceFragmentShader(
                shaderDefinition = shaderDefinitionFor(colorEngine),
            )
        }

        fun hdrBaseCurveFragmentShaderFor(colorEngine: RawRenderingEngine): String {
            return hdrBaseCurveFragmentShader(
                shaderDefinition = shaderDefinitionFor(colorEngine),
                isHncs = colorEngine.isHncs,
            )
        }

        internal fun fragmentShader(shaderDefinition: RawEngineToneShaderDefinition): String {
            val source = combinedFragmentShader(shaderDefinition, includeShadowsHighlights = false)
            val cutoff = source.indexOf("const vec3 BW_LUMA")
                .takeIf { it >= 0 }
                ?: source.indexOf("void main()").takeIf { it >= 0 }
                ?: error("Unable to find combined shader adjustment section")

            return source.substring(0, cutoff) + """

            ${DngProfileGainTableRenderShader.GLSL}

            void main() {
                vec3 profileColor = texture(uInputTexture, vTexCoord).rgb;
                profileColor = applyProfileGainTableMap(profileColor);
                vec3 exposedProfileColor = prepareProfileGainInput(profileColor);
                vec3 color = uProfileToEngineTransform * exposedProfileColor;
                color = applyEngineTone(color);
                fragColor = vec4(color, 1.0);
            }
            """.trimIndent()
        }

        internal fun hdrReferenceFragmentShader(
            shaderDefinition: RawEngineToneShaderDefinition,
        ): String {
            val source = combinedFragmentShader(shaderDefinition, includeShadowsHighlights = false)
            val cutoff = source.indexOf("const vec3 BW_LUMA")
                .takeIf { it >= 0 }
                ?: source.indexOf("void main()").takeIf { it >= 0 }
                ?: error("Unable to find combined shader adjustment section")
            return source.substring(0, cutoff) + """

            ${DngProfileGainTableRenderShader.GLSL}

            uniform sampler2D uHdrSdrLinearTexture;
            uniform sampler2D uHdrBaseCurveTexture;
            uniform sampler2D uHdrCoordinateTexture;
            uniform int uHdrInputIsPreparedEngineRgb;
            uniform mat3 uHdrCoordinateProfileToEngineTransform;
            uniform float uHdrCoordinateExposureGain;
            uniform float uHdrCurveJoinInput;
            uniform float uHdrCurveJoinOutput;
            uniform float uHdrCurveJoinSlope;
            uniform float uHdrCurveQuadratic;
            uniform float uHdrCurveWhiteOutput;
            uniform float uHdrCurveWhiteSlope;

            const float HDR_SCENE_WHITE = 1.0;
            const float HDR_EPSILON = 0.000001;
            const float HDR_BASE_CURVE_SIZE = ${RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT}.0;
            const float HDR_PGTM_LINEAR_START =
                ${RawHdrReferenceMath.PGTM_LINEAR_EXTENSION_START};

            float sampleHdrBaseCurve(float inputValue) {
                float normalized = clamp(inputValue, 0.0, HDR_SCENE_WHITE);
                float coordinate = normalized *
                    ((HDR_BASE_CURVE_SIZE - 1.0) / HDR_BASE_CURVE_SIZE) +
                    (0.5 / HDR_BASE_CURVE_SIZE);
                return texture(
                    uHdrBaseCurveTexture,
                    vec2(coordinate, 0.5)
                ).r;
            }

            float applyHdrExtendedCurve(float inputValue) {
                float value = max(inputValue, 0.0);
                if (value <= uHdrCurveJoinInput) {
                    return sampleHdrBaseCurve(value);
                }
                if (value <= HDR_SCENE_WHITE) {
                    float distance = value - uHdrCurveJoinInput;
                    return uHdrCurveJoinOutput + uHdrCurveJoinSlope * distance +
                        uHdrCurveQuadratic * distance * distance;
                }
                return uHdrCurveWhiteOutput +
                    uHdrCurveWhiteSlope * (value - HDR_SCENE_WHITE);
            }

            void main() {
                vec3 profileColor = texture(uInputTexture, vTexCoord).rgb;
                vec3 sdrEngineColor;
                vec3 hdrEngineColor;
                if (uHdrInputIsPreparedEngineRgb != 0) {
                    // Filmic highlight reconstruction has already baked PGTM, exposure and the
                    // profile transform into the main input. Rebuild only the HDR coordinate
                    // from its raw profile-domain source so PGTM can be extended exactly once.
                    sdrEngineColor = prepareEngineInput(profileColor);
                    vec3 coordinateProfileColor = texture(uHdrCoordinateTexture, vTexCoord).rgb;
                    coordinateProfileColor = applyProfileGainTableMapWithLinearHighlights(
                        coordinateProfileColor,
                        HDR_PGTM_LINEAR_START
                    );
                    hdrEngineColor = uHdrCoordinateProfileToEngineTransform *
                        (coordinateProfileColor * uHdrCoordinateExposureGain);
                } else {
                    sdrEngineColor = prepareEngineInput(applyProfileGainTableMap(profileColor));
                    hdrEngineColor = prepareEngineInput(
                        applyProfileGainTableMapWithLinearHighlights(
                            profileColor,
                            HDR_PGTM_LINEAR_START
                        )
                    );
                }
                vec3 sdrLinear = max(texture(uHdrSdrLinearTexture, vTexCoord).rgb, vec3(0.0));
                float sdrToneInput = max(
                    max(sdrEngineColor.r, sdrEngineColor.g),
                    sdrEngineColor.b
                );
                float hdrToneInput = max(
                    max(hdrEngineColor.r, hdrEngineColor.g),
                    hdrEngineColor.b
                );
                float baseCurveOutput = max(sampleHdrBaseCurve(sdrToneInput), HDR_EPSILON);
                // The exact SDR is still the color base. This scalar only replaces PGTM's
                // highlight shoulder and the engine shoulder; it can never reduce SDR output.
                float extendedCurveOutput = max(
                    applyHdrExtendedCurve(hdrToneInput),
                    baseCurveOutput
                );
                float gain = extendedCurveOutput / baseCurveOutput;
                fragColor = vec4(sdrLinear * gain, 1.0);
            }
            """.trimIndent()
        }

        internal fun hdrBaseCurveFragmentShader(
            shaderDefinition: RawEngineToneShaderDefinition,
            isHncs: Boolean,
        ): String {
            val source = combinedFragmentShader(shaderDefinition, includeShadowsHighlights = false)
            val cutoff = source.indexOf("const vec3 BW_LUMA")
                .takeIf { it >= 0 }
                ?: source.indexOf("void main()").takeIf { it >= 0 }
                ?: error("Unable to find combined shader adjustment section")
            val engineOutputToLinearSrgb = if (isHncs) {
                "uHdrEngineToLinearSrgb * pow(max(engineOutput, vec3(0.0)), vec3(2.2))"
            } else {
                "engineOutput"
            }

            return source.substring(0, cutoff) + """

            uniform mat3 uHdrEngineToLinearSrgb;
            uniform float uHdrBaseCurveSampleCount;

            const vec3 HDR_LUMA = vec3(0.2126, 0.7152, 0.0722);

            vec3 hdrEngineOutputToLinearSrgb(vec3 engineOutput) {
                return $engineOutputToLinearSrgb;
            }

            void main() {
                float sampleIndex = floor(gl_FragCoord.x);
                float inputValue = sampleIndex / max(uHdrBaseCurveSampleCount - 1.0, 1.0);
                vec3 engineOutput = applyEngineTone(vec3(inputValue));
                vec3 linearSrgb = hdrEngineOutputToLinearSrgb(engineOutput);
                float response = max(dot(linearSrgb, HDR_LUMA), 0.0);
                fragColor = vec4(response, 0.0, 0.0, 1.0);
            }
            """.trimIndent()
        }

        fun combinedFragmentShaderFor(
            colorEngine: RawRenderingEngine,
            includeShadowsHighlights: Boolean = true,
        ): String {
            return combinedFragmentShader(
                shaderDefinition = shaderDefinitionFor(colorEngine),
                includeShadowsHighlights = includeShadowsHighlights,
            )
        }

        private fun shaderDefinitionFor(
            colorEngine: RawRenderingEngine,
        ): RawEngineToneShaderDefinition {
            return when (colorEngine) {
                RawRenderingEngine.AdobeCurve -> AdobeCurveToneShader.DEFINITION
                RawRenderingEngine.AgX -> AgXToneShader.DEFINITION
                RawRenderingEngine.Spektrafilm -> SpektrafilmToneShader.DEFINITION
                RawRenderingEngine.DarktableSigmoid -> DarktableSigmoidToneShader.DEFINITION
                RawRenderingEngine.DarktableFilmic -> DarktableFilmicToneShader.DEFINITION
                RawRenderingEngine.HncsCcm,
                RawRenderingEngine.HncsLut -> HncsToneShader.DEFINITION
            }
        }

        private fun combinedFragmentShader(
            shaderDefinition: RawEngineToneShaderDefinition,
            includeShadowsHighlights: Boolean,
        ): String {
            val shadowsHighlightsUniforms = if (includeShadowsHighlights) {
                """
        uniform vec2 uTexelSize;
        uniform float uHighlights;
        uniform float uShadows;
                """.trimIndent()
            } else {
                ""
            }
            val shadowsHighlightsFunctions = if (includeShadowsHighlights) {
                """
        vec3 sampleToneSource(vec2 uv) {
            vec3 sampleColor = texture(uInputTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb;
            return applyEngineTone(prepareEngineInput(sampleColor));
        }

        vec3 shRgbToXyz(vec3 rgb) {
            return mat3(
                0.4360747, 0.2225045, 0.0139322,
                0.3850649, 0.7168786, 0.0971045,
                0.1430804, 0.0606169, 0.7141733
            ) * rgb;
        }

        vec3 shXyzToRgb(vec3 xyz) {
            return mat3(
                 3.1338561, -0.9787684,  0.0719453,
                -1.6168667,  1.9161415, -0.2289914,
                -0.4906146,  0.0334540,  1.4052427
            ) * xyz;
        }

        ${ShadowsHighlightsShader.GLSL}
                """.trimIndent()
            } else {
                ""
            }
            val shadowsHighlightsApply = if (includeShadowsHighlights) {
                "color = applyShadowsHighlights(color, vTexCoord);"
            } else {
                ""
            }
            val prepareEngineInputFunction = if (shaderDefinition.includeAdobeProfilePipeline) {
                """
        vec3 prepareProfileGainInput(vec3 color) {
            return applyAdobeProfilePipeline(color);
        }

        vec3 prepareEngineInput(vec3 color) {
            return uProfileToEngineTransform * prepareProfileGainInput(color);
        }
                """.trimIndent()
            } else {
                """
        vec3 prepareProfileGainInput(vec3 color) {
            return color * uProfileExposureLinearGain;
        }

        vec3 prepareEngineInput(vec3 color) {
            return uProfileToEngineTransform * prepareProfileGainInput(color);
        }
                """.trimIndent()
            }
            val sampler3DPrecision = if (
                shaderDefinition.includeAdobeProfilePipeline ||
                shaderDefinition.engineUniforms.contains("sampler3D")
            ) {
                "precision highp sampler3D;"
            } else {
                ""
            }
            return """
        #version 300 es
        precision highp float;
        precision highp int;
        $sampler3DPrecision

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform float uBlacks;
        uniform float uWhites;
        $shadowsHighlightsUniforms
        uniform mat3 uProfileToEngineTransform;

        ${shaderDefinition.engineUniforms}
        ${shaderDefinition.profileUniforms}

        vec3 linearToSrgb(vec3 color) {
            vec3 clampedColor = max(color, vec3(0.0));
            vec3 low = clampedColor * 12.92;
            vec3 high = 1.055 * pow(clampedColor, vec3(1.0 / 2.4)) - 0.055;
            bvec3 useHigh = greaterThan(clampedColor, vec3(0.0031308));
            return vec3(
                useHigh.r ? high.r : low.r,
                useHigh.g ? high.g : low.g,
                useHigh.b ? high.b : low.b
            );
        }

        ${shaderDefinition.profileFunctions}
        ${shaderDefinition.engineFunctions}

        $prepareEngineInputFunction

        $shadowsHighlightsFunctions

        const vec3 BW_LUMA = vec3(0.2126, 0.7152, 0.0722);
        const float BW_EPSILON = 0.000001;

        float blackInputLevel(float blacks) {
            float value = clamp(blacks, -1.0, 1.0);
            return value < 0.0 ? -value * 0.18 : -value * 0.12;
        }

        float whiteInputLevel(float whites) {
            float value = clamp(whites, -1.0, 1.0);
            return value > 0.0 ? mix(1.0, 0.72, value) : mix(1.0, 1.55, -value);
        }

        float applyInputLevelsToLuma(float luma, float blacks, float whites) {
            float blackLevel = blackInputLevel(blacks);
            float whiteLevel = max(whiteInputLevel(whites), blackLevel + 0.05);
            return max((luma - blackLevel) / max(whiteLevel - blackLevel, BW_EPSILON), 0.0);
        }

        vec3 applyBlackWhiteLevels(vec3 color) {
            float blacks = clamp(uBlacks, -1.0, 1.0);
            float whites = clamp(uWhites, -1.0, 1.0);
            if (abs(blacks) < 0.001 && abs(whites) < 0.001) {
                return color;
            }

            vec3 positiveColor = max(color, vec3(0.0));
            float luma = dot(positiveColor, BW_LUMA);
            float adjustedLuma = applyInputLevelsToLuma(luma, blacks, whites);

            if (luma <= BW_EPSILON) {
                return vec3(adjustedLuma);
            }
            return color * (adjustedLuma / luma);
        }

        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            color = prepareEngineInput(color);
            color = applyEngineTone(color);
            $shadowsHighlightsApply
            color = applyBlackWhiteLevels(color);
            // Engine tone and adjustment passes have a linear-RGB output contract.
            // RawSrgbPass performs the single display encoding after all
            // linear-domain adjustments are complete.
            fragColor = vec4(color, 1.0);
        }
            """.trimIndent()
        }

        internal val RAW_TONE_MAPPING_COMBINED_UNIFORMS = """
        uniform float uAgxBlackRelativeExposure;
        uniform float uAgxWhiteRelativeExposure;
        uniform float uAgxToe;
        uniform float uAgxShoulder;
        uniform float uFilmicBlackRelativeExposure;
        uniform float uFilmicWhiteRelativeExposure;
        uniform float uFilmicDynamicRange;
        uniform float uFilmicInputMin;
        uniform float uFilmicInputMax;
        uniform float uFilmicLatitudeMin;
        uniform float uFilmicLatitudeMax;
        uniform vec3 uFilmicM1;
        uniform vec3 uFilmicM2;
        uniform vec3 uFilmicM3;
        uniform vec3 uFilmicM4;
        uniform vec3 uFilmicM5;
        """.trimIndent()

        internal val OUTPUT_TRANSFORM_COMBINED_UNIFORMS = """
        uniform mat3 uOutputTransform;
        $RAW_TONE_MAPPING_COMBINED_UNIFORMS
        """.trimIndent()

        internal val PROFILE_EXPOSURE_COMBINED_UNIFORMS = """
        uniform float uProfileExposureLinearGain;
        """.trimIndent()
    }
}
