.class Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtraFillSpace:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mNoRecycleSpace:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    return-void
.end method

.method public hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public log()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLM#LayoutState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public next(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    return-object p1
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eq v4, p1, :cond_3

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method
