.class Lcom/agc/widget/lut/LutBtnGuideDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutBtnGuideDialog;->initView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutBtnGuideDialog;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutBtnGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutBtnGuideDialog$1;->this$0:Lcom/agc/widget/lut/LutBtnGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/lut/LutBtnGuideDialog$1;->this$0:Lcom/agc/widget/lut/LutBtnGuideDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
