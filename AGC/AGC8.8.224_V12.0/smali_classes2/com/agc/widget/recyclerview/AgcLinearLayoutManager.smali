.class public Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ItemTouchHelper$ViewDropHandler;
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;,
        Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;,
        Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;,
        Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "AgcLinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

.field mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    new-instance p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    new-instance p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutChunkResult:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

    const/4 p1, 0x2

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutChunkResult:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    invoke-static {p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setOrientation(I)V

    iget-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setReverseLayout(Z)V

    iget-boolean p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/agc/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/agc/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/agc/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private fixLayoutEndGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v4, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    move v11, v5

    :goto_1
    iget-boolean v13, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    move v12, v14

    :cond_3
    iget-object v11, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-object v10, v10, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    if-ne v12, v14, :cond_4

    add-int/2addr v8, v10

    goto :goto_2

    :cond_4
    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput-object v3, v4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_6

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v8, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iput v5, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    iget-object v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    :cond_6
    if-lez v9, :cond_7

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v9, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iput v5, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    iget-object v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    :cond_7
    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    :cond_8
    :goto_3
    return-void
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "AgcLinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;)V
    .locals 3

    iget-boolean v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    iget p2, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleViewsFromEnd(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleViewsFromStart(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_6

    invoke-virtual {p0, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-lt v2, v1, :cond_5

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result p3

    if-ge p3, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V
    .locals 4

    if-gez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_6

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_5

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)V

    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    :goto_1
    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    return-void
.end method

.method private updateAnchorFromChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findReferenceChild(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;ZZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-gt p1, v0, :cond_3

    if-ge p2, v0, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    if-lt p2, v3, :cond_4

    if-le p1, v3, :cond_4

    move v1, v2

    :cond_4
    if-nez v4, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    iget-boolean p1, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_6

    move v0, v3

    :cond_6
    iput v0, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    return v0

    :cond_3
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_c

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    :cond_4
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    :cond_5
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    :cond_6
    iget-boolean v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v2, :cond_a

    move v1, v0

    :cond_a
    iput-boolean v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_b
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v0

    :cond_c
    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, v1

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, v1

    :goto_4
    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    return v0

    :cond_e
    :goto_5
    iput v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    iput v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateAnchorFromPendingData(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateAnchorFromChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mInfinite:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0, p4, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->calculateExtraLayoutSpace(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;[I)V

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    aget p4, p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    if-eqz v1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p4

    :goto_0
    iput v3, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    iput p4, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    const/4 p4, -0x1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_3

    move v2, p4

    :cond_3
    iput v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr p4, v2

    iput p4, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, p4

    :goto_2
    iput v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr p4, v2

    iput p4, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    :goto_3
    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_6

    sub-int/2addr p2, p1

    iput p2, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    :cond_6
    iput p1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iput p2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V
    .locals 1

    iget v0, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iput p2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V
    .locals 1

    iget v0, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public calculateExtraLayoutSpace(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;[I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getExtraLayoutSpace(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    move p1, v1

    :goto_0
    aput p1, p2, v1

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutState(IIZLcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v3, v2

    :goto_2
    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public collectPrefetchPositionsForLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    iget v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public computeVerticalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public createLayoutState()Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method public ensureLayoutState()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->createLayoutState()Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method public fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I
    .locals 7

    iget v0, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    iget v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleByLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;)V

    :cond_1
    iget v1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutChunkResult:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;

    :cond_2
    iget-boolean v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->resetInternal()V

    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->layoutChunk(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;)V

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    iget v5, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->recycleByLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findReferenceChild(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    move v5, v2

    goto :goto_0

    :cond_0
    move v2, v1

    move v1, v3

    move v5, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v6

    iget-object v7, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    iget-object v8, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v2, :cond_a

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14, v12}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v15, v12}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {v13}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    move v13, v4

    goto :goto_2

    :cond_2
    move v13, v3

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    move v14, v4

    goto :goto_3

    :cond_3
    move v14, v3

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    move-object v9, v10

    goto :goto_8

    :cond_c
    move-object v9, v11

    :goto_8
    return-object v9
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getExtraLayoutSpace(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public layoutChunk(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    invoke-virtual {p3, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->next(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v0, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget p3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    if-ne v3, v1, :cond_7

    iget v1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    :cond_7
    iget v1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget p3, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    if-ne v3, v1, :cond_9

    iget v1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_4

    :cond_9
    iget v1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result p3

    if-eqz p3, :cond_b

    :cond_a
    iput-boolean p2, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method public onAnchorReady(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutState(IIZLcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput p2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iput-boolean v2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    if-gt v3, v4, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->reset()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateAnchorInfoForLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iput-boolean v5, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mValid:Z

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v3, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iput v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    aput v2, v0, v2

    aput v2, v0, v5

    invoke-virtual {p0, p2, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->calculateExtraLayoutSpace(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;[I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v1, :cond_a

    iget v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_a

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    :goto_3
    sub-int/2addr v6, v4

    if-lez v6, :cond_9

    add-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int/2addr v3, v6

    :cond_a
    :goto_4
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iget-boolean v6, v4, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_b
    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v5

    :cond_d
    :goto_6
    invoke-virtual {p0, p1, p2, v4, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->onAnchorReady(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveIsInfinite()Z

    move-result v4

    iput-boolean v4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mInfinite:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v4

    iput-boolean v4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v2, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iget-boolean v4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_f

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_e

    add-int/2addr v3, v0

    :cond_e
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v6, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_11

    invoke-direct {p0, v4, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_7

    :cond_f
    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v3, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v3, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v1, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v1, :cond_10

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v6, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_11

    invoke-direct {p0, v4, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput v0, v3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mExtraFillSpace:I

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v3, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    :cond_11
    :goto_7
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_13

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-direct {p0, v3, p1, p2, v5}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fixLayoutEndGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v3, v0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fixLayoutStartGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    move-result v0

    goto :goto_8

    :cond_12
    invoke-direct {p0, v1, p1, p2, v5}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fixLayoutStartGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v3, v0

    invoke-direct {p0, v3, p1, p2, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fixLayoutEndGap(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    move-result v0

    :goto_8
    add-int/2addr v1, v0

    add-int/2addr v3, v0

    :cond_13
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->layoutForPredictiveAnimations(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->onLayoutComplete()V

    goto :goto_9

    :cond_14
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->reset()V

    :goto_9
    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLastStackFromEnd:Z

    return-void
.end method

.method public onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;-><init>(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p3, p4, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    invoke-virtual {p0, p4, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3, p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_2
    if-ne p3, v1, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p4, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3, p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p3, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p4, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_2
    return-void
.end method

.method public resolveIsInfinite()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mRecycle:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->updateLayoutState(IIZLcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iget v4, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    :cond_3
    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;I)Lcom/agc/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;

    iput-object v0, v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public shouldMeasureTwice()Z
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)V
    .locals 0

    new-instance p2, Lcom/agc/widget/recyclerview/LinearSmoothScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/agc/widget/recyclerview/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->startSmoothScroll(Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateChildOrder()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgcLinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_4

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->logChildren()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v7, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gt v7, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->logChildren()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_6

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->logChildren()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v7, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->logChildren()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
