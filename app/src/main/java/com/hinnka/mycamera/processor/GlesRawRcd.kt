package com.hinnka.mycamera.processor

/**
 * Shared output adapters for the region-based RCD pipeline.
 *
 * The demosaic itself is owned by [com.hinnka.mycamera.raw.RcdShaders]. Its RCD interior and
 * PPG photo-border completion are dispatched together by [GlesRawRadianceStacker] before this adapter
 * reads the RGB working buffers. Keeping this shader mode-agnostic prevents HDR and Radiance
 * from growing separate post-demosaic paths.
 */
internal object GlesRawRcdShaders {
    val workingRgbStore: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;
        layout(std430, binding = 1) readonly buffer RcdRgb0_Buf { float rcdRgb0[]; };
        layout(std430, binding = 2) readonly buffer RcdRgb1_Buf { float rcdRgb1[]; };
        layout(std430, binding = 3) readonly buffer RcdRgb2_Buf { float rcdRgb2[]; };
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;
        uniform ivec2 uSourceSize;
        uniform vec3 uCalculationGains;
        uniform float uExposureScale;
        uniform int uDesaturateBeforeExposureScale;

        vec3 desaturateHighlightPreservingLuma(vec3 rgb) {
            rgb = max(rgb, vec3(0.0));
            const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);
            float luma = dot(rgb, LUMA);
            float ceiling = max(1.0, luma);
            vec3 chroma = rgb - vec3(luma);
            float chromaScale = 1.0;
            if (chroma.r > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.r);
            }
            if (chroma.g > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.g);
            }
            if (chroma.b > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.b);
            }
            return vec3(luma) + chroma * clamp(chromaScale, 0.0, 1.0);
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uSourceSize.x || p.y >= uSourceSize.y) return;
            int index = p.y * uSourceSize.x + p.x;
            vec3 workingRgb = vec3(rcdRgb0[index], rcdRgb1[index], rcdRgb2[index]);
            if (uDesaturateBeforeExposureScale != 0) {
                workingRgb = desaturateHighlightPreservingLuma(workingRgb);
            }
            workingRgb *= uExposureScale;
            vec3 rgb = workingRgb /
                max(uCalculationGains, vec3(1e-6));
            imageStore(uOutput, p, vec4(max(rgb, vec3(0.0)), 1.0));
        }
    """.trimIndent()
}
