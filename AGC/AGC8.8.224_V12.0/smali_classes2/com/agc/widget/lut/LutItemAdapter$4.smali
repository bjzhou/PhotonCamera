.class Lcom/agc/widget/lut/LutItemAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/net/NetworkUtil$DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutItemAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutItemAdapter;

.field final synthetic val$model:Lcom/agc/model/LutListModel$LutModel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutItemAdapter;Lcom/agc/model/LutListModel$LutModel;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    iput-object p2, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->val$model:Lcom/agc/model/LutListModel$LutModel;

    iput-object p3, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadError()V

    :cond_0
    return-void
.end method

.method public onDownloadStart()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadStart()V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$000(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$000(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->val$model:Lcom/agc/model/LutListModel$LutModel;

    invoke-interface {v0, v1, p1}, Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;->onSuccess(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    iget-object v1, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->val$model:Lcom/agc/model/LutListModel$LutModel;

    invoke-virtual {v1}, Lcom/agc/model/LutListModel$LutModel;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/agc/widget/lut/LutItemAdapter;->access$302(Lcom/agc/widget/lut/LutItemAdapter;I)I

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->val$v:Landroid/view/View;

    new-instance v1, Lcom/agc/widget/lut/LutItemAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/agc/widget/lut/LutItemAdapter$4$1;-><init>(Lcom/agc/widget/lut/LutItemAdapter$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$4;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$200(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onProgress(I)V

    :cond_0
    return-void
.end method
