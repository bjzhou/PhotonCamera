.class Lcom/agc/asv/ShadowPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/ShadowPopup;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/ShadowPopup;

.field final synthetic val$mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ShadowPopup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iput-object p2, p0, Lcom/agc/asv/ShadowPopup$2;->val$mList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object v1, v0, Lcom/agc/asv/ShadowPopup;->listview:Lcom/agc/asv/HorizontalListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/agc/asv/ShadowPopup;->access$102(Lcom/agc/asv/ShadowPopup;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {v1}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object v0, v0, Lcom/agc/asv/ShadowPopup;->listview:Lcom/agc/asv/HorizontalListView;

    iget-object v1, p0, Lcom/agc/asv/ShadowPopup$2;->val$mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v2, v3}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {v2}, Lcom/agc/asv/ShadowPopup;->access$100(Lcom/agc/asv/ShadowPopup;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$2;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object v0, v0, Lcom/agc/asv/ShadowPopup;->listview:Lcom/agc/asv/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
