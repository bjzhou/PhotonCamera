import java.util.Locale

plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
}

android {
    namespace = "com.hinnka.mycamera"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.hinnka.mycamera.agcphotonlut"
        minSdk = 30
        targetSdk = 36
        versionCode = 1
        versionName = "1.0"

        buildConfigField("String", "BUILT_IN_API_URL", "\"\"")
        buildConfigField("String", "BUILT_IN_API_KEY", "\"\"")
        buildConfigField("String", "FLAVOR", "\"agc\"")
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
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
    buildFeatures {
        compose = true
        buildConfig = true
    }

    sourceSets {
        getByName("main") {
            manifest.srcFile("src/main/AndroidManifest.xml")
            java.srcDir("src/main/java")
            java.srcDir("src/photon/java")
            assets.srcDir("src/main/assets")
            res.srcDir("src/main/res")
        }
    }

    packaging {
        resources {
            excludes += setOf(
                "META-INF/AL2.0",
                "META-INF/LGPL2.1",
                "META-INF/LICENSE.md",
                "META-INF/LICENSE-notice.md",
            )
        }
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.ui)
    implementation(libs.androidx.ui.graphics)
    implementation(libs.androidx.ui.tooling.preview)
    implementation(libs.androidx.material3)
    implementation(libs.androidx.fragment.ktx)
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    implementation(libs.androidx.material.icons.extended)
    implementation(libs.coil.compose)
    implementation("me.saket.telephoto:zoomable-image-coil:0.18.0")
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.exifinterface)
    implementation("androidx.datastore:datastore-preferences:1.0.0")
    implementation(libs.androidx.animation.core)
    implementation(libs.gson)
    implementation("sh.calvin.reorderable:reorderable:2.4.3")
}

val agcDexOutputDir = layout.buildDirectory.dir("outputs/agc-dex")

tasks.register<Copy>("buildAgcPhotonDex") {
    dependsOn("assembleRelease")

    val apkFile = layout.buildDirectory.file("outputs/apk/release/agc-photon-lut-release-unsigned.apk")
    from(zipTree(apkFile)) {
        include("classes*.dex")
    }
    into(agcDexOutputDir)

    doFirst {
        val apk = apkFile.get().asFile
        require(apk.exists()) { "AGC photon LUT APK was not built: ${apk.absolutePath}" }
        agcDexOutputDir.get().asFile.deleteRecursively()
    }
    doLast {
        val files = agcDexOutputDir.get().asFile
            .listFiles { file -> file.extension.lowercase(Locale.US) == "dex" }
            ?.sortedBy { it.name }
            .orEmpty()
        require(files.isNotEmpty()) { "No dex files were extracted from ${apkFile.get().asFile.absolutePath}" }
        logger.lifecycle("AGC photon LUT dex files:")
        files.forEach { logger.lifecycle(" - ${it.absolutePath}") }
    }
}
