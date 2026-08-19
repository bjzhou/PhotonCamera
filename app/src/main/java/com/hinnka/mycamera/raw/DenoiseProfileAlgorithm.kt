package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

/**
 * OpenGL ES 3.1 compute port of darktable's denoiseprofile NLM path.
 *
 * Input and output stay in un-white-balanced camera RGB. The host keeps darktable's
 * white-balance-adaptive exponent, but removes WB from the reversible signal scale.
 * The pipeline mirrors darktable process_nlmeans_cl with a mobile fused accumulator and a
 * low-frequency green guide used to keep low-contrast structure out of the noise estimate:
 * precondition_v2 -> init -> repeated local-tile accu -> finish_v2.
 */
object DenoiseProfileShaders {
    const val SEARCH_RADIUS = 5
    const val PATCH_RADIUS = 1
    // darktable's neutral bias setting makes finish_v2 the exact inverse when NLM leaves a
    // transformed sample unchanged. This is required to keep sensor black and channel ratios.
    const val BLACK_PRESERVING_BIAS = 0.0f
    const val IMAGE_LOCAL_X = GlesComputeWorkGroup.IMAGE_TILE_SIZE
    const val IMAGE_LOCAL_Y = GlesComputeWorkGroup.IMAGE_TILE_SIZE
    private const val FUSED_TILE_X = IMAGE_LOCAL_X + SEARCH_RADIUS + 2 * PATCH_RADIUS
    private const val FUSED_TILE_Y = IMAGE_LOCAL_Y + SEARCH_RADIUS + 2 * PATCH_RADIUS

    private const val COMMON = """
        precision highp float;
        precision highp int;

        vec4 readPixel(sampler2D image, ivec2 coord, ivec2 size) {
            ivec2 c = clamp(coord, ivec2(0), size - ivec2(1));
            return texelFetch(image, c, 0);
        }

        vec4 dtPow(vec4 a, vec4 b) {
            return pow(a, b);
        }

        float fastMexp2(float x) {
            const float i1 = float(0x3f800000u);
            const float i2 = float(0x3f000000u);
            float k0 = i1 + x * (i2 - i1);
            uint bits = (k0 >= float(0x800000u)) ? uint(k0) : 0u;
            return uintBitsToFloat(bits);
        }

        float ddirac(ivec2 q) {
            return (q.x != 0 || q.y != 0) ? 1.0 : 0.0;
        }

        int pixelIndex(ivec2 coord, ivec2 size) {
            return coord.y * size.x + coord.x;
        }
    """

    val PRECONDITION_V2 = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uOutput;

        uniform ivec2 uImageSize;
        uniform vec4 uA;
        uniform vec4 uP;
        uniform vec4 uB;
        uniform vec4 uSignalScale;

        vec4 preconditionSignal(vec4 pixel) {
            return max(
                2.0 * dtPow(max(vec4(0.0), pixel / uSignalScale + uB), 1.0 - uP / 2.0) /
                ((-uP + 2.0) * sqrt(uA)),
                vec4(0.0)
            );
        }

        float preconditionGreen(float signal) {
            return max(
                2.0 * pow(max(0.0, signal / uSignalScale.g + uB.g), 1.0 - uP.g / 2.0) /
                ((-uP.g + 2.0) * sqrt(uA.g)),
                0.0
            );
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            vec4 t = preconditionSignal(readPixel(uInput, coord, uImageSize));

            // Alpha is scratch space after preconditioning: FUSED_ACCU replaces it with the
            // accumulated weight and FINISH_V2 restores alpha from the original input. A 3x3
            // Gaussian green guide expands the effective structural support of the 3x3 RGB
            // patch without another full-resolution intermediate texture.
            float guide =
                preconditionGreen(readPixel(uInput, coord + ivec2(-1, -1), uImageSize).g) +
                2.0 * preconditionGreen(readPixel(uInput, coord + ivec2(0, -1), uImageSize).g) +
                preconditionGreen(readPixel(uInput, coord + ivec2(1, -1), uImageSize).g) +
                2.0 * preconditionGreen(readPixel(uInput, coord + ivec2(-1, 0), uImageSize).g) +
                4.0 * t.g +
                2.0 * preconditionGreen(readPixel(uInput, coord + ivec2(1, 0), uImageSize).g) +
                preconditionGreen(readPixel(uInput, coord + ivec2(-1, 1), uImageSize).g) +
                2.0 * preconditionGreen(readPixel(uInput, coord + ivec2(0, 1), uImageSize).g) +
                preconditionGreen(readPixel(uInput, coord + ivec2(1, 1), uImageSize).g);
            t.a = guide * (1.0 / 16.0);
            imageStore(uOutput, coord, t);
        }
    """.trimIndent()

    val INIT = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(std430, binding = 0) buffer AccuBuffer { vec4 u2[]; };

        uniform ivec2 uImageSize;
        uniform int uStripeRowCount;

        void main() {
            ivec2 stripeCoord = ivec2(gl_GlobalInvocationID.xy);
            if (stripeCoord.x >= uImageSize.x || stripeCoord.y >= uStripeRowCount) return;

            u2[stripeCoord.y * uImageSize.x + stripeCoord.x] = vec4(0.0);
        }
    """.trimIndent()

