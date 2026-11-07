package com.hinnka.mycamera.processor

import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.PLANE_PADDING
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.chromaOps
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.integerOps
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.raw16Ops

/**
 * GLES implementation of MGC 9.7.047 V25 `gcam::MergeRgbRaw16F16TileSize16Halide`
 * (libgcastartup.so wrapper 0x371990C, worker 0x370F514). The algorithm notes live in
 * tools/mgc_demosaic_green/MERGE.md.
 *
 * Everything runs in the virtual RGGB frame whose (0, 0) is the sensor's red site. Per burst frame
 * f and 16x16 output tile T with alignment a (Bayer quads), the AOT
 *
 * 1. gathers the frame at the quad-aligned offset d = 2 * roundEven(a) (UnpackAlignedRaw), with the
 *    RAW mirrored per colour plane and the DemosaicGreenRaw16 output mirrored per pixel;
 * 2. demosaics it with the integer chroma interpolation it shares with ResolveSabre, on the
 *    same `wb_gains_applied` int16(roundEven(wb[c] * overallGain * (raw - black[c]))) as
 *    DemosaicGreenRaw16, and divides by the white balance;
 * 3. resamples it by the sub-quad remainder r = 2a - d with a 3x3 Gaussian
 *    w(i, j) = exp(-0.5 * ((i - r.x)^2 + (j - r.y)^2) * sigma_f^2);
 * 4. weights it by frameWeight_f times the RAW/4 acceptance, bilinearly upsampled with half-pixel
 *    centres, and accumulates sum(R * inputGain_f * resampled) and sum(R * sum(w)).
 *
 * [resolve] divides the sums and applies the output normalization. Everything outside the
 * integer demosaic runs in native binary32.
 */
internal object GlesMgcSpatialRgbMergeShaders {
    const val TILE_SIZE = 16
    // TILE_SIZE plus the one-pixel ring the 3x3 resampling reads.
    private const val TILE_SPAN = 18

