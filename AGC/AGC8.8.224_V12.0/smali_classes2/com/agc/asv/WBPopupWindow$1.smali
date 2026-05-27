.class Lcom/agc/asv/WBPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/WBPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/WBPopupWindow;

.field final synthetic val$adapter:Lcom/agc/asv/WBAdapter;


# direct methods
.method public constructor <init>(Lcom/agc/asv/WBPopupWindow;Lcom/agc/asv/WBAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/WBPopupWindow$1;->this$0:Lcom/agc/asv/WBPopupWindow;

    iput-object p2, p0, Lcom/agc/asv/WBPopupWindow$1;->val$adapter:Lcom/agc/asv/WBAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/asv/WBPopupWindow$1;->this$0:Lcom/agc/asv/WBPopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/agc/asv/WBPopupWindow;->vibrate(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "click item="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    instance-of p1, p2, Lcom/agc/asv/WB;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/asv/WBPopupWindow$1;->val$adapter:Lcom/agc/asv/WBAdapter;

    invoke-virtual {p1, p3}, Lcom/agc/asv/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/WBModel;

    iget-object p2, p0, Lcom/agc/asv/WBPopupWindow$1;->val$adapter:Lcom/agc/asv/WBAdapter;

    iget-object p2, p2, Lcom/agc/asv/CommonAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/agc/asv/WBModel;

    iget-object p5, p3, Lcom/agc/asv/WBModel;->wbType:Lcom/agc/asv/WB$WBType;

    iget-object v0, p1, Lcom/agc/asv/WBModel;->wbType:Lcom/agc/asv/WB$WBType;

    if-ne p5, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    :goto_1
    iput-boolean p4, p3, Lcom/agc/asv/WBModel;->isChecked:Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/agc/asv/WBPopupWindow$1;->val$adapter:Lcom/agc/asv/WBAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/agc/asv/WBPopupWindow$1;->this$0:Lcom/agc/asv/WBPopupWindow;

    invoke-static {p2}, Lcom/agc/asv/WBPopupWindow;->access$000(Lcom/agc/asv/WBPopupWindow;)Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iput-boolean p4, p1, Lcom/agc/asv/WBModel;->isChecked:Z

    iget-object p2, p0, Lcom/agc/asv/WBPopupWindow$1;->this$0:Lcom/agc/asv/WBPopupWindow;

    invoke-static {p2}, Lcom/agc/asv/WBPopupWindow;->access$000(Lcom/agc/asv/WBPopupWindow;)Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;->onClickPopItem(Lcom/agc/asv/WBModel;)V

    :cond_2
    return-void
.end method
