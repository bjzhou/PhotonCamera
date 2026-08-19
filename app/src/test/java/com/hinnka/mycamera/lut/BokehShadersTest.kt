package com.hinnka.mycamera.lut

import java.io.File
import java.util.Properties
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
            "uMinNeighborhoodLumaDifference",
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
    fun backgroundBokehNeverSubtractsAnalyticHighlightSignal() {
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER

        assertTrue(bokehShader.contains("vec3 accColor = centerLinear * centerWeight"))
        assertTrue(bokehShader.contains("accColor += sLinear * weight"))
        assertFalse(bokehShader.contains("AcceptedHighlight"))
        assertFalse(bokehShader.contains("acceptedHighlight"))
    }

    @Test
    fun bokehOnlyReconstructsCompactHighlightsWithDefinedApertureEdges() {
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER
        val compactHighlightShader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        val analyticHighlightShader = Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER

        assertFalse(
            "ordinary bokeh samples must not receive a blanket HDR boost",
            bokehShader.contains("hdrBoost"),
        )
        assertFalse(
            "reverse smoothstep has undefined GLSL results",
            bokehShader.contains("smoothstep(1.0, 0.88"),
        )
        assertTrue(compactHighlightShader.contains("PROBE_DIRECTIONS[16]"))
        assertTrue(compactHighlightShader.contains("if (centerLuma <="))
        assertTrue(compactHighlightShader.contains("if (ringLuma > centerLuma) return -1"))
        assertTrue(compactHighlightShader.contains("allRingSamplesAreDarker"))
        assertTrue(compactHighlightShader.contains("nearRingRadius"))
        assertTrue(compactHighlightShader.contains("middleRingRadius"))
        assertTrue(compactHighlightShader.contains("farRingRadius"))
        assertTrue(compactHighlightShader.contains("if (ringResult != 1)"))
        assertTrue(compactHighlightShader.contains("A complete ring cannot be observed"))
        assertTrue(
            compactHighlightShader.contains(
                "MIN_HIGHLIGHT_CORE_RADIUS_PIXELS = 2.5"
            )
        )
        assertTrue(
            compactHighlightShader.contains(
                "MIN_HIGHLIGHT_CORE_DIRECTION_COUNT = 12.0"
            )
        )
        assertTrue(compactHighlightShader.contains("coreBrightnessThreshold"))
        assertTrue(compactHighlightShader.contains("brightCoreSampleCount"))
        assertFalse(compactHighlightShader.contains("darkerDirectionCount"))
        assertFalse(compactHighlightShader.contains("darkDirectionRatio"))
        assertTrue(compactHighlightShader.contains("mediumHighlightGate"))
        assertTrue(compactHighlightShader.contains("strongPointGate"))
        assertTrue(compactHighlightShader.contains("smoothstep(0.18, 0.50, centerLuma)"))
        assertTrue(compactHighlightShader.contains("smoothstep(0.65, 0.90, centerLuma)"))
        assertFalse(compactHighlightShader.contains("smoothstep(0.07, 0.26, centerLuma)"))
        assertTrue(compactHighlightShader.contains("ringProbeRadius"))
        assertTrue(compactHighlightShader.contains("maxRingLuma"))
        assertTrue(compactHighlightShader.contains("relativeContrast"))
        assertTrue(compactHighlightShader.contains("neighborhoodContrastGate"))
        assertTrue(
            compactHighlightShader.contains(
                "uMinNeighborhoodLumaDifference + 0.04"
            )
        )
        assertTrue(compactHighlightShader.contains("* neighborhoodContrastGate"))
        assertTrue(compactHighlightShader.contains("localMaximumGate"))
        assertTrue(compactHighlightShader.contains("centerednessGate"))
        assertTrue(bokehShader.contains("radialTransmission"))
        assertTrue(bokehShader.contains("const float rotation = 0.0"))
        assertFalse(bokehShader.contains("float hash("))
        assertTrue(bokehShader.contains("centerOccludesSource"))
        assertTrue(bokehShader.contains("sourceVisibility"))
        assertFalse(bokehShader.contains("isSharpForeground"))
        assertFalse(bokehShader.contains("reconstructionGain"))
        assertTrue(analyticHighlightShader.contains("normalizedDistance"))
        assertTrue(analyticHighlightShader.contains("highlightOpacity"))
        assertTrue(analyticHighlightShader.contains("compressedHighlight"))
        assertTrue(analyticHighlightShader.contains("vec3(0.52)"))
    }

    @Test
    fun bokehCompositeDeclaresEveryUniformRequiredByItsRenderer() {
        val shader = Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER
        val expectedUniforms = listOf(
            "uOriginalTexture",
            "uBokehTexture",
            "uHighlightTexture",
            "uDepthTexture",
            "uDepthMatrix",
            "uMaxBlurRadius",
            "uAperture",
            "uFocusDepth",
            "uDepthTexelSize",
            "uLinearInput",
        )

        expectedUniforms.forEach { uniform ->
            assertTrue(
                "$uniform must be declared by the bokeh composite shader",
                Regex("""uniform\s+\w+\s+$uniform\s*;""").containsMatchIn(shader),
            )
        }
    }

    @Test
    fun finalCompositeKeepsBackgroundHighlightsBehindTheProtectedForeground() {
        val compactHighlightShader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER
        val compositeShader = Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER

        listOf(compactHighlightShader, bokehShader, compositeShader).forEach { shader ->
            assertTrue(shader.contains("uFocusDepth - depth - 0.015"))
            assertFalse(shader.contains("abs(uFocusDepth - depth)"))
        }
        assertTrue(compositeShader.contains("protectedForegroundDepth"))
        assertTrue(compositeShader.contains("foregroundOcclusion"))
        assertTrue(compositeShader.contains("backgroundWithHighlights"))
        assertTrue(compositeShader.contains("backgroundMix *= 1.0 - foregroundOcclusion"))
        assertTrue(
            compositeShader.contains(
                "mix(originalColor.rgb, backgroundWithHighlights, backgroundMix)"
            )
        )
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
        val localPropertiesSdk = File("local.properties")
            .takeIf(File::isFile)
            ?.inputStream()
            ?.use { input ->
                Properties().apply { load(input) }.getProperty("sdk.dir")
            }
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
