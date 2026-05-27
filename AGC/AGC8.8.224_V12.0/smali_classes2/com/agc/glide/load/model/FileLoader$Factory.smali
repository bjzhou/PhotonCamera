.class public Lcom/agc/glide/load/model/FileLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final opener:Lcom/agc/glide/load/model/FileLoader$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/FileLoader$FileOpener<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/FileLoader$FileOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/FileLoader$FileOpener<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/model/FileLoader$Factory;->opener:Lcom/agc/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public final build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, Lcom/agc/glide/load/model/FileLoader;

    iget-object v0, p0, Lcom/agc/glide/load/model/FileLoader$Factory;->opener:Lcom/agc/glide/load/model/FileLoader$FileOpener;

    invoke-direct {p1, v0}, Lcom/agc/glide/load/model/FileLoader;-><init>(Lcom/agc/glide/load/model/FileLoader$FileOpener;)V

    return-object p1
.end method

.method public final teardown()V
    .locals 0

    return-void
.end method
