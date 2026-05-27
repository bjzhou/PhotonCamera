.class public Lcom/agc/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/EngineJobListener;
.implements Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/agc/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;,
        Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/agc/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final JOB_POOL_SIZE:I = 0x96

.field private static final TAG:Ljava/lang/String; = "Engine"

.field private static final VERBOSE_IS_LOGGABLE:Z


# instance fields
.field private final activeResources:Lcom/agc/glide/load/engine/ActiveResources;

.field private final cache:Lcom/agc/glide/load/engine/cache/MemoryCache;

.field private final decodeJobFactory:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

.field private final diskCacheProvider:Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Lcom/agc/glide/load/engine/Jobs;

.field private final keyFactory:Lcom/agc/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/agc/glide/load/engine/ResourceRecycler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/cache/DiskCache$Factory;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/Jobs;Lcom/agc/glide/load/engine/EngineKeyFactory;Lcom/agc/glide/load/engine/ActiveResources;Lcom/agc/glide/load/engine/Engine$EngineJobFactory;Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;Lcom/agc/glide/load/engine/ResourceRecycler;Z)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Lcom/agc/glide/load/engine/Engine;->cache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    new-instance v9, Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object v0, p2

    invoke-direct {v9, p2}, Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/agc/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v9, v7, Lcom/agc/glide/load/engine/Engine;->diskCacheProvider:Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;

    if-nez p9, :cond_0

    new-instance v0, Lcom/agc/glide/load/engine/ActiveResources;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/agc/glide/load/engine/ActiveResources;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    :goto_0
    iput-object v0, v7, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/engine/ActiveResources;->setListener(Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V

    if-nez p8, :cond_1

    new-instance v0, Lcom/agc/glide/load/engine/EngineKeyFactory;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/EngineKeyFactory;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    :goto_1
    iput-object v0, v7, Lcom/agc/glide/load/engine/Engine;->keyFactory:Lcom/agc/glide/load/engine/EngineKeyFactory;

    if-nez p7, :cond_2

    new-instance v0, Lcom/agc/glide/load/engine/Jobs;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/Jobs;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    :goto_2
    iput-object v0, v7, Lcom/agc/glide/load/engine/Engine;->jobs:Lcom/agc/glide/load/engine/Jobs;

    if-nez p10, :cond_3

    new-instance v10, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    move-object v0, v10

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, p10

    :goto_3
    iput-object v10, v7, Lcom/agc/glide/load/engine/Engine;->engineJobFactory:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    if-nez p11, :cond_4

    new-instance v0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {v0, v9}, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;-><init>(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    :goto_4
    iput-object v0, v7, Lcom/agc/glide/load/engine/Engine;->decodeJobFactory:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

    if-nez p12, :cond_5

    new-instance v0, Lcom/agc/glide/load/engine/ResourceRecycler;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/ResourceRecycler;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    :goto_5
    iput-object v0, v7, Lcom/agc/glide/load/engine/Engine;->resourceRecycler:Lcom/agc/glide/load/engine/ResourceRecycler;

    invoke-interface {p1, p0}, Lcom/agc/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/cache/DiskCache$Factory;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/agc/glide/load/engine/Engine;-><init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/cache/DiskCache$Factory;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/Jobs;Lcom/agc/glide/load/engine/EngineKeyFactory;Lcom/agc/glide/load/engine/ActiveResources;Lcom/agc/glide/load/engine/Engine$EngineJobFactory;Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;Lcom/agc/glide/load/engine/ResourceRecycler;Z)V

    return-void
.end method

.method private getEngineResourceFromCache(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->cache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/engine/cache/MemoryCache;->remove(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/Resource;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, v2, Lcom/agc/glide/load/engine/EngineResource;

    if-eqz v0, :cond_1

    move-object p1, v2

    check-cast p1, Lcom/agc/glide/load/engine/EngineResource;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/agc/glide/load/engine/EngineResource;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/agc/glide/load/engine/EngineResource;-><init>(Lcom/agc/glide/load/engine/Resource;ZZLcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private loadFromActiveResources(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/ActiveResources;->get(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/EngineResource;->acquire()V

    :cond_0
    return-object p1
.end method

.method private loadFromCache(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/EngineResource;->acquire()V

    iget-object v1, p0, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v1, p1, v0}, Lcom/agc/glide/load/engine/ActiveResources;->activate(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V

    :cond_0
    return-object v0
.end method

.method private loadFromMemory(Lcom/agc/glide/load/engine/EngineKey;ZJ)Lcom/agc/glide/load/engine/EngineResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/EngineKey;",
            "ZJ)",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/Engine;->loadFromActiveResources(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-boolean v0, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, p3, p4, p1}, Lcom/agc/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/agc/glide/load/Key;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/Engine;->loadFromCache(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-boolean v0, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, p3, p4, p1}, Lcom/agc/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/agc/glide/load/Key;)V

    :cond_3
    return-object p2

    :cond_4
    return-object v0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/agc/glide/load/Key;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitForExistingOrStartNewJob(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/agc/glide/load/Options;ZZZZLcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;Lcom/agc/glide/load/engine/EngineKey;J)Lcom/agc/glide/load/engine/Engine$LoadStatus;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/agc/glide/load/Options;",
            "ZZZZ",
            "Lcom/agc/glide/request/ResourceCallback;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/agc/glide/load/engine/EngineKey;",
            "J)",
            "Lcom/agc/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v15, p20

    move-wide/from16 v13, p21

    iget-object v3, v0, Lcom/agc/glide/load/engine/Engine;->jobs:Lcom/agc/glide/load/engine/Jobs;

    move/from16 v12, p17

    invoke-virtual {v3, v15, v12}, Lcom/agc/glide/load/engine/Jobs;->get(Lcom/agc/glide/load/Key;Z)Lcom/agc/glide/load/engine/EngineJob;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/agc/glide/load/engine/EngineJob;->addCallback(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    sget-boolean v2, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "Added to existing load"

    invoke-static {v2, v13, v14, v15}, Lcom/agc/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/agc/glide/load/Key;)V

    :cond_0
    new-instance v2, Lcom/agc/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v2, v0, v1, v3}, Lcom/agc/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/ResourceCallback;Lcom/agc/glide/load/engine/EngineJob;)V

    return-object v2

    :cond_1
    iget-object v3, v0, Lcom/agc/glide/load/engine/Engine;->engineJobFactory:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    move-object/from16 v4, p20

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    invoke-virtual/range {v3 .. v8}, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/agc/glide/load/Key;ZZZZ)Lcom/agc/glide/load/engine/EngineJob;

    move-result-object v11

    move-object/from16 v19, v11

    iget-object v3, v0, Lcom/agc/glide/load/engine/Engine;->decodeJobFactory:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p20

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v1, v11

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object v2, v15

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p17

    move-object/from16 v18, p13

    invoke-virtual/range {v3 .. v19}, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->build(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/engine/EngineKey;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/agc/glide/load/Options;Lcom/agc/glide/load/engine/DecodeJob$Callback;)Lcom/agc/glide/load/engine/DecodeJob;

    move-result-object v3

    iget-object v4, v0, Lcom/agc/glide/load/engine/Engine;->jobs:Lcom/agc/glide/load/engine/Jobs;

    invoke-virtual {v4, v2, v1}, Lcom/agc/glide/load/engine/Jobs;->put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineJob;)V

    move-object v5, v1

    move-object v4, v2

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v5, v1, v2}, Lcom/agc/glide/load/engine/EngineJob;->addCallback(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v5, v3}, Lcom/agc/glide/load/engine/EngineJob;->start(Lcom/agc/glide/load/engine/DecodeJob;)V

    sget-boolean v2, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "Started new load"

    move-wide/from16 v6, p21

    invoke-static {v2, v6, v7, v4}, Lcom/agc/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/agc/glide/load/Key;)V

    :cond_2
    new-instance v2, Lcom/agc/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v2, v0, v1, v5}, Lcom/agc/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/ResourceCallback;Lcom/agc/glide/load/engine/EngineJob;)V

    return-object v2
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->diskCacheProvider:Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/agc/glide/load/engine/cache/DiskCache;->clear()V

    return-void
