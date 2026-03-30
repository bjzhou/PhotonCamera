import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Base64

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

val syncedSourceDir = layout.buildDirectory.dir("generated/previewhook/syncedSrc")
val generatedSourceDir = layout.buildDirectory.dir("generated/previewhook/generatedSrc")

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
}

val syncPreviewhookSources by tasks.registering(Sync::class) {
    val appSrc = layout.projectDirectory.dir("../app/src/main/java")
    from(appSrc) {
        include("com/hinnka/mycamera/ui/camera/CameraGLSurfaceView.kt")
        include("com/hinnka/mycamera/lut/LutRenderer.kt")
        include("com/hinnka/mycamera/lut/LutImageProcessor.kt")
        include("com/hinnka/mycamera/lut/Shaders.kt")
        include("com/hinnka/mycamera/lut/LutConfig.kt")
        include("com/hinnka/mycamera/lut/LutCurve.kt")
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

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
    dependsOn(syncPreviewhookSources, generateDefaultVerificationLutSource)
}

tasks.named("preBuild") {
    dependsOn(syncPreviewhookSources, generateDefaultVerificationLutSource)
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
        val runtimeJars = configurations.getByName("releaseRuntimeClasspath").files
            .filter { it.extension == "jar" }

        outputDir.get().asFile.mkdirs()

        val args = mutableListOf(
            d8.absolutePath,
            "--min-api", "30",
            "--lib", androidJar.absolutePath,
            "--output", outputDir.get().asFile.absolutePath,
        )
        args += standaloneJar.absolutePath
        runtimeJars.forEach { args += it.absolutePath }

        exec {
            commandLine(args)
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
