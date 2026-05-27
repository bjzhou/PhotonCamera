.class Lcom/agc/widget/recyclerview/AgcRecyclerView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
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

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->animateAppearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processDisappeared(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->animateDisappearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processPersistent(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->animatePersistence(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->postAnimationRunner()V

    :cond_1
    return-void
.end method

.method public unused(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v1, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    return-void
.end method
