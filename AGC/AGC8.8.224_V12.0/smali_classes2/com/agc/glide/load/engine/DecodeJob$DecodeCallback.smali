.class final Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/DecodePath$DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecodeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/DecodePath$DecodeCallback<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/agc/glide/load/DataSource;

.field final synthetic this$0:Lcom/agc/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/DecodeJob;Lcom/agc/glide/load/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/agc/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/agc/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public onResourceDecoded(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/agc/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/agc/glide/load/DataSource;

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/load/engine/DecodeJob;->onResourceDecoded(Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method
