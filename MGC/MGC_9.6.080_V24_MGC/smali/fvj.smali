.class public final Lfvj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfvg;
.implements Lpcm;


# instance fields
.field private A:Z

.field private final B:Lowp;

.field private C:I

.field private final D:Lhoh;

.field public final a:Lhco;

.field public final b:Lknm;

.field public final c:Z

.field public d:Lnoa;

.field public e:Lnoa;

.field final f:Lfwh;

.field public g:Lsuu;

.field public h:Z

.field public final i:Lnpa;

.field public final j:Lnpb;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field public final m:Lqek;

.field private final n:Lowu;

.field private final o:Lows;

.field private final p:Lrss;

.field private final q:Loyd;

.field private r:Lpci;

.field private s:Z

.field private t:Landroid/graphics/PointF;

.field private u:Landroid/graphics/RectF;

.field private v:I

.field private w:I

.field private x:I

.field private final y:Loyd;

.field private final z:Lrss;


# direct methods
.method private final declared-synchronized 33b3102b6558811a7b7629a1e8e59bd2m(Llse;)Z
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    if-gt p1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iput v0, p0, Lfvj;->v:I

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1}, Llse;->b()Z

    move-result p1

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    iget p1, p0, Lfvj;->v:I

    nop

    const/4 v1, 0x1

    nop

    nop

    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    iput p1, p0, Lfvj;->v:I

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop
.end method

