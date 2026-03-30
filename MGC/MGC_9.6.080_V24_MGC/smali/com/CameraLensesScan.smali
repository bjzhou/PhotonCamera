.class public Lcom/CameraLensesScan;
.super Ljava/lang/Object;
.source "CameraLensesScan.java"


# static fields
.field public static sActiveCam:Lpog;

.field public static sActiveCamIDValue:Ljava/lang/String;

.field public static sCameraAllLens:Ljava/util/Map;

.field public static sCameraLens:Ljava/util/Map;

.field public static sCameraLensAll:Ljava/util/List;

.field public static sCameraLensBLoc:Ljava/util/Map;

.field public static sCameraLensFLoc:Ljava/util/Map;

.field public static sCameraLensLogical:Ljava/util/Map;

.field public static sCameraManager:Landroid/hardware/camera2/CameraManager;

.field public static sToggleNameDefaultBack:F

.field public static sToggleNameDefaultFront:F

.field public static sWait:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const-string v1, "camera"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/CameraLensesScan;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v0 .. v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-class v0, Landroid/hardware/camera2/CameraManager;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 5

    goto/32 :goto_2e

    nop

    nop

    :goto_0
    div-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v4, Landroid/util/SizeF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcom/CameraLensesScan;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_9
    sput v3, Lcom/CameraLensesScan;->sToggleNameDefaultFront:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    aget v3, v3, v4

    nop

    nop

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

    :goto_f
    check-cast v4, Landroid/util/SizeF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    :goto_12
    check-cast v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/CameraLensesScan;->sCameraLensAll:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    aget v3, v3, v4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    aget-object v2, v1, v2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    sput-object v0, Lcom/CameraLensesScan;->sCameraLensLogical:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v3, [F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sput v3, Lcom/CameraLensesScan;->sToggleNameDefaultBack:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Lcom/CameraLensesScan;->scanCameraLens()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    div-float/2addr v3, v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    aget-object v2, v1, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v4, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public static CalcNameToggle(Ljava/util/Map;)Ljava/util/Map;
    .locals 11

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v4, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v4, 0x41200000    # 10.0f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    div-float v3, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    iput-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b
    invoke-interface {v10, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    :goto_c
    new-instance v7, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_d
    sget v3, Lcom/CameraLensesScan;->sToggleNameDefaultBack:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, v2, Lcom/CameraLens;->focal_lengths:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v10

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    :goto_18
    invoke-static {v3, v7}, Lcom/CameraLensesScan;->DoubleNameToggleChange(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1b
    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    div-float/2addr v3, v4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    invoke-interface {v6, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    iget v9, v2, Lcom/CameraLens;->lens_facing:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_32

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    invoke-interface {v10, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    new-instance v10, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    const v1, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2b
    if-nez v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_2c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v7, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3d

    nop

    nop

    :goto_31
    sget v3, Lcom/CameraLensesScan;->sToggleNameDefaultFront:F

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v9, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    :goto_36
    invoke-static {v3, v6}, Lcom/CameraLensesScan;->DoubleNameToggleChange(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    :goto_37
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    if-nez v8, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v6, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_41
    iget-object v5, v2, Lcom/CameraLens;->physical_size:Landroid/util/SizeF;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CameraLensFacing(I)Ljava/util/Map;
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    check-cast v4, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    sget-object v0, Lcom/CameraLensesScan;->sCameraLens:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v6, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    if-eq p0, v5, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_15
    return-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    const v1, 0x1a

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v5, v4, Lcom/CameraLens;->lens_facing:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static DoubleNameToggleChange(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    const-string v2, " to TOGGLE_NANE = "

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    const v1, 0x41200000    # 10.0f

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_20
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v2, "RENAME_LENS"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    const-string v2, "TOGGLE_NANE = "

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LogMapLens(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const-string v3, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_15

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, " [ "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_12
    const-string v3, "]"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v3, v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static addCameraLensLogical(Ljava/util/Map;Lcom/CameraLens;Ljava/util/Set;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_28

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, p1}, Lcom/CameraLens;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, p1, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v4, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v6, Ljava/lang/String;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, v3, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    const-string v6, ", "

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, p1, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    sget-object v5, Lcom/CameraLensesScan;->sCameraLensLogical:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v6, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0xc

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    sput-object v5, Lcom/CameraLensesScan;->sCameraLensLogical:Ljava/util/Map;

    nop

    :goto_25
    goto/32 :goto_38

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_27
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sput-object v5, Lcom/CameraLensesScan;->sCameraLensLogical:Ljava/util/Map;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2d
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    sget-object v5, Lcom/CameraLensesScan;->sCameraLensLogical:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    :goto_31
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_3d

    nop

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v6, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_d

    nop

    :goto_39
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3b
    check-cast v3, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_6

    nop

    goto/32 :goto_39

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop
.end method

.method public static delimiterLens(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    if-lt v2, v3, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_7
    const v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    if-lt v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, ","

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v3, p2, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const-string v1, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v4, v4, 0x1

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_8

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    array-length v3, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    return v4

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, ","

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    array-length v3, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget-object v3, v1, v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, " "

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, ""

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    :goto_2e
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v3, p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop
.end method

.method public static findDefCameraLens(I)Ljava/lang/String;
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v4, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4c

    nop

    nop

    :goto_6
    if-gez v4, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v2, v2, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v6, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "active_cam_id_back_key"

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    const v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    const v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    invoke-static {v5, v6}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v5, v2

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_1
    goto/32 :goto_47

    nop

    :goto_1d
    iget-object v6, v1, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    const-string v6, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    if-gtz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v2, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    const-string v6, "1"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    move v5, v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v5, v1, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Lcom/CameraLens;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p0, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-float/2addr v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float v4, v5, v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v5, "active_cam_id_back_key"

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v5, "active_cam_id_front_key"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v5, "active_cam_id_front_key"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v6, "0"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lcom/CameraLensesScan;->sCameraLensFLoc:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-gez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_7

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    return-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_44
    cmpl-float v4, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_45
    sget-object v0, Lcom/CameraLensesScan;->sCameraLensBLoc:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_46
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_43

    nop

    nop

    :goto_48
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_9
    :goto_4a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_a

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v1, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private static getBit(II)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_10
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    shr-int v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop
.end method

.method public static hideCameraLens(Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_4

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_e
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const-string v3, "disable_lens_key_"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_18
    invoke-static {v4}, Lcom/a;->ab_mb(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    check-cast v4, Lcom/CameraLens;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public static lensBlackList(I)I
    .locals 4

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, p0, :cond_1

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :cond_1
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_8
    if-ne v0, p0, :cond_2

    nop

    goto/32 :goto_f3

    nop

    nop

    :cond_2
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_b
    const/16 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x34

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_e
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_143

    nop

    nop

    nop

    :goto_f
    const-string v1, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12b

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "SM-S918"

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_1b
    const-string v2, ""

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "1,21"

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v0, p0, :cond_4

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_1f
    return v3

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_24
    if-eq v0, p0, :cond_5

    nop

    goto/32 :goto_fb

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v0, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v0, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    :cond_7
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_9

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7d

    nop

    nop

    :goto_2e
    if-ne v0, p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v2, :cond_b

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_b
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v0, p0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v3

    nop

    nop

    :goto_33
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_35
    const-string v0, "52,54,56"

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_37
    const-string v0, "8"

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v0, p0, :cond_d

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v0, "52"

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_3a
    return v3

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_d4

    nop

    nop

    :goto_3c
    const-string v1, "SM-N9860"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v1, "bGVuc19ibF9rZXk="

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v3, 0x1

    nop

    nop

    :goto_3f
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eq v0, p0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_42
    return v3

    nop

    :goto_43
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v0, p0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :cond_f
    goto/32 :goto_103

    nop

    nop

    :goto_45
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_47
    return v3

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_4a
    if-ne v0, p0, :cond_10

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_4c
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v1, "SM-G9980"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4e
    return v3

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_50
    const/16 v0, 0x34

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-ne v0, p0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const v0, 0x13

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_53
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_54
    const/16 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_56
    if-ne v0, p0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_12
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0, v1, p0}, Lcom/CameraLensesScan;->delimiterLens(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_58
    return v3

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-ne v0, p0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :cond_13
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v0}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v2, ""

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_5d
    return v3

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_5f
    const/16 v0, 0x34

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_60
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_63
    const-string v0, "52,54"

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_64
    const/16 v0, 0x34

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_65
    if-ne v0, p0, :cond_14

    nop

    goto/32 :goto_11b

    nop

    :cond_14
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_67
    if-eqz v1, :cond_15

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_68
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_69
    if-eqz v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_16
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v2, ""

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6b
    if-lez v0, :cond_17

    nop

    goto/32 :goto_ad

    nop

    :cond_17
    goto/32 :goto_ac

    nop

    :goto_6c
    if-eq v0, p0, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_18
    :goto_6d
    goto/32 :goto_cb

    nop

    nop

    :goto_6e
    if-ne v0, p0, :cond_19

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6f
    return v3

    nop

    :goto_70
    goto/32 :goto_de

    nop

    nop

    :goto_71
    const/16 v0, 0x3

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-string v0, "2,52,54,56"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eq v0, p0, :cond_1a

    nop

    goto/32 :goto_149

    nop

    :cond_1a
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-ne v0, p0, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_76
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_77
    if-ne v0, p0, :cond_1c

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_78
    const-string v0, "0,2,7"

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-string v1, " "

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_7b
    const/16 v0, 0x36

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_7c
    const/16 v0, 0x38

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7f
    if-eqz v1, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eq v0, p0, :cond_1e

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_82
    return v3

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_73

    nop

    nop

    :goto_84
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_85
    if-ne v0, p0, :cond_1f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1f
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_86
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_88
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_89
    if-eq v0, p0, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_20
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v1, :cond_21

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    :cond_21
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    return v3

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_127

    nop

    nop

    nop

    :goto_8d
    const/16 v0, 0x15

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_8e
    if-eq v0, p0, :cond_22

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_8f
    if-ne v0, p0, :cond_23

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_23
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    return v3

    nop

    :goto_91
    goto/32 :goto_e8

    nop

    nop

    :goto_92
    if-ne v0, p0, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    :cond_24
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_94
    const-string v1, "R8QXEEA"

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_95
    if-eqz v1, :cond_25

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :cond_25
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v1, " "

    nop

    const-string v2, ""

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v1, "SM-G78"

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_108

    nop

    nop

    :goto_96
    const-string v1, "thor"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const-string v2, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_9b
    if-ne v0, p0, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    :cond_26
    goto/32 :goto_80

    nop

    nop

    :goto_9c
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_61

    nop

    nop

    :goto_9d
    return v0

    nop

    :goto_9e
    goto/32 :goto_b9

    nop

    nop

    :goto_9f
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v0, "20"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_a2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-eq v0, p0, :cond_27

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return v3

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    return v3

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a8
    if-ne v0, p0, :cond_28

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const-string v0, "21"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_aa
    const-string v0, "bGVuc193bF9rZXk="

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_ab
    const/16 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_134

    nop

    nop

    :goto_ad
    goto/32 :goto_2c

    nop

    nop

    :goto_ae
    const/16 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const-string v1, "SM-S928"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_b0
    const/16 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_b1
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const-string v0, "0"

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const/16 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-eqz v1, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_b5
    const/16 v0, 0x36

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_b7
    const/16 v0, 0x34

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_b8
    if-ne v0, p0, :cond_2a

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2a
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_ba
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_bb
    const/16 v0, 0x38

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_bc
    if-eq v0, p0, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-ne v0, p0, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :cond_2c
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const/16 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const-string v1, "SM-N985F"

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_c0
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_c1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_c2
    const/16 v0, 0x0

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c4
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/16 v0, 0x15

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_c6
    const/16 v0, 0x0

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const/16 v0, 0x36

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-eq v0, p0, :cond_2d

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_c9
    if-eqz v1, :cond_2e

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-ne v0, p0, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_b

    nop

    nop

    :goto_cb
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_cc
    const/16 v0, 0x34

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_cd
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_ce
    if-ne v0, p0, :cond_30

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-ne v0, p0, :cond_31

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_d4
    const/16 v0, 0x32

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_d5
    invoke-static {v1}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_d6
    const-string v0, "52"

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const/16 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_d8
    const-string v1, " "

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-eqz v1, :cond_32

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_32
    goto/32 :goto_146

    nop

    nop

    :goto_da
    const-string v1, "SM-G965U"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_db
    return v3

    nop

    nop

    :goto_dc
    goto/32 :goto_111

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/16 v0, 0x0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_df
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_e0
    return v3

    nop

    :goto_e1
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const/16 v0, 0x5

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const/16 v0, 0x34

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_e4
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_e5
    if-eqz v1, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    :cond_33
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const-string v1, " "

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_e7
    if-eqz v1, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const-string v0, "1,52,54,56,58"

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_ea
    if-eq v0, p0, :cond_35

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_35
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_c2

    nop

    nop

    :goto_ed
    const-string v0, "21"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-ne v0, p0, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_36
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_ef
    const/16 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-ne v0, p0, :cond_37

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_f2
    if-eq v0, p0, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_38
    :goto_f3
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    const-string v2, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_9e

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_f7
    if-eqz v2, :cond_39

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_39
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_f8
    const/16 v0, 0x6

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_f9
    const/16 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    return v3

    nop

    :goto_fb
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const/4 v3, 0x1

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual/range {v0 .. v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_fe
    if-eq v0, p0, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    :cond_3a
    :goto_ff
    goto/32 :goto_fc

    nop

    nop

    :goto_100
    const-string v2, "bGVuc193bF9rZXk="

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_101
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_102
    if-ne v0, p0, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    const/16 v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-eq v0, p0, :cond_3c

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_3c
    :goto_105
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    const/16 v0, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_108
    if-eqz v1, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    :cond_3d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_109
    const-string v0, "0,3,5,6,7"

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_10a
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_10b
    const-string v1, " "

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10c
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const-string v0, "0,2,3,5,6,7"

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_111
    const-string v0, "3,4,5,6"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_112
    if-ne v0, p0, :cond_3e

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_14a

    nop

    nop

    :goto_113
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_ef

    nop

    nop

    :goto_114
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    const-string v1, "V2145A"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_116
    return v3

    nop

    :goto_117
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_118
    const-string v0, "50,52"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_119
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_11a
    return v3

    nop

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_11c
    return v3

    nop

    nop

    nop

    nop

    :goto_11d
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11e
    invoke-virtual/range {v0 .. v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const-string v0, "0,3,5,6,7"

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    const-string v1, "SM-N975F"

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_121
    const-string v1, " "

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_122
    const/4 v3, 0x1

    nop

    nop

    :goto_123
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_124
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_125
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_127
    const/16 v0, 0x0

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_129
    const-string v0, "21"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12a
    if-eqz v1, :cond_3f

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_12b
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    const/16 v0, 0x3

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_12d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12e
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_110

    nop

    nop

    :goto_130
    const/16 v0, 0x15

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_131
    const-string v1, " "

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_132
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    return v3

    nop

    :goto_134
    goto/32 :goto_15e

    nop

    nop

    :goto_135
    return v3

    nop

    :goto_136
    goto/32 :goto_39

    nop

    nop

    :goto_137
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_139
    const-string v1, "V2227A"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13a
    if-ne v0, p0, :cond_40

    nop

    goto/32 :goto_11b

    nop

    nop

    :cond_40
    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_13b
    const-string v1, "SM-S908"

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    if-eqz v1, :cond_41

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_13f
    const/16 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_140
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_141
    if-ne v0, p0, :cond_42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_143
    const-string v0, ""

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_144
    const/16 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_146
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_149
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    const/16 v0, 0x36

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_14b
    return v3

    nop

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    if-ne v0, p0, :cond_43

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-static {v0}, Lcom/CameraLensesScan;->saveBL(Ljava/lang/String;)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_150
    const-string v2, ""

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_152
    invoke-static {v0}, Lcom/CameraLensesScan;->saveWL(Ljava/lang/String;)V

    goto/32 :goto_a1

    nop

    nop

    :goto_153
    const-string v1, "SM-G998U"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_154
    const-string v1, "SM-G981U1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_155
    const-string v2, "bGVuc19ibF9rZXk="

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    const/16 v0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_158
    if-ne v0, p0, :cond_44

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_159
    const/16 v0, 0x38

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_15a
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_15c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_15d
    const-string v2, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_15e
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    const/16 v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_160
    const-string v1, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_161
    if-eq v0, p0, :cond_45

    nop

    goto/32 :goto_123

    nop

    nop

    :cond_45
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_162
    const/4 v3, -0x1

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    const-string v1, "SM-G998B"

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_164
    const/16 v0, 0x7

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_165
    if-ne v0, p0, :cond_46

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    :cond_46
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_166
    const/16 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_167
    return v3

    nop

    :goto_168
    goto/32 :goto_c6

    nop

    nop
.end method

.method public static logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "TEST_and_ADD_"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    const-string v1, "]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, " [ID = "

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public static logTestLens(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, " [ID = "

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "]"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public static removeCameraLens(Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-gez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4}, Lcom/CameraLensesScan;->lensBlackList(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static saveBL(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const-string v0, "bGVuc19ibF9rZXk="

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public static saveWL(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const-string v0, "bGVuc193bF9rZXk="

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static scanCameraLens()V
    .locals 16

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v13, Lcom/CameraLensesScan;->sCameraLensFLoc:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    sget-object v13, Lcom/CameraLensesScan;->sCameraLensBLoc:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const-string v0, "TOGGLE_DISTRIBUTION_BACK_LENSES"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v13, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    const-string v0, "SORTS_LENSES"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v13}, Lcom/CameraLensesScan;->sortCameraLens(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    sput-object v13, Lcom/CameraLensesScan;->sCameraAllLens:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v4, Lcom/CameraLensesScan;->sCameraLensAll:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    const-string v0, "AFTER_BLACK_LIST_LENSES"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v13, Lcom/CameraLensesScan;->sCameraLens:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "FOUND_LENSES"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v13}, Lcom/CameraLensesScan;->toggleDistribution(Ljava/util/Map;)V

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-static {v13}, Lcom/CameraLensesScan;->CalcNameToggle(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Lcom/CameraLensesScan;->lensBlackList(I)I

    move-result v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "TOGGLE_DISTRIBUTION_FRONT_LENSES"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v2, 0xfa

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v4, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    :try_start_1
    invoke-static {v12, v1}, Lcom/CameraLensesScan;->testLens(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    move-object/from16 v10, v4

    nop

    nop

    nop

    invoke-virtual {v12, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    const-string v9, "OK"

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const-string v9, "FAILED"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2d

    nop

    :goto_28
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    move-object/from16 v10, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    check-cast v5, [I

    nop

    nop

    nop

    nop

    nop

    const-string v9, "OK"

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_29

    nop

    nop

    nop

    :cond_3
    const-string v9, "FAILED"

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    move-object/from16 v10, v6

    nop

    nop

    invoke-virtual {v12, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    check-cast v6, [F

    nop

    nop

    const-string v9, "OK"

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2a

    nop

    :cond_4
    const-string v9, "FAILED"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2d

    nop

    nop

    :goto_2a
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    move-object/from16 v10, v7

    nop

    nop

    nop

    invoke-virtual {v12, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    if-eqz v7, :cond_5

    nop

    nop

    nop

    check-cast v7, [F

    nop

    nop

    nop

    const-string v9, "OK"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :cond_5
    const-string v9, "FAILED"

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    move-object/from16 v10, v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    nop

    check-cast v8, Landroid/util/SizeF;

    nop

    nop

    nop

    nop

    const-string v9, "OK"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2c

    nop

    :cond_6
    const-string v9, "FAILED"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10, v9}, Lcom/CameraLensesScan;->logTestForMap(ILandroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/String;)V

    goto/16 :goto_2d

    nop

    :goto_2c
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-virtual {v12, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    check-cast v9, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    nop

    nop

    move-object/from16 v10, v2

    nop

    nop

    nop

    move-object/from16 v11, v0

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v3 .. v11}, Lcom/CameraLens;-><init>(I[I[F[FLandroid/util/SizeF;ZLjava/lang/String;Landroid/hardware/camera2/CameraManager;)V

    invoke-static {v1}, Lcom/CameraLensesScan;->lensBlackList(I)I

    move-result v9

    nop

    nop

    nop

    nop

    if-gtz v9, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v12

    nop

    invoke-interface/range {v12 .. v12}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_7

    nop

    nop

    nop

    invoke-interface {v13, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_8

    nop

    new-instance v12, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_7
    invoke-static {v13, v3, v12}, Lcom/CameraLensesScan;->addCameraLensLogical(Ljava/util/Map;Lcom/CameraLens;Ljava/util/Set;)V

    const-string v4, "LOGICAL_LENS"

    nop

    nop

    nop

    const-string v5, "REMOVED"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v1, v5}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    const-string v10, "ALL_TEST"

    nop

    nop

    nop

    nop

    nop

    const-string v11, "PASSED"

    nop

    nop

    nop

    invoke-static {v10, v1, v11}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_9
    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    :goto_2f
    invoke-static {v13}, Lcom/CameraLensesScan;->removeCameraLens(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    sput-object v4, Lcom/CameraLensesScan;->sCameraLensAll:Ljava/util/List;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v13, v0}, Lcom/CameraLensesScan;->LogMapLens(Ljava/util/Map;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lcom/CameraLensesScan;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "AFTER_HIDING_LENSES"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sortCameraLens(Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, v5, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_41

    nop

    nop

    :goto_4
    goto/16 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    new-instance v4, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3c

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    :goto_a
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    check-cast v5, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_12
    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_14
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_31

    nop

    :goto_18
    iget p0, v5, Lcom/CameraLens;->lens_facing:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_23

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    check-cast v5, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, v5, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_29
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    iget-object p0, v5, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    new-instance v3, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_32

    nop

    nop

    :goto_30
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v5, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v5, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1

    nop

    nop

    :goto_3a
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_30

    nop

    nop

    :goto_3b
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    iget-object p0, v5, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_40
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v5, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public static testLens(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, p1, v4}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    const-string v2, "OK because = "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    :goto_4
    invoke-static {v3, p1, v4}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    const-string v3, "TEST_getBit"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-le v1, v2, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2d

    nop

    nop

    :goto_e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    invoke-static {v3, p1, v4}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, p1}, Lcom/CameraLensesScan;->getBit(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const-string v4, "FAILED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-static {v3, p1, v4}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
    const/16 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    return v0

    nop

    :catchall_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "TEST_colorFilterArrangement"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v3, p1, v4}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "OK because = crash"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    const-string v4, "OK"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    const-string v2, "FAILED because = "

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public static testRawSupportFormatLens(Ljava/lang/String;)Z
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcom/CameraLensesScan;->sCameraManager:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    const-string v2, "cHJlZl9jYW1lcmFfcmVzb2x1dGlvbg=="

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    goto/32 :goto_12

    nop

    :cond_1
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    :goto_d
    const-string v1, "max"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :catchall_0
    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :catchall_1
    :cond_3
    :try_start_1
    const/16 v2, 0x25

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1e

    nop

    nop

    :catchall_2
    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    :catchall_3
    :cond_5
    :try_start_2
    const/16 v2, 0x26

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    nop

    :goto_1e
    :try_start_3
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static toggleDistribution(Ljava/util/Map;)V
    .locals 9

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v7, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v5, v4, Lcom/CameraLens;->lens_facing:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v5, v4, Lcom/CameraLens;->toggle:Lcom/CameraLensToggles;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {v4, v5, v6}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_7
    array-length v6, v5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-static {v5}, Lcom/CameraLensesScan;->testRawSupportFormatLens(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_a
    const-string v6, "1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v5, v4, Lcom/CameraLens;->toggle:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    if-lt v8, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v5}, Lcom/CameraLensesScan;->testRawSupportFormatLens(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_11
    const/4 v7, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    aget-object v5, v5, v8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v6, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lcom/CameraLensToggles;->values()[Lcom/CameraLensToggles;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Lcom/CameraLensToggles;->values()[Lcom/CameraLensToggles;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_18
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v4, "LENS_NOT_SUPPORT_RAW"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v5, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v6, "REMOVED"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_22
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sput-object v0, Lcom/CameraLensesScan;->sCameraLensBLoc:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_24
    sput v6, Lcom/a;->ae:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    iget-object v5, v4, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v4, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2d
    invoke-static {v4, v5, v6}, Lcom/CameraLensesScan;->logTestLens(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v5, v4, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v6, "REMOVED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_18

    nop

    nop

    :goto_33
    goto/32 :goto_23

    nop

    nop

    :goto_34
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_18

    nop

    nop

    :goto_37
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    :goto_39
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sput-object v1, Lcom/CameraLensesScan;->sCameraLensFLoc:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v6, :cond_7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    :goto_3e
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_41
    array-length v6, v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_42
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_43
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_45
    const-string v4, "LENS_NOT_SUPPORT_RAW"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_46
    if-nez v3, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop
.end method
