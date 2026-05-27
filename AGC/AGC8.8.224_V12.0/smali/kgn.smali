.class public final Lkgn;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private final a:Lmwa;

.field private b:Z


# direct methods
.method public constructor <init>(Lmwa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkgn;->b:Z

    iput-object p1, p0, Lkgn;->a:Lmwa;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkgq;)Lkeb;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgn;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkgn;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkeb;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkeb;->a()Lkeb;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgn;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lkgn;->b:Z

    iget-object v0, p0, Lkgn;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->f()Lmvm;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
