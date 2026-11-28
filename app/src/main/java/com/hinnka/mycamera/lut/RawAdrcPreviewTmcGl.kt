package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.utils.PLog

/** TMC12, GTM10 and LTM14 curve generation for the current RAW preview frame. */
internal class RawAdrcPreviewTmcGl {
    private var program = 0
    private var exposureUniform = -1
    private var initializationFailed = false
    var curveTexture = 0
        private set

    fun prepare(statisticsBuffer: Int, metadata: RawMetadata): Boolean {
        if (statisticsBuffer == 0 || !initialize()) return false

        val shutterMs = if (metadata.shutterSpeed > 0L) metadata.shutterSpeed / 1_000_000.0 else 10.0
        val aperture = metadata.aperture.takeIf { it.isFinite() && it > 0f } ?: 1.8f
        val iso = metadata.iso.takeIf { it > 0 } ?: 100
        val apertureScale = 1.8 / aperture
        // Physical exposure uses shutter × ISO / aperture², expressed at ISO 100 and f/1.8.
        val exposureMs = (shutterMs * (iso / 100.0) * apertureScale * apertureScale).toFloat()
        if (!exposureMs.isFinite() || exposureMs <= 0f) return false
        GLES31.glUseProgram(program)
        val compensationEv = metadata.exposureCompensation.takeIf(Float::isFinite)?.coerceIn(-3f, 3f) ?: 0f
        GLES31.glUniform2f(exposureUniform, exposureMs, compensationEv)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, statisticsBuffer)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        GLES31.glBindImageTexture(0, curveTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e("RawAdrcTmc12", "TMC12/GTM/LTM curve dispatch failed: GL error $error")
            release()
            initializationFailed = true
            return false
        }
        return true
    }

    fun reset() {
        program = 0
        exposureUniform = -1
        curveTexture = 0
        initializationFailed = false
    }

    fun release() {
        if (program != 0) GLES31.glDeleteProgram(program)
        if (curveTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(curveTexture), 0)
        reset()
    }

    private fun initialize(): Boolean {
        if (program != 0) return true
        if (initializationFailed) return false
        program = RawGlesProgram.compileCompute(COMPUTE_SHADER, "RawAdrcTmc12")
        if (program == 0) {
            initializationFailed = true
            return false
        }

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        curveTexture = textures[0]
        if (curveTexture == 0) {
            release()
            initializationFailed = true
            return false
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTexture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA32F, 65, 1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e("RawAdrcTmc12", "Cannot allocate RGBA32F tone texture: GL error $error")
            release()
            initializationFailed = true
            return false
        }

        GLES31.glUseProgram(program)
        exposureUniform = GLES31.glGetUniformLocation(program, "uExposure")
        GLES31.glUniform4iv(GLES31.glGetUniformLocation(program, "uCodeTables[0]"), CODE_TABLES.size / 4, CODE_TABLES, 0)
        return true
    }

    private companion object {
        private val CODE_TABLES = RAW_ADRC_CAMX_GTM_X + RAW_ADRC_CAMX_GAMMA16 + intArrayOf(0, 0)
        private val COMPUTE_SHADER = """#version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 128) in;

            layout(std430, binding = 0) readonly buffer Statistics {
                vec4 metering;
                vec4 exposurePercentiles;
                float rawHist[1024];
            };
            layout(rgba32f, binding = 0) writeonly uniform highp image2D uCurves;
            uniform vec2 uExposure;
            uniform ivec4 uCodeTables[33];
            const int GTM_OFFSET = 0;
            const int GAMMA16_OFFSET = 65;
            const int HISTOGRAM_BINS = 1024;
            const int BINS_PER_LANE = 8;
            const float SENSOR_FULL_SCALE = 16383.0;
            const float MAX_ADRC_GAIN = 5.0;
            shared vec4 sums[128];
            shared float prefixes[128];
            shared vec2 knots[5];
            shared float slopes[5];
            shared vec2 percentages;
            shared float gtmGain[65];
            shared float ltmScale[65];
            shared float diagnostics[8];

            float tableCode(int offset, int point) {
                int index = offset + point;
                ivec4 codes = uCodeTables[index / 4];
                int channel = index % 4;
                if (channel == 0) return float(codes.x);
                if (channel == 1) return float(codes.y);
                if (channel == 2) return float(codes.z);
                return float(codes.w);
            }

            float binCenter(int index) {
                if (index < 512) return float(4 * index + 2);
                if (index < 640) return float(2048 + 16 * (index - 512) + 8);
                if (index < 1023) return float(4096 + 32 * (index - 640) + 16);
                return SENSOR_FULL_SCALE;
            }

            void reduceSums(int lane, vec4 initialValue) {
                sums[lane] = initialValue;
                barrier();
                for (int offset = 64; offset > 0; offset /= 2) {
                    if (lane < offset) sums[lane] += sums[lane + offset];
                    barrier();
                }
            }

            float gamma16Encode(float linear) {
                float point = clamp(linear, 0.0, 1.0) * 64.0;
                int first = min(int(point), 63);
                return mix(tableCode(GAMMA16_OFFSET, first), tableCode(GAMMA16_OFFSET, first + 1), point - float(first)) / 1024.0;
            }

            float gamma16Decode(float encoded) {
                float code = clamp(encoded, 0.0, 1.0) * 1024.0;
                int low = 0;
                int high = 64;
                while (high - low > 1) {
                    int mid = (high + low) / 2;
                    if (code <= tableCode(GAMMA16_OFFSET, mid)) high = mid;
                    else low = mid;
                }
                float first = tableCode(GAMMA16_OFFSET, low);
                float next = tableCode(GAMMA16_OFFSET, high);
                return (float(low) + (code - first) / (next - first)) / 64.0;
            }

            struct CaptureExposure {
                float gain;
                float darkBoost;
                float lowLight;
            };

            // Fit the 64×64 ML AE long target to actual GPU moments from 1,495
            // exposure and crop variants of five RAW replays. The intercept includes the median
            // calibration from the original frames to the shared ADRC rendering target.
            CaptureExposure meterExposure() {
                float exposureMs = max(uExposure.x, 0.01);
                float geometric = max(metering.x, 1e-4);
                float mean = max(metering.y, max(exposureMs * 1e-6, 1e-7));
                float scene = min(log2(1000.0 * geometric / exposureMs), -4.2304);
                float meanContrastEv = clamp(log2(mean / geometric), 0.0, 2.2242);
                float logDeviationEv = min(metering.z, 2.1114);
                float targetEv = -3.743621 + 0.369458 * scene - 1.340347 * meanContrastEv +
                    1.361403 * logDeviationEv;

                float targetExposureMs = exposureMs * exp2(targetEv) / geometric;
                float gain = clamp(targetExposureMs * exp2(uExposure.y) / exposureMs, 1.0, MAX_ADRC_GAIN);
                float targetLux = 260.57 + 23.45 * log2(max(targetExposureMs, 0.01) / 22.22);
                float lowLight = smoothstep(360.0, 420.0, targetLux);

                // The curve may still lift deep shadows in a high-contrast scene.
                // An integrated moment keeps a small highlight's effect proportional to its area.
                float contrast = 1.0 - exp2(-meanContrastEv);
                float darkBoost = 1.0 + 0.25 * contrast * contrast * (1.0 - 0.65 * lowLight);
                diagnostics[0] = gain;
                diagnostics[1] = darkBoost;
                diagnostics[3] = MAX_ADRC_GAIN;
                diagnostics[4] = log2(max(exposurePercentiles.w, geometric) / max(exposurePercentiles.x, 1e-4));
                diagnostics[5] = metering.x;
                diagnostics[6] = exposurePercentiles.x;
                diagnostics[7] = exposurePercentiles.w;
                return CaptureExposure(gain, darkBoost, lowLight);
            }

            float srgbToLinear(float x) {
                return x <= 0.04045 ? x / 12.92 : pow((x + 0.055) / 1.055, 2.4);
            }

            float endpointSlope(vec2 lengths, vec2 deltas) {
                return clamp(((2.0 * lengths.x + lengths.y) * deltas.x - lengths.x * deltas.y) /
                    (lengths.x + lengths.y), 0.0, 3.0 * deltas.x);
            }

            void calculateSlopes() {
                float lengths[4];
                float deltas[4];
                for (int i = 0; i < 4; ++i) {
                    vec2 step = knots[i + 1] - knots[i];
                    lengths[i] = step.x;
                    deltas[i] = step.y / step.x;
                }
                slopes[0] = endpointSlope(vec2(lengths[0], lengths[1]), vec2(deltas[0], deltas[1]));
                for (int i = 1; i < 4; ++i) {
                    vec2 h = vec2(lengths[i - 1], lengths[i]);
                    vec2 d = vec2(deltas[i - 1], deltas[i]);
                    vec2 w = h + 2.0 * h.yx;
                    slopes[i] = (w.x + w.y) / dot(w, 1.0 / d);
                }
                slopes[4] = endpointSlope(vec2(lengths[3], lengths[2]), vec2(deltas[3], deltas[2]));
            }

            void calculateKnots(CaptureExposure exposure, vec2 darkStats, vec2 brightStats, float logAverage) {
                // Use the capture tuning for the anchor knees and LTM split.
                float lift = exposure.gain;
                float darkGain = min(lift * exposure.darkBoost, MAX_ADRC_GAIN);
                float midGain = pow(darkGain, 0.80);
                float brightGain = pow(lift, 0.30);
                vec3 anchor = vec3(0.06, 0.20, 0.58);
                vec3 anchorX = clamp(anchor / vec3(darkGain, midGain, brightGain), vec3(0.015, 0.045, 0.20), anchor);

                // CamX BHist supplies the same CDF ranges used to blend the capture knees.
                float darkLuma = darkStats.y > 1e-6 ? exp(darkStats.x / darkStats.y) : 350.0;
                float midLuma = exp(logAverage);
                float brightLuma = brightStats.y > 1e-6 ? exp(brightStats.x / brightStats.y) : 8000.0;
                float target = srgbToLinear(0.55 - 0.15 * exposure.lowLight);
                float sceneKey = clamp(2.0 * log(midLuma + 1.0) / log(SENSOR_FULL_SCALE + 1.0) - 1.0, -1.0, 1.0);
                float adaptiveTarget = target * pow(sceneKey > 0.0 ? 1.5 : 2.0, sceneKey * 0.30);
                float histGain = clamp(adaptiveTarget / max(midLuma / SENSOR_FULL_SCALE, 1e-3),
                    midGain / 1.30, min(midGain * 1.30, MAX_ADRC_GAIN));
                vec3 histX = clamp(vec3(darkLuma, midLuma, brightLuma) / SENSOR_FULL_SCALE,
                    vec3(0.015, 0.045, 0.25), vec3(0.25, 0.50, 0.85));
                float highlightGain = max(0.65, min(pow(max(histGain, 0.5), 0.35), min(histGain, 1.15)));
                vec3 histY = clamp(histX * vec3(min(histGain * 1.08, MAX_ADRC_GAIN), histGain, highlightGain),
                    vec3(0.015, 0.05, 0.20), vec3(0.45, 0.72, 0.90));
                vec3 blend = vec3(0.18, 0.25, 0.20);
                vec3 inputKnots = mix(anchorX, histX, blend);
                vec3 outputKnots = mix(anchor, histY, blend);

                knots[0] = vec2(0.0);
                knots[1] = clamp(vec2(inputKnots.x, outputKnots.x), vec2(0.015), vec2(0.955));
                knots[2] = clamp(vec2(inputKnots.y, outputKnots.y), knots[1] + 0.015, vec2(0.970));
                knots[3] = clamp(vec2(inputKnots.z, outputKnots.z), knots[2] + 0.015, vec2(0.985));
                knots[4] = vec2(1.0);
                calculateSlopes();

                float effectiveDarkGain = knots[1].y / knots[1].x;
                float compression = max(lift, effectiveDarkGain);
                float ltm = mix(0.20, 0.80, smoothstep(1.15, 3.0, compression)) * smoothstep(1.0, 1.08, compression);
                percentages = vec2(1.0 - ltm, ltm);
                diagnostics[2] = ltm;
            }

            float curveGain(float linear) {
                int segment = 0;
                for (int i = 1; i < 4; ++i) if (linear > knots[i].x) segment = i;
                vec2 from = knots[segment];
                vec2 to = knots[segment + 1];
                float width = to.x - from.x;
                float t = clamp((linear - from.x) / width, 0.0, 1.0);
                float t2 = t * t;
                float t3 = t2 * t;
                float mapped = (2.0 * t3 - 3.0 * t2 + 1.0) * from.y +
                    (t3 - 2.0 * t2 + t) * width * slopes[segment] +
                    (-2.0 * t3 + 3.0 * t2) * to.y + (t3 - t2) * width * slopes[segment + 1];
                return clamp(mapped / linear, 0.05, MAX_ADRC_GAIN);
            }

            void main() {
                int lane = int(gl_LocalInvocationID.x);
                int baseBin = lane * BINS_PER_LANE;
                float logs[BINS_PER_LANE];
                float counts[BINS_PER_LANE];
                float sampleCount = 0.0;
                for (int i = 0; i < BINS_PER_LANE; i++) {
                    int bin = baseBin + i;
                    logs[i] = log(binCenter(bin));
                    counts[i] = rawHist[bin];
                    sampleCount += counts[i];
                }
                reduceSums(lane, vec4(sampleCount, 0.0, 0.0, 0.0));
                float countTotal = max(sums[0].x, 1.0);
                barrier();

                // TMC12 histogram clipping, suppression of the black spike and
                // redistribution. The reference spatial convolution is identity.
                float maxBinCount = 16.0 * countTotal / float(HISTOGRAM_BINS);
                float removed = 0.0;
                for (int i = 0; i < BINS_PER_LANE; i++) {
                    float clipped = min(counts[i], maxBinCount);
                    if (baseBin + i == 0) clipped = min(clipped, rawHist[1]);
                    removed += counts[i] - clipped;
                    counts[i] = clipped;
                }
                reduceSums(lane, vec4(removed, 0.0, 0.0, 0.0));
                float redistributed = sums[0].x / float(HISTOGRAM_BINS);
                float laneCount = 0.0;
                for (int i = 0; i < BINS_PER_LANE; i++) {
                    counts[i] += redistributed;
                    laneCount += counts[i];
                }

                prefixes[lane] = laneCount;
                barrier();
                for (int offset = 1; offset < 128; offset *= 2) {
                    float left = lane >= offset ? prefixes[lane - offset] : 0.0;
                    barrier();
                    prefixes[lane] += left;
                    barrier();
                }

                float cdf = lane > 0 ? prefixes[lane - 1] : 0.0;
                barrier();
                vec4 moments = vec4(0.0);
                float totalLog = 0.0;
                for (int i = 0; i < BINS_PER_LANE; i++) {
                    cdf += counts[i];
                    float percentile = clamp(cdf / countTotal, 0.0, 1.0);
                    vec2 moment = counts[i] * vec2(logs[i], 1.0);
                    totalLog += moment.x;
                    if (percentile <= 0.4) moments.xy += moment;
                    if (percentile >= 0.2) moments.zw += moment;
                }
                prefixes[lane] = totalLog;
                reduceSums(lane, moments);
                for (int offset = 64; offset > 0; offset /= 2) {
                    if (lane < offset) prefixes[lane] += prefixes[lane + offset];
                    barrier();
                }

                if (lane == 0) {
                    vec4 histogramMoments = sums[0];
                    calculateKnots(meterExposure(), histogramMoments.xy, histogramMoments.zw, prefixes[0] / countTotal);
                }
                barrier();

                // GTM10 and LTM14 consume different x grids. The fixed Gamma16
                // guide is in the LTM block, before the IPE Gamma15 display stage.
                if (lane <= 64) {
                    float linear = min((tableCode(GTM_OFFSET, lane) + 1.0) / SENSOR_FULL_SCALE, 1.0);
                    float gain = curveGain(linear);
                    gtmGain[lane] = gain < 1.0 ? gain : pow(gain, percentages.x);
                    float encoded = float(clamp(lane, 1, 63)) / 64.0;
                    float code = floor(gamma16Decode(encoded) * 4096.0 + 0.5);
                    float ltmLinear = min((code + 1.0) / 4095.0, 1.0);
                    float localGain = pow(max(curveGain(ltmLinear), 1.0), percentages.y);
                    ltmScale[lane] = localGain > 1.0
                        ? clamp(gamma16Encode(localGain * code / 4096.0) / encoded - 1.0, 0.0, 2047.0 / 256.0)
                        : 0.0;
                }
                barrier();

                if (lane == 0) {
                    for (int i = 63; i >= 0; i--) ltmScale[i] = max(ltmScale[i], ltmScale[i + 1]);
                    int lastMaximum = 1;
                    for (int i = 2; i < 64 / 3 && ltmScale[i] == ltmScale[0]; i++) lastMaximum = i;
                    for (int pass = 0; pass < 3; pass++) {
                        for (int i = lastMaximum + 1; i < 64; i++) {
                            ltmScale[i] = (ltmScale[i - 1] + ltmScale[i] + ltmScale[i + 1]) / 3.0;
                        }
                    }
                }
                barrier();
                if (lane <= 64) {
                    float diagnostic = lane < 8 ? diagnostics[lane] : 0.0;
                    if (lane == 8) diagnostic = clamp(slopes[4], 0.08, 1.0);
                    if (lane == 9) diagnostic = 1.0 + 0.25 * smoothstep(1.05, 3.0, metering.w);
                    imageStore(uCurves, ivec2(lane, 0), vec4(gtmGain[lane], ltmScale[lane], MAX_ADRC_GAIN, diagnostic));
                }
            }
        """.trimIndent()
    }
}

