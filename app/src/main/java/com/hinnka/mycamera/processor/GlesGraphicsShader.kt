package com.hinnka.mycamera.processor

internal object GlesGraphicsShaderSources {
    fun languageVersionOf(source: String): Int {
        val directive = source.lineSequence()
            .map { it.trim() }
            .firstOrNull { it.startsWith("#version ") }
            ?: throw IllegalArgumentException("GLSL ES source is missing a #version directive")
        val tokens = directive.split(Regex("\\s+"))
        require(tokens.size >= 3 && tokens[0] == "#version" && tokens[2] == "es") {
            "Unsupported GLSL version directive: $directive"
        }
        return tokens[1].toIntOrNull()
            ?: throw IllegalArgumentException("Invalid GLSL version directive: $directive")
    }

    fun fullscreenVertexFor(fragmentSource: String): String {
        val version = languageVersionOf(fragmentSource)
        require(version == 300 || version == 310) {
            "Unsupported fullscreen GLSL ES version: $version"
        }
        return """
            #version $version es
            precision highp float;
            out vec2 vTexCoord;
            void main() {
                vec2 positions[3] = vec2[3](
                    vec2(-1.0, -1.0),
                    vec2( 3.0, -1.0),
                    vec2(-1.0,  3.0)
                );
                vec2 texCoords[3] = vec2[3](
                    vec2(0.0, 0.0),
                    vec2(2.0, 0.0),
                    vec2(0.0, 2.0)
                );
                gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
                vTexCoord = texCoords[gl_VertexID];
            }
        """.trimIndent()
    }
}