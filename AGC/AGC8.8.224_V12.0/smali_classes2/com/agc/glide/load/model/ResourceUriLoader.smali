.class public final Lcom/agc/glide/load/model/ResourceUriLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/ResourceUriLoader$InputStreamFactory;,
        Lcom/agc/glide/load/model/ResourceUriLoader$AssetFileDescriptorFactory;
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


# static fields
.field private static final INVALID_RESOURCE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourceUriLoader"


# instance fields
.field private final context:Landroid/content/Context;

.field private final delegate:Lcom/agc/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->delegate:Lcom/agc/glide/load/model/ModelLoader;

    return-void
.end method

.method public static newAssetFileDescriptorFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "Landroid/net/Uri;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/ResourceUriLoader$AssetFileDescriptorFactory;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/model/ResourceUriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static newStreamFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/ResourceUriLoader$InputStreamFactory;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/model/ResourceUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private parseResourceIdUri(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 5
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

    const-string v0, "ResourceUriLoader"

    const/4 v1, 0x0

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse a valid non-0 resource id from: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->delegate:Lcom/agc/glide/load/model/ModelLoader;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse resource id from: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private parseResourceNameUri(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 4
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

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x5

    const-string p3, "ResourceUriLoader"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to find resource id for: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->delegate:Lcom/agc/glide/load/model/ModelLoader;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 3
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

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/ResourceUriLoader;->parseResourceIdUri(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/ResourceUriLoader;->parseResourceNameUri(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x5

    const-string p3, "ResourceUriLoader"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse resource uri: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/ResourceUriLoader;->buildLoadData(Landroid/net/Uri;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/ResourceUriLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/ResourceUriLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
