.class Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeJobFactory"
.end annotation


# instance fields
.field private creationOrder:I

.field final diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;-><init>(Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/engine/EngineKey;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/agc/glide/load/Options;Lcom/agc/glide/load/engine/DecodeJob$Callback;)Lcom/agc/glide/load/engine/DecodeJob;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/engine/EngineKey;",
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
            "*>;>;ZZZ",
            "Lcom/agc/glide/load/Options;",
            "Lcom/agc/glide/load/engine/DecodeJob$Callback<",
            "TR;>;)",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    iget-object v1, v0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/engine/DecodeJob;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->creationOrder:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->creationOrder:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v18}, Lcom/agc/glide/load/engine/DecodeJob;->init(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/engine/EngineKey;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/agc/glide/load/Options;Lcom/agc/glide/load/engine/DecodeJob$Callback;I)Lcom/agc/glide/load/engine/DecodeJob;

    move-result-object v1

    return-object v1
.end method
