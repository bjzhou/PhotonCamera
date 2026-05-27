.class public final Lkjc;
.super Ljava/lang/Object;

# interfaces
.implements Lkhw;
.implements Lkad;


# instance fields
.field public final a:Lkhx;

.field public b:Lkhw;

.field public c:Lkhw;

.field public d:Lkia;

.field public e:Z

.field public f:Z

.field private final g:Landroid/os/Handler;

.field private final h:Lkaq;

.field private final i:Ljava/util/List;

.field private j:Lkib;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lkaq;Lkhx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkjc;->e:Z

    iput-boolean v0, p0, Lkjc;->f:Z

    iput-object p1, p0, Lkjc;->g:Landroid/os/Handler;

    iput-object p3, p0, Lkjc;->a:Lkhx;

    const-string p1, "QReqProcessor"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkjc;->h:Lkaq;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkjc;->i:Ljava/util/List;

    return-void
.end method

.method private final h()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lkjc;->j:Lkib;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lkjc;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lkjc;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkja;

    iget-object v4, p0, Lkjc;->g:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lkja;->a(Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjc;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lkjc;->h()V

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lkjc;->e:Z

    iput-object v0, p0, Lkjc;->c:Lkhw;

    const/4 v1, 0x0

    iput-object v1, p0, Lkjc;->b:Lkhw;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lkhw;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Lkib;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjc;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lkjc;->j:Lkib;

    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkhw;->b(Lkib;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjc;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lkjc;->j:Lkib;

    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkhw;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjc;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkjc;->f:Z

    invoke-direct {p0}, Lkjc;->h()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkjc;->g()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d(Lkib;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjc;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjc;->g:Landroid/os/Handler;

    invoke-static {p1, v0}, Lkof;->g(Lkib;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkhw;->d(Lkib;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lkjc;->i:Ljava/util/List;

    new-instance v1, Lkjb;

    invoke-direct {v1, p1}, Lkjb;-><init>(Lkib;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-boolean v0, p0, Lkjc;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjc;->g:Landroid/os/Handler;

    invoke-static {p1, v0}, Lkof;->h(Ljava/util/Collection;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkhw;->e(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lkjc;->i:Ljava/util/List;

    new-instance v1, Lkiz;

    invoke-direct {v1, p1}, Lkiz;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Lkia;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lkjc;->b:Lkhw;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lkjc;->j:Lkib;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lkhw;->b(Lkib;)V

    :cond_0
    iget-object v0, p0, Lkjc;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkja;

    iget-object v2, p0, Lkjc;->b:Lkhw;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lkja;->b(Lkhw;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkjc;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lkjc;->d:Lkia;
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lkjc;->h:Lkaq;

    const-string v2, "Failed to submit queued requests."

    invoke-interface {v1, v2, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lkjc;->close()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lkjc;->b:Lkhw;

    iput-object v0, p0, Lkjc;->c:Lkhw;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkjc;->e:Z

    iget-object v1, p0, Lkjc;->d:Lkia;

    iget-boolean v2, p0, Lkjc;->f:Z

    if-eqz v2, :cond_0

    iput-object v0, p0, Lkjc;->d:Lkia;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkia;->a()V

    :cond_1
    iget-object v0, p0, Lkjc;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
