package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import com.google.gson.GsonBuilder
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.file.AtomicMoveNotSupportedException
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.util.UUID

/**
 * Rebinds app-private frame asset paths after data is restored into a build with a different
 * application ID. Only paths that match Android app-private files directories are considered;
 * arbitrary absolute paths and content URIs are left untouched.
 */
internal object FrameAssetPathMigrator {
    private const val CUSTOM_FRAME_DIR = "custom_frames"
    private const val CUSTOM_FONT_DIR = "custom_fonts"
    private const val CUSTOM_LOGO_DIR = "custom_logos"
    private const val FRAME_PROPERTIES_ENTRY =
        "datastore/frame_properties_preferences.preferences_pb"
    private const val CUSTOM_PROPERTIES_SUFFIX = "_customProperties"
    private const val LOGO_PROPERTY = "LOGO"
    private const val DEVICE_MODEL_FONT_PROPERTY = "DEVICE_MODEL_FONT"

    private val gson = GsonBuilder().setPrettyPrinting().create()
    private val privateFilesPath = Regex(
        "^/(?:data/(?:user(?:_de)?/\\d+|data)|" +
            "mnt/expand/[^/]+/user(?:_de)?/\\d+)/[^/]+/files/([^/]+)/([^/]+)$"
    )

    data class Result(
        val migratedFileCount: Int = 0,
        val migratedReferenceCount: Int = 0,
        val unresolvedReferenceCount: Int = 0,
        val invalidTemplateCount: Int = 0,
    ) {
        operator fun plus(other: Result): Result {
            return Result(
                migratedFileCount = migratedFileCount + other.migratedFileCount,
                migratedReferenceCount = migratedReferenceCount +
                    other.migratedReferenceCount,
                unresolvedReferenceCount = unresolvedReferenceCount +
                    other.unresolvedReferenceCount,
                invalidTemplateCount = invalidTemplateCount + other.invalidTemplateCount,
            )
        }
    }

    /** Migrates a fully extracted backup before it is copied into the current files directory. */
    fun migrateRestoredData(restoreDir: File, destinationFilesDir: File): Result {
        return migrateFrameTemplates(
            templateDir = File(restoreDir, CUSTOM_FRAME_DIR),
            resourceFilesDir = restoreDir,
            destinationFilesDir = destinationFilesDir,
        ) + migrateRestoredFrameProperties(
            restoreDir = restoreDir,
            destinationFilesDir = destinationFilesDir,
        )
    }

    /** Repairs templates that were restored by an older app version without path migration. */
    fun migrateInstalledFrameTemplates(filesDir: File): Result {
        return migrateFrameTemplates(
            templateDir = File(filesDir, CUSTOM_FRAME_DIR),
            resourceFilesDir = filesDir,
            destinationFilesDir = filesDir,
        )
    }

    /** Resolves legacy frame-property paths without mutating an active DataStore file directly. */
    fun rebaseInstalledCustomProperties(
        properties: Map<String, String>,
        filesDir: File,
    ): Map<String, String> {
        var changed = false
        val migrated = properties.toMutableMap()

        fun rebase(key: String, managedDirName: String) {
            val source = migrated[key] ?: return
            val resolution = resolveReference(
                source = source,
                managedDirName = managedDirName,
                resourceFilesDir = filesDir,
                destinationFilesDir = filesDir,
            )
            if (resolution is ReferenceResolution.Migrated) {
                migrated[key] = resolution.path
                changed = true
            }
        }

        rebase(LOGO_PROPERTY, CUSTOM_LOGO_DIR)
        rebase(DEVICE_MODEL_FONT_PROPERTY, CUSTOM_FONT_DIR)
        return if (changed) migrated else properties
    }

    private fun migrateFrameTemplates(
        templateDir: File,
        resourceFilesDir: File,
        destinationFilesDir: File,
    ): Result {
        if (!templateDir.isDirectory) return Result()

        return templateDir.listFiles()
            ?.filter { it.isFile && it.extension.equals("json", ignoreCase = true) }
            ?.sortedBy { it.name }
            ?.fold(Result()) { total, templateFile ->
                total + migrateFrameTemplate(
                    templateFile = templateFile,
                    resourceFilesDir = resourceFilesDir,
                    destinationFilesDir = destinationFilesDir,
                )
            }
            ?: Result()
    }

    private fun migrateFrameTemplate(
        templateFile: File,
        resourceFilesDir: File,
        destinationFilesDir: File,
    ): Result {
        val root = runCatching {
            JsonParser.parseString(templateFile.readText()).asJsonObject
        }.getOrElse {
            return Result(invalidTemplateCount = 1)
        }
        var migratedReferences = 0
        var unresolvedReferences = 0

        fun migrateProperty(obj: JsonObject?, property: String, managedDirName: String) {
            val value = obj?.get(property)?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString }
                ?.asString
                ?: return
            when (
                val resolution = resolveReference(
                    source = value,
                    managedDirName = managedDirName,
                    resourceFilesDir = resourceFilesDir,
                    destinationFilesDir = destinationFilesDir,
                )
            ) {
                is ReferenceResolution.Migrated -> {
                    obj.addProperty(property, resolution.path)
                    migratedReferences++
                }

                ReferenceResolution.Unresolved -> unresolvedReferences++
                ReferenceResolution.Unchanged -> Unit
            }
        }

