.class Lcom/agc/widget/recyclerview/AgcRecyclerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchUpdate(Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 4

    iget v0, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget v3, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v2, v0, v3, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsMoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget v2, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsUpdated(Lcom/agc/widget/recyclerview/AgcRecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget v2, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v1, v0, v2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsRemoved(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget v2, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v1, v0, v2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsAdded(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    :goto_0
    return-void
.end method

.method public findViewHolder(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetPositionRecordsForInsert(II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetPositionRecordsForMove(II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iput-boolean v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->dispatchUpdate(Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;->dispatchUpdate(Lcom/agc/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method
