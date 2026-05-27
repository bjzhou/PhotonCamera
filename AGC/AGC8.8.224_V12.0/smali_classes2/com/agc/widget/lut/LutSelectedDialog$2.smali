.class Lcom/agc/widget/lut/LutSelectedDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectedDialog;->initView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectedDialog;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$2;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$2;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    iget-boolean v0, p1, Lcom/agc/widget/lut/LutSelectedDialog;->isDownloading:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
