.class Lcom/agc/widget/recyclerview/ConcatAdapterController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;
    }
.end annotation


# instance fields
.field private mAttachedRecyclerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBinderLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            "Lcom/agc/widget/recyclerview/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

.field private mReusableHolder:Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

.field private final mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

.field private final mStableIdStorage:Lcom/agc/widget/recyclerview/StableIdStorage;

.field private final mViewTypeStorage:Lcom/agc/widget/recyclerview/ViewTypeStorage;

.field private mWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ConcatAdapter;Lcom/agc/widget/recyclerview/ConcatAdapter$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mReusableHolder:Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    iget-boolean p1, p2, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->isolateViewTypes:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mViewTypeStorage:Lcom/agc/widget/recyclerview/ViewTypeStorage;

    iget-object p1, p2, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->stableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    sget-object p2, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/StableIdStorage$NoStableIdStorage;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mStableIdStorage:Lcom/agc/widget/recyclerview/StableIdStorage;

    goto :goto_2

    :cond_1
    sget-object p2, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_2

    new-instance p1, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/StableIdStorage$IsolatedStableIdStorage;-><init>()V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    if-ne p1, p2, :cond_3

    new-instance p1, Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/StableIdStorage$SharedPoolStableIdStorage;-><init>()V

    goto :goto_1

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown stable id mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateAndUpdateStateRestorationPolicy()V
    .locals 2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->computeStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ConcatAdapter;->internalSetStateRestorationPolicy(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;)V

    :cond_0
    return-void
.end method

.method private computeStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getStateRestorationPolicy()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v2

    sget-object v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v3, :cond_1

    return-object v3

    :cond_1
    sget-object v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_2
    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method private countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private findWrapperAndLocalPosition(I)Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mReusableHolder:Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v4

    if-le v4, v2, :cond_1

    iput-object v3, v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iput v2, v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWrapperFor(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)",
            "Lcom/agc/widget/recyclerview/NestedAdapterWrapper;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->indexOfWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    return-object p1
.end method

.method private getWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", seems like it is not bound by this adapter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private indexOfWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private isAttachedTo(Lcom/agc/widget/recyclerview/AgcRecyclerView;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private releaseWrapperAndLocalPosition(Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    const/4 v0, -0x1

    iput v0, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mReusableHolder:Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const-string v1, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConcatAdapter"

    const-string v1, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->findWrapperFor(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mViewTypeStorage:Lcom/agc/widget/recyclerview/ViewTypeStorage;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mStableIdStorage:Lcom/agc/widget/recyclerview/StableIdStorage;

    invoke-interface {v2}, Lcom/agc/widget/recyclerview/StableIdStorage;->createStableIdLookup()Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

    move-result-object v2

    invoke-direct {v0, p2, p0, v1, v2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;Lcom/agc/widget/recyclerview/ViewTypeStorage;Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v1, :cond_3

    invoke-virtual {p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_5
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    const/4 p1, 0x1

    return p1

    :cond_6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index must be between 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Given:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->addAdapter(ILcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public canRestoreState()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->canRestoreState()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ")",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    return-object p1
.end method

.method public getCopyOfAdapters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget v1, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;)V

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p1

    iget-object v0, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget v1, p1, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;)V

    return v0
.end method

.method public getLocalAdapterPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I
    .locals 4
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

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result v1

    sub-int/2addr p3, v1

    iget-object v1, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ltz p3, :cond_1

    if-ge p3, v1, :cond_1

    iget-object v0, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->findRelativeAdapterPositionIn(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " which is out of bounds for the adapter with size "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "adapter:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTotalCount()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hasStableIds()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mStableIdMode:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/agc/widget/recyclerview/ConcatAdapter$Config$StableIdMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->isAttachedTo(Lcom/agc/widget/recyclerview/AgcRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->findWrapperAndLocalPosition(I)Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    iget-object v1, p2, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget v1, p2, Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->releaseWrapperAndLocalPosition(Lcom/agc/widget/recyclerview/ConcatAdapterController$WrapperAndLocalPosition;)V

    return-void
.end method

.method public onChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mViewTypeStorage:Lcom/agc/widget/recyclerview/ViewTypeStorage;

    invoke-interface {v0, p2}, Lcom/agc/widget/recyclerview/ViewTypeStorage;->getWrapperForGlobalType(I)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", seems like it is not bound by this adapter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemRangeChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;IILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    add-int/2addr p2, p1

    add-int/2addr p3, p1

    invoke-virtual {v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onStateRestorationPolicyChanged(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", seems like it is not bound by this adapter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->indexOfWrapper(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->countItemsBefore(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mConcatAdapter:Lcom/agc/widget/recyclerview/ConcatAdapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->dispose()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    const/4 p1, 0x1

    return p1
.end method
