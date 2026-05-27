.class Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
        "Lcom/agc/glide/load/engine/EngineJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/Engine$EngineJobFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/agc/glide/load/engine/EngineJob;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation

    new-instance v8, Lcom/agc/glide/load/engine/EngineJob;

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/agc/glide/load/engine/Engine$EngineJobFactory;

    iget-object v1, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-object v2, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-object v3, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-object v4, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-object v5, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    iget-object v6, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    iget-object v7, v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/agc/glide/load/engine/EngineJob;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;->create()Lcom/agc/glide/load/engine/EngineJob;

    move-result-object v0

    return-object v0
.end method
