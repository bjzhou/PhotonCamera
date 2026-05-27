.class public final Lkns;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkgd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkgd;-><init>([B[C)V

    iput-object v0, p0, Lkns;->a:Ljava/lang/Object;

    iput-object v1, p0, Lkns;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkns;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljce;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lkns;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkns;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FrameServerLock"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkns;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkci;Lklj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkns;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;

    new-instance p1, Lgtt;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lgtt;-><init>(I)V

    invoke-static {p1}, Linb;->I(Limu;)Lkte;

    move-result-object p1

    iput-object p1, p0, Lkns;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkte;)V
    .locals 4

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    iget-object v1, p1, Lkte;->b:Ljava/lang/Object;

    check-cast v0, Lkgd;

    iget-object v2, v0, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lloi;

    if-nez v2, :cond_0

    new-instance v2, Lloi;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lloi;-><init>(Lkte;[B)V

    iget-object p1, v0, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    iput-object v2, p0, Lkns;->b:Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized b(Lkgi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkns;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is now active."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lkgi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkns;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is now active."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lkgi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkns;->b:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkgi;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkns;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final g(I)I
    .locals 2

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkte;

    iget-object v1, v1, Lkte;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast v0, Lkte;

    iget-object v0, v0, Lkte;->d:Ljava/lang/Object;

    check-cast v0, Lmsp;

    iget v0, v0, Lmsp;->b:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i(JLfla;)Z
    .locals 2

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkns;->a:Ljava/lang/Object;

    check-cast v1, Lkte;

    invoke-virtual {v1, p1, p2}, Lkte;->i(J)Lkad;

    move-result-object p1

    check-cast p1, Lfil;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lfil;->a:Lfim;

    invoke-interface {p3, p2}, Lfla;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lkns;->b:Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object p2, p0, Lkns;->a:Ljava/lang/Object;

    check-cast p2, Lkte;

    invoke-virtual {p2}, Lkte;->j()Lkad;

    move-result-object p2

    check-cast p2, Lfil;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lfil;->e(Lfil;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lkns;->a:Ljava/lang/Object;

    check-cast p2, Lkte;

    invoke-virtual {p2}, Lkte;->k()Lkad;

    move-result-object p2

    check-cast p2, Lfil;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lfil;->b()V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_3
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final j(Lfil;)V
    .locals 4

    iget-object v0, p0, Lkns;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkns;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lfil;

    invoke-virtual {p1, v1}, Lfil;->e(Lfil;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lfil;->b()V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lkns;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lfil;->a()J

    move-result-wide v2

    check-cast v1, Lkte;

    invoke-virtual {v1, v2, v3, p1}, Lkte;->m(JLjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
