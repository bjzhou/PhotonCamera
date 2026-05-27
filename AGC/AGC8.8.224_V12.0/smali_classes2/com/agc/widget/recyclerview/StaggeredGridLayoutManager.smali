.class public Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;,
        Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;,
        Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;,
        Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

.field mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    iput p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    new-instance p1, Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/LayoutState;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setOrientation(I)V

    iget p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    iget-boolean p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    new-instance p1, Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/LayoutState;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v1, :cond_3

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v2, v2, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_2
    iput-boolean v1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget p1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v0, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/agc/widget/recyclerview/LayoutState;)V
    .locals 1

    iget p3, p3, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean p3, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkSpanForGap(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p1

    iget-boolean p1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    return v1
.end method

.method private computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

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
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

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
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/agc/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
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
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method private createFullSpanItemFromEnd(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;I)Lcom/agc/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;I)Lcom/agc/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    return-void
.end method

.method private fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_2

    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    iget-boolean v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    move v12, v0

    move v0, v9

    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/agc/widget/recyclerview/LayoutState;->hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-boolean v1, v1, Lcom/agc/widget/recyclerview/LayoutState;->mInfinite:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_4
    invoke-virtual {v8, v7}, Lcom/agc/widget/recyclerview/LayoutState;->next(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v14}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    if-eqz v3, :cond_7

    iget-boolean v1, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v9

    goto :goto_4

    :cond_6
    invoke-direct {v6, v8}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getNextSpan(Lcom/agc/widget/recyclerview/LayoutState;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-result-object v1

    :goto_4
    iget-object v4, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;)V

    goto :goto_5

    :cond_7
    iget-object v4, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v4, v1

    :goto_5
    move-object v15, v1

    iput-object v15, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_8

    invoke-virtual {v6, v13}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v6, v13, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :goto_6
    invoke-direct {v6, v13, v14, v9}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Z)V

    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_b

    iget-boolean v1, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_9

    invoke-direct {v6, v12}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    goto :goto_7

    :cond_9
    invoke-virtual {v15, v12}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    :goto_7
    iget-object v4, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v13}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    iget-boolean v5, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_a

    invoke-direct {v6, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    iput v2, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v0, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v9, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_9

    :cond_b
    iget-boolean v1, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_c

    invoke-direct {v6, v12}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    goto :goto_8

    :cond_c
    invoke-virtual {v15, v12}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    :goto_8
    iget-object v4, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v13}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    iget-boolean v5, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_d

    invoke-direct {v6, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    iput v10, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v0, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v9, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v5, v1

    :goto_9
    iget-boolean v1, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_11

    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    iget v1, v8, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v1

    goto :goto_a

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v1

    :goto_a
    xor-int/2addr v1, v10

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_10

    iput-boolean v10, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    :cond_10
    :goto_b
    iput-boolean v10, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    :cond_11
    invoke-direct {v6, v13, v14, v8}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/agc/widget/recyclerview/LayoutState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_13

    iget-boolean v0, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_c

    :cond_12
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, v10

    iget v2, v15, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_c
    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v13}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_e

    :cond_13
    iget-boolean v0, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_d

    :cond_14
    iget v0, v15, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_d
    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v13}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    :goto_e
    iget v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_15

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    :goto_f
    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    iget-boolean v0, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_10

    :cond_16
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v15, v0, v11}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    :goto_10
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;)V

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mStopInFocusable:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, v14, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_11

    :cond_17
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v15, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v3, 0x0

    :goto_12
    move v9, v3

    move v0, v10

    goto/16 :goto_2

    :cond_19
    move v3, v9

    if-nez v0, :cond_1a

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;)V

    :cond_1a
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_13

    :cond_1b
    iget-object v0, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    iget-object v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    :goto_13
    if-lez v1, :cond_1c

    iget v0, v8, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_14

    :cond_1c
    move v9, v3

    :goto_14
    return v9
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixEndGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    :cond_1
    return-void
.end method

.method private fixStartGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    :cond_1
    return-void
.end method

