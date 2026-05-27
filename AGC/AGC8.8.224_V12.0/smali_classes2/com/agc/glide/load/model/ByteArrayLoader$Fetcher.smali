.class Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/data/DataFetcher<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method public constructor <init>([BLcom/agc/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/agc/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    iput-object p2, p0, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;

    invoke-interface {v0}, Lcom/agc/glide/load/model/ByteArrayLoader$Converter;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/agc/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/DataSource;->LOCAL:Lcom/agc/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;

    iget-object v0, p0, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    invoke-interface {p1, v0}, Lcom/agc/glide/load/model/ByteArrayLoader$Converter;->convert([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/agc/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