    /**
     * One burst frame into the four R32F accumulators. A work group owns one output tile: its 64
     * invocations demosaic the tile's aligned 18x18 neighbourhood into shared memory, then each
     * accumulates a 2x2 block of output pixels.
     */
    val accumulateFrame = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8) in;
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
        precision highp usampler2D;
        precision highp image2D;
        uniform highp usampler2D uRaw;
        uniform ivec2 uRawSize;
        uniform ivec2 uRedSite;
        uniform vec4 uBlackLevels;
        // whiteBalanceGains[c] * overallGain.
        uniform vec4 uConversionGains;
        // DemosaicGreenRaw16 output of this frame, padded by PLANE_PADDING.
        uniform highp isampler2D uGreen;
        uniform highp sampler2D uAlignmentAtlas;
        uniform ivec2 uAlignmentOriginX;
        uniform ivec2 uAlignmentOriginY;
        uniform highp sampler2D uRejectionAtlas;
        uniform ivec2 uRejectionOrigin;
        uniform ivec2 uRejectionSize;
        // inputGain / white balance of R, G, B.
        uniform vec3 uChannelScale;
        uniform float uFrameWeight;
        uniform float uKernelSigma;
        uniform int uFirstFrame;
        layout(r32f, binding = 0) uniform highp image2D uSumRed;
        layout(r32f, binding = 1) uniform highp image2D uSumGreen;
        layout(r32f, binding = 2) uniform highp image2D uSumBlue;
        layout(r32f, binding = 3) uniform highp image2D uWeightSum;

        const int TILE_SIZE = $TILE_SIZE;
        const int TILE_SPAN = $TILE_SPAN;
        shared int sRed[$TILE_SPAN * $TILE_SPAN];
        shared int sGreen[$TILE_SPAN * $TILE_SPAN];
        shared int sBlue[$TILE_SPAN * $TILE_SPAN];

        ${integerOps.prependIndent("        ").trimStart()}

        ${raw16Ops.prependIndent("        ").trimStart()}

        int converted(int u, int v) { return convertedSample(ivec2(u, v)); }

        // The gathered DemosaicGreenRaw16 output mirrors per pixel (index -1 reads 0).
        int green(int u, int v) {
            ivec2 p = ivec2(mirrorIndex(u, uRawSize.x), mirrorIndex(v, uRawSize.y));
            return texelFetch(uGreen, p + ivec2(PLANE_PADDING), 0).r;
        }

        ${chromaOps.prependIndent("        ").trimStart()}

        // Quad-aligned shift d = 2 * roundEven(a) of the tile's alignment, and the remainder 2a - d.
        void tileShift(ivec2 tile, out ivec2 shift, out vec2 remainder) {
            vec2 alignment = vec2(
                texelFetch(uAlignmentAtlas, uAlignmentOriginX + tile, 0).r,
                texelFetch(uAlignmentAtlas, uAlignmentOriginY + tile, 0).r
            );
            shift = 2 * ivec2(roundEven(alignment));
            remainder = 2.0 * alignment - vec2(shift);
        }

        // Bilinear 4x upsampling with half-pixel centres: pixel 4j + k lies at RAW/4 coordinate
        // j + (2k - 3) / 8, so its second source cell carries (2k + 5) & 7 eighths.
        int acceptanceCell(int p) { return (p >> 2) - 1 + ((p & 3) >= 2 ? 1 : 0); }
        float acceptanceFraction(int p) { return float((2 * (p & 3) + 5) & 7) * 0.125; }

        float acceptanceAt(int x, int y) {
            ivec2 cell = clamp(ivec2(x, y), ivec2(0), uRejectionSize - ivec2(1));
            return texelFetch(uRejectionAtlas, uRejectionOrigin + cell, 0).r;
        }

        // frameWeight times the upsampled acceptance.
        float acceptance(ivec2 p) {
            int x0 = acceptanceCell(p.x);
            int y0 = acceptanceCell(p.y);
            float fx = acceptanceFraction(p.x);
            float top = mix(acceptanceAt(x0, y0), acceptanceAt(x0 + 1, y0), fx);
            float bottom = mix(acceptanceAt(x0, y0 + 1), acceptanceAt(x0 + 1, y0 + 1), fx);
            return uFrameWeight * mix(top, bottom, acceptanceFraction(p.y));
        }

        void loadTile(ivec2 origin) {
            int lane = int(gl_LocalInvocationIndex);
            for (int index = lane; index < TILE_SPAN * TILE_SPAN; index += 64) {
                int u = origin.x + index % TILE_SPAN;
                int v = origin.y + index / TILE_SPAN;
                int cfaColor = (u & 1) + (v & 1);
                sRed[index] = cfaColor == 0 ? converted(u, v) : chroma(u, v, false);
                sGreen[index] = green(u, v);
                sBlue[index] = cfaColor == 2 ? converted(u, v) : chroma(u, v, true);
            }
        }

        void accumulateTile(ivec2 tile, vec2 remainder) {
            float sigmaSquared = uKernelSigma * uKernelSigma;
            float weights[9];
            float weightTotal = 0.0;
            for (int j = 0; j < 3; ++j) {
                for (int i = 0; i < 3; ++i) {
                    vec2 d = vec2(i - 1, j - 1) - remainder;
                    float w = exp(-0.5 * dot(d, d) * sigmaSquared);
                    weights[j * 3 + i] = w;
                    weightTotal += w;
                }
            }
            for (int by = 0; by < 2; ++by) {
                for (int bx = 0; bx < 2; ++bx) {
                    ivec2 local = 2 * ivec2(gl_LocalInvocationID.xy) + ivec2(bx, by);
                    ivec2 p = tile * TILE_SIZE + local;
                    if (p.x >= uRawSize.x || p.y >= uRawSize.y) continue;
                    vec3 resampled = vec3(0.0);
                    for (int j = 0; j < 3; ++j) {
                        for (int i = 0; i < 3; ++i) {
                            int index = (local.y + j) * TILE_SPAN + local.x + i;
                            resampled += weights[j * 3 + i] *
                                vec3(sRed[index], sGreen[index], sBlue[index]);
                        }
                    }
                    float accepted = acceptance(p);
                    vec3 color = accepted * uChannelScale * resampled;
                    float weightSum = accepted * weightTotal;
                    if (uFirstFrame == 0) {
                        color += vec3(
                            imageLoad(uSumRed, p).r,
                            imageLoad(uSumGreen, p).r,
                            imageLoad(uSumBlue, p).r
                        );
                        weightSum += imageLoad(uWeightSum, p).r;
                    }
                    imageStore(uSumRed, p, vec4(color.r, 0.0, 0.0, 0.0));
                    imageStore(uSumGreen, p, vec4(color.g, 0.0, 0.0, 0.0));
                    imageStore(uSumBlue, p, vec4(color.b, 0.0, 0.0, 0.0));
                    imageStore(uWeightSum, p, vec4(weightSum, 0.0, 0.0, 0.0));
                }
            }
        }

        void main() {
            ivec2 tile = ivec2(gl_WorkGroupID.xy);
            ivec2 shift;
            vec2 remainder;
            tileShift(tile, shift, remainder);
            loadTile(tile * TILE_SIZE + shift - ivec2(1));
            barrier();
            accumulateTile(tile, remainder);
        }
    """.trimIndent()

    /**
     * The merge sum / weight as the planar signed Fixed16 [channel][y][x] signal of the Spatial
     * RGB noise-model AOT; planes are padded to complete 16x16 tiles by edge clamping and laid
     * out as a MgcSpatialStrengthAtlasLayout atlas. The AOT runs with black 0 / white 16384 and
     * evaluates the input noise model (normalized to the sensor's white - black range) at
     * signal / 16384, so [uSignalScale] maps the merge's RAW-code x overallGain domain onto
     * 16384 x normalized signal.
     */
    val packFixed16 = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform highp sampler2D uSumRed;
        uniform highp sampler2D uSumGreen;
        uniform highp sampler2D uSumBlue;
        uniform highp sampler2D uWeightSum;
        uniform ivec2 uSourceSize;
        uniform ivec2 uPlaneSize;
        uniform int uAtlasColumns;
        uniform float uSignalScale;
        layout(location = 0) out highp int oFixed16;

        void main() {
            ivec2 packed = ivec2(gl_FragCoord.xy);
            ivec2 cell = packed / uPlaneSize;
            int channel = cell.y * uAtlasColumns + cell.x;
            if (channel > 2) {
                oFixed16 = 0;
                return;
            }
            ivec2 p = min(packed - cell * uPlaneSize, uSourceSize - ivec2(1));
            float sum = channel == 0 ? texelFetch(uSumRed, p, 0).r :
                (channel == 1 ? texelFetch(uSumGreen, p, 0).r : texelFetch(uSumBlue, p, 0).r);
            float merged = sum / max(texelFetch(uWeightSum, p, 0).r, 1.0e-8) * uSignalScale;
            oFixed16 = int(round(clamp(merged, 0.0, 32767.0)));
        }
    """.trimIndent()

    /**
     * The merged ratio sum / weight (Q14 scale) followed by the output normalization: exposure
     * scale, CameraWhite bound, lens shading and RGB16 encoding.
     */
    val resolve = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform highp sampler2D uSumRed;
        uniform highp sampler2D uSumGreen;
        uniform highp sampler2D uSumBlue;
        uniform highp sampler2D uWeightSum;
        // RGGB gains of the lens shading map; a 1x1 map of ones when the capture has none.
        uniform highp sampler2D uLensShading;
        uniform sampler2D uUltrashortWeight;
        uniform vec3 uCameraWhite;
        uniform int uHasUltrashort;
        uniform ivec2 uOutputSize;
        uniform float uOutputExposureScale;
        layout(location = 0) out highp uvec4 oRgb16;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec2 uv = (vec2(p) + vec2(0.5)) / vec2(uOutputSize);
            vec3 sums = vec3(
                texelFetch(uSumRed, p, 0).r,
                texelFetch(uSumGreen, p, 0).r,
                texelFetch(uSumBlue, p, 0).r
            );
            vec3 merged = sums / (texelFetch(uWeightSum, p, 0).r * 16384.0);
            vec4 map = texture(uLensShading, uv);
            vec3 shading = vec3(map.r, 0.5 * (map.g + map.b), map.a);
            // Sensor saturation precedes lens-shading correction, so CameraWhite bounds the
            // unshaded sensor-domain value and the shading gain applies to the clipped result.
            // Clipping after shading would cap unsaturated off-axis samples at the reference
            // white, outside the (unshaded) highlight mask the ultrashort replaces.
            // CameraWhite must follow the exposures that actually supply this pixel.
            // A rejected short leaves the reference's saturated RGB at 1/ratio in the
            // exported short domain; clipping it later against short-domain CameraWhite
            // misses the reference plateau and preserves its false magenta chroma.
            // The selected short slice has weight m and unit frame weight, while the
            // reference slice alone keeps (1 - m); the short's share of the merge is thus
            // at most m, and the merged white is bounded by mix(referenceWhite, shortWhite, m).
            // The bound must stay continuous in m: switching on m > 0 steps the cap along
            // the RAW/4 weight texel grid and draws a staircase through the highlight.
            float shortShare = uHasUltrashort != 0
                ? clamp(texture(uUltrashortWeight, uv).r, 0.0, 1.0)
                : 0.0;
            float whiteScale = mix(uOutputExposureScale, 1.0, shortShare);
            vec3 outputValue =
                min(merged * uOutputExposureScale, uCameraWhite * whiteScale) * shading;
            oRgb16 = uvec4(uvec3(round(clamp(outputValue, 0.0, 1.0) * 65535.0)), 0u);
        }
    """.trimIndent()
}
