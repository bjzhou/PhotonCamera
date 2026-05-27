.class public Lcom/agc/glide/load/model/ResourceLoader$UriFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/agc/glide/load/model/ResourceLoader;

    iget-object v0, p0, Lcom/agc/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/agc/glide/load/model/ResourceLoader;-><init>(Landroid/content/res/Resources;Lcom/agc/glide/load/model/ModelLoader;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
