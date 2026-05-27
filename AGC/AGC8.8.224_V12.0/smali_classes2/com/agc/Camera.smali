.class public Lcom/agc/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static activeArraySize:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static awbCCT:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static captureRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static captureResultKey:Landroid/hardware/camera2/CaptureResult$Key;

.field public static samsZMax:Landroid/hardware/camera2/CameraCharacteristics$Key;


# instance fields
.field private aeModes:[I

.field private angleOfView:D

.field private aperture:F

.field private capabilities:Ljava/lang/String;

.field private flashSupported:Z

.field private focalLength:F

.field private formats:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isFront:Z

.field private isLogical:Z

.field private isRaw10Supported:Z

.field private minimumFocusDistance:F

.field private mm35FocalLength:F

.field private name:Ljava/lang/String;

.field private oisSupported:Z

.field private physicalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pixelArraySize:Landroid/util/Size;

.field private pixelSize:F

.field private rawSizes:[Landroid/util/Size;

.field private sensorSize:Landroid/util/SizeF;

.field private sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private supportedHardwareLevel:I

.field private type:Ljava/lang/String;

.field private zoomScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    iput-object p1, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    :try_start_0
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "android.hardware.camera2.CaptureResult$Key"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "com.qti.stats.awbwrapper.AWBCCT"

    const-string v4, "xiaomi.camera.awb.cct"

    const-string v7, "mt[0-9]*"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v4

    :goto_0
    aput-object v8, v1, v5

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v2, Lcom/agc/Camera;->captureResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1
    const-string v2, "android.hardware.camera2.CaptureRequest$Key"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    aput-object v8, v1, v5

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v2, Lcom/agc/Camera;->captureRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_3
    const-string v2, "android.hardware.camera2.CameraCharacteristics$Key"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v5

    const-class v8, Ljava/lang/Class;

    aput-object v8, v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    aput-object v3, v1, v5

    const-string v2, "android.hardware.camera2.params.StreamConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v2, Lcom/agc/Camera;->awbCCT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "org.codeaurora.qcamera3.quadra_cfa.activeArraySize"

    aput-object v2, v1, v5

    const-class v2, Landroid/graphics/Rect;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v2, Lcom/agc/Camera;->activeArraySize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "samsung.android.scaler.availableMaxDigitalZoomList"

    aput-object v2, v1, v5

    const-class v2, [F

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/agc/Camera;->samsZMax:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    move v2, v5

    move v3, v2

    :goto_3
    if-ge v2, v1, :cond_7

    aget v4, v0, v2

    if-ne v4, v6, :cond_6

    move v3, v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    move v6, v5

    :goto_4
    iput-boolean v6, p0, Lcom/agc/Camera;->isFront:Z

    aget v6, v0, v5

    iput v6, p0, Lcom/agc/Camera;->focalLength:F

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/agc/Camera;->minimumFocusDistance:F

    aget v0, v0, v5

    invoke-static {v0, v2}, Lcom/agc/Camera;->calculate35mmeqv(FLandroid/util/SizeF;)F

    move-result v0

    iput v0, p0, Lcom/agc/Camera;->mm35FocalLength:F

    iput-object v4, p0, Lcom/agc/Camera;->pixelArraySize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-static {v0, v4}, Lcom/agc/Camera;->calculatePixelSize(IF)F

    move-result v0

    iput v0, p0, Lcom/agc/Camera;->pixelSize:F

    aget v0, v1, v5

    iput v0, p0, Lcom/agc/Camera;->aperture:F

    iput-object v2, p0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    invoke-direct {p0, p1}, Lcom/agc/Camera;->calculateAngleOfView(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/agc/Camera;->angleOfView:D

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/agc/Camera;->aeModes:[I

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/agc/Camera;->flashSupported:Z

    iput-boolean v3, p0, Lcom/agc/Camera;->oisSupported:Z

    invoke-direct {p0, p1}, Lcom/agc/Camera;->getRawSizes(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/agc/Camera;->getCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    invoke-static {p1}, Lcom/agc/Camera;->getFormats(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    invoke-static {p1}, Lcom/agc/Camera;->getSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    iget-object p1, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RAW10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/agc/Camera;->isRaw10Supported:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    :cond_9
    :goto_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZFLjava/lang/Float;FLandroid/util/Size;FLjava/lang/Float;Landroid/util/SizeF;D[IZZ[Landroid/util/Size;ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZF",
            "Ljava/lang/Float;",
            "F",
            "Landroid/util/Size;",
            "F",
            "Ljava/lang/Float;",
            "Landroid/util/SizeF;",
            "D[IZZ[",
            "Landroid/util/Size;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    iput-object v3, v0, Lcom/agc/Camera;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/agc/Camera;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/agc/Camera;->type:Ljava/lang/String;

    iput-object v3, v0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    iput-object v3, v0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    iput-object v1, v0, Lcom/agc/Camera;->id:Ljava/lang/String;

    move v3, p2

    iput-boolean v3, v0, Lcom/agc/Camera;->isFront:Z

    move v3, p3

    iput v3, v0, Lcom/agc/Camera;->focalLength:F

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, v0, Lcom/agc/Camera;->minimumFocusDistance:F

    move v4, p5

    iput v4, v0, Lcom/agc/Camera;->mm35FocalLength:F

    move-object v4, p6

    iput-object v4, v0, Lcom/agc/Camera;->pixelArraySize:Landroid/util/Size;

    move v4, p7

    iput v4, v0, Lcom/agc/Camera;->pixelSize:F

    if-eqz p8, :cond_1

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_1
    iput v3, v0, Lcom/agc/Camera;->aperture:F

    move-object v3, p9

    iput-object v3, v0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    move-wide/from16 v3, p10

    iput-wide v3, v0, Lcom/agc/Camera;->angleOfView:D

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/agc/Camera;->aeModes:[I

    move/from16 v3, p13

    iput-boolean v3, v0, Lcom/agc/Camera;->flashSupported:Z

    move/from16 v3, p14

    iput-boolean v3, v0, Lcom/agc/Camera;->oisSupported:Z

    invoke-direct {p0, v2}, Lcom/agc/Camera;->getRawSizes([Landroid/util/Size;)[Landroid/util/Size;

    move-result-object v3

    iput-object v3, v0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    move/from16 v3, p16

    iput v3, v0, Lcom/agc/Camera;->supportedHardwareLevel:I

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RAW10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/agc/Camera;->isRaw10Supported:Z

    invoke-interface/range {p17 .. p17}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/agc/Camera;->isLogical:Z

    array-length v3, v2

    if-le v3, v4, :cond_2

    invoke-static {}, Lcom/agc/Camera;->googleDevicesIndividually()Z

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " CameraRawSizes:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/agc/Log;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

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

.method public static getAllOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    invoke-static {p0, v0}, Lcom/agc/util/AgcUtil;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static getCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "No info"

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormats(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method private getRawSizes([Landroid/util/Size;)[Landroid/util/Size;
    .locals 2

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

.method public static googleDevicesIndividually()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "oriole"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "raven"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bluejay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "panther"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cheetah"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pipit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tangor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hwLevelName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "LIMITED"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "FULL"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "LEGACY"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "3"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "EXTERNAL"

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/agc/Camera;

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result v2

    invoke-virtual {p1}, Lcom/agc/Camera;->isFront()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/agc/Camera;->getFocalLength()F

    move-result v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getFocalLength()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/agc/Camera;->getAperture()F

    move-result v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAperture()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v2

    invoke-virtual {p1}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/SizeF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAeModes()[I
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->aeModes:[I

    return-object v0
.end method

.method public getAllOutputSizes(I)[Landroid/util/Size;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/Camera;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/agc/Camera;->getAllOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getAngleOfView()D
    .locals 2

    iget-wide v0, p0, Lcom/agc/Camera;->angleOfView:D

    return-wide v0
.end method

.method public getAperture()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->aperture:F

    return v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->focalLength:F

    return v0
.end method

.method public getFormats()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumFocusDistance()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->minimumFocusDistance:F

    return v0
.end method

.method public getMm35FocalLength()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->mm35FocalLength:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    return-object v0
.end method

.method public getPixelArraySize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->pixelArraySize:Landroid/util/Size;

    return-object v0
.end method

.method public getPixelSize()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->pixelSize:F

    return v0
.end method

.method public getRawSizes()[Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    :cond_0
    iget-object v0, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    return-object v0
.end method

.method public getSensorSize()Landroid/util/SizeF;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    return-object v0
.end method

.method public getSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    return-object v0
.end method

.method public getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object v0
.end method

.method public getSupportedHardwareLevel()I
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomScale()F
    .locals 1

    iget v0, p0, Lcom/agc/Camera;->zoomScale:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/agc/Camera;->isFront()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getFocalLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getAperture()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->getSensorSize()Landroid/util/SizeF;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/agc/Camera;->isFlashSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/agc/Camera;->getAeModes()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->flashSupported:Z

    return v0
.end method

.method public isFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->isFront:Z

    return v0
.end method

.method public isLevel3Supported()Z
    .locals 2

    iget v0, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLogical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->isLogical:Z

    return v0
.end method

.method public isNameNotSet()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOisSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->oisSupported:Z

    return v0
.end method

.method public isRaw10Supported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/Camera;->isRaw10Supported:Z

    return v0
.end method

.method public isTypeNotSet()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    const-string p1, "\u2713"

    invoke-virtual {p0, p1}, Lcom/agc/Camera;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public setSizes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/Camera;->sizes:Ljava/util/Map;

    return-void
.end method

.method public setStreamConfigurationMap(Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/Camera;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    return-void
.end method

.method public setZoomScale(F)V
    .locals 0

    iput p1, p0, Lcom/agc/Camera;->zoomScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/agc/Camera;->isFront:Z

    if-eqz v2, :cond_0

    const-string v2, "FRONT"

    goto :goto_0

    :cond_0
    const-string v2, "BACK"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/Camera;->physicalIds:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    const-string v4, " + "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tisLogical = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/agc/Camera;->isLogical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tZoomScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->zoomScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tFocalLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->focalLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tmm35FocalLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->mm35FocalLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tMinimumFocusDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->minimumFocusDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tPixelArraySize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->pixelArraySize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tPixelSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->pixelSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tAperture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->aperture:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tSensorSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->sensorSize:Landroid/util/SizeF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tAngleOfView(Diagonal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/agc/Camera;->angleOfView:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u00b0\n\t\t\tAEModes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->aeModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tFlashSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/agc/Camera;->flashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tOisSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/agc/Camera;->oisSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tRAW_SENSOR sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->rawSizes:[Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tSupportedHardwareLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/agc/Camera;->supportedHardwareLevel:I

    invoke-direct {p0, v1}, Lcom/agc/Camera;->hwLevelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tCapabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t\t\tformats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/agc/Camera;->formats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
