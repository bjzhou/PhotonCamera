.class final Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/DirectResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/data/DataFetcher<",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataT;"
        }
    .end annotation
.end field

.field private final resourceId:I

.field private final resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;

.field private final theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/Resources;",
            "Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener<",
            "TDataT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->theme:Landroid/content/res/Resources$Theme;

    iput-object p2, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    iput p4, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceId:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    invoke-interface {v1, v0}, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    invoke-interface {v0}, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/agc/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/DataSource;->LOCAL:Lcom/agc/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
            "-TDataT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceOpener:Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;

    iget-object v0, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->theme:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->resourceId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceOpener;->open(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/model/DirectResourceLoader$ResourceDataFetcher;->data:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/agc/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p2, p1}, Lcom/agc/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