    val FUSED_ACCU = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(std430, binding = 0) buffer AccuBuffer { vec4 u2[]; };

        shared vec2 sDistance[$FUSED_TILE_X * $FUSED_TILE_Y];

        uniform ivec2 uImageSize;
        uniform int uStripeRowOffset;
        uniform int uStripeRowCount;
        uniform ivec2 uQ;
        uniform float uExpectedFineDistance;
        uniform float uExpectedGuideDistance;
        uniform float uInverseBandwidth;
        uniform float uCoarseGuideWeight;
        uniform float uCentralPixelWeight;

        vec2 pixelDistance(ivec2 coord, ivec2 q) {
            ivec2 shifted = coord + q;
            bool inBounds = shifted.x >= 0 && shifted.x < uImageSize.x &&
                shifted.y >= 0 && shifted.y < uImageSize.y;
            if (!inBounds) return vec2(0.0);

            vec4 p1 = readPixel(uInput, coord, uImageSize);
            vec4 p2 = readPixel(uInput, shifted, uImageSize);
            vec4 tmp = (p1 - p2) * (p1 - p2);
            return vec2(tmp.x + tmp.y + tmp.z, tmp.a);
        }

        vec2 tileDistance(ivec2 imageCoord, ivec2 groupOrigin, ivec2 tileMin, int tileWidth) {
            ivec2 tileCoord = imageCoord - groupOrigin - tileMin;
            return sDistance[tileCoord.y * tileWidth + tileCoord.x];
        }

        float patchWeight(ivec2 center, ivec2 groupOrigin, ivec2 tileMin, int tileWidth) {
            vec2 distacc = vec2(0.0);
            for (int pj = -$PATCH_RADIUS; pj <= $PATCH_RADIUS; pj++) {
                for (int pi = -$PATCH_RADIUS; pi <= $PATCH_RADIUS; pi++) {
                    ivec2 patchCoord = clamp(
                        center + ivec2(pi, pj),
                        ivec2(0),
                        uImageSize - ivec2(1)
                    );
                    distacc += tileDistance(patchCoord, groupOrigin, tileMin, tileWidth);
                }
            }

            float patchPixels = float((2 * $PATCH_RADIUS + 1) * (2 * $PATCH_RADIUS + 1));
            distacc += tileDistance(center, groupOrigin, tileMin, tileWidth) *
                patchPixels * uCentralPixelWeight;
            distacc /= 1.0 + uCentralPixelWeight;

            float unexplainedFine = max(distacc.x - uExpectedFineDistance, 0.0);
            float unexplainedGuide = max(distacc.y - uExpectedGuideDistance, 0.0);
            float unexplainedDistance =
                unexplainedFine + uCoarseGuideWeight * unexplainedGuide;
            return fastMexp2(unexplainedDistance * uInverseBandwidth);
        }

