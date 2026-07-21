package com.hinnka.mycamera.processor

import java.io.File
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class GlesRadianceVgnChromaPostprocessorTest {
    @Test
    fun postprocessorKeepsWbPairedAndDoesNotReapplyLensShading() {
        val seed = GlesRadianceVgnChromaShaders.seed
        val finish = GlesRadianceVgnChromaShaders.finalCameraRgb

        assertTrue(seed.contains("cameraRgb * uCalculationGains"))
        assertTrue(finish.contains("/\n                max(uCalculationGains"))
        assertTrue(seed.contains("directionMaskAt(p)"))
        assertTrue(seed.contains("count << 8"))
        assertTrue(seed.contains("const float finiteScale = 65504.0 / 65535.0"))
        assertTrue(!seed.contains("vec3(imageLoad(uCameraRgb"))
        assertTrue(!seed.contains("LensShading"))
        assertTrue(!finish.contains("LensShading"))
    }

    @Test
    fun everyFilterUsesGlobalCoordinatesOverTiledStorage() {
        val globalShaders = listOf(
            GlesRadianceVgnChromaShaders.seed,
            GlesRadianceVgnChromaShaders.colorNoise1,
            GlesRadianceVgnChromaShaders.colorNoise2,
            GlesRadianceVgnChromaShaders.colorNoise3Smooth,
            GlesRadianceVgnChromaShaders.restoreOriginal,
            GlesRadianceVgnChromaShaders.iirRgb,
            GlesRadianceVgnChromaShaders.calculateColorNoiseError,
            GlesRadianceVgnChromaShaders.iirError,
            GlesRadianceVgnChromaShaders.colorNoiseFilter,
            GlesRadianceVgnChromaShaders.finalCameraRgb,
        )

        globalShaders.forEach { shader ->
            assertTrue(shader.contains("ivec3 tiledPosition"))
            assertTrue(shader.contains("uTileLefts"))
            assertTrue(shader.contains("uTileTops"))
        }
        assertTrue(GlesRadianceVgnChromaShaders.iirRgb.contains("innerSize = uAxis == 0 ? uImageSize.x"))
        assertTrue(GlesRadianceVgnChromaShaders.iirRgb.contains("for (int i = 0; i < innerSize; ++i)"))
        assertTrue(GlesRadianceVgnChromaShaders.iirError.contains("for (int i = 0; i < innerSize; ++i)"))
    }

    @Test
    fun gpuHandoffVariantWritesTheSameFinalPixelToAFullSizeTexture() {
        val tiled = GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = false)
        val fullSize = GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = true)

        assertTrue(tiled.contains("uimage2DArray uOutput"))
        assertTrue(tiled.contains("imageStore(uOutput, storage, outputPixel)"))
        assertTrue(!tiled.contains("uFullSizeOutput"))
        assertTrue(fullSize.contains("uimage2D uFullSizeOutput"))
        assertTrue(fullSize.contains("imageStore(uFullSizeOutput, p, outputPixel)"))
        assertTrue(!fullSize.contains("uimage2DArray uOutput"))
    }

    @Test
    fun nativeScaleRetainsReferenceVgnCoefficientsAndSrScaleLowersDigitalCutoff() {
        val native = RadianceVgnChromaIirCoefficients.forOutputScale(1f)
        val sr = RadianceVgnChromaIirCoefficients.forOutputScale(1.5f)

        assertArrayEquals(
            floatArrayOf(0.0674552768f, 0.134910554f, 0.0674552768f, 0f),
            native.pass1.a10,
            0f,
        )
        assertArrayEquals(
            floatArrayOf(1f, -1.14298046f, 0.412801594f, 0f),
            native.pass1.b10,
            0f,
        )
        assertTrue(sr.pass1.a10[0] < native.pass1.a10[0])
        assertEquals(2f * sr.pass1.a10[0], sr.pass1.a10[1], 1e-6f)
    }

    @Test
    fun generatedPostprocessorShadersPassAvailableNdkValidator() {
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

        val sources = listOf(
            GlesRadianceVgnChromaShaders.capture,
            GlesRadianceVgnChromaShaders.seed,
            GlesRadianceVgnChromaShaders.colorNoise1,
            GlesRadianceVgnChromaShaders.colorNoise2,
            GlesRadianceVgnChromaShaders.colorNoise3Smooth,
            GlesRadianceVgnChromaShaders.restoreOriginal,
            GlesRadianceVgnChromaShaders.iirRgb,
            GlesRadianceVgnChromaShaders.calculateColorNoiseError,
            GlesRadianceVgnChromaShaders.iirError,
            GlesRadianceVgnChromaShaders.colorNoiseFilter,
            GlesRadianceVgnChromaShaders.finalCameraRgb,
            GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = true),
        )
        sources.forEachIndexed { index, source ->
            val sourceFile = File.createTempFile("radiance-vgn-chroma-$index-", ".compute")
            val outputFile = File.createTempFile("radiance-vgn-chroma-$index-", ".spv")
            try {
                sourceFile.writeText(source)
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=compute",
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
