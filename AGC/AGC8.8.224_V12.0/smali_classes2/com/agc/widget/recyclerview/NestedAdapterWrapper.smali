.class Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;
    }
.end annotation


# instance fields
.field public final adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;

.field mCachedItemCount:I

.field final mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

.field private final mStableIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

.field private final mViewTypeLookup:Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;Lcom/agc/widget/recyclerview/ViewTypeStorage;Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;",
            "Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;",
            "Lcom/agc/widget/recyclerview/ViewTypeStorage;",
            "Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/NestedAdapterWrapper$1;-><init>(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mAdapterObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCallback:Lcom/agc/widget/recyclerview/NestedAdapterWrapper$Callback;

    invoke-interface {p3, p0}, Lcom/agc/widget/recyclerview/ViewTypeStorage;->createViewTypeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mViewTypeLookup:Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;

    iput-object p4, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mStableIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object p2, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mAdapterObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mAdapterObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mViewTypeLookup:Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0}, Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;->dispose()V

    return-void
.end method

.method public getCachedItemCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mStableIdLookup:Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;

    invoke-interface {p1, v0, v1}, Lcom/agc/widget/recyclerview/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mViewTypeLookup:Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;->localToGlobal(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->bindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->mViewTypeLookup:Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0, p2}, Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;->globalToLocal(I)I

    move-result p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
