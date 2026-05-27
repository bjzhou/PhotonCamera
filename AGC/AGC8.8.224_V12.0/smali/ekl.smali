.class public final Lekl;
.super Ljava/lang/Object;

# interfaces
.implements Lekk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cyclops"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    invoke-interface {p3, v0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    iget-object p3, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    iget-object v0, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->b:[B

    iget-object v1, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    iget-object p1, p1, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->d:Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;

    invoke-static {p3, v0, v1, p1, p2}, Lcom/google/android/apps/camera/imax/cyclops/image/CyclopsPhotoWriter;->writeToFile([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;Ljava/lang/String;)Z

    return-void
.end method
