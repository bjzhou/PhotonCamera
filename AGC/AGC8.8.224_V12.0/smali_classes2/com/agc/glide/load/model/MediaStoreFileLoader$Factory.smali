.class public final Lcom/agc/glide/load/model/MediaStoreFileLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/MediaStoreFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

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
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/agc/glide/load/model/MediaStoreFileLoader;

    iget-object v0, p0, Lcom/agc/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/agc/glide/load/model/MediaStoreFileLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
