.class public final Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/Resource;
.implements Lcom/agc/glide/load/engine/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/Resource<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/agc/glide/load/engine/Initializable;"
    }
.end annotation


# instance fields
.field private final bitmapResource:Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/Resource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->resources:Landroid/content/res/Resources;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/agc/glide/load/engine/Resource;

    return-void
.end method

.method public static obtain(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/Resource;)V

    return-object v0
.end method

.method public static obtain(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/agc/glide/Glide;->getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/agc/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/resource/bitmap/BitmapResource;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->obtain(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;

    return-object p0
.end method

.method public static obtain(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p1}, Lcom/agc/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/load/resource/bitmap/BitmapResource;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->obtain(Landroid/content/res/Resources;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v2}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/agc/glide/load/engine/Resource;

    instance-of v1, v0, Lcom/agc/glide/load/engine/Initializable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/agc/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Initializable;->initialize()V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->recycle()V

    return-void
.end method