        migrateProperty(root.getAsJsonObject("layout"), "imagePath", CUSTOM_FRAME_DIR)

        fun migrateElements(elements: JsonArray?) {
            elements?.forEach { element ->
                val obj = element.takeIf { it.isJsonObject }?.asJsonObject ?: return@forEach
                when (obj.get("type")?.takeIf { it.isJsonPrimitive }?.asString) {
                    "text" -> migrateProperty(obj, "fontFamily", CUSTOM_FONT_DIR)
                    "logo" -> migrateProperty(obj, "overrideSource", CUSTOM_LOGO_DIR)
                }
            }
        }

        migrateElements(root.getAsJsonArray("elements"))
        migrateElements(root.getAsJsonArray("elementsTop"))

        if (migratedReferences > 0) {
            replaceFile(templateFile) { output ->
                output.write(gson.toJson(root).toByteArray(Charsets.UTF_8))
            }
        }

        return Result(
            migratedFileCount = if (migratedReferences > 0) 1 else 0,
            migratedReferenceCount = migratedReferences,
            unresolvedReferenceCount = unresolvedReferences,
        )
    }

    private fun migrateRestoredFrameProperties(
        restoreDir: File,
        destinationFilesDir: File,
    ): Result {
        val preferencesFile = File(restoreDir, FRAME_PROPERTIES_ENTRY)
        if (!preferencesFile.isFile) return Result()

        val builder = FileInputStream(preferencesFile).use { input ->
            PreferenceMap.parseFrom(input).toBuilder()
        }
        var migratedReferences = 0
        var unresolvedReferences = 0

        builder.preferencesMap.toMap().forEach { (key, value) ->
            if (!key.endsWith(CUSTOM_PROPERTIES_SUFFIX) || !value.hasString()) return@forEach
            val properties = JsonParser.parseString(value.string)
                .takeIf { it.isJsonObject }
                ?.asJsonObject
                ?: return@forEach
            var changed = false

            fun migrateProperty(property: String, managedDirName: String) {
                val source = properties.get(property)
                    ?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString }
                    ?.asString
                    ?: return
                when (
                    val resolution = resolveReference(
                        source = source,
                        managedDirName = managedDirName,
                        resourceFilesDir = restoreDir,
                        destinationFilesDir = destinationFilesDir,
                    )
                ) {
                    is ReferenceResolution.Migrated -> {
                        properties.addProperty(property, resolution.path)
                        migratedReferences++
                        changed = true
                    }

                    ReferenceResolution.Unresolved -> unresolvedReferences++
                    ReferenceResolution.Unchanged -> Unit
                }
            }

            migrateProperty(LOGO_PROPERTY, CUSTOM_LOGO_DIR)
            migrateProperty(DEVICE_MODEL_FONT_PROPERTY, CUSTOM_FONT_DIR)
            if (changed) {
                builder.putPreferences(
                    key,
                    value.toBuilder().setString(gson.toJson(properties)).build(),
                )
            }
        }

        if (migratedReferences > 0) {
            val migratedPreferences = builder.build()
            replaceFile(preferencesFile) { output -> migratedPreferences.writeTo(output) }
        }

        return Result(
            migratedFileCount = if (migratedReferences > 0) 1 else 0,
            migratedReferenceCount = migratedReferences,
            unresolvedReferenceCount = unresolvedReferences,
        )
    }

    private fun resolveReference(
        source: String,
        managedDirName: String,
        resourceFilesDir: File,
        destinationFilesDir: File,
    ): ReferenceResolution {
        val match = privateFilesPath.matchEntire(source) ?: return ReferenceResolution.Unchanged
        if (match.groupValues[1] != managedDirName) return ReferenceResolution.Unchanged
        val fileName = match.groupValues[2]
        if (fileName == "." || fileName == "..") return ReferenceResolution.Unchanged

        val stagedFile = File(File(resourceFilesDir, managedDirName), fileName)
        val destinationFile = File(File(destinationFilesDir, managedDirName), fileName)
        if (!stagedFile.isFile && !destinationFile.isFile) {
            return ReferenceResolution.Unresolved
        }

        val destinationPath = destinationFile.absolutePath
        return if (source == destinationPath) {
            ReferenceResolution.Unchanged
        } else {
            ReferenceResolution.Migrated(destinationPath)
        }
    }

    private fun replaceFile(file: File, write: (FileOutputStream) -> Unit) {
        val parent = requireNotNull(file.parentFile) { "File has no parent: $file" }
        val tempFile = File(parent, "${file.name}.${UUID.randomUUID()}.tmp")
        try {
            FileOutputStream(tempFile).use { output ->
                write(output)
                output.fd.sync()
            }
            try {
                Files.move(
                    tempFile.toPath(),
                    file.toPath(),
                    StandardCopyOption.ATOMIC_MOVE,
                    StandardCopyOption.REPLACE_EXISTING,
                )
            } catch (_: AtomicMoveNotSupportedException) {
                Files.move(
                    tempFile.toPath(),
                    file.toPath(),
                    StandardCopyOption.REPLACE_EXISTING,
                )
            }
        } finally {
            if (tempFile.exists()) tempFile.delete()
        }
    }

    private sealed interface ReferenceResolution {
        data object Unchanged : ReferenceResolution
        data object Unresolved : ReferenceResolution
        data class Migrated(val path: String) : ReferenceResolution
    }
}
