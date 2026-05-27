.class public interface abstract Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DataFetcherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetcherReadyCallback"
.end annotation


# virtual methods
.method public abstract onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            "Lcom/agc/glide/load/Key;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reschedule()V
.end method
