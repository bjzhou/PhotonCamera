package com.hinnka.mycamera.lut

import java.io.File
import java.util.Properties
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class PhysicalBokehShadersTest {
    @Test
    fun everyOpticalShaderVariantCompilesWithNdkValidator() {
        val localPropertiesSdk = listOf(File("local.properties"), File("../local.properties"))
            .firstOrNull(File::isFile)
            ?.inputStream()
            ?.use { input -> Properties().apply { load(input) }.getProperty("sdk.dir") }
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT")
            ?: System.getenv("ANDROID_HOME")
            ?: localPropertiesSdk
        val validator = sdkRoot?.let(::File)
            ?.resolve("ndk")
            ?.listFiles()
            ?.sortedByDescending { it.name }
            ?.asSequence()
            ?.mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.isFile && it.nameWithoutExtension == "glslc" }
            }
            ?.firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        val transfer = """
            vec3 decodeColor(vec3 encoded) { return encoded; }
            vec3 encodeColor(vec3 linear) { return linear; }
        """.trimIndent()
        // Compile the injected piecewise transfer and its signed extended-range
        // form as well as linear RGB. ColorSpace itself needs Android at runtime;
        // these functions exercise the same scalar/vector injection contract.
        val srgbTransfer = """
            float decodeChannel(float value) {
                float x = value;
                return x < 0.04045 ? x / 12.92 : pow(max((x + 0.055) / 1.055, 0.0), 2.4);
            }
            float encodeChannel(float value) {
                float x = value;
                return x < 0.00313080495356037 ? x * 12.92 : 1.055 * pow(max(x, 0.0), 1.0 / 2.4) - 0.055;
            }
            vec3 decodeColor(vec3 value) {
                return vec3(decodeChannel(value.r), decodeChannel(value.g), decodeChannel(value.b));
            }
            vec3 encodeColor(vec3 value) {
                return vec3(encodeChannel(value.r), encodeChannel(value.g), encodeChannel(value.b));
            }
        """.trimIndent()
        val signedSrgbTransfer = srgbTransfer
            .replace("float x = value;", "float x = abs(value);")
            .replace("return x <", "return sign(value) * (x <")
            .replace("2.4);", "2.4));")
            .replace("- 0.055;", "- 0.055);")
        val shaders = listOf(
            "vert" to Shaders.SIMPLE_VERTEX_SHADER,
            "frag" to PhysicalBokehShaders.gather,
            "frag" to PhysicalBokehShaders.separateEmitters,
            "frag" to PhysicalBokehShaders.emitterEnvironment(true),
            "frag" to PhysicalBokehShaders.emitterEnvironment(false),
            "vert" to PhysicalBokehShaders.emitterVertex,
            "frag" to PhysicalBokehShaders.emitterFragment,
            "frag" to Shaders.bokehLayerColorFragmentShader(),
        ) + listOf(transfer, srgbTransfer, signedSrgbTransfer).flatMap { colorTransfer ->
            listOf(
                "frag" to PhysicalBokehShaders.composite(colorTransfer),
                "frag" to Shaders.bokehLayerColorFragmentShader(colorTransfer),
            )
        }

        shaders.forEachIndexed { index, (stage, shader) ->
            assertTrue("shader $index must use GLSL ES 3.00", shader.startsWith("#version 300 es"))
            val sourceFile = File.createTempFile("offline-optical-$index-", ".$stage")
            val outputFile = File.createTempFile("offline-optical-$index-", ".spv")
            try {
                // glslc's validator copy requires ES 3.10; production remains ES 3.00.
                sourceFile.writeText(shader.replaceFirst("#version 300 es", "#version 310 es"))
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=$stage",
                    sourceFile.absolutePath,
                    "-o",
                    outputFile.absolutePath,
                ).redirectErrorStream(true).start()
                val output = process.inputStream.bufferedReader().use { it.readText() }
                assertEquals("shader $index: $output", 0, process.waitFor())
            } finally {
                sourceFile.delete()
                outputFile.delete()
            }
        }
    }
}
