package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import android.opengl.Matrix
import com.hinnka.mycamera.utils.PLog
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

object DarktableFilmicHighlightReconstructionShaders {
    const val RECONSTRUCT_RGB = 0
    const val RECONSTRUCT_RATIOS = 1
    const val MAX_NUM_SCALES = 10
    const val BSPLINE_FSIZE = 5
    const val NORM_MIN = 1.52587890625e-05f

    private const val COMMON = """
        precision highp float;
        precision highp int;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform mat4 uTexMatrix;

        vec4 fetchPixel(sampler2D tex, ivec2 coord) {
            return texelFetch(tex, coord, 0);
        }

        float fetchSingle(sampler2D tex, ivec2 coord) {
            return texelFetch(tex, coord, 0).r;
        }

        float clipf(float a) {
            return clamp(a, 0.0, 1.0);
        }

        vec4 clip4(vec4 a) {
            return clamp(a, vec4(0.0), vec4(1.0));
        }

        float fmaxabsf(float a, float b) {
            return (abs(a) > abs(b) && !isnan(a)) ? a : (isnan(b) ? 0.0 : b);
        }

        ivec2 pixelCoord() {
            return ivec2(gl_FragCoord.xy);
        }
    """

    private val PREPARE_INPUT = """
        uniform float uProfileExposureLinearGain;
        uniform mat3 uProfileToEngineTransform;

        ${DngProfileGainTableRenderShader.GLSL}

        vec3 prepareFilmicInput(vec3 color) {
            color = applyProfileGainTableMap(color);
            return uProfileToEngineTransform * (color * uProfileExposureLinearGain);
        }
    """

    private const val DARKTABLE_NOISE = """
        const float DT_PI = 3.1415926535897932384626433832795;
        const float DT_FLT_MIN = 1.1754943508222875e-38;
        const float DT_UINT24_SCALE = 5.960464477539063e-8;

        uvec2 xor64(uvec2 a, uvec2 b) {
            return uvec2(a.x ^ b.x, a.y ^ b.y);
        }

        uvec2 shr64(uvec2 v, int shift) {
            if (shift == 0) return v;
            if (shift < 32) {
                return uvec2((v.x >> shift) | (v.y << (32 - shift)), v.y >> shift);
            }
            return uvec2(v.y >> (shift - 32), 0u);
        }

        uvec2 mul32Wide(uint a, uint b) {
            const uint mask = 0xffffu;
            uint a0 = a & mask;
            uint a1 = a >> 16;
            uint b0 = b & mask;
            uint b1 = b >> 16;
            uint p0 = a0 * b0;
            uint p1 = a0 * b1;
            uint p2 = a1 * b0;
            uint p3 = a1 * b1;
            uint mid = (p0 >> 16) + (p1 & mask) + (p2 & mask);
            uint lo = (p0 & mask) | (mid << 16);
            uint hi = p3 + (p1 >> 16) + (p2 >> 16) + (mid >> 16);
            return uvec2(lo, hi);
        }

        uvec2 mul64(uvec2 a, uvec2 b) {
            uvec2 p0 = mul32Wide(a.x, b.x);
            uvec2 p1 = mul32Wide(a.x, b.y);
            uvec2 p2 = mul32Wide(a.y, b.x);
            return uvec2(p0.x, p0.y + p1.x + p2.x);
        }

        uint splitmix32(uint seed) {
            uvec2 result = uvec2(seed, 0u);
            result = xor64(result, shr64(result, 33));
            result = mul64(result, uvec2(0x799705f5u, 0x62a9d9edu));
            result = xor64(result, shr64(result, 28));
            result = mul64(result, uvec2(0xc88c35b3u, 0xcb24d0a5u));
            return result.y;
        }

        uint rol32(uint x, int k) {
            return (x << k) | (x >> (32 - k));
        }

        float xoshiro128plus(inout uint s0, inout uint s1, inout uint s2, inout uint s3) {
            uint result = s0 + s3;
            uint t = s1 << 9;

            s2 ^= s0;
            s3 ^= s1;
            s1 ^= s2;
            s0 ^= s3;

            s2 ^= t;
            s3 = rol32(s3, 11);

            return float(result >> 8) * DT_UINT24_SCALE;
        }

        vec3 gaussianNoise(vec3 mu, vec3 sigma, ivec2 coord) {
            uint x = uint(coord.x);
            uint y = uint(coord.y);
            uint s0 = splitmix32(x + 1u);
            uint s1 = splitmix32((x + 1u) * (y + 3u));
            uint s2 = splitmix32(1337u);
            uint s3 = splitmix32(666u);

            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);

            vec3 u1 = vec3(
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3)
            );
            vec3 u2 = vec3(
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3)
            );

            u1 = max(u1, vec3(DT_FLT_MIN));
            vec3 root = sqrt(-2.0 * log(u1));
            vec3 noise = vec3(
                root.x * cos(2.0 * DT_PI * u2.x),
                root.y * sin(2.0 * DT_PI * u2.y),
                root.z * cos(2.0 * DT_PI * u2.z)
            );
            return noise * sigma + mu;
        }
    """

