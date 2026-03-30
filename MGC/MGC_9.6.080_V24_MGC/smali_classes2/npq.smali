.class public final Lnpq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Liic;

.field private final b:Lpdf;

.field private final c:[F

.field private final d:[F

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:[F

.field private final i:Loxv;


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()V
    .locals 14

    goto/32 :goto_f

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v1, 0x1f

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lnpq;->b:Lpdf;

    nop

    nop

    nop

    const-string v1, "CameraPoseUtils#updateCameraPose"

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lnpq;->a:Liic;

    nop

    nop

    invoke-virtual {v0}, Liic;->h()[D

    move-result-object v0

    nop

    nop

    const/4 v1, 0x0

    nop

    move v2, v1

    nop

    nop

    nop

    :goto_a
    const/16 v3, 0x10

    nop

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_1

    nop

    nop

    nop

    aget-wide v3, v0, v2

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lnpq;->a:Liic;

    nop

    invoke-virtual {v0}, Liic;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :cond_0
    :try_start_2
    iget-object v3, p0, Lnpq;->c:[F

    nop

    nop

    nop

    nop

    aget-wide v4, v0, v2

    nop

    nop

    double-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    aput v4, v3, v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    goto :goto_a

    nop

    :cond_1
    iget-object v2, p0, Lnpq;->c:[F

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    const/high16 v4, -0x3d4c0000    # -90.0f

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v8, p0, Lnpq;->d:[F

    nop

    nop

    iget-object v10, p0, Lnpq;->h:[F

    nop

    nop

    nop

    nop

    nop

    iget-object v12, p0, Lnpq;->c:[F

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual {p0}, Lnpq;->g()[F

    move-result-object v0

    nop

    nop

    const/4 v2, 0x5

    nop

    aget v2, v0, v2

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

    nop

    nop

    double-to-float v2, v2

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v3

    nop

    nop

    nop

    nop

    float-to-double v3, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    neg-double v3, v3

    nop

    nop

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    nop

    double-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    nop

    cmpl-float v0, v0, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    cmpg-float v0, v2, v4

    nop

    nop

    if-gez v0, :cond_4

    nop

    nop

    nop

    const/16 v1, 0xb4

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    cmpg-float v0, v0, v1

    nop

    nop

    nop

    if-gez v0, :cond_5

    nop

    nop

    cmpg-float v0, v3, v4

    nop

    if-gez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x5a

    nop

    goto :goto_c

    nop

    :cond_3
    const/16 v1, 0x10e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_c
    iget-object v0, p0, Lnpq;->i:Loxv;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lpcg;->b(I)Lpcg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Lnpq;->i:Loxv;

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    :goto_d
    iget-boolean v0, p0, Lnpq;->f:Z

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lnpq;->e:Z

    nop

    nop

    iget-object v0, p0, Lnpq;->b:Lpdf;

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_6
    goto/32 :goto_7

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpdf;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lnpq;->c:[F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Loxv;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Lnpq;->f:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    iput-object v0, p0, Lnpq;->h:[F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v0, v0, [F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-static {}, Liic;->b()Liic;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iput-object v0, p0, Lnpq;->i:Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lnpq;->b:Lpdf;

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

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Lnpq;->g:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Lnpq;->e:Z

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

    :goto_16
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_17
    iput-object v1, p0, Lnpq;->d:[F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    new-array v1, v0, [F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

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

    :goto_1a
    iput-object v0, p0, Lnpq;->a:Liic;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnpq;->i:Loxv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lnpq;->a:Liic;

    nop

    nop

    nop

    invoke-virtual {v0}, Liic;->e()V

    const/4 v0, 0x0

    nop

    iput-boolean v0, p0, Lnpq;->g:Z

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lpnu;)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object p1

    nop

    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    move p1, v1

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lnpq;->f:Z

    nop

    nop

    iput-boolean v1, p0, Lnpq;->g:Z

    nop

    iget-object v2, p0, Lnpq;->h:[F

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    const/high16 v4, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object p1, p0, Lnpq;->a:Liic;

    nop

    nop

    invoke-virtual {p1}, Liic;->g()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    invoke-direct {p0}, Lnpq;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

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

    :goto_8
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

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

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
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

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lnpq;->e:Z

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
    return v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-exit p0

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
.end method

.method public final declared-synchronized e()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lnpq;->g:Z

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

    :goto_3
    throw v0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Landroid/hardware/SensorEvent;)Z
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    return p0

    nop

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

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lnpq;->g:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    goto/16 :goto_f

    nop

    nop

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lnpq;->b:Lpdf;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    sget-object v2, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->yuYjxagckZMnijm:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lnpq;->a:Liic;

    nop

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, [F

    nop

    nop

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    invoke-virtual {v0, v2, v3, v4}, Liic;->c([FJ)V

    iget-object p1, p0, Lnpq;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lnpq;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "CameraPoseUtils#SENSOR_GYROSCOPE"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lnpq;->a:Liic;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [F

    nop

    nop

    nop

    nop

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v4}, Liic;->d([FJ)V

    iget-object p1, p0, Lnpq;->b:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    :cond_3
    :goto_a
    iget-object p1, p0, Lnpq;->a:Liic;

    nop

    invoke-virtual {p1}, Liic;->g()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lnpq;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized g()[F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lnpq;->d:[F

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method
