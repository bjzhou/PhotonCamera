.class public final Ljtx;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lchl;Ljuf;I)V
    .locals 0

    iput p3, p0, Ljtx;->b:I

    iput-object p1, p0, Ljtx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljtx;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljty;I)V
    .locals 0

    iput p2, p0, Ljtx;->b:I

    iput-object p1, p0, Ljtx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ljtx;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget v0, p0, Ljtx;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljtx;->a:Ljava/lang/Object;

    check-cast v0, Lchl;

    iget-object v0, v0, Lchl;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Ljtx;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljtx;->a:Ljava/lang/Object;

    check-cast v0, Ljty;

    iget-object v0, v0, Ljty;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ljtx;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljty;

    iget v3, v3, Ljty;->b:I

    add-int/lit8 v3, v3, -0x1

    check-cast v2, Ljty;

    iput v3, v2, Ljty;->b:I

    const/4 v2, 0x0

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "The number of handles should never be negative."

    invoke-static {v3, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Ljtx;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljty;

    iget-object v4, v3, Ljty;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    move-object v5, v0

    check-cast v5, Ljty;

    iget-boolean v5, v5, Ljty;->f:Z

    if-eqz v5, :cond_1

    monitor-exit v4

    return-void

    :cond_1
    move-object v5, v0

    check-cast v5, Ljty;

    iget v5, v5, Ljty;->b:I

    if-nez v5, :cond_3

    move-object v5, v0

    check-cast v5, Ljty;

    iget-object v5, v5, Ljty;->c:Ljux;

    if-eqz v5, :cond_2

    check-cast v0, Ljty;

    iget-object v0, v0, Ljty;->e:Ljava/lang/Runnable;

    invoke-virtual {v5, v0}, Ljux;->b(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    check-cast v0, Ljty;

    iput-boolean v1, v0, Ljty;->f:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, v3, Ljty;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_4
    return-void

    :goto_2
    :try_start_4
    iget-object v1, p0, Ljtx;->c:Ljava/lang/Object;

    check-cast v1, Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
