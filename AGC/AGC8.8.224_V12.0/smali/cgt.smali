.class public final Lcgt;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private a:Lbni;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbnj;->a(Landroid/content/Context;)Lbni;

    move-result-object p1

    iput-object p1, p0, Lcgt;->a:Lbni;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lbnr;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcgt;->a:Lbni;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lbni;->b()Lbnr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/os/Handler;ILbna;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcgt;->a:Lbni;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Lbni;->e()Lbny;

    move-result-object v7

    new-instance v8, Lepj;

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, v6

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lepj;-><init>(Lbni;ILandroid/os/Handler;Lbna;I)V

    invoke-virtual {v7, v8}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {v6}, Lbni;->c()Lbnv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lbnv;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcgt;->a:Lbni;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lbni;->f(Lbnv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcgt;->a:Lbni;

    invoke-static {}, Lbnj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcgt;->a:Lbni;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lbni;->g(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
