.class public final synthetic Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/net/OnNetworkListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/agc/net/OnNetworkListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda3;->f$0:Lcom/agc/net/OnNetworkListener;

    iput-boolean p2, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda3;->f$0:Lcom/agc/net/OnNetworkListener;

    iget-boolean v1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1}, Lcom/agc/net/NetworkUtil;->lambda$getLutList$5(Lcom/agc/net/OnNetworkListener;Z)V

    return-void
.end method
