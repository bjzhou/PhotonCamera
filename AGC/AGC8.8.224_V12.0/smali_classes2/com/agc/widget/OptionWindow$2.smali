.class Lcom/agc/widget/OptionWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/OptionWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/OptionWindow;


# direct methods
.method public constructor <init>(Lcom/agc/widget/OptionWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/OptionWindow$2;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/widget/OptionButton;->vibrate(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$2;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$000(Lcom/agc/widget/OptionWindow;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/OptionButton$OptionButtonItem;

    iget-object p2, p0, Lcom/agc/widget/OptionWindow$2;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p2}, Lcom/agc/widget/OptionWindow;->access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/agc/widget/OptionWindow$2;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p2}, Lcom/agc/widget/OptionWindow;->access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    move-result-object p2

    iget p1, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    invoke-interface {p2, p1}, Lcom/agc/widget/OptionWindow$OnPopItemClickListener;->onLongClickPopItem(I)V

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/OptionWindow$2;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-virtual {p1}, Lcom/agc/widget/OptionWindow;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method
