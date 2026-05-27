.class public final Lcom/agc/glide/load/model/DirectResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/DirectResourceLoader$InputStreamFactory;,
        Lcom/agc/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;,
        Lcom/agc/glide/load/model/DirectResourceLoader$DrawableFactory;,
        Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;,
        Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "Ljava/lang/Integer;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/DirectResourceLoader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/glide/load/model/DirectResourceLoader;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    return-void
.end method

.method public static assetFileDescriptorFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static drawableFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/DirectResourceLoader$DrawableFactory;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/model/DirectResourceLoader$DrawableFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static inputStreamFactory(Landroid/content/Context;)Lcom/agc/glide/load/model/ModelLoaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/DirectResourceLoader$InputStreamFactory;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/model/DirectResourceLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Integer;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "TDataT;>;"
        }
    .end annotation

    sget-object p2, Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;->THEME:Lcom/agc/glide/load/Option;

    invoke-virtual {p4, p2}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources$Theme;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/agc/glide/load/model/DirectResourceLoader;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    :goto_0
    new-instance p4, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance v0, Lcom/agc/glide/signature/ObjectKey;

    invoke-direct {v0, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;

    iget-object v2, p0, Lcom/agc/glide/load/model/DirectResourceLoader;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p2, p3, v2, p1}, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;I)V

    invoke-direct {p4, v0, v1}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p4
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/DirectResourceLoader;->buildLoadData(Ljava/lang/Integer;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/DirectResourceLoader;->handles(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
