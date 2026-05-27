.class public Lcom/agc/CamerasFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final capabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final formats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sActiveCamIDValue:Ljava/lang/String;


# instance fields
.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/agc/CamerasFinder;->capabilities:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/agc/CamerasFinder;->formats:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    iput-object p1, p0, Lcom/agc/CamerasFinder;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object p1, Lcom/agc/CamerasFinder;->capabilities:Landroid/util/SparseArray;

    const/4 v0, 0x0

    const-string v1, "BACKWARD_COMPATIBLE"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "MANUAL_SENSOR"

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v3, "MANUAL_POST_PROCESSING"

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x3

    const-string v4, "RAW"

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x4

    const-string v5, "PRIVATE_REPROCESSING"

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x5

    const-string v6, "READ_SENSOR_SETTINGS"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x6

    const-string v6, "BURST_CAPTURE"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x7

    const-string v6, "YUV_REPROCESSING"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const-string v6, "DEPTH_OUTPUT"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x9

    const-string v6, "CONSTRAINED_HIGH_SPEED_VIDEO"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xa

    const-string v6, "MOTION_TRACKING"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xb

    const-string v6, "LOGICAL_MULTI_CAMERA"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xc

    const-string v6, "MONOCHROME"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0xd

    const-string v6, "SECURE_IMAGE_DATA"

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/agc/CamerasFinder;->formats:Landroid/util/SparseArray;

    const-string v5, "UNKNOWN"

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "RGBA_8888"

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "RGBX_8888"

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "RGB_888"

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "RGB_565"

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x10

    const-string v1, "NV16"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x11

    const-string v1, "NV21"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x14

    const-string v1, "YUY2"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x20

    const-string v1, "RAW_SENSOR"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22

    const-string v1, "PRIVATE"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x23

    const-string v1, "YUV_420_888"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x24

    const-string v1, "RAW_PRIVATE"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x25

    const-string v1, "RAW10"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x26

    const-string v1, "RAW12"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x27

    const-string v1, "YUV_422_888"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x28

    const-string v1, "YUV_444_888"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x29

    const-string v1, "FLEX_RGB_888"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x2a

    const-string v1, "FLEX_RGBA_8888"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x36

    const-string v1, "YCBCR_P010"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x100

    const-string v1, "JPEG"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x101

    const-string v1, "DEPTH_POINT_CLOUD"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x1002

    const-string v1, "RAW_DEPTH"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x20363159

    const-string v1, "Y16"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x20203859

    const-string v1, "Y8"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x32315659

    const-string v1, "YV12"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x44363159

    const-string v1, "DEPTH16"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x48454946

    const-string v1, "HEIC"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static calculate35mmeqv(FLandroid/util/SizeF;)F
    .locals 1

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    const/high16 v0, 0x42100000    # 36.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p0

    return v0
.end method

.method private calculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Double;
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v4, 0x0

    aget p1, p1, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p1, v4

    float-to-double v4, p1

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public static calculatePixelSize(IF)F
    .locals 0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method private calculateZoomScaleOfView(Lcom/agc/Camera;F)V
    .locals 2

    invoke-virtual {p1}, Lcom/agc/Camera;->getFocalLength()F

    move-result v0

    invoke-virtual {p1}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    div-float/2addr v0, p2

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/agc/Camera;->setZoomScale(F)V

    return-void
.end method

