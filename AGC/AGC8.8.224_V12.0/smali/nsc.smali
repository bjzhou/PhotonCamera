.class public final Lnsc;
.super Ljava/lang/Object;
.source "MetadataConverter.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lkog;


# instance fields
.field private final c:Lkli;

.field private final d:Lklj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnsc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnsc;->a:Ljava/lang/String;

    invoke-static {}, Lkog;->a()Lkog;

    move-result-object v0

    sput-object v0, Lnsc;->b:Lkog;

    return-void
.end method

.method public constructor <init>(Lkli;Lklj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LAGC;->setShotMaxISO(Lkli;)V

    iput-object p1, p0, Lnsc;->c:Lkli;

    iput-object p2, p0, Lnsc;->d:Lklj;

    invoke-static {}, Lkoe;->a()Lkoe;

    const/4 p1, 0x1

    const-string p2, "Android Q or higher required."

    invoke-static {p1, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    return-void
.end method

.method public static A([F)Lcom/google/googlex/gcam/FloatVector;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v0}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    iget-wide v1, v0, Lcom/google/googlex/gcam/FloatVector;->a:J

    invoke-static {p0, v1, v2}, Lcom/google/googlex/gcam/BufferUtils;->setFloatVectorImpl([FJ)V

    return-object v0
.end method

.method private static B(Lkli;Lkou;)Lnrg;
    .locals 7
    .param p0, "cameraDeviceCharacteristics"    # Lkli;
    .param p1, "totalCaptureResultProxy"    # Lkou;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, LAGC;->getGcamSensorId(Lkli;Lkou;)Lnrg;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lkli;->k()Lklv;

    move-result-object v0

    invoke-interface {p0}, Lkli;->M()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lkli;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v4}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    sget-object p0, Lklv;->b:Lklv;

    if-ne v0, p0, :cond_3

    sget-object p0, Lnrg;->j:Lnrg;

    goto :goto_2

    :cond_3
    sget-object p0, Lnrg;->m:Lnrg;

    :goto_2
    return-object p0

    :cond_4
    invoke-interface {p0}, Lkli;->t()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v5}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v5, Lklv;->b:Lklv;

    const/high16 v6, 0x40900000    # 4.5f

    if-ne v0, v5, :cond_10

    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    sget-object p0, Lnrg;->j:Lnrg;

    return-object p0

    :cond_8
    :goto_4
    const/high16 p0, 0x41200000    # 10.0f

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_b

    invoke-static {p1}, Lnsc;->H(Lkoq;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lnrg;->f:Lnrg;

    return-object p0

    :cond_9
    invoke-static {}, Lnsc;->G()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    cmpg-float p0, p0, v6

    if-gez p0, :cond_a

    sget-object p0, Lnrg;->g:Lnrg;

    return-object p0

    :cond_a
    sget-object p0, Lnrg;->e:Lnrg;

    return-object p0

    :cond_b
    const/high16 v0, 0x40600000    # 3.5f

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_d

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float p0, v1, p0

    if-gez p0, :cond_d

    invoke-static {}, Lnsc;->G()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    const/high16 p1, 0x40c00000    # 6.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_c

    sget-object p0, Lnrg;->d:Lnrg;

    return-object p0

    :cond_c
    sget-object p0, Lnrg;->b:Lnrg;

    return-object p0

    :cond_d
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_f

    invoke-static {p1}, Lnsc;->H(Lkoq;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lnrg;->i:Lnrg;

    return-object p0

    :cond_e
    sget-object p0, Lnrg;->h:Lnrg;

    return-object p0

    :cond_f
    sget-object p0, Lnrg;->b:Lnrg;

    return-object p0

    :cond_10
    if-eqz v1, :cond_12

    if-eqz v2, :cond_11

    goto :goto_5

    :cond_11
    sget-object p0, Lnrg;->m:Lnrg;

    return-object p0

    :cond_12
    :goto_5
    if-eqz v2, :cond_17

    sget-object p1, Lnsc;->b:Lkog;

    invoke-virtual {p1}, Lkog;->isPixel2018()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x40066666    # 2.1f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    :cond_13
    iget-boolean v0, p1, Lkog;->a:Z

    if-eqz v0, :cond_14

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    :cond_14
    iget-boolean v0, p1, Lkog;->h:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lkog;->b()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lkog;->k()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_15
    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_16

    goto :goto_6

    :cond_16
    sget-object p0, Lnrg;->l:Lnrg;

    return-object p0

    :cond_17
    :goto_6
    if-eqz v4, :cond_18

    sget-object p0, Lnrg;->n:Lnrg;

    return-object p0

    :cond_18
    sget-object p1, Lnsc;->b:Lkog;

    iget-boolean v0, p1, Lkog;->o:Z

    if-eqz v0, :cond_19

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    const v1, 0x40866666    # 4.2f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1a

    :cond_19
    iget-boolean p1, p1, Lkog;->i:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1b

    :cond_1a
    sget-object p0, Lnrg;->o:Lnrg;

    return-object p0

    :cond_1b
    sget-object p0, Lnrg;->k:Lnrg;

    return-object p0
.end method

.method private static C(Lkli;Lklj;Lkou;Lkll;)Lnrg;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lnsc;->y(Lkli;Lklj;Lkou;Lkll;)Lkli;

    move-result-object p0

    :cond_0
    invoke-static {p0, p2}, Lnsc;->B(Lkli;Lkou;)Lnrg;

    move-result-object p0

    return-object p0
.end method

.method private static D(Lkoq;)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static E([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V
    .locals 10

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v9, Lcom/google/googlex/gcam/WeightedPixelRect;

    invoke-direct {v9}, Lcom/google/googlex/gcam/WeightedPixelRect;-><init>()V

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-wide v4, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    invoke-static {v4, v5, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRect_rect_get(JLcom/google/googlex/gcam/WeightedPixelRect;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v6, v4, v5, v0}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    move-object v4, v6

    :goto_1
    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v2

    int-to-float v2, v2

    iget-wide v3, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    invoke-static {v3, v4, v9, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRect_weight_set(JLcom/google/googlex/gcam/WeightedPixelRect;F)V

    iget-wide v4, p2, Lcom/google/googlex/gcam/WeightedPixelRectVector;->a:J

    iget-wide v7, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRectVector_add(JLcom/google/googlex/gcam/WeightedPixelRectVector;JLcom/google/googlex/gcam/WeightedPixelRect;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static F(Lkli;Lkoq;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    sget-object v3, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v3, :cond_1

    sget-object v3, Liuw;->n:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v3, :cond_0

    sget-object v3, Liuw;->o:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v3, :cond_0

    sget-object v3, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    sget-object v5, Liuw;->n:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-object v6, Liuw;->o:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v6}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    sget-object v7, Liuw;->q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v7}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v8, p0

    invoke-interface {v8, v7}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    array-length v12, v2

    mul-int/lit8 v13, v12, 0x3

    array-length v14, v0

    if-ne v14, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    sget-object v13, Lnsc;->a:Ljava/lang/String;

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v11

    const-string v12, "Expect 3 face pose angles for each face. Only got %d angles for %d faces in total."

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_1
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    array-length v15, v2

    if-ge v13, v15, :cond_f

    aget-object v16, v2, v13

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v17

    int-to-float v4, v8

    div-float v9, v17, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v17

    int-to-float v11, v7

    move-object/from16 v18, v2

    div-float v2, v17, v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v20, v10

    add-int v10, v17, v19

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v17

    move/from16 v19, v7

    add-int/lit8 v7, v17, -0x1

    int-to-float v10, v10

    int-to-float v7, v7

    const/16 v17, 0x0

    move/from16 v21, v8

    cmpg-float v22, v9, v17

    if-ltz v22, :cond_e

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v23, v9, v22

    if-gtz v23, :cond_e

    cmpg-float v23, v2, v17

    if-ltz v23, :cond_e

    cmpl-float v23, v2, v22

    if-gtz v23, :cond_e

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v10, v10, v23

    div-float/2addr v10, v1

    cmpg-float v1, v10, v17

    if-ltz v1, :cond_e

    cmpl-float v1, v10, v22

    if-gtz v1, :cond_e

    const/high16 v1, 0x42c60000    # 99.0f

    div-float/2addr v7, v1

    cmpg-float v1, v7, v17

    if-ltz v1, :cond_e

    cmpl-float v1, v7, v22

    if-lez v1, :cond_5

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_5
    new-instance v1, Lcom/google/googlex/gcam/FaceInfo;

    move/from16 v17, v9

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FaceInfo__SWIG_0()J

    move-result-wide v8

    move/from16 v23, v11

    const/4 v11, 0x1

    invoke-direct {v1, v8, v9, v11}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    move/from16 v8, v17

    invoke-virtual {v1, v8}, Lcom/google/googlex/gcam/FaceInfo;->c(F)V

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/FaceInfo;->d(F)V

    invoke-virtual {v1, v10}, Lcom/google/googlex/gcam/FaceInfo;->e(F)V

    iget-wide v8, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v8, v9, v1, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_confidence_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v2

    iget-wide v7, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v7, v8, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_id_set(JLcom/google/googlex/gcam/FaceInfo;I)V

    if-lez v15, :cond_9

    if-eqz v3, :cond_9

    array-length v2, v3

    if-ne v2, v15, :cond_9

    if-eqz v12, :cond_6

    mul-int/lit8 v2, v13, 0x3

    aget v7, v0, v2

    iget-wide v8, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v8, v9, v1, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_tilt_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    add-int/lit8 v7, v2, 0x1

    aget v7, v0, v7

    iget-wide v8, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v8, v9, v1, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_pan_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    const/4 v7, 0x2

    add-int/2addr v2, v7

    aget v2, v0, v2

    iget-wide v7, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v7, v8, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_roll_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    const/4 v2, 0x0

    :goto_4
    aget v7, v3, v13

    if-ge v2, v7, :cond_7

    new-instance v7, Lcom/google/googlex/gcam/FaceInfo$Landmark;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FaceInfo$Landmark;-><init>()V

    add-int v8, v14, v2

    add-int v9, v8, v8

    aget v10, v6, v9

    div-float/2addr v10, v4

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->b(F)V

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget v9, v6, v9

    div-float v9, v9, v23

    invoke-virtual {v7, v9}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->c(F)V

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FaceInfo;->a()Lcom/google/googlex/gcam/LandmarkMap;

    move-result-object v9

    aget-byte v8, v5, v8

    invoke-virtual {v9, v8, v7}, Lcom/google/googlex/gcam/LandmarkMap;->b(ILcom/google/googlex/gcam/FaceInfo$Landmark;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v14, v7

    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    const/16 v2, 0x2e

    const/4 v7, 0x2

    const/4 v8, 0x1

    filled-new-array {v8, v7, v2}, [I

    move-result-object v2

    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x3

    if-ge v7, v8, :cond_c

    aget v8, v2, v7

    sget-object v9, Lklv;->a:Lklv;

    add-int/lit8 v9, v8, -0x1

    if-eqz v8, :cond_b

    sparse-switch v9, :sswitch_data_0

    const/4 v8, 0x0

    goto :goto_6

    :sswitch_0
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v8

    goto :goto_6

    :sswitch_1
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v8

    goto :goto_6

    :sswitch_2
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v8

    :goto_6
    if-eqz v8, :cond_a

    new-instance v10, Lcom/google/googlex/gcam/FaceInfo$Landmark;

    invoke-direct {v10}, Lcom/google/googlex/gcam/FaceInfo$Landmark;-><init>()V

    iget v11, v8, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->b(F)V

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float v8, v8, v23

    invoke-virtual {v10, v8}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->c(F)V

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FaceInfo;->a()Lcom/google/googlex/gcam/LandmarkMap;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lcom/google/googlex/gcam/LandmarkMap;->b(ILcom/google/googlex/gcam/FaceInfo$Landmark;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    throw v2

    :cond_c
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v4, p2

    if-eqz v4, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-wide v8, v1, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v8, v9, v1, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_familiarity_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    :cond_d
    move-object/from16 v7, p3

    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/FaceInfoVector;->b(Lcom/google/googlex/gcam/FaceInfo;)V

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x2

    goto :goto_9

    :cond_e
    move-object/from16 v4, p2

    move-object/from16 v7, p3

    const/4 v2, 0x0

    :goto_8
    sget-object v1, Lnsc;->a:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v9, v20

    iget v10, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    iget v10, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v8, v15

    iget v10, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v17, 0x2

    aput-object v10, v8, v17

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const-string v9, "Face data is bad: (%d, %d) - (%d, %d), score %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object v1, v4

    move-object/from16 v2, v18

    move/from16 v7, v19

    move/from16 v8, v21

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method private static G()Z
    .locals 2

    sget-object v0, Lnsc;->b:Lkog;

    invoke-virtual {v0}, Lkog;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lkog;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lkog;->n:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lkog;->o:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lkog;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static H(Lkoq;)Z
    .locals 2

    sget-object v0, Lnsc;->b:Lkog;

    invoke-virtual {v0}, Lkog;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lkog;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkog;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkog;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lkog;->n:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lkog;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkog;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lnsc;->D(Lkoq;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static I(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lnsc;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Error retrieving "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static J(Lkli;Lkou;)[F
    .locals 11

    sget-object v0, Liuy;->s:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuy;->s:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    :goto_1
    invoke-static {p0}, Lnsc;->r(Lkli;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p0}, Lnsc;->w(Lkli;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_2

    div-float v4, v2, v0

    div-float v5, p1, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    :cond_2
    div-float v4, p1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x2

    cmpg-float v3, v4, v3

    if-gez v3, :cond_3

    invoke-interface {p0}, Lkli;->i()Lkll;

    move-result-object v3

    invoke-interface {p0}, Lkli;->B()Ljava/util/Set;

    move-result-object p0

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    aput-object p0, v9, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v9, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v9, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v9, p1

    const-string p0, "Analog gain is < 1.0f for camera ID %s (physical IDs: %s). sensitivity: %f (min: %f, max analog: %f)"

    invoke-static {v8, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lnsc;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :cond_3
    new-array p0, v7, [F

    aput v4, p0, v1

    aput v5, p0, v6

    invoke-static {p0}, LMetadataConverterUtil;->getAnalogAndDigitalGain([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static c(Lkli;)J
    .locals 2

    invoke-static {p0}, Lnsc;->g(Lkli;)Lkmf;

    move-result-object v0

    iget v1, v0, Lkmf;->a:I

    iget-object v0, v0, Lkmf;->b:Lkaf;

    invoke-interface {p0, v1, v0}, Lkli;->g(ILkaf;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Lkli;)Lkmf;
    .locals 6
    .param p0, "cameraDeviceCharacteristics"    # Lkli;

    invoke-static {p0}, LMetadataConverterUtil;->getGcamRawFormat(Lkli;)Lkmf;

    move-result-object v0

    return-object v0

    const/16 v0, 0x25

    invoke-interface {p0, v0}, Lkli;->x(I)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x26

    invoke-interface {p0, v2}, Lkli;->x(I)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {p0, v4}, Lkli;->x(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance p0, Lkmf;

    invoke-static {v1}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkmf;-><init>(ILkaf;)V

    return-object p0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lkmf;

    invoke-static {v3}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lkmf;-><init>(ILkaf;)V

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lkmf;

    invoke-static {p0}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Lkmf;-><init>(ILkaf;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No HDR+ compatible raw format supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lkou;Ljava/lang/String;)Lkou;
    .locals 2

    invoke-interface {p0}, Lkou;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoq;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lnsc;->a:Ljava/lang/String;

    const-string v1, "Physical metadata is null for images from camera "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    new-instance p0, Lkot;

    invoke-direct {p0, v0}, Lkot;-><init>(Lkoq;)V

    :cond_1
    return-object p0
.end method

.method public static i(Lkou;Lkli;)Lcom/google/googlex/gcam/AwbInfo;
    .locals 11

    sget-object v0, Lnsc;->b:Lkog;

    iget-boolean v1, v0, Lkog;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkog;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lkog;->f:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkli;->i()Lkll;

    move-result-object v0

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lnsc;->h(Lkou;Ljava/lang/String;)Lkou;

    move-result-object p0

    :cond_0
    invoke-static {p0, p1}, LMetadataConverterUtil;->getAwbInfoCaptured(Lkou;Lkli;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/graphics/Rect;Lkoq;)Lcom/google/googlex/gcam/MeshWarp;
    .locals 13

    new-instance v6, Lcom/google/googlex/gcam/MeshWarp;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_MeshWarp()J

    move-result-wide v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v1, v7}, Lcom/google/googlex/gcam/MeshWarp;-><init>(JZ)V

    sget-object v0, Liux;->h:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_2

    sget-object v0, Liux;->f:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_2

    sget-object v0, Liux;->g:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_2

    sget-object v0, Liux;->i:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Liux;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Liux;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sget-object v1, Liux;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [I

    sget-object v1, Liux;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    array-length v1, v8

    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    if-eqz v9, :cond_2

    array-length v1, v9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v11, 0x0

    aget v1, v8, v11

    aget v2, v8, v7

    mul-int v1, v1, v2

    array-length v2, v0

    add-int/2addr v1, v1

    const/4 v12, 0x3

    if-ne v2, v1, :cond_1

    invoke-static {v0}, Lnsc;->A([F)Lcom/google/googlex/gcam/FloatVector;

    move-result-object v5

    iget-wide v0, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    iget-wide v3, v5, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_mesh_warp_data_set(JLcom/google/googlex/gcam/MeshWarp;JLcom/google/googlex/gcam/FloatVector;)V

    aget v0, v8, v11

    iget-wide v1, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_grid_cols_set(JLcom/google/googlex/gcam/MeshWarp;I)V

    aget v0, v8, v7

    iget-wide v1, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_grid_rows_set(JLcom/google/googlex/gcam/MeshWarp;I)V

    new-instance v5, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v5}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    aget v0, v9, v11

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    aget v0, v9, v7

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    aget v0, v9, v11

    aget v1, v9, v10

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    aget v0, v9, v7

    aget v1, v9, v12

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget-wide v0, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    iget-wide v3, v5, Lcom/google/googlex/gcam/PixelRect;->a:J

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_mesh_warp_crop_region_set(JLcom/google/googlex/gcam/MeshWarp;JLcom/google/googlex/gcam/PixelRect;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    const-string v1, "Invalid physical scaler crop region: %s"

    invoke-static {v0, v1, p0}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v5}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, p0}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget-wide v0, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    iget-wide v3, v5, Lcom/google/googlex/gcam/PixelRect;->a:J

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_mesh_warp_dst_region_set(JLcom/google/googlex/gcam/MeshWarp;JLcom/google/googlex/gcam/PixelRect;)V

    sget-object p0, Liva;->i:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz p0, :cond_2

    sget-object p0, Liva;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Liva;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-wide v0, v6, Lcom/google/googlex/gcam/MeshWarp;->a:J

    invoke-static {v0, v1, v6, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_is_forward_mesh_set(JLcom/google/googlex/gcam/MeshWarp;Z)V

    goto :goto_0

    :cond_1
    sget-object p0, Lnsc;->a:Ljava/lang/String;

    new-array p1, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v11

    aget v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    aget v0, v8, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v10

    const-string v0, "Mesh data length (%d) and grid dimension (%dx%dx2) mismatch."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v6
.end method

.method public static m(Lkli;)Lnrg;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnsc;->B(Lkli;Lkou;)Lnrg;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lkli;Lkoq;Lcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnsc;->F(Lkli;Lkoq;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V

    return-void
.end method

.method public static r(Lkli;)[F
    .locals 3

    sget-object v0, Liuz;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuz;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static s(I)[I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    filled-new-array {v3, v2, v1, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_0
    filled-new-array {v3, v1, v2, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_1
    filled-new-array {v3, v2, v1, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 19
    .param p0, "cameraDeviceCharacteristics"    # Lkli;

    move-object/from16 v1, p0

    invoke-static {v1}, LMetadataConverterUtil;->convertToGcamStaticMetadata(Lkli;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v8

    return-object v8

    new-instance v8, Lcom/google/googlex/gcam/StaticMetadata;

    invoke-direct {v8}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Google"

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_make_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_model_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/agc/LensSettings;->getHdrModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v0, Lkoh;->a:Lkgd;

    const-string v2, "ro.revision"

    invoke-virtual {v0, v2}, Lkgd;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_hardware_revision_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    const-string v4, "HDR+ "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_software_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    sget-wide v2, Landroid/os/Build;->TIME:J

    iget-wide v4, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v4, v5, v8, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_unix_ms_set(JLcom/google/googlex/gcam/StaticMetadata;J)V

    invoke-static/range {p0 .. p0}, Lnsc;->m(Lkli;)Lnrg;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/googlex/gcam/StaticMetadata;->g(Lnrg;)V

    invoke-interface/range {p0 .. p0}, Lkli;->I()Z

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_flash_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    invoke-interface/range {p0 .. p0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v2, Lnqr;->a:Lnqr;

    sget-object v3, Lklv;->a:Lklv;

    invoke-virtual {v0}, Lklv;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lnqr;->d:Lnqr;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lnqr;->c:Lnqr;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lnqr;->b:Lnqr;

    :goto_0
    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget v0, v2, Lnqr;->f:I

    invoke-static {v3, v4, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_lens_facing_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-interface/range {p0 .. p0}, Lkli;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    const-string v3, "Cameras must have at least one focal length."

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v7, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    goto :goto_1

    :cond_1
    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_focal_lengths_mm_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v2, v0

    const/4 v10, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "Cameras must have at least one f-number (aperture size)."

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {v0}, Lnsc;->A([F)Lcom/google/googlex/gcam/FloatVector;

    move-result-object v7

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_f_numbers_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/agc/LensSettings;->getWhiteLevel(I)I

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_white_level_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    new-instance v7, Lcom/google/googlex/gcam/PixelRectVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    const/4 v2, 0x0

    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    new-instance v4, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v4}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/PixelRectVector;->a(Lcom/google/googlex/gcam/PixelRect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_optically_black_regions_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRectVector;)V

    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/agc/LensSettings;->getSensorInfoColorFilter(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sget-object v2, Lnsc;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToBayerPattern: unsupported color filter arrangement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", returning kInvalid."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnqf;->a:Lnqf;

    goto :goto_4

    :pswitch_3
    sget-object v0, Lnqf;->c:Lnqf;

    goto :goto_4

    :pswitch_4
    sget-object v0, Lnqf;->e:Lnqf;

    goto :goto_4

    :pswitch_5
    sget-object v0, Lnqf;->d:Lnqf;

    goto :goto_4

    :pswitch_6
    sget-object v0, Lnqf;->b:Lnqf;

    :goto_4
    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget v0, v0, Lnqf;->f:I

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_bayer_pattern_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    const/4 v0, 0x2

    new-array v2, v0, [J

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v10

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v9

    new-array v0, v0, [F

    aget-wide v5, v2, v10

    invoke-static {v5, v6}, Lnsc;->x(J)F

    move-result v2

    aput v2, v0, v10

    invoke-static {v3, v4}, Lnsc;->x(J)F

    move-result v2

    aput v2, v0, v9

    invoke-interface/range {p0 .. p0}, Lkli;->k()Lklv;

    move-result-object v2

    sget-object v3, Lklv;->b:Lklv;

    const/4 v11, 0x0

    if-eq v2, v3, :cond_5

    move-object v2, v11

    goto :goto_7

    :cond_5
    sget-object v2, Lnsc;->b:Lkog;

    iget-boolean v3, v2, Lkog;->c:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lkog;->h()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lkog;->f:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lkog;->i()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lkog;->j:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lkog;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lkog;->n:Z

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lkog;->o:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lkog;->k()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    invoke-static/range {p0 .. p0}, Lnsc;->m(Lkli;)Lnrg;

    move-result-object v2

    sget-object v3, Lnrg;->b:Lnrg;

    if-eq v2, v3, :cond_a

    sget-object v3, Lnrg;->d:Lnrg;

    if-ne v2, v3, :cond_7

    goto :goto_6

    :cond_7
    sget-object v3, Lnrg;->e:Lnrg;

    if-eq v2, v3, :cond_9

    sget-object v3, Lnrg;->g:Lnrg;

    if-eq v2, v3, :cond_9

    sget-object v3, Lnrg;->j:Lnrg;

    if-eq v2, v3, :cond_9

    sget-object v3, Lnrg;->h:Lnrg;

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v11

    goto :goto_7

    :cond_9
    :goto_5
    const v2, 0x46bb8000    # 24000.0f

    invoke-static {v2}, Lcom/agc/LensSettings;->getExpastro(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_7

    :cond_a
    :goto_6
    const/high16 v2, 0x46fa0000    # 32000.0f

    invoke-static {v2}, Lcom/agc/LensSettings;->getExpastro(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget v3, v0, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v9

    :cond_b
    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_exposure_time_range_ms_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    invoke-static/range {p0 .. p0}, Lnsc;->r(Lkli;)[F

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lnsc;->w(Lkli;)F

    move-result v2

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_iso_range_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_max_analog_iso_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    new-instance v7, Lcom/google/googlex/gcam/DngColorCalibrationVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/DngColorCalibrationVector;-><init>()V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnqj;->a(I)Lnqj;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lnqj;)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_c
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_d

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v2}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v2}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v3}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v3}, Lnsc;->z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lnqj;->a(I)Lnqj;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lnqj;)V

    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :cond_d
    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a:J

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dng_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/DngColorCalibrationVector;)V

    invoke-static {v4}, LAwb;->getQcColorCalibration(Lcom/google/googlex/gcam/StaticMetadata;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_width_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_sensor_physical_height_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    new-instance v7, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v7}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    iget-wide v5, v7, Lcom/google/googlex/gcam/PixelRect;->a:J

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_active_area_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRect;)V

    invoke-static/range {p0 .. p0}, Lnsc;->g(Lkli;)Lkmf;

    move-result-object v0

    iget-object v2, v0, Lkmf;->b:Lkaf;

    iget v2, v2, Lkaf;->a:I

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_raw_max_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    iget-object v2, v0, Lkmf;->b:Lkaf;

    iget v2, v2, Lkaf;->b:I

    invoke-virtual {v8, v2}, Lcom/google/googlex/gcam/StaticMetadata;->f(I)V

    iget v0, v0, Lkmf;->a:I

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_raw_bits_per_pixel_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    invoke-static/range {p0 .. p0}, Lnsc;->c(Lkli;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnsc;->x(J)F

    move-result v0

    iget-wide v2, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v2, v3, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_frame_readout_time_ms_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v2, v0

    :goto_8
    if-ge v10, v2, :cond_f

    aget v3, v0, v10

    if-ne v3, v9, :cond_e

    iget-wide v3, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v3, v4, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_ois_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    sget-object v0, Liva;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_10

    sget-object v0, Liva;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_9

    :cond_10
    move-object v0, v11

    :goto_9
    if-eqz v0, :cond_12

    iget-wide v1, v8, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    invoke-static {v1, v2, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dark_shading_data_get(JLcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_11

    move-object v14, v11

    goto :goto_a

    :cond_11
    new-instance v11, Lcom/google/googlex/gcam/DarkShadingData;

    invoke-direct {v11, v1, v2}, Lcom/google/googlex/gcam/DarkShadingData;-><init>(J)V

    move-object v14, v11

    :goto_a
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v2

    new-instance v0, Lnrf;

    invoke-direct {v0, v2, v3}, Lnrf;-><init>(J)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    iget-wide v12, v14, Lcom/google/googlex/gcam/DarkShadingData;->a:J

    invoke-static {v0}, Lnrf;->a(Lnrf;)J

    move-result-wide v15

    move-wide/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lcom/google/googlex/gcam/GcamModuleJNI;->DarkShadingData_SetDarkShadingDataFromBytes(JLcom/google/googlex/gcam/DarkShadingData;JJ)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lnsc;->a:Ljava/lang/String;

    const-string v1, "2D BLC data size does not meet expected length or it is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static v(Lkoq;)F
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnsc;->x(J)F

    move-result p0

    return p0
.end method

.method public static w(Lkli;)F
    .locals 1

    sget-object v0, Liuz;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuz;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static x(J)F
    .locals 0

    long-to-float p0, p0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private static y(Lkli;Lklj;Lkou;Lkll;)Lkli;
    .locals 5
    .param p0, "cameraDeviceCharacteristics"    # Lkli;
    .param p1, "cameraHardwareManager"    # Lklj;
    .param p2, "totalCaptureResultProxy"    # Lkou;
    .param p3, "CameraId"    # Lkll;

    invoke-static {p0, p1, p2, p3}, LMetadataConverterUtil;->getPhysicalCharacteristics(Lkli;Lklj;Lkou;Lkll;)Lkli;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    new-instance p0, Lcom/google/googlex/gcam/FloatArray9;

    invoke-direct {p0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(I)F
    .locals 3

    invoke-static {p1}, Lcom/agc/LensSettings;->getExpcomp(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lnsc;->c:Lkli;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    mul-int p1, p1, v2

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-direct {v1, p1, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result p1

    return p1
.end method

.method public final b(Lkou;)F
    .locals 2

    invoke-virtual {p0, p1}, Lnsc;->q(Lkou;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float v0, v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    mul-float v0, v0, p1

    return v0
.end method

.method public final d(Lkou;)J
    .locals 2

    invoke-virtual {p0, p1}, Lnsc;->e(Lkou;)Lkli;

    move-result-object p1

    invoke-static {p1}, Lnsc;->c(Lkli;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lkou;)Lkli;
    .locals 3

    iget-object v0, p0, Lnsc;->c:Lkli;

    iget-object v1, p0, Lnsc;->d:Lklj;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lnsc;->y(Lkli;Lklj;Lkou;Lkll;)Lkli;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lkou;Lkll;)Lkli;
    .locals 2

    iget-object v0, p0, Lnsc;->c:Lkli;

    iget-object v1, p0, Lnsc;->d:Lklj;

    invoke-static {v0, v1, p1, p2}, Lnsc;->y(Lkli;Lklj;Lkou;Lkll;)Lkli;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v3, p4

    new-instance v15, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v15}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    :try_start_0
    const-string v4, "characteristics"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_20

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lnsc;->f(Lkou;Lkll;)Lkli;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1f

    if-nez v3, :cond_0

    :try_start_2
    invoke-interface {v6}, Lkli;->i()Lkll;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_0
    move-object v13, v15

    goto/16 :goto_31

    :cond_0
    move-object v7, v3

    :goto_1
    :try_start_3
    iget-object v3, v7, Lkll;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lnsc;->h(Lkou;Ljava/lang/String;)Lkou;

    move-result-object v3

    const-string v4, "physical2fm"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1f

    :try_start_4
    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v5

    move-object/from16 v9, p3

    invoke-static {v6, v3, v9, v5}, Lnsc;->F(Lkli;Lkoq;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V

    sget-object v5, Liuy;->f:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1e

    if-eqz v5, :cond_1

    :try_start_5
    sget-object v5, Liuy;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v11, v12, v15, v9, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_timestamp_faces_ns_set(JLcom/google/googlex/gcam/FrameMetadata;J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    :try_start_6
    sget-object v5, Liva;->e:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1e

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    if-eqz v5, :cond_6

    :try_start_7
    sget-object v5, Liva;->e:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_5

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v9

    const-wide/16 v19, 0x4

    mul-long v9, v9, v19

    array-length v11, v5

    int-to-long v12, v11

    cmp-long v19, v9, v12

    if-nez v19, :cond_4

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v9}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-wide v11, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v11, v12, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_skin_area_faces_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v11

    cmp-long v13, v11, v17

    if-nez v13, :cond_2

    move-object/from16 v13, v16

    goto :goto_2

    :cond_2
    new-instance v13, Lcom/google/googlex/gcam/FaceInfoVector;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v12, v14}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>(JZ)V

    :goto_2
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v20

    move-object/from16 v22, v7

    int-to-long v7, v11

    cmp-long v12, v7, v20

    if-gez v12, :cond_3

    mul-int/lit8 v7, v11, 0x4

    aget v8, v5, v7

    int-to-float v8, v8

    add-int/lit8 v12, v7, 0x1

    aget v12, v5, v12

    int-to-float v12, v12

    add-int/lit8 v14, v7, 0x2

    aget v14, v5, v14

    int-to-float v14, v14

    add-int/lit8 v7, v7, 0x3

    aget v7, v5, v7
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    int-to-float v7, v7

    add-float v20, v8, v14

    move-object/from16 v21, v4

    int-to-float v4, v10

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v20, v20, v23

    div-float v4, v20, v4

    add-float v20, v12, v7

    mul-float v20, v20, v23

    move-object/from16 v24, v5

    int-to-float v5, v9

    div-float v5, v20, v5

    sub-float/2addr v14, v8

    sub-float/2addr v7, v12

    add-float/2addr v14, v7

    mul-float v14, v14, v23

    :try_start_8
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v14, v7

    new-instance v7, Lcom/google/googlex/gcam/FaceInfo;

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v8

    new-instance v12, Lcom/google/googlex/gcam/FaceInfo;

    move/from16 v23, v9

    move/from16 v20, v10

    iget-wide v9, v8, Lcom/google/googlex/gcam/FaceInfoVector;->a:J

    invoke-static {v9, v10, v8, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfoVector_get(JLcom/google/googlex/gcam/FaceInfoVector;I)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v12, v8, v9, v10}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    iget-wide v8, v12, Lcom/google/googlex/gcam/FaceInfo;->a:J

    invoke-static {v8, v9, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FaceInfo__SWIG_1(JLcom/google/googlex/gcam/FaceInfo;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/FaceInfo;->c(F)V

    invoke-virtual {v7, v5}, Lcom/google/googlex/gcam/FaceInfo;->d(F)V

    invoke-virtual {v7, v14}, Lcom/google/googlex/gcam/FaceInfo;->e(F)V

    invoke-virtual {v13, v7}, Lcom/google/googlex/gcam/FaceInfoVector;->b(Lcom/google/googlex/gcam/FaceInfo;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p2

    move/from16 v10, v20

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    move/from16 v9, v23

    move-object/from16 v5, v24

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v21, v4

    const/4 v7, 0x2

    goto :goto_5

    :cond_4
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    sget-object v4, Lnsc;->a:Ljava/lang/String;

    const-string v5, "Inconsistent number of faces (%d) vs. skin area elements (%d)."

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :cond_5
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v7, 0x2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v21, v4

    :goto_4
    move-object v2, v0

    move-object v13, v15

    goto/16 :goto_2f

    :cond_6
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v7, 0x2

    :goto_5
    :try_start_9
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v8}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->d()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/gcam/AeMetadata;->a()Lcom/google/googlex/gcam/WeightedPixelRectVector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v4, v10, v9}, Lnsc;->E([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->f()Lcom/google/googlex/gcam/AwbMetadata;

    move-result-object v4

    iget-wide v9, v4, Lcom/google/googlex/gcam/AwbMetadata;->a:J

    invoke-static {v9, v10, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_metering_rectangles_get(JLcom/google/googlex/gcam/AwbMetadata;)J

    move-result-wide v9
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1c

    cmp-long v4, v9, v17

    if-nez v4, :cond_7

    move-object/from16 v4, v16

    goto :goto_6

    :cond_7
    :try_start_a
    new-instance v4, Lcom/google/googlex/gcam/WeightedPixelRectVector;

    invoke-direct {v4, v9, v10}, Lcom/google/googlex/gcam/WeightedPixelRectVector;-><init>(J)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1d

    :goto_6
    const/4 v9, 0x0

    :try_start_b
    invoke-static {v5, v9, v4}, Lnsc;->E([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v4

    iget-wide v9, v4, Lcom/google/googlex/gcam/AfMetadata;->a:J

    invoke-static {v9, v10, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->AfMetadata_metering_rectangles_get(JLcom/google/googlex/gcam/AfMetadata;)J

    move-result-wide v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1c

    cmp-long v9, v4, v17

    if-nez v9, :cond_8

    move-object/from16 v9, v16

    goto :goto_7

    :cond_8
    :try_start_c
    new-instance v9, Lcom/google/googlex/gcam/WeightedPixelRectVector;

    invoke-direct {v9, v4, v5}, Lcom/google/googlex/gcam/WeightedPixelRectVector;-><init>(J)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1d

    :goto_7
    const/4 v4, 0x1

    :try_start_d
    invoke-static {v8, v4, v9}, Lnsc;->E([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-static {v3}, Lnsc;->v(Lkoq;)F

    move-result v4

    iget-wide v8, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v8, v9, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    invoke-static {v6, v3}, Lnsc;->J(Lkli;Lkou;)[F

    move-result-object v4

    const/4 v5, 0x0

    aget v8, v4, v5

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v9, v10, v15, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    const/4 v8, 0x1

    aget v4, v4, v8

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v9, v10, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1c

    const/high16 v19, 0x42c80000    # 100.0f

    if-eqz v4, :cond_9

    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v9, v10, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    :cond_9
    :try_start_f
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1c

    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v9, v10, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_focal_length_mm_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    :cond_a
    :try_start_11
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1c

    if-eqz v4, :cond_b

    :try_start_12
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v9, v10, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_f_number_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_b
    :try_start_13
    const-string v20, "scaler"
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c

    :try_start_14
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lnsc;->l(Landroid/graphics/Rect;Lkoq;)Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v14

    iget-wide v9, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v12, v14, Lcom/google/googlex/gcam/MeshWarp;->a:J

    move-object v11, v15

    invoke-static/range {v9 .. v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_mesh_warp_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/MeshWarp;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1b

    const-string v9, " with value "

    const-string v10, "No enum "

    const/4 v11, 0x3

    if-eqz v3, :cond_15

    :try_start_15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5

    if-nez v3, :cond_c

    move-object v14, v6

    goto/16 :goto_d

    :cond_c
    :try_start_16
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lnqs;->d:[Lnqs;

    if-ge v3, v11, :cond_e

    if-ltz v3, :cond_e

    aget-object v4, v4, v3

    iget v12, v4, Lnqs;->e:I

    if-ne v12, v3, :cond_d

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    goto :goto_8

    :cond_e
    const/4 v13, 0x0

    :goto_8
    sget-object v4, Lnqs;->d:[Lnqs;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_4

    if-ge v13, v11, :cond_14

    :try_start_17
    aget-object v4, v4, v13

    iget v12, v4, Lnqs;->e:I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    if-ne v12, v3, :cond_13

    :goto_9
    :try_start_18
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v12, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v12}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/OisSample;

    if-eqz v3, :cond_12

    if-nez v12, :cond_f

    move-object v14, v6

    move-object/from16 v31, v9

    goto/16 :goto_c

    :cond_f
    new-instance v13, Lcom/google/googlex/gcam/OisMetadata;

    invoke-direct {v13}, Lcom/google/googlex/gcam/OisMetadata;-><init>()V

    move-object v14, v6

    iget-wide v5, v13, Lcom/google/googlex/gcam/OisMetadata;->a:J

    iget v4, v4, Lnqs;->e:I

    invoke-static {v5, v6, v13, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_lens_optical_stabilization_mode_set(JLcom/google/googlex/gcam/OisMetadata;I)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v13, Lcom/google/googlex/gcam/OisMetadata;->a:J

    invoke-static {v5, v6, v13, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_timestamp_ois_clock_ns_set(JLcom/google/googlex/gcam/OisMetadata;J)V

    iget-wide v3, v13, Lcom/google/googlex/gcam/OisMetadata;->a:J

    invoke-static {v3, v4, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_ois_positions_get(JLcom/google/googlex/gcam/OisMetadata;)J

    move-result-wide v3

    cmp-long v5, v3, v17

    if-nez v5, :cond_10

    move-object/from16 v5, v16

    goto :goto_a

    :cond_10
    new-instance v5, Lcom/google/googlex/gcam/OisPositionVector;

    invoke-direct {v5, v3, v4}, Lcom/google/googlex/gcam/OisPositionVector;-><init>(J)V

    :goto_a
    array-length v3, v12

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_11

    aget-object v6, v12, v4

    new-instance v7, Lcom/google/googlex/gcam/OisPosition;

    invoke-direct {v7}, Lcom/google/googlex/gcam/OisPosition;-><init>()V

    move-object/from16 v29, v12

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OisSample;->getTimestamp()J

    move-result-wide v11

    move-object/from16 v31, v9

    iget-wide v8, v7, Lcom/google/googlex/gcam/OisPosition;->a:J

    invoke-static {v8, v9, v7, v11, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPosition_timestamp_ns_set(JLcom/google/googlex/gcam/OisPosition;J)V

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OisSample;->getXshift()F

    move-result v8

    iget-wide v11, v7, Lcom/google/googlex/gcam/OisPosition;->a:J

    invoke-static {v11, v12, v7, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPosition_shift_pixel_x_set(JLcom/google/googlex/gcam/OisPosition;F)V

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OisSample;->getYshift()F

    move-result v6

    iget-wide v8, v7, Lcom/google/googlex/gcam/OisPosition;->a:J

    invoke-static {v8, v9, v7, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPosition_shift_pixel_y_set(JLcom/google/googlex/gcam/OisPosition;F)V

    iget-wide v8, v5, Lcom/google/googlex/gcam/OisPositionVector;->a:J

    iget-wide v11, v7, Lcom/google/googlex/gcam/OisPosition;->a:J

    move-wide/from16 v23, v8

    move-object/from16 v25, v5

    move-wide/from16 v26, v11

    move-object/from16 v28, v7

    invoke-static/range {v23 .. v28}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPositionVector_add(JLcom/google/googlex/gcam/OisPositionVector;JLcom/google/googlex/gcam/OisPosition;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v29

    move-object/from16 v9, v31

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    goto :goto_b

    :cond_11
    move-object/from16 v31, v9

    invoke-static {v13}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    move-object/from16 v9, v31

    goto :goto_e

    :cond_12
    move-object v14, v6

    move-object/from16 v31, v9

    :goto_c
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_4

    move-object/from16 v9, v31

    goto :goto_e

    :cond_13
    move-object v14, v6

    move-object/from16 v31, v9

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    goto/16 :goto_8

    :cond_14
    move-object/from16 v31, v9

    :try_start_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-class v4, Lnqs;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v31

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_3

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v13, v15

    move-object/from16 v4, v20

    goto/16 :goto_31

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v13, v15

    move-object/from16 v4, v20

    goto/16 :goto_31

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v13, v15

    goto/16 :goto_2d

    :cond_15
    move-object v14, v6

    :goto_d
    :try_start_1a
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    :goto_e
    new-instance v4, Licl;

    const/16 v11, 0xb

    invoke-direct {v4, v15, v11}, Licl;-><init>(Lcom/google/googlex/gcam/FrameMetadata;I)V

    invoke-virtual {v3, v4}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_1b

    move-object/from16 v8, p2

    if-eqz v8, :cond_16

    :try_start_1b
    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/GyroSampleVector;->a:J

    const/4 v12, 0x0

    move-object v5, v15

    move-object v13, v14

    move-object/from16 v14, v22

    const/4 v11, 0x2

    const/4 v11, 0x1

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_gyro_samples_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/GyroSampleVector;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_5

    goto :goto_f

    :cond_16
    move-object v13, v14

    move-object/from16 v14, v22

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_f
    :try_start_1c
    const-string v20, "geocalibration"

    invoke-interface {v13}, Lkli;->M()Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_1b

    if-eqz v3, :cond_18

    :try_start_1d
    invoke-interface {v13}, Lkli;->D()Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_5

    if-nez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_10

    :cond_17
    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    const/4 v3, 0x1

    :goto_10
    :try_start_1e
    const-string v4, "Logical cameras not supported."

    invoke-static {v3, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v8, Lcom/google/googlex/gcam/GeometricCalibrationVector;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_GeometricCalibrationVector__SWIG_0()J

    move-result-wide v3

    invoke-direct {v8, v3, v4, v11}, Lcom/google/googlex/gcam/GeometricCalibrationVector;-><init>(JZ)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_DISTORTION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v6}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_1b

    if-nez v3, :cond_19

    :try_start_1f
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    :cond_19
    if-nez v4, :cond_1a

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v4}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    :cond_1a
    if-nez v5, :cond_1b

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v5}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    :cond_1b
    if-nez v6, :cond_1c

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v6}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_5

    :cond_1c
    if-nez v3, :cond_1d

    if-nez v4, :cond_1d

    if-nez v5, :cond_1d

    if-eqz v6, :cond_22

    :cond_1d
    :try_start_20
    new-instance v7, Lcom/google/googlex/gcam/GeometricCalibration;

    invoke-direct {v7}, Lcom/google/googlex/gcam/GeometricCalibration;-><init>()V

    sget-object v11, Lnqo;->a:Lnqo;

    invoke-virtual {v7, v11}, Lcom/google/googlex/gcam/GeometricCalibration;->d(Lnqo;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_1b

    if-eqz v3, :cond_1e

    :try_start_21
    invoke-virtual {v7, v3}, Lcom/google/googlex/gcam/GeometricCalibration;->b([F)V

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/GeometricCalibration;->c([F)V

    :cond_1f
    if-eqz v5, :cond_20

    iget-wide v3, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v3, v4, v7, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_pose_rotation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V

    :cond_20
    if-eqz v6, :cond_21

    iget-wide v3, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v3, v4, v7, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_pose_translation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_5

    :cond_21
    :try_start_22
    invoke-virtual {v8, v7}, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a(Lcom/google/googlex/gcam/GeometricCalibration;)V

    :cond_22
    sget-object v3, Liuw;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_1b

    const/16 v22, 0x9

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v25, 0x5

    if-eqz v3, :cond_24

    :try_start_23
    sget-object v3, Liuw;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_24

    sget-object v3, Liuw;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_24

    sget-object v3, Liuw;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_24

    sget-object v3, Liuw;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_24

    sget-object v3, Liuw;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    sget-object v4, Liuw;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v4}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    sget-object v11, Liuw;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v11}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    sget-object v5, Liuw;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v5}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    sget-object v6, Liuw;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v6}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v3, :cond_23

    if-eqz v4, :cond_23

    if-eqz v11, :cond_23

    if-eqz v5, :cond_23

    if-eqz v6, :cond_23

    new-instance v7, Lcom/google/googlex/gcam/GeometricCalibration;

    invoke-direct {v7}, Lcom/google/googlex/gcam/GeometricCalibration;-><init>()V

    sget-object v12, Lnqo;->b:Lnqo;

    invoke-virtual {v7, v12}, Lcom/google/googlex/gcam/GeometricCalibration;->d(Lnqo;)V

    move-object/from16 v31, v9

    move-object v12, v10

    iget-wide v9, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v9, v10, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_distortion_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F

    move-result-object v9

    const/4 v10, 0x0

    aget v29, v3, v10

    aput v29, v9, v10

    const/4 v10, 0x1

    aget v30, v3, v10

    aput v30, v9, v10

    const/4 v10, 0x2

    aget v32, v3, v10

    aput v32, v9, v10

    const/4 v10, 0x6

    aget v32, v3, v10

    const/4 v10, 0x3

    aput v32, v9, v10

    const/4 v10, 0x7

    aget v27, v3, v10

    const/16 v26, 0x4

    aput v27, v9, v26

    invoke-virtual {v7, v9}, Lcom/google/googlex/gcam/GeometricCalibration;->b([F)V

    move-object v9, v11

    iget-wide v10, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v10, v11, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_distortion_extended_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F

    move-result-object v10

    const/4 v11, 0x3

    aget v32, v3, v11

    const/4 v11, 0x0

    aput v32, v10, v11

    const/4 v11, 0x4

    aget v32, v3, v11

    const/4 v11, 0x1

    aput v32, v10, v11

    aget v11, v3, v25

    const/16 v32, 0x2

    aput v11, v10, v32

    aget v11, v3, v23

    const/16 v21, 0x3

    aput v11, v10, v21

    aget v11, v3, v22

    const/16 v26, 0x4

    aput v11, v10, v26

    const/16 v11, 0xa

    aget v32, v3, v11

    aput v32, v10, v25

    const/16 v11, 0xb

    aget v3, v3, v11

    const/4 v11, 0x6

    aput v3, v10, v11

    move-object/from16 v28, v12

    iget-wide v11, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v11, v12, v7, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_distortion_extended_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V

    iget-wide v10, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v10, v11, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_intrinsic_calibration_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F

    move-result-object v3

    const/4 v10, 0x0

    aget v11, v9, v10

    aput v11, v3, v10

    const/4 v11, 0x1

    aget v9, v9, v11

    aput v9, v3, v11

    aget v9, v4, v10

    const/4 v10, 0x2

    aput v9, v3, v10

    aget v4, v4, v11

    const/4 v9, 0x3

    aput v4, v3, v9

    const/4 v9, 0x4

    aput v24, v3, v9

    invoke-virtual {v7, v3}, Lcom/google/googlex/gcam/GeometricCalibration;->c([F)V

    iget-wide v3, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v3, v4, v7, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_active_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;[I)V

    iget-wide v3, v7, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    invoke-static {v3, v4, v7, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_valid_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;[I)V

    invoke-virtual {v8, v7}, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a(Lcom/google/googlex/gcam/GeometricCalibration;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_5

    goto :goto_11

    :cond_23
    move-object/from16 v31, v9

    move-object/from16 v28, v10

    const/4 v9, 0x4

    goto :goto_11

    :cond_24
    move-object/from16 v31, v9

    move-object/from16 v28, v10

    const/4 v9, 0x4

    :goto_11
    :try_start_24
    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a:J

    move-object v5, v15

    const/4 v10, 0x7

    const/4 v11, 0x6

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_geometric_calibration_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/GeometricCalibrationVector;)V

    const-string v4, "sensorid"
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_1b

    :try_start_25
    iget-object v3, v1, Lnsc;->d:Lklj;

    invoke-static {v13}, Lcom/Globals;->setMaxAnalogSens(Lkli;)V

    invoke-static {v13, v3, v2, v14}, Lnsc;->C(Lkli;Lklj;Lkou;Lkll;)Lnrg;

    move-result-object v3

    iget-wide v5, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget v3, v3, Lnrg;->q:I

    invoke-static {v5, v6, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_id_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    const-string v4, "flash"

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_1f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_26

    const/4 v5, 0x2

    if-ne v3, v5, :cond_25

    goto :goto_12

    :cond_25
    :try_start_26
    sget-object v3, Lnql;->a:Lnql;

    invoke-virtual {v15, v3}, Lcom/google/googlex/gcam/FrameMetadata;->m(Lnql;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v13, v15

    goto/16 :goto_31

    :cond_26
    :goto_12
    :try_start_27
    sget-object v3, Lnql;->b:Lnql;

    invoke-virtual {v15, v3}, Lcom/google/googlex/gcam/FrameMetadata;->m(Lnql;)V

    :goto_13
    const-string v12, "awb"
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_1f

    :try_start_28
    invoke-static {v2, v13}, Lnsc;->i(Lkou;Lkli;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v8

    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v8}, Lcom/google/googlex/gcam/AwbInfo;->a(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v6

    move-object v5, v15

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AwbInfo;)V

    const-string v12, "bl"

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_1a

    if-nez v3, :cond_27

    const/4 v3, 0x0

    :try_start_29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_7

    move-object v3, v4

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v4, v12

    goto/16 :goto_0

    :cond_27
    :goto_14
    :try_start_2a
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-wide v4, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v4, v5, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_was_black_level_locked_set(JLcom/google/googlex/gcam/FrameMetadata;Z)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnsc;->x(J)F

    move-result v3

    iget-wide v4, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v4, v5, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_frame_duration_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v5, v6, v15, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_timestamp_ns_set(JLcom/google/googlex/gcam/FrameMetadata;J)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kSensorTempUnknown_get()I

    move-result v3

    iget-wide v4, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v4, v5, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_temp_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    new-instance v8, Lcom/google/googlex/gcam/SceneFlicker;

    invoke-direct {v8}, Lcom/google/googlex/gcam/SceneFlicker;-><init>()V

    sget-object v3, Liuy;->g:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_1a

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_28

    :try_start_2b
    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_7

    int-to-float v3, v3

    goto :goto_15

    :cond_28
    const/high16 v3, -0x40800000    # -1.0f

    :goto_15
    :try_start_2c
    sget-object v5, Liuy;->h:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_1a

    if-eqz v5, :cond_29

    :try_start_2d
    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_7

    int-to-float v4, v4

    const v5, 0x461c4000    # 10000.0f

    div-float/2addr v4, v5

    goto :goto_16

    :cond_29
    :goto_16
    cmpg-float v5, v3, v24

    if-ltz v5, :cond_2a

    cmpg-float v5, v4, v24

    if-gez v5, :cond_2b

    :cond_2a
    :try_start_2e
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_1a

    if-eqz v5, :cond_2b

    :try_start_2f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lnsc;->a:Ljava/lang/String;

    goto :goto_18

    :pswitch_0
    const/high16 v19, 0x42f00000    # 120.0f

    const/high16 v3, 0x42f00000    # 120.0f

    goto :goto_17

    :pswitch_1
    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_17

    :pswitch_2
    const/4 v3, 0x0

    :goto_17
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_19

    :goto_18
    const-string v6, "Unexpected STATISTICS_SCENE_FLICKER type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_7

    :cond_2b
    :goto_19
    :try_start_30
    iget-wide v5, v8, Lcom/google/googlex/gcam/SceneFlicker;->a:J

    invoke-static {v5, v6, v8, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->SceneFlicker_frequency_set(JLcom/google/googlex/gcam/SceneFlicker;F)V

    iget-wide v5, v8, Lcom/google/googlex/gcam/SceneFlicker;->a:J

    invoke-static {v5, v6, v8, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->SceneFlicker_confidence_set(JLcom/google/googlex/gcam/SceneFlicker;F)V

    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/SceneFlicker;->a:J

    move-object v5, v15

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_scene_flicker_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SceneFlicker;)V

    invoke-static {v2}, Lcom/Globals;->setSensorISO(Lkou;)V

    const-string v12, "noise"

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Pair;

    invoke-static {v3}, Lcom/agc/NoiseModels;->NoiseModelSelector([Landroid/util/Pair;)V

    new-instance v4, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v4}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    new-instance v5, Lcom/google/googlex/gcam/FloatVector;

    invoke-direct {v5}, Lcom/google/googlex/gcam/FloatVector;-><init>()V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_1a

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v9, :cond_2c

    :try_start_31
    aget-object v7, v3, v6

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-static {v7, v6}, Lcom/agc/NoiseModels;->NR_Scale(FI)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    aget-object v7, v3, v6

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-static {v7, v6}, Lcom/agc/NoiseModels;->NR_Offset(FI)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/googlex/gcam/FloatVector;->b(F)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2c
    :try_start_32
    new-instance v8, Lcom/google/googlex/gcam/NoiseModel;

    iget-wide v6, v4, Lcom/google/googlex/gcam/FloatVector;->a:J

    iget-wide v10, v5, Lcom/google/googlex/gcam/FloatVector;->a:J

    move-wide/from16 v32, v6

    move-object/from16 v34, v4

    move-wide/from16 v35, v10

    move-object/from16 v37, v5

    invoke-static/range {v32 .. v37}, Lcom/google/googlex/gcam/GcamModuleJNI;->NoiseModel_FromShotReadNoiseVector(JLcom/google/googlex/gcam/FloatVector;JLcom/google/googlex/gcam/FloatVector;)J

    move-result-wide v3

    invoke-direct {v8, v3, v4}, Lcom/google/googlex/gcam/NoiseModel;-><init>(J)V

    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/NoiseModel;->a:J

    move-object v5, v15

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_dng_noise_model_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/NoiseModel;)V

    const-string v4, "dynamicbl"
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_1a

    :try_start_33
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-static {v13, v3}, Lcom/agc/LensSettings;->getBlackLevel(Lkli;[F)[F

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_1f

    if-eqz v3, :cond_2e

    :try_start_34
    new-instance v5, Lcom/google/googlex/gcam/FloatArray4;

    invoke-direct {v5}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FloatArray4;->b()J

    move-result-wide v7

    int-to-long v10, v6

    cmp-long v12, v10, v7

    if-gez v12, :cond_2d

    aget v7, v3, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2d
    invoke-virtual {v15, v5}, Lcom/google/googlex/gcam/FrameMetadata;->l(Lcom/google/googlex/gcam/FloatArray4;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_0

    goto :goto_1d

    :cond_2e
    :try_start_35
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/BlackLevelPattern;
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_19

    if-eqz v3, :cond_30

    :try_start_36
    new-instance v5, Lcom/google/googlex/gcam/FloatArray4;

    invoke-direct {v5}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FloatArray4;->b()J

    move-result-wide v7

    int-to-long v10, v6

    cmp-long v12, v10, v7

    if-gez v12, :cond_2f

    rem-int/lit8 v7, v6, 0x2

    div-int/lit8 v8, v6, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2f
    invoke-virtual {v15, v5}, Lcom/google/googlex/gcam/FrameMetadata;->l(Lcom/google/googlex/gcam/FloatArray4;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_6

    :cond_30
    :goto_1d
    :try_start_37
    const-string v4, "focusdistance"

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v13, v5}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_1f

    if-eqz v3, :cond_32

    if-eqz v5, :cond_32

    :try_start_38
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_31

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_32

    :cond_31
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-wide v5, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v5, v6, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_focus_distance_diopters_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_0

    :cond_32
    :try_start_39
    new-instance v8, Lcom/google/googlex/gcam/LiveHdrMetadata;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_LiveHdrMetadata()J

    move-result-wide v5

    const/4 v3, 0x1

    invoke-direct {v8, v5, v6, v3}, Lcom/google/googlex/gcam/LiveHdrMetadata;-><init>(JZ)V

    new-instance v10, Lcom/google/googlex/gcam/AeResults;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AeResults()J

    move-result-wide v5

    const/4 v3, 0x1

    invoke-direct {v10, v5, v6, v3}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    const-string v4, "livehdr"

    sget-object v3, Liux;->c:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_1f

    if-eqz v3, :cond_34

    :try_start_3a
    sget-object v3, Liux;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-eqz v3, :cond_34

    array-length v5, v3

    if-lez v5, :cond_34

    const/4 v5, 0x0

    aget v6, v3, v5

    iget-wide v11, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v11, v12, v8, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_max_hdr_ratio_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    const/4 v5, 0x1

    aget v6, v3, v5

    invoke-virtual {v8, v6}, Lcom/google/googlex/gcam/LiveHdrMetadata;->c(F)V

    const/4 v5, 0x2

    aget v6, v3, v5

    invoke-virtual {v8, v6}, Lcom/google/googlex/gcam/LiveHdrMetadata;->b(F)V

    sget-object v5, Lnsc;->b:Lkog;

    iget-boolean v5, v5, Lkog;->c:Z

    if-nez v5, :cond_33

    const/4 v5, 0x3

    aget v6, v3, v5

    iget-wide v11, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v11, v12, v8, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_night_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    :cond_33
    aget v5, v3, v9

    iget-wide v6, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v6, v7, v8, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_manual_ec_short_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    aget v3, v3, v25

    iget-wide v5, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v5, v6, v8, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_manual_portrait_tet_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_0

    :cond_34
    :try_start_3b
    const-string v4, "gcamae"

    sget-object v3, Liux;->a:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_1f

    if-eqz v3, :cond_39

    :try_start_3c
    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-eqz v3, :cond_39

    array-length v5, v3

    if-lez v5, :cond_39

    new-instance v6, Lcom/google/googlex/gcam/AeModeResult;

    invoke-direct {v6}, Lcom/google/googlex/gcam/AeModeResult;-><init>()V

    new-instance v7, Lcom/google/googlex/gcam/AeModeResult;

    invoke-direct {v7}, Lcom/google/googlex/gcam/AeModeResult;-><init>()V

    const/4 v11, 0x0

    aget v12, v3, v11

    invoke-virtual {v6, v12}, Lcom/google/googlex/gcam/AeModeResult;->d(F)V

    const/4 v11, 0x1

    aget v12, v3, v11

    invoke-virtual {v7, v12}, Lcom/google/googlex/gcam/AeModeResult;->d(F)V

    const/4 v11, 0x2

    aget v12, v3, v11

    invoke-virtual {v6, v12}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    const/4 v11, 0x3

    aget v12, v3, v11

    invoke-virtual {v7, v12}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    aget v9, v3, v9

    iget-wide v11, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    invoke-static {v11, v12, v10, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_pure_fraction_of_pixels_from_long_exposure_set(JLcom/google/googlex/gcam/AeResults;F)V

    aget v9, v3, v25

    iget-wide v11, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    invoke-static {v11, v12, v10, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_weighted_fraction_of_pixels_from_long_exposure_set(JLcom/google/googlex/gcam/AeResults;F)V

    const/4 v9, 0x6

    aget v11, v3, v9

    iget-wide v12, v6, Lcom/google/googlex/gcam/AeModeResult;->a:J

    invoke-static {v12, v13, v6, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeModeResult_log_scene_brightness_set(JLcom/google/googlex/gcam/AeModeResult;F)V

    const/4 v9, 0x7

    aget v11, v3, v9

    iget-wide v12, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    invoke-static {v12, v13, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_predicted_image_brightness_set(JLcom/google/googlex/gcam/AeResults;F)V

    aget v9, v3, v23

    iget-wide v11, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v11, v12, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_motion_magnitude_pix_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    aget v9, v3, v22

    iget-wide v11, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v11, v12, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_metering_interval_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    const/16 v9, 0xa

    aget v9, v3, v9

    iget-wide v11, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    invoke-static {v11, v12, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_filtered_motion_speed_pix_per_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    const/16 v9, 0xb

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/gcam/LiveHdrMetadata;->f(F)V

    const/16 v9, 0xc

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/google/googlex/gcam/LiveHdrMetadata;->d(F)V

    const/16 v9, 0xd

    if-le v5, v9, :cond_35

    const/16 v9, 0xd

    aget v9, v3, v9

    iget-wide v11, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    invoke-static {v11, v12, v10, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_safe_underexposure_set(JLcom/google/googlex/gcam/AeResults;F)V

    :cond_35
    const/16 v9, 0xf

    if-le v5, v9, :cond_37

    new-instance v11, Lcom/google/googlex/gcam/AeModeResult;

    invoke-direct {v11}, Lcom/google/googlex/gcam/AeModeResult;-><init>()V

    const/16 v12, 0xe

    aget v12, v3, v12

    invoke-virtual {v11, v12}, Lcom/google/googlex/gcam/AeModeResult;->d(F)V

    aget v12, v3, v9

    invoke-virtual {v11, v12}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    iget-wide v12, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    invoke-static {v11}, Lcom/google/googlex/gcam/AeModeResult;->a(Lcom/google/googlex/gcam/AeModeResult;)J

    move-result-wide v35

    move-wide/from16 v32, v12

    move-object/from16 v34, v10

    move-object/from16 v37, v11

    invoke-static/range {v32 .. v37}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_portrait_result_set(JLcom/google/googlex/gcam/AeResults;JLcom/google/googlex/gcam/AeModeResult;)V

    const/16 v11, 0x10

    if-le v5, v11, :cond_36

    const/16 v5, 0x10

    aget v3, v3, v5

    invoke-virtual {v8, v3}, Lcom/google/googlex/gcam/LiveHdrMetadata;->e(F)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_0

    goto :goto_1e

    :cond_36
    :try_start_3d
    aget v3, v3, v9

    invoke-virtual {v8, v3}, Lcom/google/googlex/gcam/LiveHdrMetadata;->e(F)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_6

    :cond_37
    :goto_1e
    const/4 v3, 0x2

    :try_start_3e
    new-array v5, v3, [Lcom/google/googlex/gcam/AeModeResult;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    const/4 v3, 0x1

    aput-object v7, v5, v3

    iget-wide v6, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    const/4 v3, 0x2

    new-array v9, v3, [J

    const/4 v13, 0x0

    :goto_1f
    if-ge v13, v3, :cond_38

    aget-object v11, v5, v13

    invoke-static {v11}, Lcom/google/googlex/gcam/AeModeResult;->a(Lcom/google/googlex/gcam/AeModeResult;)J

    move-result-wide v11

    aput-wide v11, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :cond_38
    invoke-static {v6, v7, v10, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_mode_result_set(JLcom/google/googlex/gcam/AeResults;[J)V
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_0

    :cond_39
    :try_start_3f
    const-string v9, "smask"
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_1f

    :try_start_40
    sget-object v3, Liuz;->k:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_18

    if-eqz v3, :cond_3e

    :try_start_41
    sget-object v3, Liuz;->k:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_3d

    array-length v4, v3
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_d

    if-nez v4, :cond_3a

    move-object/from16 v16, v15

    const/4 v11, 0x0

    goto/16 :goto_23

    :cond_3a
    :try_start_42
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v5

    sget-object v6, Loba;->i:Loba;
    :try_end_42
    .catch Lnxd; {:try_start_42 .. :try_end_42} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_a

    const/4 v11, 0x0

    :try_start_43
    invoke-static {v6, v3, v11, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v3

    invoke-static {v3}, Lnws;->ae(Lnws;)V

    check-cast v3, Loba;

    iget-boolean v4, v3, Loba;->a:Z

    if-eqz v4, :cond_3c

    iget v4, v3, Loba;->b:I

    if-lez v4, :cond_3c

    iget v4, v3, Loba;->c:I
    :try_end_43
    .catch Lnxd; {:try_start_43 .. :try_end_43} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_a

    if-lez v4, :cond_3c

    :try_start_44
    iget-wide v4, v15, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v4, v5, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_portrait_mask_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v4

    cmp-long v6, v4, v17

    if-nez v6, :cond_3b

    move-object/from16 v6, v16

    goto :goto_20

    :cond_3b
    new-instance v6, Lcom/google/googlex/gcam/PortraitMask;

    invoke-direct {v6, v4, v5}, Lcom/google/googlex/gcam/PortraitMask;-><init>(J)V

    :goto_20
    new-instance v4, Lcom/google/googlex/gcam/Size;

    invoke-direct {v4}, Lcom/google/googlex/gcam/Size;-><init>()V

    iget v5, v3, Loba;->c:I

    iget-wide v12, v4, Lcom/google/googlex/gcam/Size;->a:J

    invoke-static {v12, v13, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Size_height_set(JLcom/google/googlex/gcam/Size;I)V

    iget v5, v3, Loba;->b:I

    iget-wide v12, v4, Lcom/google/googlex/gcam/Size;->a:J

    invoke-static {v12, v13, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Size_width_set(JLcom/google/googlex/gcam/Size;I)V

    iget-wide v12, v6, Lcom/google/googlex/gcam/PortraitMask;->a:J
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_a

    move-object/from16 v16, v15

    :try_start_45
    iget-wide v14, v4, Lcom/google/googlex/gcam/Size;->a:J

    move-wide/from16 v32, v12

    move-object/from16 v34, v6

    move-wide/from16 v35, v14

    move-object/from16 v37, v4

    invoke-static/range {v32 .. v37}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_size_set(JLcom/google/googlex/gcam/PortraitMask;JLcom/google/googlex/gcam/Size;)V

    new-instance v4, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v4}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    iget v5, v3, Loba;->d:F

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    iget v5, v3, Loba;->f:F

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    iget v5, v3, Loba;->e:F

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    iget v5, v3, Loba;->g:F

    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    iget-wide v12, v6, Lcom/google/googlex/gcam/PortraitMask;->a:J

    invoke-static {v4}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v35

    move-wide/from16 v32, v12

    move-object/from16 v34, v6

    move-object/from16 v37, v4

    invoke-static/range {v32 .. v37}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_crop_set(JLcom/google/googlex/gcam/PortraitMask;JLcom/google/googlex/gcam/NormalizedRect;)V

    iget-object v3, v3, Loba;->h:Lnvt;

    invoke-virtual {v3}, Lnvt;->A()[B

    move-result-object v3

    new-instance v4, Lcom/google/googlex/gcam/Uint8Vector;

    invoke-direct {v4}, Lcom/google/googlex/gcam/Uint8Vector;-><init>()V

    iget-wide v12, v4, Lcom/google/googlex/gcam/Uint8Vector;->a:J

    invoke-static {v3, v12, v13}, Lcom/google/googlex/gcam/BufferUtils;->setByteVectorImpl([BJ)V

    iget-wide v12, v6, Lcom/google/googlex/gcam/PortraitMask;->a:J

    iget-wide v14, v4, Lcom/google/googlex/gcam/Uint8Vector;->a:J

    move-wide/from16 v32, v12

    move-object/from16 v34, v6

    move-wide/from16 v35, v14

    move-object/from16 v37, v4

    invoke-static/range {v32 .. v37}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_data_set(JLcom/google/googlex/gcam/PortraitMask;JLcom/google/googlex/gcam/Uint8Vector;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_8

    goto :goto_23

    :catch_8
    move-exception v0

    goto :goto_21

    :cond_3c
    move-object/from16 v16, v15

    goto :goto_23

    :catch_9
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_22

    :catch_a
    move-exception v0

    move-object/from16 v16, v15

    :goto_21
    move-object v2, v0

    move-object v4, v9

    move-object/from16 v13, v16

    goto/16 :goto_31

    :catch_b
    move-exception v0

    move-object/from16 v16, v15

    const/4 v11, 0x0

    :goto_22
    :try_start_46
    sget-object v3, Lnsc;->a:Ljava/lang/String;

    const-string v4, "Cannot parse the mask proto"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_c

    goto :goto_23

    :catch_c
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    move-object/from16 v13, v16

    goto/16 :goto_31

    :cond_3d
    move-object/from16 v16, v15

    const/4 v11, 0x0

    goto :goto_23

    :catch_d
    move-exception v0

    move-object/from16 v16, v15

    move-object v2, v0

    move-object v4, v9

    move-object/from16 v13, v16

    goto/16 :goto_31

    :cond_3e
    move-object/from16 v16, v15

    const/4 v11, 0x0

    :goto_23
    move-object/from16 v13, v16

    :try_start_47
    iget-wide v3, v13, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    move-object v5, v13

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_live_hdr_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/LiveHdrMetadata;)V

    iget-wide v3, v13, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v10}, Lcom/google/googlex/gcam/AeResults;->b(Lcom/google/googlex/gcam/AeResults;)J

    move-result-wide v6

    move-object v5, v13

    move-object v8, v10

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_ae_results_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AeResults;)V

    const-string v4, "3a"
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_13

    :try_start_48
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lnqh;->g:[Lnqh;

    const/4 v6, 0x6

    if-ge v3, v6, :cond_40

    if-ltz v3, :cond_40

    aget-object v5, v5, v3

    iget v6, v5, Lnqh;->h:I
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_e

    if-ne v6, v3, :cond_3f

    goto :goto_25

    :cond_3f
    const/4 v5, 0x0

    goto :goto_24

    :catch_e
    move-exception v0

    goto/16 :goto_30

    :cond_40
    const/4 v5, 0x0

    :goto_24
    :try_start_49
    sget-object v6, Lnqh;->g:[Lnqh;
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_17

    const/4 v7, 0x6

    if-ge v5, v7, :cond_50

    :try_start_4a
    aget-object v6, v6, v5

    iget v8, v6, Lnqh;->h:I
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_15

    if-ne v8, v3, :cond_4f

    move-object v5, v6

    :goto_25
    :try_start_4b
    iget-wide v6, v13, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget v3, v5, Lnqh;->h:I

    invoke-static {v6, v7, v13, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_control_mode_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->d()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lnpz;->a(I)Lnpz;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AeMetadata;->a:J

    iget v5, v5, Lnpz;->h:I

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeMetadata_mode_set(JLcom/google/googlex/gcam/AeMetadata;I)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AeMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeMetadata_lock_set(JLcom/google/googlex/gcam/AeMetadata;Z)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lnqa;->h:[Lnqa;

    const/4 v7, 0x7

    if-ge v5, v7, :cond_42

    if-ltz v5, :cond_42

    aget-object v6, v6, v5

    iget v7, v6, Lnqa;->i:I
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_e

    if-ne v7, v5, :cond_41

    goto :goto_27

    :cond_41
    const/4 v6, 0x0

    goto :goto_26

    :cond_42
    const/4 v6, 0x0

    :goto_26
    :try_start_4c
    sget-object v7, Lnqa;->h:[Lnqa;
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_14

    const/4 v8, 0x7

    if-ge v6, v8, :cond_4e

    :try_start_4d
    aget-object v7, v7, v6

    iget v9, v7, Lnqa;->i:I
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_17

    if-ne v9, v5, :cond_4d

    move-object v6, v7

    :goto_27
    :try_start_4e
    iget-wide v7, v3, Lcom/google/googlex/gcam/AeMetadata;->a:J

    iget v5, v6, Lnqa;->i:I

    invoke-static {v7, v8, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeMetadata_state_set(JLcom/google/googlex/gcam/AeMetadata;I)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_43

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AeMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeMetadata_precapture_trigger_set(JLcom/google/googlex/gcam/AeMetadata;I)V

    :cond_43
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lnsc;->a(I)F

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AeMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeMetadata_exposure_compensation_set(JLcom/google/googlex/gcam/AeMetadata;F)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->f()Lcom/google/googlex/gcam/AwbMetadata;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AwbMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_mode_set(JLcom/google/googlex/gcam/AwbMetadata;I)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AwbMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_lock_set(JLcom/google/googlex/gcam/AwbMetadata;Z)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-wide v6, v3, Lcom/google/googlex/gcam/AwbMetadata;->a:J

    invoke-static {v6, v7, v3, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbMetadata_state_set(JLcom/google/googlex/gcam/AwbMetadata;I)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lnqc;->a(I)Lnqc;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->b(Lnqc;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lnqd;->a(I)Lnqd;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->c(Lnqd;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->d(I)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lnqt;->d:[Lnqt;

    const/4 v6, 0x3

    if-ge v3, v6, :cond_45

    if-ltz v3, :cond_45

    aget-object v5, v5, v3

    iget v6, v5, Lnqt;->e:I
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_e

    if-ne v6, v3, :cond_44

    goto :goto_29

    :cond_44
    goto :goto_28

    :cond_45
    :goto_28
    :try_start_4f
    sget-object v5, Lnqt;->d:[Lnqt;
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_f

    const/4 v9, 0x3

    if-ge v11, v9, :cond_47

    :try_start_50
    aget-object v5, v5, v11

    iget v6, v5, Lnqt;->e:I
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_14

    if-ne v6, v3, :cond_46

    :goto_29
    :try_start_51
    iget-wide v6, v13, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget v3, v5, Lnqt;->e:I

    invoke-static {v6, v7, v13, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_lens_state_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_e

    goto :goto_2a

    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :cond_47
    :try_start_52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-class v5, Lnqt;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v28

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_16

    :catch_f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_31

    :cond_48
    :goto_2a
    :try_start_53
    const-string v9, "bgstats"
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_e

    :try_start_54
    sget-object v3, Liuw;->t:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_13

    if-eqz v3, :cond_49

    :try_start_55
    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_49

    array-length v4, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v5

    new-instance v3, Lnrf;

    invoke-direct {v3, v5, v6}, Lnrf;-><init>(J)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    new-instance v8, Lcom/google/googlex/gcam/IspAwbMetadata;

    invoke-static {v3}, Lnrf;->a(Lnrf;)J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->DeserializeFromBytes(JJ)J

    move-result-wide v3

    invoke-direct {v8, v3, v4}, Lcom/google/googlex/gcam/IspAwbMetadata;-><init>(J)V

    iget-wide v3, v13, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v6, v8, Lcom/google/googlex/gcam/IspAwbMetadata;->a:J

    move-object v5, v13

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_isp_metadata_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/IspAwbMetadata;)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_10

    goto :goto_2b

    :catch_10
    move-exception v0

    move-object v3, v0

    :try_start_56
    sget-object v4, Lnsc;->a:Ljava/lang/String;

    const-string v5, "Error retrieving EXPERIMENTAL_BGSTATS_AWB"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_11

    goto :goto_2b

    :catch_11
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    goto/16 :goto_31

    :cond_49
    :goto_2b
    :try_start_57
    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lnrg;

    move-result-object v3

    sget-object v4, Lnrg;->f:Lnrg;

    if-eq v3, v4, :cond_4a

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lnrg;

    move-result-object v3

    sget-object v4, Lnrg;->i:Lnrg;

    if-ne v3, v4, :cond_4b

    :cond_4a
    invoke-static {v13}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v6

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v8, v13

    invoke-static/range {v3 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ApplySensorBinning__SWIG_0(IZZJLcom/google/googlex/gcam/FrameMetadata;)V

    :cond_4b
    const-string v4, "halaf"
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_12

    :try_start_58
    sget-object v3, Liva;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v2}, Lnsc;->I(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)[B

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->h()Lcom/google/googlex/gcam/HalAfMetadata;

    move-result-object v5

    invoke-static {v3, v5}, Lnsy;->b([BLcom/google/googlex/gcam/HalAfMetadata;)V

    :cond_4c
    sget-object v3, Liva;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v2}, Lnsc;->I(Landroid/hardware/camera2/CaptureResult$Key;Lkou;)[B

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FrameMetadata;->h()Lcom/google/googlex/gcam/HalAfMetadata;

    move-result-object v7

    invoke-static {v2}, Lnsy;->a([B)Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lnrf;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Lnrf;-><init>(J)V

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v10, v2

    iget-wide v5, v7, Lcom/google/googlex/gcam/HalAfMetadata;->a:J

    invoke-static {v3}, Lnrf;->a(Lnrf;)J

    move-result-wide v8

    invoke-static/range {v5 .. v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->HalAfMetadata_SetAfTargetFocusInfoFromBytes(JLcom/google/googlex/gcam/HalAfMetadata;JJ)Z
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_f

    goto/16 :goto_32

    :catch_12
    move-exception v0

    move-object v2, v0

    move-object v4, v9

    goto/16 :goto_31

    :catch_13
    move-exception v0

    goto/16 :goto_2c

    :cond_4d
    move-object/from16 v10, v28

    move-object/from16 v12, v31

    const/4 v9, 0x3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_26

    :cond_4e
    move-object/from16 v10, v28

    move-object/from16 v12, v31

    :try_start_59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-class v3, Lnqa;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_14
    move-exception v0

    move-object v2, v0

    goto/16 :goto_31

    :cond_4f
    move-object/from16 v10, v28

    move-object/from16 v12, v31

    const/4 v8, 0x7

    const/4 v9, 0x3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_24

    :catch_15
    move-exception v0

    move-object v2, v0

    goto/16 :goto_31

    :cond_50
    move-object/from16 v10, v28

    move-object/from16 v12, v31

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-class v5, Lnqh;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_16

    :catch_16
    move-exception v0

    move-object v2, v0

    goto :goto_31

    :catch_17
    move-exception v0

    move-object v2, v0

    goto :goto_31

    :catch_18
    move-exception v0

    move-object v13, v15

    :goto_2c
    move-object v2, v0

    move-object v4, v9

    goto :goto_31

    :catch_19
    move-exception v0

    move-object v13, v15

    move-object v2, v0

    goto :goto_31

    :catch_1a
    move-exception v0

    move-object v13, v15

    move-object v2, v0

    move-object v4, v12

    goto :goto_31

    :catch_1b
    move-exception v0

    move-object v13, v15

    move-object v2, v0

    :goto_2d
    move-object/from16 v4, v20

    goto :goto_31

    :catch_1c
    move-exception v0

    goto :goto_2e

    :catch_1d
    move-exception v0

    move-object v13, v15

    move-object v2, v0

    move-object/from16 v4, v21

    goto :goto_31

    :catch_1e
    move-exception v0

    move-object/from16 v21, v4

    :goto_2e
    move-object v13, v15

    move-object v2, v0

    :goto_2f
    move-object/from16 v4, v21

    goto :goto_31

    :catch_1f
    move-exception v0

    move-object v13, v15

    :goto_30
    move-object v2, v0

    goto :goto_31

    :catch_20
    move-exception v0

    move-object v13, v15

    const-string v4, ""

    move-object v2, v0

    :goto_31
    sget-object v3, Lnsc;->a:Ljava/lang/String;

    const-string v5, "Exception in converting to Gcam FrameMetadata at "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_51
    :goto_32
    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lkou;Lkll;)Lcom/google/googlex/gcam/FrameMetadataKey;
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnsc;->f(Lkou;Lkll;)Lkli;

    move-result-object v1

    iget-object v2, p0, Lnsc;->d:Lklj;

    invoke-static {v1, v2, p1, p2}, Lnsc;->C(Lkli;Lklj;Lkou;Lkll;)Lnrg;

    move-result-object p1

    new-instance p2, Lcom/google/googlex/gcam/FrameMetadataKey;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1, p1}, Lcom/google/googlex/gcam/FrameMetadataKey;-><init>(JLnrg;)V

    return-object p2
.end method

.method public final n(Lkou;Lkll;)Lnrg;
    .locals 2

    iget-object v0, p0, Lnsc;->c:Lkli;

    iget-object v1, p0, Lnsc;->d:Lklj;

    invoke-static {v0, v1, p1, p2}, Lnsc;->C(Lkli;Lklj;Lkou;Lkll;)Lnrg;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lkou;)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 18
    .param p1, "totalCaptureResultProxy"    # Lkou;

    move-object/from16 v1, p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/agc/LensSettings;->needFixSpatialGainMap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, LSpatialGainMapValue;->getSpatialGainMap(I)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    if-nez v0, :cond_1

    invoke-interface/range {p1 .. p1}, Lkou;->c()Lkop;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Lkop;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnsc;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.statistics.lensShadingMap was null, returning the empty SpatialGainMap(). Requested mode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-direct {v0}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v3

    new-instance v11, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-static {v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SpatialGainMap__SWIG_2(II)J

    move-result-wide v4

    invoke-direct {v11, v4, v5}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(J)V

    invoke-virtual/range {p0 .. p1}, Lnsc;->e(Lkou;)Lkli;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v1, v4}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnsc;->s(I)[I

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v13, v4, :cond_4

    aget v14, v1, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v3, :cond_3

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_2

    invoke-virtual {v0, v14, v10, v15}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v16

    iget-wide v4, v11, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    move-object v6, v11

    move v7, v10

    move v8, v15

    move v9, v13

    move/from16 v17, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialGainMap_WriteRggb(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    return-object v11
.end method

.method public final q(Lkou;)[F
    .locals 3

    invoke-virtual {p0, p1}, Lnsc;->e(Lkou;)Lkli;

    move-result-object v0

    invoke-static {v0, p1}, Lnsc;->J(Lkli;Lkou;)[F

    move-result-object v0

    invoke-static {p1}, Lnsc;->v(Lkoq;)F

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aget p1, v0, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 p1, 0x2

    aget v0, v0, v2

    aput v0, v1, p1

    return-object v1
.end method

.method public final u(Lkll;Lcom/google/googlex/gcam/AeShotParams;Lkou;FLkaf;)V
    .locals 19

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Lnsc;->f(Lkou;Lkll;)Lkli;

    move-result-object v2

    invoke-interface {v2}, Lkli;->i()Lkll;

    move-result-object v3

    iget-object v3, v3, Lkll;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lnsc;->h(Lkou;Ljava/lang/String;)Lkou;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/Globals;->FIX_SCALER_CROP_REGION(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Lnsc;->l(Landroid/graphics/Rect;Lkoq;)Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/Globals;->FIX_SCALER_CROP_REGION(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const-string v8, "Invalid scaler crop region: %s"

    invoke-static {v6, v8, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v2, v6}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v6, v2}, Lcom/Globals;->FIX_SENSOR_INFO_ACTIVE_ARRAY(Landroid/graphics/Rect;Lkli;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljzr;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    sget-object v0, Lnsc;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aeCrop exceeds preCorrectionActiveArraySize. aeCrop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preCorrectionActiveArraySize: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v8, Lcom/google/googlex/gcam/MeshTranslation;

    iget-wide v10, v0, Lcom/google/googlex/gcam/MeshWarp;->a:J

    invoke-static {v10, v11, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_TranslationHint(JLcom/google/googlex/gcam/MeshWarp;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lcom/google/googlex/gcam/MeshTranslation;-><init>(J)V

    sget-object v0, Lnsc;->b:Lkog;

    iget-boolean v10, v0, Lkog;->c:Z

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lkog;->h()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v0, v0, Lkog;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v3}, Lnsc;->D(Lkoq;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-interface {v2}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->a:Lklv;

    if-ne v0, v2, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    if-gt v0, v2, :cond_2

    iget-wide v2, v8, Lcom/google/googlex/gcam/MeshTranslation;->a:J

    invoke-static {v2, v3, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshTranslation_x_set(JLcom/google/googlex/gcam/MeshTranslation;I)V

    iget-wide v2, v8, Lcom/google/googlex/gcam/MeshTranslation;->a:J

    invoke-static {v2, v3, v8, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshTranslation_y_set(JLcom/google/googlex/gcam/MeshTranslation;I)V

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget-wide v10, v8, Lcom/google/googlex/gcam/MeshTranslation;->a:J

    invoke-static {v10, v11, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshTranslation_x_get(JLcom/google/googlex/gcam/MeshTranslation;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget-wide v10, v8, Lcom/google/googlex/gcam/MeshTranslation;->a:J

    invoke-static {v10, v11, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshTranslation_y_get(JLcom/google/googlex/gcam/MeshTranslation;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v2, v6, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v2, v3, v7}, Lnsy;->O(III)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v3, v7, v8}, Lnsy;->O(III)I

    move-result v3

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v7, v2, v3, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v2, v6, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v5, v6}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lnsc;->a:Ljava/lang/String;

    const-string v2, "crop failed to intersect with preCorrectionActiveArraySize."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    const-string v2, "crop exceeds preCorrectionActiveArraySize!"

    invoke-static {v0, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    if-nez v7, :cond_5

    sget-object v0, Lnsc;->a:Ljava/lang/String;

    const-string v2, "translateAeCrop failed because translation exceeds active array."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    new-instance v0, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v0}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v2, v8, v2

    mul-float v7, v7, v2

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    div-float v3, v8, v3

    mul-float v7, v7, v3

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float v7, v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/google/googlex/gcam/AeShotParams;->e(Lcom/google/googlex/gcam/NormalizedRect;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/WeightedNormalizedRectVector;

    move-result-object v0

    new-instance v2, Lcom/google/googlex/gcam/WeightedNormalizedRect;

    invoke-direct {v2}, Lcom/google/googlex/gcam/WeightedNormalizedRect;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/googlex/gcam/WeightedNormalizedRect;->b(F)V

    new-instance v16, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct/range {v16 .. v16}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    iget-wide v11, v2, Lcom/google/googlex/gcam/WeightedNormalizedRect;->a:J

    invoke-static/range {v16 .. v16}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v14

    move-object v13, v2

    invoke-static/range {v11 .. v16}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedNormalizedRect_rect_set(JLcom/google/googlex/gcam/WeightedNormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b(Lcom/google/googlex/gcam/WeightedNormalizedRect;)V

    if-eqz v4, :cond_8

    const/4 v2, 0x0

    :goto_2
    array-length v3, v4

    if-ge v2, v3, :cond_8

    aget-object v3, v4, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v3

    if-nez v3, :cond_6

    move/from16 v7, p4

    goto/16 :goto_4

    :cond_6
    new-instance v3, Lcom/google/googlex/gcam/WeightedNormalizedRect;

    invoke-direct {v3}, Lcom/google/googlex/gcam/WeightedNormalizedRect;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v7}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3d7ae148    # 0.06125f

    mul-float v12, v12, v13

    sub-float v13, v11, v12

    sub-float v14, v7, v12

    add-float/2addr v11, v12

    add-float/2addr v7, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v13, v12

    invoke-static {v13, v10, v8}, Lnsy;->U(FFF)F

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-static {v14, v10, v8}, Lnsy;->U(FFF)F

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v11, v14

    invoke-static {v11, v10, v8}, Lnsy;->U(FFF)F

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v7, v14

    invoke-static {v7, v10, v8}, Lnsy;->U(FFF)F

    move-result v7

    iget-wide v14, v3, Lcom/google/googlex/gcam/WeightedNormalizedRect;->a:J

    invoke-static {v14, v15, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedNormalizedRect_rect_get(JLcom/google/googlex/gcam/WeightedNormalizedRect;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-nez v18, :cond_7

    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    new-instance v8, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-direct {v8, v14, v15, v9}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    move-object v14, v8

    :goto_3
    invoke-virtual {v14, v12}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    invoke-virtual {v14, v13}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    invoke-virtual {v14, v11}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    invoke-virtual {v14, v7}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    move/from16 v7, p4

    invoke-virtual {v3, v7}, Lcom/google/googlex/gcam/WeightedNormalizedRect;->b(F)V

    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->b(Lcom/google/googlex/gcam/WeightedNormalizedRect;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_8
    return-void
.end method
