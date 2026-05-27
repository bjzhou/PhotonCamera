.class public Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;
.super Ljava/lang/Object;


# instance fields
.field public croppedAreaImageHeightPixels:I

.field public croppedAreaImageWidthPixels:I

.field public croppedAreaLeftPixels:I

.field public croppedAreaTopPixels:I

.field public fullPanoHeightPixels:I

.field public fullPanoWidthPixels:I

.field public initialViewHeadingDegrees:I

.field public poseRollDegrees:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaLeftPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaTopPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageWidthPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageHeightPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->fullPanoWidthPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->fullPanoHeightPixels:I

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->initialViewHeadingDegrees:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->poseRollDegrees:F

    return-void
.end method
