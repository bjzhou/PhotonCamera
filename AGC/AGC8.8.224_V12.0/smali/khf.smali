.class public final Lkhf;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lkna;

.field public b:Ljava/lang/Runnable;

.field private final c:Ljuf;

.field private final d:Lkhw;

.field private final e:Loiw;

.field private f:Lkhd;

.field private g:Z

.field private final h:Ligo;


# direct methods
.method public constructor <init>(Lkhw;Ljuf;Ligo;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhf;->d:Lkhw;

    iput-object p2, p0, Lkhf;->c:Ljuf;

    iput-object p3, p0, Lkhf;->h:Ligo;

    iput-object p4, p0, Lkhf;->e:Loiw;

    new-instance p1, Lkna;

    const-wide/16 p3, 0x1

    invoke-direct {p1, p3, p4}, Lkna;-><init>(J)V

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    iput-object p1, p0, Lkhf;->a:Lkna;

    return-void
.end method


# virtual methods
.method public final a()Lkhd;
    .locals 8

    iget-object v0, p0, Lkhf;->a:Lkna;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lkna;->c(J)Lnou;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkmy;

    invoke-virtual {p0, v1}, Lkhf;->b(Lkmy;)Lkhd;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lnou;->cancel(Z)Z

    :try_start_1
    invoke-static {v0}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkmy;

    invoke-virtual {v0}, Lkmy;->close()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_2
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lkdf;

    invoke-direct {v1, v0}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lkmy;)Lkhd;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhf;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkhf;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkhf;->f:Lkhd;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkhd;->close()V

    :cond_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lkhf;->h:Ligo;

    iget-object v5, p0, Lkhf;->b:Ljava/lang/Runnable;

    iget-object v6, p0, Lkhf;->d:Lkhw;

    iget-object v1, p0, Lkhf;->e:Loiw;

    check-cast v1, Lkhj;

    invoke-virtual {v1}, Lkhj;->a()Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v7

    new-instance v12, Lkhd;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v0

    check-cast v3, Lkte;

    move-object v2, v1

    check-cast v2, Llij;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    move-object v4, p1

    invoke-direct/range {v1 .. v11}, Lkhd;-><init>(Llij;Lkte;Lkmy;Ljava/lang/Runnable;Lkhw;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V

    iput-object v12, p0, Lkhf;->f:Lkhd;

    monitor-exit p0

    return-object v12

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lkmy;->close()V

    new-instance p1, Lkdf;

    const-string v0, "FrameServer is closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhf;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhf;->g:Z

    iget-object v0, p0, Lkhf;->f:Lkhd;

    const/4 v1, 0x0

    iput-object v1, p0, Lkhf;->f:Lkhd;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkhd;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
