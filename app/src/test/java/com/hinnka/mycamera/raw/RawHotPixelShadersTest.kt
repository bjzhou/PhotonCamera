package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

class RawHotPixelShadersTest {
    @Test
    fun shadersKeepSeparateIntegerImagesAndBaselineWorkGroups() {
        val shaders = listOf(RawHotPixelShaders.DETECT, RawHotPixelShaders.REPAIR)
        shaders.forEachIndexed { index, shader ->
            assertEquals(
                "shader $index work-group",
                GlesComputeWorkGroup.Size(x = 8, y = 8, z = 1),
                GlesComputeWorkGroup.declaredSize(shader),
            )
            GlesComputeWorkGroup.requireBaselineCompatible(shader, "RAW_HOT_PIXEL_$index")
            assertTrue(
                "shader $index must read integer RAW through a sampler",
                shader.contains("uniform highp usampler2D uRawTexture;"),
            )
        }
        assertTrue(RawHotPixelShaders.DETECT.contains("layout(rgba8ui, binding = 0) writeonly"))
        assertTrue(RawHotPixelShaders.REPAIR.contains("layout(rgba8ui, binding = 0) readonly"))
        assertTrue(RawHotPixelShaders.REPAIR.contains("layout(rgba16ui, binding = 1) writeonly"))
        assertTrue(
            VgnShaders.PREPARE_PACKED_RAW.contains(
                "texelFetch(uRawTexture, ivec2(q.x / 4, q.y), 0)",
            ),
        )
    }

    @Test
    fun shadersPassAvailableNdkValidator() {
        val validator = findNdkGlslc()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        listOf(
            "detect" to RawHotPixelShaders.DETECT,
            "repair" to RawHotPixelShaders.REPAIR,
            "vgn-prepare" to VgnShaders.PREPARE_PACKED_RAW,
        ).forEach { (label, shader) ->
                val sourceFile = File.createTempFile("raw-hot-pixel-$label-", ".compute")
                val outputFile = File.createTempFile("raw-hot-pixel-$label-", ".spv")
                try {
                    sourceFile.writeText(shader)
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
                    assertEquals("shader $label: $output", 0, process.waitFor())
                } finally {
                    sourceFile.delete()
                    outputFile.delete()
                }
            }
    }

    private fun findNdkGlslc(): File? {
        val directNdk = System.getenv("ANDROID_NDK_HOME")
            ?.let(::File)
            ?.takeIf(File::isDirectory)
        val sdkNdkRoots = sequenceOf(
            System.getenv("ANDROID_SDK_ROOT"),
            System.getenv("ANDROID_HOME"),
        )
            .filterNotNull()
            .map(::File)
            .map { it.resolve("ndk") }
            .filter(File::isDirectory)
            .flatMap { root ->
                root.listFiles()
                    ?.sortedByDescending { it.name }
                    ?.asSequence()
                    ?: emptySequence()
            }
        val ndkRoots = sequence {
            if (directNdk != null) yield(directNdk)
            yieldAll(sdkNdkRoots)
        }
        return ndkRoots
            .mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.name.startsWith("glslc") && it.canExecute() }
            }
            .firstOrNull()
    }
}
