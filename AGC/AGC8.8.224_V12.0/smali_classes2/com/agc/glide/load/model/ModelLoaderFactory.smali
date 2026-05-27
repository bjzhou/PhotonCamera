.class public interface abstract Lcom/agc/glide/load/model/ModelLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation
.end method

.method public abstract teardown()V
.end method
