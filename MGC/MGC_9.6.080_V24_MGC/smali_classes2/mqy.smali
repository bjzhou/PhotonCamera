.class public Lmqy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmre;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lmmv;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private f:Z

.field private g:I

.field private h:Loxv;

.field private i:Lrss;

.field private volatile j:Landroid/graphics/PointF;

.field private volatile k:Lrss;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/util/List;

.field private final p:Lpdf;

.field private final q:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_1
    sput-object v0, Lmqy;->a:Lsdb;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "mqy"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lmmx;Ljava/util/concurrent/Executor;Lmmw;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lqas;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lmqy;->f:Z

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-direct {p3, p0, v1}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lmqy;->d:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p2, p0}, Lmmx;->f(Lmmv;)Lpci;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lmqy;->h:Loxv;

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

    :goto_a
    iput-object v2, p0, Lmqy;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p3}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const v1, 0x16

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

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lmrk;->b()Lmrk;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p4}, Lqas;->g(Lmmw;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    invoke-direct {p3, p0, v2}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lmqy;->e:Z

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

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_15
    iput-object v2, p0, Lmqy;->i:Lrss;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lmqy;->c:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lqas;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iput-object v2, p0, Lmqy;->k:Lrss;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p3, p0, Lmqy;->b:Lmmv;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p7, p0, Lmqy;->p:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lmqy;->q:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p3}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_30

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    :goto_21
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    const-string p3, "FocusTracking"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p3}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Lmqy;->o:Ljava/util/List;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, p0, Lmqy;->g:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lhnq;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_21

    nop

    nop

    :goto_2c
    iput-object p5, p0, Lmqy;->m:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lqas;->a()Lmmz;

    move-result-object p3

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

    nop

    :goto_2e
    invoke-virtual {v0, p3}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p6, p0, Lmqy;->n:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_30
    new-instance p3, Lmqs;

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

    :goto_31
    iput v1, p0, Lmqy;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Loxv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p3, Lmqs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Loyd;
    .locals 6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v4}, Lmrl;->a()V

    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lmrk;->a()Lmrj;

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

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    iget-object v3, p0, Lmqy;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_7
    sget-object v2, Lmrn;->b:Lmrn;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    iget v4, p1, Landroid/graphics/PointF;->y:F

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

    :goto_a
    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, p1, Landroid/graphics/PointF;->x:F

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

    :goto_12
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xf

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

    :goto_17
    check-cast v4, Lmrl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v5, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw p1

    nop

    :cond_2
    :goto_1d
    :try_start_2
    iget-object p1, p0, Lmqy;->k:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    monitor-exit p0

    nop

    nop

    return-object v0

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    const-string v1, "startTracking"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Lmrj;->d(Landroid/graphics/RectF;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget p1, p1, Landroid/graphics/PointF;->y:F

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

    nop

    :goto_22
    iget-object v0, p0, Lmqy;->p:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

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

    :goto_24
    invoke-virtual {v1}, Lmrj;->a()Lmrk;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Lmrj;->g(Lmrc;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_27
    invoke-virtual {v1, p1}, Lmrj;->b(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lmqy;->q:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Q()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto :goto_29

    nop

    nop

    :cond_3
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lmqy;->i:Lrss;

    nop

    nop

    nop

    nop

    new-instance v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lmrk;->b()Lmrk;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmqy;->h:Loxv;

    nop

    nop

    nop

    iget-object v1, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-boolean v1, p0, Lmqy;->c:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lmqy;->d:Z

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lmqy;->e:Z

    nop

    nop

    nop

    iput-object p1, p0, Lmqy;->j:Landroid/graphics/PointF;

    nop

    nop

    nop

    iget-object v1, p0, Lmqy;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lmqy;->p:Lpdf;

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

    :goto_2b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_5

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Lmrj;->e(Lmrn;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    sget-object v2, Lmrc;->a:Lmrc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v2, v3}, Lmrj;->f(J)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final declared-synchronized b(Lrss;Lrss;)Lpci;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p0}, Lmqy;->h()V

    iput-object p2, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lmqy;->f:Z

    nop

    nop

    new-instance p1, Ller;

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x11

    nop

    nop

    invoke-direct {p1, p0, p2, v0}, Ller;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-exit p0

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
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

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
.end method

.method public final d(Lmmw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmqy;->b:Lmmv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lmmv;->d(Lmmw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final dQ()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lmrl;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmqy;->o:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final f(Lprw;)V
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_3
    iget-object p1, p0, Lmqy;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x1235

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lmqy;->m:Ljava/util/concurrent/Executor;

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

    nop

    nop

    :goto_c
    new-instance p1, Lmcf;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lmqy;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const/4 v7, 0x0

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

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lmqy;->g:I

    nop

    nop

    add-int/lit8 v1, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lmqy;->g:I

    nop

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lmqy;->k:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    iget-boolean v0, p0, Lmqy;->f:Z

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lmqy;->k:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lmqu;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p0, Lmqy;->f:Z

    nop

    nop

    nop

    nop

    :cond_3
    iget-boolean v0, p0, Lmqy;->e:Z

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-boolean v0, p0, Lmqy;->d:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    iput-boolean v1, p0, Lmqy;->d:Z

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lmqu;

    nop

    nop

    nop

    iget-object v2, p0, Lmqy;->j:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v2}, Lmqu;->b(Lprw;Landroid/graphics/PointF;)Lmrk;

    move-result-object p1

    nop

    nop

    :goto_13
    move-object v4, p1

    nop

    goto/16 :goto_17

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Lmqy;->q:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Q()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iget-object v2, p0, Lmqy;->i:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lmqy;->i:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_6
    iget-object v2, p0, Lmqy;->i:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    iget-object v2, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lmqu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Lmqu;->c(Lprw;)Lmrk;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_14
    iget-object v2, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lmqu;

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Lmqu;->c(Lprw;)Lmrk;

    move-result-object p1

    nop

    :goto_15
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    :cond_8
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lmqy;->i:Lrss;

    nop

    nop

    goto/16 :goto_13

    nop

    :goto_17
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x3f19999a    # 0.6f

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lmqy;->a:Lsdb;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_19

    nop

    nop

    :goto_1b
    throw p1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1e

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

    :goto_1e
    throw p1

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean p1, p0, Lmqy;->c:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

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

    :goto_21
    const v0, 0x17

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
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

    nop

    :goto_23
    const-string v0, "tracking is disabled due the thermal issue"

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    if-ltz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    if-le p1, v0, :cond_b

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    :goto_27
    iget-object p1, p0, Lmqy;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct/range {v2 .. v7}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v2, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    const/4 v6, 0x6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    iget-object p1, p0, Lmqy;->o:Ljava/util/List;

    nop

    nop

    nop

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v3, p0, Lmqy;->h:Loxv;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_32
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lmqy;->h()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v0, 0xa

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    cmpg-float p1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    iget p1, v4, Lmrk;->d:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final declared-synchronized g(Lmrl;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmqy;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_2

    nop

    nop

    :goto_2
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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 7

    goto/32 :goto_23

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

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-boolean v0, p0, Lmqy;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lmqy;->h:Loxv;

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

    iput-boolean v1, p0, Lmqy;->e:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lmqy;->d:Z

    nop

    nop

    nop

    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Lmqy;->i:Lrss;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lmqy;->k:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lmqu;

    nop

    nop

    nop

    invoke-virtual {v2}, Lmqu;->a()V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    :cond_1
    :goto_4
    :try_start_1
    iget-object v0, p0, Lmqy;->p:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    monitor-exit p0

    nop

    return-void

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4, v2}, Lmrj;->g(Lmrc;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lmrk;->a()Lmrj;

    move-result-object v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Lmrj;->a()Lmrk;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4, v3}, Lmrj;->d(Landroid/graphics/RectF;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lmqy;->p:Lpdf;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_f
    iget v3, v2, Lmrk;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3}, Lmrl;->dT()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    iget-object v3, v2, Lmrk;->c:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iget-wide v5, v2, Lmrk;->f:J

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

    nop

    :goto_16
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xe

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const-string v1, "stopTracking"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v5, v6}, Lmrj;->f(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    check-cast v2, Lmrk;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    check-cast v3, Lmrl;

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

    :goto_23
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_24
    iget-object v2, v2, Lmrk;->b:Lmrc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    monitor-enter p0

    nop

    nop

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    iget-object v2, p0, Lmqy;->o:Ljava/util/List;

    nop

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4, v3}, Lmrj;->c(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v0, Loxv;->d:Ljava/lang/Object;

    nop

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

    :goto_28
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_11

    nop

    nop

    :goto_29
    iget-object v0, p0, Lmqy;->p:Lpdf;

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
.end method

.method public final i()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmqy;->k:Lrss;

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

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized j(Lrss;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    const v1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lmqy;->h()V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lmqy;->k:Lrss;

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lmqy;->n:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lmqu;

    nop

    nop

    new-instance v1, Lmqs;

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, v2}, Lmqs;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final k(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lmqy;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmqy;->h()V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
