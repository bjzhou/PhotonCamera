.class public final Lmd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field e:I

.field public final synthetic f:Landroid/support/v7/widget/RecyclerView;

.field g:Liks;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmd;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lmd;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmd;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lmd;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0}, Lml;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v1, Lml;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0, p1}, Ljvb;->b(I)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p1}, Lml;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lmd;->o(IJ)Lmo;

    move-result-object p1

    iget-object p1, p1, Lmo;->a:Landroid/view/View;

    return-object p1
.end method

.method final c(Lmo;Z)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->r(Lmo;)V

    iget-object v0, p1, Lmo;->a:Landroid/view/View;

    iget-object v1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->Q:Lmq;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmq;->j()Laei;

    move-result-object v1

    instance-of v3, v1, Lmp;

    if-eqz v3, :cond_0

    check-cast v1, Lmp;

    iget-object v1, v1, Lmp;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laei;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lafq;->g(Landroid/view/View;Laei;)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme;

    invoke-interface {v1}, Lme;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    if-eqz v0, :cond_3

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {p2, p1}, Laie;->g(Lmo;)V

    :cond_3
    iput-object v2, p1, Lmo;->r:Lls;

    iput-object v2, p1, Lmo;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lmd;->p()Liks;

    move-result-object p2

    iget v0, p1, Lmo;->f:I

    invoke-virtual {p2, v0}, Liks;->i(I)Lmc;

    move-result-object v1

    iget-object v1, v1, Lmc;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Liks;->c:Ljava/lang/Object;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmc;

    iget p2, p2, Lmc;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x5

    if-lt p2, v0, :cond_4

    iget-object p1, p1, Lmo;->a:Landroid/view/View;

    invoke-static {p1}, Labn;->c(Landroid/view/View;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lmo;->k()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lmd;->h()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lmd;->g:Liks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Liks;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final f(Lls;Z)V
    .locals 4

    iget-object v0, p0, Lmd;->g:Liks;

    if-eqz v0, :cond_1

    iget-object v1, v0, Liks;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Liks;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v1, v0, Liks;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget-object v1, v0, Liks;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmc;

    iget-object v1, v1, Lmc;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo;

    iget-object v3, v3, Lmo;->a:Landroid/view/View;

    invoke-static {v3}, Labn;->c(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final g(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lmo;->m:Lmd;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmo;->n:Z

    invoke-virtual {p1}, Lmo;->h()V

    invoke-virtual {p0, p1}, Lmd;->k(Lmo;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lmd;->i(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->L:Lkr;

    invoke-virtual {v0}, Lkr;->b()V

    :cond_1
    return-void
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmd;->c(Lmo;Z)V

    iget-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v0

    invoke-virtual {v0}, Lmo;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lmo;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lmo;->o()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmo;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lmo;->h()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lmd;->k(Lmo;)V

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lmo;->t()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    invoke-virtual {p1, v0}, Llv;->b(Lmo;)V

    :cond_3
    return-void
.end method

.method final k(Lmo;)V
    .locals 6

    invoke-virtual {p1}, Lmo;->v()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p1, Lmo;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lmo;->w()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lmo;->z()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p1, Lmo;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget-object v0, p1, Lmo;->a:Landroid/view/View;

    invoke-static {v0}, Lafb;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lmo;->t()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lmd;->e:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Lmo;->p(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lmd;->e:I

    if-lt v3, v4, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Lmd;->i(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_2
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    iget-object v4, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->L:Lkr;

    iget v5, p1, Lmo;->c:I

    invoke-virtual {v4, v5}, Lkr;->d(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    iget-object v4, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    iget v4, v4, Lmo;->c:I

    iget-object v5, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->L:Lkr;

    invoke-virtual {v5, v4}, Lkr;->d(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v3, v1

    :cond_5
    iget-object v4, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_7

    invoke-virtual {p0, p1, v1}, Lmd;->c(Lmo;Z)V

    move v2, v3

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    :goto_4
    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v3, p1}, Laie;->g(Lmo;)V

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p1, Lmo;->a:Landroid/view/View;

    invoke-static {v0}, Labn;->c(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lmo;->r:Lls;

    iput-object v0, p1, Lmo;->q:Landroid/support/v7/widget/RecyclerView;

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmo;->v()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmo;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method final l(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lmo;->p(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmo;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmo;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Llv;->g(Lmo;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmd;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmd;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lmo;->n(Lmd;Z)V

    iget-object v0, p0, Lmd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lmo;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmo;->u()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v1, v1, Lls;->b:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lmo;->n(Lmd;Z)V

    iget-object v0, p0, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(Lmo;)V
    .locals 1

    iget-boolean v0, p1, Lmo;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lmo;->m:Lmd;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmo;->n:Z

    invoke-virtual {p1}, Lmo;->h()V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    iget v0, v0, Lly;->w:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmd;->e:I

    iget-object v0, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lmd;->e:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lmd;->i(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final o(IJ)Lmo;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-ltz v0, :cond_3f

    iget-object v2, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v2}, Lml;->a()I

    move-result v2

    if-ge v0, v2, :cond_3f

    iget-object v2, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v2, v2, Lml;->g:Z

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v1, Lmd;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v8, v6

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    iget-object v8, v1, Lmd;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmo;

    invoke-virtual {v8}, Lmo;->A()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lmo;->b()I

    move-result v9

    if-ne v9, v0, :cond_1

    invoke-virtual {v8, v3}, Lmo;->e(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v8, v8, Lls;->b:Z

    if-eqz v8, :cond_4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v7, v0}, Ljvb;->b(I)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v8}, Lls;->a()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v8, v7}, Lls;->c(I)J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_4

    iget-object v10, v1, Lmd;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmo;

    invoke-virtual {v10}, Lmo;->A()Z

    move-result v11

    if-nez v11, :cond_3

    iget-wide v11, v10, Lmo;->e:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_3

    invoke-virtual {v10, v3}, Lmo;->e(I)V

    move-object v8, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object v8, v6

    const/4 v2, 0x0

    :goto_3
    const/4 v7, -0x1

    if-nez v8, :cond_1a

    iget-object v8, v1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    iget-object v10, v1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmo;

    invoke-virtual {v10}, Lmo;->A()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lmo;->b()I

    move-result v11

    if-ne v11, v0, :cond_8

    invoke-virtual {v10}, Lmo;->s()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v11, v11, Lml;->g:Z

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lmo;->u()Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    invoke-virtual {v10, v3}, Lmo;->e(I)V

    move-object v8, v10

    goto/16 :goto_8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    iget-object v8, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v9, v8, Ljw;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_b

    iget-object v11, v8, Ljw;->b:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iget-object v12, v8, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v12

    invoke-virtual {v12}, Lmo;->b()I

    move-result v13

    if-ne v13, v0, :cond_a

    invoke-virtual {v12}, Lmo;->s()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v12}, Lmo;->u()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    move-object v11, v6

    :goto_6
    if-eqz v11, :cond_f

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v8

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v10, v9, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v10, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->j(Landroid/view/View;)I

    move-result v10

    if-ltz v10, :cond_e

    iget-object v12, v9, Ljw;->a:Ljv;

    invoke-virtual {v12, v10}, Ljv;->f(I)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v9, Ljw;->a:Ljv;

    invoke-virtual {v12, v10}, Ljv;->b(I)V

    invoke-virtual {v9, v11}, Ljw;->l(Landroid/view/View;)V

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v9, v11}, Ljw;->d(Landroid/view/View;)I

    move-result v9

    if-eq v9, v7, :cond_c

    iget-object v10, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v10, v9}, Ljw;->i(I)V

    invoke-virtual {v1, v11}, Lmd;->l(Landroid/view/View;)V

    const/16 v9, 0x2020

    invoke-virtual {v8, v9}, Lmo;->e(I)V

    goto/16 :goto_8

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v8, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_11

    iget-object v10, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmo;

    invoke-virtual {v10}, Lmo;->s()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10}, Lmo;->b()I

    move-result v11

    if-ne v11, v0, :cond_10

    invoke-virtual {v10}, Lmo;->q()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v8, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v10

    goto :goto_8

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
    move-object v8, v6

    :goto_8
    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lmo;->u()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v9, v9, Lml;->g:Z

    if-nez v9, :cond_12

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_13
    iget v9, v8, Lmo;->c:I

    if-ltz v9, :cond_19

    iget-object v10, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v10}, Lls;->a()I

    move-result v10

    if-ge v9, v10, :cond_19

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v10, v10, Lml;->g:Z

    if-nez v10, :cond_14

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget v10, v8, Lmo;->c:I

    invoke-virtual {v9, v10}, Lls;->b(I)I

    move-result v9

    iget v10, v8, Lmo;->f:I

    if-ne v9, v10, :cond_15

    :cond_14
    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v10, v9, Lls;->b:Z

    if-eqz v10, :cond_18

    iget-wide v10, v8, Lmo;->e:J

    iget v12, v8, Lmo;->c:I

    invoke-virtual {v9, v12}, Lls;->c(I)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_15

    goto :goto_b

    :cond_15
    :goto_9
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lmo;->e(I)V

    invoke-virtual {v8}, Lmo;->v()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v9, v10, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v8}, Lmo;->o()V

    goto :goto_a

    :cond_16
    invoke-virtual {v8}, Lmo;->A()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {v8}, Lmo;->h()V

    :cond_17
    :goto_a
    invoke-virtual {v1, v8}, Lmd;->k(Lmo;)V

    move-object v8, v6

    goto :goto_c

    :cond_18
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_c
    const-wide v11, 0x7fffffffffffffffL

    if-nez v8, :cond_2c

    iget-object v13, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v13, v0}, Ljvb;->b(I)I

    move-result v13

    if-ltz v13, :cond_2b

    iget-object v14, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v14}, Lls;->a()I

    move-result v14

    if-ge v13, v14, :cond_2b

    iget-object v14, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v14, v13}, Lls;->b(I)I

    move-result v14

    iget-object v15, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v5, v15, Lls;->b:Z

    if-eqz v5, :cond_22

    invoke-virtual {v15, v13}, Lls;->c(I)J

    move-result-wide v16

    iget-object v5, v1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_d
    if-ltz v5, :cond_1e

    iget-object v8, v1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmo;

    iget-wide v9, v8, Lmo;->e:J

    cmp-long v15, v9, v16

    if-nez v15, :cond_1d

    invoke-virtual {v8}, Lmo;->A()Z

    move-result v9

    if-nez v9, :cond_1d

    iget v9, v8, Lmo;->f:I

    if-ne v14, v9, :cond_1c

    invoke-virtual {v8, v3}, Lmo;->e(I)V

    invoke-virtual {v8}, Lmo;->u()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v3, v3, Lml;->g:Z

    if-nez v3, :cond_1b

    const/4 v3, 0x2

    const/16 v5, 0xe

    invoke-virtual {v8, v3, v5}, Lmo;->l(II)V

    goto :goto_10

    :cond_1b
    goto :goto_10

    :cond_1c
    iget-object v9, v1, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v9, v10, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v8, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Lmd;->g(Landroid/view/View;)V

    :cond_1d
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_1e
    iget-object v3, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v7

    :goto_e
    if-ltz v3, :cond_21

    iget-object v5, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmo;

    iget-wide v8, v5, Lmo;->e:J

    cmp-long v10, v8, v16

    if-nez v10, :cond_20

    invoke-virtual {v5}, Lmo;->q()Z

    move-result v8

    if-nez v8, :cond_20

    iget v8, v5, Lmo;->f:I

    if-ne v14, v8, :cond_1f

    iget-object v8, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v5

    goto :goto_10

    :cond_1f
    invoke-virtual {v1, v3}, Lmd;->i(I)V

    goto :goto_f

    :cond_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_21
    :goto_f
    move-object v8, v6

    :goto_10
    if-eqz v8, :cond_22

    iput v13, v8, Lmo;->c:I

    const/4 v2, 0x1

    :cond_22
    if-nez v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Lmd;->p()Liks;

    move-result-object v3

    iget-object v3, v3, Liks;->c:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc;

    if-eqz v3, :cond_24

    iget-object v5, v3, Lmc;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v3, v3, Lmc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_11
    if-ltz v5, :cond_24

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmo;

    invoke-virtual {v7}, Lmo;->q()Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo;

    goto :goto_12

    :cond_23
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    :cond_24
    move-object v3, v6

    :goto_12
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lmo;->k()V

    :cond_25
    move-object v8, v3

    :cond_26
    if-nez v8, :cond_2c

    cmp-long v3, p2, v11

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->aq()J

    move-result-wide v7

    if-eqz v3, :cond_28

    iget-object v3, v1, Lmd;->g:Liks;

    invoke-virtual {v3, v14}, Liks;->i(I)Lmc;

    move-result-object v3

    iget-wide v9, v3, Lmc;->c:J

    const-wide/16 v16, 0x0

    cmp-long v3, v9, v16

    if-eqz v3, :cond_28

    add-long/2addr v9, v7

    cmp-long v3, v9, p2

    if-gez v3, :cond_27

    goto :goto_13

    :cond_27
    return-object v6

    :cond_28
    :goto_13
    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    :try_start_0
    const-string v9, "RV CreateView"

    invoke-static {v9}, Ladq;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v14}, Lls;->d(Landroid/view/ViewGroup;I)Lmo;

    move-result-object v3

    iget-object v5, v3, Lmo;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_2a

    iput v14, v3, Lmo;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ladq;->b()V

    sget-boolean v5, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v5, :cond_29

    iget-object v5, v3, Lmo;->a:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_29

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v3, Lmo;->b:Ljava/lang/ref/WeakReference;

    :cond_29
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->aq()J

    move-result-wide v9

    iget-object v5, v1, Lmd;->g:Liks;

    sub-long/2addr v9, v7

    invoke-virtual {v5, v14}, Liks;->i(I)Lmc;

    move-result-object v5

    iget-wide v7, v5, Lmc;->c:J

    invoke-static {v7, v8, v9, v10}, Liks;->j(JJ)J

    move-result-wide v7

    iput-wide v7, v5, Lmc;->c:J

    move-object v8, v3

    goto :goto_14

    :cond_2a
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ladq;->b()V

    throw v0

    :cond_2b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0}, Lml;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    :goto_14
    if-eqz v2, :cond_2d

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v3, v3, Lml;->g:Z

    if-nez v3, :cond_2d

    const/16 v3, 0x2000

    invoke-virtual {v8, v3}, Lmo;->p(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v8, v4, v3}, Lmo;->l(II)V

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v3, v3, Lml;->j:Z

    if-eqz v3, :cond_2d

    invoke-static {v8}, Llv;->o(Lmo;)V

    invoke-virtual {v8}, Lmo;->c()Ljava/util/List;

    invoke-static {v8}, Llv;->u(Lmo;)Laev;

    move-result-object v3

    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v8, v3}, Landroid/support/v7/widget/RecyclerView;->ax(Lmo;Laev;)V

    :cond_2d
    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v3, v3, Lml;->g:Z

    if-eqz v3, :cond_2e

    invoke-virtual {v8}, Lmo;->r()Z

    move-result v3

    if-eqz v3, :cond_2e

    iput v0, v8, Lmo;->g:I

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    :cond_2e
    invoke-virtual {v8}, Lmo;->r()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v8}, Lmo;->y()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v8}, Lmo;->s()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_15

    :cond_2f
    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    :cond_30
    :goto_15
    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v3, v0}, Ljvb;->b(I)I

    move-result v3

    iput-object v6, v8, Lmo;->r:Lls;

    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iput-object v5, v8, Lmo;->q:Landroid/support/v7/widget/RecyclerView;

    iget v5, v8, Lmo;->f:I

    cmp-long v6, p2, v11

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->aq()J

    move-result-wide v9

    if-eqz v6, :cond_31

    iget-object v6, v1, Lmd;->g:Liks;

    invoke-virtual {v6, v5}, Liks;->i(I)Lmc;

    move-result-object v5

    iget-wide v5, v5, Lmc;->d:J

    const-wide/16 v11, 0x0

    cmp-long v7, v5, v11

    if-eqz v7, :cond_31

    add-long/2addr v5, v9

    cmp-long v7, v5, p2

    if-gez v7, :cond_2f

    :cond_31
    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-object v6, v8, Lmo;->r:Lls;

    if-nez v6, :cond_32

    const/4 v6, 0x1

    goto :goto_16

    :cond_32
    const/4 v6, 0x0

    :goto_16
    if-eqz v6, :cond_34

    iput v3, v8, Lmo;->c:I

    iget-boolean v7, v5, Lls;->b:Z

    if-eqz v7, :cond_33

    invoke-virtual {v5, v3}, Lls;->c(I)J

    move-result-wide v11

    iput-wide v11, v8, Lmo;->e:J

    :cond_33
    const/16 v7, 0x207

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v7}, Lmo;->l(II)V

    const-string v7, "RV OnBindView"

    invoke-static {v7}, Ladq;->a(Ljava/lang/String;)V

    :cond_34
    iput-object v5, v8, Lmo;->r:Lls;

    invoke-virtual {v8}, Lmo;->c()Ljava/util/List;

    invoke-virtual {v5, v8, v3}, Lls;->e(Lmo;I)V

    if-eqz v6, :cond_36

    invoke-virtual {v8}, Lmo;->g()V

    iget-object v3, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Llz;

    if-eqz v5, :cond_35

    check-cast v3, Llz;

    const/4 v5, 0x1

    iput-boolean v5, v3, Llz;->e:Z

    :cond_35
    invoke-static {}, Ladq;->b()V

    :cond_36
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->aq()J

    move-result-wide v5

    iget-object v3, v1, Lmd;->g:Liks;

    iget v7, v8, Lmo;->f:I

    sub-long/2addr v5, v9

    invoke-virtual {v3, v7}, Liks;->i(I)Lmc;

    move-result-object v3

    iget-wide v9, v3, Lmc;->d:J

    invoke-static {v9, v10, v5, v6}, Liks;->j(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lmc;->d:J

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->am()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v8, Lmo;->a:Landroid/view/View;

    invoke-static {v3}, Lafb;->a(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_37

    const/4 v11, 0x1

    invoke-static {v3, v11}, Lafb;->o(Landroid/view/View;I)V

    goto :goto_17

    :cond_37
    const/4 v11, 0x1

    :goto_17
    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->Q:Lmq;

    if-nez v5, :cond_38

    goto :goto_18

    :cond_38
    invoke-virtual {v5}, Lmq;->j()Laei;

    move-result-object v5

    instance-of v6, v5, Lmp;

    if-eqz v6, :cond_39

    move-object v6, v5

    check-cast v6, Lmp;

    invoke-static {v3}, Lafq;->a(Landroid/view/View;)Laei;

    move-result-object v7

    if-eqz v7, :cond_39

    if-eq v7, v6, :cond_39

    iget-object v6, v6, Lmp;->b:Ljava/util/Map;

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    invoke-static {v3, v5}, Lafq;->g(Landroid/view/View;Laei;)V

    goto :goto_18

    :cond_3a
    const/4 v11, 0x1

    :goto_18
    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v3, v3, Lml;->g:Z

    if-eqz v3, :cond_3b

    iput v0, v8, Lmo;->g:I

    goto :goto_19

    :cond_3b
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    iget-object v3, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3c

    iget-object v3, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v5, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_3c
    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_3d

    iget-object v5, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v5, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_3d
    check-cast v3, Llz;

    :goto_1b
    check-cast v3, Llz;

    iput-object v8, v3, Llz;->c:Lmo;

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    const/4 v4, 0x1

    :cond_3e
    iput-boolean v4, v3, Llz;->f:Z

    return-object v8

    :cond_3f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0}, Lml;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw v2

    :goto_1d
    goto :goto_1c
.end method

.method public final p()Liks;
    .locals 1

    iget-object v0, p0, Lmd;->g:Liks;

    if-nez v0, :cond_0

    new-instance v0, Liks;

    invoke-direct {v0}, Liks;-><init>()V

    iput-object v0, p0, Lmd;->g:Liks;

    invoke-virtual {p0}, Lmd;->e()V

    :cond_0
    iget-object v0, p0, Lmd;->g:Liks;

    return-object v0
.end method
