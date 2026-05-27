.class public abstract Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lcom/agc/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Lcom/agc/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lcom/agc/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelCache<",
            "TModel;",
            "Lcom/agc/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/ModelLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Lcom/agc/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/agc/glide/load/model/ModelLoader;Lcom/agc/glide/load/model/ModelCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/model/ModelLoader;Lcom/agc/glide/load/model/ModelCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Lcom/agc/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/agc/glide/load/model/ModelCache<",
            "TModel;",
            "Lcom/agc/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/agc/glide/load/model/ModelLoader;

    iput-object p2, p0, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/agc/glide/load/model/ModelCache;

    return-void
.end method

.method private static getAlternateKeys(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/agc/glide/load/model/GlideUrl;

    invoke-direct {v2, v1}, Lcom/agc/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/agc/glide/load/model/ModelCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/model/GlideUrl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->getUrl(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/agc/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->getHeaders(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/Headers;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/agc/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/agc/glide/load/model/Headers;)V

    iget-object v0, p0, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/agc/glide/load/model/ModelCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/agc/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->getAlternateUrls(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/agc/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object p4, p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-static {p1}, Lcom/agc/glide/load/model/stream/BaseGlideUrlLoader;->getAlternateKeys(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-direct {p3, p4, p1, p2}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Ljava/util/List;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p3

    :cond_5
    :goto_1
    return-object p2
.end method

.method public getAlternateUrls(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/Headers;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/Headers;"
        }
    .end annotation

    sget-object p1, Lcom/agc/glide/load/model/Headers;->DEFAULT:Lcom/agc/glide/load/model/Headers;

    return-object p1
.end method

.method public abstract getUrl(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
