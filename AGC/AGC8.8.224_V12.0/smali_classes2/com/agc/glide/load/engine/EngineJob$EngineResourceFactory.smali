.class Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineResourceFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/engine/Resource;ZLcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)Lcom/agc/glide/load/engine/EngineResource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;Z",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineResource$ResourceListener;",
            ")",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "TR;>;"
        }
    .end annotation

    new-instance v6, Lcom/agc/glide/load/engine/EngineResource;

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/agc/glide/load/engine/EngineResource;-><init>(Lcom/agc/glide/load/engine/Resource;ZZLcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V

    return-object v6
.end method
