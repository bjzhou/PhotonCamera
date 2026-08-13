package com.hinnka.mycamera.lut

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class VideoExportResolutionTest {

    @Test
    fun `original resolution keeps exact source dimensions`() {
        assertEquals(
            VideoExportSize(8192, 4320),
            calculateVideoExportSize(8192, 4320, VideoExportResolution.ORIGINAL),
        )
    }

    @Test
    fun `8K source can retain 8K or downscale to standard 4K`() {
        assertEquals(
            VideoExportSize(7680, 4320),
            calculateVideoExportSize(7680, 4320, VideoExportResolution.UHD_8K),
        )
        assertEquals(
            VideoExportSize(3840, 2160),
            calculateVideoExportSize(7680, 4320, VideoExportResolution.UHD_4K),
        )
    }

    @Test
    fun `portrait source preserves orientation`() {
        assertEquals(
            VideoExportSize(1080, 1920),
            calculateVideoExportSize(4320, 7680, VideoExportResolution.FHD_1080P),
        )
    }

    @Test
    fun `non sixteen by nine source fits inside selected boundary without cropping`() {
        assertEquals(
            VideoExportSize(2880, 2160),
            calculateVideoExportSize(7680, 5760, VideoExportResolution.UHD_4K),
        )
    }

    @Test
    fun `resolution above source is rejected instead of upscaled`() {
        assertNull(calculateVideoExportSize(1920, 1080, VideoExportResolution.UHD_4K))
    }

    @Test
    fun `bitrate follows selected pixel count`() {
        assertEquals(
            25_000_000,
            calculateVideoExportBitrate(
                sourceBitrate = 100_000_000,
                sourceWidth = 7680,
                sourceHeight = 4320,
                outputWidth = 3840,
                outputHeight = 2160,
            ),
        )
        assertEquals(
            100_000_000,
            calculateVideoExportBitrate(
                sourceBitrate = 100_000_000,
                sourceWidth = 7680,
                sourceHeight = 4320,
                outputWidth = 7680,
                outputHeight = 4320,
            ),
        )
    }
}
