.class interface abstract Lcom/agc/glide/load/engine/EngineJobListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onEngineJobCancelled(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/agc/glide/load/Key;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEngineJobComplete(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V
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
.end method
