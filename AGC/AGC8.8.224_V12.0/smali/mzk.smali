.class final Lmzk;
.super Lmzj;

# interfaces
.implements Ljava/util/NavigableSet;


# direct methods
.method public constructor <init>(Lmzi;)V
    .locals 0

    invoke-direct {p0, p1}, Lmzj;-><init>(Lmzi;)V

    return-void
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->j()Lmya;

    move-result-object p1

    invoke-static {p1}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmzk;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lmzk;

    iget-object v1, p0, Lmzj;->a:Lmzi;

    invoke-interface {v1}, Lmzi;->n()Lmzi;

    move-result-object v1

    invoke-direct {v0, v1}, Lmzk;-><init>(Lmzi;)V

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->k()Lmya;

    move-result-object p1

    invoke-static {p1}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    new-instance v0, Lmzk;

    iget-object v1, p0, Lmzj;->a:Lmzi;

    invoke-interface {v1, p1, p2}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-direct {v0, p1}, Lmzk;-><init>(Lmzi;)V

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->j()Lmya;

    move-result-object p1

    invoke-static {p1}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->k()Lmya;

    move-result-object p1

    invoke-static {p1}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->l()Lmya;

    move-result-object v0

    invoke-static {v0}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->m()Lmya;

    move-result-object v0

    invoke-static {v0}, Lmjy;->v(Lmya;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    invoke-static {p4}, Llkj;->w(Z)I

    move-result p4

    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    new-instance v0, Lmzk;

    iget-object v1, p0, Lmzj;->a:Lmzi;

    invoke-interface {v1, p1, p2, p3, p4}, Lmzi;->q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-direct {v0, p1}, Lmzk;-><init>(Lmzi;)V

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    new-instance v0, Lmzk;

    iget-object v1, p0, Lmzj;->a:Lmzi;

    invoke-interface {v1, p1, p2}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-direct {v0, p1}, Lmzk;-><init>(Lmzi;)V

    return-object v0
.end method
