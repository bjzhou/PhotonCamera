.class public final Lgcl;
.super Ljava/lang/Object;

# interfaces
.implements Lgcq;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Lfvt;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lgnr;

.field public final g:Lkbc;

.field public h:Z

.field public i:I

.field public j:Z

.field public final k:Lgci;

.field public final l:Lgda;

.field public final m:Lgue;

.field private final n:Lkef;

.field private final o:Lgcj;

.field private final p:Ljava/util/concurrent/ExecutorService;

.field private q:Lkad;

.field private r:Lmqq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/smartmetering/PckSmartMeteringController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgcl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkef;Lmrl;Lgci;Lfvt;Lgda;Lgue;Ljava/util/concurrent/Executor;Ljava/util/Set;Lkbc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljava/lang/Object;

    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lgcl;->b:Ljava/lang/Object;

    new-instance p10, Ljava/lang/Object;

    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lgcl;->c:Ljava/lang/Object;

    const/4 p10, 0x0

    iput-boolean p10, p0, Lgcl;->h:Z

    iput-object p1, p0, Lgcl;->n:Lkef;

    iput-object p3, p0, Lgcl;->k:Lgci;

    iput-object p4, p0, Lgcl;->d:Lfvt;

    iput-object p5, p0, Lgcl;->l:Lgda;

    iput-object p6, p0, Lgcl;->m:Lgue;

    new-instance p1, Lgcj;

    invoke-direct {p1, p0, p2}, Lgcj;-><init>(Lgcl;Lmrl;)V

    iput-object p1, p0, Lgcl;->o:Lgcj;

    iput-object p7, p0, Lgcl;->e:Ljava/util/concurrent/Executor;

    new-instance p1, Lgnr;

    invoke-direct {p1, p8}, Lgnr;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lgcl;->f:Lgnr;

    iput-object p9, p0, Lgcl;->g:Lkbc;

    const-string p1, "waitForFrame"

    invoke-static {p1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lgcl;->p:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgcl;->q:Lkad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgcl;->g:Lkbc;

    const-string v2, "close"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lgcl;->q:Lkad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lkad;->close()V

    iget-object v1, p0, Lgcl;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    const/4 v1, 0x0

    iput-object v1, p0, Lgcl;->q:Lkad;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final e(J)V
    .locals 3

    new-instance v0, Lepm;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, p2, v1}, Lepm;-><init>(Lgcl;JI)V

    :try_start_0
    iget-object v1, p0, Lgcl;->g:Lkbc;

    const-string v2, "waitFuture"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lgcl;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lgcl;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lgcl;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x9fe

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Error trying to wait for frame %d"

    invoke-interface {v1, v2, p1, p2}, Lnah;->q(Ljava/lang/String;J)V

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p2, p0, Lgcl;->g:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 2

    iget-object v0, p0, Lgcl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgcl;->k:Lgci;

    invoke-virtual {v1}, Lgci;->a()Lmqp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgcl;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lgcl;->i:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lgcl;->q:Lkad;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgcl;->o:Lgcj;

    iget-object v2, p0, Lgcl;->n:Lkef;

    iget-object v3, v1, Lgcj;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, v1}, Lkef;->k(Lkee;)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lgcj;->b:Z

    new-instance v4, Leid;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v2, v5}, Leid;-><init>(Lgcj;Lkef;I)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v4, p0, Lgcl;->q:Lkad;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final c(J)Lgck;
    .locals 13

    iget-object v0, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgcl;->h:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lgcl;->d:Lfvt;

    invoke-virtual {v1}, Lfvt;->i()J

    iget-object v1, p0, Lgcl;->g:Lkbc;

    const-string v2, "pauseLoop"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lgcl;->d()V

    iget-object v1, p0, Lgcl;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget v1, p0, Lgcl;->i:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    add-int/2addr v1, v2

    iput v1, p0, Lgcl;->i:I

    new-instance p1, Lgck;

    iget-object p2, p0, Lgcl;->r:Lmqq;

    invoke-direct {p1, p0, p2}, Lgck;-><init>(Lgcl;Lmqq;)V

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iget-object v1, p0, Lgcl;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Lgcl;->g:Lkbc;

    const-string v4, "waitForMeteringFrame"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lgcl;->d:Lfvt;

    invoke-virtual {v3}, Lfvt;->i()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-direct {p0, v7, v8}, Lgcl;->e(J)V

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lgcl;->g:Lkbc;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attempt-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v7, p0, Lgcl;->n:Lkef;

    invoke-interface {v7}, Lkef;->g()Lkeb;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v7, :cond_1

    :try_start_3
    iget-object v7, p0, Lgcl;->g:Lkbc;

    :goto_1
    invoke-interface {v7}, Lkbc;->f()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-interface {v7}, Lkeb;->b()Lkeg;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, v8, Lkeg;->c:J

    cmp-long v10, v8, p1

    if-ltz v10, :cond_2

    iget-object v8, p0, Lgcl;->g:Lkbc;

    const-string v9, "awaitMetadata"

    invoke-interface {v8, v9}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v7}, Lkfg;->A(Lkeb;)V

    iget-object v8, p0, Lgcl;->g:Lkbc;

    invoke-interface {v8}, Lkbc;->f()V

    invoke-interface {v7}, Lkeb;->i()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lgcl;->m:Lgue;

    invoke-virtual {v8, v7}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v8

    invoke-virtual {v8}, Lgli;->a()Lkfj;

    move-result-object v8

    invoke-interface {v8}, Lkfj;->c()Lkll;

    move-result-object v8

    invoke-interface {v7}, Lkeb;->c()Lkou;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {v8, v9}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v7}, Lkeb;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p1, p0, Lgcl;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v0, v8

    goto :goto_4

    :cond_2
    :try_start_7
    invoke-interface {v7}, Lkeb;->close()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v7, p0, Lgcl;->g:Lkbc;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_9
    invoke-interface {v7}, Lkeb;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_a
    const-class v9, Ljava/lang/Throwable;

    const-string v10, "addSuppressed"

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Throwable;

    aput-object v12, v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v7

    :goto_2
    :try_start_b
    throw v8
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_c
    iget-object v7, p0, Lgcl;->g:Lkbc;

    invoke-interface {v7}, Lkbc;->f()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    sget-object v7, Lgcl;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const/16 v8, 0x9f7

    invoke-interface {v7, v8}, Lnah;->G(I)Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const-string v8, "Error retrieving metadata from frame."

    invoke-interface {v7, v8}, Lnah;->o(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v7, p0, Lgcl;->g:Lkbc;

    goto/16 :goto_1

    :goto_3
    iget-object p2, p0, Lgcl;->g:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_3
    :goto_4
    :try_start_e
    iget-object p1, p0, Lgcl;->g:Lkbc;

    :goto_5
    invoke-interface {p1}, Lkbc;->f()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_9

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    :try_start_f
    sget-object p2, Lgcl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x9f4

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "SmartMetering failed"

    invoke-interface {p1, p2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    iget-object p1, p0, Lgcl;->g:Lkbc;

    goto :goto_5

    :goto_7
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    iget-object p1, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter p1

    if-eqz v0, :cond_4

    :try_start_11
    iget p2, p0, Lgcl;->i:I

    add-int/2addr p2, v2

    iput p2, p0, Lgcl;->i:I

    iput-object v0, p0, Lgcl;->r:Lmqq;

    goto :goto_8

    :cond_4
    sget-object p2, Lgcl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v1, 0x9f3

    invoke-interface {p2, v1}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v1, "No valid metadata was found, returning an invalid lock."

    invoke-interface {p2, v1}, Lnah;->o(Ljava/lang/String;)V

    :goto_8
    new-instance p2, Lgck;

    invoke-direct {p2, p0, v0}, Lgck;-><init>(Lgcl;Lmqq;)V

    monitor-exit p1

    return-object p2

    :catchall_4
    move-exception p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw p2

    :goto_9
    :try_start_12
    iget-object p2, p0, Lgcl;->g:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1

    :catchall_5
    move-exception p1

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p1

    :cond_5
    :try_start_13
    new-instance p1, Lkdf;

    const-string p2, "SmartMeteringController already closed"

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_6
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgcl;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgcl;->h:Z

    iget-object v1, p0, Lgcl;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lgcl;->j:Z

    invoke-direct {p0}, Lgcl;->d()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lgcl;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lgcl;->o:Lgcj;

    invoke-virtual {v1}, Lgcj;->close()V

    iget-object v1, p0, Lgcl;->n:Lkef;

    invoke-interface {v1}, Lkef;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
