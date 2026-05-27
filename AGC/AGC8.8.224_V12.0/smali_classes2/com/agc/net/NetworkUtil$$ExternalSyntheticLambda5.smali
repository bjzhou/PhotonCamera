.class public final synthetic Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/net/OnNetworkListener;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/net/OnNetworkListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda5;->f$0:Lcom/agc/net/OnNetworkListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda5;->f$0:Lcom/agc/net/OnNetworkListener;

    invoke-static {v0}, Lcom/agc/net/NetworkUtil;->lambda$getAds$1(Lcom/agc/net/OnNetworkListener;)V

    return-void
.end method
