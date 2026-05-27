.class public final Lcom/agc/widget/recyclerview/ConcatAdapter;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ConcatAdapter$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ConcatAdapter"


# instance fields
.field private final mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ConcatAdapter$Config;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ConcatAdapter$Config;",
            "Ljava/util/List<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-direct {v0, p0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;-><init>(Lcom/agc/widget/recyclerview/ConcatAdapter;Lcom/agc/widget/recyclerview/ConcatAdapter$Config;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/ConcatAdapter;->addAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/agc/widget/recyclerview/ConcatAdapter$Config;[Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ConcatAdapter$Config;",
            "[",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/ConcatAdapter;-><init>(Lcom/agc/widget/recyclerview/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->DEFAULT:Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapter;-><init>(Lcom/agc/widget/recyclerview/ConcatAdapter$Config;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    sget-object v0, Lcom/agc/widget/recyclerview/ConcatAdapter$Config;->DEFAULT:Lcom/agc/widget/recyclerview/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapter;-><init>(Lcom/agc/widget/recyclerview/ConcatAdapter$Config;[Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->addAdapter(ILcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public addAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->addAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public findRelativeAdapterPositionIn(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I
    .locals 1
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

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getLocalAdapterPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I

    move-result p1

    return p1
.end method

.method public getAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getCopyOfAdapters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public internalSetStateRestorationPolicy(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->setStateRestorationPolicy(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onBindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public removeAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ConcatAdapter;->mController:Lcom/agc/widget/recyclerview/ConcatAdapterController;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ConcatAdapterController;->removeAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public setHasStableIds(Z)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
