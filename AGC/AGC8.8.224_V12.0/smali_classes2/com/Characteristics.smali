.class public Lcom/Characteristics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupMultiCropRegion(Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;Lkli;)Z
    .locals 5

    invoke-static {}, Lagc/Agc;->forceGetFocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkli;->getFocalLengths()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;->focalLengths:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;->referenceFocalLength:F

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v0}, Lkli;->getChecked(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;->sensorDiagonalSize:D

    invoke-interface {p1}, Lkli;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;->xCenter:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/apps/camera/one/zoom/api/MultiCropRegion;->yCenter:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
