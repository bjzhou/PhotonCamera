.class public final Leik;
.super Ljava/lang/Object;

# interfaces
.implements Lekd;


# instance fields
.field private final A:Ljava/util/Map;

.field public final a:Lekg;

.field public final b:Lehn;

.field public c:D

.field public d:F

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:D

.field public g:D

.field public final h:[F

.field public i:Z

.field public final j:Lkrf;

.field public k:D

.field public final l:Lima;

.field public m:J

.field public n:I

.field public o:I

.field public p:D

.field public final q:Ljava/lang/Object;

.field public r:F

.field public s:Leii;

.field private final t:Lekh;

.field private final u:Lkog;

.field private v:D

.field private final w:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

.field private x:D

.field private y:D

.field private z:D


# direct methods
.method public constructor <init>(Lekh;Lekg;Lkrf;Lkog;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lehn;

    invoke-direct {v0}, Lehn;-><init>()V

    iput-object v0, p0, Leik;->b:Lehn;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leik;->c:D

    iput-wide v0, p0, Leik;->v:D

    new-instance v2, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    invoke-direct {v2}, Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;-><init>()V

    iput-object v2, p0, Leik;->w:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    const/4 v2, 0x0

    iput v2, p0, Leik;->d:F

    iput-wide v0, p0, Leik;->x:D

    iput-wide v0, p0, Leik;->f:D

    iput-wide v0, p0, Leik;->g:D

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Leik;->h:[F

    const/4 v2, 0x0

    iput-boolean v2, p0, Leik;->i:Z

    iput-wide v0, p0, Leik;->k:D

    new-instance v3, Lima;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lima;-><init>(I)V

    iput-object v3, p0, Leik;->l:Lima;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Leik;->m:J

    iput v2, p0, Leik;->n:I

    iput v2, p0, Leik;->o:I

    iput-wide v0, p0, Leik;->p:D

    iput-wide v0, p0, Leik;->y:D

    iput-wide v0, p0, Leik;->z:D

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leik;->q:Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Leij;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Leik;->A:Ljava/util/Map;

    iput-object p1, p0, Leik;->t:Lekh;

    iput-object p2, p0, Leik;->a:Lekg;

    iput-object p4, p0, Leik;->u:Lkog;

    iput-object p3, p0, Leik;->j:Lkrf;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Leij;->a:Leij;

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Leij;->b:Leij;

    const/high16 p2, 0x420c0000    # 35.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([FJ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Leik;->a:Lekg;

    iget-object v1, v1, Lekg;->d:Lejt;

    iget-object v2, v0, Leik;->w:Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;

    invoke-interface {v1, v2}, Lejt;->getTrackerStats(Lcom/google/android/apps/camera/imax/cyclops/capture/TrackerStats;)V

    iget-boolean v1, v0, Leik;->i:Z

    invoke-virtual {v0, v1}, Leik;->i(Z)V

    iget-object v1, v0, Leik;->a:Lekg;

    iget-object v1, v1, Lekg;->d:Lejt;

    invoke-interface {v1}, Lejt;->getCaptureProgress()F

    move-result v1

    iget v2, v0, Leik;->d:F

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    iput v1, v0, Leik;->d:F

    goto :goto_0

    :cond_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    iput v1, v0, Leik;->d:F

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    cmpl-float v5, v2, v3

    if-ltz v5, :cond_3

    cmpg-float v5, v4, v3

    if-ltz v5, :cond_4

    :cond_3
    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    cmpl-float v2, v4, v3

    if-ltz v2, :cond_5

    :cond_4
    iget-wide v2, v0, Leik;->c:D

    iput-wide v2, v0, Leik;->v:D

    :cond_5
    iget-object v2, v0, Leik;->s:Leii;

    if-nez v2, :cond_6

    return-void

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v4, v3

    if-gez v3, :cond_16

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-static {v2}, Llkj;->C(Ljava/lang/Object;)V

    iget-wide v3, v0, Leik;->y:D

    iget-wide v5, v0, Leik;->x:D

    sub-double/2addr v3, v5

    iput-wide v3, v0, Leik;->f:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    const/4 v7, 0x3

    const/4 v8, 0x0

    cmpl-double v9, v3, v5

    if-gtz v9, :cond_15

    iget-wide v3, v0, Leik;->y:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    cmpl-double v9, v3, v5

    if-lez v9, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v3, v0, Leik;->b:Lehn;

    iget-wide v4, v0, Leik;->z:D

    invoke-virtual {v3, v4, v5}, Lehn;->a(D)D

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, v0, Leik;->m:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_9

    iget-wide v11, v0, Leik;->k:D

    sub-double v11, v3, v11

    long-to-double v9, v9

    iput-wide v5, v0, Leik;->m:J

    iput-wide v3, v0, Leik;->k:D

    iget-object v5, v0, Leik;->l:Lima;

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v9

    double-to-float v6, v11

    invoke-virtual {v5, v6}, Lima;->a(F)V

    :cond_9
    iget-wide v5, v0, Leik;->c:D

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-wide v9, v0, Leik;->v:D

    iget-wide v11, v0, Leik;->c:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v11, v5, v9

    if-lez v11, :cond_a

    iput-wide v3, v0, Leik;->v:D

    goto :goto_2

    :cond_a
    move-wide v5, v9

    :goto_2
    iget-wide v9, v0, Leik;->v:D

    sub-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iput-wide v3, v0, Leik;->g:D

    const/4 v9, 0x5

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    cmpl-double v12, v5, v10

    if-lez v12, :cond_c

    cmpl-double v12, v3, v10

    if-gtz v12, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {v2, v9}, Leii;->a(I)V

    iget-object v1, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_c
    :goto_3
    iget-object v3, v0, Leik;->l:Lima;

    iget v3, v3, Lima;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x430c0000    # 140.0f

    const/4 v12, 0x6

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    invoke-interface {v2, v12}, Leii;->a(I)V

    iget-object v1, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_d
    iget-wide v3, v0, Leik;->p:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v13, 0x4032000000000000L    # 18.0

    const/4 v15, 0x4

    cmpl-double v16, v3, v13

    if-lez v16, :cond_e

    invoke-interface {v2, v15}, Leii;->a(I)V

    iget-object v1, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_e
    iget-object v3, v0, Leik;->A:Ljava/util/Map;

    invoke-virtual {v0, v3}, Leik;->h(Ljava/util/Map;)V

    iget-object v3, v0, Leik;->A:Ljava/util/Map;

    sget-object v4, Leij;->b:Leij;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_4

    :cond_f
    const/high16 v3, 0x420c0000    # 35.0f

    :goto_4
    invoke-virtual/range {p0 .. p0}, Leik;->f()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_10

    const/4 v7, 0x6

    goto :goto_5

    :cond_10
    iget-wide v3, v0, Leik;->p:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v8, v3, v12

    if-ltz v8, :cond_11

    const/4 v7, 0x4

    goto :goto_5

    :cond_11
    iget-wide v3, v0, Leik;->f:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v8, v3, v12

    if-gez v8, :cond_13

    iget-wide v3, v0, Leik;->y:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    cmpl-double v8, v3, v14

    if-lez v8, :cond_12

    goto :goto_5

    :cond_12
    const/4 v7, 0x1

    cmpl-double v3, v5, v10

    if-lez v3, :cond_13

    iget-wide v3, v0, Leik;->g:D

    cmpl-double v5, v3, v12

    if-lez v5, :cond_13

    const/4 v7, 0x5

    goto :goto_5

    :cond_13
    :goto_5
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    move-object v3, v2

    check-cast v3, Leio;

    iget-object v4, v3, Leio;->u:Licf;

    invoke-virtual {v3, v4}, Leio;->e(Licf;)V

    goto :goto_7

    :pswitch_1
    move-object v3, v2

    check-cast v3, Leio;

    iget-object v4, v3, Leio;->v:Licf;

    invoke-virtual {v3, v4}, Leio;->e(Licf;)V

    goto :goto_7

    :pswitch_2
    move-object v3, v2

    check-cast v3, Leio;

    iget-object v4, v3, Leio;->w:Licf;

    invoke-virtual {v3, v4}, Leio;->e(Licf;)V

    goto :goto_7

    :pswitch_3
    move-object v3, v2

    check-cast v3, Leio;

    iget-object v4, v3, Leio;->f:Leik;

    invoke-virtual {v4}, Leik;->k()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v3, Leio;->y:Licf;

    goto :goto_6

    :cond_14
    iget-object v4, v3, Leio;->x:Licf;

    :goto_6
    invoke-virtual {v3, v4}, Leio;->e(Licf;)V

    :goto_7
    check-cast v2, Leio;

    iput v1, v2, Leio;->p:F

    return-void

    :cond_15
    :goto_8
    invoke-interface {v2, v7}, Leii;->a(I)V

    iget-object v1, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_16
    :goto_9
    check-cast v2, Leio;

    iget-object v1, v2, Leio;->g:Ljuh;

    new-instance v3, Leer;

    const/16 v4, 0xd

    invoke-direct {v3, v2, v4}, Leer;-><init>(Leio;I)V

    invoke-virtual {v1, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(II)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(Lehu;)V
    .locals 0

    return-void
.end method

.method public final f()F
    .locals 1

    iget-object v0, p0, Leik;->l:Lima;

    iget v0, v0, Lima;->a:F

    return v0
.end method

.method public final g()F
    .locals 1

    iget-object v0, p0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Leik;->d:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Leik;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Leik;->r:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x420c0000    # 35.0f

    sub-float/2addr v2, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget-object v2, Leij;->a:Leij;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leij;->b:Leij;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Leik;->h:[F

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leik;->t:Lekh;

    iget-object v2, p0, Leik;->h:[F

    invoke-virtual {v1, v2}, Lekh;->e([F)V

    iget-object v1, p0, Leik;->t:Lekh;

    invoke-virtual {v1}, Lekh;->c()D

    move-result-wide v1

    iput-wide v1, p0, Leik;->y:D

    iget-object v1, p0, Leik;->t:Lekh;

    invoke-virtual {v1}, Lekh;->a()D

    move-result-wide v1

    iput-wide v1, p0, Leik;->z:D

    iget-object v1, p0, Leik;->t:Lekh;

    invoke-virtual {v1}, Lekh;->b()D

    move-result-wide v1

    iput-wide v1, p0, Leik;->p:D

    iget v1, p0, Leik;->n:I

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Leik;->u:Lkog;

    invoke-virtual {v1}, Lkog;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Leik;->o:I

    if-nez v1, :cond_1

    :cond_0
    iget-wide v1, p0, Leik;->p:D

    neg-double v1, v1

    iput-wide v1, p0, Leik;->p:D

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Leik;->i:Z

    iget-object p1, p0, Leik;->b:Lehn;

    iget-wide v1, p0, Leik;->z:D

    invoke-virtual {p1, v1, v2}, Lehn;->a(D)D

    move-result-wide v1

    iput-wide v1, p0, Leik;->c:D

    iput-wide v1, p0, Leik;->k:D

    iput-wide v1, p0, Leik;->v:D

    iget-wide v1, p0, Leik;->y:D

    iput-wide v1, p0, Leik;->x:D

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Leik;->n:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
