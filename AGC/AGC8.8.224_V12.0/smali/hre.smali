.class public final Lhre;
.super Ljava/lang/Object;

# interfaces
.implements Lhrd;
.implements Lhrn;


# instance fields
.field private final a:Lhrj;

.field private final b:Ljava/util/EnumMap;

.field private c:Lhrc;


# direct methods
.method public constructor <init>(Lhrj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lhrc;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lhre;->b:Ljava/util/EnumMap;

    sget-object v0, Lhrc;->e:Lhrc;

    iput-object v0, p0, Lhre;->c:Lhrc;

    iput-object p1, p0, Lhre;->a:Lhrj;

    return-void
.end method

.method private final l()V
    .locals 2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lhrc;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lhre;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-object v1, Lhrc;->e:Lhrc;

    iput-object v1, p0, Lhre;->c:Lhrc;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lgna;->d:Lgna;

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;Lhrc;)Ljvs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhre;->c:Lhrc;

    if-eq v0, p2, :cond_0

    sget-object p2, Lhrc;->e:Lhrc;

    if-eq v0, p2, :cond_0

    invoke-static {}, Lhrm;->b()Lhrm;

    move-result-object p1

    invoke-static {p1}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lhre;->a:Lhrj;

    invoke-interface {p2}, Lhrj;->h()V

    iget-object p2, p0, Lhre;->a:Lhrj;

    invoke-interface {p2, p1}, Lhrj;->b(Landroid/graphics/PointF;)Ljvs;

    move-result-object p1

    iget-object p2, p0, Lhre;->a:Lhrj;

    invoke-interface {p2, p0}, Lhrj;->e(Lhrn;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lhrc;Lhrb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhre;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lhrc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhre;->c:Lhrc;

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lhre;->l()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lmqp;Lmqp;)Lkad;
    .locals 1

    iget-object v0, p0, Lhre;->a:Lhrj;

    invoke-interface {v0, p1, p2}, Lhrj;->d(Lmqp;Lmqp;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lhrn;)V
    .locals 1

    iget-object v0, p0, Lhre;->a:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->e(Lhrn;)V

    return-void
.end method

.method public final f(Lkpb;)V
    .locals 1

    iget-object v0, p0, Lhre;->a:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->f(Lkpb;)V

    return-void
.end method

.method public final g(Lhrn;)V
    .locals 1

    iget-object v0, p0, Lhre;->a:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->g(Lhrn;)V

    return-void
.end method

.method public final declared-synchronized h(Lhrc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhre;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lhre;->a:Lhrj;

    invoke-interface {v0}, Lhrj;->i()Z

    move-result v0

    return v0
.end method

.method public final j(Lhrc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhre;->c:Lhrc;

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lhre;->a:Lhrj;

    invoke-interface {p1}, Lhrj;->h()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Lhrc;)Z
    .locals 4

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lhrc;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lhre;->c:Lhrc;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lhre;->a:Lhrj;

    invoke-interface {p1, p0}, Lhrj;->g(Lhrn;)V

    monitor-exit p0

    return v2

    :cond_0
    sget-object v3, Lhrc;->c:Lhrc;

    invoke-virtual {v1, v3}, Lhrc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lhrc;->b:Lhrc;

    invoke-virtual {p1, v1}, Lhrc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lhre;->c:Lhrc;

    sget-object v3, Lhrc;->b:Lhrc;

    invoke-virtual {v1, v3}, Lhrc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lhrc;->c:Lhrc;

    invoke-virtual {p1, v1}, Lhrc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lhre;->c:Lhrc;

    goto :goto_0

    :cond_2
    iget v1, p1, Lhrc;->f:I

    iget-object v3, p0, Lhre;->c:Lhrc;

    iget v3, v3, Lhrc;->f:I

    if-ge v1, v3, :cond_3

    iput-object p1, p0, Lhre;->c:Lhrc;

    :goto_0
    iget-object v1, p0, Lhre;->a:Lhrj;

    invoke-interface {v1, p0}, Lhrj;->g(Lhrn;)V

    iget-object v1, p0, Lhre;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lhre;->c:Lhrc;

    if-ne v1, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ldab;

    const/4 v3, 0x5

    invoke-direct {v1, p1, v3}, Ldab;-><init>(Lhrc;I)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-direct {p0}, Lhre;->l()V

    return-void
.end method

.method public final u(Landroid/graphics/RectF;FLhrg;)V
    .locals 0

    return-void
.end method
