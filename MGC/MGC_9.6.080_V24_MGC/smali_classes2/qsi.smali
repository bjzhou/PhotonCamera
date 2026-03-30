.class public final Lqsi;
.super Lqrf;
.source "PG"

# interfaces
.implements Lqnj;
.implements Lqpc;


# instance fields
.field public final a:Lqoz;

.field public final b:Ltud;

.field public final c:Ltud;

.field private final d:Lsul;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/ArrayList;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lqpa;Lqnn;Lsul;Ltud;Ltud;Ltxm;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iput-object p3, p0, Lqsi;->d:Lsul;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lqsi;->b:Ltud;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lqsi;->c:Ltud;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lqsi;->a:Lqoz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    iput-object v0, p0, Lqsi;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lqsi;->g:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_10
    iput-object v0, p0, Lqsi;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Lqrf;-><init>([B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, p0}, Lqnn;->a(Lqnj;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p7, p4, p6}, Lqpa;->a(Ljava/util/concurrent/Executor;Ltud;Ltxm;)Lqoz;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic U()V
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

.method public final a()Lsui;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lgte;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqsi;->d:Lsul;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1, v2, v3}, Lpxk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v2, v3, p0}, Lsgj;->Q(Lssw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    new-instance v0, Lgte;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lqsi;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :cond_1
    iget-object v1, p0, Lqsi;->f:Ljava/util/ArrayList;

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lqsi;->f:Ljava/util/ArrayList;

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v0, p0, Lqsi;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lpxk;

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

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lqsi;->e:Ljava/lang/Object;

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

    :goto_13
    const-wide/16 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    iget-object p0, p0, Lqsi;->d:Lsul;

    nop

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

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

    :goto_17
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    const/16 v1, 0x13

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

    :goto_19
    if-gtz v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x7

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

    :goto_1b
    throw p0

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

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

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final i(Lqmf;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqsi;->a()Lsui;

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
.end method

.method public final synthetic j(Lqmf;)V
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

    nop
.end method
