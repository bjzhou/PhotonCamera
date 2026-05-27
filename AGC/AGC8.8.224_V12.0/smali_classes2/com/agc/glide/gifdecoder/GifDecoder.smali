.class public interface abstract Lcom/agc/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/gifdecoder/GifDecoder$BitmapProvider;,
        Lcom/agc/glide/gifdecoder/GifDecoder$GifDecodeStatus;
    }
.end annotation


# static fields
.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# virtual methods
.method public abstract advance()V
.end method

.method public abstract clear()V
.end method

.method public abstract getByteSize()I
.end method

.method public abstract getCurrentFrameIndex()I
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getDelay(I)I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLoopCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNetscapeLoopCount()I
.end method

.method public abstract getNextDelay()I
.end method

.method public abstract getNextFrame()Landroid/graphics/Bitmap;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTotalIterationCount()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract read(Ljava/io/InputStream;I)I
.end method

.method public abstract read([B)I
.end method

.method public abstract resetFrameIndex()V
.end method

.method public abstract setData(Lcom/agc/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract setData(Lcom/agc/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract setData(Lcom/agc/glide/gifdecoder/GifHeader;[B)V
.end method

.method public abstract setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
.end method
