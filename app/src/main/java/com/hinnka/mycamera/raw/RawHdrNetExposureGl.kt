package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Rect
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog

/** Fast Moments exposure for the exact linear frame consumed by the HDRNet coefficient model. */
internal class RawHdrNetExposureGl(context: Context) {
    private val model = RawHdrNetExposureModelGl(context.applicationContext)
    private var initialized = false
    private var meterProgram = 0
    private var brightnessProgram = 0
    private var finalProgram = 0
    private var meterTexture = 0
    private var exposureTexture = 0
    private var partialBrightness = 0
    private var sceneBrightness = 0
    private var meterUniforms = IntArray(0)
    private var brightnessExposureUniform = -1
    private var finalExposureUniform = -1
    private var compensationUniform = -1

    /** Returns a 1x1 RGBA32F texture containing short gain, HDR ratio, long gain and portrait gain. */
    fun prepare(
        profileTexture: Int,
        width: Int,
        height: Int,
        profileToLinearSrgb: FloatArray,
        metadata: RawMetadata,
        maxHdrRatio: Float,
        bounds: Rect? = null,
        boxedSourceWidth: Int = width,
        boxedSourceHeight: Int = height,
    ): Int {
        if (profileTexture == 0 || width <= 0 || height <= 0 ||
            boxedSourceWidth <= 0 || boxedSourceHeight <= 0 ||
            profileToLinearSrgb.size != 9 || !profileToLinearSrgb.all(Float::isFinite) ||
            metadata.iso <= 0 || metadata.shutterSpeed <= 0L ||
            !metadata.aperture.isFinite() || metadata.aperture <= 0f ||
            !metadata.exposureCompensation.isFinite()
        ) return 0
        val left = bounds?.left ?: 0
        val top = bounds?.top ?: 0
        val right = bounds?.right ?: width
        val bottom = bounds?.bottom ?: height
        if (left < 0 || top < 0 || right > width || bottom > height ||
            left >= right || top >= bottom || !initialize()
        ) return 0

        val deviceLimits = RawSceneExposureDeviceLimits.fromCamera2Ranges(
            metadata.maxExposureTimeNs, metadata.minimumSensitivityIso, metadata.maximumSensitivityIso,
        )
        val referenceIso = deviceLimits?.referenceSensitivityIso
            ?: RawSceneExposureMath.DNG_REFERENCE_SENSITIVITY_ISO
        val shutterMs = (metadata.shutterSpeed / 1_000_000.0).toFloat()
        val overallGain = metadata.iso.toFloat() / referenceIso.toFloat()
        val currentTet = shutterMs * overallGain
        val shotRange = RawSceneExposureMath.resolveMgcShotRange(
            shutterMs, overallGain, deviceLimits?.minTetMs ?: RawSceneExposureDeviceLimits.MIN_TET_MS,
        ) ?: return 0
        val aperture = metadata.aperture.toDouble()
        val exposureCoordinate = (
            referenceIso / (aperture * aperture * 14.6) * currentTet.toDouble() / 1000.0
            ).toFloat()
        if (!exposureCoordinate.isFinite() || exposureCoordinate <= 0f) return 0

        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        GLES31.glUseProgram(meterProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindSampler(0, 0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, profileTexture)
        GLES31.glUniform1i(meterUniforms[0], 0)
        GLES31.glUniform4i(meterUniforms[1], left, top, right, bottom)
        GLES31.glUniformMatrix3fv(
            meterUniforms[2], 1, false, RawToneMappingGl.transposeMatrix3x3(profileToLinearSrgb), 0,
        )
        GLES31.glUniform4i(meterUniforms[3], boxedSourceWidth, boxedSourceHeight, width, height)
        GLES31.glBindImageTexture(0, meterTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, partialBrightness)
        GLES31.glDispatchCompute(8, 8, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )

        GLES31.glUseProgram(brightnessProgram)
        GLES31.glUniform1f(brightnessExposureUniform, exposureCoordinate)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, sceneBrightness)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)

        val heads = model.run(meterTexture, sceneBrightness)
        if (heads == 0) return 0

        GLES31.glUseProgram(finalProgram)
        GLES31.glUniform4f(
            finalExposureUniform, currentTet, shotRange.minTetMs, shotRange.maxTetMs, shotRange.requestMinTetMs,
        )
        GLES31.glUniform2f(
            compensationUniform, metadata.exposureCompensation,
            RawSceneExposureMath.normalizeConfiguredMaxHdrRatio(maxHdrRatio),
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, heads)
        GLES31.glBindImageTexture(0, exposureTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        return if (checkGl("exposure dispatch")) exposureTexture else 0
    }

