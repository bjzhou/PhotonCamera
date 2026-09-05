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

# Generated messages live in MediaPipe packages, not in com.google.protobuf.
# Keep their fields for Protobuf Lite's reflective schema construction.
-keep class * extends com.google.protobuf.GeneratedMessageLite {
    *;
}

# Preserve the stack frames used by Flogger to discover its caller.
-keep class com.google.common.flogger.** {
    *;
}

# MediaPipe's Java entry points and data accessed by JNI. Keep this in sync with:
# https://github.com/google-ai-edge/mediapipe/blob/master/mediapipe/java/com/google/mediapipe/framework/proguard.pgcfg
# Native-to-Java calls are not visible to R8; keeping native declarations alone
# does not preserve callback methods, constructors, or SerializedMessage fields.
-keep public interface com.google.mediapipe.framework.* {
    public *;
}
-keep public class com.google.mediapipe.framework.Packet {
    public static *** create(***);
    public long getNativeHandle();
    public void release();
}
-keep public class com.google.mediapipe.framework.PacketCreator {
    *** releaseWithSyncToken(...);
}
-keep public class com.google.mediapipe.framework.MediaPipeException {
    <init>(int, byte[]);
}
-keep class com.google.mediapipe.framework.ProtoUtil$SerializedMessage {
    *;
}
