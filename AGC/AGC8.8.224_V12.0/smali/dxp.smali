.class public final Ldxp;
.super Ljava/lang/Object;

# interfaces
.implements Ldxm;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ldxl;

.field private final c:Lily;

.field private final d:Ljava/util/Map;

.field private e:Z

.field private f:Ldxo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/framestore/PerOneCameraFrameStoreResourceControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldxp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldxl;Lily;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldxp;->d:Ljava/util/Map;

    iput-object p1, p0, Ldxp;->b:Ldxl;

    iput-object p2, p0, Ldxp;->c:Lily;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldxp;->e:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Ldxg;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxp;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lchq;

    const/16 v0, 0x13

    invoke-direct {p2, p0, p1, v0}, Lchq;-><init>(Ldxp;Ldxg;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bX(Lgrw;)V
    .locals 5

    iget-boolean p1, p0, Ldxp;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldxp;->b:Ldxl;

    iget-object v0, p0, Ldxp;->c:Lily;

    new-instance v1, Ldxo;

    invoke-direct {v1, p1, v0}, Ldxo;-><init>(Ldxl;Lily;)V

    iput-object v1, p0, Ldxp;->f:Ldxo;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldxp;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Ldgd;

    const/16 v4, 0xb

    invoke-direct {v3, v0, v1, v4}, Ldgd;-><init>(Ljava/util/Map$Entry;Ldxo;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Ldxp;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x498

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Cannot execute onResourcesAvailable"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Ldnf;->d(Ldxo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldxp;->e:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final declared-synchronized c(Ldxg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxp;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldxp;->f:Ldxo;

    invoke-virtual {p1, v0}, Ldxg;->b(Ldxo;)V
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
