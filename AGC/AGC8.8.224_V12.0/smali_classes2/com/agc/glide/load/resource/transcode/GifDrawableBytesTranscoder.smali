.class public Lcom/agc/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/agc/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p1}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lcom/agc/glide/load/resource/bytes/BytesResource;

    invoke-static {p1}, Lcom/agc/glide/util/ByteBufferUtil;->toBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/agc/glide/load/resource/bytes/BytesResource;-><init>([B)V

    return-object p2
.end method
