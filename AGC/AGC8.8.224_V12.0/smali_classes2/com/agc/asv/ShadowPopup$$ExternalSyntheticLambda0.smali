.class public final synthetic Lcom/agc/asv/ShadowPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/agc/asv/ShadowPopup;

.field public final synthetic f$1:Lcom/agc/asv/ShadowRulerView;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/asv/ShadowPopup;Lcom/agc/asv/ShadowRulerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$$ExternalSyntheticLambda0;->f$0:Lcom/agc/asv/ShadowPopup;

    iput-object p2, p0, Lcom/agc/asv/ShadowPopup$$ExternalSyntheticLambda0;->f$1:Lcom/agc/asv/ShadowRulerView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$$ExternalSyntheticLambda0;->f$0:Lcom/agc/asv/ShadowPopup;

    iget-object v1, p0, Lcom/agc/asv/ShadowPopup$$ExternalSyntheticLambda0;->f$1:Lcom/agc/asv/ShadowRulerView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/agc/asv/ShadowPopup;->lambda$setContentView$0$com-agc-asv-ShadowPopup(Lcom/agc/asv/ShadowRulerView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