.end method

.method public load(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/agc/glide/load/Options;ZZZZLcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/agc/glide/load/engine/Engine$LoadStatus;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/agc/glide/load/Options;",
            "ZZZZ",
            "Lcom/agc/glide/request/ResourceCallback;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lcom/agc/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/agc/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    iget-object v0, v15, Lcom/agc/glide/load/engine/Engine;->keyFactory:Lcom/agc/glide/load/engine/EngineKeyFactory;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/agc/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/EngineKey;

    move-result-object v0

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-direct {v15, v0, v12, v13, v14}, Lcom/agc/glide/load/engine/Engine;->loadFromMemory(Lcom/agc/glide/load/engine/EngineKey;ZJ)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-direct/range {v1 .. v23}, Lcom/agc/glide/load/engine/Engine;->waitForExistingOrStartNewJob(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/agc/glide/load/Options;ZZZZLcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;Lcom/agc/glide/load/engine/EngineKey;J)Lcom/agc/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    invoke-interface {v3, v1, v0, v2}, Lcom/agc/glide/request/ResourceCallback;->onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onEngineJobCancelled(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/agc/glide/load/Key;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->jobs:Lcom/agc/glide/load/engine/Jobs;

    invoke-virtual {v0, p2, p1}, Lcom/agc/glide/load/engine/Jobs;->removeIfCurrent(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onEngineJobComplete(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/agc/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p2, p3}, Lcom/agc/glide/load/engine/ActiveResources;->activate(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V

    :cond_0
    iget-object p3, p0, Lcom/agc/glide/load/engine/Engine;->jobs:Lcom/agc/glide/load/engine/Jobs;

    invoke-virtual {p3, p2, p1}, Lcom/agc/glide/load/engine/Jobs;->removeIfCurrent(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onResourceReleased(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/ActiveResources;->deactivate(Lcom/agc/glide/load/Key;)V

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->cache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/agc/glide/load/engine/cache/MemoryCache;->put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/glide/load/engine/Engine;->resourceRecycler:Lcom/agc/glide/load/engine/ResourceRecycler;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/agc/glide/load/engine/ResourceRecycler;->recycle(Lcom/agc/glide/load/engine/Resource;Z)V

    :goto_0
    return-void
.end method

.method public onResourceRemoved(Lcom/agc/glide/load/engine/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->resourceRecycler:Lcom/agc/glide/load/engine/ResourceRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/glide/load/engine/ResourceRecycler;->recycle(Lcom/agc/glide/load/engine/Resource;Z)V

    return-void
.end method

.method public release(Lcom/agc/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/agc/glide/load/engine/EngineResource;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/engine/EngineResource;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/EngineResource;->release()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->engineJobFactory:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->shutdown()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->diskCacheProvider:Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/Engine$LazyDiskCacheProvider;->clearDiskCacheIfCreated()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine;->activeResources:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/ActiveResources;->shutdown()V

    return-void
.end method
