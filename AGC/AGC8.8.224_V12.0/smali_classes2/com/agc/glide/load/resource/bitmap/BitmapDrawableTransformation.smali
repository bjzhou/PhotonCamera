.class public Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/Transformation<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrapped:Lcom/agc/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/DrawableTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/agc/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/agc/glide/load/Transformation;Z)V

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Transformation;

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    return-void
.end method

.method private static convertToBitmapDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapped transformation unexpectedly returned a non BitmapDrawable resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertToDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    iget-object p1, p1, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;II)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->convertToDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/agc/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->convertToBitmapDrawableResource(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/agc/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
