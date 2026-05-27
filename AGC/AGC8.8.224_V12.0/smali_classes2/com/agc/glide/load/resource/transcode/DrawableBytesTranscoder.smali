.class public final Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bitmapBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDrawableBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p2, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;

    iput-object p3, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->gifDrawableBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method

.method private static toGifDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public transcode(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lcom/agc/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/resource/bitmap/BitmapResource;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->gifDrawableBytesTranscoder:Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;

    invoke-static {p1}, Lcom/agc/glide/load/resource/transcode/DrawableBytesTranscoder;->toGifDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
