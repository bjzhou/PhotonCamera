.class public abstract Lcom/agc/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field public static final AUTOMATIC:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field public static final DATA:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field public static final NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field public static final RESOURCE:Lcom/agc/glide/load/engine/DiskCacheStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/DiskCacheStrategy$1;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DiskCacheStrategy$1;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/agc/glide/load/engine/DiskCacheStrategy$2;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DiskCacheStrategy$2;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/agc/glide/load/engine/DiskCacheStrategy$3;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DiskCacheStrategy$3;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/agc/glide/load/engine/DiskCacheStrategy$4;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DiskCacheStrategy$4;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/agc/glide/load/engine/DiskCacheStrategy$5;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DiskCacheStrategy$5;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decodeCachedData()Z
.end method

.method public abstract decodeCachedResource()Z
.end method

.method public abstract isDataCacheable(Lcom/agc/glide/load/DataSource;)Z
.end method

.method public abstract isResourceCacheable(ZLcom/agc/glide/load/DataSource;Lcom/agc/glide/load/EncodeStrategy;)Z
.end method
