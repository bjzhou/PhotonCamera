.class public interface abstract Lcom/agc/glide/request/ResourceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLock()Ljava/lang/Object;
.end method

.method public abstract onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V
.end method

.method public abstract onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation
.end method
