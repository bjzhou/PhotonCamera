.class public Las;
.super Lan;


# instance fields
.field public final al:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lan;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Las;->al:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 4

    invoke-virtual {p0}, Lan;->q()V

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    instance-of v3, v2, Las;

    if-eqz v3, :cond_1

    check-cast v2, Las;

    invoke-virtual {v2}, Las;->D()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final F(Lan;)V
    .locals 1

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lan;->r:Lan;

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lan;->i()V

    return-void
.end method

.method public final n(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lan;->n(II)V

    iget-object p1, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    iget v1, p0, Lan;->w:I

    iget v2, p0, Lan;->A:I

    add-int/2addr v1, v2

    iget v2, p0, Lan;->x:I

    iget v3, p0, Lan;->B:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lan;->n(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 5

    invoke-super {p0}, Lan;->q()V

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    invoke-virtual {p0}, Lan;->b()I

    move-result v3

    invoke-virtual {p0}, Lan;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lan;->n(II)V

    instance-of v3, v2, Lao;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lan;->q()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final z(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 3

    invoke-super {p0, p1}, Lan;->z(Landroidx/wear/ambient/AmbientDelegate;)V

    iget-object v0, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Las;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    invoke-virtual {v2, p1}, Lan;->z(Landroidx/wear/ambient/AmbientDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
