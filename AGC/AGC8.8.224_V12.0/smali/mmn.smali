.class final Lmmn;
.super Lmmk;


# instance fields
.field final synthetic a:Lmmk;

.field final synthetic b:Lmmt;

.field final synthetic c:Lkgd;


# direct methods
.method public constructor <init>(Lmmt;Lkgd;Lkgd;Lmmk;[B[B)V
    .locals 0

    iput-object p1, p0, Lmmn;->b:Lmmt;

    iput-object p3, p0, Lmmn;->c:Lkgd;

    iput-object p4, p0, Lmmn;->a:Lmmk;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lmmk;-><init>(Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lmmn;->b:Lmmt;

    iget-object v0, v0, Lmmt;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmmn;->b:Lmmt;

    iget-object v2, p0, Lmmn;->c:Lkgd;

    iget-object v3, v1, Lmmt;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lkgd;->a:Ljava/lang/Object;

    new-instance v4, Lmml;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5, v5}, Lmml;-><init>(Lmmt;Lkgd;[B[B)V

    check-cast v3, Ljot;

    invoke-virtual {v3, v4}, Ljot;->g(Ljon;)V

    iget-object v1, p0, Lmmn;->b:Lmmt;

    iget-object v1, v1, Lmmt;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v1, p0, Lmmn;->b:Lmmt;

    iget-object v2, p0, Lmmn;->a:Lmmk;

    iget-object v3, v1, Lmmt;->k:Landroid/os/IInterface;

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lmmt;->e:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Lmmt;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmms;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lmms;-><init>(Lmmt;I)V

    iput-object v2, v1, Lmmt;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmmt;->e:Z

    iget-object v4, v1, Lmmt;->a:Landroid/content/Context;

    iget-object v5, v1, Lmmt;->f:Landroid/content/Intent;

    iget-object v6, v1, Lmmt;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v3, v1, Lmmt;->e:Z

    iget-object v2, v1, Lmmt;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmk;

    new-instance v4, Lmmu;

    invoke-direct {v4}, Lmmu;-><init>()V

    invoke-virtual {v3, v4}, Lmmk;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lmmt;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    iget-boolean v3, v1, Lmmt;->e:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Lmmt;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lmmk;->run()V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
