.class Lcom/agc/widget/OptionWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$000(Lcom/agc/widget/OptionWindow;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/OptionButton$OptionButtonItem;

    iget p3, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    iget-object p4, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p4}, Lcom/agc/widget/OptionWindow;->access$100(Lcom/agc/widget/OptionWindow;)I

    move-result p4

    if-eq p3, p4, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/agc/widget/OptionButton;->vibrate(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    iget p1, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    invoke-static {p2, p1}, Lcom/agc/widget/OptionWindow;->access$102(Lcom/agc/widget/OptionWindow;I)I

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    iget-object p2, p1, Lcom/agc/widget/OptionWindow;->adapter:Lcom/agc/widget/OptionWindow$OptionAdapter;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$100(Lcom/agc/widget/OptionWindow;)I

    move-result p1

    iput p1, p2, Lcom/agc/widget/OptionWindow$OptionAdapter;->selectedIndex:I

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    iget-object p1, p1, Lcom/agc/widget/OptionWindow;->adapter:Lcom/agc/widget/OptionWindow$OptionAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p2}, Lcom/agc/widget/OptionWindow;->access$100(Lcom/agc/widget/OptionWindow;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/agc/widget/OptionWindow$OnPopItemClickListener;->onClickPopItem(I)V

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/OptionWindow$1;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-virtual {p1}, Lcom/agc/widget/OptionWindow;->dismiss()V

    :cond_1
    return-void
.end method
