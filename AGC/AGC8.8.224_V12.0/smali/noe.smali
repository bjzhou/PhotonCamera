.class final Lnoe;
.super Lnoo;


# instance fields
.field private final a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    invoke-direct {p0}, Lnoo;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnoe;->a:Lnou;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0, p1}, Lnou;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0, p1, p2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0, p1, p2, p3}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0}, Lnou;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnoe;->a:Lnou;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
