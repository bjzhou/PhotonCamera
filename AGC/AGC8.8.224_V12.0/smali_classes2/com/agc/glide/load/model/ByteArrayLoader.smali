.class public Lcom/agc/glide/load/model/ByteArrayLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/ByteArrayLoader$Converter;,
        Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;,
        Lcom/agc/glide/load/model/ByteArrayLoader$StreamFactory;,
        Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "[BTData;>;"
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


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/ByteArrayLoader;->converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/model/ByteArrayLoader;->buildLoadData([BIILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData([BIILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/agc/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;

    iget-object v0, p0, Lcom/agc/glide/load/model/ByteArrayLoader;->converter:Lcom/agc/glide/load/model/ByteArrayLoader$Converter;

    invoke-direct {p4, p1, v0}, Lcom/agc/glide/load/model/ByteArrayLoader$Fetcher;-><init>([BLcom/agc/glide/load/model/ByteArrayLoader$Converter;)V

    invoke-direct {p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/ByteArrayLoader;->handles([B)Z

    move-result p1

    return p1
.end method

.method public handles([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
