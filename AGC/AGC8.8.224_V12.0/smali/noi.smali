.class public abstract Lnoi;
.super Lnog;

# interfaces
.implements Lnou;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnog;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract c()Lnou;
.end method

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lnoi;->c()Lnou;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
