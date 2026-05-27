.class public Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;
.super Lcom/agc/widget/recyclerview/SortedList$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/agc/widget/recyclerview/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

.field final mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/SortedList$Callback<",
            "TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/SortedList$Callback<",
            "TT2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/SortedList$Callback;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;

    new-instance v0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public dispatchLastEvent()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mWrappedCallback:Lcom/agc/widget/recyclerview/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->onRemoved(II)V

    return-void
.end method