.method private getMaxEnd(I)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMaxStart(I)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinEnd(I)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinStart(I)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getNextSpan(Lcom/agc/widget/recyclerview/LayoutState;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .locals 7

    iget v0, p1, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    move v3, v2

    :goto_0
    iget p1, p1, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    :goto_1
    if-eq v0, v1, :cond_2

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    if-ge v6, p1, :cond_1

    move-object v4, v5

    move p1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    const/high16 p1, -0x80000000

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    :goto_2
    if-eq v0, v1, :cond_5

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    if-le v6, p1, :cond_4

    move-object v4, v5

    move p1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private handleUpdate(III)V
    .locals 6

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    :goto_2
    iget-object v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    :cond_8
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    invoke-direct {p0, p3, v1, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    iget-boolean v0, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v2, v3, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v3, v4, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v4, v5, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, p2, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    :goto_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_2
    return-void
.end method

.method private onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->applyPendingSavedState(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    iput-boolean v4, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    :cond_5
    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_7

    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v2, :cond_7

    iget-boolean v5, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    iput-boolean v4, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :cond_7
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_8

    iget v5, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v4, :cond_e

    :cond_8
    iget-boolean v5, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_a

    move v1, v3

    :goto_3
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    iget v5, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_4
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v6, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v1, v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;)V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput-boolean v3, v1, Lcom/agc/widget/recyclerview/LayoutState;->mRecycle:Z

    iput-boolean v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    invoke-direct {p0, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    goto :goto_7

    :cond_f
    invoke-direct {p0, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    invoke-direct {p0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    :goto_7
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v5, v1, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-direct {p0, p1, v1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_11

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_10

    invoke-direct {p0, p1, p2, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    goto :goto_8

    :cond_10
    invoke-direct {p0, p1, p2, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    :cond_11
    :goto_8
    if-eqz p3, :cond_14

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p3

    if-nez p3, :cond_14

    iget p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    if-lez p3, :cond_13

    iget-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez p3, :cond_12

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    :cond_12
    move p3, v4

    goto :goto_9

    :cond_13
    move p3, v3

    :goto_9
    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_a

    :cond_14
    move v4, v3

    :goto_a
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    :cond_15
    iget-boolean p3, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p3

    iput-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eqz v4, :cond_16

    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    invoke-direct {p0, p1, p2, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    :cond_16
    return-void
.end method

.method private preferLastSpan(I)Z
    .locals 4

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycle(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;)V
    .locals 2

    iget-boolean v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget p2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;I)V

    goto :goto_4

    :cond_1
    :goto_2
    iget p2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;I)V

    goto :goto_4

    :cond_2
    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_4

    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    iget p2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_1

    :cond_4
    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    iget p2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private recycleFromEnd(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    :cond_3
    iget-object v3, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private recycleFromStart(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;I)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v3, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget-object v0, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    iget v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    :cond_2
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getMode()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-ne v0, v3, :cond_5

    return-void

    :cond_5
    :goto_2
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v5, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v5, v6

    iget-object v4, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v4, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v5, v4

    neg-int v4, v5

    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v5, v4

    mul-int/2addr v4, v3

    sub-int/2addr v5, v4

    goto :goto_3

    :cond_7
    iget-object v4, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v4, v4, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v5, v4

    mul-int/2addr v4, v3

    iget v7, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    sub-int/2addr v5, v4

    if-ne v7, v6, :cond_8

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    :goto_1
    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    return-void
.end method

.method private setLayoutStateDirection(I)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput p1, v0, Lcom/agc/widget/recyclerview/LayoutState;->mLayoutDirection:I

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result p1

    :goto_0
    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 p1, -0x80000000

    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 p1, 0x1

    return p1
.end method

.method private updateLayoutState(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    iput p1, v0, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getTargetScrollPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    neg-int p2, p2

    iput p2, p1, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    :goto_2
    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput-boolean v1, p1, Lcom/agc/widget/recyclerview/LayoutState;->mStopInFocusable:Z

    iput-boolean v2, p1, Lcom/agc/widget/recyclerview/LayoutState;->mRecycle:Z

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getMode()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result p2

    if-nez p2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p1, Lcom/agc/widget/recyclerview/LayoutState;->mInfinite:Z

    return-void
.end method

.method private updateRemainingSpans(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V
    .locals 2

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    :goto_0
    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public areAllEndsEqual()Z
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public areAllStartsEqual()Z
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

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

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkForGaps()Z
    .locals 7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    :goto_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return v3

    :cond_2
    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2, v4, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    return v1

    :cond_5
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_1

    :cond_7
    :goto_3
    return v1
.end method

.method public checkLayoutParams(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v2, v1, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v1, v1, Lcom/agc/widget/recyclerview/LayoutState;->mStartLine:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, p2

    iget v1, v1, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v2, v2, Lcom/agc/widget/recyclerview/LayoutState;->mEndLine:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p1, v0, :cond_7

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-virtual {p2, p3}, Lcom/agc/widget/recyclerview/LayoutState;->hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget p2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    iget v2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public computeVerticalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public findFirstVisibleItemPositionInt()I
    .locals 2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getFirstChildPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getGapStrategy()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method public getLastChildPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public hasGapsToFix()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_d

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-object v9, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {p0, v9}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->checkSpanForGap(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    :cond_3
    iget-object v9, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_4
    iget-boolean v9, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_5

    goto :goto_7

    :cond_5
    add-int v9, v0, v5

    if-eq v9, v6, :cond_c

    invoke-virtual {p0, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_6

    return-object v7

    :cond_6
    if-ne v10, v11, :cond_9

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v10, v7}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_9

    :goto_3
    move v10, v1

    goto :goto_4

    :cond_9
    move v10, v4

    :goto_4
    if-eqz v10, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-object v8, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v8, v8, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v9, v9, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_a

    move v8, v1

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    if-gez v3, :cond_b

    move v9, v1

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_c

    return-object v7

    :cond_c
    :goto_7
    add-int/2addr v0, v5

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

.method public offsetChildrenHorizontal(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    :goto_0
    invoke-direct {p0, v4, p4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v6, v5, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput-boolean v3, v5, Lcom/agc/widget/recyclerview/LayoutState;->mStopInFocusable:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/agc/widget/recyclerview/LayoutState;->mRecycle:Z

    invoke-direct {p0, p3, v5, p4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    iget-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-nez v2, :cond_4

    invoke-virtual {v0, v4, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    :cond_4
    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p3

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p3, v3

    :goto_1
    if-ltz p3, :cond_8

    iget-object p4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    if-eq p4, p1, :cond_5

    return-object p4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    move p3, v6

    :goto_2
    iget p4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p3, p4, :cond_8

    iget-object p4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eq p4, p1, :cond_7

    return-object p4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9

    move p4, v3

    goto :goto_3

    :cond_9
    move p4, v6

    :goto_3
    if-ne p3, p4, :cond_a

    move p3, v3

    goto :goto_4

    :cond_a
    move p3, v6

    :goto_4
    if-nez v2, :cond_c

    if-eqz p3, :cond_b

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    :goto_5
    invoke-virtual {p0, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-eq p4, p1, :cond_c

    return-object p4

    :cond_c
    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p2, v3

    :goto_6
    if-ltz p2, :cond_13

    iget p4, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne p2, p4, :cond_d

    goto :goto_8

    :cond_d
    iget-object p4, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    if-eqz p3, :cond_e

    aget-object p4, p4, p2

    invoke-virtual {p4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_7

    :cond_e
    aget-object p4, p4, p2

    invoke-virtual {p4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    :goto_7
    invoke-virtual {p0, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eq p4, p1, :cond_f

    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_10
    :goto_9
    iget p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, p2, :cond_13

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    if-eqz p3, :cond_11

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p2

    goto :goto_a

    :cond_11
    aget-object p2, p2, v6

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p2

    :goto_a
    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_12

    return-object p2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemsAdded(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-direct {p0, p2, p3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p2, p3, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Z)V

    return-void
.end method

.method public onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>()V

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    :goto_2
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    :cond_4
    iget-object v3, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v2, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_0
    return-void
.end method

.method public prepareLayoutStateForDelta(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput-boolean v0, v3, Lcom/agc/widget/recyclerview/LayoutState;->mRecycle:Z

    invoke-direct {p0, v2, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v0, p2, Lcom/agc/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v2, v0

    iput v2, p2, Lcom/agc/widget/recyclerview/LayoutState;->mCurrentPosition:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    return-void
.end method

.method public scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    invoke-direct {p0, p2, v0, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iget v0, v0, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    iget-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iget-object p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/agc/widget/recyclerview/LayoutState;

    iput v1, p3, Lcom/agc/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-direct {p0, p2, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/LayoutState;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setGapStrategy(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    iget p3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_0
    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    new-instance v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {v1, p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
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
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateAnchorFromPendingData(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v4, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v4, v2, :cond_3

    iget p1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v3, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_6

    iget-boolean v1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_2
    sub-int/2addr v1, p1

    iput v1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_6
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_8

    iget-boolean p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_3
    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_8
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p1, v1

    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_9
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    if-gez v1, :cond_a

    iput v1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_a
    iput v3, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_5

    :cond_b
    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v2, v3, :cond_d

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p1

    if-ne p1, v0, :cond_c

    move v1, v0

    :cond_c
    iput-boolean v1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_4

    :cond_d
    invoke-virtual {p2, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    :goto_4
    iput-boolean v0, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :goto_5
    return v0

    :cond_e
    :goto_6
    iput v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_f
    :goto_7
    return v1
.end method

.method public updateAnchorInfoForLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    const/4 p1, 0x0

    iput p1, p2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public updateMeasureSpecs(I)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    return-void
.end method
