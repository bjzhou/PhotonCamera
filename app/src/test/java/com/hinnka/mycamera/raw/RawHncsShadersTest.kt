package com.hinnka.mycamera.raw

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class RawHncsShadersTest {
    @Test
    fun hncsSelectionsRoundTripPersistedValues() {
        HncsFilmCurveMode.entries.forEach { mode ->
            assertEquals(
                mode,
                HncsFilmCurveMode.fromPersistedValue(mode.persistedValue),
            )
        }
    }

    @Test
    fun removedBasicFilmCurveSelectionFallsBackToStandard() {
        assertEquals(
            HncsFilmCurveMode.Standard,
            HncsFilmCurveMode.fromPersistedValue("basic"),
        )
    }

    @Test
    fun hncsShaderKeepsFilmCurveBeforeGammaAndOmitsHighlightStrength() {
        val shader = RawEngineTonePass.combinedFragmentShaderFor(
            colorEngine = RawRenderingEngine.HncsCcm,
            includeShadowsHighlights = false,
        )
        val filmCurve = shader.indexOf("color = hncsApplyFilmCurve(color);")
        val gamma = shader.indexOf("color = hncsGammaEncode(color);")

        assertTrue(filmCurve >= 0)
        assertTrue(gamma > filmCurve)
        assertFalse(shader.contains("hncsApplyHighlightStrength"))
        assertFalse(shader.contains("uHncsHighlight"))
    }

    @Test
    fun naturalLightHncsOutputDecodesThenTransformsThenEncodes() {
        val shader = HncsNaturalLightOutputPassShaders.FRAGMENT_SHADER
        val decode = shader.indexOf("gamma22Eotf(sampleValue.rgb)")
        val transform = shader.indexOf("uHncsToLinearOutput * gamma22Eotf")
        val displayEncode = shader.indexOf("linearToSrgb(linearOutput)")

        assertTrue(transform >= 0)
        assertTrue(decode in transform until displayEncode)
        assertTrue(displayEncode > transform)
        assertTrue(shader.contains("linearOutput = applyBlackWhiteLevels(linearOutput);"))
    }

    @Test
    fun naturalLightStandardOutputEncodesLinearRgbExactlyOnce() {
        val shader = RawSrgbPass.FRAGMENT_SHADER

        assertTrue(shader.contains("vec3 color = texture(uInputTexture, vTexCoord).rgb;"))
        assertTrue(shader.contains("fragColor = vec4(linearToSrgb(color), 1.0);"))
        assertEquals(
            1,
            Regex(Regex.escape("linearToSrgb(color)")).findAll(shader).count(),
        )
    }

    @Test
    fun hncsFragmentShadersPassAvailableNdkValidator() {
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT") ?: System.getenv("ANDROID_HOME")
        val validator = sdkRoot?.let(::File)
            ?.resolve("ndk")
            ?.listFiles()
            ?.sortedByDescending { it.name }
            ?.asSequence()
            ?.mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.name == "glslc" && it.canExecute() }
            }
            ?.firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        val shaders = listOf(
            RawEngineTonePass.combinedFragmentShaderFor(
                colorEngine = RawRenderingEngine.HncsCcm,
                includeShadowsHighlights = false,
            ),
            RawEngineTonePass.combinedFragmentShaderFor(
                colorEngine = RawRenderingEngine.HncsLut,
                includeShadowsHighlights = true,
            ),
            HncsNaturalLightOutputPassShaders.FRAGMENT_SHADER,
            RawSrgbPass.FRAGMENT_SHADER,
        )
        shaders.forEachIndexed { index, shader ->
            val sourceFile = File.createTempFile("raw-hncs-$index-", ".frag")
            val outputFile = File.createTempFile("raw-hncs-$index-", ".spv")
            try {
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