/** GTM10 14-bit input knots. */
internal val RAW_ADRC_CAMX_GTM_X = intArrayOf(
    0, 2, 4, 7, 13, 21, 31, 45, 62, 83, 107, 137, 169, 201, 233, 265,
    297, 329, 361, 428, 463, 499, 538, 578, 621, 665, 712, 760, 811, 863, 919, 976,
    1037, 1098, 1164, 1230, 1300, 1371, 1447, 1524, 1605, 1687, 1774, 1861, 1954, 2047, 2146, 2245,
    2456, 2679, 2915, 3429, 3999, 4630, 5323, 6083, 6911, 7812, 8787, 9840, 10975, 12193, 13499, 14894,
    16383,
)

/** Reference upstream Gamma16 knots used by LTM14. */
internal val RAW_ADRC_CAMX_GAMMA16 = intArrayOf(
    0, 64, 108, 144, 176, 205, 232, 258, 282, 304, 326, 347, 367, 386, 405, 423,
    441, 458, 475, 491, 507, 523, 538, 553, 568, 583, 597, 611, 625, 638, 651, 665,
    678, 690, 703, 715, 728, 740, 752, 764, 775, 787, 798, 810, 821, 832, 843, 854,
    865, 875, 886, 896, 907, 917, 927, 937, 947, 957, 967, 977, 987, 996, 1006, 1015,
    1024,
)
