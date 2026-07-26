package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CustomVendorKeySettingsTest {
    @Test
    fun keysFor_filtersTargetAndLensWithSpecificOverrideLast() {
        val globalCapture = customKey(
            id = "global",
            value = 1,
            lensId = null
        )
        val lensCapture = customKey(
            id = "lens",
            value = 2,
            lensId = "2"
        )
        val otherLensCapture = customKey(
            id = "other",
            value = 3,
            lensId = "3"
        )
        val session = customKey(
            id = "session",
            value = 4,
            lensId = "2",
            target = CustomVendorKeyTarget.SESSION_PARAMETER
        )
        val settings = CustomVendorKeySettings(
            listOf(lensCapture, session, otherLensCapture, globalCapture)
        )

        assertEquals(
            listOf(globalCapture, lensCapture),
            settings.keysFor("2", CustomVendorKeyTarget.CAPTURE_REQUEST)
        )
        assertEquals(
            listOf(session),
            settings.keysFor("2", CustomVendorKeyTarget.SESSION_PARAMETER)
        )
        assertEquals(
            listOf(globalCapture),
            settings.keysFor("0", CustomVendorKeyTarget.CAPTURE_REQUEST)
        )
    }

    @Test
    fun u8NormalizationUsesUnsignedRangeWhileInt32IsUnchanged() {
        assertEquals(0, CustomVendorKeyValueType.U8.normalize(-1))
        assertEquals(255, CustomVendorKeyValueType.U8.normalize(300))
        assertTrue(CustomVendorKeyValueType.U8.isValid(255))
        assertFalse(CustomVendorKeyValueType.U8.isValid(256))
        assertEquals(Int.MIN_VALUE, CustomVendorKeyValueType.INT32.normalize(Int.MIN_VALUE))
        assertEquals(Int.MAX_VALUE, CustomVendorKeyValueType.INT32.normalize(Int.MAX_VALUE))
    }

    @Test
    fun upsertNormalizesFieldsAndRemoveUsesStableId() {
        val original = customKey(
            id = "stable",
            value = 300,
            lensId = " 2 ",
            valueType = CustomVendorKeyValueType.U8,
            keyName = " vendor.key "
        )
        val inserted = CustomVendorKeySettings.Empty.upsert(original)

        assertEquals(1, inserted.keys.size)
        assertEquals("vendor.key", inserted.keys.single().keyName)
        assertEquals("2", inserted.keys.single().lensId)
        assertEquals(255, inserted.keys.single().value)
        assertFalse(inserted.remove("stable").isEnabled)
    }

    @Test
    fun invalidKeyNamesAreRejectedBeforeTheyCanReachCamera2() {
        assertTrue(CustomVendorKey.isValidKeyName("com.vendor.control.mode"))
        assertFalse(CustomVendorKey.isValidKeyName(""))
        assertFalse(CustomVendorKey.isValidKeyName("com.vendor bad"))

        val settings = CustomVendorKeySettings.Empty.upsert(
            customKey(id = "bad", value = 1, keyName = "com.vendor bad")
        )
        assertFalse(settings.isEnabled)
    }

    private fun customKey(
        id: String,
        value: Int,
        lensId: String? = null,
        target: CustomVendorKeyTarget = CustomVendorKeyTarget.CAPTURE_REQUEST,
        valueType: CustomVendorKeyValueType = CustomVendorKeyValueType.INT32,
        keyName: String = "com.vendor.control.mode"
    ) = CustomVendorKey(
        id = id,
        keyName = keyName,
        target = target,
        valueType = valueType,
        value = value,
        lensId = lensId
    )
}
