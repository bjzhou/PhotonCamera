.class public final Lcom/google/android/apps/camera/imax/cyclops/image/CyclopsPhotoWriter;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "cyclops"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public static native writeToFile([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;Ljava/lang/String;)Z
.end method
