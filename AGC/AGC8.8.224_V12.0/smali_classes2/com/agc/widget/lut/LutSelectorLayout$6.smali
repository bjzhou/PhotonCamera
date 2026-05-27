.class Lcom/agc/widget/lut/LutSelectorLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/net/NetworkUtil$DownloadInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectorLayout;->onSuccess(Lcom/agc/model/ResultModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/net/NetworkUtil$DownloadInfoListener<",
        "Lcom/agc/model/LutListModel$LutModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$6;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError()V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcom/agc/model/LutListModel$LutModel;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout$6;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$500(Lcom/agc/widget/lut/LutSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout$6;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$500(Lcom/agc/widget/lut/LutSelectorLayout;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/model/LutListModel;

    invoke-virtual {v0}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout$6;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$100(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutFragmentAdapger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p1}, Lcom/agc/model/LutListModel$LutModel;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/agc/model/LutListModel$LutModel;->getDownloadLutFile()Lcom/agc/model/LutFileModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/model/LutFileModel;->getFilelink()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/agc/net/NetworkUtil;->downloadLutFile(Ljava/lang/String;Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    return-void
.end method

.method public bridge synthetic onDownloadSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/agc/model/LutListModel$LutModel;

    invoke-virtual {p0, p1}, Lcom/agc/widget/lut/LutSelectorLayout$6;->onDownloadSuccess(Lcom/agc/model/LutListModel$LutModel;)V

    return-void
.end method
