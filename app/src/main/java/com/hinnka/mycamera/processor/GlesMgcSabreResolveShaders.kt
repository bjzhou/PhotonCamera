package com.hinnka.mycamera.processor

import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.PLANE_PADDING
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.chromaOps
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.header
import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.integerOps

/**
 * GLES implementation of MGC 9.6.080 V24 `gcam::ResolveSabreHalide`
 * (libgcastartup.so entry 0x34A55D4, worker 0x349B1B8). The algorithm notes live in
 * tools/mgc_sabre_resolve.
 *
 * The AOT works in a virtual RGGB frame V(u, v) = input(clamp(u + bx), clamp(v + by)), where
 * (bx, by) is the red site of the sensor CFA; output(x, y) is the result at V(x, y). Its Funcs are
 * split into four passes so no pixel recomputes a neighbour's intermediate:
 *
 * 1. `converted_to_int`: remosaic the dehomogenized RGBA16F colour into an int16 CFA.
 * 2. `g_gb`: Gr/Gb balance at G sites; R/B sites keep their converted value.
 * 3. `g_b$1`: adaptive green at R/B sites; G sites keep their balanced value.
 *
 * Passes 2 and 3 are the green reconstruction this AOT shares with V25's
 * `gcam::DemosaicGreenRaw16Halide`; they live in [GlesMgcGreenDemosaicShaders].
 * 4. `demosaic` + `output`: chroma interpolation, coverage blend, final gains and lens shading,
 *    written as the normalized RGBA16UI camera RGB the chroma stage consumes.
 *
 * Passes 1-3 write int16 planes padded by [PLANE_PADDING] on each side, covering the virtual
 * coordinates their consumers touch (radius 4 for pass 1 down to radius 1 for pass 3). The
 * integer demosaic is the algorithm itself, so its operations keep the NEON lane semantics of
 * the AOT: 16-bit wraparound, SHADD/SRHADD rounding, SABD magnitudes, SQADD/SQSUB saturation and
 * SSHL by a signed byte. The float stages around it run in native binary32.
 */
internal object GlesMgcSabreResolveShaders {
    /** Pass 1, `converted_to_int`: int16(clamp(roundEven(c * S), -32768, 32767)). */
    val convertToInt = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp sampler2D uAccumulated;
        uniform ivec2 uImageSize;
        uniform ivec2 uRedSite;
        uniform float uQuantizationScale;
        layout(location = 0) out highp ivec4 oConverted;

        void main() {
            ivec2 virtualSite = ivec2(gl_FragCoord.xy) - ivec2($PLANE_PADDING);
            ivec2 source = clamp(virtualSite + uRedSite, ivec2(0), uImageSize - ivec2(1));
            vec4 color = texelFetch(uAccumulated, source, 0);
            int cfaColor = (virtualSite.x & 1) + (virtualSite.y & 1);
            float sampleValue = cfaColor == 0 ? color.r : (cfaColor == 1 ? color.g : color.b);
            float scaled = sampleValue * uQuantizationScale;
            oConverted = ivec4(int(clamp(roundEven(scaled), -32768.0, 32767.0)), 0, 0, 0);
        }
    """.trimIndent()

    /**
     * Pass 4, `demosaic` + `output`. The coverage weight blends the accumulated colour toward the
     * demosaic; the result times the final gains and the lens shading is the black-free camera RGB,
     * stored as RGBA16UI on [0, 65535].
     */
    val resolveOutput = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp sampler2D uAccumulated;
        uniform highp isampler2D uBalanced;
        uniform highp isampler2D uGreen;
        uniform ivec2 uImageSize;
        uniform ivec2 uPlaneSize;
        uniform ivec2 uRedSite;
        uniform float uBlendBias;
        uniform float uBlendScale;
        uniform float uInverseQuantizationScale;
        uniform vec3 uFinalGains;
        // RGGB gains of the lens shading map; a 1x1 map of ones when the capture has none.
        uniform highp sampler2D uLensShading;
        layout(location = 0) out highp uvec4 oResolved;

        ${integerOps.prependIndent("        ").trimStart()}

        // Converted value; only read at R/B sites, where pass 2 kept it.
        int converted(int u, int v) { return planeAt(uBalanced, uPlaneSize, u, v); }
        int green(int u, int v) { return planeAt(uGreen, uPlaneSize, u, v); }

        ${chromaOps.prependIndent("        ").trimStart()}

        void main() {
            ivec2 site = ivec2(gl_FragCoord.xy);
            int u = site.x;
            int v = site.y;
            int cfaColor = (u & 1) + (v & 1);
            int demosaicedRed = cfaColor == 0 ? converted(u, v) : chroma(u, v, false);
            int demosaicedGreen = green(u, v);
            int demosaicedBlue = cfaColor == 2 ? converted(u, v) : chroma(u, v, true);
            vec3 demosaiced = vec3(demosaicedRed, demosaicedGreen, demosaicedBlue) *
                uInverseQuantizationScale;

            ivec2 source = clamp(site + uRedSite, ivec2(0), uImageSize - ivec2(1));
            vec4 color = texelFetch(uAccumulated, source, 0);
            float weight = clamp(uBlendBias + color.a * uBlendScale, 0.0, 1.0);
            vec4 shading = texture(uLensShading, (vec2(site) + 0.5) / vec2(uImageSize));
            vec3 gains = uFinalGains * vec3(shading.r, 0.5 * (shading.g + shading.b), shading.a);
            vec3 resolved = clamp(mix(color.rgb, demosaiced, weight) * gains, 0.0, 1.0);
            oResolved = uvec4(uvec3(round(resolved * 65535.0)), 65535u);
        }
    """.trimIndent()
}
