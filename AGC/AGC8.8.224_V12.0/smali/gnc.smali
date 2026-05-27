.class public abstract Lgnc;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;
.implements Lecm;
.implements Lecw;


# instance fields
.field public final a:Lcvr;

.field private final b:Ljava/util/HashMap;

.field private final c:Lkbc;

.field private final d:Lgue;


# direct methods
.method public constructor <init>(Lgue;Lcvr;Lkbc;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lgnc;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lgnc;->d:Lgue;

    iput-object p2, p0, Lgnc;->a:Lcvr;

    iput-object p3, p0, Lgnc;->c:Lkbc;

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p5, p0, Lgnc;->c:Lkbc;

    const-string v0, "onBaseFrameSelected#getCandidate"

    invoke-interface {p5, v0}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkpb;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lgnc;->c:Lkbc;

    const-string p5, "processBaseFrameImage"

    invoke-interface {p4, p5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lgnc;->k(Leea;Lkpb;)V

    :cond_0
    iget-object p1, p0, Lgnc;->c:Lkbc;

    const-string p3, "clear"

    invoke-interface {p1, p3}, Lkbc;->g(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object p1, Lgna;->c:Lgna;

    invoke-static {p2, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object p1, p0, Lgnc;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shot hasn\'t been started yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgnc;->j(Leea;)V

    return-void
.end method

.method public final declared-synchronized d(Lgxy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leea;

    iget-object v2, v1, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lgnc;->j(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized e(Leea;Lkeb;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnc;->d:Lgue;

    invoke-virtual {v0, p2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v0

    invoke-virtual {v0}, Lgli;->g()Lkpb;

    move-result-object v0

    invoke-interface {p2}, Lkeb;->b()Lkeg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-wide v1, v1, Lkeg;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2}, Lkeb;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lgnc;->b:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lgxy;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Leea;)V
    .locals 0

    return-void
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized j(Leea;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    sget-object v0, Lgna;->a:Lgna;

    invoke-static {p1, v0}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
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

.method protected abstract k(Leea;Lkpb;)V
.end method

.method public final declared-synchronized p(Leea;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lgnc;->j(Leea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
