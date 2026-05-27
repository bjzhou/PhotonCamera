.class Lcom/agc/widget/lut/LutSelectorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$1;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$1;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$000(Lcom/agc/widget/lut/LutSelectorLayout;Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$1;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectorLayout;->access$100(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutFragmentAdapger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/agc/widget/lut/LutFragmentAdapger;->setSelectId(I)V

    return-void
.end method
