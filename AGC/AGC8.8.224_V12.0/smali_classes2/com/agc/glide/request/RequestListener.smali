.class public interface abstract Lcom/agc/glide/request/RequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadFailed(Lcom/agc/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/load/DataSource;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TR;>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation
.end method
