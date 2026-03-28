plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
}

android {
    namespace = "com.hinnka.mycamera"
    compileSdk = 36
    ndkVersion = "29.0.14206865"

    defaultConfig {
        applicationId = "com.hinnka.mycamera"
        minSdk = 30
        targetSdk = 36
        versionCode = 55
        versionName = "1.13.1"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        
        ndk {
            abiFilters += listOf("arm64-v8a")
        }

        externalNativeBuild {
            cmake {
                arguments += "-DCMAKE_SHARED_LINKER_FLAGS=-Wl,-z,max-page-size=16384"
            }
        }
    }

    signingConfigs {
        getByName("debug") {
            storeFile = file("debug.keystore")
            storePassword = "android"
            keyAlias = "androiddebugkey"
            keyPassword = "android"
        }
        create("release") {
            val storeFileProp = project.findProperty("RELEASE_STORE_FILE") as? String
            if (storeFileProp != null) {
                storeFile = file(storeFileProp)
                storePassword = project.findProperty("RELEASE_STORE_PASSWORD") as? String
                keyAlias = project.findProperty("RELEASE_KEY_ALIAS") as? String
                keyPassword = project.findProperty("RELEASE_KEY_PASSWORD") as? String
            }
        }
    }

    buildTypes {
        debug {
            applicationIdSuffix = ".debug"
            signingConfig = signingConfigs.getByName("debug")
        }
        release {
            isMinifyEnabled = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            signingConfig = signingConfigs.getByName("release")
        }
    }

    flavorDimensions += "channel"
    productFlavors {
        create("google") {
            dimension = "channel"
        }
        create("china") {
            dimension = "channel"
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
    
    externalNativeBuild {
        cmake {
            path = file("src/main/cpp/CMakeLists.txt")
            version = "3.22.1"
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
    
    // ViewModel Compose
    implementation(libs.androidx.lifecycle.viewmodel.compose)
    
    // Material Icons Extended
    implementation(libs.androidx.material.icons.extended)
    
    // Coil for image loading
    implementation(libs.coil.compose)

    // Telephoto for large image viewing with zoom support
    implementation("me.saket.telephoto:zoomable-image-coil:0.18.0")
    
    // Navigation Compose
    implementation(libs.androidx.navigation.compose)
    
    // ExifInterface for writing EXIF metadata
    implementation(libs.androidx.exifinterface)
    
    // DataStore for user preferences
    implementation("androidx.datastore:datastore-preferences:1.0.0")
    implementation(libs.androidx.animation.core)
    implementation(libs.androidx.lifecycle.process)

    implementation(libs.okhttp)
    implementation(libs.gson)

    // Bugly for china flavor
    "chinaImplementation"("com.tencent.bugly:crashreport:latest.release")

    // Billing for google flavor
    "googleImplementation"(libs.google.billing)
    "googleImplementation"(libs.google.billing.ktx)

    // Reorderable for drag-and-drop list reordering
    implementation("sh.calvin.reorderable:reorderable:2.4.3")

    // Media3 for video playback
    implementation(libs.media3.exoplayer)
    implementation(libs.media3.ui)

    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.ui.test.junit4)
    debugImplementation(libs.androidx.ui.tooling)
    debugImplementation(libs.androidx.ui.test.manifest)

    // TensorFlow Lite for Depth Estimator
    implementation("org.tensorflow:tensorflow-lite:2.17.0")
    implementation("org.tensorflow:tensorflow-lite-gpu:2.17.0")
    implementation("org.tensorflow:tensorflow-lite-gpu-api:2.17.0")
    implementation("org.tensorflow:tensorflow-lite-support:0.5.0")
}