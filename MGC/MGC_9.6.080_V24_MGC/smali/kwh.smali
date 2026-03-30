.class public Lkwh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwp;
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Lkot;

.field public final e:Llgc;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lljq;

.field public final h:Lpdf;

.field public i:Z

.field public j:I

.field public k:Z

.field public final l:Lkwa;

.field public final m:Loxv;

.field private final n:Lpgh;

.field private final o:Lkwf;

.field private final p:Ljava/util/concurrent/ExecutorService;

.field private q:Lpci;

.field private r:Lrsu;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(J)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lhpv;-><init>(Ljava/lang/Object;JI)V

    :try_start_0
    iget-object v1, p0, Lkwh;->h:Lpdf;

    nop

    const-string v2, "waitFuture"

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lkwh;->p:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkwh;->h:Lpdf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lkwh;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const/16 v2, 0xc3c

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    const-string v2, "Error trying to wait for frame %d"

    nop

    invoke-interface {v1, v2, p1, p2}, Lscz;->u(Ljava/lang/String;J)V

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    nop

    nop

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-instance v0, Lhpv;

    nop

    goto/32 :goto_e

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lkwh;->h:Lpdf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_0
    move-exception p1

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const-string v0, "kwh"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lkwh;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpgh;Lrtm;Lkwa;Lkot;Loxv;Llgc;Ljava/util/concurrent/Executor;Ljava/util/Set;Lpdf;)V
    .locals 1

    goto/32 :goto_11

    nop

    nop

    :goto_0
    iput-object p9, p0, Lkwh;->h:Lpdf;

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

    :goto_1
    iput-object v0, p0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lkwf;

    nop

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

    :goto_3
    iput-object p1, p0, Lkwh;->o:Lkwf;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-static {p1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "waitForFrame"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkwh;->n:Lpgh;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lkwh;->d:Lkot;

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

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p8}, Lljq;-><init>(Ljava/util/Set;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    iput-object p6, p0, Lkwh;->e:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Lljq;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lkwh;->i:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p5, p0, Lkwh;->m:Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-direct {p1, p0, p2}, Lkwf;-><init>(Lkwh;Lrtm;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lkwh;->c:Ljava/lang/Object;

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

    :goto_15
    iput-object p3, p0, Lkwh;->l:Lkwa;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lkwh;->p:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lkwh;->g:Lljq;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p7, p0, Lkwh;->f:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
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

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkwh;->b:Ljava/lang/Object;

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

    :goto_5
    const v1, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkwh;->q:Lpci;

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Lkwh;->h:Lpdf;

    nop

    const-string v2, "close"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lkwh;->q:Lpci;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lpci;->close()V

    iget-object v1, p0, Lkwh;->h:Lpdf;

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    const/4 v1, 0x0

    nop

    nop

    iput-object v1, p0, Lkwh;->q:Lpci;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()Lrss;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lkwh;->l:Lkwa;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lkwa;->a()Lrss;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkwh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(JLpin;Lpgo;)Lkwo;
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p4, p0, Lkwh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p2, Lkwh;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const/16 p2, 0xc32

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const-string p2, "SmartMetering failed"

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p1, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    :goto_2
    monitor-exit p4

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    :goto_4
    throw p0

    nop

    :cond_0
    :try_start_2
    new-instance p0, Lpfi;

    nop

    nop

    nop

    nop

    const-string p1, "SmartMeteringController already closed"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lpfi;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :try_start_4
    iget-object v3, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    sget-object v3, Lkwh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xc35

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const-string v4, "Error retrieving metadata from frame."

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v3, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    :goto_b
    iget-object p2, p0, Lkwh;->h:Lpdf;

    nop

    invoke-interface {p2}, Lpdf;->g()V

    throw p1

    nop

    nop
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    :goto_c
    :try_start_6
    iget-object p1, p0, Lkwh;->h:Lpdf;

    nop

    nop

    :goto_d
    invoke-interface {p1}, Lpdf;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    monitor-enter p3

    nop

    nop

    nop

    nop

    :try_start_7
    iget-boolean p4, p0, Lkwh;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p4, :cond_0

    nop

    nop

    iget-object p4, p0, Lkwh;->d:Lkot;

    nop

    nop

    nop

    invoke-virtual {p4}, Lkot;->j()J

    iget-object p4, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    const-string v0, "pauseLoop"

    nop

    invoke-interface {p4, v0}, Lpdf;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lkwh;->da190e616797844b591057d0190e7728m()V

    iget-object p4, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    invoke-interface {p4}, Lpdf;->g()V

    iget p4, p0, Lkwh;->j:I

    nop

    nop

    nop

    nop

    if-lez p4, :cond_2

    nop

    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    nop

    iput p4, p0, Lkwh;->j:I

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lkwg;

    nop

    iget-object p2, p0, Lkwh;->r:Lrsu;

    nop

    nop

    nop

    invoke-direct {p1, p0, p2}, Lkwg;-><init>(Lkwh;Lrsu;)V

    monitor-exit p3

    nop

    nop

    nop

    nop

    return-object p1

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p3

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_1a

    nop

    :catchall_4
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-interface {v3}, Lpge;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_8

    nop

    nop

    :goto_14
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_9
    invoke-interface {v3}, Lpge;->b()Lpgi;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v4, Lpgi;->c:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v4, v4, p1

    nop

    nop

    nop

    if-ltz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    const-string v5, "awaitMetadata"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {v3}, Lpuq;->bE(Lpge;)V

    iget-object v4, p0, Lkwh;->h:Lpdf;

    nop

    invoke-interface {v4}, Lpdf;->g()V

    invoke-interface {v3}, Lpge;->i()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    iget-object v4, p0, Lkwh;->e:Llgc;

    nop

    new-instance v5, Loel;

    nop

    invoke-direct {v5, v4, v3}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Loel;->d()Lphh;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lphh;->d()Lpnx;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpge;->d()Lpro;

    move-result-object v5

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    new-instance v6, Lrsu;

    nop

    invoke-direct {v6, v4, v5}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-interface {v3}, Lpge;->close()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object p1, p0, Lkwh;->h:Lpdf;

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x11

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

    :goto_19
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_c
    iget-object v3, p0, Lkwh;->h:Lpdf;

    nop

    nop

    :goto_1a
    invoke-interface {v3}, Lpdf;->g()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    :goto_1c
    throw p0

    nop

    nop

    :goto_1d
    :try_start_d
    iget-object p0, p0, Lkwh;->h:Lpdf;

    nop

    invoke-interface {p0}, Lpdf;->g()V

    throw p1

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    monitor-exit p4

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_e
    invoke-interface {v3}, Lpge;->close()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-object v3, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    nop
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    :try_start_10
    iget-object v0, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    const-string v1, "waitForMeteringFrame"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkwh;->d:Lkot;

    nop

    invoke-virtual {v0}, Lkot;->j()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v3, 0xa

    nop

    if-ge v2, v3, :cond_1

    nop

    nop

    int-to-long v3, v2

    nop

    add-long/2addr v3, v0

    nop

    nop

    nop

    nop

    invoke-direct {p0, v3, v4}, Lkwh;->23ce148e54b083367f51e25c7971761em(J)V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    iget-object v3, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "attempt-"

    nop

    invoke-static {v2, v4}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    iget-object v3, p0, Lkwh;->n:Lpgh;

    nop

    invoke-interface {v3}, Lpgh;->g()Lpge;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p3, :cond_6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_12
    iget p2, p0, Lkwh;->j:I

    nop

    nop

    add-int/lit8 p2, p2, 0x1

    nop

    iput p2, p0, Lkwh;->j:I

    nop

    nop

    nop

    nop

    nop

    iput-object p3, p0, Lkwh;->r:Lrsu;

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p2, Lkwh;->a:Lsdb;

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    const/16 p4, 0xc31

    nop

    nop

    nop

    nop

    invoke-interface {p2, p4}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    check-cast p2, Lscz;

    nop

    const-string p4, "No valid metadata was found, returning an invalid lock."

    nop

    nop

    nop

    nop

    invoke-interface {p2, p4}, Lscz;->s(Ljava/lang/String;)V

    :goto_23
    new-instance p2, Lkwg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, p3}, Lkwg;-><init>(Lkwh;Lrsu;)V

    monitor-exit p1

    nop

    return-object p2

    nop

    :catchall_6
    move-exception p0

    nop

    monitor-exit p1

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_17

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    :goto_26
    iget-object p3, p0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_27
    move-object p3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final c()V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkwh;->b:Ljava/lang/Object;

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v3

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v1, p0, Lkwh;->i:Z

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget v1, p0, Lkwh;->j:I

    nop

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_0

    nop

    iget-object v1, p0, Lkwh;->q:Lpci;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    :cond_2
    iget-object v1, p0, Lkwh;->o:Lkwf;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkwh;->n:Lpgh;

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lkwf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v2, v1}, Lpgh;->l(Lpgg;)V

    const/4 v4, 0x1

    nop

    iput-boolean v4, v1, Lkwf;->b:Z

    nop

    nop

    nop

    new-instance v4, Lixc;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x12

    nop

    nop

    nop

    invoke-direct {v4, v1, v2, v5}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v4, p0, Lkwh;->q:Lpci;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2

    nop

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

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    :try_start_2
    iget-boolean v1, p0, Lkwh;->i:Z

    nop

    if-eqz v1, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lkwh;->i:Z

    nop

    nop

    iget-object v1, p0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    :try_start_3
    iput-boolean v2, p0, Lkwh;->k:Z

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lkwh;->da190e616797844b591057d0190e7728m()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lkwh;->p:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lkwh;->o:Lkwf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkwf;->close()V

    iget-object p0, p0, Lkwh;->n:Lpgh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpgh;->close()V

    monitor-exit v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop
.end method
