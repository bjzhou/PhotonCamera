.class public abstract Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

.field private mStateRestorationPolicy:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mHasStableIds:Z

    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mStateRestorationPolicy:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemId:J

    :cond_1
    const/16 v2, 0x207

    invoke-virtual {p1, v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setFlags(II)V

    const-string v2, "RV OnBindView"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    :cond_2
    iput-object p0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;ILjava/util/List;)V

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearPayload()V

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iput-boolean v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_4
    return-void
.end method

.method public canRestoreState()Z
    .locals 4

    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$7;->$SwitchMap$com$agc$widget$recyclerview$AgcRecyclerView$Adapter$StateRestorationPolicy:[I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mStateRestorationPolicy:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iput p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p1
.end method

.method public findRelativeAdapterPositionIn(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mStateRestorationPolicy:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public final hasObservers()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mHasStableIds:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mStateRestorationPolicy:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->mObservable:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
