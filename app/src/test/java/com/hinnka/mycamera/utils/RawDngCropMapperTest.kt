package com.hinnka.mycamera.utils

import org.junit.Assert.assertEquals
import org.junit.Test

class RawDngCropMapperTest {
    private val pre = RawCropRect(8, 8, 4048, 3048)
    private val post = RawCropRect(0, 0, 4000, 3000)

    @Test
    fun fullFieldMapsToEntireDngActiveArea() {
        val crop = map(crop = RawCropRect(0, 0, 4000, 3000))

        assertEquals(RawCropRect(0, 0, 4040, 3040), crop)
    }

    @Test
    fun postCorrectionCropMapsByNormalizedFieldOfView() {
        val crop = map(crop = RawCropRect(1000, 750, 3000, 2250))

        assertEquals(RawCropRect(1010, 760, 3030, 2280), crop)
    }

    @Test
    fun zoomRatioMapsFullPostZoomArrayToCenteredRawFieldOfView() {
        val crop = map(
            crop = RawCropRect(0, 0, 4000, 3000),
            zoomRatio = 2f,
        )

        assertEquals(RawCropRect(1010, 760, 3030, 2280), crop)
    }

    @Test
    fun scalerCropAndZoomRatioAreComposedInPostZoomCoordinates() {
        val crop = map(
            crop = RawCropRect(0, 0, 2000, 3000),
            zoomRatio = 2f,
        )

        assertEquals(RawCropRect(1010, 760, 2020, 2280), crop)
    }

    @Test
    fun distortionOffUsesPreCorrectionCoordinateDomain() {
        val crop = map(
            crop = RawCropRect(1010, 760, 3030, 2280),
            distortionOff = true,
        )

        assertEquals(RawCropRect(1002, 752, 3022, 2272), crop)
    }

    private fun map(
        crop: RawCropRect?,
        zoomRatio: Float = 1f,
        distortionOff: Boolean = false,
    ): RawCropRect {
        return RawDngCropMapper.mapToDefaultCrop(
            preCorrectionActiveArray = pre,
            postCorrectionActiveArray = post,
            scalerCropRegion = crop,
            zoomRatio = zoomRatio,
            usePreCorrectionCoordinateSystem = distortionOff,
            targetWidth = 4040,
            targetHeight = 3040,
        )
    }
}
