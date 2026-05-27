.class public Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    iput-object p3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 p2, 0x0

    invoke-static {p3, p2}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, p2}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->getOldListSize()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->getNewListSize()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewListSize:I

    iput-boolean p5, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->addEdgeDiagonals()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    if-nez v2, :cond_1

    iget v0, v0, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v2, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    invoke-direct {v2, v1, v1, v1}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v2, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    iget v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    iget v4, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewListSize:I

    invoke-direct {v2, v3, v4, v1}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private findMatchingAddition(I)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    :goto_1
    iget v4, v3, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v2

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v4, p1, v2}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v0, p1, v2}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_2

    :cond_0
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v0

    aput v4, v3, p1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, v3, v2

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->endY()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findMatchingItems()V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->size:I

    if-ge v2, v3, :cond_0

    iget v3, v1, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    add-int/2addr v3, v2

    iget v4, v1, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v5, v3, v4}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    iget-object v6, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v5

    aput v7, v6, v3

    iget-object v6, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    aput v3, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->findMoveMatches()V

    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    :goto_1
    iget v3, v2, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->findMatchingAddition(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->endX()I

    move-result v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    iget v1, v0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v1, p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    iget v1, p1, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p1, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewListSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget p1, v0, p1

    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shr-int/lit8 p1, p1, 0x4

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", new list size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget p1, v0, p1

    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shr-int/lit8 p1, p1, 0x4

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", old list size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->dispatchUpdatesTo(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V

    return-void
.end method

.method public dispatchUpdatesTo(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V
    .locals 12

    instance-of v0, p1, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V

    move-object p1, v0

    :goto_0
    iget v0, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget v2, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldListSize:I

    iget v3, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewListSize:I

    iget-object v4, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_a

    iget-object v6, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->endX()I

    move-result v7

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->endY()I

    move-result v8

    :cond_1
    :goto_2
    const/4 v9, 0x0

    if-le v2, v7, :cond_4

    add-int/lit8 v2, v2, -0x1

    iget-object v10, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v10, v10, v2

    and-int/lit8 v11, v10, 0xc

    if-eqz v11, :cond_3

    shr-int/lit8 v11, v10, 0x4

    invoke-static {v1, v11, v9}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    move-result-object v9

    if-eqz v9, :cond_2

    iget v9, v9, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v9, v0, v9

    sub-int/2addr v9, v5

    invoke-virtual {p1, v2, v9}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v10, v2, v11}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v9, v5, v10}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v9, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    sub-int v10, v0, v2

    sub-int/2addr v10, v5

    invoke-direct {v9, v2, v10, v5}, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2, v5}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-le v3, v8, :cond_7

    add-int/lit8 v3, v3, -0x1

    iget-object v7, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v7, v7, v3

    and-int/lit8 v10, v7, 0xc

    if-eqz v10, :cond_6

    shr-int/lit8 v10, v7, 0x4

    invoke-static {v1, v10, v5}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    move-result-object v11

    if-nez v11, :cond_5

    new-instance v7, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;

    sub-int v10, v0, v2

    invoke-direct {v7, v3, v10, v9}, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget v11, v11, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v5

    invoke-virtual {p1, v11, v2}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v7, v10, v3}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v2, v5, v7}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2, v5}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget v2, v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    iget v3, v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    :goto_4
    iget v7, v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->size:I

    if-ge v9, v7, :cond_9

    iget-object v7, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v7, v7, v2

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->mCallback:Lcom/agc/widget/recyclerview/DiffUtil$Callback;

    invoke-virtual {v7, v2, v3}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v2, v5, v7}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    iget v2, v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->x:I

    iget v3, v6, Lcom/agc/widget/recyclerview/DiffUtil$Diagonal;->y:I

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method
