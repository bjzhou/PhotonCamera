.class Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
        "Lcom/agc/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/agc/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v2, v1, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v1, v1, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v2, v1}, Lcom/agc/glide/load/engine/DecodeJob;-><init>(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/Engine$DecodeJobFactory$1;->create()Lcom/agc/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method
