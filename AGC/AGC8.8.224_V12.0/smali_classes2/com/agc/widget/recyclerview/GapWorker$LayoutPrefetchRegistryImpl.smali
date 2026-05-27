.class Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget p1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearPrefetchPositions()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void
.end method

.method public collectPrefetchPositionsFromView(Lcom/agc/widget/recyclerview/AgcRecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->updateViewCacheSize()V

    :cond_3
    return-void
.end method

.method public lastPrefetchIncludedPosition(I)Z
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setPrefetchVector(II)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iput p2, p0, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    return-void
.end method
