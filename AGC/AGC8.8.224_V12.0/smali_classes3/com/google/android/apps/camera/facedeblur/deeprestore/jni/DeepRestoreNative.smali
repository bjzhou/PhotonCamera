.class public final Lcom/google/android/apps/camera/facedeblur/deeprestore/jni/DeepRestoreNative;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "deeprestore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native createHandle(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;ZZ)J
.end method

.method public static native deepRestoreFaceDeblurRgb(JJJF[J[JZZJ)I
.end method

.method public static native releaseHandle(J)V
.end method
