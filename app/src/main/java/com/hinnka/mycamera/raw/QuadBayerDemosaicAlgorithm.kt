package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog

/**
 * Expanded Bayer 4x4/8x8 CFA demosaic shaders.
 *
 * The pipeline mirrors the RCD staging shape, but every CFA decision is based on
 * an expanded Bayer block instead of the normal x/y parity pattern.
 */
object QuadBayerShaders {
    private const val COMMON = """
        const int RED = 0;
        const int GREEN = 1;
        const int BLUE = 2;

        int baseBayerPattern(int cfaPattern) {
            if (cfaPattern >= 8) return cfaPattern - 8;
            if (cfaPattern >= 4) return cfaPattern - 4;
            return cfaPattern;
        }

        int expandedBayerBlockSize(int cfaPattern) {
            return (cfaPattern >= 8) ? 4 : 2;
        }

        int colorFromChannelIndex(int channelIndex) {
            if (channelIndex == 0) return RED;
            if (channelIndex == 3) return BLUE;
            return GREEN;
        }

        int getQuadChannelIndex(int cfaPattern, int col, int row) {
            int pattern = baseBayerPattern(cfaPattern);
            int blockSize = expandedBayerBlockSize(cfaPattern);
            int blockCol = (col / blockSize) & 1;
            int blockRow = (row / blockSize) & 1;

            if (pattern == 0) { // Quad RGGB
                if (blockRow == 0) return (blockCol == 0) ? 0 : 1;
                return (blockCol == 0) ? 2 : 3;
            } else if (pattern == 1) { // Quad GRBG
                if (blockRow == 0) return (blockCol == 0) ? 1 : 0;
                return (blockCol == 0) ? 3 : 2;
            } else if (pattern == 2) { // Quad GBRG
                if (blockRow == 0) return (blockCol == 0) ? 2 : 3;
                return (blockCol == 0) ? 0 : 1;
            } else { // Quad BGGR
                if (blockRow == 0) return (blockCol == 0) ? 3 : 2;
                return (blockCol == 0) ? 1 : 0;
            }
        }

        int getQuadColor(int cfaPattern, int col, int row) {
            return colorFromChannelIndex(getQuadChannelIndex(cfaPattern, col, row));
        }

        ivec2 clampCoord(ivec2 coord, ivec2 imageSize) {
            return clamp(coord, ivec2(0), imageSize - ivec2(1));
        }
    """