        void main() {
            ivec2 groupOrigin = ivec2(
                int(gl_WorkGroupID.x) * $IMAGE_LOCAL_X,
                uStripeRowOffset + int(gl_WorkGroupID.y) * $IMAGE_LOCAL_Y
            );
            ivec2 tileMin = min(ivec2(-$PATCH_RADIUS), -uQ - ivec2($PATCH_RADIUS));
            ivec2 tileMax = max(ivec2($PATCH_RADIUS), -uQ + ivec2($PATCH_RADIUS));
            int tileWidth = $IMAGE_LOCAL_X + tileMax.x - tileMin.x;
            int tileHeight = $IMAGE_LOCAL_Y + tileMax.y - tileMin.y;
            int tilePixels = tileWidth * tileHeight;
            int localIndex = int(gl_LocalInvocationID.y) * $IMAGE_LOCAL_X +
                int(gl_LocalInvocationID.x);
            int localCount = $IMAGE_LOCAL_X * $IMAGE_LOCAL_Y;

            for (int i = localIndex; i < tilePixels; i += localCount) {
                int tileX = i - (i / tileWidth) * tileWidth;
                int tileY = i / tileWidth;
                ivec2 imageCoord = groupOrigin + ivec2(tileX, tileY) + tileMin;
                imageCoord = clamp(imageCoord, ivec2(0), uImageSize - ivec2(1));
                sDistance[i] = pixelDistance(imageCoord, uQ);
            }

            memoryBarrierShared();
            barrier();

            ivec2 stripeCoord = ivec2(gl_GlobalInvocationID.xy);
            if (stripeCoord.x >= uImageSize.x || stripeCoord.y >= uStripeRowCount) return;
            ivec2 coord = stripeCoord + ivec2(0, uStripeRowOffset);

            ivec2 plusCoord = coord + uQ;
            ivec2 minusCoord = coord - uQ;
            bool plusInBounds = plusCoord.x >= 0 && plusCoord.x < uImageSize.x &&
                plusCoord.y >= 0 && plusCoord.y < uImageSize.y;
            bool minusInBounds = minusCoord.x >= 0 && minusCoord.x < uImageSize.x &&
                minusCoord.y >= 0 && minusCoord.y < uImageSize.y;

            float weight = plusInBounds ? patchWeight(coord, groupOrigin, tileMin, tileWidth) : 0.0;
            float weightMinus = (minusInBounds && ddirac(uQ) > 0.0)
                ? patchWeight(minusCoord, groupOrigin, tileMin, tileWidth)
                : 0.0;

            vec4 u1Pq = plusInBounds ? readPixel(uInput, plusCoord, uImageSize) : vec4(0.0);
            vec4 u1Mq = minusInBounds ? readPixel(uInput, minusCoord, uImageSize) : vec4(0.0);
            vec4 accu = weight * u1Pq + weightMinus * u1Mq;
            accu.a = weight + weightMinus;

            int idx = stripeCoord.y * uImageSize.x + stripeCoord.x;
            u2[idx] = u2[idx] + accu;
        }
    """.trimIndent()

    val FINISH_V2 = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(std430, binding = 0) readonly buffer AccuBuffer { vec4 u2[]; };
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uOutput;

        uniform ivec2 uImageSize;
        uniform int uStripeRowOffset;
        uniform int uStripeRowCount;
        uniform vec4 uA;
        uniform vec4 uP;
        uniform vec4 uB;
        uniform float uBias;
        uniform float uDenoiseMix;
        uniform vec4 uSignalScale;

        void main() {
            ivec2 stripeCoord = ivec2(gl_GlobalInvocationID.xy);
            if (stripeCoord.x >= uImageSize.x || stripeCoord.y >= uStripeRowCount) return;
            ivec2 coord = stripeCoord + ivec2(0, uStripeRowOffset);

            int idx = stripeCoord.y * uImageSize.x + stripeCoord.x;
            vec4 accu = u2[idx];
            vec4 original = readPixel(uInput, coord, uImageSize);
            vec4 px = accu.a > 0.0 ? accu / accu.a : vec4(0.0);

            vec4 delta = px * px + vec4(uBias);
            vec4 denominator = 4.0 / (sqrt(uA) * (2.0 - uP));
            vec4 z1 = (px + sqrt(max(vec4(0.0), delta))) / denominator;
            px = max(dtPow(z1, 1.0 / (1.0 - uP / 2.0)) - uB, vec4(0.0));
            px *= uSignalScale;
            px.rgb = mix(original.rgb, px.rgb, clamp(uDenoiseMix, 0.0, 1.0));
            px.a = original.a;
            imageStore(uOutput, coord, px);
        }
    """.trimIndent()
}

