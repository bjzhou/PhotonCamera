package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

class DngHdrProfileGainTableGpuShadersTest {
    @Test
    fun cellStatsKeeps256SamplesWith128CooperativeLanes() {
        val shader = DngHdrProfileGainTableGpuShaders.CELL_STATS

        assertEquals(
            GlesComputeWorkGroup.Size(x = 16, y = 8, z = 1),
            GlesComputeWorkGroup.declaredSize(shader),
        )
        assertTrue(shader.contains("const uint CELL_SAMPLE_COUNT = 256u;"))
        assertTrue(shader.contains("const uint CELL_LANE_COUNT = 128u;"))
        assertTrue(shader.contains("sampleIndex += CELL_LANE_COUNT"))
        assertTrue(shader.contains("localIndex += CELL_LANE_COUNT"))
        assertTrue(shader.contains("sortSamples(localIndex);"))
        GlesComputeWorkGroup.requireBaselineCompatible(shader, "DNG_PGTM_CELL_STATS")
    }

    @Test
    fun cellStatsPassesAvailableNdkValidator() {
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

        val sourceFile = File.createTempFile("dng-pgtm-cell-stats-", ".compute")
        val outputFile = File.createTempFile("dng-pgtm-cell-stats-", ".spv")
        try {
            sourceFile.writeText(DngHdrProfileGainTableGpuShaders.CELL_STATS)
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
            assertEquals(output, 0, process.waitFor())
        } finally {
            sourceFile.delete()
            outputFile.delete()
        }
    }
}
