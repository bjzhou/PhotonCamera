.class Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onItemRangeChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onItemRangeChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onItemRangeInserted(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget p2, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    if-lez p2, :cond_0

    iget-object p1, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object p2, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {p2, p1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p3, "moving more than 1 item is not supported in AgcRecyclerView"

    invoke-static {v0, p3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p3, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v0, p3, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v0, p3, p1, p2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onItemRangeMoved(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v1, v0, p1, p2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onItemRangeRemoved(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget p2, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    iget-object p1, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object p1

    sget-object p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object p2, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {p2, p1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;->this$0:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    return-void
.end method
