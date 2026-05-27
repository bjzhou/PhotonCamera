.class public final Lopy;
.super Loqq;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field public static final c:Lopy;

.field private static volatile debugStatus:I

.field private static final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lopy;

    invoke-direct {v0}, Lopy;-><init>()V

    sput-object v0, Lopy;->c:Lopy;

    invoke-static {v0}, Loql;->r(Loql;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lopy;->g:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loqq;-><init>()V

    return-void
.end method

.method private final declared-synchronized v()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lopy;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, "kotlinx.coroutines.DefaultExecutor"

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lopy;->_thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lopy;->y()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sput v0, Lopy;->debugStatus:I

    iget-object v0, p0, Loqq;->e:Loop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loop;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Loqq;->f:Loop;

    invoke-virtual {v0, v1}, Loop;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized x()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lopy;->y()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lopy;->debugStatus:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final y()Z
    .locals 2

    sget v0, Lopy;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static final z()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final c()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lopy;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lopy;->v()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f(JLjava/lang/Runnable;Lola;)Loqh;
    .locals 2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p1, p2}, Loqr;->a(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    new-instance p4, Loqn;

    invoke-direct {p4, p1, p2, p3}, Loqn;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1, p4}, Loqq;->s(JLoqo;)V

    return-object p4
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Lopy;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lopy;->z()V

    :cond_0
    invoke-super {p0, p1}, Loqq;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final h(JLoqo;)V
    .locals 0

    invoke-static {}, Lopy;->z()V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lopy;->debugStatus:I

    invoke-super {p0}, Loqq;->i()V

    return-void
.end method

.method public final run()V
    .locals 10

    sget-object v0, Loru;->a:Ljava/lang/ThreadLocal;

    sget-object v0, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lopy;->x()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sput-object v0, Lopy;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Lopy;->w()V

    invoke-virtual {p0}, Loqq;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lopy;->c()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Loql;->j()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    cmp-long v9, v3, v1

    if-nez v9, :cond_2

    sget-wide v3, Lopy;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v5

    goto :goto_1

    :cond_2
    :goto_1
    sub-long v5, v3, v5

    cmp-long v9, v5, v7

    if-gtz v9, :cond_4

    sput-object v0, Lopy;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Lopy;->w()V

    invoke-virtual {p0}, Loqq;->u()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lopy;->c()Ljava/lang/Thread;

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-static {v1, v2, v5, v6}, Lonm;->i(JJ)J

    move-result-wide v5

    goto :goto_2

    :cond_5
    move-wide v3, v1

    :goto_2
    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    invoke-static {}, Lopy;->y()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_7

    sput-object v0, Lopy;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Lopy;->w()V

    invoke-virtual {p0}, Loqq;->u()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lopy;->c()Ljava/lang/Thread;

    :cond_6
    return-void

    :cond_7
    :try_start_3
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v0, Lopy;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Lopy;->w()V

    invoke-virtual {p0}, Loqq;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lopy;->c()Ljava/lang/Thread;

    :goto_3
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
