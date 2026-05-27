.class public final Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/agc/glide/load/DecodeFormat;

.field private final memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/DecodeFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    iput-object p2, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p3, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/agc/glide/load/DecodeFormat;

    return-void
.end method

.method private static getSizeInBytes(Lcom/agc/glide/load/engine/prefill/PreFillType;)I
    .locals 2

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/agc/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs generateAllocationOrder([Lcom/agc/glide/load/engine/prefill/PreFillType;)Lcom/agc/glide/load/engine/prefill/PreFillQueue;
    .locals 7

    iget-object v0, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-interface {v2}, Lcom/agc/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v2}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lcom/agc/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/agc/glide/load/engine/prefill/PreFillType;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/agc/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {p1, v1}, Lcom/agc/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs preFill([Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/agc/glide/load/engine/prefill/PreFillType;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/agc/glide/load/DecodeFormat;

    sget-object v4, Lcom/agc/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/agc/glide/load/DecodeFormat;

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;

    :cond_2
    invoke-virtual {v2}, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/agc/glide/load/engine/prefill/PreFillType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/agc/glide/load/engine/prefill/PreFillType;)Lcom/agc/glide/load/engine/prefill/PreFillQueue;

    move-result-object p1

    new-instance v0, Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v1, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v0, p0, Lcom/agc/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/agc/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-static {v0}, Lcom/agc/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
