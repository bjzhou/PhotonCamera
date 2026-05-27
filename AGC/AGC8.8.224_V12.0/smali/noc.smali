.class public final Lnoc;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkuz;
    .locals 4

    iget-object v0, p0, Lnoc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnoc;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnoc;->b:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lkuz;

    check-cast v2, Lkvb;

    check-cast v0, Lkvj;

    invoke-direct {v3, v0, v1, v2}, Lkuz;-><init>(Lkvj;Ljava/util/List;Lkvb;)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnoc;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, " linkDataResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lnoc;->c:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " linkChipResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    if-nez v1, :cond_4

    const-string v1, " linkChipResultMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null linkChipResult"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lkvb;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null linkChipResultMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lkvj;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null linkDataResult"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Lhfy;
    .locals 4

    iget-object v0, p0, Lnoc;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnoc;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lhfy;

    check-cast v2, Lmwn;

    check-cast v1, Lmwn;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lhfy;-><init>(Ljava/lang/String;Lmwn;Lmwn;)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnoc;->c:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " photoActivityNames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lnoc;->a:Ljava/lang/Object;

    if-nez v1, :cond_4

    const-string v1, " videoActivityNames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null packageName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lmwn;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null photoActivityNames"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lmwn;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnoc;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null videoActivityNames"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized i()F
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnoc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnoc;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lnoc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-float/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lnoc;->a:Ljava/lang/Object;

    iput-object p1, p0, Lnoc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iput-object v1, p0, Lnoc;->a:Ljava/lang/Object;

    iput-object v0, p0, Lnoc;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    iput-object v0, p0, Lnoc;->a:Ljava/lang/Object;

    :cond_0
    if-nez p1, :cond_1

    iput-object v0, p0, Lnoc;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnoc;->b:Ljava/lang/Object;

    iput-object v0, p0, Lnoc;->a:Ljava/lang/Object;

    iput-object v0, p0, Lnoc;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Ldhk;
    .locals 4

    new-instance v0, Ldhk;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    iget-object v3, p0, Lnoc;->a:Ljava/lang/Object;

    if-nez v3, :cond_0

    sget-object v3, Lmza;->a:Lmza;

    :cond_0
    check-cast v3, Lmwn;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ldhk;-><init>(Ljava/lang/String;Ljava/lang/String;Lmwn;)V

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnoc;->c:Ljava/lang/Object;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnoc;->b:Ljava/lang/Object;

    return-void
.end method

.method public final o(Lmwn;)V
    .locals 0

    iput-object p1, p0, Lnoc;->a:Ljava/lang/Object;

    return-void
.end method

.method public final p()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final q()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final r()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final s()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final t()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    iget-object v2, p0, Lnoc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final v()Ldhj;
    .locals 3

    new-instance v0, Ldhj;

    iget-object v1, p0, Lnoc;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lnoc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
