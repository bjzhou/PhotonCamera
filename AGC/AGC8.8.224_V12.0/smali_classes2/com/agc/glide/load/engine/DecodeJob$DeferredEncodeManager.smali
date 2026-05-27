.class Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredEncodeManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private encoder:Lcom/agc/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private key:Lcom/agc/glide/load/Key;

.field private toEncode:Lcom/agc/glide/load/engine/LockedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/LockedResource<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/agc/glide/load/Key;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    return-void
.end method

.method public encode(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/agc/glide/load/Options;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Lcom/agc/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/agc/glide/load/Key;

    new-instance v1, Lcom/agc/glide/load/engine/DataCacheWriter;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    invoke-direct {v1, v2, v3, p2}, Lcom/agc/glide/load/engine/DataCacheWriter;-><init>(Lcom/agc/glide/load/Encoder;Ljava/lang/Object;Lcom/agc/glide/load/Options;)V

    invoke-interface {p1, v0, v1}, Lcom/agc/glide/load/engine/cache/DiskCache;->put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/cache/DiskCache$Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/LockedResource;->unlock()V

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/LockedResource;->unlock()V

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw p1
.end method

.method public hasResourceToEncode()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/ResourceEncoder;Lcom/agc/glide/load/engine/LockedResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TX;>;",
            "Lcom/agc/glide/load/engine/LockedResource<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/agc/glide/load/Key;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/agc/glide/load/ResourceEncoder;

    iput-object p3, p0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/agc/glide/load/engine/LockedResource;

    return-void
.end method