.method private static getCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "No info"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget v2, p0, v1

    sget-object v3, Lcom/agc/CamerasFinder;->capabilities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormats(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/agc/CamerasFinder;->formats:Landroid/util/SparseArray;

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRawSizes(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    aput-object v0, p1, v1

    :cond_0
    return-object p1
.end method

.method private static getSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private nameCameras(Ljava/util/Map$Entry;Lcom/agc/Camera;Ljava/util/TreeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/agc/Camera;",
            ">;",
            "Lcom/agc/Camera;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/Camera;

    invoke-virtual {v0}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v1

    invoke-virtual {p3}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    cmpl-double p2, v1, p2

    if-nez p2, :cond_0

    const-string p2, "Wide"

    goto :goto_0

    :cond_0
    const-string p2, "Macro"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide p2

    cmpg-double p2, v1, p2

    if-gez p2, :cond_2

    const-string p2, "Tele"

    :goto_0
    invoke-virtual {v0, p2}, Lcom/agc/Camera;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/agc/Camera;->isLogical()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "(Logical) Main"

    goto :goto_0

    :cond_3
    const-string p2, "Main"

    goto :goto_0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private scanAllCameras(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v0, 0x80

    new-array v2, v0, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :cond_1
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v0, v2, v5

    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    array-length v9, v8

    move v10, v3

    move/from16 v25, v10

    :goto_2
    const/4 v11, 0x1

    if-ge v10, v9, :cond_3

    aget v12, v8, v10

    if-ne v12, v11, :cond_2

    move/from16 v25, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SizeF;

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v12

    check-cast v17, Landroid/util/Size;

    new-instance v15, Lcom/agc/Camera;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_4

    move v13, v11

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    aget v14, v8, v3

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Float;

    aget v8, v8, v3

    invoke-static {v8, v10}, Lcom/agc/CamerasFinder;->calculate35mmeqv(FLandroid/util/SizeF;)F

    move-result v8

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v10}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v11, v3}, Lcom/agc/CamerasFinder;->calculatePixelSize(IF)F

    move-result v18
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    :try_start_3
    aget v9, v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-direct {v1, v6}, Lcom/agc/CamerasFinder;->calculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, [I

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-direct {v1, v6}, Lcom/agc/CamerasFinder;->getRawSizes(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object v26

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v28

    invoke-static {v6}, Lcom/agc/CamerasFinder;->getCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v6}, Lcom/agc/CamerasFinder;->getFormats(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v30

    invoke-static {v6}, Lcom/agc/CamerasFinder;->getSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v31

    move-object v11, v15

    move-object v9, v15

    move-object/from16 v15, v16

    move/from16 v16, v8

    move-object/from16 v20, v10

    invoke-direct/range {v11 .. v31}, Lcom/agc/Camera;-><init>(Ljava/lang/String;ZFLjava/lang/Float;FLandroid/util/Size;FLjava/lang/Float;Landroid/util/SizeF;D[IZZ[Landroid/util/Size;ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v9, v6}, Lcom/agc/Camera;->setStreamConfigurationMap(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    iget-object v6, v1, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v7, p1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v7, p1

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/agc/CamerasFinder;->updateMap()V

    return-void
.end method

.method private updateMap()V
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v3, v0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/Camera;

    invoke-virtual {v4}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/agc/Camera;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/agc/Camera;->isFront()Z

    move-result v7

    invoke-virtual {v4}, Lcom/agc/Camera;->isLogical()Z

    move-result v8

    invoke-virtual {v4}, Lcom/agc/Camera;->getFocalLength()F

    move-result v9

    invoke-virtual {v4}, Lcom/agc/Camera;->getMinimumFocusDistance()F

    move-result v10

    invoke-virtual {v4}, Lcom/agc/Camera;->getAperture()F

    move-result v11

    invoke-virtual {v4}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SizeF;->getWidth()F

    move-result v12

    invoke-virtual {v4}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v13

    invoke-virtual {v4}, Lcom/agc/Camera;->getRawSizes()[Landroid/util/Size;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v4}, Lcom/agc/Camera;->getRawSizes()[Landroid/util/Size;

    move-result-object v16

    aget-object v15, v16, v15

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v4}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v16

    invoke-virtual {v4}, Lcom/agc/Camera;->isOisSupported()Z

    move-result v17

    invoke-virtual {v4}, Lcom/agc/Camera;->isLevel3Supported()Z

    move-result v18

    invoke-virtual {v4}, Lcom/agc/Camera;->getCapabilities()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Lcom/agc/Camera;->getFormats()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual {v4}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v21, v2

    invoke-static/range {v5 .. v21}, Lagc/Agc;->newCamera(Ljava/lang/String;Ljava/lang/String;ZZFFFFFIIZZZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/agc/Camera;->isTypeNotSet()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/agc/Camera;->isFront()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v2, v22

    :goto_2
    move-object/from16 v3, v23

    goto/16 :goto_0

    :cond_2
    move-object v3, v2

    invoke-static {}, Lagc/Agc;->calculateCamera()V

    invoke-static {}, Lagc/Agc;->getFilteredCameraIDs()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GetFilteredCameraIDs"

    invoke-static {v4, v2}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {}, Lagc/Agc;->getBackMainCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    if-eq v2, v4, :cond_3

    invoke-static {}, Lagc/Agc;->getBackMainCameraId()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {}, Lagc/Agc;->getFrontMainCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    if-eq v2, v5, :cond_4

    invoke-static {}, Lagc/Agc;->getFrontMainCameraId()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v2, "Back  Main Lens Id"

    invoke-static {v2, v4}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    const-string v2, "Front Main Lens Id"

    invoke-static {v2, v5}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v2, v0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/Camera;

    iget-object v4, v0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/Camera;

    iget-object v5, v0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/Camera;

    invoke-virtual {v7}, Lcom/agc/Camera;->isTypeNotSet()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/agc/Camera;->isNameNotSet()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "Other"

    :goto_4
    invoke-virtual {v7, v8}, Lcom/agc/Camera;->setName(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_8

    invoke-virtual {v7}, Lcom/agc/Camera;->isFront()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {v0, v6, v2, v3}, Lcom/agc/CamerasFinder;->nameCameras(Ljava/util/Map$Entry;Lcom/agc/Camera;Ljava/util/TreeSet;)V

    goto :goto_3

    :cond_7
    invoke-direct {v0, v6, v4, v1}, Lcom/agc/CamerasFinder;->nameCameras(Ljava/util/Map$Entry;Lcom/agc/Camera;Ljava/util/TreeSet;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Lcom/agc/Camera;->isFront()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/agc/Camera;->isLogical()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "(Logical) Front"

    goto :goto_4

    :cond_9
    const-string v8, "Front"

    goto :goto_4

    :cond_a
    invoke-static {}, Lagc/Agc;->isSamsDevice()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v7}, Lcom/agc/Camera;->isFront()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    invoke-virtual {v4}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    cmpg-float v8, v8, v9

    if-lez v8, :cond_d

    invoke-virtual {v7}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/agc/Camera;->getAngleOfView()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    const-string v8, "Wide"

    goto :goto_4

    :cond_d
    :goto_6
    const-string v8, "Depth/Portrait"

    goto :goto_4

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/agc/Camera;->getFocalLength()F

    move-result v3

    invoke-virtual {v2}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    div-float/2addr v3, v2

    goto :goto_7

    :cond_f
    move v3, v1

    :goto_7
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/agc/Camera;->getFocalLength()F

    move-result v1

    invoke-virtual {v4}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    div-float/2addr v1, v2

    :cond_10
    iget-object v2, v0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/Camera;

    invoke-virtual {v4}, Lcom/agc/Camera;->isFront()Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_9

    :cond_11
    move v5, v3

    :goto_9
    invoke-direct {v0, v4, v5}, Lcom/agc/CamerasFinder;->calculateZoomScaleOfView(Lcom/agc/Camera;F)V

    goto :goto_8

    :cond_12
    return-void
.end method


# virtual methods
.method public getCameraManager()Landroid/hardware/camera2/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/agc/CamerasFinder;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method public getResult([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/agc/Camera;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/CamerasFinder;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v0, p1}, Lcom/agc/CamerasFinder;->scanAllCameras(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/CamerasFinder;->map:Ljava/util/Map;

    return-object p1
.end method
