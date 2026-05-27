.class Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
.super Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/agc/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->create()Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(ILandroid/graphics/Bitmap$Config;)Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool;->get()Lcom/agc/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
