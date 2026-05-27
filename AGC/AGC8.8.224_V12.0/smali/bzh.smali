.class public final Lbzh;
.super Ljava/lang/Object;

# interfaces
.implements Lbzm;
.implements Lbzk;


# instance fields
.field public volatile a:Lbzk;

.field public volatile b:Lbzk;

.field private final c:Ljava/lang/Object;

.field private final d:Lbzm;

.field private e:Lbzl;

.field private f:Lbzl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lbzm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbzl;->c:Lbzl;

    iput-object v0, p0, Lbzh;->e:Lbzl;

    sget-object v0, Lbzl;->c:Lbzl;

    iput-object v0, p0, Lbzh;->f:Lbzl;

    iput-object p1, p0, Lbzh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbzh;->d:Lbzm;

    return-void
.end method


# virtual methods
.method public final a()Lbzm;
    .locals 2

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->d:Lbzm;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lbzm;->a()Lbzm;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v2, Lbzl;->a:Lbzl;

    if-eq v1, v2, :cond_0

    sget-object v1, Lbzl;->a:Lbzl;

    iput-object v1, p0, Lbzh;->e:Lbzl;

    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-interface {v1}, Lbzk;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbzl;->c:Lbzl;

    iput-object v1, p0, Lbzh;->e:Lbzl;

    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-interface {v1}, Lbzk;->c()V

    iget-object v1, p0, Lbzh;->f:Lbzl;

    sget-object v2, Lbzl;->c:Lbzl;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lbzh;->f:Lbzl;

    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-interface {v1}, Lbzk;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lbzk;)V
    .locals 2

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lbzl;->e:Lbzl;

    iput-object p1, p0, Lbzh;->e:Lbzl;

    iget-object p1, p0, Lbzh;->f:Lbzl;

    sget-object v1, Lbzl;->a:Lbzl;

    if-eq p1, v1, :cond_0

    iput-object v1, p0, Lbzh;->f:Lbzl;

    iget-object p1, p0, Lbzh;->b:Lbzk;

    invoke-interface {p1}, Lbzk;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object p1, Lbzl;->e:Lbzl;

    iput-object p1, p0, Lbzh;->f:Lbzl;

    iget-object p1, p0, Lbzh;->d:Lbzm;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lbzm;->d(Lbzk;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lbzk;)V
    .locals 2

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lbzl;->d:Lbzl;

    iput-object p1, p0, Lbzh;->e:Lbzl;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lbzl;->d:Lbzl;

    iput-object p1, p0, Lbzh;->f:Lbzl;

    :cond_1
    :goto_0
    iget-object p1, p0, Lbzh;->d:Lbzm;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lbzm;->e(Lbzk;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v2, Lbzl;->a:Lbzl;

    if-ne v1, v2, :cond_0

    sget-object v1, Lbzl;->b:Lbzl;

    iput-object v1, p0, Lbzh;->e:Lbzl;

    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-interface {v1}, Lbzk;->f()V

    :cond_0
    iget-object v1, p0, Lbzh;->f:Lbzl;

    sget-object v2, Lbzl;->a:Lbzl;

    if-ne v1, v2, :cond_1

    sget-object v1, Lbzl;->b:Lbzl;

    iput-object v1, p0, Lbzh;->f:Lbzl;

    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-interface {v1}, Lbzk;->f()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g(Lbzk;)Z
    .locals 3

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->d:Lbzm;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lbzm;->g(Lbzk;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    return v2

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

.method public final h(Lbzk;)Z
    .locals 5

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->d:Lbzm;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lbzm;->h(Lbzk;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v3, Lbzl;->e:Lbzl;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lbzh;->f:Lbzl;

    sget-object v1, Lbzl;->d:Lbzl;

    if-eq p1, v1, :cond_3

    sget-object v1, Lbzl;->e:Lbzl;

    if-ne p1, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i(Lbzk;)Z
    .locals 2

    iget-object p1, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbzh;->d:Lbzm;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lbzm;->i(Lbzk;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    monitor-exit p1

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->a:Lbzk;

    invoke-interface {v1}, Lbzk;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbzh;->b:Lbzk;

    invoke-interface {v1}, Lbzk;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Z
    .locals 4

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v2, Lbzl;->c:Lbzl;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbzh;->f:Lbzl;

    sget-object v2, Lbzl;->c:Lbzl;

    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 4

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v2, Lbzl;->d:Lbzl;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lbzh;->f:Lbzl;

    sget-object v2, Lbzl;->d:Lbzl;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Lbzk;)Z
    .locals 3

    instance-of v0, p1, Lbzh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbzh;

    iget-object v0, p0, Lbzh;->a:Lbzk;

    iget-object v2, p1, Lbzh;->a:Lbzk;

    invoke-interface {v0, v2}, Lbzk;->m(Lbzk;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzh;->b:Lbzk;

    iget-object p1, p1, Lbzh;->b:Lbzk;

    invoke-interface {v0, p1}, Lbzk;->m(Lbzk;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final n()Z
    .locals 4

    iget-object v0, p0, Lbzh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbzh;->e:Lbzl;

    sget-object v2, Lbzl;->a:Lbzl;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lbzh;->f:Lbzl;

    sget-object v2, Lbzl;->a:Lbzl;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
