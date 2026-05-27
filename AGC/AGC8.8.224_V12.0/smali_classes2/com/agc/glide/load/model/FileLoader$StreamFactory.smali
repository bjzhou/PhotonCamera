.class public Lcom/agc/glide/load/model/FileLoader$StreamFactory;
.super Lcom/agc/glide/load/model/FileLoader$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/load/model/FileLoader$Factory<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/model/FileLoader$StreamFactory$1;

    invoke-direct {v0}, Lcom/agc/glide/load/model/FileLoader$StreamFactory$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/agc/glide/load/model/FileLoader$Factory;-><init>(Lcom/agc/glide/load/model/FileLoader$FileOpener;)V

    return-void
.end method
