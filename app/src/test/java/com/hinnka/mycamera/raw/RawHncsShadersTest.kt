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
        assertEquals(RawRenderingEngine.Hncs, RawRenderingEngine.fromPersistedName("HncsCcm"))
        assertEquals(RawRenderingEngine.Hncs, RawRenderingEngine.fromPersistedName("HncsLut"))
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
            colorEngine = RawRenderingEngine.Hncs,
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
    fun rawSrgbOutputEncodesLinearRgbExactlyOnce() {
        val shader = RawSrgbPass.FRAGMENT_SHADER

        assertTrue(shader.contains("vec3 color = texture(uInputTexture, vTexCoord).rgb;"))
        assertTrue(shader.contains("fragColor = vec4(linearToSrgb(color), 1.0);"))
        assertEquals(
            1,
            Regex(Regex.escape("linearToSrgb(color)")).findAll(shader).count(),
        )
    }

    @Test
    fun engineFragmentShadersPassAvailableNdkValidator() {
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT") ?: System.getenv("ANDROID_HOME")
        val ndkRoots = sdkRoot?.let(::File)
            ?.resolve("ndk")
            ?.listFiles()
            ?.sortedByDescending { it.name }
            .orEmpty() + listOfNotNull(System.getenv("ANDROID_NDK_HOME")?.let(::File))
        val validator = ndkRoots.asSequence()
            .mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.name in setOf("glslc", "glslc.exe") && it.canExecute() }
            }
            .firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        val shaders = listOf(
            RawEngineTonePass.fragmentShaderFor(RawRenderingEngine.AdobeCurve),
            RawEngineTonePass.combinedFragmentShaderFor(RawRenderingEngine.AdobeCurve),
            RawEngineTonePass.hdrReferenceFragmentShaderFor(RawRenderingEngine.AdobeCurve),
            RawEngineTonePass.hdrBaseCurveFragmentShaderFor(RawRenderingEngine.AdobeCurve),
            RawEngineTonePass.combinedFragmentShaderFor(
                colorEngine = RawRenderingEngine.Hncs,
                includeShadowsHighlights = false,
            ),
            RawEngineTonePass.combinedFragmentShaderFor(
                colorEngine = RawRenderingEngine.Hncs,
                includeShadowsHighlights = true,
            ),
            RawEngineTonePass.combinedFragmentShaderFor(RawRenderingEngine.Lumix),
            RawEngineTonePass.hdrReferenceFragmentShaderFor(RawRenderingEngine.Hncs),
            RawEngineTonePass.hdrBaseCurveFragmentShaderFor(RawRenderingEngine.Hncs),
            RawSrgbPass.FRAGMENT_SHADER,
        )
        shaders.forEachIndexed { index, shader ->
            val sourceFile = File.createTempFile("raw-engine-$index-", ".frag")
            val outputFile = File.createTempFile("raw-engine-$index-", ".spv")
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
