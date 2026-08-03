package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.fail
import org.junit.Test

class GlesComputeWorkGroupTest {
    @Test
    fun imageAndLinearWorkGroupsFitTheGles31Baseline() {
        assertEquals(
            64,
            GlesComputeWorkGroup.IMAGE_TILE_SIZE * GlesComputeWorkGroup.IMAGE_TILE_SIZE,
        )
        assertEquals(128, GlesComputeWorkGroup.LINEAR_SIZE)
        assertEquals(
            GlesComputeWorkGroup.BASELINE_MAX_INVOCATIONS,
            GlesComputeWorkGroup.LINEAR_SIZE,
        )
    }

    @Test
    fun dispatchGroupCountCoversPartialGroups() {
        assertEquals(0, GlesComputeWorkGroup.imageGroupCount(0))
        assertEquals(1, GlesComputeWorkGroup.imageGroupCount(1))
        assertEquals(1, GlesComputeWorkGroup.imageGroupCount(8))
        assertEquals(2, GlesComputeWorkGroup.imageGroupCount(9))
        assertEquals(1, GlesComputeWorkGroup.linearGroupCount(128))
        assertEquals(2, GlesComputeWorkGroup.linearGroupCount(129))
    }

    @Test
    fun shaderDeclarationParserChecksTotalInvocations() {
        val compatible = """
            #version 310 es
            layout(local_size_x = 16, local_size_y = 8, local_size_z = 1) in;
            void main() {}
        """.trimIndent()
        val incompatible = """
            #version 310 es
            layout(local_size_x = 16, local_size_y = 16) in;
            void main() {}
        """.trimIndent()

        assertEquals(
            GlesComputeWorkGroup.Size(x = 16, y = 8, z = 1),
            GlesComputeWorkGroup.declaredSize(compatible),
        )
        GlesComputeWorkGroup.requireBaselineCompatible(compatible, "compatible")
        try {
            GlesComputeWorkGroup.requireBaselineCompatible(incompatible, "incompatible")
            fail("16x16 must exceed the GLES 3.1 invocation baseline")
        } catch (_: IllegalArgumentException) {
            // Expected.
        }
    }
}