/** Complete darktable denoiseprofile variance-transform + striped NLM algorithm. */
internal class DenoiseProfileAlgorithm {
    data class Input(
        val sourceTextureId: Int,
        val width: Int,
        val height: Int,
        val strength: Float,
        val noiseSlope: Float,
        val noiseOffset: Float,
        val adaptiveWhiteBalance: FloatArray,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private data class Params(
        val strength: Float,
        val bias: Float,
        val scale: Float,
        val expectedFineDistance: Float,
        val expectedGuideDistance: Float,
        val inverseBandwidth: Float,
        val coarseGuideWeight: Float,
        val centralPixelWeight: Float,
        val p: FloatArray,
        val signalScale: FloatArray,
        val aa: FloatArray,
        val bb: FloatArray,
    )

    private var preconditionProgram = 0
    private var initProgram = 0
    private var fusedAccumulateProgram = 0
    private var finishProgram = 0
    private val textureIds = intArrayOf(0, 0)
    private var textureWidth = 0
    private var textureHeight = 0
    private var accumulatorBufferId = 0
    private var accumulatorWidth = 0
    private var accumulatorRows = 0
    private var maxSsboBytes = 0L

    fun initialize(): Boolean {
        if (preconditionProgram == 0) {
            preconditionProgram = RawGlesProgram.compileCompute(
                DenoiseProfileShaders.PRECONDITION_V2,
                "DENOISE_PROFILE_PRECONDITION",
            )
        }
        if (initProgram == 0) {
            initProgram = RawGlesProgram.compileCompute(
                DenoiseProfileShaders.INIT,
                "DENOISE_PROFILE_INIT",
            )
        }
        if (fusedAccumulateProgram == 0) {
            fusedAccumulateProgram = RawGlesProgram.compileCompute(
                DenoiseProfileShaders.FUSED_ACCU,
                "DENOISE_PROFILE_FUSED_ACCU",
            )
        }
        if (finishProgram == 0) {
            finishProgram = RawGlesProgram.compileCompute(
                DenoiseProfileShaders.FINISH_V2,
                "DENOISE_PROFILE_FINISH",
            )
        }
        return programsReady()
    }

    fun execute(input: Input): Output? {
        if (input.strength <= 0f || input.width * input.height < 2) {
            return Output(input.sourceTextureId, input.width, input.height)
        }
        require(input.adaptiveWhiteBalance.size >= 3)
        if (!initialize() || !ensureResources(input.width, input.height)) return null
        val params = buildParams(input)
        PLog.d(
            TAG,
            "execute: size=${input.width}x${input.height} strength=${params.strength} " +
                "slope=${input.noiseSlope} offset=${input.noiseOffset} " +
                "stripeRows=$accumulatorRows wb=${input.adaptiveWhiteBalance.contentToString()}",
        )
        dispatchPrecondition(input, params)
        dispatchNlm(input, params)
        RawGlesProgram.logErrors("DenoiseProfile execute")
        return Output(textureIds[1], input.width, input.height)
    }

    fun release() {
        intArrayOf(
            preconditionProgram,
            initProgram,
            fusedAccumulateProgram,
            finishProgram,
        ).forEach { program ->
            if (program != 0) GLES31.glDeleteProgram(program)
        }
        preconditionProgram = 0
        initProgram = 0
        fusedAccumulateProgram = 0
        finishProgram = 0
        releaseTextures()
        releaseAccumulator()
        maxSsboBytes = 0L
    }

    private fun programsReady(): Boolean =
        preconditionProgram != 0 && initProgram != 0 &&
            fusedAccumulateProgram != 0 && finishProgram != 0

    private fun ensureResources(width: Int, height: Int): Boolean {
        if (textureWidth != width || textureHeight != height || textureIds.any { it == 0 }) {
            releaseTextures()
            GLES30.glGenTextures(textureIds.size, textureIds, 0)
            textureIds.forEach { textureId ->
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
                GLES30.glTexStorage2D(
                    GLES30.GL_TEXTURE_2D,
                    1,
                    GLES30.GL_RGBA16F,
                    width,
                    height,
                )
                GLES30.glTexParameteri(
                    GLES30.GL_TEXTURE_2D,
                    GLES30.GL_TEXTURE_MIN_FILTER,
                    GLES30.GL_NEAREST,
                )
                GLES30.glTexParameteri(
                    GLES30.GL_TEXTURE_2D,
                    GLES30.GL_TEXTURE_MAG_FILTER,
                    GLES30.GL_NEAREST,
                )
                GLES30.glTexParameteri(
                    GLES30.GL_TEXTURE_2D,
                    GLES30.GL_TEXTURE_WRAP_S,
                    GLES30.GL_CLAMP_TO_EDGE,
                )
                GLES30.glTexParameteri(
                    GLES30.GL_TEXTURE_2D,
                    GLES30.GL_TEXTURE_WRAP_T,
                    GLES30.GL_CLAMP_TO_EDGE,
                )
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            textureWidth = width
            textureHeight = height
        }
        ensureAccumulator(width, height)
        RawGlesProgram.logErrors("DenoiseProfile resources")
        return textureIds.all { it != 0 } && accumulatorBufferId != 0 && accumulatorRows > 0
    }

    private fun ensureAccumulator(width: Int, height: Int) {
        if (accumulatorWidth == width && accumulatorRows > 0 && accumulatorBufferId != 0) return
        releaseAccumulator()
        var rows = DenoiseProfileStripePlanner.capacityRows(width, height, queryMaxSsboBytes())
        if (rows <= 0) return
        val buffers = IntArray(1)
        GLES31.glGenBuffers(1, buffers, 0)
        accumulatorBufferId = buffers[0]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, accumulatorBufferId)
        while (rows > 0) {
            val bytes = DenoiseProfileStripePlanner.requiredBytes(width, rows)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                bytes.toInt(),
                null,
                GLES31.GL_DYNAMIC_DRAW,
            )
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) {
                accumulatorWidth = width
                accumulatorRows = rows
                break
            }
            PLog.w(TAG, "accumulator ${width}x$rows allocation failed: glError=$error")
            rows = nextSmallerStripeRows(rows)
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        if (accumulatorRows == 0) releaseAccumulator()
    }

