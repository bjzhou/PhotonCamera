.class Lcom/agc/widget/cure/StringListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/cure/StringListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/cure/StringListAdapter;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/cure/StringListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/cure/StringListAdapter$1;->this$0:Lcom/agc/widget/cure/StringListAdapter;

    iput p2, p0, Lcom/agc/widget/cure/StringListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/agc/widget/cure/StringListAdapter$1;->this$0:Lcom/agc/widget/cure/StringListAdapter;

    invoke-static {p1}, Lcom/agc/widget/cure/StringListAdapter;->access$000(Lcom/agc/widget/cure/StringListAdapter;)Lcom/agc/widget/cure/OnStringItemClick;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/cure/StringListAdapter$1;->this$0:Lcom/agc/widget/cure/StringListAdapter;

    invoke-static {p1}, Lcom/agc/widget/cure/StringListAdapter;->access$000(Lcom/agc/widget/cure/StringListAdapter;)Lcom/agc/widget/cure/OnStringItemClick;

    move-result-object p1

    iget v0, p0, Lcom/agc/widget/cure/StringListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/agc/widget/cure/StringListAdapter$1;->this$0:Lcom/agc/widget/cure/StringListAdapter;

    invoke-static {v1}, Lcom/agc/widget/cure/StringListAdapter;->access$100(Lcom/agc/widget/cure/StringListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/cure/StringListAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/agc/widget/cure/OnStringItemClick;->onStringItemClick(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
