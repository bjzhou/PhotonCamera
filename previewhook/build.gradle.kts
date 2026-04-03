import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Base64
import groovy.json.JsonSlurper

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

val syncedSourceDir = layout.buildDirectory.dir("generated/previewhook/syncedSrc")
val generatedSourceDir = layout.buildDirectory.dir("generated/previewhook/generatedSrc")
val freshMgcClasses4 = layout.projectDirectory.file("../MGC/MGC_9.6.080_V24_MGC/classes4.dex")

android {
    namespace = "com.hinnka.mycamera.previewhook"
    compileSdk = 36

    defaultConfig {
        minSdk = 30
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlin {
        compilerOptions {
            jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
        }
    }

    sourceSets {
        getByName("main") {
            java.srcDir(syncedSourceDir)
            java.srcDir(generatedSourceDir)
        }
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.10.2")
    compileOnly(libs.androidx.material.icons.extended)
}

val syncPreviewhookSources by tasks.registering(Sync::class) {
    val appSrc = layout.projectDirectory.dir("../app/src/main/java")
    from(appSrc) {
        include("com/hinnka/mycamera/ui/camera/CameraGLSurfaceView.kt")
        include("com/hinnka/mycamera/lut/LutRenderer.kt")
        include("com/hinnka/mycamera/lut/LutImageProcessor.kt")
        include("com/hinnka/mycamera/lut/Shaders.kt")
        include("com/hinnka/mycamera/lut/LutCurve.kt")
        include("com/hinnka/mycamera/lut/LutParser.kt")
        include("com/hinnka/mycamera/lut/CubeLutParser.kt")
        include("com/hinnka/mycamera/lut/LutConverter.kt")
        include("com/hinnka/mycamera/lut/XmpLutParser.kt")
        include("com/hinnka/mycamera/lut/GlUtils.kt")
        include("com/hinnka/mycamera/model/ColorPaletteMapper.kt")
        include("com/hinnka/mycamera/model/ColorPaletteState.kt")
        include("com/hinnka/mycamera/screencapture/PhantomPipCrop.kt")
        include("com/hinnka/mycamera/raw/ColorSpace.kt")
        include("com/hinnka/mycamera/raw/NLMShaders.kt")
    }
    into(syncedSourceDir)
}

val generateDefaultVerificationLutSource by tasks.registering {
    val inputFile = layout.projectDirectory.file("../app/src/main/assets/luts/monochrome.plut")
    val outputDir = generatedSourceDir.map { it.dir("com/hinnka/mycamera/previewhook/generated") }
    val outputFile = outputDir.map { it.file("DefaultVerificationLutData.kt") }

    inputs.file(inputFile)
    outputs.file(outputFile)

    doLast {
        val bytes = inputFile.asFile.readBytes()
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val magic = buffer.int
        check(magic == 0x54554C50) { "Unexpected LUT magic: $magic" }
        val version = buffer.int
        val size = buffer.int
        val dataType = buffer.int
        val curveOrdinal = if (version >= 2) buffer.int else 0
        val colorSpaceOrdinal = if (version >= 3) buffer.int else 0
        val payload = ByteArray(buffer.remaining())
        buffer.get(payload)
        val payloadBase64 = Base64.getEncoder().encodeToString(payload)
        val payloadChunks = payloadBase64.chunked(16000)

        val file = outputFile.get().asFile
        file.parentFile.mkdirs()
        val payloadList = payloadChunks.joinToString(",\n        ") { "\"$it\"" }

        file.writeText(
            """
            package com.hinnka.mycamera.previewhook.generated

            object DefaultVerificationLutData {
                const val TITLE: String = "monochrome"
                const val SIZE: Int = $size
                const val CONFIG_DATA_TYPE: Int = ${if (dataType == 1) 1 else 0}
                const val CURVE_ORDINAL: Int = $curveOrdinal
                const val COLOR_SPACE_ORDINAL: Int = $colorSpaceOrdinal
                val PAYLOAD_BASE64: String = listOf(
                    $payloadList
                ).joinToString(separator = "")
            }
            """.trimIndent()
        )
    }
}

val generateBuiltInLutCatalogSource by tasks.registering {
    val configFile = layout.projectDirectory.file("../app/src/main/assets/luts/config.json")
    val assetsDir = layout.projectDirectory.dir("../app/src/main/assets/luts")
    val outputDir = generatedSourceDir.map { it.dir("com/hinnka/mycamera/previewhook/generated") }
    val outputFile = outputDir.map { it.file("BuiltInLutCatalog.kt") }

    inputs.file(configFile)
    inputs.dir(assetsDir)
    outputs.file(outputFile)

    doLast {
        val parsed = JsonSlurper().parse(configFile.asFile) as Map<*, *>
        val luts = parsed["luts"] as List<*>
        val entries = luts.map { raw ->
            raw as Map<*, *>
        }

        val entryBlocks = entries.joinToString(",\n") { entry ->
            val id = entry["id"] as String
            val nameMap = entry["name"] as Map<*, *>
            val path = (entry["path"] as? String).orEmpty()
            val isDefault = entry["isDefault"] as? Boolean ?: false
            val isVip = entry["isVip"] as? Boolean ?: false
            val category = (entry["category"] as? String).orEmpty()

            val payloadInfo = if (path.isBlank()) {
                """
                payloadBase64 = "",
                size = 0,
                configDataType = 0,
                curveOrdinal = 0,
                colorSpaceOrdinal = 0
                """.trimIndent()
            } else {
                val inputFile = assetsDir.file(path).asFile
                val bytes = inputFile.readBytes()
                val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
                val magic = buffer.int
                check(magic == 0x54554C50) { "Unexpected LUT magic for $path: $magic" }
                val version = buffer.int
                val size = buffer.int
                val dataType = buffer.int
                val curveOrdinal = if (version >= 2) buffer.int else 0
                val colorSpaceOrdinal = if (version >= 3) buffer.int else 0
                val payload = ByteArray(buffer.remaining())
                buffer.get(payload)
                val payloadBase64 = Base64.getEncoder().encodeToString(payload)
                """
                payloadBase64 = "${payloadBase64}",
                size = $size,
                configDataType = $dataType,
                curveOrdinal = $curveOrdinal,
                colorSpaceOrdinal = $colorSpaceOrdinal
                """.trimIndent()
            }

            """
                Entry(
                    id = "$id",
                    nameEn = "${nameMap["en"] as String}",
                    nameZh = "${nameMap["zh"] as String}",
                    path = "$path",
                    isDefault = $isDefault,
                    isVip = $isVip,
                    category = "$category",
                    $payloadInfo
                )
            """.trimIndent()
        }

        val file = outputFile.get().asFile
        file.parentFile.mkdirs()
        file.writeText(
            """
            package com.hinnka.mycamera.previewhook.generated

            object BuiltInLutCatalog {
                data class Entry(
                    val id: String,
                    val nameEn: String,
                    val nameZh: String,
                    val path: String,
                    val isDefault: Boolean,
                    val isVip: Boolean,
                    val category: String,
                    val payloadBase64: String,
                    val size: Int,
                    val configDataType: Int,
                    val curveOrdinal: Int,
                    val colorSpaceOrdinal: Int,
                )

                val entries: List<Entry> = listOf(
            $entryBlocks
                )
            }
            """.trimIndent()
        )
    }
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
    dependsOn(syncPreviewhookSources, generateDefaultVerificationLutSource, generateBuiltInLutCatalogSource)
}

tasks.named("preBuild") {
    dependsOn(syncPreviewhookSources, generateDefaultVerificationLutSource, generateBuiltInLutCatalogSource)
}

val assembleStandaloneDexRelease by tasks.registering {
    group = "build"
    description = "Assemble standalone dex for preview hook release"
    dependsOn(previewhookClassesJar)

    val outputDir = layout.buildDirectory.dir("outputs/standalone-dex/release")
    val outputDex = outputDir.map { it.file("classes.dex") }
    val classesJar = layout.buildDirectory.file("intermediates/standaloneDex/previewhook-classes.jar")

    inputs.file(classesJar)
    inputs.files(configurations.getByName("releaseRuntimeClasspath"))
    outputs.file(outputDex)

    doLast {
        val sdkDir = android.sdkDirectory
        val buildToolsDir = sdkDir.resolve("build-tools")
        val buildTools = buildToolsDir.listFiles()
            ?.filter { it.isDirectory }
            ?.maxByOrNull { it.name }
            ?: error("No build-tools found in $buildToolsDir")
        val d8 = buildTools.resolve(if (System.getProperty("os.name").startsWith("Windows")) "d8.bat" else "d8")
        val androidJar = sdkDir.resolve("platforms/android-${android.compileSdk}/android.jar")

        val standaloneJar = classesJar.get().asFile
        val runtimeInputs = configurations.getByName("releaseRuntimeClasspath").files
            .flatMap { file ->
                when (file.extension) {
                    "jar" -> listOf(file)
                    "aar" -> {
                        val zipTree = zipTree(file)
                        val tempDir = layout.buildDirectory.dir("intermediates/standaloneDex/runtimeAars/${file.nameWithoutExtension}").get().asFile
                        copy {
                            from(zipTree.matching { include("classes.jar", "libs/*.jar") })
                            into(tempDir)
                        }
                        tempDir.walkTopDown()
                            .filter { it.isFile && it.extension == "jar" }
                            .toList()
                    }
                    else -> emptyList()
                }
            }

        outputDir.get().asFile.mkdirs()

        val args = mutableListOf(
            d8.absolutePath,
            "--min-api", "30",
            "--lib", androidJar.absolutePath,
            "--output", outputDir.get().asFile.absolutePath,
        )
        args += standaloneJar.absolutePath
        runtimeInputs.forEach { args += it.absolutePath }

        exec {
            commandLine(args)
        }

        // Collect all generated dex files in sorted order (classes.dex, classes2.dex, ...)
        val generatedDexFiles = outputDir.get().asFile.listFiles()
            ?.filter { it.isFile && it.name.matches(Regex("classes\\d*\\.dex")) }
            ?.sortedWith(compareBy {
                val n = it.nameWithoutExtension.removePrefix("classes")
                if (n.isEmpty()) 0 else n.toInt()
            })
            ?: error("No dex files found in ${outputDir.get().asFile}")

        val mgcDir = freshMgcClasses4.asFile.parentFile
        mgcDir.mkdirs()

        // Clean up previously synced hook dexes (classes4..classes9) that no longer exist
        val startSlot = 4
        val endSlot = startSlot + 6
        for (slot in startSlot until endSlot) {
            val old = File(mgcDir, if (slot == 4) "classes4.dex" else "classes${slot}.dex")
            if (old.exists()) old.delete()
        }

        // Copy new dexes into MGC slots starting at 4
        generatedDexFiles.forEachIndexed { index, dex ->
            val slot = startSlot + index
            val dest = File(mgcDir, if (slot == 4) "classes4.dex" else "classes${slot}.dex")
            dex.copyTo(dest, overwrite = true)
            logger.lifecycle("Synced ${dex.name} -> ${dest.name} (${dex.length() / 1024}KB)")
        }
    }
}

val previewhookClassesJar by tasks.registering(Jar::class) {
    archiveFileName.set("previewhook-classes.jar")
    destinationDirectory.set(layout.buildDirectory.dir("intermediates/standaloneDex"))
    dependsOn("compileReleaseKotlin", "compileReleaseJavaWithJavac")

    from(layout.buildDirectory.dir("tmp/kotlin-classes/release"))
    val javaClassesDir = layout.buildDirectory.dir("intermediates/javac/release/compileReleaseJavaWithJavac/classes")
    if (javaClassesDir.get().asFile.exists()) {
        from(javaClassesDir)
    }
}
