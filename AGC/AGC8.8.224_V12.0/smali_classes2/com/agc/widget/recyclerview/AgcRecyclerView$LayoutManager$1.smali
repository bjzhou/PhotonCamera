.class Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getParentEnd()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method
