.class Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->processDataSetCompletelyChanged(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AdapterHelper;->onItemRangeInserted(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AdapterHelper;->onItemRangeMoved(III)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public triggerUpdateProcessor()V
    .locals 2

    sget-boolean v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mHasFixedSize:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method
