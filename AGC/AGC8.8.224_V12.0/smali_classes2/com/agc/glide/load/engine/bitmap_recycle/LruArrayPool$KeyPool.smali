.class final Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
.super Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
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
.method public create()Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;)V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/agc/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->create()Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Class;)Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/bitmap_recycle/BaseKeyPool;->get()Lcom/agc/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->init(ILjava/lang/Class;)V

    return-object v0
.end method
