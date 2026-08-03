plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

val syncedSourceDir = layout.buildDirectory.dir("generated/previewhook/syncedSrc")
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
        }
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.10.2")
    compileOnly(libs.androidx.material.icons.core)
}

val syncPreviewhookSources by tasks.registering(Sync::class) {
    val appSrc = layout.projectDirectory.dir("../app/src/main/java")
    from(appSrc) {
        include("com/hinnka/mycamera/color/TransferCurve.kt")
        include("com/hinnka/mycamera/lut/Shaders.kt")
        include("com/hinnka/mycamera/lut/PreviewColorShader.kt")
        include("com/hinnka/mycamera/lut/PreviewColorShaderModules.kt")
        include("com/hinnka/mycamera/lut/PreviewShadowsHighlightsShader.kt")
        include("com/hinnka/mycamera/lut/BasicToneLutShader.kt")
        include("com/hinnka/mycamera/lut/DirectFlashShader.kt")
        include("com/hinnka/mycamera/lut/ThreeWayColorGradingShader.kt")
        include("com/hinnka/mycamera/model/ColorPaletteMapper.kt")
        include("com/hinnka/mycamera/model/ColorPaletteState.kt")
        include("com/hinnka/mycamera/raw/ColorSpace.kt")
    }
    into(syncedSourceDir)
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
    dependsOn(syncPreviewhookSources)
}

tasks.named("preBuild") {
    dependsOn(syncPreviewhookSources)
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
