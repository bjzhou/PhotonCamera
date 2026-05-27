.class public interface abstract Lcom/agc/glide/ListPreloader$PreloadModelProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadModelProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getPreloadItems(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lcom/agc/glide/RequestBuilder<",
            "*>;"
        }
    .end annotation
.end method
