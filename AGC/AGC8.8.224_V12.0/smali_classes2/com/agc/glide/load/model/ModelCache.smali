.class public Lcom/agc/glide/load/model/ModelCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/ModelCache$ModelKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xfa


# instance fields
.field private final cache:Lcom/agc/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/LruCache<",
            "Lcom/agc/glide/load/model/ModelCache$ModelKey<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/agc/glide/load/model/ModelCache;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/model/ModelCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/agc/glide/load/model/ModelCache$1;-><init>(Lcom/agc/glide/load/model/ModelCache;J)V

    iput-object v0, p0, Lcom/agc/glide/load/model/ModelCache;->cache:Lcom/agc/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/model/ModelCache;->cache:Lcom/agc/glide/util/LruCache;

    invoke-virtual {v0}, Lcom/agc/glide/util/LruCache;->clearMemory()V

    return-void
.end method

.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/agc/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/agc/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/load/model/ModelCache;->cache:Lcom/agc/glide/util/LruCache;

    invoke-virtual {p2, p1}, Lcom/agc/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelCache$ModelKey;->release()V

    return-object p2
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/agc/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/agc/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/load/model/ModelCache;->cache:Lcom/agc/glide/util/LruCache;

    invoke-virtual {p2, p1, p4}, Lcom/agc/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
