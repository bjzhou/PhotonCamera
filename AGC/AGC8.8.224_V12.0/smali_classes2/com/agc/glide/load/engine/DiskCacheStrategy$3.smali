.class Lcom/agc/glide/load/engine/DiskCacheStrategy$3;
.super Lcom/agc/glide/load/engine/DiskCacheStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decodeCachedResource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDataCacheable(Lcom/agc/glide/load/DataSource;)Z
    .locals 1

    sget-object v0, Lcom/agc/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResourceCacheable(ZLcom/agc/glide/load/DataSource;Lcom/agc/glide/load/EncodeStrategy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
