.class public Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 4

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    iget v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    iget v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    iget v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onInserted(II)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v4, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v4, p3, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    iput-object p3, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    iput v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onInserted(II)V
    .locals 4

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    iput v2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    iput v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mWrapped:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventCount:I

    iput v1, p0, Lcom/agc/widget/recyclerview/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method