.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m(Lkmz;I)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :cond_0
    :goto_3
    :try_start_0
    iget p2, p1, Lkmz;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    const/16 v0, 0x8

    nop

    if-ne p2, v0, :cond_5

    nop

    nop

    iget-boolean p2, p0, Lfvj;->s:Z

    nop

    nop

    nop

    nop

    if-nez p2, :cond_5

    nop

    nop

    iget-object p2, p0, Lfvj;->p:Lrss;

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    check-cast p2, Lmrb;

    nop

    nop

    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lmrb;->n(Lmra;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_5

    nop

    nop

    nop

    iget-object p2, p0, Lfvj;->j:Lnpb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lnpb;->c()V

    iget-object p2, p0, Lfvj;->j:Lnpb;

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lnpb;->b(Landroid/graphics/RectF;)V

    iput-boolean v3, p0, Lfvj;->s:Z

    nop

    nop

    nop

    iget-object p2, p1, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lfvj;->t:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p1, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lfvj;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lmrb;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfvj;->m:Lqek;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lqek;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1, v0}, Lmrb;->h(Landroid/graphics/PointF;Lmra;)Loyd;

    move-result-object p1

    nop

    nop

    iget-object p2, p0, Lfvj;->r:Lpci;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Lpci;->close()V

    new-instance p2, Lfut;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v0}, Lfut;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lowu;->a:Lowv;

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    iput-object p1, p0, Lfvj;->r:Lpci;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    :cond_2
    throw v1

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

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_2
    iget-object v0, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    goto/16 :goto_c

    nop

    :cond_3
    iget v0, p1, Lkmz;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    if-ne v0, v2, :cond_0

    nop

    iget-boolean v0, p0, Lfvj;->s:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lmrb;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lmrb;->n(Lmra;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lnpa;->b()V

    iget-object v0, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    nop

    nop

    int-to-float p2, p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Lnpa;->a(F)V

    iput-boolean v3, p0, Lfvj;->s:Z

    nop

    nop

    nop

    nop

    iget-object p2, p1, Lkmz;->a:Landroid/graphics/PointF;

    nop

    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    invoke-direct {v0, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lfvj;->t:Landroid/graphics/PointF;

    nop

    nop

    iget-object p2, p1, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    new-instance v0, Landroid/graphics/RectF;

    nop

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lfvj;->u:Landroid/graphics/RectF;

    nop

    nop

    iget-object p2, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    check-cast p2, Lmrb;

    nop

    nop

    iget-object v0, p0, Lfvj;->m:Lqek;

    nop

    iget-object p1, p1, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lqek;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    nop

    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    invoke-virtual {p2, p1, v0}, Lmrb;->h(Landroid/graphics/PointF;Lmra;)Loyd;

    move-result-object p1

    nop

    iget-object p2, p0, Lfvj;->r:Lpci;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Lpci;->close()V

    new-instance p2, Lfut;

    nop

    const/4 v0, 0x6

    nop

    invoke-direct {p2, p0, v0}, Lfut;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lowu;->a:Lowv;

    nop

    nop

    nop

    invoke-interface {p1, p2, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lfvj;->r:Lpci;

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :cond_5
    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lnoa;->c()V

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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
    if-nez p0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lnoa;->c()V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfvj;->d:Lnoa;

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
.end method

.method public constructor <init>(Lowu;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lhco;Lhoh;Lknm;Lrss;Loyd;Loyd;Lnxc;Loyn;Ljava/util/concurrent/ScheduledExecutorService;Lrss;Loyd;Lpnu;)V
    .locals 14

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-interface {v9, v1, v2}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v7, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_f

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4
    iput-object v9, v0, Lfvj;->t:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5
    iput-object v9, v0, Lfvj;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    invoke-virtual {v2, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_8
    iput-object v3, v0, Lfvj;->b:Lknm;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v7, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_44

    nop

    nop

    :goto_a
    iput-boolean v10, v0, Lfvj;->A:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Lfvj;->q:Loyd;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v9, v0, Lfvj;->i:Lnpa;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v9, v0, Lfvj;->m:Lqek;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lfvi;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v11}, Lknm;->b(Z)V

    goto/32 :goto_55

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-direct {v9, p0, v11}, Lfvq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v9, p6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v9, v12}, Lqek;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, p0, v6, v5, v10}, Lfvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v13, 0xd

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v9, v0, Lfvj;->r:Lpci;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    new-instance v9, Lnpb;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v7, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v2, v0, Lfvj;->D:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v7}, Lows;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lhmp;->f:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v8, v0, Lfvj;->d:Lnoa;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v9, p3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v9, p0, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v11, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_22
    iput-object v9, v0, Lfvj;->B:Lowp;

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

    :goto_23
    invoke-interface {v4, v1}, Lnxc;->k(Lnxb;)V

    goto/32 :goto_5f

    nop

    nop

    :goto_24
    invoke-direct {v9}, Lfwh;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v9, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    move-object/from16 v6, p12

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v10, v0, Lfvj;->h:Z

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v9, v0, Lfvj;->a:Lhco;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    invoke-direct {v9, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p0, v6, v5}, Lfvi;-><init>(Lfvj;Lrss;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v9, v0, Lfvj;->y:Loyd;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2e
    move-object/from16 v5, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2f
    iput-object v9, v0, Lfvj;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    iput v1, v0, Lfvj;->x:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_31
    iput-object v8, v0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_32
    move-object/from16 v9, p2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_33
    iput-object v6, v0, Lfvj;->z:Lrss;

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_34
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_35
    iput-object v1, v0, Lfvj;->n:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v9, v0, Lfvj;->p:Lrss;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v12, v0, Lfvj;->C:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_38
    new-instance v9, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    const/4 v12, 0x2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v9, v13}, Lncl;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v9, Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3c
    new-instance v9, Lncl;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, -0x1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v4, p9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface/range {p14 .. p14}, Lpnu;->G()Z

    goto/32 :goto_3b

    nop

    nop

    :goto_40
    iput-object v9, v0, Lfvj;->f:Lfwh;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-boolean v1, v0, Lfvj;->c:Z

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_42
    iput-object v9, v0, Lfvj;->j:Lnpb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v10, v0, Lfvj;->v:I

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v1, p8

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

    :goto_46
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_47
    new-instance v9, Lqek;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_48
    new-instance v9, Lfvq;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v7, Lows;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0, v4, v1, v11, v8}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2

    nop

    nop

    :goto_4b
    const v0, 0x18

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

    :goto_4c
    iput-object v7, v0, Lfvj;->o:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Lfvh;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v2, Lstd;->a:Lstd;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v9, Lfwh;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_50
    invoke-direct {v9, v13, v13}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_4

    nop

    nop

    :goto_51
    iput-boolean v10, v0, Lfvj;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_52
    invoke-direct {v9, v12}, Lnpb;-><init>(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_53
    move-object/from16 v9, p10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_54
    invoke-direct {v9, v12}, Lnpa;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_57
    iput v10, v0, Lfvj;->w:I

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

    :goto_58
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    :goto_59
    iput-object v9, v0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v9, p13

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5b
    move-object/from16 v9, p7

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

    nop

    :goto_5c
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5d
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_49

    nop

    nop

    :goto_5f
    new-instance v0, Lfyz;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_10

    nop

    nop

    :goto_62
    invoke-interface/range {p14 .. p14}, Lpnu;->g()I

    move-result v12

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method private final declared-synchronized b1051a9d8893542362ad09051775f8f6m(Landroid/graphics/PointF;)Z
    .locals 5

    goto/32 :goto_15

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

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

    nop

    :try_start_0
    iget-boolean v0, p0, Lfvj;->s:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    :goto_9
    :try_start_1
    invoke-virtual {p0}, Lfvj;->e()Z

    move-result v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    :goto_b
    :try_start_2
    iget-object v0, p0, Lfvj;->t:Landroid/graphics/PointF;

    nop

    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    iget v3, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    sub-float/2addr v0, v3

    nop

    nop

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfvj;->t:Landroid/graphics/PointF;

    nop

    nop

    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    sub-float/2addr v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    iget-object v3, p0, Lfvj;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    const v4, 0x3df5c28f    # 0.12f

    nop

    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    cmpg-float v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lfvj;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    mul-float/2addr v0, v4

    nop

    cmpg-float p1, p1, v0

    nop

    if-gtz p1, :cond_2

    nop

    nop

    nop

    iget p1, p0, Lfvj;->w:I

    nop

    add-int/2addr p1, v2

    nop

    nop

    nop

    iput p1, p0, Lfvj;->w:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lmrb;

    nop

    nop

    nop

    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lmrb;->m(Lmra;)V

    iput-boolean v1, p0, Lfvj;->s:Z

    nop

    iput v1, p0, Lfvj;->w:I

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfvj;->e()Z

    move-result p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    return p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xf

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xc

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
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfvj;->i(Lmhz;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i()Lnoa;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfvj;->d:Lnoa;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_7
    new-instance v1, Lfux;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Lnoa;->c()V

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, v2}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lnoa;->b(Lnnz;)V

    :goto_13
    goto/32 :goto_22

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

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

    :goto_15
    iget-boolean v0, p0, Lfvj;->c:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j()Lnoa;

    move-result-object v0

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

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

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    :goto_1c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lfvj;->c:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_4
    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    :goto_24
    iget-object v0, p0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfvj;->b:Lknm;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    invoke-virtual {v0, v1}, Lknm;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    const v0, 0xd

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

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lknm;->b(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfvj;->o:Lows;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lfvj;->b:Lknm;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfvj;->r:Lpci;

    nop

    invoke-interface {v0}, Lpci;->close()V

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_e
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Lmra;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lfvj;->b:Lknm;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lknm;->b(Z)V

    sget-object v0, Lmra;->c:Lmra;

    nop

    nop

    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->n:Lowu;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lesy;

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    invoke-direct {v1, v0, v2}, Lesy;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lowu;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v0, 0x1b

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop
.end method

.method public final declared-synchronized e()Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

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
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lfvj;->s:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lfvj;->w:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return p0

    nop

    :cond_0
    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x5

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
    throw v0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    return p0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    if-gt v0, v1, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Loxv;

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

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfvj;->y:Loyd;

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

    :goto_6
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

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

    :goto_b
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final g(Lrss;Landroid/graphics/RectF;)Z
    .locals 9

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_0
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_1
    div-int/lit8 v0, v0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_6
    div-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_9
    div-int/lit8 v6, v6, 0x2

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v8, v3

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_b
    float-to-int v7, v7

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setY(F)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_d
    sub-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    return p1

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    :goto_12
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_16
    sub-float/2addr v6, v1

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

    :goto_17
    invoke-virtual {v4, v6}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v5, v2, v8

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    div-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    float-to-int v3, v6

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float v3, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_21
    mul-float/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_22
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    div-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    :goto_25
    div-float/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_28
    mul-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_2a
    add-float v6, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    sub-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_2e
    iget v2, p2, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2f
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_30
    iget v2, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-float/2addr v7, v0

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b9

    nop

    nop

    :goto_33
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_34
    div-float/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_36
    iget v3, p2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    div-int/lit8 v6, v6, 0x2

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_118

    nop

    nop

    :goto_3b
    sub-float/2addr v7, v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_3f
    add-float/2addr v6, v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_40
    div-float/2addr v7, v3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_41
    div-float v4, v0, v3

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4, v6}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v5, p1

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v4, v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sub-float/2addr v2, v4

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_49
    div-float/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_4a
    add-float/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4d
    add-float/2addr v8, v2

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

    :goto_4e
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p1, Lrsx;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_56
    sub-float/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_57
    iget p2, p2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_58
    mul-float/2addr v5, p1

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5c
    div-int/lit8 v0, v0, 0x2

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

    :goto_5d
    sub-float/2addr v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    float-to-int v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v4, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v6, Lnbh;->b:Lnbh;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    cmpl-float v2, v5, v6

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_65
    sub-float/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

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

    :goto_67
    iput v0, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_68
    float-to-int v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_69
    add-float/2addr v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6a
    div-float/2addr v6, v3

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6d
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_6f
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_71
    goto/32 :goto_30

    nop

    nop

    :goto_72
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_75
    int-to-float v4, v4

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    float-to-int v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_78
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_7
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_79
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_7b
    int-to-float v4, v4

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sub-float/2addr v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_7d
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7e
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v7

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_7f
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_80
    iget v4, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_82
    add-float/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setVisibility(I)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_84
    new-instance v4, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_87
    int-to-float p1, p1

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_88
    div-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    mul-float/2addr v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_8b
    cmpg-float v4, v5, v4

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    float-to-int v8, v8

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

    :goto_8f
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_90
    float-to-int v2, v4

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_91
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v5, :cond_8

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_93
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_94
    mul-int/lit8 v4, v4, 0x4

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_95
    int-to-float p1, p1

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_98
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_cf

    nop

    :goto_9a
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_9b
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9c
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_9d
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_a0
    div-float/2addr v4, v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a1
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_103

    nop

    :goto_a2
    iget-object v1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_a3
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a6
    add-float/2addr v3, v0

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

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

    :goto_a8
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_a9
    goto/16 :goto_e7

    nop

    nop

    :goto_aa
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct {v7, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_ad
    sub-float/2addr v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_af
    if-nez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_a
    goto/32 :goto_e2

    nop

    nop

    :goto_b0
    div-float/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_b1
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_b2
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_b3
    int-to-float v4, v4

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_b5
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sub-float/2addr v6, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b7
    if-lez v4, :cond_b

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_b9
    iget-object p0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_bb
    float-to-int v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_bc
    add-float/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_bd
    div-float/2addr v7, v3

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_be
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_bf
    mul-float/2addr v2, v5

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    add-float/2addr v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    cmpl-float v5, v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_c3
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_c5
    add-float/2addr v8, v2

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_c6
    div-float/2addr v6, v3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    div-float/2addr v7, v3

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

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

    :goto_c9
    sub-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_ca
    sub-float/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_cb
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

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

    :goto_cd
    div-float/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_cf
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    cmpl-float v2, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_d3
    mul-float/2addr v2, v4

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

    :goto_d4
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_d6
    sub-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    float-to-int v4, v4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    cmpl-float v4, v2, v8

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_dc
    float-to-int v0, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_dd
    new-instance v7, Landroid/graphics/RectF;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {p2, v2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setX(F)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_df
    cmpl-float v2, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_e0
    sub-float/2addr v4, v5

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_e1
    float-to-int v1, v3

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_e2
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget v1, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e5
    sub-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e6
    if-gtz v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_e7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iput v0, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_e9
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_eb
    float-to-int v3, v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_ec
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    sget-object v6, Lnbh;->c:Lnbh;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v7

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_f0
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_f2
    goto/16 :goto_cf

    nop

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_85

    nop

    nop

    :goto_f4
    if-gtz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_d
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_f7
    iget v2, p2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    div-float/2addr v8, v3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_fa
    float-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_fb
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_fc
    int-to-float v4, v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_fe
    div-float v5, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_100
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_101
    sub-float/2addr v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_102
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_1d

    nop

    nop

    :goto_105
    add-float/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_106
    div-float/2addr v8, v3

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_107
    check-cast p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_109
    sub-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_10a
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_10b
    invoke-direct {v1, v2, v0, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    float-to-int v4, v4

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->invalidate()V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    int-to-float v2, v2

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_111
    sget-object v6, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_112
    int-to-float v6, v6

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_113
    int-to-float v8, v8

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_114
    add-float v5, v2, v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    sub-float/2addr v8, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_117
    float-to-int v2, v4

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

    :goto_118
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    :goto_119
    goto/32 :goto_120

    nop

    nop

    :goto_11a
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_11b
    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_11c
    float-to-int v2, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11d
    sub-float/2addr v7, v0

    nop

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

    :goto_11e
    float-to-int v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_11f
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_120
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Lnbh;

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_121
    int-to-float v3, v3

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

    :goto_122
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_123
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_104

    nop

    nop

    :goto_126
    add-float/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_127
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_129
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_12a
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_f2

    nop

    nop

    :goto_12c
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_12d
    invoke-static {v7, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_12e
    float-to-int v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    add-float/2addr v4, v0

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v4, v6}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    float-to-int v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_135
    add-float/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    if-gtz v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_137
    add-float/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_138
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    goto/16 :goto_e7

    nop

    :goto_13a
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_13b
    const v6, 0x3f6e147b    # 0.93f

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Lnbh;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    mul-float/2addr v2, v5

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_13e
    mul-float/2addr v5, p1

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_13f
    add-float/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    sub-float/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_141
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lrss;I)Z
    .locals 6

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

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

    :goto_2
    invoke-interface {p2, p1}, Liac;->n(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    :goto_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-interface {p2, v4}, Liac;->o(I)V

    goto/32 :goto_19

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
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

    nop

    :goto_a
    const/16 p2, 0x168

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v2}, Liac;->m(F)V

    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    :goto_11
    invoke-interface {p2, v4}, Liac;->o(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    const p2, 0x7f070064

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v5, v5}, Liac;->g(FF)V

    goto/32 :goto_3d

    nop

    nop

    :goto_16
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    const v1, 0x15

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    :goto_26
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q(Lrss;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    :goto_2d
    iget-object v0, p0, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2e
    const p2, 0x7f070686

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1f

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_31
    invoke-interface {p2, v3}, Liac;->j(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_35

    nop

    :goto_33
    goto/32 :goto_2d

    nop

    nop

    :goto_34
    return v1

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_36
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1, v5, v5}, Liac;->g(FF)V

    goto/32 :goto_44

    nop

    nop

    :goto_39
    invoke-interface {p2, p1}, Liac;->n(F)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lnob;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v5, 0x0

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

    nop

    :goto_3d
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q(Lrss;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o()V

    goto/32 :goto_3a

    nop

    nop

    :goto_40
    invoke-interface {p1}, Lnob;->a()Lnoa;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

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

    :goto_45
    invoke-interface {p1, v2}, Liac;->m(F)V

    goto/32 :goto_1f

    nop

    nop

    :goto_46
    iget-boolean v0, p0, Lfvj;->c:Z

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x0

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

    :goto_48
    const/4 v4, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return v4

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p2, v3}, Liac;->j(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(Lmhz;)V
    .locals 12

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    throw v6

    nop

    :goto_1
    throw v6

    nop

    nop

    nop

    nop

    :cond_1
    throw v6

    nop

    nop

    nop

    nop

    :cond_2
    monitor-enter p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean p1, p0, Lfvj;->h:Z

    nop

    nop

    nop

    nop

    if-nez p1, :cond_19

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_26

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_3
    :goto_4
    goto/32 :goto_2a

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :cond_4
    :goto_7
    :try_start_3
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    nop

    iget v2, v2, Lnpa;->a:F

    nop

    nop

    nop

    nop

    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v2}, Lfvj;->h(Lrss;I)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    goto/16 :goto_4

    nop

    :cond_5
    :goto_8
    iput-boolean v1, p0, Lfvj;->h:Z

    nop

    iget-object v0, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lnpa;->a:F

    nop

    nop

    nop

    float-to-int v0, v0

    nop

    nop

    check-cast p1, Lkmz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0}, Lfvj;->3fd9578e124c68aa49885b22b61b4ec8m(Lkmz;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1

    nop

    nop

    nop

    nop

    :cond_6
    sget-object p1, Lhmm;->a:Lhmn;

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v3, v10, :cond_8

    nop

    goto/32 :goto_10

    nop

    :cond_8
    :try_start_7
    iget-object v2, p0, Lfvj;->j:Lnpb;

    nop

    nop

    move-object v3, p1

    nop

    nop

    check-cast v3, Lkmz;

    nop

    nop

    nop

    iget-object v3, v3, Lkmz;->b:Landroid/graphics/RectF;

    nop

    invoke-virtual {v2, v3}, Lnpb;->b(Landroid/graphics/RectF;)V

    :goto_10
    iget-boolean v2, p0, Lfvj;->h:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    move-object v2, p1

    nop

    nop

    check-cast v2, Lkmz;

    nop

    iget v2, v2, Lkmz;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v10, :cond_b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    move-object v2, p1

    nop

    check-cast v2, Lkmz;

    nop

    nop

    nop

    iget-object v2, v2, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    invoke-direct {p0, v2}, Lfvj;->b1051a9d8893542362ad09051775f8f6m(Landroid/graphics/PointF;)Z

    move-result v2

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_a
    throw v6

    nop

    :cond_b
    :goto_11
    check-cast v0, Lkna;

    nop

    nop

    iget-object v0, v0, Lkna;->b:Llse;

    nop

    nop

    sget-object v2, Llse;->b:Llse;

    nop

    nop

    nop

    nop

    if-eq v0, v2, :cond_d

    nop

    nop

    move-object v0, p1

    nop

    check-cast v0, Lkmz;

    nop

    nop

    nop

    nop

    iget v0, v0, Lkmz;->d:I

    nop

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    if-eq v0, v5, :cond_d

    nop

    nop

    if-eq v0, v10, :cond_d

    nop

    nop

    nop

    nop

    if-ne v0, v4, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_c
    throw v6

    nop

    nop

    nop

    :cond_d
    :goto_12
    iget-object v0, p0, Lfvj;->a:Lhco;

    nop

    new-instance v2, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhco;->a()Lpog;

    move-result-object v0

    nop

    sget-object v3, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    check-cast v0, Lkmz;

    nop

    iget-object v0, v0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    sub-float/2addr v3, v0

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_e
    move-object v0, p1

    nop

    nop

    nop

    nop

    check-cast v0, Lkmz;

    nop

    nop

    iget-object v0, v0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget v3, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p1

    nop

    nop

    check-cast v0, Lkmz;

    nop

    nop

    nop

    iget-object v0, v0, Lkmz;->a:Landroid/graphics/PointF;

    nop

    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, p1

    nop

    nop

    check-cast v0, Lkmz;

    nop

    nop

    nop

    nop

    iget v0, v0, Lkmz;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v10, :cond_f

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    move-object v2, p1

    nop

    nop

    check-cast v2, Lkmz;

    nop

    nop

    iget-object v2, v2, Lkmz;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v2}, Lfvj;->g(Lrss;Landroid/graphics/RectF;)Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_f
    iget-boolean v3, p0, Lfvj;->c:Z

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    if-ne v0, v4, :cond_1d

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    iget-object v2, p0, Lfvj;->i:Lnpa;

    nop

    iget v2, v2, Lnpa;->a:F

    nop

    nop

    iget-object v2, p0, Lfvj;->e:Lnoa;

    nop

    if-nez v2, :cond_10

    nop

    nop

    nop

    iget-object v2, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    iget-object v3, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    invoke-interface {v3, v4}, Loyn;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    const/16 v3, 0x168

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q(Lrss;I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    const v3, 0x7f070686

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    iget-object v3, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Liac;->o(I)V

    iget-object v3, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    invoke-interface {v3, v9}, Liac;->j(I)V

    iget-object v3, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Liac;->n(F)V

    iget-object v0, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Liac;->m(F)V

    iget-object v0, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    const/4 v3, 0x0

    nop

    invoke-interface {v0, v3, v3}, Liac;->g(FF)V

    iget-object v0, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    iget-object v0, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_8

    nop

    nop

    :cond_10
    invoke-direct {p0}, Lfvj;->51550bab6b6440a4fd45f825c221b363m()V

    iget-object p1, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :cond_11
    :try_start_8
    iget-object v0, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v3, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_1f

    nop

    iget-object v3, p0, Lfvj;->f:Lfwh;

    nop

    nop

    nop

    nop

    check-cast v0, Lkna;

    nop

    nop

    nop

    iget-object v0, v0, Lkna;->b:Llse;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Lfwh;->b(Llse;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Lkna;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lkna;->d:Lrss;

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lkmz;

    nop

    nop

    iget-object v3, v3, Lkmz;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lfvj;->a:Lhco;

    nop

    invoke-virtual {v4}, Lhco;->a()Lpog;

    move-result-object v4

    nop

    nop

    sget-object v5, Lpog;->a:Lpog;

    nop

    if-ne v4, v5, :cond_12

    nop

    sget-object v2, Lhmm;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    move v2, v1

    nop

    nop

    :cond_12
    iget-object v4, p1, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Lkna;

    nop

    iget-object v4, v4, Lkna;->b:Llse;

    nop

    nop

    sget-object v5, Llse;->b:Llse;

    nop

    if-eq v4, v5, :cond_14

    nop

    nop

    iget-object v4, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Lkna;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkna;->b:Llse;

    nop

    nop

    sget-object v5, Llse;->b:Llse;

    nop

    if-ne v4, v5, :cond_14

    nop

    nop

    iget-object v4, p0, Lfvj;->g:Lsuu;

    nop

    nop

    if-nez v4, :cond_14

    nop

    nop

    nop

    invoke-direct {p0}, Lfvj;->51550bab6b6440a4fd45f825c221b363m()V

    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    iget-object v6, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w(Lrss;)Lnoa;

    move-result-object v4

    nop

    iput-object v4, p0, Lfvj;->d:Lnoa;

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_13
    iget-object v4, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w(Lrss;)Lnoa;

    move-result-object v4

    nop

    nop

    iput-object v4, p0, Lfvj;->d:Lnoa;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v4, p0, Lfvj;->d:Lnoa;

    nop

    nop

    new-instance v5, Lfux;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v6}, Lfux;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Lnoa;->b(Lnnz;)V

    iget-object v4, p0, Lfvj;->d:Lnoa;

    nop

    nop

    nop

    if-eqz v4, :cond_14

    nop

    new-instance v4, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Lsuu;-><init>()V

    iput-object v4, p0, Lfvj;->g:Lsuu;

    nop

    nop

    iget-object v4, p0, Lfvj;->d:Lnoa;

    nop

    nop

    nop

    invoke-interface {v4}, Lnoa;->a()Lsui;

    move-result-object v4

    nop

    nop

    iget-object v5, p0, Lfvj;->g:Lsuu;

    nop

    nop

    iget-object v6, p0, Lfvj;->B:Lowp;

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lfvj;->n:Lowu;

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v6, v7}, Lolx;->bo(Lsui;Lsui;Lowp;Ljava/util/concurrent/Executor;)V

    :cond_14
    if-nez v0, :cond_1e

    nop

    iget-object v0, p0, Lfvj;->g:Lsuu;

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    iget-object p1, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Lkna;

    nop

    nop

    nop

    nop

    nop

    iget p1, p1, Lkna;->e:I

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    nop

    nop

    int-to-float p1, p1

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x(F)V

    iget p1, v1, Landroid/graphics/PointF;->x:F

    nop

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getX()F

    move-result v2

    nop

    nop

    sub-float/2addr p1, v2

    nop

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    int-to-float v2, v2

    nop

    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    iget-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getY()F

    move-result v3

    nop

    nop

    nop

    sub-float/2addr v1, v3

    nop

    iget-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    int-to-float v3, v3

    nop

    iget-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    const/high16 v5, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v2, v5

    nop

    nop

    nop

    nop

    sub-float/2addr p1, v2

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v3, v5

    nop

    sub-float/2addr v1, v3

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x21

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

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

    :goto_17
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_15
    :try_start_9
    iget-object v0, p0, Lfvj;->b:Lknm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lknm;->d()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    iget-object v0, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_11

    nop

    nop

    iget-object v0, p0, Lfvj;->z:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lhxc;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhxc;->i()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    iget-object v0, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lfvj;->51550bab6b6440a4fd45f825c221b363m()V

    iget-object v3, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lhxc;

    nop

    invoke-virtual {v3}, Lhxc;->j()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_16

    nop

    iget-object v3, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l()V

    :cond_16
    iget-object v3, p0, Lfvj;->f:Lfwh;

    nop

    check-cast v0, Lkna;

    nop

    nop

    nop

    iget-object v0, v0, Lkna;->b:Llse;

    nop

    invoke-virtual {v3, v0}, Lfwh;->b(Llse;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Lkna;

    nop

    nop

    nop

    iget v3, v3, Lkna;->c:F

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lmhz;->b:Ljava/lang/Object;

    nop

    check-cast p1, Lkna;

    nop

    nop

    nop

    iget p1, p1, Lkna;->c:F

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v3, p1

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->D:Lhoh;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhmp;->g:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    cmpl-float p1, v3, p1

    nop

    nop

    if-lez p1, :cond_17

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lfvj;->A:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_17
    iget-object p1, p0, Lfvj;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_18

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    iget-boolean p1, p1, Lhxc;->b:Z

    nop

    nop

    nop

    if-nez p1, :cond_18

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->g()V

    :cond_18
    :goto_19
    if-eqz v0, :cond_3

    nop

    iget-boolean p1, p0, Lfvj;->A:Z

    nop

    nop

    if-eqz p1, :cond_3

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lhxc;

    nop

    iget-boolean p1, p1, Lhxc;->b:Z

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iput-boolean v2, p0, Lfvj;->A:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    invoke-virtual {p1}, Lhxc;->j()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->e()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_19
    :try_start_a
    iget-object p1, p0, Lfvj;->r:Lpci;

    nop

    nop

    nop

    invoke-interface {p1}, Lpci;->close()V

    iget-object p1, p0, Lfvj;->p:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lmrb;

    nop

    nop

    nop

    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lmrb;->m(Lmra;)V

    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-boolean p1, p0, Lfvj;->h:Z

    nop

    nop

    nop

    if-eqz p1, :cond_1c

    nop

    iget p1, p0, Lfvj;->C:I

    nop

    nop

    nop

    if-eqz p1, :cond_1b

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_1a

    nop

    nop

    nop

    nop

    if-eq p1, v5, :cond_1a

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v4, :cond_1c

    nop

    nop

    nop

    nop

    :cond_1a
    invoke-virtual {p0}, Lfvj;->b()V

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1c

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->d()V

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    throw v6

    nop

    nop

    :cond_1c
    :goto_1b
    monitor-exit p0

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-object p1, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    iput-boolean v2, p0, Lfvj;->h:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lfvj;->s:Z

    nop

    nop

    iput v2, p0, Lfvj;->w:I

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    invoke-virtual {p1}, Lnpa;->b()V

    iget-object p1, p0, Lfvj;->j:Lnpb;

    nop

    nop

    nop

    invoke-virtual {p1}, Lnpb;->c()V

    monitor-exit p0

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :cond_1e
    :try_start_d
    iget-object p1, p0, Lfvj;->g:Lsuu;

    nop

    if-eqz p1, :cond_3

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    invoke-virtual {p1, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->d()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    monitor-enter p0

    nop

    nop

    :try_start_e
    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lkna;

    nop

    nop

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->bm(Ljava/lang/Object;)V

    iget-object v0, p0, Lfvj;->y:Loyd;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2a

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lhxc;

    nop

    nop

    invoke-virtual {p1}, Lhxc;->h()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :cond_1f
    :try_start_f
    iget-object p1, p0, Lfvj;->a:Lhco;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    nop

    nop

    sget-object v3, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    if-eq p1, v3, :cond_6

    nop

    iget-object p1, p0, Lfvj;->i:Lnpa;

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Lkna;

    nop

    iget v3, v3, Lkna;->e:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v3, v3

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Lnpa;->a(F)V

    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lkna;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lkna;->b:Llse;

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfvj;->33b3102b6558811a7b7629a1e8e59bd2m(Llse;)Z

    move-result p1

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Lkna;

    nop

    nop

    nop

    iget-object v3, v3, Lkna;->d:Lrss;

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x6

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    if-eqz v3, :cond_20

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_21

    nop

    nop

    nop

    nop

    nop

    :cond_20
    iget-object p1, p0, Lfvj;->p:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    :cond_21
    move-object p1, v0

    nop

    nop

    check-cast p1, Lkna;

    nop

    nop

    nop

    iget-object p1, p1, Lkna;->d:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    check-cast v3, Lkmz;

    nop

    nop

    iget v3, v3, Lkmz;->d:I

    nop

    nop

    move-object v7, p1

    nop

    check-cast v7, Lkmz;

    nop

    nop

    nop

    nop

    nop

    iget v7, v7, Lkmz;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v8, p0, Lfvj;->C:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1

    nop

    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    const/16 v10, 0x8

    nop

    nop

    nop

    if-ne v8, v3, :cond_22

    nop

    nop

    nop

    iget v11, p0, Lfvj;->x:I

    nop

    nop

    nop

    nop

    nop

    if-eq v11, v7, :cond_2b

    nop

    nop

    :cond_22
    if-ne v8, v5, :cond_23

    nop

    nop

    nop

    iget-object v8, p0, Lfvj;->r:Lpci;

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lpci;->close()V

    iget-object v8, p0, Lfvj;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Lmrb;

    nop

    sget-object v11, Lmra;->d:Lmra;

    nop

    nop

    invoke-virtual {v8, v11}, Lmrb;->m(Lmra;)V

    iget-boolean v8, p0, Lfvj;->h:Z

    nop

    nop

    nop

    if-eqz v8, :cond_24

    nop

    invoke-virtual {p0}, Lfvj;->b()V

    goto :goto_24

    nop

    nop

    nop

    :cond_23
    if-ne v8, v10, :cond_24

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lfvj;->r:Lpci;

    nop

    invoke-interface {v8}, Lpci;->close()V

    iget-object v8, p0, Lfvj;->p:Lrss;

    nop

    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Lmrb;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v11}, Lmrb;->m(Lmra;)V

    iget-object v8, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    :cond_24
    :goto_24
    iput-boolean v2, p0, Lfvj;->h:Z

    nop

    nop

    iput-boolean v2, p0, Lfvj;->s:Z

    nop

    iput v2, p0, Lfvj;->w:I

    nop

    iget-object v2, p0, Lfvj;->i:Lnpa;

    nop

    nop

    invoke-virtual {v2}, Lnpa;->b()V

    iget-object v2, p0, Lfvj;->j:Lnpb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lnpb;->c()V

    move-object v2, p1

    nop

    check-cast v2, Lkmz;

    nop

    nop

    nop

    nop

    iget v2, v2, Lkmz;->d:I

    nop

    iput v2, p0, Lfvj;->C:I

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    check-cast v2, Lkmz;

    nop

    nop

    nop

    iget v2, v2, Lkmz;->c:I

    nop

    iput v2, p0, Lfvj;->x:I

    nop

    iget-object v2, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_2b

    nop

    iget-object v2, p0, Lfvj;->z:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lhxc;

    nop

    invoke-virtual {v2}, Lhxc;->i()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    if-eq v7, v9, :cond_2b

    nop

    :cond_25
    iget-object v2, p0, Lfvj;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    goto/16 :goto_35

    nop

    nop

    nop

    :cond_26
    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lhxc;

    nop

    nop

    invoke-virtual {p1}, Lhxc;->g()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
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

    nop

    nop

    :goto_26
    monitor-exit p0

    nop

    nop

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

    :goto_27
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    throw p1

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-exit p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_27

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_2e

    nop

    :goto_2d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_29

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :cond_28
    :try_start_10
    iget-object v0, p0, Lfvj;->q:Loyd;

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_15

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->h()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v0, v5, :cond_29

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_29
    :try_start_11
    iget-object p1, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    iget-object p1, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k()V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n()V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    iget-object v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->L:Lnob;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lnob;->a()Lnoa;

    move-result-object v0

    nop

    new-instance v1, Lfux;

    nop

    nop

    nop

    nop

    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, v2}, Lfux;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lnoa;->b(Lnnz;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :cond_2a
    :try_start_12
    iget-object v0, p0, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

    nop

    nop

    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_28

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iget-object p1, p0, Lfvj;->z:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lhxc;

    nop

    invoke-virtual {p1}, Lhxc;->h()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :cond_2b
    :goto_35
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method
