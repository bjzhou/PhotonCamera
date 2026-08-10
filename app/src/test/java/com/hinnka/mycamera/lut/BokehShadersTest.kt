package com.hinnka.mycamera.lut

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class BokehShadersTest {
    @Test
    fun offlineBokehDeclaresEveryUniformRequiredByItsRenderer() {
        val shader = Shaders.PSF_SPLAT_FRAGMENT_SHADER
        val expectedUniforms = listOf(
            "uInputTexture",
            "uHighlightTexture",
            "uDepthTexture",
            "uDepthMatrix",
            "uMaxBlurRadius",
            "uAperture",
            "uFocusDepth",
            "uTexelSize",
            "uLinearInput",
        )

        expectedUniforms.forEach { uniform ->
            assertTrue(
                "$uniform must be declared by the offline bokeh shader",
                Regex("""uniform\s+\w+\s+$uniform\s*;""").containsMatchIn(shader),
            )
        }
    }

    @Test
    fun compactHighlightShaderDeclaresEveryUniformRequiredByItsRenderer() {
        val shader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        val expectedUniforms = listOf(
            "uInputTexture",
            "uDepthTexture",
            "uDepthMatrix",
            "uMaxBlurRadius",
            "uAperture",
            "uFocusDepth",
            "uTexelSize",
            "uLinearInput",
        )

        expectedUniforms.forEach { uniform ->
            assertTrue(
                "$uniform must be declared by the compact-highlight shader",
                Regex("""uniform\s+\w+\s+$uniform\s*;""").containsMatchIn(shader),
            )
        }
    }

    @Test
    fun bokehOnlyReconstructsCompactHighlightsWithDefinedApertureEdges() {
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER
        val highlightShader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER

        assertFalse(
            "ordinary bokeh samples must not receive a blanket HDR boost",
            bokehShader.contains("hdrBoost"),
        )
        assertFalse(
            "reverse smoothstep has undefined GLSL results",
            bokehShader.contains("smoothstep(1.0, 0.88"),
        )
        assertTrue(highlightShader.contains("darkDirectionRatio"))
        assertTrue(highlightShader.contains("mediumHighlightGate"))
        assertTrue(highlightShader.contains("strongPointGate"))
        assertTrue(highlightShader.contains("smoothstep(0.27, 0.50, centerLuma)"))
        assertTrue(highlightShader.contains("smoothstep(0.65, 0.90, centerLuma)"))
        assertFalse(highlightShader.contains("smoothstep(0.07, 0.26, centerLuma)"))
        assertTrue(highlightShader.contains("innerProbeRadius"))
        assertTrue(highlightShader.contains("outerProbeRadius"))
        assertTrue(highlightShader.contains("relativeContrast"))
        assertTrue(highlightShader.contains("localMaximumGate"))
        assertTrue(highlightShader.contains("centerednessGate"))
        assertTrue(bokehShader.contains("accCompactHighlight"))
        assertTrue(bokehShader.contains("accHighlightKernelWeight"))
        assertTrue(bokehShader.contains("centerLinear - centerHighlight"))
        assertTrue(bokehShader.contains("sLinear - compactHighlight"))
        assertTrue(bokehShader.contains("radialTransmission"))
        assertTrue(bokehShader.contains("highlightOpacity"))
        assertTrue(bokehShader.contains("compressedHighlight"))
        assertTrue(bokehShader.contains("peakCompactHighlight"))
        assertTrue(bokehShader.contains("energyPreservingHighlight"))
        assertTrue(bokehShader.contains("vec3(0.52)"))
        assertTrue(bokehShader.contains("const float rotation = 0.0"))
        assertFalse(bokehShader.contains("float hash("))
        assertTrue(bokehShader.contains("centerOccludesSource"))
        assertTrue(bokehShader.contains("sourceVisibility"))
        assertFalse(bokehShader.contains("isSharpForeground"))
        assertFalse(bokehShader.contains("reconstructionGain"))
    }

    @Test
    fun bokehCompositeDeclaresEveryUniformRequiredByItsRenderer() {
        val shader = Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER
        val expectedUniforms = listOf(
            "uOriginalTexture",
            "uBokehTexture",
            "uDepthTexture",
            "uDepthMatrix",
            "uMaxBlurRadius",
            "uAperture",
            "uFocusDepth",
        )

        expectedUniforms.forEach { uniform ->
            assertTrue(
                "$uniform must be declared by the bokeh composite shader",
                Regex("""uniform\s+\w+\s+$uniform\s*;""").containsMatchIn(shader),
            )
        }
    }

    @Test
    fun depthUpsamplingUsesARealBoundedSpatialRefinement() {
        val upsample = Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER
        val refine = Shaders.DEPTH_REFINE_FRAGMENT_SHADER

        assertTrue(upsample.contains("for (int y = -1; y <= 2; y++)"))
        assertTrue(upsample.contains("for (int x = -1; x <= 2; x++)"))
        assertTrue(upsample.contains("textureGrad("))
        assertTrue(refine.contains("float blurred"))
        assertTrue(refine.contains("center - blurred"))
        assertTrue(refine.contains("localMin"))
        assertTrue(refine.contains("localMax"))
        assertFalse(refine.contains("smoothstep(0.05, 0.95, center)"))
    }

    @Test
    fun offlineBokehPassesAvailableNdkShaderValidator() {
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT") ?: System.getenv("ANDROID_HOME")
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

        val shaders = listOf(
            Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER,
            Shaders.DEPTH_REFINE_FRAGMENT_SHADER,
            Shaders.DEPTH_READBACK_FRAGMENT_SHADER,
            Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            Shaders.PSF_SPLAT_FRAGMENT_SHADER,
            Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
        )
        shaders.forEachIndexed { index, shader ->
            val sourceFile = File.createTempFile("offline-bokeh-$index-", ".frag")
            val outputFile = File.createTempFile("offline-bokeh-$index-", ".spv")
            try {
                // glslc emits SPIR-V and therefore requires GLSL ES 3.10 or newer.
                // Only the validator copy needs the higher version; the production
                // shader remains GLSL ES 3.00 for the app's OpenGL ES 3.0 renderer.
                sourceFile.writeText(shader.replaceFirst("#version 300 es", "#version 310 es"))
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=frag",
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
