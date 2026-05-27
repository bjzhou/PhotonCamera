.class public final Lgcz;
.super Ljava/lang/Object;

# interfaces
.implements Lgcy;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lgcx;I)V
    .locals 0

    iput p2, p0, Lgcz;->c:I

    iput-object p1, p0, Lgcz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lgcz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lgda;I)V
    .locals 0

    iput p2, p0, Lgcz;->c:I

    iput-object p1, p0, Lgcz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lgcz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    iget v0, p0, Lgcz;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgcz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgcz;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgcx;

    iget-object v3, v2, Lgcx;->b:Ljava/lang/Object;

    monitor-enter v3

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgcz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgcz;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgda;

    iget-object v1, v1, Lgda;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljvk;

    invoke-virtual {v0, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void

    :goto_0
    :try_start_1
    move-object v4, v0

    check-cast v4, Lgcx;

    iget v4, v4, Lgcx;->e:I

    add-int/2addr v4, v1

    move-object v1, v0

    check-cast v1, Lgcx;

    iput v4, v1, Lgcx;->e:I

    move-object v1, v0

    check-cast v1, Lgcx;

    iget-object v1, v1, Lgcx;->d:Ljwd;

    move-object v4, v0

    check-cast v4, Lgcx;

    invoke-virtual {v4}, Lgcx;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Ljwd;->a:Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, v2, Lgcx;->d:Ljwd;

    invoke-virtual {v1}, Ljwd;->c()V

    iget-object v1, v2, Lgcx;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    move-object v3, v0

    check-cast v3, Lgcx;

    iget-object v3, v3, Lgcx;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnaa;

    if-nez v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    move-object v4, v0

    check-cast v4, Lgcx;

    iget-boolean v4, v4, Lgcx;->f:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    new-instance v4, Lgdb;

    const-string v6, "FiniteTicketPool is closed."

    invoke-direct {v4, v6}, Lgdb;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lnaa;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lgcx;

    iget-object v3, v3, Lgcx;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lgcx;

    iget-object v3, v3, Lgcx;->d:Ljwd;

    check-cast v0, Lgcx;

    invoke-virtual {v0}, Lgcx;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljwd;->a:Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v2, Lgcx;->d:Ljwd;

    invoke-virtual {v0}, Ljwd;->c()V

    throw v5

    :cond_2
    :try_start_3
    throw v5

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
