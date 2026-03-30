.class public Lfzw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgae;


# static fields
.field private static final d:Lsdb;

.field private static final e:Ljava/lang/Object;

.field private static f:Lgad;


# instance fields
.field public final a:Loyn;

.field public final b:Lnxd;

.field public final c:Lfzm;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Loyd;

.field private final i:Lnso;

.field private final j:Lrss;

.field private final k:Loyd;

.field private final l:Lrtm;

.field private final m:Landroid/os/Handler;

.field private final n:Ljava/lang/Runnable;

.field private o:Landroid/view/View;

.field private p:Lpby;

.field private final q:Llad;

.field private final r:Lncc;

.field private final s:Lgzq;

.field private final t:Lhon;


# direct methods
.method private final declared-synchronized 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

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

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lfzn;

    nop

    nop

    invoke-virtual {v0}, Lfzn;->d()V

    :cond_1
    iget-object v0, p0, Lfzw;->c:Lfzm;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfzm;->b()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    iget-object v0, p0, Lfzw;->i:Lnso;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lnso;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
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

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

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

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lfzw;->d:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lgad;->a:Lgad;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lfzw;->f:Lgad;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "fzw"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Llad;Loyd;Lhon;Lnso;Lfzn;Lfzm;Loyn;Lgzq;Loyd;Lrtm;Lncc;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p9, p0, Lfzw;->s:Lgzq;

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

    nop

    :goto_2
    new-instance p1, Lfzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    iput-object p10, p0, Lfzw;->k:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iput-object p2, p0, Lfzw;->q:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    invoke-static {p6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p7}, Lfzm;->g()Z

    move-result p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    iput-object p8, p0, Lfzw;->a:Loyn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lfzw;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    new-instance p1, Landroid/os/Handler;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lfzw;->n:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x14

    nop

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

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_17
    iput-object p5, p0, Lfzw;->i:Lnso;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x1

    nop

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

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1b
    iput-object p1, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    :goto_1d
    invoke-direct {p1, p0, p7, p2, p3}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lfzw;->b:Lnxd;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    invoke-direct {v0, p0, v1}, Ljru;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p4, p0, Lfzw;->t:Lhon;

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

    :goto_23
    goto/32 :goto_6

    nop

    :goto_24
    iput-object p11, p0, Lfzw;->l:Lrtm;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    iput-object p12, p0, Lfzw;->r:Lncc;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p1, p0, Lfzw;->m:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p7, p0, Lfzw;->c:Lfzm;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p3, p0, Lfzw;->h:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2b
    new-instance v0, Ljru;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/widget/FrameLayout;Lnxc;)Lpci;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

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

    :goto_5
    return-object p1

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

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
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const v0, 0x7f0b0077

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    iput-object p1, p0, Lfzw;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->b:Lnxd;

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lnxc;->l(Lnxd;)V

    new-instance p1, Lows;

    nop

    nop

    invoke-direct {p1}, Lows;-><init>()V

    iget-object v0, p0, Lfzw;->t:Lhon;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object v0

    nop

    nop

    new-instance v1, Lfzo;

    nop

    const/4 v2, 0x2

    nop

    invoke-direct {v1, p0, v2}, Lfzo;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lfzw;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    new-instance v0, Lfyz;

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p2, v1}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    new-instance p2, Lfzo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v1}, Lfzo;-><init>(Ljava/lang/Object;I)V

    iget-object v0, p0, Lfzw;->k:Loyd;

    nop

    nop

    iget-object v1, p0, Lfzw;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p2, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

    nop

    nop

    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V

    iget-object p2, p0, Lfzw;->s:Lgzq;

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    check-cast p2, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    invoke-virtual {p2}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a()Loyd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lfzo;

    nop

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Lfzo;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lfzw;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lpby;)Lpci;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    iput-object p1, p0, Lfzw;->p:Lpby;

    nop

    nop

    nop

    sget-object p1, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lfzw;->f:Lgad;

    nop

    sget-object v1, Lgad;->a:Lgad;

    nop

    nop

    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    sget-object v1, Lfzw;->f:Lgad;

    nop

    check-cast v0, Lfzn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfzn;->l(Lgad;)V

    :cond_1
    monitor-exit p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p1, Lfym;

    nop

    nop

    nop

    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0, v0}, Lfym;-><init>(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x1a

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    monitor-exit p1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Z)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_2

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

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p1

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_2
    sget-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgad;->a:Lgad;

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    invoke-virtual {v1}, Lgad;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lgab;

    nop

    nop

    nop

    iget-object v2, v2, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lgad;->ordinal()I

    move-result v2

    nop

    nop

    nop

    if-le v1, v2, :cond_2

    nop

    iget-object p1, p0, Lfzw;->c:Lfzm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lfzm;->b()Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    iget-object p1, p0, Lfzw;->i:Lnso;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-virtual {p1, v1}, Lnso;->c(Z)V

    :cond_1
    iget-object p1, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lgab;

    nop

    iget-object p1, p1, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lgab;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgab;->b:Lgad;

    nop

    sput-object p1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->j:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    iget-object p1, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lfzn;

    nop

    nop

    invoke-virtual {p1}, Lfzn;->b()V

    goto/16 :goto_6

    nop

    nop

    :cond_2
    if-nez p1, :cond_5

    nop

    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    invoke-virtual {v1}, Lgad;->ordinal()I

    move-result v1

    nop

    nop

    nop

    iget-object v2, p0, Lfzw;->a:Loyn;

    nop

    nop

    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgab;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgab;->c:Lgad;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lgad;->ordinal()I

    move-result v2

    nop

    nop

    nop

    if-ge v1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->c:Lfzm;

    nop

    nop

    invoke-virtual {p1}, Lfzm;->b()Z

    move-result p1

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->i:Lnso;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lnso;->c(Z)V

    :cond_3
    iget-object p1, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lgab;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgab;->c:Lgad;

    nop

    nop

    iget-object p1, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lgab;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgab;->c:Lgad;

    nop

    nop

    nop

    nop

    nop

    sput-object p1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    iget-object p1, p0, Lfzw;->j:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lfzn;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lfzn;->c()V

    :cond_4
    invoke-virtual {p0}, Lfzw;->i()V

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_5
    sget-object v1, Lfzw;->d:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    sget-object v2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    const-string v3, "BobaPreviewMgr"

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const/16 v2, 0x77

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Invalid request to %s in state %s."

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    const-string p1, "collapse"

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_6
    const-string p1, "expand"

    nop

    nop

    :goto_5
    sget-object v3, Lfzw;->f:Lgad;

    nop

    invoke-interface {v1, v2, p1, v3}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_7
    sget-object p1, Lfzw;->d:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    const-string v2, "BobaPreviewMgr"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const/16 v1, 0x75

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Can\'t animate, already hidden."

    nop

    invoke-interface {p1, v1}, Lscz;->s(Ljava/lang/String;)V

    :cond_8
    :goto_6
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

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

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

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

    :catchall_0
    move-exception v0

    nop

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

    goto/32 :goto_2

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_0

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
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lfzw;->q()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfzw;->h()V

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    invoke-virtual {p0, v0}, Lfzw;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 3

    goto/32 :goto_0

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    sget-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    sget-object v2, Lgad;->a:Lgad;

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    iget-object v1, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lgab;

    nop

    iget-object v1, v1, Lgab;->b:Lgad;

    nop

    nop

    nop

    sput-object v1, Lfzw;->f:Lgad;

    nop

    :cond_0
    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    invoke-direct {p0}, Lfzw;->132cd3b981019b59dc42653eea0b34b4m()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lfzw;->c(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :cond_0
    :try_start_2
    sput-object v2, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    invoke-direct {p0}, Lfzw;->132cd3b981019b59dc42653eea0b34b4m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

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

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_4
    sget-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgad;->a:Lgad;

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v0, 0x15

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfzw;->s:Lgzq;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->b()V

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    check-cast p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v1, 0x1388

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfzw;->m:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfzw;->m:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

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
    iget-object p0, p0, Lfzw;->n:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    goto/32 :goto_10

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

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfzw;->n:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    :goto_3
    const-string v0, "View effect not present, cannot play entry animation."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_5
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfzw;->j:Lrss;

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

    :goto_7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lfzn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lscz;

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

    :goto_c
    const-string v1, "BobaPreviewMgr"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

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

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x81

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lfzw;->d:Lsdb;

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

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lfzn;->f()V

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Lprw;Landroid/graphics/RectF;Z)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lfzw;->e:Ljava/lang/Object;

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

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    rem-int/lit16 v1, v1, 0x168

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

    :goto_8
    sget-object v2, Lpby;->c:Lpby;

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

    :goto_9
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    new-instance v2, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p0}, Lfzw;->q()Z

    move-result v3

    nop

    nop

    nop

    check-cast v2, Lfzn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lfzn;->g(Z)V

    iget-object v2, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    iget-object v3, p0, Lfzw;->s:Lgzq;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    iget v3, v3, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->c:I

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lfzn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lfzn;->k(I)V

    iget-object v2, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    iget-object v3, p0, Lfzw;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    goto :goto_13

    nop

    :cond_1
    iget-object v0, p0, Lfzw;->o:Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    :cond_2
    :goto_13
    check-cast v2, Lfzn;

    nop

    invoke-virtual {v2, v0}, Lfzn;->i(I)V

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    iget-object v2, p0, Lfzw;->l:Lrtm;

    nop

    nop

    nop

    check-cast v0, Lfzn;

    nop

    nop

    invoke-virtual {v0, v2}, Lfzn;->h(Lrtm;)V

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

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

    iget-object v2, p0, Lfzw;->r:Lncc;

    nop

    nop

    nop

    check-cast v0, Lfzn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lfzn;->m(Lncc;)V

    iget-object v0, p0, Lfzw;->j:Lrss;

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

    iget-object v2, p0, Lfzw;->q:Llad;

    nop

    nop

    nop

    invoke-virtual {v2}, Llad;->b()Lpcg;

    move-result-object v2

    nop

    nop

    nop

    iget v2, v2, Lpcg;->e:I

    nop

    nop

    nop

    check-cast v0, Lfzn;

    nop

    nop

    invoke-virtual {v0, v2}, Lfzn;->j(I)V

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    sget-object v2, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    check-cast v0, Lfzn;

    nop

    nop

    invoke-virtual {v0, v2}, Lfzn;->l(Lgad;)V

    iget-object p0, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lfzn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2, p3}, Lfzn;->e(Lprw;Landroid/graphics/RectF;Z)V

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lfzw;->q:Llad;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lfzw;->j:Lrss;

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

    :goto_1c
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    add-int/2addr v1, v2

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_1e

    nop

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v1, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/32 :goto_14

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    move v1, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Llad;->b()Lpcg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lfzw;->j:Lrss;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, v2, Lpcg;->e:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lfzw;->p:Lpby;

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

    :goto_2f
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lfzw;->h:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    :goto_34
    iget-object v1, p0, Lfzw;->h:Loyd;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final declared-synchronized l()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v2, p0, Lfzw;->a:Loyn;

    nop

    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lgab;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lfzw;->a:Loyn;

    nop

    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lgab;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgab;->c:Lgad;

    nop

    nop

    :goto_9
    sput-object v2, Lfzw;->f:Lgad;

    nop

    nop

    nop

    sget-object v2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lfzw;->j:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lgab;

    nop

    nop

    nop

    iget-object v0, v0, Lgab;->b:Lgad;

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lfzw;->t:Lhon;

    nop

    nop

    iget-object v0, v0, Lhon;->a:Ljava/lang/Object;

    nop

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

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfzw;->a:Loyn;

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lgab;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lgab;

    nop

    iget-object v0, v0, Lgab;->c:Lgad;

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lfzw;->j:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfzn;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lfzn;->l(Lgad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfzw;->c:Lfzm;

    nop

    nop

    nop

    invoke-virtual {v0}, Lfzm;->c()Z

    move-result v0

    nop

    nop

    nop

    sget-object v1, Lfzw;->e:Ljava/lang/Object;

    nop

    monitor-enter v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lfzw;->f:Lgad;

    nop

    sget-object v3, Lgad;->a:Lgad;

    nop

    if-eq v2, v3, :cond_3

    nop

    nop

    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_4
    monitor-exit v1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_2

    nop

    nop
.end method

.method public final m()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lfzw;->s:Lgzq;

    nop

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

    :goto_8
    iget-object v0, p0, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized n()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

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

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Lfzw;->j:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lfzn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfzn;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final o()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgad;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfzw;->a:Loyn;

    nop

    nop

    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lgab;

    nop

    nop

    iget-object p0, p0, Lgab;->b:Lgad;

    nop

    nop

    invoke-virtual {p0}, Lgad;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-gt v1, p0, :cond_1

    nop

    const/4 p0, 0x1

    nop

    nop

    goto :goto_5

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    nop

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final p()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lfzw;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lfzw;->f:Lgad;

    nop

    nop

    nop

    invoke-virtual {v1}, Lgad;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfzw;->a:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lgab;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgab;->c:Lgad;

    nop

    nop

    nop

    invoke-virtual {p0}, Lgad;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    if-lt v1, p0, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method

.method public final q()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfzw;->s:Lgzq;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->getVisibility()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lgzq;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
