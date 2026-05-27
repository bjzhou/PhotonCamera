.class public Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/Transformation<",
        "Lcom/agc/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrapped:Lcom/agc/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Transformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Transformation;

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    iget-object p1, p1, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/engine/Resource<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-static {p1}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/glide/Glide;->getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/agc/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v3, v2, v1}, Lcom/agc/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/agc/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v3}, Lcom/agc/glide/load/engine/Resource;->recycle()V

    :cond_0
    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0, p3, p1}, Lcom/agc/glide/load/resource/gif/GifDrawable;->setFrameTransformation(Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
