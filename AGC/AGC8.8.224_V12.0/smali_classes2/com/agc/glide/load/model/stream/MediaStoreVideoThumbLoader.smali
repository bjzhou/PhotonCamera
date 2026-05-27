.class public Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;->context:Landroid/content/Context;

    return-void
.end method

.method private isRequestingDefaultFrame(Lcom/agc/glide/load/Options;)Z
    .locals 4

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/agc/glide/load/Option;

    invoke-virtual {p1, v0}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/agc/glide/load/data/mediastore/MediaStoreUtil;->isThumbnailSize(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p4}, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;->isRequestingDefaultFrame(Lcom/agc/glide/load/Options;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/agc/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;->context:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/agc/glide/load/data/mediastore/ThumbFetcher;->buildVideoFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/agc/glide/load/data/mediastore/ThumbFetcher;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;->buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p1}, Lcom/agc/glide/load/data/mediastore/MediaStoreUtil;->isMediaStoreVideoUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/stream/MediaStoreVideoThumbLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
