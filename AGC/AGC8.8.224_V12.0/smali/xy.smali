.class public final Lxy;
.super Ljava/lang/Object;

# interfaces
.implements Lnou;


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field public final b:Lxt;


# direct methods
.method public constructor <init>(Lxu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxx;

    invoke-direct {v0, p0}, Lxx;-><init>(Lxy;)V

    iput-object v0, p0, Lxy;->b:Lxt;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lxy;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lxy;->b:Lxt;

    new-instance v1, Lxm;

    invoke-direct {v1, p1}, Lxm;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lxt;->b:Lxj;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lxj;->d(Lxt;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lxt;->e(Lxt;)V

    :cond_0
    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lxy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    iget-object v1, p0, Lxy;->b:Lxt;

    invoke-virtual {v1, p1}, Lxt;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lxu;->a:Ljava/lang/Object;

    iput-object p1, v0, Lxu;->b:Lxy;

    iget-object v0, v0, Lxu;->c:Lxz;

    invoke-virtual {v0, p1}, Lxt;->f(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0, p1, p2}, Lxt;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0}, Lxt;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0, p1, p2, p3}, Lxt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0}, Lxt;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0}, Lxt;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxy;->b:Lxt;

    invoke-virtual {v0}, Lxt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
