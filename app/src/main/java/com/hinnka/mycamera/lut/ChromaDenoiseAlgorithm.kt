package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.Matrix
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.utils.PLog

/**
 * Shared multi-scale edge-guided chroma denoise shader.
 *
 * RAW input is filtered in linear camera RGB opponent space before white
 * balance and color conversion. Bitmap input retains its luma/chroma transform.
 * Both paths use a prefiltered luminance guide. RAW luminance is the symmetric
 * camera-RGB mean; bitmap luminance retains its display-space coefficients.
 */
object ChromaDenoiseShaders {
    val PASS_EDGE_GUIDE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform int uCameraRgbInput;

        float guideSignal(vec3 rgb) {
            if (uCameraRgbInput != 0) {
                return (rgb.r + rgb.g + rgb.b) / 3.0;
            }
            return dot(rgb, vec3(0.2126, 0.7152, 0.0722));
        }

        float guideAt(vec2 coord) {
            return guideSignal(texture(uInputTexture, coord).rgb);
        }

        void main() {
            float guide = guideAt(vTexCoord) * 0.5;
            guide += guideAt(vTexCoord + vec2( uTexelSize.x, 0.0)) * 0.125;
            guide += guideAt(vTexCoord + vec2(-uTexelSize.x, 0.0)) * 0.125;
            guide += guideAt(vTexCoord + vec2(0.0,  uTexelSize.y)) * 0.125;
            guide += guideAt(vTexCoord + vec2(0.0, -uTexelSize.y)) * 0.125;
            fragColor = vec4(guide, 0.0, 0.0, 1.0);
        }
    """.trimIndent()

    val PASS_CHROMA_DENOISE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform sampler2D uGuideTexture;
        uniform vec2 uTexelSize;
        uniform float uH;
        uniform float uOutputStrength;
        uniform float uEdgeGuidanceRelaxation;
        uniform int uCameraRgbInput;
        // Camera-domain variance models. RB order is
        // [red slope, red offset, blue slope, blue offset].
        uniform vec4 uNoiseModelRB;
        // [green slope, green offset].
        uniform vec2 uNoiseModelG;

        vec3 rgb2ycbcr(vec3 rgb) {
            float y = dot(rgb, vec3(0.2126, 0.7152, 0.0722));
            return vec3(y,
                        dot(rgb, vec3(-0.114572, -0.385428,  0.5     )),
                        dot(rgb, vec3( 0.5,      -0.454153, -0.045847)));
        }
        vec3 ycbcr2rgb(vec3 yuv) {
            return vec3(yuv.x + 1.5748   * yuv.z,
                        yuv.x - 0.187324 * yuv.y - 0.468124 * yuv.z,
                        yuv.x + 1.8556   * yuv.y);
        }

        vec3 channelNoiseVariance(vec3 rgb) {
            return max(
                vec3(
                    uNoiseModelRB.x * max(rgb.r, 0.0) + uNoiseModelRB.y,
                    uNoiseModelG.x * max(rgb.g, 0.0) + uNoiseModelG.y,
                    uNoiseModelRB.z * max(rgb.b, 0.0) + uNoiseModelRB.w
                ),
                vec3(1e-10)
            );
        }

        vec3 rgbToFilterSpace(vec3 rgb) {
            if (uCameraRgbInput != 0) {
                // Keep every sample in one linear camera-RGB coordinate system.
                // Exposure invariance is restored after each weighted mean, not
                // by averaging unstable per-pixel ratios in the shadows.
                return vec3(
                    (rgb.r + rgb.g + rgb.b) / 3.0,
                    rgb.r - rgb.g,
                    rgb.b - rgb.g
                );
            }
            return rgb2ycbcr(rgb);
        }

        vec3 filterSpaceToRgb(vec3 value) {
            if (uCameraRgbInput != 0) {
                // value.x is the symmetric camera-RGB mean, not green. Recover
                // the three channels from mean, R-G and B-G without giving any
                // channel a privileged luminance role.
                float green = value.x - (value.y + value.z) / 3.0;
                return max(
                    vec3(
                        green + value.y,
                        green,
                        green + value.z
                    ),
                    vec3(0.0)
                );
            }
            return ycbcr2rgb(value);
        }

        vec2 chromaNoiseSigma(vec3 rgb) {
            vec3 variance = channelNoiseVariance(rgb);
            if (uCameraRgbInput != 0) {
                // Var(R-G) = Var(R) + Var(G), likewise for B-G.
                return sqrt(max(variance.rb + variance.gg, vec2(1e-10)));
            }
            const vec3 cb = vec3(-0.114572, -0.385428, 0.5);
            const vec3 cr = vec3(0.5, -0.454153, -0.045847);
            return sqrt(max(
                vec2(dot(cb * cb, variance), dot(cr * cr, variance)),
                vec2(1e-10)
            ));
        }

        float guideNoiseSigma(vec3 rgb) {
            vec3 variance = channelNoiseVariance(rgb);
            if (uCameraRgbInput != 0) {
                return sqrt(max((variance.r + variance.g + variance.b) / 9.0, 1e-10));
            }
            const vec3 luma = vec3(0.2126, 0.7152, 0.0722);
            return sqrt(max(dot(luma * luma, variance), 1e-10));
        }

        void filterScale(
            float radius,
            float centerGuide,
            float centerSignal,
            vec2 baseChroma,
            vec2 chromaGuide,
            float invGuideH2,
            vec2 invChromaH2,
            out vec2 filteredChroma,
            out float edgeSupport
        ) {
            // The center estimate anchors each wider scale and prevents a sparse
            // coarse neighborhood from replacing a small valid color feature.
            vec2 sumChroma = baseChroma;
            float sumSignal = centerSignal;
            float sumWeight = 1.0;
            float acceptedLumaSupport = 0.0;
            float totalSupport = 0.0;

            for (int x = -1; x <= 1; x++) {
                for (int y = -1; y <= 1; y++) {
                    if (x == 0 && y == 0) continue;

                    vec2 gridOffset = vec2(float(x), float(y));
                    float distance2 = dot(gridOffset, gridOffset);
                    float spatialWeight = exp(-0.72 * distance2);
                    vec2 offset = gridOffset * uTexelSize * radius;
                    vec2 sampleCoord = vTexCoord + offset;
                    vec3 sampleValue = rgbToFilterSpace(
                        texture(uInputTexture, sampleCoord).rgb
                    );

                    float guideDelta =
                        texture(uGuideTexture, sampleCoord).r - centerGuide;
                    float guideWeight =
                        exp(-(guideDelta * guideDelta) * invGuideH2);
                    vec2 chromaDelta = sampleValue.yz - chromaGuide;
                    float chromaDistance =
                        dot(chromaDelta * chromaDelta, invChromaH2);
                    float chromaWeight = exp(-chromaDistance);
                    float weight = spatialWeight * guideWeight * chromaWeight;

                    sumChroma += sampleValue.yz * weight;
                    sumSignal += sampleValue.x * weight;
                    sumWeight += weight;
                    acceptedLumaSupport += spatialWeight * guideWeight;
                    totalSupport += spatialWeight;
                }
            }

            vec2 averageChroma = sumChroma / max(sumWeight, 1e-6);
            if (uCameraRgbInput != 0) {
                // averageChroma is the opponent component of the weighted RGB
                // mean. Scale that mean back to the center RGB mean so exposure
                // differences in sparse/coarse samples cannot turn into color.
                // This ratio-of-means is stable in shadows and exactly preserves
                // a constant camera chromaticity across an exposure gradient.
                float averageSignal = sumSignal / max(sumWeight, 1e-6);
                float signalScale = centerSignal / max(averageSignal, 1e-6);
                filteredChroma = averageChroma * signalScale;
            } else {
                filteredChroma = averageChroma;
            }
            // Support reflects the shared luminance guide in both input domains.
            edgeSupport = acceptedLumaSupport / max(totalSupport, 1e-6);
        }

        float featheredEdgeSupport(float support, float exponent) {
            return pow(clamp(support, 0.0, 1.0), exponent);
        }

        void main() {
            vec4 source = texture(uInputTexture, vTexCoord);
            if (uH <= 0.00001) {
                fragColor = source;
                return;
            }

            vec3 centerValue = rgbToFilterSpace(source.rgb);
            vec2 noiseSigma = chromaNoiseSigma(source.rgb);

            float centerGuide = texture(uGuideTexture, vTexCoord).r;
            float guideSigma = guideNoiseSigma(source.rgb);
            float guideBandwidthScale =
                mix(1.0, 4.0, uEdgeGuidanceRelaxation);
            float guideH =
                guideSigma * 4.0 * guideBandwidthScale;
            float invGuideH2 = 1.0 / max(guideH * guideH, 1e-8);
            // Denoise strength may relax the range threshold slightly, but every
            // spatial scale shares the same bounded color-edge bandwidth. Large
            // radii must never gain permission to cross a red/blue boundary.
            float strengthT = clamp((uH - 1.0) / 7.0, 0.0, 1.0);
            float chromaEdgeSigmaMultiplier = mix(2.75, 3.5, strengthT);
            vec2 chromaEdgeH =
                max(noiseSigma * chromaEdgeSigmaMultiplier, vec2(1e-5));
            vec2 invChromaEdgeH2 =
                1.0 / max(chromaEdgeH * chromaEdgeH, vec2(1e-8));

            vec2 fineCandidate;
            float fineSupport;
            // Radius one directly covers the one-to-two-pixel sensor grain that
            // was skipped by the previous sparse fine scale.
            filterScale(
                1.0,
                centerGuide,
                centerValue.x,
                centerValue.yz,
                centerValue.yz,
                invGuideH2,
                invChromaEdgeH2,
                fineCandidate,
                fineSupport
            );
            vec2 fineChroma =
                mix(centerValue.yz, fineCandidate, uOutputStrength);

            vec2 mediumCandidate;
            float mediumSupport;
            filterScale(
                4.0,
                centerGuide,
                centerValue.x,
                fineChroma,
                fineChroma,
                invGuideH2,
                invChromaEdgeH2,
                mediumCandidate,
                mediumSupport
            );
            float mediumMix =
                uOutputStrength * featheredEdgeSupport(mediumSupport, 1.5);
            vec2 mediumChroma = mix(fineChroma, mediumCandidate, mediumMix);

            vec2 coarseCandidate;
            float coarseSupport;
            filterScale(
                14.0,
                centerGuide,
                centerValue.x,
                mediumChroma,
                mediumChroma,
                invGuideH2,
                invChromaEdgeH2,
                coarseCandidate,
                coarseSupport
            );
            float coarseMix =
                uOutputStrength * featheredEdgeSupport(coarseSupport, 2.0);
            vec2 coarseChroma = mix(mediumChroma, coarseCandidate, coarseMix);

            centerValue.yz = coarseChroma;
            fragColor = vec4(filterSpaceToRgb(centerValue), source.a);
        }
    """.trimIndent()
}

