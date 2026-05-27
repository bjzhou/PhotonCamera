.class public Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

.field public d:Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;


# direct methods
.method public constructor <init>([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;-><init>([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;)V

    return-void
.end method

.method public constructor <init>([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    iput-object p2, p0, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->b:[B

    iput-object p3, p0, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    iput-object p4, p0, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->d:Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;

    return-void
.end method
