.class public final Ldxt;
.super Lkfg;


# instance fields
.field public final a:Ldxl;

.field public final b:Lily;

.field private final c:Lcea;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ldxl;Lcea;Lily;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldxt;->e:Ljava/util/Set;

    iput-object p1, p0, Ldxt;->a:Ldxl;

    iput-object p2, p0, Ldxt;->c:Lcea;

    iput-object p4, p0, Ldxt;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ldxt;->b:Lily;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 4

    iget-object v0, p0, Ldxt;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldxt;->c:Lcea;

    invoke-virtual {v0}, Lcea;->d()Lkab;

    move-result-object v0

    iget-object v1, p0, Ldxt;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lblx;

    const/16 v3, 0xf

    invoke-direct {v2, p0, p1, v0, v3}, Lblx;-><init>(Ldxt;Lkou;Lkab;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized i(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxt;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxt;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
