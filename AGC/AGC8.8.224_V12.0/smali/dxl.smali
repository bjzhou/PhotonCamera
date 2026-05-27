.class public final Ldxl;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lkte;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/framestore/MetadataFrameStore"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldxl;->b:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lkaz;

    invoke-direct {v0}, Lkaz;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldxl;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x418

    invoke-static {p1}, Linb;->J(I)Lkte;

    move-result-object p1

    iput-object p1, p0, Ldxl;->a:Lkte;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldxl;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(J)Lgrw;
    .locals 1

    iget-object v0, p0, Ldxl;->a:Lkte;

    invoke-static {p1, p2}, Ldyk;->c(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lkte;->i(J)Lkad;

    move-result-object p1

    check-cast p1, Lgrw;

    return-object p1
.end method

.method public final b()Lgrw;
    .locals 3

    iget-object v0, p0, Ldxl;->a:Lkte;

    iget-object v1, v0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v2}, Lmzi;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lkte;->d:Ljava/lang/Object;

    iget-object v0, v0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lmzi;->k()Lmya;

    move-result-object v0

    invoke-interface {v0}, Lmya;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v2, Lmtb;

    invoke-virtual {v2, v0}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast v0, Lgrw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Ldxm;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxl;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lchq;

    const/16 v0, 0x12

    invoke-direct {p2, p0, p1, v0}, Lchq;-><init>(Ldxl;Ldxm;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ldxl;->a:Lkte;

    invoke-virtual {v0}, Lkte;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized e(Lgrw;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Ldgd;

    const/16 v4, 0xa

    invoke-direct {v3, v1, p1, v4}, Ldgd;-><init>(Ljava/util/Map$Entry;Lgrw;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Ldxl;->b:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "RejectedExecutionException on %s"

    const/16 v5, 0x496

    invoke-static {v3, v4, v1, v5, v2}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
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

.method public final declared-synchronized f(Ldxm;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldxl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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
