.class Lcom/agc/glide/load/model/MultiModelLoaderFactory$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/MultiModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/util/List;Landroidx/core/util/Pools$Pool;)Lcom/agc/glide/load/model/MultiModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TModel;TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lcom/agc/glide/load/model/MultiModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/MultiModelLoader;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/model/MultiModelLoader;-><init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
