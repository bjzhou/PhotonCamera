.class final Lbgq;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field final synthetic a:Lbgr;


# direct methods
.method public constructor <init>(Lbgr;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lbgq;->a:Lbgr;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    invoke-virtual {p0}, Lbgq;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbgq;->a:Lbgr;

    invoke-virtual {p0}, Lbgq;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgp;

    invoke-virtual {v0, v1}, Lbgr;->c(Lbgp;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbgq;->a:Lbgr;

    new-instance v2, Lbgp;

    invoke-direct {v2, v0}, Lbgp;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lbgr;->c(Lbgp;)V

    return-void
.end method
