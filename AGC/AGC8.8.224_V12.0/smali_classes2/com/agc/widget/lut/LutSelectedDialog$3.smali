.class Lcom/agc/widget/lut/LutSelectedDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;


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

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$3;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntensity(I)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog$3;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectedDialog;->access$000(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$3;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectedDialog;->access$000(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$3;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectedDialog;->access$100(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$3;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectedDialog;->access$100(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
