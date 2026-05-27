.class Lcom/agc/widget/lut/LutSelectedDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectedDialog;->onDownloadError()V
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

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog$7;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog$7;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectedDialog;->access$300(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog$7;->this$0:Lcom/agc/widget/lut/LutSelectedDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/agc/widget/lut/LutSelectedDialog;->isDownloading:Z

    return-void
.end method