    val POPULATE = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 8, local_size_y = 8) in;

        layout (binding = 0) uniform highp usampler2D uRawTexture;
        layout (binding = 1) uniform highp sampler2D uLensShadingMap;

        layout(std430, binding = 0) buffer CFA_Buf  { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };

        uniform ivec2 uImageSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        // Calculation-only relative WB gains; WRITE_OUTPUT removes them again.
        uniform vec4 uWhiteBalanceGains;
        uniform float uHighlightClipThreshold;
        uniform float uHighlightCeiling;
        uniform bool uHighlightReconstructionEnabled;
        uniform bool uLensShadingEnabled;
        uniform bool uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid;
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;

        $COMMON

        int getLensShadingIndex(ivec2 coord) {
            int channelIndex = getQuadChannelIndex(uCfaPattern, coord.x, coord.y);
            if (uLensShadingUsesDngGrid || channelIndex == 0 || channelIndex == 3) {
                return channelIndex;
            }
            return ((coord.y & 1) == 0) ? 1 : 2;
        }

        float getLensShadingGain(ivec2 coord) {
            if (!uLensShadingEnabled) {
                return 1.0;
            }
            ivec2 globalCoord = coord + uGlobalOrigin;
            vec2 norm = (vec2(globalCoord) + vec2(0.5)) / vec2(uFullImageSize);
            vec2 uv = norm;
            if (uLensShadingUsesDngGrid) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                norm = (vec2(globalCoord) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 origin = uLensShadingGrid.xy;
                vec2 spacing = max(uLensShadingGrid.zw, vec2(1e-8));
                vec2 mapIndex = (norm - origin) / spacing;
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[getLensShadingIndex(coord)], 0.0);
        }

        float readSensorNormalized(ivec2 coord, int channelIndex) {
            ivec2 sampleCoord = clampCoord(coord, uImageSize);
            uint rawVal = texelFetch(uRawTexture, sampleCoord, 0).r;
            float bl = uBlackLevel[channelIndex];
            float wl = max(uWhiteLevel, bl + 1.0);
            return max(float(rawVal) - bl, 0.0) / max(wl - bl, 1.0);
        }

        float calculationSampleAt(ivec2 coord, int channelIndex) {
            ivec2 sampleCoord = clampCoord(coord, uImageSize);
            float sensor = readSensorNormalized(sampleCoord, channelIndex);
            float linear = sensor * getLensShadingGain(sampleCoord) *
                max(uWhiteBalanceGains[channelIndex], 1e-6);
            return min(max(linear, 0.0), uHighlightCeiling);
        }

        float estimateOpposedLinear(ivec2 coord, int color, float fallback) {
            float sumRed = 0.0;
            float sumGreen = 0.0;
            float sumBlue = 0.0;
            float countRed = 0.0;
            float countGreen = 0.0;
            float countBlue = 0.0;

            int radius = expandedBayerBlockSize(uCfaPattern);
            for (int dy = -4; dy <= 4; dy++) {
                if (abs(dy) > radius) continue;
                for (int dx = -4; dx <= 4; dx++) {
                    if (abs(dx) > radius) continue;
                    ivec2 sampleCoord = clampCoord(coord + ivec2(dx, dy), uImageSize);
                    int sampleChannel = getQuadChannelIndex(uCfaPattern, sampleCoord.x, sampleCoord.y);
                    int sampleColor = colorFromChannelIndex(sampleChannel);
                    float balanced = calculationSampleAt(sampleCoord, sampleChannel);

                    if (sampleColor == RED) {
                        sumRed += balanced;
                        countRed += 1.0;
                    } else if (sampleColor == GREEN) {
                        sumGreen += balanced;
                        countGreen += 1.0;
                    } else {
                        sumBlue += balanced;
                        countBlue += 1.0;
                    }
                }
            }

            const float power = 3.0;
            float rootRed = pow(max(sumRed / max(countRed, 1.0), 0.0), 1.0 / power);
            float rootGreen = pow(max(sumGreen / max(countGreen, 1.0), 0.0), 1.0 / power);
            float rootBlue = pow(max(sumBlue / max(countBlue, 1.0), 0.0), 1.0 / power);

            float opposedRoot;
            if (color == RED) {
                opposedRoot = 0.5 * (rootGreen + rootBlue);
            } else if (color == GREEN) {
                opposedRoot = 0.5 * (rootRed + rootBlue);
            } else {
                opposedRoot = 0.5 * (rootRed + rootGreen);
            }

            float reconstructed = pow(max(opposedRoot, 0.0), power);
            return max(reconstructed, fallback);
        }

        float reconstructHighlightSample(ivec2 coord, int channelIndex, int color, float sensor, float linear) {
            if (!uHighlightReconstructionEnabled) {
                return min(max(linear, 0.0), uHighlightCeiling);
            }

            float clipMask = smoothstep(uHighlightClipThreshold, 1.0, sensor);
            if (clipMask <= 0.0) {
                return min(max(linear, 0.0), uHighlightCeiling);
            }

            float reconstructed = estimateOpposedLinear(coord, color, linear);
            return min(mix(linear, reconstructed, clipMask), uHighlightCeiling);
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;
            int channelIndex = getQuadChannelIndex(uCfaPattern, coord.x, coord.y);
            int color = colorFromChannelIndex(channelIndex);
            float sensor = readSensorNormalized(coord, channelIndex);
            float linear = calculationSampleAt(coord, channelIndex);
            float val = reconstructHighlightSample(coord, channelIndex, color, sensor, linear);

            cfa[idx] = val;
            rgb0[idx] = (color == RED) ? val : 0.0;
            rgb1[idx] = (color == GREEN) ? val : 0.0;
            rgb2[idx] = (color == BLUE) ? val : 0.0;
        }
    """.trimIndent()

    val GREEN = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer CFA_Buf  { float cfa[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        $COMMON

        float cfaAt(ivec2 coord) {
            ivec2 p = clampCoord(coord, uImageSize);
            return cfa[p.y * uImageSize.x + p.x];
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;
            int color = getQuadColor(uCfaPattern, coord.x, coord.y);
            if (color == GREEN) {
                rgb1[idx] = cfa[idx];
                return;
            }

            float hSum = 0.0;
            float hWeight = 0.0;
            float vSum = 0.0;
            float vWeight = 0.0;

            for (int offset = -4; offset <= 4; offset++) {
                if (offset == 0) continue;

                ivec2 hp = clampCoord(coord + ivec2(offset, 0), uImageSize);
                if (getQuadColor(uCfaPattern, hp.x, hp.y) == GREEN) {
                    float d = abs(float(offset));
                    float w = 1.0 / (d * d);
                    hSum += cfa[hp.y * uImageSize.x + hp.x] * w;
                    hWeight += w;
                }

                ivec2 vp = clampCoord(coord + ivec2(0, offset), uImageSize);
                if (getQuadColor(uCfaPattern, vp.x, vp.y) == GREEN) {
                    float d = abs(float(offset));
                    float w = 1.0 / (d * d);
                    vSum += cfa[vp.y * uImageSize.x + vp.x] * w;
                    vWeight += w;
                }
            }

            float rawCenter = cfa[idx];
            float hAvg = (hWeight > 0.0) ? hSum / hWeight : rawCenter;
            float vAvg = (vWeight > 0.0) ? vSum / vWeight : rawCenter;

            float hGrad = abs(cfaAt(coord + ivec2(-1, 0)) - cfaAt(coord + ivec2(1, 0))) +
                0.5 * abs(cfaAt(coord + ivec2(-2, 0)) - cfaAt(coord + ivec2(2, 0)));
            float vGrad = abs(cfaAt(coord + ivec2(0, -1)) - cfaAt(coord + ivec2(0, 1))) +
                0.5 * abs(cfaAt(coord + ivec2(0, -2)) - cfaAt(coord + ivec2(0, 2)));

            float hTrust = (hWeight > 0.0) ? 1.0 / (hGrad + 1e-4) : 0.0;
            float vTrust = (vWeight > 0.0) ? 1.0 / (vGrad + 1e-4) : 0.0;
            float trust = hTrust + vTrust;

            if (trust > 0.0) {
                rgb1[idx] = (hAvg * hTrust + vAvg * vTrust) / trust;
                return;
            }

            float sum = 0.0;
            float weight = 0.0;
            for (int dy = -4; dy <= 4; dy++) {
                for (int dx = -4; dx <= 4; dx++) {
                    ivec2 p = clampCoord(coord + ivec2(dx, dy), uImageSize);
                    if (getQuadColor(uCfaPattern, p.x, p.y) != GREEN) continue;
                    float d2 = float(dx * dx + dy * dy);
                    float w = 1.0 / (1.0 + d2);
                    sum += cfa[p.y * uImageSize.x + p.x] * w;
                    weight += w;
                }
            }
            rgb1[idx] = (weight > 0.0) ? sum / weight : rawCenter;
        }
    """.trimIndent()

    val CHROMA = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer CFA_Buf  { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        $COMMON

        float interpolateDiff(ivec2 coord, int targetColor, float centerGreen) {
            float sum = 0.0;
            float weight = 0.0;
            int radius = max(3, expandedBayerBlockSize(uCfaPattern));

            for (int dy = -4; dy <= 4; dy++) {
                if (abs(dy) > radius) continue;
                for (int dx = -4; dx <= 4; dx++) {
                    if (abs(dx) > radius) continue;
                    ivec2 p = clampCoord(coord + ivec2(dx, dy), uImageSize);
                    if (getQuadColor(uCfaPattern, p.x, p.y) != targetColor) continue;

                    int sampleIdx = p.y * uImageSize.x + p.x;
                    float sampleGreen = rgb1[sampleIdx];
                    float diff = cfa[sampleIdx] - sampleGreen;
                    float d2 = float(dx * dx + dy * dy);
                    float greenDelta = abs(sampleGreen - centerGreen);
                    float w = 1.0 / (1.0 + d2 + 8.0 * greenDelta);
                    sum += diff * w;
                    weight += w;
                }
            }

            return (weight > 0.0) ? sum / weight : 0.0;
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;
            int color = getQuadColor(uCfaPattern, coord.x, coord.y);
            float green = rgb1[idx];

            float red;
            if (color == RED) {
                red = cfa[idx];
            } else {
                red = green + interpolateDiff(coord, RED, green);
            }

            float blue;
            if (color == BLUE) {
                blue = cfa[idx];
            } else {
                blue = green + interpolateDiff(coord, BLUE, green);
            }

            rgb0[idx] = max(red, 0.0);
            rgb2[idx] = max(blue, 0.0);
        }
    """.trimIndent()

    val REFINE = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };
        layout(std430, binding = 4) buffer TMP_R_Buf { float tmpR[]; };
        layout(std430, binding = 5) buffer TMP_B_Buf { float tmpB[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        $COMMON

        float refinedChannel(ivec2 coord, int targetColor, float centerChannel, float centerGreen) {
            int color = getQuadColor(uCfaPattern, coord.x, coord.y);
            if (color == targetColor) {
                return centerChannel;
            }

            float centerDiff = centerChannel - centerGreen;
            float sum = centerDiff * 2.0;
            float weight = 2.0;

            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    if (dx == 0 && dy == 0) continue;
                    ivec2 p = clampCoord(coord + ivec2(dx, dy), uImageSize);
                    int sampleIdx = p.y * uImageSize.x + p.x;
                    float sampleGreen = rgb1[sampleIdx];
                    float sampleChannel = (targetColor == RED) ? rgb0[sampleIdx] : rgb2[sampleIdx];
                    float sampleDiff = sampleChannel - sampleGreen;
                    float d2 = float(dx * dx + dy * dy);
                    float w = 1.0 / (1.0 + d2 + 10.0 * abs(sampleGreen - centerGreen));
                    sum += sampleDiff * w;
                    weight += w;
                }
            }

            float smoothDiff = sum / max(weight, 1e-6);
            return max(centerGreen + mix(centerDiff, smoothDiff, 0.35), 0.0);
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;
            float green = rgb1[idx];
            tmpR[idx] = refinedChannel(coord, RED, rgb0[idx], green);
            tmpB[idx] = refinedChannel(coord, BLUE, rgb2[idx], green);
        }
    """.trimIndent()

    val WRITE_OUTPUT = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 4) buffer TMP_R_Buf { float tmpR[]; };
        layout(std430, binding = 5) buffer TMP_B_Buf { float tmpB[]; };

        layout (rgba16f, binding = 0) writeonly uniform highp image2D uOutputImage;

        uniform ivec2 uImageSize;
        uniform vec3 uCalculationGains;

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;
            vec3 cameraRgb = vec3(
                max(0.0, tmpR[idx]),
                max(0.0, rgb1[idx]),
                max(0.0, tmpB[idx])
            ) / max(uCalculationGains, vec3(1e-6));
            vec4 color = vec4(cameraRgb, 1.0);
            imageStore(uOutputImage, coord, color);
        }
    """.trimIndent()
}

/**
 * Complete expanded/Quad Bayer demosaic algorithm.
 *
 * Its five compute passes are intentionally kept together: they share one SSBO layout and none
 * of the intermediate representations is a supported pipeline boundary.
 */
internal class QuadBayerDemosaicAlgorithm {
    data class Input(
        val rawTextureId: Int,
        val outputTextureId: Int,
        val width: Int,
        val height: Int,
        val cfaPattern: Int,
        val blackLevel: FloatArray,
        val whiteLevel: Float,
        val metadataWhiteBalanceGains: FloatArray,
        val calculationWhiteBalanceGains: FloatArray,
        val expandedBlockSize: Int,
        val highlightReconstructionEnabled: Boolean,
        val globalOriginX: Int,
        val globalOriginY: Int,
        val lensShadingDescription: String,
        val bindLensShading: (programId: Int, globalOriginX: Int, globalOriginY: Int) -> Unit,
    )

    data class Output(
        val textureId: Int,
        val width: Int,
        val height: Int,
    )

    private var populateProgram = 0
    private var greenProgram = 0
    private var chromaProgram = 0
    private var refineProgram = 0
    private var writeOutputProgram = 0

    fun initialize(): Boolean {
        val startedAt = System.currentTimeMillis()
        if (populateProgram == 0) {
            populateProgram = RawGlesProgram.compileCompute(
                QuadBayerShaders.POPULATE,
                "QUAD_BAYER_POPULATE",
            )
        }
        if (greenProgram == 0) {
            greenProgram = RawGlesProgram.compileCompute(
                QuadBayerShaders.GREEN,
                "QUAD_BAYER_GREEN",
            )
        }
        if (chromaProgram == 0) {
            chromaProgram = RawGlesProgram.compileCompute(
                QuadBayerShaders.CHROMA,
                "QUAD_BAYER_CHROMA",
            )
        }
        if (refineProgram == 0) {
            refineProgram = RawGlesProgram.compileCompute(
                QuadBayerShaders.REFINE,
                "QUAD_BAYER_REFINE",
            )
        }
        if (writeOutputProgram == 0) {
            writeOutputProgram = RawGlesProgram.compileCompute(
                QuadBayerShaders.WRITE_OUTPUT,
                "QUAD_BAYER_WRITE_OUTPUT",
            )
        }
        val ready = populateProgram != 0 && greenProgram != 0 && chromaProgram != 0 &&
            refineProgram != 0 && writeOutputProgram != 0
        PLog.d(
            TAG,
            "programs ready=$ready, took=${System.currentTimeMillis() - startedAt}ms",
        )
        return ready
    }

    fun execute(input: Input): Output? {
        if (!initialize()) return null
        require(input.blackLevel.size >= 4) { "Quad Bayer requires four black levels" }
        require(input.calculationWhiteBalanceGains.size >= 4) {
            "Quad Bayer requires four calculation white-balance gains"
        }

        val buffers = IntArray(6)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        val bufferSize = input.width * input.height * 4 + SSBO_EXTRA_MARGIN_BYTES
        try {
            buffers.forEachIndexed { binding, bufferId ->
                GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
                GLES31.glBufferData(
                    GLES31.GL_SHADER_STORAGE_BUFFER,
                    bufferSize,
                    null,
                    GLES31.GL_DYNAMIC_DRAW,
                )
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, bufferId)
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

            runPopulate(input)
            runImagePass(greenProgram, "Green", input, includeCfaPattern = true)
            runImagePass(chromaProgram, "Chroma", input, includeCfaPattern = true)
            runImagePass(refineProgram, "Refine", input, includeCfaPattern = true)
            runWriteOutput(input)
            GLES30.glFinish()
            return Output(input.outputTextureId, input.width, input.height)
        } finally {
            GLES31.glBindImageTexture(
                OUTPUT_IMAGE_UNIT,
                0,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES31.GL_RGBA16F,
            )
            GLES31.glDeleteBuffers(buffers.size, buffers, 0)
            buffers.indices.forEach { binding ->
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, 0)
            }
        }
    }

    fun release() {
        intArrayOf(
            populateProgram,
            greenProgram,
            chromaProgram,
            refineProgram,
            writeOutputProgram,
        ).forEach { program ->
            if (program != 0) GLES31.glDeleteProgram(program)
        }
        populateProgram = 0
        greenProgram = 0
        chromaProgram = 0
        refineProgram = 0
        writeOutputProgram = 0
    }

    private fun runPopulate(input: Input) {
        GLES31.glUseProgram(populateProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.rawTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uRawTexture"),
            RAW_TEXTURE_UNIT,
        )
        input.bindLensShading(
            populateProgram,
            input.globalOriginX,
            input.globalOriginY,
        )
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(populateProgram, "uImageSize"),
            input.width,
            input.height,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uCfaPattern"),
            input.cfaPattern,
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(populateProgram, "uBlackLevel"),
            1,
            input.blackLevel,
            0,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uWhiteLevel"),
            input.whiteLevel,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightClipThreshold"),
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightCeiling"),
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightReconstructionEnabled"),
            if (input.highlightReconstructionEnabled) 1 else 0,
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(populateProgram, "uWhiteBalanceGains"),
            1,
            input.calculationWhiteBalanceGains,
            0,
        )
        PLog.d(
            TAG,
            "populate: cfa=${input.cfaPattern} " +
                "block=${input.expandedBlockSize}x${input.expandedBlockSize} " +
                "black=${input.blackLevel.contentToString()} white=${input.whiteLevel} " +
                "metadataWb=${input.metadataWhiteBalanceGains.contentToString()} " +
                "calculationWb=${input.calculationWhiteBalanceGains.contentToString()} " +
                "lsc=${input.lensShadingDescription} " +
                "highlightReconstruction=${input.highlightReconstructionEnabled}",
        )
        dispatchImage(input.width, input.height, "Populate")
    }

    private fun runImagePass(
        program: Int,
        label: String,
        input: Input,
        includeCfaPattern: Boolean,
    ) {
        GLES31.glUseProgram(program)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(program, "uImageSize"),
            input.width,
            input.height,
        )
        if (includeCfaPattern) {
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uCfaPattern"),
                input.cfaPattern,
            )
        }
        dispatchImage(input.width, input.height, label)
    }

    private fun runWriteOutput(input: Input) {
        GLES31.glUseProgram(writeOutputProgram)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(writeOutputProgram, "uImageSize"),
            input.width,
            input.height,
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(writeOutputProgram, "uCalculationGains"),
            input.calculationWhiteBalanceGains[0],
            1f,
            input.calculationWhiteBalanceGains[3],
        )
        GLES31.glBindImageTexture(
            OUTPUT_IMAGE_UNIT,
            input.outputTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(input.width),
            GlesComputeWorkGroup.imageGroupCount(input.height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
        RawGlesProgram.logErrors("$TAG WriteOutput")
    }

    private fun dispatchImage(width: Int, height: Int, label: String) {
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        RawGlesProgram.logErrors("$TAG $label")
    }

    private companion object {
        const val TAG = "QuadBayerDemosaic"
        const val RAW_TEXTURE_UNIT = 0
        const val OUTPUT_IMAGE_UNIT = 0
        const val SSBO_EXTRA_MARGIN_BYTES = 1024 * 1024
    }
}
