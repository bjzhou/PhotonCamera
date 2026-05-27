.class public final synthetic Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/agc/util/SpUtils;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/util/SpUtils;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda13;->f$0:Lcom/agc/util/SpUtils;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda13;->f$0:Lcom/agc/util/SpUtils;

    iget-object v1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    check-cast p1, Lcom/agc/model/AdsModel;

    invoke-static {v0, v1, p1}, Lcom/agc/net/NetworkUtil;->lambda$onLutResponse$6(Lcom/agc/util/SpUtils;Ljava/util/List;Lcom/agc/model/AdsModel;)V

    return-void
.end method
