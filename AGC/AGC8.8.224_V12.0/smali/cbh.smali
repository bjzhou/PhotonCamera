.class public final Lcbh;
.super Lkfg;


# instance fields
.field private final a:Lcda;

.field private final b:Lkli;

.field private final c:Z

.field private final d:Lftu;

.field private final e:Lbkb;


# direct methods
.method public constructor <init>(Lftu;Lbkb;Lcda;ZLdhi;Lkli;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lcbh;->d:Lftu;

    iput-object p2, p0, Lcbh;->e:Lbkb;

    iput-object p3, p0, Lcbh;->a:Lcda;

    iput-boolean p4, p0, Lcbh;->c:Z

    iput-object p6, p0, Lcbh;->b:Lkli;

    sget-object p1, Ldhh;->a:Ldhj;

    invoke-interface {p5}, Ldhi;->e()V

    return-void
.end method

.method private static final p(II)F
    .locals 1

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    return p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 22

    :try_start_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v2}, Lcom/Globals;->metadataValue(Lkou;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lgrx;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lgrx;

    if-eqz v5, :cond_2d

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lgry;->a(I)Lgry;

    move-result-object v6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v3, v0

    check-cast v3, Ljava/lang/Float;

    iget-boolean v0, v1, Lcbh;->c:Z

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-eqz v4, :cond_3

    array-length v0, v4

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v0, v4, v9

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lmpx;->a:Lmpx;

    goto/16 :goto_f

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lccz;->b(Landroid/graphics/Rect;)Lccz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_f

    :cond_3
    :goto_1
    sget-object v0, Lmpx;->a:Lmpx;

    goto/16 :goto_f

    :cond_4
    iget-object v10, v1, Lcbh;->a:Lcda;

    iget v0, v10, Lcda;->d:I

    add-int/2addr v0, v8

    iput v0, v10, Lcda;->d:I

    iget-object v0, v10, Lcda;->b:Ldhi;

    sget-object v11, Ldhh;->a:Ldhj;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, v10, Lcda;->b:Ldhi;

    sget-object v11, Ldhh;->d:Ldhj;

    invoke-interface {v0, v11}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v11, 0x6

    if-eqz v0, :cond_a

    sget-object v0, Liva;->a:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_5

    const/4 v12, 0x2

    goto :goto_4

    :cond_5
    sget-object v0, Liva;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_a
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v13

    sget-object v14, Lmpr;->b:Lmpr;

    array-length v15, v0

    invoke-static {v14, v0, v9, v15, v13}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lmpr;

    new-array v13, v7, [I

    fill-array-data v13, :array_0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v7, :cond_a

    aget v15, v13, v14

    iget v12, v0, Lmpr;->a:I

    add-int/lit8 v8, v15, -0x1

    if-ne v12, v8, :cond_9

    iget-object v0, v10, Lcda;->b:Ldhi;

    invoke-interface {v0}, Ldhi;->e()V

    if-eqz v15, :cond_8

    if-ne v15, v7, :cond_6

    const/4 v12, 0x2

    goto :goto_4

    :cond_6
    iget-object v0, v10, Lcda;->b:Ldhi;

    sget-object v8, Ldhh;->d:Ldhj;

    invoke-interface {v0, v8}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_7

    if-ne v15, v11, :cond_7

    goto :goto_3

    :cond_7
    move v12, v15

    goto :goto_4

    :cond_8
    throw v4
    :try_end_3
    .catch Lnxd; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v8, Lcda;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    const-string v12, "InvalidProtocolBufferException"

    const/16 v13, 0x19

    invoke-static {v8, v12, v13, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v12, 0x2

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v12, 0x2

    :goto_4
    const/16 v8, 0x64
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_11

    array-length v13, v0

    if-nez v13, :cond_b

    goto/16 :goto_7

    :cond_b
    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v13}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/32 v15, 0x1f78a40

    cmp-long v17, v13, v15

    if-ltz v17, :cond_c

    const/4 v13, 0x1

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    :goto_5
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v14}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    if-nez v14, :cond_d

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_8

    :cond_d
    sget-object v15, Lmpx;->a:Lmpx;

    array-length v11, v14

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_10

    aget-object v18, v14, v4

    if-nez v13, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v8, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    sub-int v7, v7, v19

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v8, :cond_f

    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v19, v19, v7

    if-lez v19, :cond_f

    invoke-static/range {v18 .. v18}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    :cond_f
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x8

    goto :goto_6

    :cond_10
    move-object v0, v15

    goto :goto_8

    :cond_11
    :goto_7
    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    goto :goto_8

    :catch_2
    move-exception v0

    sget-object v0, Lmpx;->a:Lmpx;

    :goto_8
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    iput v0, v10, Lcda;->c:I

    :cond_12
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/hardware/camera2/params/Face;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    goto :goto_9

    :catch_3
    move-exception v0

    sget-object v7, Lcda;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    const-string v11, "Error retrieving CONTROL_AF_REGIONS."

    const/16 v13, 0x1a

    invoke-static {v7, v11, v13, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_13

    array-length v11, v0

    if-lez v11, :cond_13

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_a

    :cond_13
    :goto_a
    if-eqz v4, :cond_17

    array-length v0, v4

    if-lez v0, :cond_17

    if-eqz v12, :cond_16

    const/16 v11, 0x8

    if-ne v12, v11, :cond_14

    const/16 v0, -0x3e9

    invoke-static {v0, v7, v11}, Lccz;->a(ILandroid/graphics/Rect;I)Lccz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_e

    :cond_14
    const/4 v7, 0x0

    :goto_b
    if-ge v7, v0, :cond_18

    aget-object v11, v4, v7

    iget v12, v10, Lcda;->c:I

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v13

    if-ne v12, v13, :cond_15

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x4

    invoke-static {v0, v4, v7}, Lccz;->a(ILandroid/graphics/Rect;I)Lccz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_e

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    throw v2

    :cond_17
    if-eqz v12, :cond_2c

    const/4 v4, 0x6

    if-ne v12, v4, :cond_18

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    add-int/lit8 v11, v11, 0x32

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    invoke-direct {v0, v4, v8, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, -0x3e8

    const/4 v7, 0x6

    invoke-static {v4, v0, v7}, Lccz;->a(ILandroid/graphics/Rect;I)Lccz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_e

    :cond_18
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_1d

    array-length v4, v0

    if-nez v4, :cond_19

    goto :goto_c

    :cond_19
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    if-eqz v4, :cond_1a

    array-length v4, v4

    if-lez v4, :cond_1a

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_d

    :cond_1a
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_1b

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_d

    :cond_1b
    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v8, :cond_1c

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v8, :cond_1c

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int/lit8 v7, v7, -0x32

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    add-int/lit8 v11, v11, 0x32

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v4, v7, v8, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_d

    :cond_1c
    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_d

    :cond_1d
    :goto_c
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_d
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Lccz;->b(Landroid/graphics/Rect;)Lccz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_e

    :cond_1e
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_e
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_1f

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_f

    :cond_1f
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccz;

    iget-object v7, v10, Lcda;->b:Ldhi;

    invoke-interface {v7}, Ldhi;->e()V

    iget v4, v4, Lccz;->a:I

    iget v7, v10, Lcda;->e:I

    if-eq v4, v7, :cond_21

    iget v7, v10, Lcda;->d:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_20

    iput v9, v10, Lcda;->d:I

    iput v4, v10, Lcda;->e:I

    goto :goto_f

    :cond_20
    sget-object v0, Lmpx;->a:Lmpx;

    :cond_21
    :goto_f
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_22

    sget-object v4, Lmpx;->a:Lmpx;

    move-object v8, v4

    goto/16 :goto_10

    :cond_22
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_23

    sget-object v4, Lmpx;->a:Lmpx;

    move-object v8, v4

    goto/16 :goto_10

    :cond_23
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccz;

    iget-object v7, v7, Lccz;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccz;

    iget v8, v8, Lccz;->c:I

    iget-object v10, v1, Lcbh;->e:Lbkb;

    new-instance v11, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v11, v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v13, v14

    div-float/2addr v11, v15

    invoke-direct {v12, v13, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v10, v10, Lbkb;->a:Ljava/lang/Object;

    check-cast v10, Loxq;

    invoke-virtual {v10, v12}, Loxq;->h(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v11, Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v12, v13}, Lcbh;->p(II)F

    move-result v12

    iget v13, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Lcbh;->p(II)F

    move-result v13

    iget v14, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static {v14, v15}, Lcbh;->p(II)F

    move-result v14

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v7, v4}, Lcbh;->p(II)F

    move-result v4

    invoke-direct {v11, v12, v13, v14, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, v1, Lcbh;->b:Lkli;

    invoke-interface {v4}, Lkli;->f()I

    move-result v4

    new-instance v7, Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    iget v13, v11, Landroid/graphics/RectF;->top:F

    invoke-direct {v7, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v7, v4}, Lkof;->b(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v7

    new-instance v12, Landroid/graphics/PointF;

    iget v13, v11, Landroid/graphics/RectF;->right:F

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v12, v13, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v12, v4}, Lkof;->b(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v4

    new-instance v11, Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v13, v7, Landroid/graphics/PointF;->y:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v11, v12, v13, v14, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Lfts;

    invoke-direct {v4, v10, v11, v8}, Lfts;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;I)V

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    move-object v8, v4

    :goto_10
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    const v10, 0x3fa66666    # 1.3f

    if-nez v4, :cond_24

    const/4 v11, 0x0

    goto :goto_12

    :cond_24
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccz;

    iget-object v4, v4, Lccz;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccz;

    iget v11, v11, Lccz;->c:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_25

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move v11, v4

    goto :goto_12

    :cond_25
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-boolean v11, v1, Lcbh;->c:Z

    const/4 v12, 0x1

    if-eq v12, v11, :cond_26

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_26
    const v11, 0x3fa66666    # 1.3f

    :goto_11
    int-to-float v4, v4

    mul-float v4, v4, v11

    float-to-int v4, v4

    move v11, v4

    :goto_12
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v10, 0x0

    goto :goto_14

    :cond_27
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccz;

    iget-object v4, v4, Lccz;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccz;

    iget v0, v0, Lccz;->c:I

    const/16 v9, 0x8

    if-ne v0, v9, :cond_28

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v10, v0

    goto :goto_14

    :cond_28
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v4, v1, Lcbh;->c:Z

    const/4 v9, 0x1

    if-eq v9, v4, :cond_29

    goto :goto_13

    :cond_29
    const v7, 0x3fa66666    # 1.3f

    :goto_13
    int-to-float v0, v0

    mul-float v0, v0, v7

    float-to-int v0, v0

    move v10, v0

    :goto_14
    new-instance v0, Lftt;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static/range {p1 .. p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-object v4, v0

    move v9, v11

    invoke-direct/range {v4 .. v10}, Lftt;-><init>(Lgrx;Lgry;FLmqp;II)V

    iget-object v2, v1, Lcbh;->d:Lftu;

    iget-object v3, v2, Lftu;->b:Lftt;

    invoke-virtual {v0, v3}, Lftt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-boolean v3, v2, Lftu;->c:Z

    if-eqz v3, :cond_2a

    goto :goto_15

    :cond_2a
    return-void

    :cond_2b
    :goto_15
    iget-object v3, v2, Lftu;->a:Ljvk;

    new-instance v4, Lgxb;

    iget-object v5, v2, Lftu;->b:Lftt;

    invoke-direct {v4, v5, v0}, Lgxb;-><init>(Lftt;Lftt;)V

    invoke-virtual {v3, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    iput-object v0, v2, Lftu;->b:Lftt;

    return-void

    :cond_2c
    const/4 v2, 0x0

    throw v2

    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown metadata value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    :cond_2e
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method
