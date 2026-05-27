.class public Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;-><init>()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public attach()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public factorInBindTime(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method

.method public factorInCreateTime(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    return-void
.end method

.method public getRecycledView(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecycledViewCount(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->detach()V

    :cond_0
    if-nez p3, :cond_1

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->clear()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->attach()V

    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->resetInternal()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public runningAverage(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public setMaxRecycledViews(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iput p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public willBindInTime(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

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

.method public willCreateInTime(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    iget-wide v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

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
