package com.hinnka.mycamera.previewhook.api

/**
 * Adapts the app-side full ColorRecipe shader to a 2D-atlas LUT variant that
 * can be hosted inside MGC's lower GL stage without requiring sampler3D
 * support in the existing wrapper layer.
 */
object MgcVfeShaderAdapters {
    private val vfeVertexShader = """
        #version 300 es
        in vec2 aPosition;
        in vec2 aTexCoord;
        out vec2 vTexCoord;
        out vec2 vRawCoord;
        void main() {
            gl_Position = vec4(aPosition.xy, 0.0, 1.0);
            vTexCoord = aTexCoord;
            vRawCoord = aTexCoord;
        }
    """.trimIndent()

    private const val LUT_UNIFORM_3D = "uniform mediump sampler3D uLutTexture;"
    private const val LUT_SAMPLE_3D = "vec4 lutColor = texture(uLutTexture, lutCoord);"

    private val atlasUniformBlock = """
        uniform mediump sampler2D uLutTexture;
        uniform vec2 uLutAtlasSize;
        
        vec4 samplePackedLut(vec3 lutCoord) {
            float lutSize = max(uLutAtlasSize.x, 2.0);
            float scaledR = lutCoord.r * (lutSize - 1.0);
            float scaledG = lutCoord.g * (lutSize - 1.0);
            float scaledB = lutCoord.b * (lutSize - 1.0);
            float slice0 = floor(scaledB);
            float slice1 = min(slice0 + 1.0, lutSize - 1.0);
            float sliceMix = fract(scaledB);
        
            vec2 atlasCoord0 = vec2(
                (scaledR + 0.5) / uLutAtlasSize.x,
                (scaledG + 0.5 + slice0 * lutSize) / uLutAtlasSize.y
            );
            vec2 atlasCoord1 = vec2(
                (scaledR + 0.5) / uLutAtlasSize.x,
                (scaledG + 0.5 + slice1 * lutSize) / uLutAtlasSize.y
            );
        
            vec4 color0 = texture(uLutTexture, atlasCoord0);
            vec4 color1 = texture(uLutTexture, atlasCoord1);
            return mix(color0, color1, sliceMix);
        }
    """.trimIndent()

    private fun normalizeShaderSource(source: String): String {
        return source
            .removePrefix("\uFEFF")
            .trimStart()
    }

    @JvmStatic
    fun buildPackedLutFragmentShader(fragmentShader: String): String {
        val normalizedFragment = normalizeShaderSource(fragmentShader)
        val withAtlasUniforms = normalizedFragment.replace(LUT_UNIFORM_3D, atlasUniformBlock)
        val withAtlasSampler = withAtlasUniforms.replace(LUT_SAMPLE_3D, "vec4 lutColor = samplePackedLut(lutCoord);")
        return normalizeShaderSource(withAtlasSampler)
    }

    @JvmStatic
    fun getVfeVertexShaderSource(): String = normalizeShaderSource(vfeVertexShader)
}