/** Complete edge-guide + chroma-filter algorithm shared by RAW and bitmap pipelines. */
internal class ChromaDenoiseAlgorithm(
    private val quad: RawFullscreenQuad,
) {
    data class NoiseModel(
        val redSlope: Float,
        val redOffset: Float,
        val greenSlope: Float,
        val greenOffset: Float,
        val blueSlope: Float,
        val blueOffset: Float,
    )

    data class Input(
        val sourceTextureId: Int,
        val guideFramebufferId: Int,
        val guideTextureId: Int,
        val outputFramebufferId: Int,
        val outputTextureId: Int,
        val width: Int,
        val height: Int,
        val strength: Float,
        val cameraRgbInput: Boolean,
        val noiseModel: NoiseModel,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var guideProgram = 0
    private var filterProgram = 0

    fun initialize(): Boolean {
        if (guideProgram == 0) {
            guideProgram = quad.createProgram(
                ChromaDenoiseShaders.PASS_EDGE_GUIDE,
                "ChromaDenoiseEdgeGuide",
            )
        }
        if (filterProgram == 0) {
            filterProgram = quad.createProgram(
                ChromaDenoiseShaders.PASS_CHROMA_DENOISE,
                "ChromaDenoiseFilter",
            )
        }
        return guideProgram != 0 && filterProgram != 0
    }

    fun execute(input: Input): Output? {
        if (!initialize()) return null
        require(input.width > 0 && input.height > 0)
        renderGuide(input)
        renderFilter(input)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        RawGlesProgram.logErrors("ChromaDenoiseAlgorithm")
        PLog.d(
            TAG,
            "complete: size=${input.width}x${input.height} strength=${input.strength} " +
                "cameraRgb=${input.cameraRgbInput}",
        )
        return Output(input.outputTextureId, input.width, input.height)
    }

    fun release() {
        if (guideProgram != 0) GLES30.glDeleteProgram(guideProgram)
        if (filterProgram != 0) GLES30.glDeleteProgram(filterProgram)
        guideProgram = 0
        filterProgram = 0
    }

    private fun renderGuide(input: Input) {
        GLES30.glUseProgram(guideProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.guideFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        bindTexture(guideProgram, "uInputTexture", 0, input.sourceTextureId)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(guideProgram, "uTexelSize"),
            1f / input.width,
            1f / input.height,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(guideProgram, "uCameraRgbInput"),
            if (input.cameraRgbInput) 1 else 0,
        )
        bindIdentityTextureMatrix(guideProgram)
        quad.draw(guideProgram)
    }

    private fun renderFilter(input: Input) {
        GLES30.glUseProgram(filterProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.outputFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        bindTexture(filterProgram, "uInputTexture", 0, input.sourceTextureId)
        bindTexture(filterProgram, "uGuideTexture", 1, input.guideTextureId)
        bindIdentityTextureMatrix(filterProgram)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(filterProgram, "uTexelSize"),
            1f / input.width,
            1f / input.height,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(filterProgram, "uOutputStrength"),
            ChromaDenoiseDefaults.outputStrength(input.strength),
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(filterProgram, "uEdgeGuidanceRelaxation"),
            ChromaDenoiseDefaults.edgeGuidanceRelaxation(input.strength),
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(filterProgram, "uCameraRgbInput"),
            if (input.cameraRgbInput) 1 else 0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(filterProgram, "uH"),
            ChromaDenoiseDefaults.noiseBandwidth(input.strength),
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(filterProgram, "uNoiseModelRB"),
            input.noiseModel.redSlope,
            input.noiseModel.redOffset,
            input.noiseModel.blueSlope,
            input.noiseModel.blueOffset,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(filterProgram, "uNoiseModelG"),
            input.noiseModel.greenSlope,
            input.noiseModel.greenOffset,
        )
        quad.draw(filterProgram)
    }

    private fun bindTexture(program: Int, uniform: String, unit: Int, textureId: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, uniform), unit)
    }

    private fun bindIdentityTextureMatrix(program: Int) {
        val identity = FloatArray(16)
        Matrix.setIdentityM(identity, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(program, "uTexMatrix"),
            1,
            false,
            identity,
            0,
        )
    }

    private companion object {
        const val TAG = "ChromaDenoise"
    }
}
