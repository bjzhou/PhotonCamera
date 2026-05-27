.class public final Lcom/agc/glide/load/engine/executor/GlideExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;,
        Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;,
        Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;,
        Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;
    }
.end annotation


# static fields
.field static final DEFAULT_ANIMATION_EXECUTOR_NAME:Ljava/lang/String; = "animation"

.field static final DEFAULT_DISK_CACHE_EXECUTOR_NAME:Ljava/lang/String; = "disk-cache"

.field static final DEFAULT_DISK_CACHE_EXECUTOR_THREADS:I = 0x1

.field static final DEFAULT_SOURCE_EXECUTOR_NAME:Ljava/lang/String; = "source"

.field private static final DEFAULT_SOURCE_UNLIMITED_EXECUTOR_NAME:Ljava/lang/String; = "source-unlimited"

.field private static final KEEP_ALIVE_TIME_MS:J

.field private static final MAXIMUM_AUTOMATIC_THREAD_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GlideExecutor"

.field private static volatile bestThreadCount:I


# instance fields
.field private final delegate:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->KEEP_ALIVE_TIME_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static calculateAnimationExecutorThreadCount()I
    .locals 2

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->calculateBestThreadCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static calculateBestThreadCount()I
    .locals 2

    sget v0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/glide/load/engine/executor/RuntimeCompat;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    :cond_0
    sget v0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->bestThreadCount:I

    return v0
.end method

.method public static newAnimationBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;
    .locals 3

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->calculateAnimationExecutorThreadCount()I

    move-result v0

    new-instance v1, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    invoke-virtual {v1, v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    const-string v1, "animation"

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setName(Ljava/lang/String;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newAnimationExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newAnimationBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newAnimationExecutor(ILcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newAnimationBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setUncaughtThrowableStrategy(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newDiskCacheBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;
    .locals 2

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    const-string v1, "disk-cache"

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setName(Ljava/lang/String;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newDiskCacheExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newDiskCacheBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newDiskCacheExecutor(ILjava/lang/String;Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newDiskCacheBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setName(Ljava/lang/String;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setUncaughtThrowableStrategy(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newDiskCacheExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newDiskCacheBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setUncaughtThrowableStrategy(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;
    .locals 2

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->calculateBestThreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setName(Ljava/lang/String;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newSourceBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newSourceExecutor(ILjava/lang/String;Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newSourceBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setThreadCount(I)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setName(Ljava/lang/String;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setUncaughtThrowableStrategy(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newSourceExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newSourceBuilder()Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->setUncaughtThrowableStrategy(Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$Builder;->build()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newUnlimitedSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 11

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/agc/glide/load/engine/executor/GlideExecutor;->KEEP_ALIVE_TIME_MS:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    new-instance v1, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor$1;)V

    sget-object v2, Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    const-string v3, "source-unlimited"

    const/4 v10, 0x0

    invoke-direct {v8, v1, v3, v2, v10}, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/agc/glide/load/engine/executor/GlideExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
