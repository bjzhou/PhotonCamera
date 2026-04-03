import java.util.Locale

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

val sourceResDir = rootProject.file("MGC/MGC_9.6.080_V24_MGC/res")
val sanitizedResDir = layout.buildDirectory.dir("generated/layoutpreview/sanitizedRes")

fun sanitizeResourceName(name: String): String {
    val normalized = buildString(name.length) {
        for (char in name.lowercase(Locale.US)) {
            append(if (char in 'a'..'z' || char in '0'..'9' || char == '_') char else '_')
        }
    }
    return normalized.trim('_').ifEmpty { "res_preview" }
}

val preparePreviewResources by tasks.registering {
    inputs.dir(sourceResDir)
    outputs.dir(sanitizedResDir)

    doLast {
        val outputRoot = sanitizedResDir.get().asFile
        outputRoot.deleteRecursively()
        outputRoot.mkdirs()

        val renameMap = linkedMapOf<Pair<String, String>, String>()
        val copiedFiles = mutableListOf<Pair<File, File>>()

        sourceResDir.walkTopDown()
            .filter { it.isFile }
            .forEach { sourceFile ->
                if (sourceFile.name.startsWith(".")) {
                    return@forEach
                }

                val relativePath = sourceFile.relativeTo(sourceResDir)
                val parentDir = relativePath.parentFile
                val qualifierDir = parentDir?.path ?: ""
                val resourceType = qualifierDir.substringBefore('-')

                var outputName = sourceFile.name
                if (!resourceType.startsWith("values")) {
                    val sanitizedStem = sanitizeResourceName(sourceFile.nameWithoutExtension)
                    val sanitizedExtension = sourceFile.extension.lowercase(Locale.US)
                    outputName = if (sanitizedExtension.isEmpty()) {
                        sanitizedStem
                    } else {
                        "$sanitizedStem.$sanitizedExtension"
                    }
                    if (sanitizedStem != sourceFile.nameWithoutExtension) {
                        renameMap[resourceType to sourceFile.nameWithoutExtension] = sanitizedStem
                    }
                }

                val outputDir = if (parentDir == null) outputRoot else outputRoot.resolve(parentDir.path)
                outputDir.mkdirs()
                copiedFiles += sourceFile to outputDir.resolve(outputName)
            }

        copiedFiles.forEach { (sourceFile, outputFile) ->
            val extension = sourceFile.extension.lowercase(Locale.US)
            if (extension == "xml") {
                var content = sourceFile.readText()
                renameMap.forEach { (resourceKey, sanitizedName) ->
                    val (resourceType, originalName) = resourceKey
                    content = content.replace("@$resourceType/$originalName", "@$resourceType/$sanitizedName")
                    content = content.replace("?$resourceType/$originalName", "?$resourceType/$sanitizedName")
                }
                outputFile.writeText(content)
            } else {
                sourceFile.copyTo(outputFile, overwrite = true)
            }
        }
    }
}

android {
    namespace = "com.hinnka.mycamera.layoutpreview"
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
            manifest.srcFile("src/main/AndroidManifest.xml")
            res.srcDir(sanitizedResDir)
        }
    }
}

tasks.named("preBuild").configure {
    dependsOn(preparePreviewResources)
}

dependencies {
    implementation("androidx.appcompat:appcompat:1.7.1")
    implementation("androidx.constraintlayout:constraintlayout:2.2.1")
    implementation("androidx.cardview:cardview:1.0.0")
    implementation("androidx.viewpager2:viewpager2:1.1.0")
    implementation("androidx.recyclerview:recyclerview:1.4.0")
    implementation("com.google.android.material:material:1.12.0")
    implementation("com.airbnb.android:lottie:6.6.7")
}
