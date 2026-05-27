.class public final Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ListUpdateCallback;


# instance fields
.field private final mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
