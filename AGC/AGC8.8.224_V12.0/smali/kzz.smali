.class public final Lkzz;
.super Ljava/lang/Object;

# interfaces
.implements Lnou;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llaa;I)V
    .locals 0

    iput p2, p0, Lkzz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzz;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Lkzz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzz;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lnou;)Lnou;
    .locals 2

    new-instance v0, Lkzz;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkzz;-><init>(Lnou;I)V

    return-object v0
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget p1, p0, Lkzz;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cancellation of future is invalid."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget v0, p0, Lkzz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast v0, Llaa;

    invoke-virtual {v0}, Llaa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast v1, Llaa;

    invoke-virtual {v1}, Llaa;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast v1, Llaa;

    invoke-virtual {v1, p2, p1}, Llaa;->n(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkzz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast v0, Llaa;

    invoke-virtual {v0}, Llaa;->f()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkzz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lkzz;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-virtual {p3, v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    invoke-virtual {p0}, Lkzz;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast p1, Llaa;

    iget-object p1, p1, Llaa;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p2, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast p2, Llaa;

    iget-object p2, p2, Llaa;->b:Lkzd;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isCancelled()Z
    .locals 1

    iget v0, p0, Lkzz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->isCancelled()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isDone()Z
    .locals 1

    iget v0, p0, Lkzz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lkzz;->b:Ljava/lang/Object;

    check-cast v0, Llaa;

    invoke-virtual {v0}, Llaa;->g()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
