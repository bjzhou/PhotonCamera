.class public Lcom/agc/glide/load/model/ModelLoader$LoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final alternateKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final fetcher:Lcom/agc/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/data/DataFetcher<",
            "TData;>;"
        }
    .end annotation
.end field

.field public final sourceKey:Lcom/agc/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "TData;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Ljava/util/List;Lcom/agc/glide/load/data/DataFetcher;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/Key;Ljava/util/List;Lcom/agc/glide/load/data/DataFetcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Key;

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-static {p3}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/data/DataFetcher;

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    return-void
.end method
