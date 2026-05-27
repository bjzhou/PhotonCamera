.class public final Lhef;
.super Ljava/lang/Object;

# interfaces
.implements Lhei;


# instance fields
.field public a:Z

.field public b:Lmqp;

.field public c:Lmqp;

.field public final d:Ljava/util/Set;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljvs;

.field private final g:Lfbz;

.field private final h:Ljwb;

.field private i:F

.field private j:F

.field private k:Lika;

.field private l:Lmqp;


# direct methods
.method public constructor <init>(Lmqp;Ljvs;Lfbz;Ljwb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lhef;->i:F

    iput v0, p0, Lhef;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhef;->a:Z

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lhef;->b:Lmqp;

    iput-object v0, p0, Lhef;->l:Lmqp;

    iput-object v0, p0, Lhef;->c:Lmqp;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lhef;->d:Ljava/util/Set;

    iput-object p2, p0, Lhef;->f:Ljvs;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    invoke-static {p2}, Lmoz;->e(Z)V

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lhef;->e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhef;->g:Lfbz;

    iput-object p4, p0, Lhef;->h:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lhec;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized c(Lmqp;Lmqp;Lmqp;)Lkad;
    .locals 7

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lhef;->b:Lmqp;

    iput-object p2, p0, Lhef;->l:Lmqp;

    iput-object p3, p0, Lhef;->c:Lmqp;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Lgis;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgis;-><init>(Lhef;Lmqp;Lmqp;Lmqp;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ci()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhef;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lhef;->j:F

    iput v0, p0, Lhef;->i:F

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lhef;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgg;

    invoke-interface {v0}, Lfgg;->d()Lkpb;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lhef;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lhdg;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v0, v3}, Lhdg;-><init>(Lhef;Lkpb;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Lkpb;->close()V

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

.method public final d()V
    .locals 12

    iget v0, p0, Lhef;->i:F

    iget v1, p0, Lhef;->j:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhef;->g:Lfbz;

    iget-object v1, p0, Lhef;->h:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lhef;->i:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v5, p0, Lhef;->h:Ljwb;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lhef;->i:F

    sub-float/2addr v5, v6

    float-to-double v6, v6

    float-to-double v8, v5

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, p0, Lhef;->h:Ljwb;

    invoke-interface {v9}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v5

    double-to-float v2, v7

    invoke-interface {v0, v1, v2, v9}, Lfbz;->c(FFF)V

    :cond_0
    return-void
.end method

.method public final e(Lheh;)V
    .locals 1

    iget-object v0, p0, Lhef;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized f(Lmqp;Lmqp;Lmqp;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhef;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhef;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lmqt;

    iget-object p1, p1, Lmqt;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lhef;->b:Lmqp;

    :cond_0
    iget-object p1, p0, Lhef;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhef;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lhef;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lhej;

    new-instance v0, Lhbi;

    const/16 v1, 0xf

    invoke-direct {v0, p3, v1}, Lhbi;-><init>(Lhej;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lhef;->c:Lmqp;

    :cond_1
    iget-object p1, p0, Lhef;->l:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhef;->l:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lmqt;

    iget-object p2, p2, Lmqt;->a:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lhef;->l:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhef;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmt;

    sget-object v1, Lhmt;->a:Lhmt;

    invoke-virtual {v0, v1}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhef;->k:Lika;

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhef;->k:Lika;

    sget-object v1, Lika;->t:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lhef;->a:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Lheh;)V
    .locals 1

    iget-object v0, p0, Lhef;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Lika;)V
    .locals 0

    iput-object p1, p0, Lhef;->k:Lika;

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Lhef;->j:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Lhef;->i:F

    return-void
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method
