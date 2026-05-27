.class public final Landroidx/recyclerview/widget/ConcatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ConcatAdapter$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ConcatAdapter"


# instance fields
.field private final mController:Landroidx/recyclerview/widget/ConcatAdapterController;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ConcatAdapter$Config;",
            "Ljava/util/List<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 126
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;-><init>(Landroidx/recyclerview/widget/ConcatAdapter;Landroidx/recyclerview/widget/ConcatAdapter$Config;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 128
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public varargs constructor <init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;[Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ConcatAdapter$Config;",
            "[",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 103
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 113
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 89
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>(Landroidx/recyclerview/widget/ConcatAdapter$Config;[Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ConcatAdapterController;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 302
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ConcatAdapterController;->getLocalAdapterPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p0

    return p0
.end method

.method public getAdapters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 280
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ConcatAdapterController;->getCopyOfAdapters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 238
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ConcatAdapterController;->getTotalCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 226
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method internalSetStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 263
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 188
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ConcatAdapterController;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 183
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ConcatAdapterController;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 268
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 243
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 248
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 253
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Landroidx/recyclerview/widget/ConcatAdapter;->mController:Landroidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapterController;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p0

    return p0
.end method

.method public setHasStableIds(Z)V
    .locals 0

    .line 200
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0

    .line 219
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
