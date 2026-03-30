.class public Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static final a(Lipx;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

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
    invoke-static {p0}, Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;->nativeLoadModelIntoCache([B)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native nativeDeblurFace([BLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)J
.end method

.method public static native nativeInitialize(Ljava/lang/String;Ljava/lang/String;ZZ)Z
.end method

.method private static native nativeLoadModelIntoCache([B)Z
.end method

.method public static native nativeRetrieveFusionType(J)I
.end method

.method public static native nativeRetrieveReferenceDebugImage(J)J
.end method

.method public static native nativeRetrieveReferenceFlowRoi(JFFJFFJJZLjava/lang/String;JIZZ)Z
.end method

.method public static native nativeRetrieveResultImage(J)J
.end method

.method public static native nativeRetrieveResultStatus(J)I
.end method

.method public static native nativeRetrieveSourceDebugImage(J)J
.end method

.method public static native nativeRetrieveWarpedReferenceDebugImage(J)J
.end method
