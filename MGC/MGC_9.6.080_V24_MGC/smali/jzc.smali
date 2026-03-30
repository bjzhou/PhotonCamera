.class public final Ljzc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lhxr;
.implements Lpqs;


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Lnpq;

.field public c:Lrss;

.field public final d:Lpqv;

.field public final e:Lhze;

.field public final f:Lhze;

.field private final g:Lnpk;

.field private final h:Landroid/hardware/Sensor;

.field private final i:Landroid/hardware/Sensor;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lpdf;

.field private final l:[F

.field private m:I

.field private n:Lrss;


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(Lpnu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljzc;->b:Lnpq;

    nop

    invoke-virtual {v0, p1}, Lnpq;->c(Lpnu;)V

    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljzc;->c:Lrss;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpqv;Landroid/hardware/SensorManager;Lnpq;Lhze;Lhze;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljzc;->d:Lpqv;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljzc;->n:Lrss;

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

    :goto_3
    iput-object p1, p0, Ljzc;->h:Landroid/hardware/Sensor;

    nop

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

    :goto_4
    iput-object p3, p0, Ljzc;->b:Lnpq;

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

    nop

    :goto_5
    invoke-direct {p1}, Lnpk;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    iput-object p2, p0, Ljzc;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    new-instance p1, Lnpk;

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p5, p0, Ljzc;->f:Lhze;

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

    :goto_c
    iput-object p1, p0, Ljzc;->i:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_14
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p7, p0, Ljzc;->k:Lpdf;

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

    :goto_16
    iput-object p1, p0, Ljzc;->l:[F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array p1, p1, [F

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Ljzc;->m:I

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

    nop

    :goto_1c
    iput-object p6, p0, Ljzc;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Ljzc;->g:Lnpk;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p4, p0, Ljzc;->e:Lhze;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Ljzc;->c:Lrss;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    sget-object v0, Lrsa;->a:Lrsa;

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
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm()Lpci;
    .locals 3

    goto/32 :goto_3

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

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
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljzc;->h:Landroid/hardware/Sensor;

    nop

    iget-object v1, p0, Ljzc;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Ljzc;->i:Landroid/hardware/Sensor;

    nop

    iget-object v1, p0, Ljzc;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Ljzc;->d:Lpqv;

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lpqv;->b(Lpqs;)V

    new-instance v0, Ljso;

    nop

    nop

    nop

    const/16 v1, 0x9

    nop

    invoke-direct {v0, p0, v1}, Ljso;-><init>(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Ljzc;->m:I

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Ljzc;->m:I

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljzc;->b:Lnpq;

    nop

    invoke-virtual {v0}, Lnpq;->b()V

    iget-object v0, p0, Ljzc;->n:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p0, Ljzc;->n:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lows;

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    iput-object v0, p0, Ljzc;->n:Lrss;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lpnu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0, p1}, Ljzc;->19e596a3e324281407eb5c11093c0152m(Lpnu;)V

    iget p1, p0, Ljzc;->m:I

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    iget-object p1, p0, Ljzc;->n:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    xor-int/lit8 p1, p1, 0x1

    nop

    nop

    invoke-static {p1}, Lrrf;->x(Z)V

    new-instance p1, Lows;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Lows;-><init>()V

    invoke-direct {p0}, Ljzc;->d5484163cd8d335e6b17663474ff5f2bm()Lpci;

    move-result-object v0

    nop

    nop

    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljzc;->n:Lrss;

    nop

    nop

    nop

    :cond_0
    iget p1, p0, Ljzc;->m:I

    nop

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    iput p1, p0, Ljzc;->m:I

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop
.end method

.method public final synthetic d(Lpnu;Lfxj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1}, Lhst;->d(Lhxr;Lpnu;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljzc;->d:Lpqv;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpqv;->a()Lpcg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lpcg;->e:I

    nop

    nop

    nop

    iget-object v1, p0, Ljzc;->b:Lnpq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lnpq;->g()[F

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    aget v2, v1, v2

    nop

    nop

    nop

    nop

    nop

    float-to-double v2, v2

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    nop

    double-to-float v2, v2

    nop

    nop

    const/16 v3, 0x5a

    nop

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    nop

    aget v1, v1, v4

    nop

    nop

    nop

    nop

    nop

    neg-float v1, v1

    nop

    nop

    nop

    nop

    float-to-double v3, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_0
    const/16 v3, 0xb4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    aget v1, v1, v5

    nop

    nop

    nop

    nop

    neg-float v1, v1

    nop

    float-to-double v3, v1

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    :goto_5
    double-to-float v1, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_1
    const/16 v3, 0x10e

    nop

    nop

    nop

    if-ne v0, v3, :cond_2

    nop

    nop

    nop

    aget v1, v1, v4

    nop

    nop

    nop

    nop

    neg-float v1, v1

    nop

    nop

    nop

    nop

    nop

    float-to-double v3, v1

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    goto :goto_6

    nop

    nop

    :cond_2
    aget v1, v1, v5

    nop

    neg-float v1, v1

    nop

    nop

    nop

    nop

    float-to-double v3, v1

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    :goto_6
    neg-double v3, v3

    nop

    goto :goto_5

    nop

    :goto_7
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    new-array v3, v3, [F

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    aput v0, v3, v4

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    aput v2, v3, v0

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    aput v1, v3, v0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljzc;->f:Lhze;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljzc;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, v3}, Lhze;->f(J[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_e
    const v1, 0x12

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

    :goto_f
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 19

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, v1, Ljzc;->b:Lnpq;

    nop

    nop

    nop

    invoke-virtual {v0}, Lnpq;->g()[F

    move-result-object v0

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    aget v3, v0, v2

    nop

    float-to-double v3, v3

    nop

    nop

    const/4 v5, 0x5

    nop

    aget v5, v0, v5

    nop

    nop

    float-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0xa

    nop

    nop

    nop

    aget v7, v0, v7

    nop

    nop

    nop

    nop

    float-to-double v7, v7

    nop

    nop

    nop

    nop

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    nop

    add-double v11, v3, v9

    nop

    nop

    nop

    add-double v13, v11, v5

    nop

    nop

    add-double/2addr v13, v7

    nop

    move-wide v15, v3

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    nop

    nop

    nop

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    nop

    nop

    mul-double v13, v13, v17

    nop

    nop

    nop

    iget-object v4, v1, Ljzc;->g:Lnpk;

    nop

    iput-wide v13, v4, Lnpk;->d:D

    nop

    nop

    nop

    nop

    sub-double/2addr v11, v5

    nop

    sub-double/2addr v11, v7

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    mul-double v11, v11, v17

    nop

    iput-wide v11, v4, Lnpk;->a:D

    nop

    nop

    nop

    nop

    sub-double/2addr v9, v15

    nop

    nop

    nop

    add-double v11, v9, v5

    nop

    nop

    nop

    sub-double/2addr v11, v7

    nop

    nop

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    nop

    mul-double v11, v11, v17

    nop

    nop

    iput-wide v11, v4, Lnpk;->b:D

    nop

    nop

    sub-double/2addr v9, v5

    nop

    add-double/2addr v9, v7

    nop

    nop

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    nop

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    nop

    nop

    nop

    mul-double v5, v5, v17

    nop

    const/4 v7, 0x6

    nop

    nop

    nop

    aget v7, v0, v7

    nop

    const/16 v8, 0x9

    nop

    nop

    aget v8, v0, v8

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v7, v8

    nop

    nop

    nop

    iget-wide v8, v4, Lnpk;->a:D

    nop

    cmpg-double v10, v8, v2

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    if-ltz v10, :cond_0

    nop

    const/4 v10, 0x0

    nop

    goto :goto_2

    nop

    :cond_0
    move v10, v11

    nop

    :goto_2
    const/4 v12, 0x0

    nop

    cmpg-float v7, v7, v12

    nop

    nop

    nop

    if-ltz v7, :cond_1

    nop

    const/4 v7, 0x0

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    move v7, v11

    nop

    :goto_3
    if-eq v7, v10, :cond_2

    nop

    nop

    nop

    nop

    nop

    neg-double v8, v8

    nop

    :cond_2
    iput-wide v8, v4, Lnpk;->a:D

    nop

    nop

    const/16 v7, 0x8

    nop

    aget v7, v0, v7

    nop

    nop

    const/4 v8, 0x2

    nop

    aget v8, v0, v8

    nop

    nop

    sub-float/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    cmpg-float v7, v7, v12

    nop

    if-ltz v7, :cond_3

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    move v7, v11

    nop

    nop

    nop

    :goto_4
    iget-wide v8, v4, Lnpk;->b:D

    nop

    nop

    nop

    nop

    nop

    cmpg-double v10, v8, v2

    nop

    nop

    if-ltz v10, :cond_4

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_4
    move v10, v11

    nop

    :goto_5
    if-eq v7, v10, :cond_5

    nop

    nop

    neg-double v8, v8

    nop

    nop

    nop

    :cond_5
    iput-wide v8, v4, Lnpk;->b:D

    nop

    nop

    nop

    nop

    aget v7, v0, v11

    nop

    nop

    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v8

    nop

    nop

    nop

    sub-float/2addr v7, v0

    nop

    nop

    nop

    nop

    nop

    cmpg-float v0, v7, v12

    nop

    nop

    nop

    if-ltz v0, :cond_6

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_6
    move v0, v11

    nop

    :goto_6
    cmpg-double v2, v5, v2

    nop

    nop

    if-ltz v2, :cond_7

    nop

    const/4 v2, 0x0

    nop

    nop

    goto :goto_7

    nop

    :cond_7
    move v2, v11

    nop

    :goto_7
    if-eq v0, v2, :cond_8

    nop

    neg-double v5, v5

    nop

    nop

    :cond_8
    iput-wide v5, v4, Lnpk;->c:D

    nop

    nop

    nop

    nop

    iget-object v0, v1, Ljzc;->g:Lnpk;

    nop

    iget-object v2, v1, Ljzc;->l:[F

    nop

    nop

    nop

    invoke-static {v0, v2}, Lnzk;->L(Lnpk;[F)V

    iget-object v0, v1, Ljzc;->e:Lhze;

    nop

    iget-object v2, v1, Ljzc;->c:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    iget-object v4, v1, Ljzc;->l:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v4}, Lhze;->f(J[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    const v0, 0x17

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

    :goto_10
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_9
    goto/32 :goto_12

    nop

    :goto_11
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v1, v0}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v1, "CameraPoseFeatureExtractor:onSensorChanged"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljzc;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, v1}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljky;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Ljzc;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v0, 0x4

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

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
