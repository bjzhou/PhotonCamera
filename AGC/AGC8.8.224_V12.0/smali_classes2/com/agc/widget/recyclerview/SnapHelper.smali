.class public abstract Lcom/agc/widget/recyclerview/SnapHelper;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;
.source "SourceFile"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field private final mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/SnapHelper$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/SnapHelper$1;-><init>(Lcom/agc/widget/recyclerview/SnapHelper;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setOnFlingListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;)V

    return-void
.end method

.method private setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getOnFlingListener()Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setOnFlingListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private snapFromFling(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;II)Z
    .locals 2

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SnapHelper;->createScroller(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/SnapHelper;->findTargetSnapPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->startSmoothScroll(Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/SnapHelper;->destroyCallbacks()V

    :cond_1
    iput-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/SnapHelper;->setupCallbacks()V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/SnapHelper;->snapToTargetExistingView()V

    :cond_2
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public calculateScrollDistance(II)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method public createScroller(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/SnapHelper;->createSnapScroller(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/LinearSmoothScroller;

    move-result-object p1

    return-object p1
.end method

.method public createSnapScroller(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/LinearSmoothScroller;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/agc/widget/recyclerview/SnapHelper$2;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/agc/widget/recyclerview/SnapHelper$2;-><init>(Lcom/agc/widget/recyclerview/SnapHelper;Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract findSnapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract findTargetSnapPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/agc/widget/recyclerview/SnapHelper;->snapFromFling(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public snapToTargetExistingView()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/SnapHelper;->findSnapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/agc/widget/recyclerview/SnapHelper;->calculateDistanceToFinalSnap(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    aget v3, v0, v2

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    aget v0, v0, v2

    invoke-virtual {v3, v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(II)V

    :cond_4
    return-void
.end method
