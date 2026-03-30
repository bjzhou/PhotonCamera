.class public Lcom/google/android/apps/camera/hdrplus/fusion/zoom/jni/NativeFusionZoom;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Liqy;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lcom/google/android/apps/camera/hdrplus/fusion/zoom/jni/NativeFusionZoom;->nativeLoadModelIntoCache([B)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static native nativeClone(JJ)J
.end method

.method public static native nativeInitialize(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private static native nativeLoadModelIntoCache([B)Z
.end method

.method public static native nativeProcess([B[BLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)J
.end method

.method public static native nativeRetrieveMoreDebugImage(JJ)J
.end method

.method public static native nativeRetrieveResultStatus(J)I
.end method
