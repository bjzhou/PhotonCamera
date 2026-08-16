package com.hinnka.mycamera.raw

/**
 * Per-engine tone pass.
 *
 * This pass converts the linear RAW working texture into linear output RGB. It deliberately stops
 * before shadows/highlights, black/white levels, and sRGB encoding so those adjustments compile as
 * a smaller independent pass.
 */
object RawEngineTonePassShaders {
    fun fragmentShaderFor(colorEngine: RawRenderingEngine): String {
        val source = RawShaders.combinedFragmentShaderFor(
            colorEngine = colorEngine,
            includeShadowsHighlights = false
        )
        val cutoff = source.indexOf("const vec3 BW_LUMA")
            .takeIf { it >= 0 }
            ?: source.indexOf("void main()").takeIf { it >= 0 }
            ?: error("Unable to find combined shader adjustment section for $colorEngine")

        return source.substring(0, cutoff) + """

        ${DngProfileGainTableRenderShader.GLSL}

        void main() {
            vec3 profileColor = texture(uInputTexture, vTexCoord).rgb;
            profileColor = applyProfileGainTableMap(profileColor);
            vec3 exposedProfileColor = prepareProfileGainInput(profileColor);
            vec3 color = uProfileToEngineTransform * exposedProfileColor;
            color = applyEngineTone(color);
            fragColor = vec4(color, 1.0);
        }
        """.trimIndent()
    }
}
