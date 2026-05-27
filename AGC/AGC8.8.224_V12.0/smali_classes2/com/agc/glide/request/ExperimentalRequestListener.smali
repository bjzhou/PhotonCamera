.class public abstract Lcom/agc/glide/request/ExperimentalRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/RequestListener<",
        "TResourceT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/load/DataSource;ZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceT;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TResourceT;>;",
            "Lcom/agc/glide/load/DataSource;",
            "ZZ)Z"
        }
    .end annotation
.end method
