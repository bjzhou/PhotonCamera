package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import androidx.datastore.preferences.PreferencesProto.Value
import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream

class FrameAssetPathMigratorTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun migrateRestoredDataRebindsTemplateAndFramePropertyPaths() {
        val restoreDir = temporaryFolder.newFolder("restore")
        val destinationFilesDir = temporaryFolder.newFolder("current-files")
        val templateFile = File(restoreDir, "custom_frames/custom_frame.json")
            .also { it.parentFile?.mkdirs() }
        val frameImage = createAsset(restoreDir, "custom_frames", "custom_frame_image.png")
        val font = createAsset(restoreDir, "custom_fonts", "custom_frame_font.ttf")
        val logo = createAsset(restoreDir, "custom_logos", "custom_frame_logo.png")
        templateFile.writeText(
            """
            {
              "id": "custom_frame",
              "layout": {
                "imagePath": "${oldPath("custom_frames", frameImage.name)}"
              },
              "elements": [
                {
                  "type": "text",
                  "fontFamily": "${oldPath("custom_fonts", font.name)}"
                },
                {
                  "type": "logo",
                  "overrideSource": "${oldPath("custom_logos", logo.name)}"
                }
              ],
              "elementsTop": [
                {
                  "type": "logo",
                  "overrideSource": "content://logos/unchanged"
                }
              ]
            }
            """.trimIndent()
        )
        writeFrameProperties(restoreDir, logo.name, font.name)

        val result = FrameAssetPathMigrator.migrateRestoredData(
            restoreDir,
            destinationFilesDir,
        )

        assertEquals(5, result.migratedReferenceCount)
        assertEquals(2, result.migratedFileCount)
        assertEquals(0, result.unresolvedReferenceCount)

        val migratedTemplate = JsonParser.parseString(templateFile.readText()).asJsonObject
        assertEquals(
            File(destinationFilesDir, "custom_frames/${frameImage.name}").absolutePath,
            migratedTemplate.getAsJsonObject("layout").get("imagePath").asString,
        )
        val elements = migratedTemplate.getAsJsonArray("elements")
        assertEquals(
            File(destinationFilesDir, "custom_fonts/${font.name}").absolutePath,
            elements[0].asJsonObject.get("fontFamily").asString,
        )
        assertEquals(
            File(destinationFilesDir, "custom_logos/${logo.name}").absolutePath,
            elements[1].asJsonObject.get("overrideSource").asString,
        )
        assertEquals(
            "content://logos/unchanged",
            migratedTemplate.getAsJsonArray("elementsTop")[0]
                .asJsonObject.get("overrideSource").asString,
        )

        val migratedProperties = readFrameProperties(restoreDir)
        assertEquals(
            File(destinationFilesDir, "custom_logos/${logo.name}").absolutePath,
            migratedProperties.get("LOGO").asString,
        )
        assertEquals(
            File(destinationFilesDir, "custom_fonts/${font.name}").absolutePath,
            migratedProperties.get("DEVICE_MODEL_FONT").asString,
        )
    }

    @Test
    fun migrateInstalledFrameTemplatesRepairsPreviouslyRestoredData() {
        val filesDir = temporaryFolder.newFolder("installed-files")
        val logo = createAsset(filesDir, "custom_logos", "owned_logo.png")
        val templateFile = File(filesDir, "custom_frames/custom_frame.json")
            .also { it.parentFile?.mkdirs() }
        templateFile.writeText(
            """
            {
              "layout": {},
              "elements": [{
                "type": "logo",
                "overrideSource": "${oldPath("custom_logos", logo.name)}"
              }]
            }
            """.trimIndent()
        )

        val result = FrameAssetPathMigrator.migrateInstalledFrameTemplates(filesDir)

        assertEquals(1, result.migratedReferenceCount)
        val migrated = JsonParser.parseString(templateFile.readText()).asJsonObject
        assertEquals(
            logo.absolutePath,
            migrated.getAsJsonArray("elements")[0]
                .asJsonObject.get("overrideSource").asString,
        )
    }

    @Test
    fun missingOrNonPrivateResourcesAreNotRewritten() {
        val filesDir = temporaryFolder.newFolder("missing-files")
        val templateDir = File(filesDir, "custom_frames").also { it.mkdirs() }
        val templateFile = File(templateDir, "custom_frame.json")
        val missing = oldPath("custom_logos", "missing.png")
        templateFile.writeText(
            """
            {
              "layout": {},
              "elements": [
                {"type": "logo", "overrideSource": "$missing"},
                {"type": "text", "fontFamily": "/sdcard/custom_fonts/external.ttf"}
              ]
            }
            """.trimIndent()
        )

        val result = FrameAssetPathMigrator.migrateInstalledFrameTemplates(filesDir)

        assertEquals(0, result.migratedReferenceCount)
        assertEquals(1, result.unresolvedReferenceCount)
        assertTrue(templateFile.readText().contains(missing))
        assertTrue(templateFile.readText().contains("/sdcard/custom_fonts/external.ttf"))
    }

    @Test
    fun invalidTemplateDoesNotPreventOtherTemplatesFromMigrating() {
        val filesDir = temporaryFolder.newFolder("mixed-files")
        val templateDir = File(filesDir, "custom_frames").also { it.mkdirs() }
        File(templateDir, "broken.json").writeText("not-json")
        val logo = createAsset(filesDir, "custom_logos", "valid_logo.png")
        val validTemplate = File(templateDir, "valid.json")
        validTemplate.writeText(
            """
            {
              "layout": {},
              "elements": [{
                "type": "logo",
                "overrideSource": "${oldPath("custom_logos", logo.name)}"
              }]
            }
            """.trimIndent()
        )

        val result = FrameAssetPathMigrator.migrateInstalledFrameTemplates(filesDir)

        assertEquals(1, result.invalidTemplateCount)
        assertEquals(1, result.migratedReferenceCount)
        assertTrue(validTemplate.readText().contains(logo.absolutePath))
    }

    private fun createAsset(filesDir: File, directory: String, name: String): File {
        return File(filesDir, "$directory/$name").also {
            it.parentFile?.mkdirs()
            it.writeBytes(byteArrayOf(1, 2, 3))
        }
    }

    private fun writeFrameProperties(restoreDir: File, logoName: String, fontName: String) {
        val propertiesFile = File(
            restoreDir,
            "datastore/frame_properties_preferences.preferences_pb",
        ).also { it.parentFile?.mkdirs() }
        val propertiesJson =
            """{"LOGO":"${oldPath("custom_logos", logoName)}","DEVICE_MODEL_FONT":"${oldPath("custom_fonts", fontName)}"}"""
        val preferenceMap = PreferenceMap.newBuilder()
            .putPreferences(
                "custom_frame_customProperties",
                Value.newBuilder().setString(propertiesJson).build(),
            )
            .build()
        FileOutputStream(propertiesFile).use { preferenceMap.writeTo(it) }
    }

    private fun readFrameProperties(restoreDir: File) = FileInputStream(
        File(restoreDir, "datastore/frame_properties_preferences.preferences_pb")
    ).use { input ->
        val map = PreferenceMap.parseFrom(input)
        JsonParser.parseString(
            map.getPreferencesOrThrow("custom_frame_customProperties").string
        ).asJsonObject
    }

    private fun oldPath(directory: String, name: String): String {
        return "/data/user/0/com.meitu.meiyancamera/files/$directory/$name"
    }
}
