package com.hinnka.mycamera.raw

/** Shared DNG SDK-style ProfileGainTableMap renderer used before exposure preparation. */
internal object DngProfileGainTableRenderShader {
    val GLSL = """
        uniform sampler2D uProfileGainTableMap;
        uniform int uProfileGainEnabled;
        uniform ivec3 uProfileGainTableSize;
        uniform vec4 uProfileGainGrid;
        uniform vec4 uProfileGainWeights0;
        uniform float uProfileGainWeightMax;
        uniform float uProfileGainGamma;
        uniform float uProfileGainBaselineGain;
        uniform vec2 uGlobalUvOrigin;
        uniform vec2 uGlobalUvScale;

        float profileGainTableValue(int tableX, int tableY, float tableIndex) {
            int pointCount = max(uProfileGainTableSize.z, 1);
            float clampedIndex = clamp(tableIndex, 0.0, float(pointCount - 1));
            int i0 = int(floor(clampedIndex));
            int i1 = min(i0 + 1, pointCount - 1);
            float amount = clampedIndex - float(i0);
            int row = tableY * max(uProfileGainTableSize.x, 1) + tableX;
            float gain0 = texelFetch(uProfileGainTableMap, ivec2(i0, row), 0).r;
            float gain1 = texelFetch(uProfileGainTableMap, ivec2(i1, row), 0).r;
            return mix(gain0, gain1, amount);
        }

        float profileGainTableInput(vec3 profileRgb) {
            float rgbMin = min(profileRgb.r, min(profileRgb.g, profileRgb.b));
            float rgbMax = max(profileRgb.r, max(profileRgb.g, profileRgb.b));
            float weighted = dot(vec4(profileRgb, rgbMin), uProfileGainWeights0) +
                rgbMax * uProfileGainWeightMax;
            // dng_render applies PGTM before its exposure ramp and scales the five-element
            // MapInputWeights result by TotalBaselineExposure to preserve post-exposure lookup.
            return pow(clamp(weighted * uProfileGainBaselineGain, 0.0, 1.0), uProfileGainGamma);
        }

        vec3 applyProfileGainTableMap(vec3 profileRgb) {
            if (uProfileGainEnabled == 0) return profileRgb;
            int mapH = max(uProfileGainTableSize.x, 1);
            int mapV = max(uProfileGainTableSize.y, 1);
            vec2 spacing = max(uProfileGainGrid.zw, vec2(1e-8));
            vec2 globalUv = uGlobalUvOrigin + vTexCoord * uGlobalUvScale;
            vec2 position = (globalUv - uProfileGainGrid.xy) / spacing;
            position = clamp(position, vec2(0.0), vec2(float(mapH - 1), float(mapV - 1)));
            int x0 = int(floor(position.x));
            int y0 = int(floor(position.y));
            int x1 = min(x0 + 1, mapH - 1);
            int y1 = min(y0 + 1, mapV - 1);
            float tx = position.x - float(x0);
            float ty = position.y - float(y0);
            float tableIndex = profileGainTableInput(profileRgb) *
                float(max(uProfileGainTableSize.z, 1));
            float gain00 = profileGainTableValue(x0, y0, tableIndex);
            float gain10 = profileGainTableValue(x1, y0, tableIndex);
            float gain01 = profileGainTableValue(x0, y1, tableIndex);
            float gain11 = profileGainTableValue(x1, y1, tableIndex);
            float gain = mix(mix(gain00, gain10, tx), mix(gain01, gain11, tx), ty);
            return profileRgb * max(gain, 0.0);
        }
    """.trimIndent()
}
