.class public Lcom/agc/widget/lut/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollLeftListener:Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/lut/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    iput-boolean p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataChanged:Z

    new-instance p1, Lcom/agc/widget/lut/HorizontalListView$1;

    invoke-direct {p1, p0}, Lcom/agc/widget/lut/HorizontalListView$1;-><init>(Lcom/agc/widget/lut/HorizontalListView;)V

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance p1, Lcom/agc/widget/lut/HorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/agc/widget/lut/HorizontalListView$3;-><init>(Lcom/agc/widget/lut/HorizontalListView;)V

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p0}, Lcom/agc/widget/lut/HorizontalListView;->initView()V

    return-void
.end method

.method public static synthetic access$002(Lcom/agc/widget/lut/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/agc/widget/lut/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/lut/HorizontalListView;->reset()V

    return-void
.end method

.method public static synthetic access$200(Lcom/agc/widget/lut/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/agc/widget/lut/HorizontalListView;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    return p0
.end method

.method public static synthetic access$400(Lcom/agc/widget/lut/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/agc/widget/lut/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private fillList(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/agc/widget/lut/HorizontalListView;->fillListRight(II)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/agc/widget/lut/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/agc/widget/lut/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/agc/widget/lut/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    :cond_0
    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    :cond_1
    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mCurrentX:I

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mDisplayOffset:I

    iget-object v2, p0, Lcom/agc/widget/lut/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mLeftViewIndex:I

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mRightViewIndex:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/widget/lut/HorizontalListView;->initView()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/lut/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnScrollLeftListener:Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnScrollLeftListener:Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;

    invoke-interface {p1}, Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;->onScrollLeft()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnScrollLeftListener:Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;

    invoke-interface {p1}, Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;->onScrollOutLeft()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataChanged:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/agc/widget/lut/HorizontalListView;->initView()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    iput-boolean p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataChanged:Z

    :cond_3
    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    :cond_4
    iget p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    const/4 p3, 0x1

    if-gtz p1, :cond_5

    iput p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_5
    iget p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    iget p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mMaxX:I

    if-lt p1, p2, :cond_6

    iput p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_6
    iget p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mCurrentX:I

    iget p2, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/HorizontalListView;->removeNonVisibleItems(I)V

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/HorizontalListView;->fillList(I)V

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/HorizontalListView;->positionItems(I)V

    iget p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    iput p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mCurrentX:I

    iget-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lcom/agc/widget/lut/HorizontalListView$2;

    invoke-direct {p1, p0}, Lcom/agc/widget/lut/HorizontalListView$2;-><init>(Lcom/agc/widget/lut/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mNextX:I

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/agc/widget/lut/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/agc/widget/lut/HorizontalListView;->reset()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOnScrollLeftListener(Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView;->mOnScrollLeftListener:Lcom/agc/widget/lut/HorizontalListView$OnScrollLeftListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
