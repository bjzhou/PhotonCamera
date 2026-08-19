package com.hinnka.mycamera.processor

import java.io.File
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class GlesMgcSpatialRgbChromaPostprocessorTest {
    @Test
    fun postprocessorKeepsWbPairedAndDoesNotReapplyLensShading() {
        val seed = GlesMgcSpatialRgbChromaShaders.seed
        val finish = GlesMgcSpatialRgbChromaShaders.finalCameraRgb

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
    fun everyFilterUsesDirectCoordinatesOverFullSize2dStorage() {
        val globalShaders = listOf(
            GlesMgcSpatialRgbChromaShaders.seed,
            GlesMgcSpatialRgbChromaShaders.colorNoise1,
            GlesMgcSpatialRgbChromaShaders.colorNoise2,
            GlesMgcSpatialRgbChromaShaders.colorNoise3Smooth,
            GlesMgcSpatialRgbChromaShaders.restoreOriginal,
            GlesMgcSpatialRgbChromaShaders.iirRgb,
            GlesMgcSpatialRgbChromaShaders.calculateColorNoiseError,
            GlesMgcSpatialRgbChromaShaders.iirError,
            GlesMgcSpatialRgbChromaShaders.colorNoiseFilter,
            GlesMgcSpatialRgbChromaShaders.finalCameraRgb,
        )

        globalShaders.forEach { shader ->
            assertTrue(shader.contains("uimage2D"))
            assertTrue(!shader.contains("uimage2DArray"))
            assertTrue(!shader.contains("uTileLefts"))
            assertTrue(!shader.contains("uTileTops"))
            assertTrue(!shader.contains("tiledPosition"))
        }
        assertTrue(GlesMgcSpatialRgbChromaShaders.iirRgb.contains("innerSize = uAxis == 0 ? uImageSize.x"))
        assertTrue(GlesMgcSpatialRgbChromaShaders.iirRgb.contains("for (int i = 0; i < innerSize; ++i)"))
        assertTrue(GlesMgcSpatialRgbChromaShaders.iirRgb.contains("ivec2 storage = p;"))
        assertTrue(GlesMgcSpatialRgbChromaShaders.iirRgb.contains("imageStore(uOutput, storage"))
        assertTrue(GlesMgcSpatialRgbChromaShaders.iirError.contains("for (int i = 0; i < innerSize; ++i)"))
    }

    @Test
    fun finalHandoffUsesOneGlobal2dSurface() {
        val finish = GlesMgcSpatialRgbChromaShaders.finalCameraRgb

        assertTrue(finish.contains("uimage2D uInput"))
        assertTrue(finish.contains("uimage2D uOutput"))
        assertTrue(finish.contains("imageStore(uOutput, p, outputPixel)"))
        assertTrue(!finish.contains("uimage2DArray"))
    }

    @Test
    fun nativeScaleRetainsReferenceVgnCoefficientsAndSrScaleLowersDigitalCutoff() {
        val native = MgcSpatialRgbChromaIirCoefficients.forOutputScale(1f)
        val sr = MgcSpatialRgbChromaIirCoefficients.forOutputScale(1.5f)

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
            GlesMgcSpatialRgbChromaShaders.seed,
            GlesMgcSpatialRgbChromaShaders.colorNoise1,
            GlesMgcSpatialRgbChromaShaders.colorNoise2,
            GlesMgcSpatialRgbChromaShaders.colorNoise3Smooth,
            GlesMgcSpatialRgbChromaShaders.restoreOriginal,
            GlesMgcSpatialRgbChromaShaders.iirRgb,
            GlesMgcSpatialRgbChromaShaders.calculateColorNoiseError,
            GlesMgcSpatialRgbChromaShaders.iirError,
            GlesMgcSpatialRgbChromaShaders.colorNoiseFilter,
            GlesMgcSpatialRgbChromaShaders.finalCameraRgb,
        )
        sources.forEachIndexed { index, source ->
            val sourceFile = File.createTempFile("mgc-spatial-rgb-chroma-$index-", ".compute")
            val outputFile = File.createTempFile("mgc-spatial-rgb-chroma-$index-", ".spv")
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

