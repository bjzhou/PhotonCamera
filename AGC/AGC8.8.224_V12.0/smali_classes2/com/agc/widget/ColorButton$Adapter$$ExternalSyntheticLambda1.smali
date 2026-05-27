.class public final synthetic Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/agc/widget/ColorButton$Adapter;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/widget/ColorButton$Adapter;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;->f$0:Lcom/agc/widget/ColorButton$Adapter;

    iput-object p2, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;->f$0:Lcom/agc/widget/ColorButton$Adapter;

    iget-object v1, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/agc/widget/ColorButton$Adapter;->lambda$getView$1$com-agc-widget-ColorButton$Adapter(Landroid/widget/EditText;Landroid/view/View;Z)V

    return-void
.end method
