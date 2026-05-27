.class Lcom/agc/widget/recyclerview/ViewInfoStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;,
        Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            "Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    iput v0, v1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->postInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-static {v1}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->recycle(Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addToAppearedInPreLayoutHolders(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->obtain()Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    iput-object p2, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method public addToDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->obtain()Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public addToOldChangeHolders(JLcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public addToPostLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->obtain()Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->postInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    iget p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public addToPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->obtain()Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    iget p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method public getFromOldChangeHolders(J)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    return-object p1
.end method

.method public isDisappearing(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDetach()V
    .locals 0

    invoke-static {}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public popFromPostLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->popFromLayoutStep(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public popFromPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->popFromLayoutStep(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public process(Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    iget v3, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    iget-object v3, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {p1, v1}, Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;->unused(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_4

    :cond_1
    iget-object v4, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->postInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_2
    invoke-interface {p1, v1, v3, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;->processDisappeared(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    iget-object v3, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->postInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;->processPersistent(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    iget-object v3, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    :goto_3
    iget-object v3, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->preInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->postInfo:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;->processAppeared(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_6
    :goto_4
    invoke-static {v2}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->recycle(Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public removeFromDisappearedInLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public removeViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;->recycle(Lcom/agc/widget/recyclerview/ViewInfoStore$InfoRecord;)V

    :cond_2
    return-void
.end method
