.class public final Lnob;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Thread;

.field d:Losg;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Losg;[B)V
    .locals 0

    sget-object p3, Lnoa;->a:Lnoa;

    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lnob;->d:Losg;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lnob;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnoa;->b:Lnoa;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lnob;->d:Losg;

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lnob;->c:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lnob;->d:Losg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Losg;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lnoc;

    iget-object v1, v1, Lnoc;->a:Ljava/lang/Object;

    iget-object v3, p0, Lnob;->c:Ljava/lang/Thread;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lnob;->d:Losg;

    move-object v1, v0

    check-cast v1, Lnoc;

    iget-object v1, v1, Lnoc;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    move-object v1, v0

    check-cast v1, Lnoc;

    iput-object p1, v1, Lnoc;->b:Ljava/lang/Object;

    iget-object p1, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lnoc;

    iput-object p1, v0, Lnoc;->c:Ljava/lang/Object;

    iput-object v2, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lnob;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lnob;->b:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v2, p0, Lnob;->c:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lnob;->c:Ljava/lang/Thread;

    throw p1
.end method

.method public final run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lnob;->c:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnob;->b:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lnob;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    iput-object v0, v1, Lnoc;->a:Ljava/lang/Object;

    iget-object v0, p0, Lnob;->d:Losg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Losg;->a:Ljava/lang/Object;

    iput-object v2, p0, Lnob;->d:Losg;

    :try_start_0
    iget-object v0, p0, Lnob;->b:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lnob;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, v1, Lnoc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iput-object v2, v1, Lnoc;->b:Ljava/lang/Object;

    iput-object v2, v1, Lnoc;->c:Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lnoc;->a:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lnoc;->a:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
