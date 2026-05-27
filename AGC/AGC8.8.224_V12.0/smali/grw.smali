.class public final Lgrw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lkad;


# static fields
.field private static final E:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field public final A:F

.field public final B:B

.field public final C:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public final D:Ljava/util/Map;

.field public final a:Lkoq;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:F

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:J

.field public final o:Landroid/graphics/Rect;

.field public final p:F

.field public final q:[Lgrz;

.field public final r:Z

.field public final s:I

.field public final t:Landroid/graphics/Rect;

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Z

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lgrw;->E:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>(Lkoq;ILandroid/graphics/Rect;)V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lgrw;-><init>(Lkoq;ILandroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lkoq;ILandroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lgrw;->a:Lkoq;

    move-object/from16 v4, p4

    iput-object v4, v1, Lgrw;->b:Ljava/lang/String;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lgrw;->c:J

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4, v5}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lgrw;->d:J

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4, v5}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lgrw;->e:J

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->f:I

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->g:I

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v4, v11}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v1, Lgrw;->h:F

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4, v11}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v1, Lgrw;->i:F

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->j:I

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->k:I

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->l:I

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lgrw;->m:I

    iput-object v3, v1, Lgrw;->o:Landroid/graphics/Rect;

    sget-object v4, Liuv;->c:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v4, :cond_0

    sget-object v4, Liuv;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4, v5}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lgrw;->n:J

    goto :goto_0

    :cond_0
    iput-wide v6, v1, Lgrw;->n:J

    :goto_0
    sget-object v4, Liuv;->q:Landroid/hardware/camera2/CaptureResult$Key;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v1, Lgrw;->p:F

    goto :goto_1

    :cond_1
    iput v5, v1, Lgrw;->p:F

    :goto_1
    move/from16 v4, p2

    iput v4, v1, Lgrw;->s:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v4}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iput-object v4, v1, Lgrw;->t:Landroid/graphics/Rect;

    sget-object v4, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v4, :cond_a

    sget-object v4, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-static/range {p1 .. p1}, Lkor;->h(Lkoq;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [Lgrz;

    iput-object v7, v1, Lgrw;->q:[Lgrz;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_10

    iget-object v13, v1, Lgrw;->q:[Lgrz;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkor;

    iget-object v15, v14, Lkor;->a:Lkoj;

    iget-object v15, v15, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v14}, Lkor;->c()Landroid/graphics/PointF;

    move-result-object v16

    invoke-virtual {v14}, Lkor;->g()Landroid/graphics/PointF;

    move-result-object v17

    invoke-virtual {v14}, Lkor;->d()Landroid/graphics/PointF;

    move-result-object v18

    invoke-virtual {v14}, Lkor;->e()Landroid/graphics/PointF;

    move-result-object v19

    invoke-virtual {v14}, Lkor;->b()Landroid/graphics/PointF;

    move-result-object v20

    invoke-virtual {v14}, Lkor;->f()Landroid/graphics/PointF;

    move-result-object v21

    new-instance v35, Lgrz;

    iget-object v5, v14, Lkor;->a:Lkoj;

    iget v5, v5, Lkoj;->a:I

    if-eqz v15, :cond_3

    invoke-static {v15, v3, v0}, Lgsa;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v24, v15

    goto :goto_3

    :cond_3
    const/16 v24, 0x0

    :goto_3
    iget-object v15, v14, Lkor;->a:Lkoj;

    iget v15, v15, Lkoj;->b:I

    if-eqz v16, :cond_4

    invoke-virtual {v14}, Lkor;->c()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v26, v8

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    :goto_4
    if-eqz v17, :cond_5

    invoke-virtual {v14}, Lkor;->g()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v27, v8

    goto :goto_5

    :cond_5
    const/16 v27, 0x0

    :goto_5
    if-eqz v18, :cond_6

    invoke-virtual {v14}, Lkor;->d()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v28, v8

    goto :goto_6

    :cond_6
    const/16 v28, 0x0

    :goto_6
    if-eqz v19, :cond_7

    invoke-virtual {v14}, Lkor;->e()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v29, v8

    goto :goto_7

    :cond_7
    const/16 v29, 0x0

    :goto_7
    if-eqz v20, :cond_8

    invoke-virtual {v14}, Lkor;->b()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v30, v8

    goto :goto_8

    :cond_8
    const/16 v30, 0x0

    :goto_8
    if-eqz v21, :cond_9

    invoke-virtual {v14}, Lkor;->f()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v8, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v8

    move-object/from16 v31, v8

    goto :goto_9

    :cond_9
    const/16 v31, 0x0

    :goto_9
    iget v8, v14, Lkor;->b:F

    move-object/from16 v16, v4

    iget v4, v14, Lkor;->c:F

    iget v14, v14, Lkor;->d:F

    move-object/from16 v22, v35

    move/from16 v23, v5

    move/from16 v25, v15

    move/from16 v32, v8

    move/from16 v33, v4

    move/from16 v34, v14

    invoke-direct/range {v22 .. v34}, Lgrz;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)V

    aput-object v35, v13, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v16

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_a
    :goto_a
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    if-eqz v4, :cond_b

    array-length v5, v4

    goto :goto_b

    :cond_b
    const/4 v5, 0x0

    :goto_b
    new-array v6, v5, [Lgrz;

    iput-object v6, v1, Lgrw;->q:[Lgrz;

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_10

    iget-object v7, v1, Lgrw;->q:[Lgrz;

    aget-object v8, v4, v6

    invoke-static {v8}, Lkoj;->a(Landroid/hardware/camera2/params/Face;)Lkoj;

    move-result-object v8

    iget-object v13, v8, Lkoj;->c:Landroid/graphics/Rect;

    iget-object v14, v8, Lkoj;->d:Landroid/graphics/Point;

    iget-object v15, v8, Lkoj;->e:Landroid/graphics/Point;

    move-object/from16 v16, v4

    iget-object v4, v8, Lkoj;->f:Landroid/graphics/Point;

    new-instance v30, Lgrz;

    move/from16 v31, v5

    iget v5, v8, Lkoj;->a:I

    if-eqz v13, :cond_c

    invoke-static {v13, v3, v0}, Lgsa;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v19, v13

    goto :goto_d

    :cond_c
    const/16 v19, 0x0

    :goto_d
    iget v8, v8, Lkoj;->b:I

    if-eqz v14, :cond_d

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v14}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-static {v13, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v21, v13

    goto :goto_e

    :cond_d
    const/16 v21, 0x0

    :goto_e
    if-eqz v15, :cond_e

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v15}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-static {v13, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v22, v13

    goto :goto_f

    :cond_e
    const/16 v22, 0x0

    :goto_f
    if-eqz v4, :cond_f

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-static {v13, v3, v0}, Lgsa;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v23, v4

    goto :goto_10

    :cond_f
    const/16 v23, 0x0

    :goto_10
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v17, v30

    move/from16 v18, v5

    move/from16 v20, v8

    invoke-direct/range {v17 .. v29}, Lgrz;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)V

    aput-object v30, v7, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v31

    goto :goto_c

    :cond_10
    sget-object v0, Liuw;->l:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_11

    iget-object v3, v1, Lgrw;->a:Lkoq;

    invoke-interface {v3, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v9}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lgrw;->r:Z

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    iput-boolean v3, v1, Lgrw;->r:Z

    :goto_11
    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgrw;->u:I

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v12}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgrw;->v:I

    :try_start_0
    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_12

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    :goto_12
    sget-object v0, Lgrw;->E:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v5, v0}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, v1, Lgrw;->C:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, v11}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lgrw;->A:F

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgrw;->w:I

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v9}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lgrw;->y:Z

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v10}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgrw;->x:I

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v9}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lgrw;->z:Z

    iget-object v0, v1, Lgrw;->a:Lkoq;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v0, v4}, Lgrw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, v1, Lgrw;->B:B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lgrw;->D:Ljava/util/Map;

    sget-object v0, Liuz;->e:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_12

    sget-object v0, Liuz;->e:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_12

    invoke-static {v0}, Ldyk;->b([B)Lmvv;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v2, :cond_12

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldyh;

    iget-object v4, v1, Lgrw;->D:Ljava/util/Map;

    iget v5, v3, Ldyh;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_12
    return-void
.end method

.method public static a(Lkou;Lily;I)Lgrw;
    .locals 8

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkou;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkoq;

    goto :goto_0

    :cond_0
    check-cast v2, Lmwa;

    invoke-virtual {v2}, Lmwa;->r()Lmwn;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkoq;

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v3, p0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v6, v0

    :goto_1
    invoke-virtual {p1, v6}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, p1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/graphics/Rect;

    if-nez v1, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    new-instance p0, Lgrw;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lgrw;-><init>(Lkoq;ILandroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lgrw;

    iget-wide v0, p0, Lgrw;->c:J

    iget-wide v2, p1, Lgrw;->c:J

    cmp-long p1, v0, v2

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p0

    iget-wide v1, v0, Lgrw;->c:J

    iget-wide v3, v0, Lgrw;->d:J

    iget-wide v5, v0, Lgrw;->e:J

    iget v7, v0, Lgrw;->h:F

    iget v8, v0, Lgrw;->f:I

    iget v9, v0, Lgrw;->i:F

    iget v10, v0, Lgrw;->j:I

    iget v11, v0, Lgrw;->k:I

    iget v12, v0, Lgrw;->l:I

    iget v13, v0, Lgrw;->m:I

    iget-object v14, v0, Lgrw;->o:Landroid/graphics/Rect;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    iget-wide v14, v0, Lgrw;->n:J

    move-wide/from16 v17, v14

    iget v14, v0, Lgrw;->p:F

    iget-object v15, v0, Lgrw;->q:[Lgrz;

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    iget v15, v0, Lgrw;->s:I

    move/from16 v20, v15

    iget-object v15, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    iget-object v15, v0, Lgrw;->b:Ljava/lang/String;

    move-object/from16 v22, v15

    iget v15, v0, Lgrw;->u:I

    move/from16 v23, v15

    iget v15, v0, Lgrw;->v:I

    move/from16 v24, v15

    iget v15, v0, Lgrw;->w:I

    move/from16 v25, v15

    iget v15, v0, Lgrw;->x:I

    move/from16 v26, v15

    iget-boolean v15, v0, Lgrw;->y:Z

    move/from16 v27, v15

    iget-boolean v15, v0, Lgrw;->z:Z

    move/from16 v28, v15

    iget v15, v0, Lgrw;->A:F

    move/from16 v29, v15

    iget-byte v15, v0, Lgrw;->B:B

    move/from16 v30, v15

    iget-object v15, v0, Lgrw;->C:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v15

    const-string v15, "CameraMetadata{, timestampNs="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exposureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rollingShutterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", focalLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sensorSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", focusDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aFStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aEStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aWBStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lensStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestampBootime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subjectMotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", faces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeArraySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", physicalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", controlMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aFMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aWBMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aELock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aWBLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lenseAperture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoFocusRegions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
