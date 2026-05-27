.class public abstract Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

.field mVerticalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$1;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;

    new-instance v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$2;

    invoke-direct {v1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$2;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;

    new-instance v2, Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    invoke-direct {v2, v0}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;-><init>(Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;)V

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    new-instance v0, Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;-><init>(Lcom/agc/widget/recyclerview/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 4

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p3, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {p3, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p3, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {p3, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {p1, v1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->moveView(II)V

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has AgcRecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, p1, p2, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    :goto_3
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_8
    :goto_4
    iget-boolean p1, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz p1, :cond_9

    iget-object p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_9
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    :goto_0
    move p1, v3

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move p3, p0

    move p1, p2

    goto :goto_3

    :cond_6
    :goto_1
    move p3, p0

    move p1, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p1, p2

    move p3, p1

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    move p2, p0

    goto :goto_0

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_0

    const/high16 p1, -0x80000000

    move p2, p0

    :goto_1
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    aput v7, v0, v1

    aput v2, v0, v8

    return-object v0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;-><init>()V

    sget-object v1, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->orientation:I

    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->spanCount:I

    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v5, v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    if-ge p1, v3, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-ge p1, v4, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private scrapOrRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p1, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->onViewDetached(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public detachAndScrapAttachedViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method public dispatchAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public dispatchDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimation(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColumnCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    return p1
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public getRowCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getSelectionModeForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method public hasFlexibleChildInBothOrientations()Z
    .locals 5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View should be fully attached to be ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 2

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/agc/widget/recyclerview/ViewBoundsCheck;

    invoke-virtual {p3, p1, v0}, Lcom/agc/widget/recyclerview/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p1

    :cond_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    invoke-static {v1, v2, v3, p2, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    invoke-static {v1, v2, v3, p2, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p0, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Lcom/agc/widget/recyclerview/AgcRecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemsAdded(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    const-string p1, "AgcRecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public onMeasure(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

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

.method public onRequestChildFocus(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onSmoothScrollerStopped(Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->performAccessibilityAction(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move v2, p2

    move v3, v2

    goto :goto_3

    :cond_1
    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    move v3, p1

    move v2, p3

    goto :goto_3

    :cond_5
    move v3, p1

    move v2, p2

    :goto_3
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return p2

    :cond_6
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method public performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v3, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityActionForItem(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAndRecycleScrapInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 6

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getScrapCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimation(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clearScrap()V

    if-lez v0, :cond_4

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestChildRectangleOnScreen(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget v0, p2, p3

    const/4 v1, 0x1

    aget p2, p2, v1

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(II)V

    :goto_1
    return v1
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mAutoMeasure:Z

    return-void
.end method

.method public setExactMeasureSpecsFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->updateViewCacheSize()V

    :cond_0
    return-void
.end method

.method public setMeasureSpecs(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidth:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->access$300(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMeasuredDimensionFromChildren(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v7, v7, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_1

    move v4, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_2

    move v2, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_3

    move v5, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    move v3, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method public setRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidth:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mWidthMode:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mHeightMode:I

    return-void
.end method

.method public shouldMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public shouldMeasureTwice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldReMeasureChild(Landroid/view/View;IILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public smoothScrollToPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)V
    .locals 0

    const-string p1, "AgcRecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->stop()V

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->start(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->stopIgnoring()V

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->resetInternal()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    return-void
.end method

.method public stopSmoothScroller()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
