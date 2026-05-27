.class public final Ljuo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Ljuh;

.field private final b:Lnox;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    sget-object v0, Ljul;->a:Ljuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljuo;->a:Ljuh;

    invoke-static {p1}, Lnsy;->r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;

    move-result-object p1

    iput-object p1, p0, Ljuo;->b:Lnox;

    return-void
.end method

.method private final a(Lnou;)V
    .locals 2

    new-instance v0, Lbsc;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lbsc;-><init>(Ljuo;Ljava/util/concurrent/Future;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1, p2, p3}, Lnox;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1}, Lnox;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isShutdown()Z
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0}, Lnox;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0}, Lnox;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1, p2, p3, p4}, Lnox;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1, p2, p3, p4}, Lnox;->e(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Ljuo;->b:Lnox;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lnox;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Ljuo;->b:Lnox;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lnox;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final shutdown()V
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0}, Lnox;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0}, Lnox;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1}, Lnox;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1, p2}, Lnox;->c(Ljava/lang/Runnable;Ljava/lang/Object;)Lnou;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Ljuo;->b:Lnox;

    invoke-interface {v0, p1}, Lnox;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object p1

    invoke-direct {p0, p1}, Ljuo;->a(Lnou;)V

    return-object p1
.end method
