.class public Lcom/agc/widget/recyclerview/GridLayoutManager;
.super Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;,
        Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance p1, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance p1, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move p4, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p4, p3

    move p3, v1

    :goto_0
    if-eq p4, p3, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, p4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v2

    iput v2, v3, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput v0, v3, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    add-int/2addr v0, v2

    add-int/2addr p4, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method public static calculateItemBorders([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    aput v1, p0, v1

    div-int v2, p2, p1

    rem-int/2addr p2, p1

    move v3, v1

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 9

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v2, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v2

    if-eqz v4, :cond_4

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v5, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    iget-object v6, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    iget v8, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, p1, v8}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    add-int/2addr p1, v3

    iget-boolean v6, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    sub-int/2addr p1, v5

    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-nez v0, :cond_3

    return p1

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v5, v6}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    iget-object v5, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget v6, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v2, v6}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private computeScrollRangeWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3, v2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    add-int/2addr p1, v2

    return p1

    :cond_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v5, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v0, v5}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v5, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v3, v5}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v5, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, p1, v5}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    add-int/2addr p1, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private ensureAnchorIsInCorrectSpan(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I
    .locals 0

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p2, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private guessMeasurement(FI)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/agc/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

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

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    return p1
.end method

.method public collectPrefetchPositionsForLayoutState(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    iget v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->computeScrollRangeWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager;->computeScrollRangeWithSpanInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public findReferenceChild(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;ZZ)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v0, p3

    move p3, p4

    :goto_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->ensureLayoutState()V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, v0, :cond_6

    invoke-virtual {p0, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, p4, :cond_5

    invoke-direct {p0, p1, p2, v7}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v6}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v6}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    return-object v4
.end method

.method public generateDefaultLayoutParams()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getRowCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getSpaceForSpanRange(II)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget p1, v0, v1

    sub-int/2addr v1, p2

    aget p2, v0, v1

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return v0
.end method

.method public layoutChunk(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    iget-object v3, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getModeInOther()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v11, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-eqz v9, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    :cond_2
    iget v11, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v11, v8, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    move v11, v5

    :goto_2
    iget v12, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-nez v11, :cond_4

    iget v12, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v12}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v12

    iget v13, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v13}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    move v13, v5

    :goto_3
    iget v14, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v13, v14, :cond_8

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->hasMore(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v12, :cond_8

    iget v14, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v0, v1, v14}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v15

    iget v4, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v15, v4, :cond_7

    sub-int/2addr v12, v15

    if-gez v12, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->next(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v14, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v4, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v13, :cond_9

    iput-boolean v8, v7, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_9
    const/4 v4, 0x0

    invoke-direct {v6, v0, v1, v13, v11}, Lcom/agc/widget/recyclerview/GridLayoutManager;->assignSpans(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;IZ)V

    move v0, v5

    move v1, v0

    :goto_5
    if-ge v0, v13, :cond_f

    iget-object v12, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v12, v12, v0

    iget-object v14, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v14, :cond_b

    if-eqz v11, :cond_a

    invoke-virtual {v6, v12}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v6, v12, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v6, v12}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v6, v12, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_6
    iget-object v14, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12, v14}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v6, v12, v3, v5}, Lcom/agc/widget/recyclerview/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v14, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v14, v12}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v14

    if-le v14, v1, :cond_d

    move v1, v14

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v15, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v15, v12}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    int-to-float v12, v12

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v12, v15

    iget v14, v14, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v14, v14

    div-float/2addr v12, v14

    cmpl-float v14, v12, v4

    if-lez v14, :cond_e

    move v4, v12

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    if-eqz v9, :cond_11

    invoke-direct {v6, v4, v10}, Lcom/agc/widget/recyclerview/GridLayoutManager;->guessMeasurement(FI)V

    move v0, v5

    move v1, v0

    :goto_7
    if-ge v0, v13, :cond_11

    iget-object v3, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v6, v3, v4, v8}, Lcom/agc/widget/recyclerview/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v4, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_10

    move v1, v3

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    move v0, v5

    :goto_8
    if-ge v0, v13, :cond_14

    iget-object v3, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v9, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v9

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v9

    iget v9, v4, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v12, v4, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v9, v12}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v9

    iget v12, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne v12, v8, :cond_12

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v9, v12, v11, v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    sub-int v9, v1, v10

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_9

    :cond_12
    const/high16 v12, 0x40000000    # 2.0f

    sub-int v11, v1, v11

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v9, v12, v10, v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v9

    move v4, v11

    :goto_9
    invoke-direct {v6, v3, v4, v9, v8}, Lcom/agc/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/high16 v12, 0x40000000    # 2.0f

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iput v1, v7, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v0, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v3, -0x1

    if-ne v0, v8, :cond_16

    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v3, :cond_15

    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v3, v1

    move v2, v5

    move v1, v0

    move v0, v2

    goto :goto_c

    :cond_15
    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v3, v0

    move v0, v5

    move v2, v0

    goto :goto_c

    :cond_16
    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v3, :cond_17

    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v2, v1

    goto :goto_b

    :cond_17
    iget v0, v2, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v2, v0

    move v0, v1

    :goto_b
    move v1, v5

    move v3, v1

    :goto_c
    move v9, v5

    :goto_d
    if-ge v9, v13, :cond_1c

    iget-object v4, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v10, v4, v9

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget v4, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne v4, v8, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v2, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v4, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    iget v5, v11, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v4, v5

    aget v2, v2, v4

    add-int/2addr v0, v2

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    move v12, v0

    move v14, v1

    move v15, v2

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v2, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v4, v11, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v2, v2, v4

    add-int/2addr v0, v2

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    move v15, v0

    move v14, v1

    move v12, v2

    :goto_e
    move/from16 v16, v3

    goto :goto_f

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    iget-object v3, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget v4, v11, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v4

    add-int/2addr v1, v3

    iget-object v3, v6, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v10}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    move v12, v0

    move/from16 v16, v1

    move v15, v2

    move v14, v3

    :goto_f
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v15

    move/from16 v3, v16

    move v4, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v11}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v11}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    iput-boolean v8, v7, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_1b
    iget-boolean v0, v7, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v9, v9, 0x1

    move v0, v12

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_d

    :cond_1c
    iget-object v0, v6, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnchorReady(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->onAnchorReady(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget v6, v5, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v5, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iget-boolean v10, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v7, v10, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v9

    move v11, v10

    move v12, v11

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    move v11, v7

    move v12, v9

    const/4 v7, 0x0

    :goto_2
    iget v13, v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v9

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-direct {v0, v1, v2, v7}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v14

    move v15, v10

    move/from16 v16, v15

    const/4 v8, 0x0

    const/16 v17, 0x0

    move v10, v7

    move-object v7, v4

    :goto_4
    if-eq v10, v11, :cond_18

    invoke-direct {v0, v1, v2, v10}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result v9

    invoke-virtual {v0, v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_10

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_7

    goto/16 :goto_10

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v21, v7

    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v7, v16

    move/from16 v8, v17

    goto/16 :goto_e

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget v2, v9, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v18, v3

    iget v3, v9, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v5, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    :goto_5
    move-object/from16 v21, v7

    :goto_6
    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_b

    :cond_b
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_c

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v7

    sub-int v7, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_f

    if-le v7, v8, :cond_d

    :goto_8
    goto :goto_6

    :cond_d
    if-ne v7, v8, :cond_13

    if-le v2, v15, :cond_e

    const/4 v7, 0x1

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    :goto_9
    if-ne v13, v7, :cond_13

    goto :goto_8

    :cond_f
    if-nez v4, :cond_13

    move/from16 v19, v8

    move/from16 v20, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v8, v11}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v8, v17

    if-le v7, v8, :cond_10

    move/from16 v7, v16

    goto :goto_b

    :cond_10
    if-ne v7, v8, :cond_12

    move/from16 v7, v16

    if-le v2, v7, :cond_11

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    if-ne v13, v11, :cond_15

    :goto_b
    const/4 v11, 0x1

    goto :goto_d

    :cond_12
    move/from16 v7, v16

    goto :goto_c

    :cond_13
    move/from16 v19, v8

    move/from16 v20, v11

    :cond_14
    move/from16 v7, v16

    move/from16 v8, v17

    :cond_15
    :goto_c
    const/4 v11, 0x0

    :goto_d
    if-eqz v11, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_16

    iget v4, v9, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v7, v21

    move-object v4, v1

    move v8, v2

    goto :goto_f

    :cond_16
    iget v7, v9, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v17, v3, v2

    move/from16 v16, v7

    move/from16 v8, v19

    move-object v7, v1

    goto :goto_f

    :cond_17
    :goto_e
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v8, v19

    move-object/from16 v7, v21

    :goto_f
    add-int/2addr v10, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_18
    :goto_10
    move-object/from16 v21, v7

    if-eqz v4, :cond_19

    goto :goto_11

    :cond_19
    move-object/from16 v4, v21

    :goto_11
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    :cond_0
    check-cast v0, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)I

    move-result p1

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    :goto_0
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemsAdded(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;III)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
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

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    iget-object p3, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestLayout()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
