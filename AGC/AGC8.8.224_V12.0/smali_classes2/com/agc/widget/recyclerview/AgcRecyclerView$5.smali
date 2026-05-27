.class Lcom/agc/widget/recyclerview/AgcRecyclerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Called attach on a child which is not detached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->access$000(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called detach on an already detached child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->access$100(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->onEnteredHiddenState(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->onLeftHiddenState(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
