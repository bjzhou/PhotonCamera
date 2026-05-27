.class public Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/bitmap/Downsampler;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    iput-object p2, p0, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    instance-of v0, p1, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iget-object v1, p0, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v0, p1, v1}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    const/4 p1, 0x1

    move-object v8, v0

    move v0, p1

    move-object p1, v8

    :goto_0
    invoke-static {p1}, Lcom/agc/glide/util/ExceptionPassthroughInputStream;->obtain(Ljava/io/InputStream;)Lcom/agc/glide/util/ExceptionPassthroughInputStream;

    move-result-object v1

    new-instance v3, Lcom/agc/glide/util/MarkEnforcingInputStream;

    invoke-direct {v3, v1}, Lcom/agc/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;

    invoke-direct {v7, p1, v1}, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;-><init>(Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/agc/glide/util/ExceptionPassthroughInputStream;)V

    :try_start_0
    iget-object v2, p0, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/agc/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/agc/glide/load/Options;Lcom/agc/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/agc/glide/util/ExceptionPassthroughInputStream;->release()V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {v1}, Lcom/agc/glide/util/ExceptionPassthroughInputStream;->release()V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    :cond_2
    throw p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->decode(Ljava/io/InputStream;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/agc/glide/load/Options;)Z
    .locals 0

    iget-object p2, p0, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/agc/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/agc/glide/load/resource/bitmap/Downsampler;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/agc/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/StreamBitmapDecoder;->handles(Ljava/io/InputStream;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method
