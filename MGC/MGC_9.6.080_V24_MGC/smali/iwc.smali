.class public final Liwc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const-string v0, "cyclops"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {p0, p3, v0, p1, p2}, Lcom/google/android/apps/camera/imax/cyclops/image/CyclopsPhotoWriter;->writeToFile([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;Ljava/lang/String;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->d:Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3, p0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object p0, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    const p0, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p3, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->b:[B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
