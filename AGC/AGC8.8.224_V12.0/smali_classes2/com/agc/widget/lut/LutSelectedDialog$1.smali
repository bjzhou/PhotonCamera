.class Lcom/agc/widget/lut/LutSelectedDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/lut/LutSelectedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectedDialog;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectedDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$1;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$1;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectedDialog;->access$000(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
