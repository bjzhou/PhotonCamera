.class public Lyu;
.super Lyn;


# instance fields
.field public aK:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyn;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyu;->aK:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final T(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 3

    invoke-super {p0, p1}, Lyn;->T(Landroidx/wear/ambient/AmbientDelegate;)V

    iget-object v0, p0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyn;

    invoke-virtual {v2, p1}, Lyn;->T(Landroidx/wear/ambient/AmbientDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public V()V
    .locals 4

    iget-object v0, p0, Lyu;->aK:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyn;

    instance-of v3, v2, Lyu;

    if-eqz v3, :cond_1

    check-cast v2, Lyu;

    invoke-virtual {v2}, Lyu;->V()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final aa(Lyn;)V
    .locals 1

    iget-object v0, p0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lyn;->v()V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lyn;->v()V

    return-void
.end method
