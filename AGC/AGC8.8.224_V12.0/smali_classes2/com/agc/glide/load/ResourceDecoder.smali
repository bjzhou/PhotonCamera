.class public interface abstract Lcom/agc/glide/load/ResourceDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract decode(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handles(Ljava/lang/Object;Lcom/agc/glide/load/Options;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/agc/glide/load/Options;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
