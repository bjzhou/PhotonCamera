.class public final Lfjr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ldsu;
.implements Lknx;


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Limq;

.field public c:Lmqp;

.field public final d:Lknz;

.field public final e:Lduv;

.field public final f:Lduv;

.field private final g:Limk;

.field private final h:Landroid/hardware/Sensor;

.field private final i:Landroid/hardware/Sensor;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:[F

.field private l:I

.field private m:Lmqp;


# direct methods
.method public constructor <init>(Lknz;Landroid/hardware/SensorManager;Limq;Lduv;Lduv;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lfjr;->c:Lmqp;

    const/4 v1, 0x0

    iput v1, p0, Lfjr;->l:I

    iput-object v0, p0, Lfjr;->m:Lmqp;

    iput-object p2, p0, Lfjr;->a:Landroid/hardware/SensorManager;

    iput-object p3, p0, Lfjr;->b:Limq;

    iput-object p1, p0, Lfjr;->d:Lknz;

    iput-object p4, p0, Lfjr;->e:Lduv;

    iput-object p5, p0, Lfjr;->f:Lduv;

    iput-object p6, p0, Lfjr;->j:Ljava/util/concurrent/Executor;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lfjr;->k:[F

    new-instance p1, Limk;

    invoke-direct {p1}, Limk;-><init>()V

    iput-object p1, p0, Lfjr;->g:Limk;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lfjr;->h:Landroid/hardware/Sensor;

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lfjr;->i:Landroid/hardware/Sensor;

    return-void
.end method

.method private final declared-synchronized f()Lkad;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfjr;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lfjr;->h:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lfjr;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lfjr;->i:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lfjr;->d:Lknz;

    invoke-virtual {v0, p0}, Lknz;->b(Lknx;)V

    new-instance v0, Leym;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Leym;-><init>(Lfjr;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized g(Lkli;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfjr;->b:Limq;

    invoke-virtual {v0, p1}, Limq;->b(Lkli;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lfjr;->c:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfjr;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfjr;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lfjr;->b:Limq;

    invoke-virtual {v0}, Limq;->a()V

    iget-object v0, p0, Lfjr;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjr;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lfjr;->m:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfjr;->d:Lknz;

    invoke-virtual {v0}, Lknz;->a()Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    iget-object v1, p0, Lfjr;->b:Limq;

    invoke-virtual {v1}, Limq;->f()[F

    move-result-object v1

    const/4 v2, 0x6

    aget v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0x5a

    const/4 v4, 0x5

    if-ne v0, v3, :cond_0

    aget v1, v1, v4

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0xb4

    const/4 v5, 0x4

    if-ne v0, v3, :cond_1

    aget v1, v1, v5

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x10e

    if-ne v0, v3, :cond_2

    aget v1, v1, v4

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v1, v3

    goto :goto_0

    :cond_2
    aget v1, v1, v5

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v1, v3

    :goto_0
    int-to-float v0, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v2, v3, v0

    const/4 v0, 0x2

    aput v1, v3, v0

    iget-object v0, p0, Lfjr;->f:Lduv;

    iget-object v1, p0, Lfjr;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lduv;->h(J[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lkli;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lfjr;->g(Lkli;)V

    iget p1, p0, Lfjr;->l:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lfjr;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmoz;->p(Z)V

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    invoke-direct {p0}, Lfjr;->f()Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lfjr;->m:Lmqp;

    :cond_0
    iget p1, p0, Lfjr;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfjr;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic d(Lkli;Lcea;)V
    .locals 0

    invoke-static {p0, p1}, Ldst;->a(Ldsu;Lkli;)V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lfjr;->b:Limq;

    invoke-virtual {v0}, Limq;->f()[F

    move-result-object v0

    iget-object v2, v1, Lfjr;->g:Limk;

    const/4 v3, 0x0

    aget v4, v0, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v0, v6

    float-to-double v6, v6

    const/16 v8, 0xa

    aget v8, v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v4, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v12, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v8

    const-wide/16 v10, 0x0

    :try_start_1
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v18

    iput-wide v14, v2, Limk;->d:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v8

    :try_start_2
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v12, v12, v18

    iput-wide v12, v2, Limk;->a:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v4, v12, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v8

    :try_start_3
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v12, v12, v18

    iput-wide v12, v2, Limk;->b:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    :try_start_4
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    const/4 v6, 0x6

    aget v6, v0, v6

    const/16 v7, 0x9

    aget v7, v0, v7

    sub-float/2addr v6, v7

    iget-wide v7, v2, Limk;->a:D

    const/4 v9, 0x1

    cmpg-double v12, v7, v10

    if-ltz v12, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x0

    cmpg-float v6, v6, v13

    if-ltz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    if-eq v6, v12, :cond_2

    neg-double v7, v7

    goto :goto_2

    :cond_2
    :goto_2
    iput-wide v7, v2, Limk;->a:D

    const/16 v6, 0x8

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v8, v0, v7

    sub-float/2addr v6, v8

    cmpg-float v6, v6, v13

    if-ltz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    :goto_3
    iget-wide v14, v2, Limk;->b:D

    cmpg-double v8, v14, v10

    if-ltz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const/4 v8, 0x1

    :goto_4
    if-eq v6, v8, :cond_5

    neg-double v14, v14

    goto :goto_5

    :cond_5
    :goto_5
    iput-wide v14, v2, Limk;->b:D

    aget v6, v0, v9

    const/4 v8, 0x4

    aget v0, v0, v8

    sub-float/2addr v6, v0

    cmpg-float v0, v6, v13

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    const/4 v0, 0x1

    :goto_6
    cmpg-double v6, v4, v10

    if-ltz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    const/4 v6, 0x1

    :goto_7
    if-eq v0, v6, :cond_8

    neg-double v4, v4

    goto :goto_8

    :cond_8
    :goto_8
    iput-wide v4, v2, Limk;->c:D

    iget-object v0, v1, Lfjr;->g:Limk;

    iget-object v2, v1, Lfjr;->k:[F

    invoke-static {v9}, Lmoz;->e(Z)V

    iget-wide v4, v0, Limk;->a:D

    iget-wide v12, v0, Limk;->b:D

    iget-wide v14, v0, Limk;->c:D

    mul-double v16, v4, v4

    mul-double v18, v12, v12

    mul-double v20, v14, v14

    add-double v16, v16, v18

    add-double v16, v16, v20

    cmpl-double v6, v16, v10

    if-lez v6, :cond_a

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-wide/from16 v17, v4

    iget-wide v3, v0, Limk;->d:D

    cmpg-double v0, v3, v10

    if-gez v0, :cond_9

    neg-double v10, v7

    neg-double v3, v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    goto :goto_9

    :cond_9
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    :goto_9
    add-double/2addr v3, v3

    div-double/2addr v3, v7

    mul-double v7, v17, v3

    double-to-float v0, v7

    const/4 v5, 0x0

    aput v0, v2, v5

    mul-double v12, v12, v3

    double-to-float v0, v12

    aput v0, v2, v9

    mul-double v14, v14, v3

    double-to-float v0, v14

    const/4 v3, 0x2

    aput v0, v2, v3

    goto :goto_a

    :cond_a
    move-wide/from16 v17, v4

    add-double v4, v17, v17

    double-to-float v0, v4

    const/4 v3, 0x0

    aput v0, v2, v3

    add-double/2addr v12, v12

    double-to-float v0, v12

    aput v0, v2, v9

    add-double/2addr v14, v14

    double-to-float v0, v14

    const/4 v3, 0x2

    aput v0, v2, v3

    :goto_a
    iget-object v0, v1, Lfjr;->e:Lduv;

    iget-object v2, v1, Lfjr;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v1, Lfjr;->k:[F

    invoke-virtual {v0, v2, v3, v4}, Lduv;->h(J[F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lkab;)V
    .locals 0

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lfjr;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Levy;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Levy;-><init>(Lfjr;Landroid/hardware/SensorEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
