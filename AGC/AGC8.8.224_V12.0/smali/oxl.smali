.class public final Loxl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Loxb;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Looo;

.field public final g:Lowx;

.field public final h:Looo;

.field public final i:Llhz;

.field public final j:Llhz;

.field private final k:Loom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxl;->a:Loxb;

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loxl;->b:I

    iput p2, p0, Loxl;->c:I

    iput-wide p3, p0, Loxl;->d:J

    const-string v0, "DefaultDispatcher"

    iput-object v0, p0, Loxl;->e:Ljava/lang/String;

    if-lez p1, :cond_3

    const-string v0, "Max pool size "

    if-lt p2, p1, :cond_2

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    new-instance p2, Llhz;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Llhz;-><init>([B)V

    iput-object p2, p0, Loxl;->i:Llhz;

    new-instance p2, Llhz;

    invoke-direct {p2, p3}, Llhz;-><init>([B)V

    iput-object p2, p0, Loxl;->j:Llhz;

    invoke-static {v0, v1}, Lolp;->j(J)Looo;

    move-result-object p2

    iput-object p2, p0, Loxl;->f:Looo;

    new-instance p2, Lowx;

    add-int/lit8 p3, p1, 0x1

    invoke-direct {p2, p3}, Lowx;-><init>(I)V

    iput-object p2, p0, Loxl;->g:Lowx;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    invoke-static {p1, p2}, Lolp;->j(J)Looo;

    move-result-object p1

    iput-object p1, p0, Loxl;->h:Looo;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Loxl;->k:Loom;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Core pool size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic e(Loxl;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Loxs;->e:Loxq;

    invoke-virtual {p0, p1, v0}, Loxl;->d(Ljava/lang/Runnable;Loxq;)V

    return-void
.end method

.method public static final f(Loxp;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Loxp;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private final g()I
    .locals 9

    iget-object v0, p0, Loxl;->g:Lowx;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Loxl;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Loxl;->h:Looo;

    iget-wide v1, v1, Looo;->b:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v1, v7

    const/16 v7, 0x15

    shr-long/2addr v1, v7

    long-to-int v2, v1

    long-to-int v1, v5

    sub-int v2, v1, v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lonm;->f(II)I

    move-result v2

    iget v6, p0, Loxl;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v2, v6, :cond_1

    monitor-exit v0

    return v5

    :cond_1
    :try_start_2
    iget v6, p0, Loxl;->c:I

    if-ge v1, v6, :cond_4

    iget-object v1, p0, Loxl;->h:Looo;

    iget-wide v5, v1, Looo;->b:J

    and-long/2addr v5, v3

    iget-object v1, p0, Loxl;->g:Lowx;

    long-to-int v6, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Loxk;

    invoke-direct {v1, p0, v6}, Loxk;-><init>(Loxl;I)V

    iget-object v5, p0, Loxl;->g:Lowx;

    invoke-virtual {v5, v6, v1}, Lowx;->b(ILjava/lang/Object;)V

    iget-object v5, p0, Loxl;->h:Looo;

    invoke-virtual {v5}, Looo;->c()J

    move-result-wide v7

    and-long/2addr v3, v7

    long-to-int v4, v3

    if-ne v6, v4, :cond_2

    invoke-virtual {v1}, Loxk;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    monitor-exit v0

    return v2

    :cond_2
    :try_start_3
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final h()Loxk;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Loxk;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Loxk;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Loxk;->c:Loxl;

    invoke-static {v1, p0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method

.method private final i(J)Z
    .locals 4

    const-wide v0, 0x3ffffe00000L

    and-long/2addr v0, p1

    const/16 v2, 0x15

    shr-long/2addr v0, v2

    const-wide/32 v2, 0x1fffff

    and-long/2addr p1, v2

    long-to-int p2, p1

    long-to-int p1, v0

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lonm;->f(II)I

    move-result p2

    iget v0, p0, Loxl;->b:I

    if-ge p2, v0, :cond_2

    invoke-direct {p0}, Loxl;->g()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p1, p0, Loxl;->b:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Loxl;->g()I

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :goto_1
    return p1
.end method

.method private final j()Z
    .locals 10

    :cond_0
    iget-object v0, p0, Loxl;->f:Looo;

    :cond_1
    iget-wide v1, v0, Looo;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    iget-object v5, p0, Loxl;->g:Lowx;

    long-to-int v4, v3

    invoke-virtual {v5, v4}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loxk;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x200000

    add-long/2addr v4, v1

    invoke-static {v3}, Loxl;->k(Loxk;)I

    move-result v6

    if-ltz v6, :cond_1

    const-wide/32 v7, -0x200000

    and-long/2addr v4, v7

    iget-object v7, p0, Loxl;->f:Looo;

    int-to-long v8, v6

    or-long/2addr v4, v8

    invoke-virtual {v7, v1, v2, v4, v5}, Looo;->d(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Loxl;->a:Loxb;

    iput-object v0, v3, Loxk;->nextParkedWorker:Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    if-nez v3, :cond_3

    return v0

    :cond_3
    iget-object v1, v3, Loxk;->a:Loon;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Loon;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static final k(Loxk;)I
    .locals 1

    :goto_0
    iget-object p0, p0, Loxk;->nextParkedWorker:Ljava/lang/Object;

    sget-object v0, Loxl;->a:Loxb;

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p0, Loxk;

    iget v0, p0, Loxk;->indexInArray:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Loxk;II)V
    .locals 9

    iget-object v0, p0, Loxl;->f:Looo;

    :cond_0
    iget-wide v1, v0, Looo;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    const-wide/32 v5, 0x200000

    add-long/2addr v5, v1

    long-to-int v4, v3

    if-ne v4, p2, :cond_2

    if-nez p3, :cond_1

    invoke-static {p1}, Loxl;->k(Loxk;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, p3

    :cond_2
    :goto_0
    if-ltz v4, :cond_0

    const-wide/32 v7, -0x200000

    and-long/2addr v5, v7

    iget-object v3, p0, Loxl;->f:Looo;

    int-to-long v7, v4

    or-long/2addr v5, v7

    invoke-virtual {v3, v1, v2, v5, v6}, Looo;->d(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-direct {p0}, Loxl;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Loxl;->h:Looo;

    iget-wide v0, v0, Looo;->b:J

    invoke-direct {p0, v0, v1}, Loxl;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Loxl;->j()Z

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Loxl;->k:Loom;

    invoke-virtual {v0}, Loom;->a()Z

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 8

    iget-object v0, p0, Loxl;->k:Loom;

    invoke-virtual {v0}, Loom;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Loxl;->h()Loxk;

    move-result-object v0

    iget-object v1, p0, Loxl;->g:Lowx;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Loxl;->h:Looo;

    iget-wide v2, v2, Looo;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    monitor-exit v1

    long-to-int v1, v2

    const/4 v2, 0x1

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Loxl;->g:Lowx;

    invoke-virtual {v4, v3}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Loxk;

    if-eq v4, v0, :cond_4

    :goto_1
    invoke-virtual {v4}, Loxk;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Loxk;->join(J)V

    goto :goto_1

    :cond_1
    sget-boolean v5, Lopw;->a:Z

    iget-object v4, v4, Loxk;->e:Ldqx;

    iget-object v5, p0, Loxl;->j:Llhz;

    iget-object v6, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v6, Loop;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loxp;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v6}, Llhz;->n(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v4}, Ldqx;->k()Loxp;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v6}, Llhz;->n(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    if-eq v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Loxl;->j:Llhz;

    invoke-virtual {v1}, Llhz;->m()V

    iget-object v1, p0, Loxl;->i:Llhz;

    invoke-virtual {v1}, Llhz;->m()V

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Loxk;->b(Z)Loxp;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, p0, Loxl;->i:Llhz;

    invoke-virtual {v1}, Llhz;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loxp;

    if-nez v1, :cond_8

    iget-object v1, p0, Loxl;->j:Llhz;

    invoke-virtual {v1}, Llhz;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loxp;

    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Loxk;->d(I)Z

    :cond_7
    sget-boolean v0, Lopw;->a:Z

    iget-object v0, p0, Loxl;->f:Looo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Looo;->b:J

    iget-object v0, p0, Loxl;->h:Looo;

    iput-wide v1, v0, Looo;->b:J

    return-void

    :cond_8
    invoke-static {v1}, Loxl;->f(Loxp;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final d(Ljava/lang/Runnable;Loxq;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Loxs;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    instance-of v2, p1, Loxp;

    if-eqz v2, :cond_0

    check-cast p1, Loxp;

    iput-wide v0, p1, Loxp;->g:J

    iput-object p2, p1, Loxp;->h:Loxq;

    goto :goto_0

    :cond_0
    new-instance v2, Loxr;

    invoke-direct {v2, p1, v0, v1, p2}, Loxr;-><init>(Ljava/lang/Runnable;JLoxq;)V

    move-object p1, v2

    :goto_0
    invoke-direct {p0}, Loxl;->h()Loxk;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p2, Loxk;->d:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v2, p1, Loxp;->h:Loxq;

    iget v2, v2, Loxq;->a:I

    if-nez v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :goto_2
    move-object p2, p1

    goto :goto_3

    :cond_3
    iput-boolean v0, p2, Loxk;->b:Z

    iget-object p2, p2, Loxk;->e:Ldqx;

    invoke-virtual {p2, p1}, Ldqx;->l(Loxp;)Loxp;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_6

    iget-object v1, p2, Loxp;->h:Loxq;

    iget v1, v1, Loxq;->a:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Loxl;->j:Llhz;

    invoke-virtual {v0, p2}, Llhz;->n(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_4

    :cond_4
    iget-object v0, p0, Loxl;->i:Llhz;

    invoke-virtual {v0, p2}, Llhz;->n(Ljava/lang/Object;)Z

    move-result p2

    :goto_4
    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p2, p0, Loxl;->e:Ljava/lang/String;

    const-string v0, " was terminated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_5
    iget-object p1, p1, Loxp;->h:Loxq;

    iget p1, p1, Loxq;->a:I

    if-eqz p1, :cond_9

    iget-object p1, p0, Loxl;->h:Looo;

    const-wide/32 v0, 0x200000

    invoke-virtual {p1, v0, v1}, Looo;->a(J)J

    move-result-wide p1

    invoke-direct {p0}, Loxl;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-direct {p0, p1, p2}, Loxl;->i(J)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Loxl;->j()Z

    return-void

    :cond_8
    :goto_6
    return-void

    :cond_9
    invoke-virtual {p0}, Loxl;->b()V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Loxl;->e(Loxl;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Loxl;->g:Lowx;

    iget-object v2, v2, Lowx;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    if-ge v9, v2, :cond_3

    iget-object v10, v0, Loxl;->g:Lowx;

    invoke-virtual {v10, v9}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Loxk;

    if-eqz v10, :cond_2

    iget-object v11, v10, Loxk;->e:Ldqx;

    iget-object v12, v11, Ldqx;->a:Ljava/lang/Object;

    check-cast v12, Loop;

    iget-object v12, v12, Loop;->a:Ljava/lang/Object;

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Ldqx;->i()I

    move-result v11

    add-int/2addr v11, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v11}, Ldqx;->i()I

    move-result v11

    :goto_1
    iget v10, v10, Loxk;->d:I

    add-int/lit8 v12, v10, -0x1

    if-eqz v10, :cond_1

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    if-lez v11, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "b"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    throw v1

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v0, Loxl;->h:Looo;

    iget-wide v2, v2, Looo;->b:J

    iget-object v9, v0, Loxl;->e:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Loxl;->b:I

    iget v12, v0, Loxl;->c:I

    iget-object v13, v0, Loxl;->i:Llhz;

    invoke-virtual {v13}, Llhz;->k()I

    move-result v13

    iget-object v14, v0, Loxl;->j:Llhz;

    invoke-virtual {v14}, Llhz;->k()I

    move-result v14

    const-wide/32 v15, 0x1fffff

    move/from16 v18, v7

    move/from16 v17, v8

    and-long v7, v2, v15

    const-wide v15, 0x3ffffe00000L

    and-long/2addr v15, v2

    move-wide/from16 v19, v15

    iget v15, v0, Loxl;->b:I

    const-wide v21, 0x7ffffc0000000000L

    and-long v2, v2, v21

    const/16 v16, 0x2a

    shr-long v2, v2, v16

    long-to-int v3, v2

    sub-int/2addr v15, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Pool Size {core = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", blocking = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dormant = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", terminated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, running workers queues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", global CPU queue size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", global blocking queue size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Control State {created workers= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v1, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blocking tasks = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    shr-long v3, v19, v1

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CPUs acquired = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
