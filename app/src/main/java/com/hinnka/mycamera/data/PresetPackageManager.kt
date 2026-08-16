package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import com.google.gson.GsonBuilder
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.hinnka.mycamera.frame.FrameElement
import com.hinnka.mycamera.frame.FrameTemplate
import com.hinnka.mycamera.frame.FrameTemplateParser
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.utils.PLog
import java.io.BufferedInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.InputStream
import java.util.Locale
import java.util.UUID
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

internal const val PRESET_PACKAGE_FRAME_RESOURCE_PREFIX = "pp-resource:"

internal data class PresetPackageFrameAsset(
    val fileName: String,
    val bytes: ByteArray,
)

class PresetPackageManager(
    context: Context,
    private val contentRepository: ContentRepository,
) {
    companion object {
        private const val TAG = "PresetPackageManager"
        private const val FORMAT = "com.hinnka.photon.preset"
        private const val VERSION = 2
        private const val MANIFEST_ENTRY = "manifest.json"
        private const val STORAGE_REFERENCE = "reference"
        private const val STORAGE_BUNDLED = "bundled"
        private const val MAX_ENTRY_COUNT = 128
        private const val MAX_ENTRY_BYTES = 32 * 1024 * 1024
        private const val MAX_TOTAL_BYTES = 128 * 1024 * 1024
        private const val MAX_MANIFEST_BYTES = 1024 * 1024
        private val SAFE_ENTRY_SEGMENT = Regex("[^A-Za-z0-9._-]")
    }

    class ImportedPresetPackage internal constructor(
        val preset: CameraPreset,
        internal val importedLutIds: List<String>,
        internal val importedDcpIds: List<String>,
        internal val importedFrameId: String?,
    )

    private val appContext = context.applicationContext
    private val gson = GsonBuilder().setPrettyPrinting().create()
    private val customImportManager = contentRepository.getCustomImportManager()

    fun exportPreset(preset: CameraPreset, displayName: String): ByteArray? {
        return try {
            val archiveEntries = linkedMapOf<String, ByteArray>()
            val normalizedPreset = preset.normalizedForPersistence().copy(
                name = displayName.trim().ifEmpty { preset.name },
                isBuiltIn = false,
            )
            val lutReferences = JsonArray()

            normalizedPreset.referencedLutIds().forEachIndexed { index, lutId ->
                val lut = requireNotNull(contentRepository.lutManager.getLutInfo(lutId)) {
                    "Preset references missing LUT: $lutId"
                }
                val resource = JsonObject().apply {
                    addProperty("key", lutId)
                    if (lut.isBuiltIn) {
                        addProperty("storage", STORAGE_REFERENCE)
                    } else {
                        val sourceFile = File(lut.fileName)
                        require(sourceFile.isFile) { "Custom LUT file is missing: $lutId" }
                        val entryName = "resources/luts/$index.plut"
                        val lutBytes = sourceFile.readBytesChecked()
                        require(isStructurallyValidPresetPlut(lutBytes)) {
                            "Custom LUT file is invalid: $lutId"
                        }
                        archiveEntries[entryName] = lutBytes
                        addProperty("storage", STORAGE_BUNDLED)
                        addProperty("entry", entryName)
                        add("name", lut.nameMap.toJsonObject())
                        addProperty("category", lut.category)
                        addProperty("favorite", lut.isFavorite)
                    }
                }
                lutReferences.add(resource)
            }

            val dcpReferences = JsonArray()
            normalizedPreset.referencedDcpIds().forEachIndexed { index, dcpId ->
                val dcp = requireNotNull(contentRepository.dcpManager.getAvailableDcps()
                    .firstOrNull { it.id == dcpId }) {
                    "Preset references missing DCP: $dcpId"
                }
                val resource = JsonObject().apply {
                    addProperty("key", dcpId)
                    if (dcp.isBuiltIn) {
                        addProperty("storage", STORAGE_REFERENCE)
                    } else {
                        val sourceFile = File(dcp.filePath)
                        require(sourceFile.isFile) { "Custom DCP file is missing: $dcpId" }
                        val entryName = "resources/dcps/$index.dcp"
                        archiveEntries[entryName] = sourceFile.readBytesChecked()
                        addProperty("storage", STORAGE_BUNDLED)
                        addProperty("entry", entryName)
                        add("name", dcp.nameMap.toJsonObject())
                    }
                }
                dcpReferences.add(resource)
            }

            val frameReference = normalizedPreset.frameId?.let { frameId ->
                val frame = requireNotNull(contentRepository.frameManager.getFrameInfo(frameId)) {
                    "Preset references missing frame: $frameId"
                }
                JsonObject().apply {
                    addProperty("key", frameId)
                    if (frame.isBuiltIn) {
                        addProperty("storage", STORAGE_REFERENCE)
                    } else {
                        val template = requireNotNull(contentRepository.frameManager.loadTemplate(frameId)) {
                            "Custom frame template is missing: $frameId"
                        }
                        val bundledTemplate = bundleFrameTemplate(template, archiveEntries)
                        val templateEntry = "resources/frame/template.json"
                        archiveEntries[templateEntry] = FrameTemplateParser
                            .serializeTemplate(bundledTemplate)
                            .toByteArray(Charsets.UTF_8)
                        addProperty("storage", STORAGE_BUNDLED)
                        addProperty("entry", templateEntry)
                    }
                }
            }

            val resources = JsonObject().apply {
                add("luts", lutReferences)
                add("dcps", dcpReferences)
                frameReference?.let { add("frame", it) }
            }
            val manifest = JsonObject().apply {
                addProperty("format", FORMAT)
                addProperty("version", VERSION)
                add("preset", JsonParser.parseString(normalizedPreset.toJson()).asJsonObject)
                add("resources", resources)
            }

            val manifestBytes = gson.toJson(manifest).toByteArray(Charsets.UTF_8)
            require(manifestBytes.size <= MAX_MANIFEST_BYTES) { "Preset manifest is too large" }
            writeArchive(manifestBytes, archiveEntries)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to export preset package: ${preset.id}", e)
            null
        }
    }

    fun importPreset(uri: Uri): ImportedPresetPackage? {
        val importedLutIds = mutableListOf<String>()
        val importedDcpIds = mutableListOf<String>()
        var importedFrameId: String? = null
        return try {
            val archiveEntries = readArchive(uri)
            val manifestBytes = requireNotNull(archiveEntries[MANIFEST_ENTRY]) {
                "Preset package manifest is missing"
            }
            require(manifestBytes.size <= MAX_MANIFEST_BYTES) { "Preset manifest is too large" }
            val manifest = JsonParser.parseString(manifestBytes.toString(Charsets.UTF_8)).asJsonObject
            require(manifest.requiredString("format") == FORMAT) { "Unsupported preset package format" }
            val version = manifest.requiredInt("version")
            require(version in 1..VERSION) { "Unsupported preset package version" }

            val presetJson = manifest.getAsJsonObject("preset")
                ?: error("Preset package does not contain a preset")
            val packagedPreset = CameraPreset.fromJson(gson.toJson(presetJson))
                ?: error("Preset package contains an invalid preset")
            val resources = manifest.getAsJsonObject("resources")
                ?: error("Preset package resources are missing")
            val lutResources = resources.getAsJsonArray("luts") ?: JsonArray()
            val expectedLutKeys = packagedPreset.referencedLutIds().toSet()
            val declaredLutKeys = lutResources.map { it.asJsonObject.requiredString("key") }
            require(declaredLutKeys.size == declaredLutKeys.distinct().size) {
                "Preset package contains duplicate LUT keys"
            }
            require(declaredLutKeys.toSet() == expectedLutKeys) {
                "Preset package LUT references do not match the preset"
            }

            val resolvedLutIds = linkedMapOf<String, String>()
            lutResources.forEach { element ->
                val resource = element.asJsonObject
                val sourceKey = resource.requiredString("key")
                when (resource.requiredString("storage")) {
                    STORAGE_REFERENCE -> {
                        val builtIn = contentRepository.lutManager.getLutInfo(sourceKey)
                        require(builtIn?.isBuiltIn == true) {
                            "Built-in LUT is unavailable: $sourceKey"
                        }
                        resolvedLutIds[sourceKey] = sourceKey
                    }

                    STORAGE_BUNDLED -> {
                        val entryName = resource.requiredSafeEntry("entry")
                        require(entryName.startsWith("resources/luts/") && entryName.endsWith(".plut")) {
                            "Invalid bundled LUT entry"
                        }
                        val bytes = requireNotNull(archiveEntries[entryName]) {
                            "Bundled LUT entry is missing: $entryName"
                        }
                        val nameMap = resource.getAsJsonObject("name")?.toStringMap().orEmpty()
                        val category = resource.optionalString("category").orEmpty()
                        val favorite = resource.get("favorite")
                            ?.takeUnless { it.isJsonNull }
                            ?.asBoolean
                            ?: false
                        val importedId = customImportManager.importPresetLut(
                            bytes = bytes,
                            nameMap = nameMap,
                            category = category,
                            isFavorite = favorite,
                        ) ?: error("Failed to import bundled LUT: $sourceKey")
                        importedLutIds += importedId
                        resolvedLutIds[sourceKey] = importedId
                    }

                    else -> error("Unsupported LUT storage mode")
                }
            }

            val dcpResources = resources.getAsJsonArray("dcps") ?: JsonArray()
            val expectedDcpKeys = packagedPreset.referencedDcpIds().toSet()
            val declaredDcpKeys = dcpResources.map { it.asJsonObject.requiredString("key") }
            require(declaredDcpKeys.size == declaredDcpKeys.distinct().size) {
                "Preset package contains duplicate DCP keys"
            }
            require(declaredDcpKeys.toSet() == expectedDcpKeys) {
                "Preset package DCP references do not match the preset"
            }

            val resolvedDcpIds = linkedMapOf<String, String>()
            dcpResources.forEach { element ->
                val resource = element.asJsonObject
                val sourceKey = resource.requiredString("key")
                when (resource.requiredString("storage")) {
                    STORAGE_REFERENCE -> {
                        val builtIn = contentRepository.dcpManager.getAvailableDcps()
                            .firstOrNull { it.id == sourceKey }
                        require(builtIn?.isBuiltIn == true) {
                            "Built-in DCP is unavailable: $sourceKey"
                        }
                        resolvedDcpIds[sourceKey] = sourceKey
                    }

                    STORAGE_BUNDLED -> {
                        val entryName = resource.requiredSafeEntry("entry")
                        require(entryName.startsWith("resources/dcps/") && entryName.endsWith(".dcp")) {
                            "Invalid bundled DCP entry"
                        }
                        val bytes = requireNotNull(archiveEntries[entryName]) {
                            "Bundled DCP entry is missing: $entryName"
                        }
                        val nameMap = resource.getAsJsonObject("name")?.toStringMap().orEmpty()
                        val importedId = customImportManager.importPresetDcp(bytes, nameMap)
                            ?: error("Failed to import bundled DCP: $sourceKey")
                        importedDcpIds += importedId
                        resolvedDcpIds[sourceKey] = importedId
                    }

                    else -> error("Unsupported DCP storage mode")
                }
            }

            val frameResource = resources.getAsJsonObject("frame")
            val resolvedFrameId = if (packagedPreset.frameId == null) {
                require(frameResource == null) { "Preset package contains an unused frame" }
                null
            } else {
                requireNotNull(frameResource) { "Preset package frame reference is missing" }
                val sourceKey = frameResource.requiredString("key")
                require(sourceKey == packagedPreset.frameId) {
                    "Preset package frame reference does not match the preset"
                }
                when (frameResource.requiredString("storage")) {
                    STORAGE_REFERENCE -> {
                        val builtIn = contentRepository.frameManager.getFrameInfo(sourceKey)
                        require(builtIn?.isBuiltIn == true) {
                            "Built-in frame is unavailable: $sourceKey"
                        }
                        sourceKey
                    }

                    STORAGE_BUNDLED -> {
                        val entryName = frameResource.requiredSafeEntry("entry")
                        require(entryName.startsWith("resources/frame/") && entryName.endsWith(".json")) {
                            "Invalid bundled frame entry"
                        }
                        val templateBytes = requireNotNull(archiveEntries[entryName]) {
                            "Bundled frame template is missing: $entryName"
                        }
                        val template = FrameTemplateParser.parseTemplate(
                            templateBytes.toString(Charsets.UTF_8)
                        )
                        require(template.id == sourceKey) {
                            "Bundled frame key does not match its template"
                        }
                        val frameAssets = collectFrameAssets(template, archiveEntries)
                        customImportManager.importPresetFrame(template, frameAssets)
                            ?: error("Failed to import bundled frame: $sourceKey")
                    }

                    else -> error("Unsupported frame storage mode")
                }
            }
            importedFrameId = resolvedFrameId?.takeIf { it != packagedPreset.frameId }

            val importedPreset = packagedPreset
                .withResolvedContentReferences(
                    lutIdsBySourceKey = resolvedLutIds,
                    resolvedFrameId = resolvedFrameId,
                    dcpIdsBySourceKey = resolvedDcpIds,
                )
                .copy(
                    id = "preset_${UUID.randomUUID()}",
                    isBuiltIn = false,
                )
                .normalizedForPersistence()

            ImportedPresetPackage(
                preset = importedPreset,
                importedLutIds = importedLutIds.toList(),
                importedDcpIds = importedDcpIds.toList(),
                importedFrameId = importedFrameId,
            )
        } catch (e: Exception) {
            importedFrameId?.let(customImportManager::deleteCustomFrame)
            importedDcpIds.asReversed().forEach(customImportManager::deleteCustomDcp)
            importedLutIds.asReversed().forEach(customImportManager::deleteCustomLut)
            PLog.e(TAG, "Failed to import preset package: $uri", e)
            null
        }
    }

    fun rollbackImport(imported: ImportedPresetPackage) {
        imported.importedFrameId?.let(customImportManager::deleteCustomFrame)
        imported.importedDcpIds.asReversed().forEach(customImportManager::deleteCustomDcp)
        imported.importedLutIds.asReversed().forEach(customImportManager::deleteCustomLut)
    }

    private fun bundleFrameTemplate(
        template: FrameTemplate,
        archiveEntries: MutableMap<String, ByteArray>,
    ): FrameTemplate {
        val bundledSources = mutableMapOf<String, String>()
        var resourceIndex = 0

        fun bundleSource(source: String, kind: String): String {
            bundledSources[source]?.let { return it }
            val sourceName = source.substringAfterLast('/').substringAfterLast(':')
                .ifBlank { kind }
            val extension = sourceName.substringAfterLast('.', missingDelimiterValue = "")
                .lowercase(Locale.US)
                .replace(SAFE_ENTRY_SEGMENT, "")
                .take(10)
            val suffix = extension.takeIf { it.isNotBlank() }?.let { ".$it" }.orEmpty()
            val entryName = "resources/frame/assets/${resourceIndex++}-$kind$suffix"
            val bytes = readFrameAsset(source)
            require(bytes.isNotEmpty()) { "Frame asset is empty: $sourceName" }
            require(bytes.size <= MAX_ENTRY_BYTES) { "Frame asset is too large: $sourceName" }
            archiveEntries[entryName] = bytes
            return "$PRESET_PACKAGE_FRAME_RESOURCE_PREFIX$entryName".also {
                bundledSources[source] = it
            }
        }

        fun bundleElements(elements: List<FrameElement>): List<FrameElement> {
            return elements.map { element ->
                when (element) {
                    is FrameElement.Text -> element.copy(
                        fontFamily = element.fontFamily?.let { source ->
                            if (source.isExternalFrameAsset()) bundleSource(source, "font") else source
                        }
                    )

                    is FrameElement.Logo -> element.copy(
                        overrideSource = element.overrideSource?.let { source ->
                            if (source.isExternalFrameAsset()) bundleSource(source, "logo") else source
                        }
                    )

                    else -> element
                }
            }
        }

        return template.copy(
            layout = template.layout.copy(
                imagePath = template.layout.imagePath?.let { bundleSource(it, "image") }
            ),
            elements = bundleElements(template.elements),
            elementsTop = template.elementsTop?.let(::bundleElements),
        )
    }

    private fun collectFrameAssets(
        template: FrameTemplate,
        archiveEntries: Map<String, ByteArray>,
    ): Map<String, PresetPackageFrameAsset> {
        val references = linkedSetOf<String>()

        fun collectSource(source: String?, requirePackaged: Boolean) {
            if (source == null) return
            if (source.startsWith(PRESET_PACKAGE_FRAME_RESOURCE_PREFIX)) {
                references += source
            } else if (requirePackaged || source.isExternalFrameAsset()) {
                error("Bundled frame contains an external resource reference")
            }
        }

        collectSource(template.layout.imagePath, requirePackaged = template.layout.imagePath != null)
        (template.elements + template.elementsTop.orEmpty()).forEach { element ->
            when (element) {
                is FrameElement.Text -> collectSource(element.fontFamily, requirePackaged = false)
                is FrameElement.Logo -> collectSource(element.overrideSource, requirePackaged = false)
                else -> Unit
            }
        }

        return references.associateWith { reference ->
            val entryName = reference.removePrefix(PRESET_PACKAGE_FRAME_RESOURCE_PREFIX)
            require(
                isSafeEntryName(entryName) && entryName.startsWith("resources/frame/assets/")
            ) { "Invalid bundled frame asset entry" }
            val bytes = requireNotNull(archiveEntries[entryName]) {
                "Bundled frame asset is missing: $entryName"
            }
            PresetPackageFrameAsset(
                fileName = entryName.substringAfterLast('/'),
                bytes = bytes,
            )
        }
    }

    private fun readFrameAsset(source: String): ByteArray {
        return if (source.startsWith("content://")) {
            appContext.contentResolver.openInputStream(Uri.parse(source))?.use { it.readBytesChecked() }
                ?: error("Cannot open frame asset: $source")
        } else {
            File(source).takeIf { it.isFile }?.inputStream()?.use { it.readBytesChecked() }
                ?: error("Frame asset file is missing: $source")
        }
    }

    private fun writeArchive(
        manifestBytes: ByteArray,
        archiveEntries: Map<String, ByteArray>,
    ): ByteArray {
        require(archiveEntries.size + 1 <= MAX_ENTRY_COUNT) { "Preset package has too many entries" }
        val totalBytes = archiveEntries.values.fold(manifestBytes.size.toLong()) { total, bytes ->
            total + bytes.size
        }
        require(totalBytes <= MAX_TOTAL_BYTES) { "Preset package is too large" }
        val output = ByteArrayOutputStream()
        ZipOutputStream(output).use { zip ->
            fun writeEntry(name: String, bytes: ByteArray) {
                require(isSafeEntryName(name)) { "Invalid preset package entry: $name" }
                zip.putNextEntry(ZipEntry(name).apply { time = 0L })
                zip.write(bytes)
                zip.closeEntry()
            }

            writeEntry(MANIFEST_ENTRY, manifestBytes)
            archiveEntries.toSortedMap().forEach { (name, bytes) ->
                writeEntry(name, bytes)
            }
        }
        return output.toByteArray()
    }

    private fun readArchive(uri: Uri): Map<String, ByteArray> {
        val input = appContext.contentResolver.openInputStream(uri)
            ?: error("Cannot open preset package")
        return input.use { source ->
            val entries = linkedMapOf<String, ByteArray>()
            var totalBytes = 0
            var entryCount = 0
            ZipInputStream(BufferedInputStream(source)).use { zip ->
                var entry = zip.nextEntry
                while (entry != null) {
                    entryCount++
                    require(entryCount <= MAX_ENTRY_COUNT) { "Preset package has too many entries" }
                    val name = entry.name
                    require(isSafeEntryName(name)) { "Invalid preset package entry: $name" }
                    if (!entry.isDirectory) {
                        require(name !in entries) { "Duplicate preset package entry: $name" }
                        val bytes = zip.readBytesChecked()
                        totalBytes += bytes.size
                        require(totalBytes <= MAX_TOTAL_BYTES) { "Preset package is too large" }
                        entries[name] = bytes
                    }
                    zip.closeEntry()
                    entry = zip.nextEntry
                }
            }
            entries
        }
    }

    private fun File.readBytesChecked(): ByteArray {
        require(length() in 1..MAX_ENTRY_BYTES.toLong()) { "Resource file has an invalid size: $name" }
        return inputStream().use { it.readBytesChecked() }
    }

    private fun InputStream.readBytesChecked(): ByteArray {
        val output = ByteArrayOutputStream()
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        var total = 0
        while (true) {
            val count = read(buffer)
            if (count < 0) break
            total += count
            require(total <= MAX_ENTRY_BYTES) { "Preset package entry is too large" }
            output.write(buffer, 0, count)
        }
        return output.toByteArray()
    }

    private fun String.isExternalFrameAsset(): Boolean {
        return startsWith("/") || startsWith("content://")
    }

    private fun Map<String, String>.toJsonObject(): JsonObject {
        return JsonObject().also { obj ->
            toSortedMap().forEach { (key, value) -> obj.addProperty(key, value) }
        }
    }

    private fun JsonObject.toStringMap(): Map<String, String> {
        return entrySet().mapNotNull { (key, value) ->
            value.takeUnless { it.isJsonNull }?.asString?.let { key to it }
        }.toMap()
    }

    private fun JsonObject.requiredString(name: String): String {
        return optionalString(name)?.takeIf { it.isNotBlank() }
            ?: error("Preset package field is missing: $name")
    }

    private fun JsonObject.optionalString(name: String): String? {
        return get(name)?.takeUnless { it.isJsonNull }?.asString
    }

    private fun JsonObject.requiredInt(name: String): Int {
        return get(name)?.takeUnless { it.isJsonNull }?.asInt
            ?: error("Preset package field is missing: $name")
    }

    private fun JsonObject.requiredSafeEntry(name: String): String {
        return requiredString(name).also {
            require(isSafeEntryName(it)) { "Invalid preset package entry reference" }
        }
    }

    private fun isSafeEntryName(name: String): Boolean {
        if (name.isBlank() || name.length > 240 || name.startsWith('/') || '\\' in name) return false
        val segments = name.split('/')
        return segments.none { it.isBlank() || it == "." || it == ".." }
    }
}
