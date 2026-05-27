.class public final Lcom/agc/glide/load/model/DataUrlLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;,
        Lcom/agc/glide/load/model/DataUrlLoader$DataUriFetcher;,
        Lcom/agc/glide/load/model/DataUrlLoader$StreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "TModel;TData;>;"
    }
.end annotation


# static fields
.field private static final BASE64_TAG:Ljava/lang/String; = ";base64"

.field private static final DATA_SCHEME_IMAGE:Ljava/lang/String; = "data:image"


# instance fields
.field private final dataDecoder:Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/agc/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/agc/glide/load/model/DataUrlLoader$DataUriFetcher;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;

    invoke-direct {p4, p1, v0}, Lcom/agc/glide/load/model/DataUrlLoader$DataUriFetcher;-><init>(Ljava/lang/String;Lcom/agc/glide/load/model/DataUrlLoader$DataDecoder;)V

    invoke-direct {p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
