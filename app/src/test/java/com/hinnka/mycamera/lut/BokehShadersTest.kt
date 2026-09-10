package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.BokehStyle
import com.hinnka.mycamera.processor.BokehDefocusModel
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
            "uDepthTexture",
            "uLayerColorTexture",
            "uDepthMatrix",
            "uMaxBlurRadius",
            "uAperture",
            "uFocusDepth",
            "uTexelSize",
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
    fun naturalBokehKeepsItsCenterWeightedPsf() {
        val shader = Shaders.psfSplatFragmentShader(naturalStyle = true)
        assertTrue(shader.contains("#define NATURAL_BOKEH 1"))
        assertTrue(shader.contains("float softEdge = 1.0 - smoothstep(0.70, 1.05, lenP)"))
        assertTrue(shader.contains("float radialEnergy = exp(-lenP * lenP * 1.55)"))
        assertTrue(shader.contains("float centerWeightedTransmission = mix("))
        assertTrue(shader.contains("float softBase = max(3.5, uMaxBlurRadius * 0.12)"))
        assertEquals(Shaders.PSF_SPLAT_FRAGMENT_SHADER, Shaders.psfSplatFragmentShader(false))
    }

    @Test
    fun compactHighlightsKeepNeighborhoodAndDepthGates() {
        val shader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        assertTrue(shader.contains("PROBE_DIRECTIONS[16]"))
        assertTrue(shader.contains("if (ringLuma > centerLuma) return -1"))
        assertTrue(shader.contains("allRingSamplesAreDarker"))
        assertTrue(shader.contains("if (ringResult != 1)"))
        assertTrue(shader.contains("brightCoreSampleCount"))
        assertTrue(shader.contains("depthCoherenceGate"))
        assertTrue(shader.contains("maximumCoreDepthDelta"))
        assertTrue(shader.contains("* neighborhoodContrastGate"))
        assertTrue(shader.contains("sourceSignal * classifiedHighlight"))
    }

    @Test
    fun defaultHighlightsKeepFieldDependentApertureAndBoundedLdrOutput() {
        val vertex = Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER
        val fragment = Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        assertTrue(vertex.contains("float radialScale = mix(1.0, 0.54, fieldStrength)"))
        assertTrue(vertex.contains("float tangentialScale = mix(1.0, 1.08, fieldStrength)"))
        assertTrue(fragment.contains("smoothstep(0.38, 1.0, normalizedDistance)"))
        assertTrue(fragment.contains("float shoulderStrength = mix(0.025, 0.045, vFieldStrength)"))
        assertTrue(fragment.contains("vec3(0.18)"))
        assertTrue(fragment.contains("vSignal * (0.55 * transmission)"))
        assertTrue(fragment.contains("vec4(vSignal * transmission, 0.0)"))
    }

    @Test
    fun ordinaryBokehRadiusUsesSceneDepthSpanAndApertureScale() {
        listOf(
            Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            Shaders.PSF_SPLAT_FRAGMENT_SHADER,
            Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
        ).forEach { shader ->
            assertTrue(shader.contains(BokehDefocusModel.GLSL_SOURCE))
        }
    }

    @Test
    fun bokehStylePersistenceKeepsExistingBubbleEditsNatural() {
        assertEquals(BokehStyle.DEFAULT, BokehStyle.fromPersistedName("DEFAULT"))
        assertEquals(BokehStyle.NATURAL, BokehStyle.fromPersistedName("BUBBLE"))
        assertEquals(BokehStyle.BUBBLE, BokehStyle.fromPersistedName("SOAP_BUBBLE"))
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
    fun focusPlaneProtectionSupportsForegroundAndBackgroundDefocus() {
        val compactHighlightShader = Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER
        val compositeShader = Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER

        listOf(compactHighlightShader, bokehShader, compositeShader).forEach { shader ->
            assertTrue(shader.contains("abs(uFocusDepth - depth) - 0.015"))
            assertFalse(shader.contains("max(uFocusDepth - depth - 0.015"))
        }
        assertTrue(compactHighlightShader.contains("if (centerLuma <= 0.50)"))
        assertTrue(compactHighlightShader.contains("depthCoherenceGate"))
        assertTrue(compactHighlightShader.contains("maximumCoreDepthDelta"))
        assertFalse(compositeShader.contains("localDefocusCoverage"))
        assertTrue(compositeShader.contains("for (int y = -2; y <= 2; y++)"))
        assertTrue(compositeShader.contains("for (int x = -2; x <= 2; x++)"))
        assertTrue(compositeShader.contains("foregroundDefocusCoverage"))
        assertTrue(compositeShader.contains("sampleDepth - centerDepth"))
        assertTrue(compositeShader.contains("float foregroundSpill = smoothstep("))
        assertTrue(compositeShader.contains("0.65,"))
        assertTrue(compositeShader.contains(") * 0.76;"))
        assertTrue(compositeShader.contains("(1.0 - defocusMix) * (1.0 - foregroundSpill)"))
        assertFalse(compositeShader.contains("bokehMix = max(bokehMix, foregroundSpill)"))
        assertTrue(compositeShader.contains("backgroundWithHighlights"))
        assertFalse(compositeShader.contains("protectedFocusCoc"))
        assertTrue(
            compositeShader.contains(
                "mix(originalColor.rgb, backgroundWithHighlights, bokehMix)"
            )
        )
    }

    @Test
    fun layeredDepthPassesDeclareTheirGuideAndFocusInputs() {
        val upsample = Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER
        val refine = Shaders.DEPTH_REFINE_FRAGMENT_SHADER

        assertTrue(upsample.contains("uniform sampler2D uSubjectMask;"))
        assertTrue(upsample.contains("uniform vec2 uMaskTexelSize;"))
        assertTrue(upsample.contains("uniform vec4 uMaskBounds;"))
        assertTrue(refine.contains("uniform int uProtectSubject;"))
        listOf(upsample, refine).forEach { shader ->
            listOf("uHighResGuide", "uFocusDepth", "uLinearInput").forEach { uniform ->
                assertTrue(Regex("""uniform\s+\w+\s+$uniform\s*;""").containsMatchIn(shader))
            }
            assertTrue(shader.startsWith("#version 300 es"))
        }
    }

    @Test
    fun offlineBokehPassesAvailableNdkShaderValidator() {
        val localPropertiesSdk = listOf(File("local.properties"), File("../local.properties"))
            .firstOrNull(File::isFile)
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
            "frag" to Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER,
            "frag" to Shaders.DEPTH_REFINE_FRAGMENT_SHADER,
            "frag" to Shaders.DEPTH_READBACK_FRAGMENT_SHADER,
            "frag" to Shaders.BOKEH_LAYER_COLOR_FRAGMENT_SHADER,
            "frag" to Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            "frag" to Shaders.PSF_SPLAT_FRAGMENT_SHADER,
            "frag" to Shaders.psfSplatFragmentShader(true),
            "vert" to Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER,
            "frag" to Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            "frag" to Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
        )
        shaders.forEachIndexed { index, (stage, shader) ->
            assertTrue("shader $index must start with #version for Mali drivers", shader.startsWith("#version 300 es"))
            val sourceFile = File.createTempFile("offline-bokeh-$index-", ".$stage")
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
