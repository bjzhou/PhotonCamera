# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile

-repackageclasses

# Keep JNI used classes
-keep class com.hinnka.mycamera.raw.DngRawData {
    <init>(...);
    *;
}

# Keep native methods and their classes
-keepclasseswithmembernames class * {
    native <methods>;
}

# Protobuf Lite builds schemas by reflecting on generated message field names.
# MediaPipe TaskRunner serializes SystemInfo during face detector initialization;
# removing/renaming platform_ and related fields breaks that path in release builds.
# https://github.com/protocolbuffers/protobuf/blob/main/java/lite.md
-keep class * extends com.google.protobuf.GeneratedMessageLite {
    *;
}
