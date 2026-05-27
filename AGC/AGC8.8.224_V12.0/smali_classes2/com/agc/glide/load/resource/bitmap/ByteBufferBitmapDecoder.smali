.class public Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/bitmap/Downsampler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;->decode(Ljava/nio/ByteBuffer;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/agc/glide/load/resource/bitmap/Downsampler;->decode(Ljava/nio/ByteBuffer;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/agc/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;->handles(Ljava/nio/ByteBuffer;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Lcom/agc/glide/load/Options;)Z
    .locals 0

    iget-object p2, p0, Lcom/agc/glide/load/resource/bitmap/ByteBufferBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/agc/glide/load/resource/bitmap/Downsampler;->handles(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method
