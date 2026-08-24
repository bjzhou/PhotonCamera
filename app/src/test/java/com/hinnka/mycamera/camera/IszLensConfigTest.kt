package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class IszLensConfigTest {
    @Test
    fun createVirtualCameraId_withoutVendorProfileKeepsLegacyId() {
        assertEquals(
            "isz:0:2",
            IszLensConfig.createVirtualCameraId(
                baseCameraId = "0",
                iszZoomRatio = 2f
            )
        )
    }

    @Test
    fun createVirtualCameraId_withVendorProfileDistinguishesSameBaseAndRatio() {
        val legacyId = IszLensConfig.createVirtualCameraId(
            baseCameraId = "0",
            iszZoomRatio = 2f
        )
        val profiledId = IszLensConfig.createVirtualCameraId(
            baseCameraId = "0",
            iszZoomRatio = 2f,
            vendorCaptureProfileId = "insensor_zoom_1"
        )

        assertEquals("isz:0:2:insensor_zoom_1", profiledId)
        assertNotEquals(legacyId, profiledId)
    }

    @Test
    fun serializeList_keepsSameBaseAndRatioWhenVendorProfilesDiffer() {
        val configs = listOf(
            IszLensConfig(
                baseCameraId = "0",
                iszZoomRatio = 2f,
                vendorCaptureProfileId = "insensor_zoom_1"
            ),
            IszLensConfig(
                baseCameraId = "0",
                iszZoomRatio = 2f,
                vendorCaptureProfileId = "qcom_sensor_current_mode_1"
            )
        )

        val restored = IszLensConfig.deserializeList(IszLensConfig.serializeList(configs))

        assertEquals(2, restored.size)
        assertEquals(2, restored.map { it.virtualCameraId }.distinct().size)
    }

    @Test
    fun resolveCamera2DeviceId_mapsVirtualLensToConfiguredBaseCamera() {
        val config = IszLensConfig(
            baseCameraId = "2",
            iszZoomRatio = 2f,
            vendorCaptureProfileId = "oplus_agingtest_mode_select_22",
        )

        assertEquals(
            "2",
            IszLensConfig.resolveCamera2DeviceId(
                cameraId = config.virtualCameraId,
                configs = listOf(config),
            ),
        )
    }

    @Test
    fun resolveCamera2DeviceId_neverReturnsUnmappedVirtualId() {
        assertNull(
            IszLensConfig.resolveCamera2DeviceId(
                cameraId = "isz:2:2:oplus_agingtest_mode_select_22",
                configs = emptyList(),
            ),
        )
        assertEquals(
            "2",
            IszLensConfig.resolveCamera2DeviceId(cameraId = "2", configs = emptyList()),
        )
    }

    @Test
    fun legacyPortraitCropMigratesOnceAndSerializesAsSensorCoordinates() {
        val legacyJson =
            """[{"base_camera_id":"0","isz_zoom_ratio":2,"raw_black_border_crop_left_px":10,"raw_black_border_crop_top_px":20,"raw_black_border_crop_right_px":30,"raw_black_border_crop_bottom_px":40}]"""
        val legacy = IszLensConfig.deserializeList(legacyJson).single()

        assertTrue(legacy.rawBlackBorderCropUsesLegacyPortraitCoordinates)
        assertEquals(RawBlackBorderCrop(10, 20, 30, 40), legacy.rawBlackBorderCrop)

        val migrated = legacy.migrateLegacyPortraitCrop(sensorRotation = 90)
        assertFalse(migrated.rawBlackBorderCropUsesLegacyPortraitCoordinates)
        assertEquals(RawBlackBorderCrop(20, 30, 40, 10), migrated.rawBlackBorderCrop)

        val migratedJson = IszLensConfig.serializeList(listOf(migrated))
        assertTrue(migratedJson.contains("raw_black_border_crop_sensor_left_px"))
        assertFalse(migratedJson.contains("\"raw_black_border_crop_left_px\""))

        val restored = IszLensConfig.deserializeList(migratedJson).single()
        assertFalse(restored.rawBlackBorderCropUsesLegacyPortraitCoordinates)
        assertEquals(migrated.rawBlackBorderCrop, restored.rawBlackBorderCrop)
        assertEquals(migrated, restored.migrateLegacyPortraitCrop(sensorRotation = 90))
    }

    @Test
    fun vendorCaptureSettingsProfileId_isStableAndValueAware() {
        val settings = VendorCaptureSettings(
            mapOf(
                VendorCaptureKey.QCOM_SENSOR_CURRENT_MODE to 2,
                VendorCaptureKey.INSENSOR_ZOOM to 1
            )
        )

        assertEquals(
            "insensor_zoom_1-qcom_sensor_current_mode_2",
            settings.toVirtualLensProfileId()
        )
    }

    @Test
    fun vendorCaptureSettings_mtkRawBppUsesIntValue() {
        val settings = VendorCaptureSettings(
            mapOf(VendorCaptureKey.MTK_RAW_BPP to 14)
        )

        assertEquals(14, settings.valueFor(VendorCaptureKey.MTK_RAW_BPP))
        assertEquals(VendorCaptureValueType.INT, VendorCaptureKey.MTK_RAW_BPP.valueType)
        assertEquals("mtk_raw_bpp_14", settings.toVirtualLensProfileId())
    }

    @Test
    fun rawBlackBorderCrop_scaledForOutputMapsEveryMarginToRawMaxGrid() {
        val nativeCrop = RawBlackBorderCrop(
            leftPx = 7,
            topPx = 10,
            rightPx = 13,
            bottomPx = 20
        )

        assertEquals(
            RawBlackBorderCrop(
                leftPx = 11,
                topPx = 15,
                rightPx = 20,
                bottomPx = 30
            ),
            nativeCrop.scaledForOutput(1.5f)
        )
    }

    @Test
    fun rawBlackBorderCrop_scaledForOutputKeepsNativeGridForUnitOrInvalidScale() {
        val nativeCrop = RawBlackBorderCrop(leftPx = 12, bottomPx = 8)

        assertEquals(nativeCrop, nativeCrop.scaledForOutput(1f))
        assertEquals(nativeCrop, nativeCrop.scaledForOutput(Float.NaN))
        assertEquals(nativeCrop, nativeCrop.scaledForOutput(0f))
    }
}
