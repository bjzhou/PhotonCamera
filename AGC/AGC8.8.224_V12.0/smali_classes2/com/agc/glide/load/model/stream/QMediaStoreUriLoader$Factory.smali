.class abstract Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;

    iget-object v1, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {p1, v3, v2}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/model/ModelLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    invoke-virtual {p1, v4, v3}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object v3, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;-><init>(Landroid/content/Context;Lcom/agc/glide/load/model/ModelLoader;Lcom/agc/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final teardown()V
    .locals 0

    return-void
.end method
