package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.BokehStyle
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
            "uHighlightSourceTexture",
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
    fun bubbleBokehUsesIntegratedCenterWeightedPsf() {
        val bokehShader = Shaders.PSF_SPLAT_FRAGMENT_SHADER

        assertTrue(bokehShader.contains("float softEdge = 1.0 - smoothstep(0.70, 1.05, lenP)"))
        assertTrue(bokehShader.contains("float radialEnergy = exp(-lenP * lenP * 1.55)"))
        assertTrue(bokehShader.contains("float centerWeightedTransmission = mix("))
        assertFalse(bokehShader.contains("centerHighlightLinear"))
        assertFalse(bokehShader.contains("integratedHighlight"))
        assertFalse(bokehShader.contains("bubbleHighlightWeight"))
        assertFalse(bokehShader.contains("highlightAccColor"))
        assertFalse(bokehShader.contains("highlightKernelWeight"))
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
        assertTrue(compactHighlightShader.contains("smoothstep(0.34, 0.62, centerLuma)"))
        assertTrue(compactHighlightShader.contains("smoothstep(0.68, 0.92, centerLuma)"))
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
        assertTrue(compactHighlightShader.contains("float compactCoreGate = smoothstep("))
        assertTrue(compactHighlightShader.contains("float removalCoreGate = smoothstep("))
        assertTrue(compactHighlightShader.contains("float classifiedHighlight = highlightGate"))
        assertTrue(compactHighlightShader.contains("float broadHighlightSignal = classifiedHighlight"))
        assertTrue(compactHighlightShader.contains("compactHighlight = pow("))
        assertTrue(compactHighlightShader.contains("centerLinear * broadHighlightSignal"))
        assertTrue(compactHighlightShader.contains("sourceSignal * classifiedHighlight"))
        assertTrue(bokehShader.contains("radialTransmission"))
        assertTrue(bokehShader.contains("biotarAperturePosition"))
        assertTrue(bokehShader.contains("vec2 tangential = vec2(-radial.y, radial.x)"))
        assertTrue(bokehShader.contains("float radialScale = mix(1.0, 0.54, fieldStrength)"))
        assertTrue(bokehShader.contains("float tangentialScale = mix(1.0, 1.08, fieldStrength)"))
        assertTrue(bokehShader.contains("const float rotation = 0.0"))
        assertFalse(bokehShader.contains("float hash("))
        assertTrue(bokehShader.contains("centerOccludesSource"))
        assertTrue(bokehShader.contains("sourceVisibility"))
        assertTrue(bokehShader.contains("focusedSurfaceProtection"))
        assertTrue(bokehShader.contains("float occlusionStrength = mix("))
        assertTrue(bokehShader.contains("float radianceWeight = mix("))
        assertTrue(bokehShader.contains("smoothstep(0.64, 1.0, lenP)"))
        assertTrue(bokehShader.contains("shoulder * 0.075"))
        assertTrue(bokehShader.contains("#if NATURAL_BOKEH == 1"))
        assertTrue(bokehShader.contains("#if SOAP_BUBBLE_BOKEH == 1"))
        assertTrue(bokehShader.contains("float broadOpticalRim = smoothstep("))
        assertTrue(bokehShader.contains("transparentCore"))
        assertTrue(bokehShader.contains("float compactHighlightConfidence = textureLod("))
        assertTrue(bokehShader.contains("float bubbleMix = clamp("))
        assertTrue(bokehShader.contains("float sceneIntegrationLod = inputIntegrationLod;"))
        assertTrue(bokehShader.contains("float expandedCompactConfidence = smoothstep("))
        assertTrue(bokehShader.contains(") * 0.34;"))
        assertTrue(bokehShader.contains("float softBase = max(4.5, uMaxBlurRadius * 0.16)"))
        assertTrue(bokehShader.contains("float centerWeightedTransmission = mix("))
        assertFalse(bokehShader.contains("vec4 integratedHighlight = textureLod("))
        assertFalse(bokehShader.contains("float bubbleHighlightWeight("))
        assertTrue(bokehShader.contains("float compactSignalLod = clamp("))
        assertFalse(bokehShader.contains("highlightConfidence"))
        assertFalse(bokehShader.contains("float irregularRadius = lenP"))
        assertFalse(bokehShader.contains("bubbleRim * arcVisibility"))
        assertTrue(bokehShader.contains("float softBase = max(3.5, uMaxBlurRadius * 0.12)"))
        assertTrue(bokehShader.contains("float foregroundDefocusPotential"))
        assertTrue(bokehShader.contains("float radialScale = mix(1.0, 0.78, fieldStrength)"))
        assertFalse(bokehShader.contains("isSharpForeground"))
        assertFalse(bokehShader.contains("reconstructionGain"))
        assertTrue(analyticHighlightShader.contains("normalizedDistance"))
        assertTrue(analyticHighlightShader.contains("highlightOpacity"))
        assertTrue(analyticHighlightShader.contains("compressedHighlight"))
        assertTrue(analyticHighlightShader.contains("vAperturePosition"))
        assertTrue(analyticHighlightShader.contains("vFieldStrength"))
        assertTrue(analyticHighlightShader.contains("softInterior"))
        assertTrue(analyticHighlightShader.contains("vec3(0.18)"))
        assertTrue(analyticHighlightShader.contains("vSignal * (0.55 * transmission)"))
        assertTrue(analyticHighlightShader.contains("fwidth(normalizedDistance)"))
        assertTrue(analyticHighlightShader.contains("float transparentCore = mix("))
        assertTrue(analyticHighlightShader.contains("float innerGlow = smoothstep("))
        assertTrue(analyticHighlightShader.contains("float rimBody = smoothstep("))
        assertTrue(analyticHighlightShader.contains("float rimPeak = smoothstep("))
        assertTrue(analyticHighlightShader.contains("float ringModulation = clamp("))
    }

    @Test
    fun analyticHighlightsUseTheSameFieldDependentBiotarShapeAsBackgroundBokeh() {
        val vertexShader = Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER
        val fragmentShader = Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER

        assertTrue(vertexShader.contains("vec2 field = (aCenterUv * 2.0 - 1.0)"))
        assertTrue(vertexShader.contains("vec2 tangential = vec2(-radial.y, radial.x)"))
        assertTrue(vertexShader.contains("smoothstep(0.12, 1.15, fieldRadius)"))
        assertTrue(vertexShader.contains("float radialScale = mix(1.0, 0.54, fieldStrength)"))
        assertTrue(vertexShader.contains("float tangentialScale = mix(1.0, 1.08, fieldStrength)"))
        assertTrue(vertexShader.contains("float radialScale = mix(1.0, 0.78, fieldStrength)"))
        assertTrue(vertexShader.contains("float tangentialScale = mix(1.0, 1.02, fieldStrength)"))
        assertTrue(fragmentShader.contains("smoothstep(0.38, 1.0, normalizedDistance)"))
        assertTrue(fragmentShader.contains("float shoulderStrength = mix(0.025, 0.045, vFieldStrength)"))
        assertTrue(fragmentShader.contains("transparentCore + innerGlow * 0.12"))
        assertTrue(fragmentShader.contains("flat in float vBubblePhase"))
        assertTrue(fragmentShader.contains("vec3(0.24)"))
        assertTrue(fragmentShader.contains("0.44 * transmission"))
        assertTrue(fragmentShader.contains("float sourceTransmission = mix("))
        assertTrue(fragmentShader.contains("float profileVariation = 0.5"))
        assertTrue(fragmentShader.contains("vec3(0.93, 1.02, 1.08)"))
        assertFalse(fragmentShader.contains("float irregularDistance"))
        assertFalse(vertexShader.contains("uniform int uBokehStyle"))
        assertFalse(fragmentShader.contains("uniform int uBokehStyle"))
        assertTrue(
            Shaders.analyticBokehHighlightVertexShader(true)
                .contains("#define SOAP_BUBBLE_BOKEH 1")
        )
        assertTrue(
            Shaders.analyticBokehHighlightFragmentShader(true)
                .contains("#define SOAP_BUBBLE_BOKEH 1")
        )
        assertFalse(fragmentShader.contains("smoothstep(0.86, 1.0, normalizedDistance)"))
    }

    @Test
    fun bokehRadiusUsesSceneDepthSpanAndApertureScale() {
        val shaders = listOf(
            Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            Shaders.PSF_SPLAT_FRAGMENT_SHADER,
            Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
        )

        shaders.forEach { shader ->
            assertTrue(shader.contains("float availableFocusSpan = max("))
            assertTrue(shader.contains("float normalizedGap = clamp(gap / availableFocusSpan"))
            assertTrue(shader.contains("float defocus = pow(normalizedGap, 1.25)"))
            assertTrue(shader.contains("float apertureScale = min(1.4 / max(uAperture, 0.7), 1.25)"))
            assertTrue(shader.contains("defocus * uMaxBlurRadius * apertureScale"))
        }

        val renderer = File(
            "src/main/java/com/hinnka/mycamera/processor/OglBokehProcessor.kt"
        ).readText()
        assertTrue(renderer.contains("originalImage.width.toFloat() / 26.0f"))
        assertTrue(renderer.contains("val normalizedGap = (gap / availableFocusSpan)"))
        assertTrue(renderer.contains("sourceRadiusPixels * 1.05f"))
        assertTrue(renderer.contains("MIN_BUBBLE_ANALYTIC_COC_PIXELS = 10f"))
        assertTrue(renderer.contains("BUBBLE_HIGHLIGHT_MIN_CENTER_SPACING_SCALE = 0.82f"))
        assertTrue(renderer.contains("val confidenceScale = sqrt(peak.alpha.coerceIn(0.0f, 1.0f))"))
        assertTrue(renderer.contains("val sourceExtentScale = sqrt("))
        assertTrue(renderer.contains("val stableLensVariation = 0.84f +"))
        assertTrue(renderer.contains("val opticalSizeScale = ("))
        assertTrue(renderer.contains("if (bokehStyle == BokehStyle.BUBBLE)"))
        assertTrue(renderer.contains("val sourceSignalScale = if (bokehStyle == BokehStyle.BUBBLE)"))
        assertTrue(renderer.contains("MIN_BUBBLE_ANALYTIC_COC_PIXELS * 0.38f"))
        assertFalse(renderer.contains("Bubble highlights integrated into PSF gather"))
        assertTrue(renderer.contains("Natural bokeh uses integrated radial PSF"))
        assertTrue(renderer.contains("Bubble bokeh uses integrated optical PSF"))
        assertTrue(renderer.contains("soapBubbleStyle = soapBubbleStyle"))
        assertTrue(renderer.contains("bokehStyle == BokehStyle.BUBBLE"))
        assertTrue(renderer.contains("Analytic bokeh highlights: style=\$bokehStyle"))
        assertTrue(renderer.contains("compactBokehHighlightFragmentShader(soapBubbleStyle)"))
        assertTrue(renderer.contains("\"uHighlightSourceTexture\""))
        assertTrue(renderer.contains("GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)"))
        assertTrue(renderer.contains("if (bokehStyle == BokehStyle.DEFAULT)"))
        assertTrue(renderer.contains("if (bokehStyle != BokehStyle.NATURAL)"))
        assertTrue(renderer.contains("val needsCompactHighlights = bokehStyle != BokehStyle.NATURAL"))
        assertTrue(renderer.contains("val needsAnalyticOverlay = bokehStyle == BokehStyle.DEFAULT"))
        assertFalse(renderer.contains("originalImage.width.toFloat() / 45.0f"))
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
    fun depthUpsamplingUsesARealBoundedSpatialRefinement() {
        val upsample = Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER
        val refine = Shaders.DEPTH_REFINE_FRAGMENT_SHADER

        assertTrue(upsample.contains("for (int y = -1; y <= 2; y++)"))
        assertTrue(upsample.contains("for (int x = -1; x <= 2; x++)"))
        assertTrue(upsample.contains("textureGrad("))
        assertTrue(upsample.contains("const float SIGMA_S = 1.05"))
        assertTrue(upsample.contains("const float SIGMA_R = 0.22"))
        assertTrue(refine.contains("float blurred"))
        assertTrue(refine.contains("for (int y = -2; y <= 2; y++)"))
        assertTrue(refine.contains("for (int x = -2; x <= 2; x++)"))
        assertTrue(refine.contains("uTexelSize * 2.0"))
        assertTrue(refine.contains("mix(center, blurred, 0.60 * edgeGate)"))
        assertFalse(refine.contains("center - blurred"))
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
            "frag" to Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER,
            "frag" to Shaders.DEPTH_REFINE_FRAGMENT_SHADER,
            "frag" to Shaders.DEPTH_READBACK_FRAGMENT_SHADER,
            "frag" to Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            "frag" to Shaders.compactBokehHighlightFragmentShader(true),
            "frag" to Shaders.PSF_SPLAT_FRAGMENT_SHADER,
            "frag" to Shaders.psfSplatFragmentShader(true),
            "frag" to Shaders.psfSplatFragmentShader(
                naturalStyle = true,
                soapBubbleStyle = true,
            ),
            "vert" to Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER,
            "frag" to Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
            "vert" to Shaders.analyticBokehHighlightVertexShader(true),
            "frag" to Shaders.analyticBokehHighlightFragmentShader(true),
            "frag" to Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
        )
        shaders.forEachIndexed { index, (stage, shader) ->
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
