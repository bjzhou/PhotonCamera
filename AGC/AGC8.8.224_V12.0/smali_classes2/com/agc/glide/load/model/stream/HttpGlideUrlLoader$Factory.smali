.class public Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "Lcom/agc/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/agc/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelCache<",
            "Lcom/agc/glide/load/model/GlideUrl;",
            "Lcom/agc/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/model/ModelCache;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/model/ModelCache;-><init>(J)V

    iput-object v0, p0, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/agc/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Lcom/agc/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader;

    iget-object v0, p0, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/agc/glide/load/model/ModelCache;

    invoke-direct {p1, v0}, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader;-><init>(Lcom/agc/glide/load/model/ModelCache;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
