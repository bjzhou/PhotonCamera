.class public final Lctk;
.super Lkfg;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lkeb;

.field final synthetic c:Lctl;


# direct methods
.method public constructor <init>(Lctl;Lnph;Lkeb;)V
    .locals 0

    iput-object p1, p0, Lctk;->c:Lctl;

    iput-object p2, p0, Lctk;->a:Lnph;

    iput-object p3, p0, Lctk;->b:Lkeb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bj()V
    .locals 3

    iget-object v0, p0, Lctk;->a:Lnph;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Snapshot request is aborted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lctk;->b:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void
.end method

.method public final bq()V
    .locals 4

    iget-object v0, p0, Lctk;->c:Lctl;

    iget-object v0, v0, Lctl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lctk;->c:Lctl;

    iget-object v1, v1, Lctl;->m:Lkfj;

    if-nez v1, :cond_0

    iget-object v1, p0, Lctk;->a:Lnph;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Snapshot is not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnph;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lctk;->b:Lkeb;

    invoke-interface {v2, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lctk;->a:Lnph;

    invoke-virtual {v2, v1}, Lnph;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lkpb;->close()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lctk;->a:Lnph;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Snapshot is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lctk;->b:Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lctk;->b:Lkeb;

    invoke-interface {v2}, Lkeb;->close()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
