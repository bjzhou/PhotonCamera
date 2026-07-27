package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class GpuStackQueueTimingTest {
    @Test
    fun totalsPendingWaitAndKeepsStableStageFields() {
        val timing = GpuStackQueueTiming(
            stageWaits = listOf(
                GpuStackStageWait(GpuStackCompletionStage.NORMAL_ALIGNMENT, 0L),
                GpuStackStageWait(GpuStackCompletionStage.LONG_ALIGNMENT, 7L),
                GpuStackStageWait(GpuStackCompletionStage.HIGHLIGHT_ALIGNMENT, 11L),
                GpuStackStageWait(GpuStackCompletionStage.TILED_RECONSTRUCTION, 29L),
                GpuStackStageWait(GpuStackCompletionStage.CHROMA_POSTPROCESS, 2_137L),
                GpuStackStageWait(GpuStackCompletionStage.FINAL_EXPORT, 35L),
            ),
        )

        assertEquals(2_219L, timing.totalWaitMs)
        assertEquals(
            "normalAlignment=0ms longAlignment=7ms highlightAlignment=11ms " +
                "tiledReconstruction=29ms chromaPostprocess=2137ms finalExport=35ms",
            timing.logFields(),
        )
    }
}
