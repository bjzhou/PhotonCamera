.class public Lcom/agc/glide/load/resource/gif/GifDrawableResource;
.super Lcom/agc/glide/load/resource/drawable/DrawableResource;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/load/resource/drawable/DrawableResource<",
        "Lcom/agc/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/agc/glide/load/engine/Initializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/gif/GifDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getSize()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->stop()V

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->recycle()V

    return-void
.end method
