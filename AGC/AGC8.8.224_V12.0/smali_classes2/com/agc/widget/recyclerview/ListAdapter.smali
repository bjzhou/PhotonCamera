.class public abstract Lcom/agc/widget/recyclerview/ListAdapter;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
        ">",
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AsyncDifferConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/ListAdapter$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/ListAdapter$1;-><init>(Lcom/agc/widget/recyclerview/ListAdapter;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mListener:Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;

    new-instance v1, Lcom/agc/widget/recyclerview/AsyncListDiffer;

    new-instance v2, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;

    invoke-direct {v2, p0}, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    invoke-direct {v1, v2, p1}, Lcom/agc/widget/recyclerview/AsyncListDiffer;-><init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;Lcom/agc/widget/recyclerview/AsyncDifferConfig;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->addListListener(Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/agc/widget/recyclerview/ListAdapter$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/ListAdapter$1;-><init>(Lcom/agc/widget/recyclerview/ListAdapter;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mListener:Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;

    new-instance v1, Lcom/agc/widget/recyclerview/AsyncListDiffer;

    new-instance v2, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;

    invoke-direct {v2, p0}, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    new-instance v3, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;

    invoke-direct {v3, p1}, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;-><init>(Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;)V

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;->build()Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/agc/widget/recyclerview/AsyncListDiffer;-><init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;Lcom/agc/widget/recyclerview/AsyncDifferConfig;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->addListListener(Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ListAdapter;->mDiffer:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
