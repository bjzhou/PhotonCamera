.class Lcom/agc/widget/FeatureButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/FeatureButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/FeatureButton;


# direct methods
.method public constructor <init>(Lcom/agc/widget/FeatureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/FeatureButton$1;->this$0:Lcom/agc/widget/FeatureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/FeatureButton$1;->this$0:Lcom/agc/widget/FeatureButton;

    iget-boolean v1, v0, Lcom/agc/widget/FeatureButton;->showGuideDialog:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/widget/FeatureButton;->showGuideDialog:Z

    new-instance v0, Lcom/agc/widget/lut/LutBtnGuideDialog;

    iget-object v1, p0, Lcom/agc/widget/FeatureButton$1;->this$0:Lcom/agc/widget/FeatureButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/FeatureButton$1;->this$0:Lcom/agc/widget/FeatureButton;

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/lut/LutBtnGuideDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
