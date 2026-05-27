.class public Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/ResourceEncoder<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final encoder:Lcom/agc/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p2, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/agc/glide/load/engine/Resource;Ljava/io/File;Lcom/agc/glide/load/Options;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/agc/glide/load/Options;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/BitmapResource;

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, p1, v2}, Lcom/agc/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/agc/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/agc/glide/load/Options;)Z
    .locals 0

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->encode(Lcom/agc/glide/load/engine/Resource;Ljava/io/File;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/EncodeStrategy;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method
