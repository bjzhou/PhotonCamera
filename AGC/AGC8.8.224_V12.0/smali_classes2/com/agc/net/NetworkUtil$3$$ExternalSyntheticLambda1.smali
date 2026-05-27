.class public final synthetic Lcom/agc/net/NetworkUtil$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/net/OnNetworkListener;

.field public final synthetic f$1:Lcom/agc/model/ResultModel;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/net/OnNetworkListener;Lcom/agc/model/ResultModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$3$$ExternalSyntheticLambda1;->f$0:Lcom/agc/net/OnNetworkListener;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$3$$ExternalSyntheticLambda1;->f$1:Lcom/agc/model/ResultModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$3$$ExternalSyntheticLambda1;->f$0:Lcom/agc/net/OnNetworkListener;

    iget-object v1, p0, Lcom/agc/net/NetworkUtil$3$$ExternalSyntheticLambda1;->f$1:Lcom/agc/model/ResultModel;

    invoke-static {v0, v1}, Lcom/agc/net/NetworkUtil$3;->lambda$run$1(Lcom/agc/net/OnNetworkListener;Lcom/agc/model/ResultModel;)V

    return-void
.end method
