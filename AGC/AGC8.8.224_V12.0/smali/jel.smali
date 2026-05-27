.class public final Ljel;
.super Ljee;


# instance fields
.field public final e:Lxa;

.field private final g:Ljeq;


# direct methods
.method public constructor <init>(Ljex;Ljeq;)V
    .locals 1

    sget-object v0, Ljcd;->a:Ljcd;

    invoke-direct {p0, p1, v0}, Ljee;-><init>(Ljex;Ljcd;)V

    new-instance p1, Lxa;

    invoke-direct {p1}, Lxa;-><init>()V

    iput-object p1, p0, Ljel;->e:Lxa;

    iput-object p2, p0, Ljel;->g:Ljeq;

    iget-object p1, p0, Ljel;->f:Ljex;

    invoke-interface {p1, p0}, Ljex;->b(Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method


# virtual methods
.method protected final e(Ljby;I)V
    .locals 1

    iget-object v0, p0, Ljel;->g:Ljeq;

    invoke-virtual {v0, p1, p2}, Ljeq;->d(Ljby;I)V

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Ljel;->g:Ljeq;

    invoke-virtual {v0}, Ljeq;->e()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Ljel;->k()V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljee;->a:Z

    invoke-virtual {p0}, Ljel;->k()V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljee;->a:Z

    iget-object v0, p0, Ljel;->g:Ljeq;

    sget-object v1, Ljeq;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ljeq;->l:Ljel;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Ljeq;->l:Ljel;

    iget-object v0, v0, Ljeq;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Ljel;->e:Lxa;

    invoke-virtual {v0}, Lxa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljel;->g:Ljeq;

    invoke-virtual {v0, p0}, Ljeq;->f(Ljel;)V

    :cond_0
    return-void
.end method
