.class public final Ldus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldtu;I)V
    .locals 0

    iput p2, p0, Ldus;->b:I

    iput-object p1, p0, Ldus;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lduv;I)V
    .locals 0

    iput p2, p0, Ldus;->b:I

    iput-object p1, p0, Ldus;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lexs;I)V
    .locals 0

    iput p2, p0, Ldus;->b:I

    iput-object p1, p0, Ldus;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfda;I)V
    .locals 0

    iput p2, p0, Ldus;->b:I

    iput-object p1, p0, Ldus;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgvz;I)V
    .locals 0

    iput p2, p0, Ldus;->b:I

    iput-object p1, p0, Ldus;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    iget v0, p0, Ldus;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Ldus;->a:Ljava/lang/Object;

    check-cast v0, Ldtu;

    invoke-virtual {v0}, Ldtu;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldus;->a:Ljava/lang/Object;

    check-cast v0, Ldtu;

    invoke-virtual {v0, p1, p2}, Ldtu;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Ldus;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v4, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v4, Lgvz;

    iget-object v4, v4, Lgvz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v2, v4, :cond_10

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lgvz;

    iget-object v2, v2, Lgvz;->e:[F

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object v0, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v0, Lgvz;

    iget-object v2, v0, Lgvz;->e:[F

    iget-object v0, v0, Lgvz;->f:[F

    invoke-static {v2, v10, v3, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object v0, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v0, Lgvz;

    iget-object v2, v0, Lgvz;->f:[F

    iget-object v0, v0, Lgvz;->g:[F

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, v1, Ldus;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgvz;

    iget-object v3, v2, Lgvz;->g:[F

    aget v4, v3, v9

    const v5, 0x42652ee1

    mul-float v4, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    cmpg-float v11, v4, v7

    if-gez v11, :cond_e

    add-float/2addr v4, v6

    goto/16 :goto_5

    :pswitch_0
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v11, 0x9

    if-ne v2, v11, :cond_3

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lfda;

    iget-object v2, v2, Lfda;->a:Lfdf;

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iget-wide v13, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v4, v4}, Lfdf;->a([F[F)F

    move-result v0

    move-wide v15, v13

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    cmpl-float v7, v0, v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v0

    new-array v0, v3, [F

    aget v3, v4, v9

    mul-float v3, v3, v7

    aput v3, v0, v9

    aget v3, v4, v10

    mul-float v3, v3, v7

    aput v3, v0, v10

    aget v3, v4, v8

    mul-float v3, v3, v7

    aput v3, v0, v8

    iget-object v3, v2, Lfdf;->a:[F

    invoke-static {v0, v3}, Lfdf;->a([F[F)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-wide v3, v2, Lfdf;->c:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    iget v3, v2, Lfdf;->b:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v2, Lfdf;->e:I

    add-int/2addr v0, v10

    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lfdf;->e:I

    return-void

    :cond_2
    :goto_0
    move-wide v3, v15

    iput-wide v3, v2, Lfdf;->c:J

    iput v9, v2, Lfdf;->e:I

    return-void

    :cond_3
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v4, :cond_6

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lfda;

    iget-object v2, v2, Lfda;->a:Lfdf;

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iget-wide v7, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v3, v3}, Lfdf;->a([F[F)F

    move-result v0

    iget-wide v3, v2, Lfdf;->d:J

    cmp-long v12, v3, v5

    if-ltz v12, :cond_5

    const v3, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, v2, Lfdf;->f:I

    add-int/2addr v0, v10

    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lfdf;->f:I

    return-void

    :cond_5
    :goto_1
    iput-wide v7, v2, Lfdf;->d:J

    iput v9, v2, Lfdf;->f:I

    return-void

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v10, :cond_8

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-boolean v3, v2, Lexs;->d:Z

    if-nez v3, :cond_7

    iget-object v3, v2, Lexs;->c:Liml;

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Liml;->a(FFF)V

    iput-boolean v10, v2, Lexs;->d:Z

    goto :goto_3

    :cond_7
    iget-object v3, v2, Lexs;->c:Liml;

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    const v5, 0x3e19999a    # 0.15f

    mul-float v4, v4, v5

    iget-object v6, v2, Lexs;->c:Liml;

    iget v7, v6, Liml;->a:F

    const v9, 0x3f59999a    # 0.85f

    mul-float v7, v7, v9

    add-float/2addr v4, v7

    iput v4, v3, Liml;->a:F

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v10

    mul-float v3, v3, v5

    iget-object v4, v2, Lexs;->c:Liml;

    iget v7, v4, Liml;->b:F

    mul-float v7, v7, v9

    add-float/2addr v3, v7

    iput v3, v6, Liml;->b:F

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    mul-float v3, v3, v5

    iget-object v2, v2, Lexs;->c:Liml;

    iget v2, v2, Liml;->c:F

    mul-float v2, v2, v9

    add-float/2addr v3, v2

    iput v3, v4, Liml;->c:F

    :goto_3
    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-object v2, v2, Lexs;->j:Leag;

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v3, v4, v5}, Leag;->c([FJ)V

    return-void

    :cond_8
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v8, :cond_9

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-object v2, v2, Lexs;->e:[F

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v9

    aput v3, v2, v9

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-object v2, v2, Lexs;->e:[F

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v10

    aput v3, v2, v10

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-object v2, v2, Lexs;->e:[F

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    aput v0, v2, v8

    return-void

    :cond_9
    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v4, :cond_c

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v9

    iget-object v4, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v4, Lexs;

    iget-object v4, v4, Lexs;->h:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    aput v3, v2, v9

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v10

    iget-object v4, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v4, Lexs;

    iget-object v4, v4, Lexs;->h:[F

    aget v4, v4, v10

    sub-float/2addr v3, v4

    aput v3, v2, v10

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v8

    iget-object v4, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v4, Lexs;

    iget-object v4, v4, Lexs;->h:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    aput v3, v2, v8

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v9

    mul-float v2, v2, v3

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v10

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v10

    mul-float v3, v3, v4

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget-object v7, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v8

    mul-float v4, v4, v7

    iget-object v7, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v7, Lexs;

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, v7, Lexs;->m:F

    iget-object v3, v7, Lexs;->l:Lexz;

    if-eqz v3, :cond_a

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Lexz;->a(Ljava/lang/Object;)V

    :cond_a
    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lexs;

    iget-wide v11, v3, Lexs;->f:J

    cmp-long v4, v11, v5

    if-eqz v4, :cond_b

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, v3, Lexs;->f:J

    sub-long/2addr v4, v6

    monitor-enter v2

    long-to-float v4, v4

    :try_start_0
    move-object v5, v2

    check-cast v5, Lexs;

    iget-object v5, v5, Lexs;->g:[F

    aget v6, v5, v9

    iget-object v7, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v9

    const v11, 0x3089705f    # 1.0E-9f

    mul-float v4, v4, v11

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    move-object v5, v2

    check-cast v5, Lexs;

    iget-object v5, v5, Lexs;->g:[F

    aget v6, v5, v10

    iget-object v7, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v10

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v10

    move-object v5, v2

    check-cast v5, Lexs;

    iget-object v5, v5, Lexs;->g:[F

    aget v6, v5, v8

    iget-object v7, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v8

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v8

    move-object v4, v2

    check-cast v4, Lexs;

    iget v4, v4, Lexs;->i:I

    add-int/2addr v4, v10

    move-object v5, v2

    check-cast v5, Lexs;

    iput v4, v5, Lexs;->i:I

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    :goto_4
    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v3, Lexs;->f:J

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Lexs;

    iget-object v2, v2, Lexs;->j:Leag;

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v3, v4, v5}, Leag;->d([FJ)V

    :cond_c
    return-void

    :pswitch_2
    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    iget-wide v3, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    check-cast v2, Lduv;

    invoke-virtual {v2, v3, v4, v0}, Lduv;->h(J[F)V

    return-void

    :pswitch_3
    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Ldtu;

    invoke-virtual {v2}, Ldtu;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Ldus;->a:Ljava/lang/Object;

    check-cast v2, Ldtu;

    invoke-virtual {v2, v0}, Ldtu;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_d
    return-void

    :cond_e
    :goto_5
    aget v10, v3, v10

    mul-float v10, v10, v5

    aget v3, v3, v8

    mul-float v3, v3, v5

    rem-float/2addr v3, v6

    cmpg-float v5, v3, v7

    if-gez v5, :cond_f

    add-float/2addr v3, v6

    :cond_f
    new-instance v5, Lgvy;

    invoke-direct {v5, v4, v10, v3}, Lgvy;-><init>(FFF)V

    iget-object v2, v2, Lgvz;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    check-cast v0, Lgvz;

    iget-object v0, v0, Lgvz;->h:Ljava/util/Set;

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_6
    if-ge v9, v2, :cond_10

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgvx;

    invoke-interface {v3, v5}, Lgvx;->b(Lgvy;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
