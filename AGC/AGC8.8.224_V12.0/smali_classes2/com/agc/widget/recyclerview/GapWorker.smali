.class final Lcom/agc/widget/recyclerview/GapWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/agc/widget/recyclerview/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/agc/widget/recyclerview/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/agc/widget/recyclerview/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/agc/widget/recyclerview/GapWorker$1;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/GapWorker$1;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 12

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v1}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/agc/widget/recyclerview/AgcRecyclerView;Z)V

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    iget v4, v4, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v4, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    :cond_2
    iget-object v5, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    iget v6, v5, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v1

    :goto_2
    iget v8, v5, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_5

    iget-object v8, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    new-instance v8, Lcom/agc/widget/recyclerview/GapWorker$Task;

    invoke-direct {v8}, Lcom/agc/widget/recyclerview/GapWorker$Task;-><init>()V

    iget-object v9, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/agc/widget/recyclerview/GapWorker$Task;

    :goto_3
    iget-object v9, v5, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v10, v7, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    move v11, v1

    :goto_4
    iput-boolean v11, v8, Lcom/agc/widget/recyclerview/GapWorker$Task;->immediate:Z

    iput v6, v8, Lcom/agc/widget/recyclerview/GapWorker$Task;->viewVelocity:I

    iput v10, v8, Lcom/agc/widget/recyclerview/GapWorker$Task;->distanceToItem:I

    iput-object v4, v8, Lcom/agc/widget/recyclerview/GapWorker$Task;->view:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    aget v9, v9, v7

    iput v9, v8, Lcom/agc/widget/recyclerview/GapWorker$Task;->position:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v1, Lcom/agc/widget/recyclerview/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Lcom/agc/widget/recyclerview/GapWorker$Task;J)V
    .locals 3

    iget-boolean v0, p1, Lcom/agc/widget/recyclerview/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iget-object v2, p1, Lcom/agc/widget/recyclerview/GapWorker$Task;->view:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget p1, p1, Lcom/agc/widget/recyclerview/GapWorker$Task;->position:I

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/agc/widget/recyclerview/GapWorker;->prefetchPositionWithDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView;IJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView;J)V

    :cond_1
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/GapWorker$Task;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/GapWorker$Task;->view:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/agc/widget/recyclerview/GapWorker;->flushTaskWithDeadline(Lcom/agc/widget/recyclerview/GapWorker$Task;J)V

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static isPrefetchPositionAttached(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Z
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeAndRecycleViews()V

    :cond_1
    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/agc/widget/recyclerview/AgcRecyclerView;Z)V

    iget v1, v0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->prepareForNestedPrefetch(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/agc/widget/recyclerview/GapWorker;->prefetchPositionWithDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView;IJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private prefetchPositionWithDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView;IJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 2

    invoke-static {p1, p2}, Lcom/agc/widget/recyclerview/GapWorker;->isPrefetchPositionAttached(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll(Z)V

    throw p2
.end method


# virtual methods
.method public add(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public postFromTraversal(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p1, p2, p3}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method public prefetch(J)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GapWorker;->buildTaskList()V

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v6, p0, Lcom/agc/widget/recyclerview/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/agc/widget/recyclerview/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/agc/widget/recyclerview/GapWorker;->prefetch(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Lcom/agc/widget/recyclerview/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v2
.end method
