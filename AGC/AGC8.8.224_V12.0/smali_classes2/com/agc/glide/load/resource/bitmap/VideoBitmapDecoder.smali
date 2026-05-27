.class public Lcom/agc/glide/load/resource/bitmap/VideoBitmapDecoder;
.super Lcom/agc/glide/load/resource/bitmap/VideoDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/load/resource/bitmap/VideoDecoder<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;

    invoke-direct {v0}, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;)V

    return-void
.end method