    private fun queryMaxSsboBytes(): Long {
        if (maxSsboBytes > 0L) return maxSsboBytes
        val value = LongArray(1)
        GLES30.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, value, 0)
        val error = GLES30.glGetError()
        maxSsboBytes = if (error == GLES30.GL_NO_ERROR && value[0] > 0L) {
            value[0]
        } else {
            PLog.w(TAG, "GL_MAX_SHADER_STORAGE_BLOCK_SIZE unavailable; using GLES minimum")
            GLES31_MIN_SSBO_BYTES
        }
        return maxSsboBytes
    }

    private fun nextSmallerStripeRows(currentRows: Int): Int {
        if (currentRows <= 1) return 0
        val half = currentRows / 2
        val workgroupRows = DenoiseProfileShaders.IMAGE_LOCAL_Y
        return if (half >= workgroupRows) half - half % workgroupRows else half
    }

    private fun buildParams(input: Input): Params {
        val strength = DenoiseStrength.clamp(input.strength)
        val varianceScale = DenoiseStrength.noiseVarianceScale(strength)
        val a = (input.noiseSlope * varianceScale).coerceAtLeast(1e-10f)
        val b = (input.noiseOffset * varianceScale).coerceAtLeast(1e-10f)
        val scale = 1f
        val shadows = max(0.1f - 0.1f * ln(a), 0.7f).coerceAtMost(1.8f)
        val p = FloatArray(4) { index ->
            if (index == 3) 1f else {
                max(shadows + 0.1f * ln(scale / input.adaptiveWhiteBalance[index]), 0f)
            }
        }
        val compensateP = 0.05f / 0.05f.pow(shadows)
        val tuning = DenoiseProfileNlmConfig.weightTuning(DenoiseProfileShaders.PATCH_RADIUS)
        return Params(
            strength = strength,
            bias = DenoiseProfileShaders.BLACK_PRESERVING_BIAS,
            scale = scale,
            expectedFineDistance = tuning.expectedFineDistance,
            expectedGuideDistance = tuning.expectedGuideDistance,
            inverseBandwidth = tuning.inverseBandwidth,
            coarseGuideWeight = tuning.coarseGuideWeight,
            centralPixelWeight = 0.1f * scale,
            p = p,
            signalScale = floatArrayOf(scale, scale, scale, 1f),
            aa = floatArrayOf(a * compensateP, a * compensateP, a * compensateP, 1f),
            bb = floatArrayOf(b, b, b, 1f),
        )
    }

    private fun dispatchPrecondition(input: Input, params: Params) {
        GLES31.glUseProgram(preconditionProgram)
        bindSampler(preconditionProgram, "uInput", 0, input.sourceTextureId)
        GLES31.glBindImageTexture(
            1,
            textureIds[0],
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        setCommonUniforms(preconditionProgram, input.width, input.height, params)
        dispatchImage(input.width, input.height, "precondition")
    }

    private fun dispatchNlm(input: Input, params: Params) {
        DenoiseProfileStripePlanner.plan(input.height, accumulatorRows).forEach { stripe ->
            dispatchInit(input.width, input.height, stripe)
            DenoiseProfileNlmConfig.searchOffsets.forEach { offset ->
                dispatchAccumulate(input.width, input.height, stripe, offset.x, offset.y, params)
            }
            dispatchFinish(input, stripe, params)
            GlesGpuScheduler.yieldToUiRenderer()
        }
    }

    private fun dispatchInit(width: Int, height: Int, stripe: DenoiseProfileStripe) {
        GLES31.glUseProgram(initProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, accumulatorBufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(initProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(initProgram, "uStripeRowCount"),
            stripe.rowCount,
        )
        dispatchImage(width, stripe.rowCount, "init row=${stripe.rowOffset}")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchAccumulate(
        width: Int,
        height: Int,
        stripe: DenoiseProfileStripe,
        qx: Int,
        qy: Int,
        params: Params,
    ) {
        GLES31.glUseProgram(fusedAccumulateProgram)
        bindSampler(fusedAccumulateProgram, "uInput", 0, textureIds[0])
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, accumulatorBufferId)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uImageSize"),
            width,
            height,
        )
        setStripeUniforms(fusedAccumulateProgram, stripe)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(fusedAccumulateProgram, "uQ"), qx, qy)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uExpectedFineDistance"),
            params.expectedFineDistance,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uExpectedGuideDistance"),
            params.expectedGuideDistance,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uInverseBandwidth"),
            params.inverseBandwidth,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uCoarseGuideWeight"),
            params.coarseGuideWeight,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(fusedAccumulateProgram, "uCentralPixelWeight"),
            params.centralPixelWeight,
        )
        dispatchImage(width, stripe.rowCount, "accumulate row=${stripe.rowOffset} q=($qx,$qy)")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchFinish(input: Input, stripe: DenoiseProfileStripe, params: Params) {
        GLES31.glUseProgram(finishProgram)
        bindSampler(finishProgram, "uInput", 0, input.sourceTextureId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, accumulatorBufferId)
        GLES31.glBindImageTexture(
            1,
            textureIds[1],
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        setCommonUniforms(finishProgram, input.width, input.height, params)
        setStripeUniforms(finishProgram, stripe)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(finishProgram, "uBias"),
            params.bias - 0.5f * ln(params.scale),
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(finishProgram, "uDenoiseMix"),
            DenoiseStrength.outputMix(params.strength),
        )
        dispatchImage(input.width, stripe.rowCount, "finish row=${stripe.rowOffset}")
    }

    private fun setCommonUniforms(program: Int, width: Int, height: Int, params: Params) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uImageSize"), width, height)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uA"), 1, params.aa, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uP"), 1, params.p, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uB"), 1, params.bb, 0)
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(program, "uSignalScale"),
            1,
            params.signalScale,
            0,
        )
    }

    private fun setStripeUniforms(program: Int, stripe: DenoiseProfileStripe) {
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uStripeRowOffset"),
            stripe.rowOffset,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uStripeRowCount"),
            stripe.rowCount,
        )
    }

    private fun bindSampler(program: Int, name: String, unit: Int, textureId: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, textureId)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun dispatchImage(width: Int, height: Int, label: String) {
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        RawGlesProgram.logErrors("$TAG $label")
    }

    private fun releaseTextures() {
        val live = textureIds.filter { it != 0 }.toIntArray()
        if (live.isNotEmpty()) GLES30.glDeleteTextures(live.size, live, 0)
        textureIds.fill(0)
        textureWidth = 0
        textureHeight = 0
    }

    private fun releaseAccumulator() {
        if (accumulatorBufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(accumulatorBufferId), 0)
            accumulatorBufferId = 0
        }
        accumulatorWidth = 0
        accumulatorRows = 0
    }

    private companion object {
        const val TAG = "DenoiseProfile"
        const val GLES31_MIN_SSBO_BYTES = 128L * 1024L * 1024L
    }
}
