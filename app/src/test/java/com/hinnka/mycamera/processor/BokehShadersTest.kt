package com.hinnka.mycamera.processor

import com.hinnka.mycamera.lut.Shaders
import java.io.File
import java.util.Properties
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class BokehShadersTest {
    private val shaders = listOf(
        "vert" to Shaders.SIMPLE_VERTEX_SHADER,
        "comp" to BokehShaders.GUIDED_MOMENTS_COMPUTE_SHADER,
        "comp" to BokehShaders.GUIDED_SOLVE_COMPUTE_SHADER,
        "comp" to BokehShaders.GUIDED_MEAN_COMPUTE_SHADER,
        "comp" to BokehShaders.GUIDED_APPLY_COMPUTE_SHADER,
        "frag" to BokehShaders.JBU_UPSAMPLE_FRAGMENT_SHADER,
        "frag" to BokehShaders.DEPTH_REFINE_FRAGMENT_SHADER,
        "frag" to BokehShaders.COC_FRAGMENT_SHADER,
        "frag" to BokehShaders.COC_SPREAD_FRAGMENT_SHADER,
        "frag" to BokehShaders.GUIDE_LUMINANCE_FRAGMENT_SHADER,
        "frag" to BokehShaders.GUIDE_GRADIENT_FRAGMENT_SHADER,
        "frag" to BokehShaders.GUIDE_COMBINE_FRAGMENT_SHADER,
        "frag" to BokehShaders.COMPOSITE_FRAGMENT_SHADER,
        "comp" to BokehShaders.MAX_COMPUTE_SHADER,
        "comp" to BokehShaders.HISTOGRAM_COMPUTE_SHADER,
        "comp" to BokehShaders.SCATTER_COMPUTE_SHADER,
        "comp" to BokehShaders.INTEGRATE_COMPUTE_SHADER,
        "comp" to BokehShaders.UPSAMPLE_ADD_COMPUTE_SHADER,
        "comp" to BokehShaders.ALPHA_BLEND_COMPUTE_SHADER,
        "comp" to BokehShaders.STORE_COMPUTE_SHADER,
        "comp" to BokehShaders.CLEAR_COMPUTE_SHADER,
        "frag" to BokehStyleShaders.DEPTH_READBACK_FRAGMENT_SHADER,
        "frag" to BokehStyleShaders.BOKEH_LAYER_COLOR_FRAGMENT_SHADER,
        "frag" to BokehStyleShaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
        "frag" to BokehStyleShaders.BUBBLE_SOURCE_FRAGMENT_SHADER,
        "vert" to BokehStyleShaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER,
        "frag" to BokehStyleShaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
        "vert" to BokehStyleShaders.SOAP_BUBBLE_VERTEX_SHADER,
        "frag" to BokehStyleShaders.SOAP_BUBBLE_FRAGMENT_SHADER,
    )

    @Test
    fun everyLensBlurShaderStartsWithItsVersion() {
        shaders.forEachIndexed { index, (stage, shader) ->
            val version = if (stage == "comp") "#version 310 es" else "#version 300 es"
            assertTrue("shader $index must start with $version for Mali drivers", shader.startsWith(version))
        }
    }

    @Test
    fun lensBlurShadersPassAvailableNdkShaderValidator() {
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
                ndk.resolve("shader-tools").walkTopDown()
                    .firstOrNull { it.isFile && it.nameWithoutExtension == "glslc" }
            }
            ?.firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        shaders.forEachIndexed { index, (stage, shader) ->
            val sourceFile = File.createTempFile("lens-blur-$index-", ".$stage")
            val outputFile = File.createTempFile("lens-blur-$index-", ".spv")
            try {
                // glslc emits SPIR-V and requires GLSL ES 3.10; production graphics stay 3.00.
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
