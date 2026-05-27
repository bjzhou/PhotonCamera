.class Lcom/agc/glide/load/engine/LockedResource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/LockedResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
        "Lcom/agc/glide/load/engine/LockedResource<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/agc/glide/load/engine/LockedResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/load/engine/LockedResource<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/engine/LockedResource;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/LockedResource;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/LockedResource$1;->create()Lcom/agc/glide/load/engine/LockedResource;

    move-result-object v0

    return-object v0
.end method
