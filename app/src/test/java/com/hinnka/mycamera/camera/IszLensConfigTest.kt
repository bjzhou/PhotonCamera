package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
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
}