    val MASK_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON
        $PREPARE_INPUT

        uniform sampler2D uInputTexture;
        uniform float uNormalize;
        uniform float uFeathering;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 source = fetchPixel(uInputTexture, coord);
            vec3 i = prepareFilmicInput(source.rgb);
            float pixMax = max(sqrt(dot(i, i)), 0.0);
            float argument = -pixMax * uNormalize + uFeathering;
            float weight = clipf(1.0 / (1.0 + exp2(argument)));
            fragColor = vec4(weight, weight, weight, 1.0);
        }
    """.trimIndent()

    val INPAINT_NOISE_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON
        $PREPARE_INPUT
        $DARKTABLE_NOISE

        uniform sampler2D uInputTexture;
        uniform sampler2D uMaskTexture;
        uniform float uNoiseLevel;
        uniform float uThreshold;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 source = fetchPixel(uInputTexture, coord);
            vec3 i = prepareFilmicInput(source.rgb);
            vec3 sigma = i * uNoiseLevel / uThreshold;
            vec3 noise = gaussianNoise(i, sigma, coord);
            float weight = fetchSingle(uMaskTexture, coord);
            vec3 o = max(i * (1.0 - weight) + weight * noise, vec3(0.0));
            fragColor = vec4(o, source.a);
        }
    """.trimIndent()

    val INIT_RECONSTRUCT_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform sampler2D uMaskTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float weight = 1.0 - fetchSingle(uMaskTexture, coord);
            vec4 o = max(i * weight, vec4(0.0));
            o.a = i.a;
            fragColor = o;
        }
    """.trimIndent()

    val BSPLINE_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform int uWidth;
        uniform int uHeight;
        uniform int uMult;
        uniform int uDirection;

        vec4 sampleClamped(ivec2 coord) {
            ivec2 clampedCoord = clamp(coord, ivec2(0), ivec2(uWidth - 1, uHeight - 1));
            return fetchPixel(uInputTexture, clampedCoord);
        }

        void main() {
            ivec2 coord = pixelCoord();
            ivec2 stepCoord = (uDirection == 0) ? ivec2(0, uMult) : ivec2(uMult, 0);
            vec4 result =
                (1.0 / 16.0) * sampleClamped(coord - 2 * stepCoord) +
                (4.0 / 16.0) * sampleClamped(coord - stepCoord) +
                (6.0 / 16.0) * sampleClamped(coord) +
                (4.0 / 16.0) * sampleClamped(coord + stepCoord) +
                (1.0 / 16.0) * sampleClamped(coord + 2 * stepCoord);
            fragColor = max(result, vec4(0.0));
        }
    """.trimIndent()

    val HIGH_FREQUENCY_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uDetailTexture;
        uniform sampler2D uLowFrequencyTexture;

        void main() {
            ivec2 coord = pixelCoord();
            fragColor = fetchPixel(uDetailTexture, coord) - fetchPixel(uLowFrequencyTexture, coord);
        }
    """.trimIndent()

    val WAVELETS_RECONSTRUCT_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uHighFrequencyTexture;
        uniform sampler2D uLowFrequencyTexture;
        uniform sampler2D uTextureTexture;
        uniform sampler2D uMaskTexture;
        uniform sampler2D uReconstructedTexture;
        uniform float uGamma;
        uniform float uGammaComp;
        uniform float uBeta;
        uniform float uBetaComp;
        uniform float uDelta;
        uniform int uScaleIndex;
        uniform int uScaleCount;
        uniform int uVariant;

        void main() {
            ivec2 coord = pixelCoord();
            float alpha = fetchSingle(uMaskTexture, coord);
            vec4 hf = fetchPixel(uHighFrequencyTexture, coord);
            vec4 lf = fetchPixel(uLowFrequencyTexture, coord);
            vec4 tt = fetchPixel(uTextureTexture, coord);

            vec4 details;
            vec4 residual;
            if (uVariant == 0) {
                float greyTexture = fmaxabsf(fmaxabsf(tt.r, tt.g), tt.b);
                float greyDetails = (hf.r + hf.g + hf.b) / 3.0;
                float greyHf = uBetaComp * (uGammaComp * greyDetails + uGamma * greyTexture);
                float greyResidual = uBetaComp * (lf.r + lf.g + lf.b) / 3.0;
                details = (uGammaComp * hf + uGamma * tt) * uBeta + greyHf;
                residual = (uScaleIndex == uScaleCount - 1) ? greyResidual + lf * uBeta : vec4(0.0);
            } else {
                float greyTexture = fmaxabsf(fmaxabsf(tt.r, tt.g), tt.b);
                float greyDetails = (hf.r + hf.g + hf.b) / 3.0;
                float greyHf = uGammaComp * greyDetails + uGamma * greyTexture;
                details = 0.5 * ((uGammaComp * hf + uGamma * tt) + greyHf);
                residual = (uScaleIndex == uScaleCount - 1) ? lf : vec4(0.0);
            }

            vec4 reconstructed = fetchPixel(uReconstructedTexture, coord);
            fragColor = reconstructed + alpha * (uDelta * details + residual);
        }
    """.trimIndent()

    val COMPUTE_NORMS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float norm = max(sqrt(dot(i.rgb, i.rgb)), $NORM_MIN);
            fragColor = vec4(norm, norm, norm, 1.0);
        }
    """.trimIndent()

    val COMPUTE_RATIOS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform sampler2D uNormsTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float norm = max(fetchSingle(uNormsTexture, coord), $NORM_MIN);
            fragColor = i / norm;
        }
    """.trimIndent()

    val RESTORE_RATIOS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uRatiosTexture;
        uniform sampler2D uNormsTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 ratio = fetchPixel(uRatiosTexture, coord);
            float norm = fetchSingle(uNormsTexture, coord);
            fragColor = clip4(ratio) * norm;
        }
    """.trimIndent()
}

internal class DarktableFilmicHighlightReconstructionAlgorithm(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val sourceTextureId: Int,
        val width: Int,
        val height: Int,
        val rawToneMappingParameters: RawToneMappingParameters,
        val profileExposureEv: Float,
        val profileExposureLinearGain: Float,
        val bindPreparedInput: (programId: Int) -> Unit,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var maskProgram = 0
    private var inpaintNoiseProgram = 0
    private var initReconstructProgram = 0
    private var bsplineProgram = 0
    private var highFrequencyProgram = 0
    private var waveletsReconstructProgram = 0
    private var computeNormsProgram = 0
    private var computeRatiosProgram = 0
    private var restoreRatiosProgram = 0

    private var framebufferWidth = 0
    private var framebufferHeight = 0
    private var maskTextureId = 0
    private var maskFramebufferId = 0
    private var workingTextureId = 0
    private var workingFramebufferId = 0
    private var tempTextureId = 0
    private var tempFramebufferId = 0
    private var lfEvenTextureId = 0
    private var lfEvenFramebufferId = 0
    private var lfOddTextureId = 0
    private var lfOddFramebufferId = 0
    private var highFrequencyTextureId = 0
    private var highFrequencyFramebufferId = 0
    private var highFrequencyRgbTextureId = 0
    private var highFrequencyRgbFramebufferId = 0
    private var normsTextureId = 0
    private var normsFramebufferId = 0
    private val reconstructedTextureIds = intArrayOf(0, 0)
    private val reconstructedFramebufferIds = intArrayOf(0, 0)

    fun initialize(): Boolean {
        if (maskProgram == 0) maskProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.MASK_FRAGMENT_SHADER,
            "DarktableFilmicHrMask",
        )
        if (inpaintNoiseProgram == 0) inpaintNoiseProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.INPAINT_NOISE_FRAGMENT_SHADER,
            "DarktableFilmicHrInpaintNoise",
        )
        if (initReconstructProgram == 0) initReconstructProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.INIT_RECONSTRUCT_FRAGMENT_SHADER,
            "DarktableFilmicHrInitReconstruct",
        )
        if (bsplineProgram == 0) bsplineProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.BSPLINE_FRAGMENT_SHADER,
            "DarktableFilmicHrBspline",
        )
        if (highFrequencyProgram == 0) highFrequencyProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.HIGH_FREQUENCY_FRAGMENT_SHADER,
            "DarktableFilmicHrHighFrequency",
        )
        if (waveletsReconstructProgram == 0) waveletsReconstructProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.WAVELETS_RECONSTRUCT_FRAGMENT_SHADER,
            "DarktableFilmicHrWaveletsReconstruct",
        )
        if (computeNormsProgram == 0) computeNormsProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.COMPUTE_NORMS_FRAGMENT_SHADER,
            "DarktableFilmicHrComputeNorms",
        )
        if (computeRatiosProgram == 0) computeRatiosProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.COMPUTE_RATIOS_FRAGMENT_SHADER,
            "DarktableFilmicHrComputeRatios",
        )
        if (restoreRatiosProgram == 0) restoreRatiosProgram = quad.createProgram(
            DarktableFilmicHighlightReconstructionShaders.RESTORE_RATIOS_FRAGMENT_SHADER,
            "DarktableFilmicHrRestoreRatios",
        )
        return programs().all { it != 0 }
    }

    fun execute(input: Input): Output? {
        val textureId = render(input)
        return textureId.takeIf { it != 0 }?.let { Output(it, input.width, input.height) }
    }

    fun release() {
        programs().forEach { program -> if (program != 0) GLES30.glDeleteProgram(program) }
        maskProgram = 0
        inpaintNoiseProgram = 0
        initReconstructProgram = 0
        bsplineProgram = 0
        highFrequencyProgram = 0
        waveletsReconstructProgram = 0
        computeNormsProgram = 0
        computeRatiosProgram = 0
        restoreRatiosProgram = 0
        releaseFramebuffers()
    }

    fun releaseFramebuffers() {
        deleteTarget(maskTextureId, maskFramebufferId)
        deleteTarget(workingTextureId, workingFramebufferId)
        deleteTarget(tempTextureId, tempFramebufferId)
        deleteTarget(lfEvenTextureId, lfEvenFramebufferId)
        deleteTarget(lfOddTextureId, lfOddFramebufferId)
        deleteTarget(highFrequencyTextureId, highFrequencyFramebufferId)
        deleteTarget(highFrequencyRgbTextureId, highFrequencyRgbFramebufferId)
        deleteTarget(normsTextureId, normsFramebufferId)
        reconstructedTextureIds.indices.forEach { index ->
            deleteTarget(reconstructedTextureIds[index], reconstructedFramebufferIds[index])
            reconstructedTextureIds[index] = 0
            reconstructedFramebufferIds[index] = 0
        }
        maskTextureId = 0
        maskFramebufferId = 0
        workingTextureId = 0
        workingFramebufferId = 0
        tempTextureId = 0
        tempFramebufferId = 0
        lfEvenTextureId = 0
        lfEvenFramebufferId = 0
        lfOddTextureId = 0
        lfOddFramebufferId = 0
        highFrequencyTextureId = 0
        highFrequencyFramebufferId = 0
        highFrequencyRgbTextureId = 0
        highFrequencyRgbFramebufferId = 0
        normsTextureId = 0
        normsFramebufferId = 0
        framebufferWidth = 0
        framebufferHeight = 0
    }

    private fun setupFramebuffers(width: Int, height: Int) {
        if (framebufferWidth == width && framebufferHeight == height &&
            maskFramebufferId != 0 && reconstructedFramebufferIds.all { it != 0 }
        ) return
        releaseFramebuffers()
        framebufferWidth = width
        framebufferHeight = height
        createTarget(width, height, GLES30.GL_R16F, "Mask").also {
            maskTextureId = it.first; maskFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "Working").also {
            workingTextureId = it.first; workingFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "Temp").also {
            tempTextureId = it.first; tempFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "LfEven").also {
            lfEvenTextureId = it.first; lfEvenFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "LfOdd").also {
            lfOddTextureId = it.first; lfOddFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "HighFrequency").also {
            highFrequencyTextureId = it.first; highFrequencyFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_RGBA16F, "HighFrequencyRgb").also {
            highFrequencyRgbTextureId = it.first; highFrequencyRgbFramebufferId = it.second
        }
        createTarget(width, height, GLES30.GL_R16F, "Norms").also {
            normsTextureId = it.first; normsFramebufferId = it.second
        }
        reconstructedTextureIds.indices.forEach { index ->
            createTarget(width, height, GLES30.GL_RGBA16F, "Reconstructed$index").also {
                reconstructedTextureIds[index] = it.first
                reconstructedFramebufferIds[index] = it.second
            }
        }
        RawGlesProgram.logErrors("Darktable Filmic HR framebuffers")
    }

    private fun createTarget(width: Int, height: Int, format: Int, label: String): Pair<Int, Int> {
        val textures = IntArray(1)
        val framebuffers = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textures[0],
            0,
        )
        check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
            GLES30.GL_FRAMEBUFFER_COMPLETE) { "Darktable Filmic HR $label framebuffer incomplete" }
        return textures[0] to framebuffers[0]
    }

    private fun deleteTarget(textureId: Int, framebufferId: Int) {
        if (textureId != 0) GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        if (framebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
    }

    private fun programs(): IntArray = intArrayOf(
        maskProgram,
        inpaintNoiseProgram,
        initReconstructProgram,
        bsplineProgram,
        highFrequencyProgram,
        waveletsReconstructProgram,
        computeNormsProgram,
        computeRatiosProgram,
        restoreRatiosProgram,
    )

    private fun render(input: Input): Int {
        val sourceTextureId = input.sourceTextureId
        val width = input.width
        val height = input.height
        val rawToneMappingParameters = input.rawToneMappingParameters
        val profileExposureEv = input.profileExposureEv
        val profileExposureLinearGain = input.profileExposureLinearGain
        if (!initialize()) {
            PLog.e(TAG, "Darktable Filmic highlight reconstruction programs unavailable")
            return 0
        }

        setupFramebuffers(width, height)

        val normalizedTone = rawToneMappingParameters.normalized()
        val reconstructThreshold = max(
            2.0f.pow(
                normalizedTone.filmicWhiteRelativeExposure +
                    RECONSTRUCT_THRESHOLD_EV
            ) * FILMIC_GREY_SOURCE,
            1e-8f
        )
        val reconstructFeather = 2.0f.pow(12f / RECONSTRUCT_FEATHER_EV)
        val normalize = reconstructFeather / reconstructThreshold
        val scales = darktableFilmicHighlightScaleCount(width, height)

        PLog.d(
            TAG,
            "Darktable Filmic highlight reconstruction: ${width}x$height " +
                "scales=$scales whiteSourceEv=${normalizedTone.filmicWhiteRelativeExposure} " +
                "threshold=$reconstructThreshold exposureEv=${profileExposureEv} " +
                "exposureGain=${profileExposureLinearGain} " +
                "feather=$reconstructFeather"
        )

        renderFilmicHrPass(
            program = maskProgram,
            framebufferId = maskFramebufferId,
            width = width,
            height = height,
            label = "darktableFilmicHrMask"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, sourceTextureId)
            input.bindPreparedInput(program)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uNormalize"), normalize)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uFeathering"), reconstructFeather)
        }

        renderFilmicHrPass(
            program = inpaintNoiseProgram,
            framebufferId = workingFramebufferId,
            width = width,
            height = height,
            label = "darktableFilmicHrInpaintNoise"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, sourceTextureId)
            bindFilmicHrTexture(program, "uMaskTexture", 1, maskTextureId)
            input.bindPreparedInput(program)
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uNoiseLevel"),
                NOISE_LEVEL
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uThreshold"), reconstructThreshold)
        }

        var reconstructedTextureId = reconstructDarktableFilmicHighlightsWavelets(
            inputTextureId = workingTextureId,
            width = width,
            height = height,
            scales = scales,
            variant = DarktableFilmicHighlightReconstructionShaders.RECONSTRUCT_RGB
        )

        repeat(HIGH_QUALITY_ITERATIONS) {
            renderFilmicHrPass(
                program = computeNormsProgram,
                framebufferId = normsFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrComputeNorms"
            ) { program ->
                bindFilmicHrTexture(program, "uInputTexture", 0, reconstructedTextureId)
            }
            renderFilmicHrPass(
                program = computeRatiosProgram,
                framebufferId = workingFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrComputeRatios"
            ) { program ->
                bindFilmicHrTexture(program, "uInputTexture", 0, reconstructedTextureId)
                bindFilmicHrTexture(program, "uNormsTexture", 1, normsTextureId)
            }
            reconstructedTextureId = reconstructDarktableFilmicHighlightsWavelets(
                inputTextureId = workingTextureId,
                width = width,
                height = height,
                scales = scales,
                variant = DarktableFilmicHighlightReconstructionShaders.RECONSTRUCT_RATIOS
            )
            reconstructedTextureId = restoreDarktableFilmicHighlightRatios(
                ratiosTextureId = reconstructedTextureId,
                width = width,
                height = height
            )
        }

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        RawGlesProgram.logErrors("renderDarktableFilmicHighlightReconstruction")
        return reconstructedTextureId
    }

    private fun darktableFilmicHighlightScaleCount(width: Int, height: Int): Int {
        val size = max(width, height).coerceAtLeast(1).toDouble()
        val filterSize = DarktableFilmicHighlightReconstructionShaders.BSPLINE_FSIZE.toDouble()
        val argument = (2.0 * size / ((filterSize - 1.0) * filterSize)) - 1.0
        val scales = floor(ln(max(argument, 1.0)) / ln(2.0)).toInt()
        return scales.coerceIn(1, DarktableFilmicHighlightReconstructionShaders.MAX_NUM_SCALES)
    }

    private fun reconstructDarktableFilmicHighlightsWavelets(
        inputTextureId: Int,
        width: Int,
        height: Int,
        scales: Int,
        variant: Int,
    ): Int {
        renderFilmicHrPass(
            program = initReconstructProgram,
            framebufferId = reconstructedFramebufferIds[0],
            width = width,
            height = height,
            label = "darktableFilmicHrInitReconstruct"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, inputTextureId)
            bindFilmicHrTexture(program, "uMaskTexture", 1, maskTextureId)
        }

        var reconstructedReadIndex = 0
        var previousLowFrequencyTextureId = 0
        for (scale in 0 until scales) {
            val detailTextureId = if (scale == 0) inputTextureId else previousLowFrequencyTextureId
            val lowFrequencyTextureId = if (scale % 2 == 0) {
                lfOddTextureId
            } else {
                lfEvenTextureId
            }
            val lowFrequencyFramebufferId = if (scale % 2 == 0) {
                lfOddFramebufferId
            } else {
                lfEvenFramebufferId
            }
            val mult = 1 shl scale

            renderDarktableFilmicBsplineBlur(
                inputTextureId = detailTextureId,
                outputFramebufferId = lowFrequencyFramebufferId,
                width = width,
                height = height,
                mult = mult,
                label = "darktableFilmicHrLfScale$scale"
            )
            renderFilmicHrPass(
                program = highFrequencyProgram,
                framebufferId = highFrequencyFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrHighFrequency$scale"
            ) { program ->
                bindFilmicHrTexture(program, "uDetailTexture", 0, detailTextureId)
                bindFilmicHrTexture(program, "uLowFrequencyTexture", 1, lowFrequencyTextureId)
            }
            renderDarktableFilmicBsplineBlur(
                inputTextureId = highFrequencyTextureId,
                outputFramebufferId = highFrequencyRgbFramebufferId,
                width = width,
                height = height,
                mult = 1,
                label = "darktableFilmicHrHighFrequencyRgb$scale"
            )

            val reconstructedWriteIndex = 1 - reconstructedReadIndex
            renderFilmicHrPass(
                program = waveletsReconstructProgram,
                framebufferId = reconstructedFramebufferIds[reconstructedWriteIndex],
                width = width,
                height = height,
                label = "darktableFilmicHrWaveletsReconstruct$scale"
            ) { program ->
                bindFilmicHrTexture(program, "uHighFrequencyTexture", 0, highFrequencyRgbTextureId)
                bindFilmicHrTexture(program, "uLowFrequencyTexture", 1, lowFrequencyTextureId)
                bindFilmicHrTexture(program, "uTextureTexture", 2, highFrequencyTextureId)
                bindFilmicHrTexture(program, "uMaskTexture", 3, maskTextureId)
                bindFilmicHrTexture(
                    program,
                    "uReconstructedTexture",
                    4,
                    reconstructedTextureIds[reconstructedReadIndex]
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uGamma"), GAMMA)
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(program, "uGammaComp"),
                    GAMMA_COMP
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uBeta"), BETA)
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(program, "uBetaComp"),
                    BETA_COMP
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uDelta"), DELTA)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uScaleIndex"), scale)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uScaleCount"), scales)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uVariant"), variant)
            }

            reconstructedReadIndex = reconstructedWriteIndex
            previousLowFrequencyTextureId = lowFrequencyTextureId
        }

        return reconstructedTextureIds[reconstructedReadIndex]
    }

    private fun renderDarktableFilmicBsplineBlur(
        inputTextureId: Int,
        outputFramebufferId: Int,
        width: Int,
        height: Int,
        mult: Int,
        label: String,
    ) {
        renderFilmicHrPass(
            program = bsplineProgram,
            framebufferId = tempFramebufferId,
            width = width,
            height = height,
            label = "$label-vertical"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, inputTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uWidth"), width)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHeight"), height)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uMult"), mult)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDirection"), 0)
        }
        renderFilmicHrPass(
            program = bsplineProgram,
            framebufferId = outputFramebufferId,
            width = width,
            height = height,
            label = "$label-horizontal"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, tempTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uWidth"), width)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHeight"), height)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uMult"), mult)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDirection"), 1)
        }
    }

    private fun restoreDarktableFilmicHighlightRatios(
        ratiosTextureId: Int,
        width: Int,
        height: Int,
    ): Int {
        val outputIndex = if (ratiosTextureId == reconstructedTextureIds[0]) 1 else 0
        renderFilmicHrPass(
            program = restoreRatiosProgram,
            framebufferId = reconstructedFramebufferIds[outputIndex],
            width = width,
            height = height,
            label = "darktableFilmicHrRestoreRatios"
        ) { program ->
            bindFilmicHrTexture(program, "uRatiosTexture", 0, ratiosTextureId)
            bindFilmicHrTexture(program, "uNormsTexture", 1, normsTextureId)
        }
        return reconstructedTextureIds[outputIndex]
    }

    private fun renderFilmicHrPass(
        program: Int,
        framebufferId: Int,
        width: Int,
        height: Int,
        label: String,
        bindUniforms: (Int) -> Unit,
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(program)

        val identityMatrix = FloatArray(16)
        Matrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(program, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        bindUniforms(program)
        quad.draw(program)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        RawGlesProgram.logErrors(label)
    }

    private fun bindFilmicHrTexture(program: Int, name: String, unit: Int, textureId: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, name), unit)
    }

    private companion object {
        const val TAG = "DarktableFilmicHighlightReconstruction"
        const val FILMIC_GREY_SOURCE = 0.1845f
        const val RECONSTRUCT_THRESHOLD_EV = 0f
        const val RECONSTRUCT_FEATHER_EV = 3f
        const val NOISE_LEVEL = 0.2f
        const val GAMMA = 0.5f
        const val GAMMA_COMP = 0.5f
        const val BETA = 1f
        const val BETA_COMP = 0f
        const val DELTA = 1f
        const val HIGH_QUALITY_ITERATIONS = 1
    }
}