    private fun initialize(): Boolean {
        if (initialized) return exposureTexture != 0
        initialized = true
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAJOR_VERSION, limit, 0)
        val major = limit[0]
        GLES31.glGetIntegerv(GLES31.GL_MINOR_VERSION, limit, 0)
        if (major < 3 || (major == 3 && limit[0] < 1)) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, limit, 0)
        if (limit[0] < 4) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limit, 0)
        if (limit[0] < 4) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_TEXTURE_SIZE, limit, 0)
        if (limit[0] < 64) return false
        val blockLimit = LongArray(1)
        GLES31.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, blockLimit, 0)
        if (blockLimit[0] < 3L * 64 * 64 * 16 * Float.SIZE_BYTES) return false

        meterProgram = RawGlesProgram.compileCompute(METER_SHADER, "Fast Moments exposure metering")
        brightnessProgram = RawGlesProgram.compileCompute(BRIGHTNESS_SHADER, "Fast Moments scene brightness")
        finalProgram = RawGlesProgram.compileCompute(FINAL_SHADER, "Fast Moments exposure finalizer")
        if (meterProgram != 0 && brightnessProgram != 0 && finalProgram != 0) {
            meterUniforms = arrayOf("uProfile", "uBounds", "uProfileToSrgb", "uBoxGeometry").map {
                GLES31.glGetUniformLocation(meterProgram, it)
            }.toIntArray()
            brightnessExposureUniform = GLES31.glGetUniformLocation(brightnessProgram, "uNormalizedExposure")
            finalExposureUniform = GLES31.glGetUniformLocation(finalProgram, "uExposure")
            compensationUniform = GLES31.glGetUniformLocation(finalProgram, "uCompensationAndRatio")
            val textures = IntArray(2)
            GLES31.glGenTextures(textures.size, textures, 0)
            meterTexture = textures[0]
            exposureTexture = textures[1]
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            allocateTexture(meterTexture, 64)
            allocateTexture(exposureTexture, 1)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            val buffers = IntArray(2)
            GLES31.glGenBuffers(buffers.size, buffers, 0)
            partialBrightness = buffers[0]
            sceneBrightness = buffers[1]
            allocateBuffer(partialBrightness, 64 * Float.SIZE_BYTES)
            allocateBuffer(sceneBrightness, Float.SIZE_BYTES)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            if (textures.all { it != 0 } && buffers.all { it != 0 } && checkGl("resource allocation")) return true
        }
        release()
        initialized = true
        return false
    }

    private fun allocateTexture(texture: Int, side: Int) {
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glTexStorage2D(GLES31.GL_TEXTURE_2D, 1, GLES31.GL_RGBA32F, side, side)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MIN_FILTER, GLES31.GL_NEAREST)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MAG_FILTER, GLES31.GL_NEAREST)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_S, GLES31.GL_CLAMP_TO_EDGE)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_T, GLES31.GL_CLAMP_TO_EDGE)
    }

    private fun allocateBuffer(buffer: Int, bytes: Int) {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, bytes, null, GLES31.GL_DYNAMIC_COPY)
    }

    private fun checkGl(operation: String): Boolean {
        val error = GLES31.glGetError()
        if (error == GLES31.GL_NO_ERROR) return true
        PLog.e(TAG, "Fast Moments $operation failed format=RGBA32F GL=$error")
        return false
    }

    fun reset() {
        initialized = false
        meterProgram = 0
        brightnessProgram = 0
        finalProgram = 0
        meterTexture = 0
        exposureTexture = 0
        partialBrightness = 0
        sceneBrightness = 0
        model.reset()
    }

    fun release() {
        for (program in intArrayOf(meterProgram, brightnessProgram, finalProgram)) {
            if (program != 0) GLES31.glDeleteProgram(program)
        }
        GLES31.glDeleteTextures(2, intArrayOf(meterTexture, exposureTexture), 0)
        GLES31.glDeleteBuffers(2, intArrayOf(partialBrightness, sceneBrightness), 0)
        model.release()
        reset()
    }

    private companion object {
        const val TAG = "RawHdrNetExposureGl"

        val METER_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x=8, local_size_y=8) in;
            uniform highp sampler2D uProfile;
            uniform ivec4 uBounds;
            uniform mat3 uProfileToSrgb;
            uniform ivec4 uBoxGeometry;
            layout(rgba32f, binding=0) writeonly uniform highp image2D uMeter;
            layout(std430, binding=0) writeonly buffer BrightnessTiles { float brightnessTiles[64]; };
            shared float sums[64];

            void main() {
                ivec2 cell = ivec2(gl_GlobalInvocationID.xy);
                ivec2 extent = uBounds.zw - uBounds.xy;
                ivec2 first = uBounds.xy + cell * extent / 64;
                ivec2 last = min(uBounds.zw, max(first + 1, uBounds.xy + (cell + 1) * extent / 64));
                ivec2 originalSize = uBoxGeometry.xy;
                ivec2 reducedSize = uBoxGeometry.zw;
                // Recover each source area when the input consists of integer box means.
                // An upsampled box can duplicate original pixels and cannot be inverted.
                bool weighted = all(greaterThanEqual(originalSize, reducedSize)) &&
                    any(notEqual(originalSize, reducedSize));
                vec3 sum = vec3(0.0);
                int count = 0;
                for (int y = first.y; y < last.y; ++y) {
                    int rows = weighted ? (y + 1) * originalSize.y / reducedSize.y -
                        y * originalSize.y / reducedSize.y : 1;
                    for (int x = first.x; x < last.x; ++x) {
                        int columns = weighted ? (x + 1) * originalSize.x / reducedSize.x -
                            x * originalSize.x / reducedSize.x : 1;
                        int area = rows * columns;
                        sum += texelFetch(uProfile, ivec2(x, y), 0).rgb * float(area);
                        count += area;
                    }
                }
                vec3 rgb = clamp(uProfileToSrgb * (sum / float(count)), 0.0, 1.0);
                rgb = floor(rgb * 32767.0 + 0.5) / 32768.0;
                imageStore(uMeter, cell, vec4(rgb, 1.0));
                int lane = int(gl_LocalInvocationIndex);
                sums[lane] = log(max(max(rgb.r, rgb.g), rgb.b) + 10.0 / 32768.0);
                barrier();
                for (int step = 32; step > 0; step /= 2) {
                    if (lane < step) sums[lane] += sums[lane + step];
                    barrier();
                }
                if (lane == 0) brightnessTiles[gl_WorkGroupID.y * 8u + gl_WorkGroupID.x] = sums[0];
            }
        """.trimIndent()

        val BRIGHTNESS_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x=64) in;
            uniform float uNormalizedExposure;
            layout(std430, binding=0) readonly buffer BrightnessTiles { float brightnessTiles[64]; };
            layout(std430, binding=1) writeonly buffer Scene { float logSceneBrightness; };
            shared float sums[64];

            void main() {
                int lane = int(gl_LocalInvocationIndex);
                sums[lane] = brightnessTiles[lane];
                barrier();
                for (int step = 32; step > 0; step /= 2) {
                    if (lane < step) sums[lane] += sums[lane + step];
                    barrier();
                }
                if (lane == 0) {
                    float signal = max(exp(sums[0] / 4096.0) - 10.0 / 32768.0, 0.0);
                    logSceneBrightness = log(signal / uNormalizedExposure + 1e-4);
                }
            }
        """.trimIndent()

        val FINAL_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x=1) in;
            layout(std430, binding=0) readonly buffer HeadResults { float headLogit[3]; };
            layout(rgba32f, binding=0) writeonly uniform highp image2D uResult;
            uniform vec4 uExposure;
            uniform vec2 uCompensationAndRatio;

            void main() {
                float current = uExposure.x;
                vec3 ideal = (exp(vec3(headLogit[0], headLogit[1], headLogit[2])) - 1e-6) * current;
                // The linear RGB surface has no sensor-CFA clipping predicate. The
                // Fast Moments RGB contract uses a safe underexposure of one here.
                float minimum = max(uExposure.w, uExposure.y / 1.1);
                float maximum = uExposure.z;
                float compensation = exp2(uCompensationAndRatio.x);
                float maxRatio = uCompensationAndRatio.y;
                float shortTet = clamp(min(ideal.x, min(ideal.y, ideal.z)) * compensation, minimum, maximum);
                float longTet = clamp(ideal.y * compensation, minimum, maximum);
                float reduction = sqrt(max(longTet / (shortTet * maxRatio), 1.0));
                shortTet *= reduction;
                longTet /= reduction;
                float portraitTet = clamp(ideal.z * (longTet / ideal.y), minimum, maximum);
                float preserved = max(max(ideal.x, minimum), longTet / max(maxRatio, 24.0));
                shortTet = min(min(shortTet, preserved), min(longTet, portraitTet));
                imageStore(uResult, ivec2(0), vec4(shortTet / current, longTet / shortTet,
                    longTet / current, portraitTet / current));
            }
        """.trimIndent()
    }
}
