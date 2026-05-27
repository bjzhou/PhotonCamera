.class public final Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;,
        Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$Factory;,
        Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;,
        Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
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

.field private final fileDelegate:Lcom/agc/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final uriDelegate:Lcom/agc/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/load/model/ModelLoader;Lcom/agc/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->fileDelegate:Lcom/agc/glide/load/model/ModelLoader;

    iput-object p3, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->uriDelegate:Lcom/agc/glide/load/model/ModelLoader;

    iput-object p4, p0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->dataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "TDataT;>;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance v2, Lcom/agc/glide/signature/ObjectKey;

    move-object v7, p1

    invoke-direct {v2, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;

    iget-object v4, v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->fileDelegate:Lcom/agc/glide/load/model/ModelLoader;

    iget-object v6, v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->uriDelegate:Lcom/agc/glide/load/model/ModelLoader;

    iget-object v11, v0, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->dataClass:Ljava/lang/Class;

    move-object v3, v12

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;-><init>(Landroid/content/Context;Lcom/agc/glide/load/model/ModelLoader;Lcom/agc/glide/load/model/ModelLoader;Landroid/net/Uri;IILcom/agc/glide/load/Options;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v12}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object v1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/agc/glide/load/data/mediastore/MediaStoreUtil;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/stream/QMediaStoreUriLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
