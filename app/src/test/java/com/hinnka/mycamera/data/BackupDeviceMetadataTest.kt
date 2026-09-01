package com.hinnka.mycamera.data

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.io.File
import java.io.FileOutputStream

class BackupDeviceMetadataTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun metadataRoundTripPreservesDeviceIdentity() {
        val restoreDir = temporaryFolder.newFolder("restore")
        val identity = BackupDeviceIdentity(
            manufacturer = "Google",
            model = "Pixel 10 Pro",
            device = "mustang",
        )
        FileOutputStream(File(restoreDir, BackupDeviceMetadata.ENTRY_NAME)).use { output ->
            BackupDeviceMetadata.write(identity, output)
        }

        assertEquals(identity, BackupDeviceMetadata.read(restoreDir))
    }

    @Test
    fun identityMatchRequiresSameManufacturerModelAndDevice() {
        val identity = BackupDeviceIdentity("Google", "Pixel 10 Pro", "mustang")

        assertTrue(identity.matches(BackupDeviceIdentity(" google ", "PIXEL 10 PRO", "Mustang")))
        assertFalse(identity.matches(identity.copy(manufacturer = "Samsung")))
        assertFalse(identity.matches(identity.copy(model = "Pixel 10")))
        assertFalse(identity.matches(identity.copy(device = "stallion")))
    }

    @Test
    fun missingMetadataIsUnknown() {
        assertNull(BackupDeviceMetadata.read(temporaryFolder.newFolder("legacy-restore")))
    }
}
