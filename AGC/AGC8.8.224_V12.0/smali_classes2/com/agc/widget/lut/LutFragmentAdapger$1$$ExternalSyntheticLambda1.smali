.class public final synthetic Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/agc/model/LutListModel$LutModel;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda1;->f$0:Lcom/agc/model/LutListModel$LutModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda1;->f$0:Lcom/agc/model/LutListModel$LutModel;

    check-cast p1, Lcom/agc/model/LutListModel;

    invoke-static {v0, p1}, Lcom/agc/widget/lut/LutFragmentAdapger$1;->lambda$onHideAds$1(Lcom/agc/model/LutListModel$LutModel;Lcom/agc/model/LutListModel;)V

    return-void
.end method
