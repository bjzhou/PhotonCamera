.class public Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
    }
.end annotation


# instance fields
.field private final digestPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadIdToSafeHash:Lcom/agc/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/LruCache<",
            "Lcom/agc/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/util/LruCache;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/util/LruCache;-><init>(J)V

    iput-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/agc/glide/util/LruCache;

    new-instance v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$1;-><init>(Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private calculateHexStringDigest(Lcom/agc/glide/load/Key;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    :try_start_0
    iget-object v1, v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object p1, v0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/agc/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public getSafeKey(Lcom/agc/glide/load/Key;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/agc/glide/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/agc/glide/util/LruCache;

    invoke-virtual {v1, p1}, Lcom/agc/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->calculateHexStringDigest(Lcom/agc/glide/load/Key;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/agc/glide/util/LruCache;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/agc/glide/util/LruCache;

    invoke-virtual {v0, p1, v1}, Lcom/agc/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
