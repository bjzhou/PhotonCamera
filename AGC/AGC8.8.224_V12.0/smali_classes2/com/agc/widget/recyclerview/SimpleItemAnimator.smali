.class public abstract Lcom/agc/widget/recyclerview/SimpleItemAnimator;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    if-eqz p2, :cond_1

    iget v2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v2, v4, :cond_0

    iget v0, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v3, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateMove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateAdd(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    iget v3, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget p3, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, p3

    move v5, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget p4, p4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public animateDisappearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    iget v2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget-object p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_1
    move v5, p3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateMove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateRemove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateMove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    iget v2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v2, v4, :cond_1

    iget v0, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->dispatchMoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget v3, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->animateMove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract animateRemove(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchAddFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onAddFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->dispatchAnimationFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onAddStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onChangeFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->dispatchAnimationFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onChangeStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onMoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->dispatchAnimationFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onMoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onRemoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->dispatchAnimationFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->onRemoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
