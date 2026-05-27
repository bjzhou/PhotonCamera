.class public final Lnwp;
.super Lnwn;

# interfaces
.implements Lnxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Liuf;->c:Liuf;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lnwq;)V
    .locals 0

    invoke-direct {p0, p1}, Lnwn;-><init>(Lnws;)V

    return-void
.end method


# virtual methods
.method public final aH()Lnwq;
    .locals 1

    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    return-object v0

    :cond_0
    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    iget-object v0, v0, Lnwq;->l:Lnwj;

    invoke-virtual {v0}, Lnwj;->e()V

    invoke-super {p0}, Lnwn;->j()Lnws;

    move-result-object v0

    check-cast v0, Lnwq;

    return-object v0
.end method

.method public final aI(J)V
    .locals 2

    iget-object v0, p0, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnwn;->p()V

    :cond_0
    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Loah;

    sget-object v1, Loah;->n:Loah;

    invoke-virtual {v0}, Loah;->f()V

    iget-object v0, v0, Loah;->k:Lnwz;

    invoke-interface {v0, p1, p2}, Lnwz;->f(J)V

    return-void
.end method

.method public final aJ(Llhj;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lnws;->aH:Ljava/util/Map;

    iget-object v0, p1, Llhj;->a:Ljava/lang/Object;

    iget-object v1, p0, Lnwn;->a:Lnws;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnwn;->p()V

    :cond_0
    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    iget-object v0, v0, Lnwq;->l:Lnwj;

    iget-boolean v1, v0, Lnwj;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnwj;->c()Lnwj;

    move-result-object v0

    iget-object v1, p0, Lnwp;->b:Lnws;

    check-cast v1, Lnwq;

    iput-object v0, v1, Lnwq;->l:Lnwj;

    goto :goto_0

    :cond_1
    :goto_0
    iget-object p1, p1, Llhj;->b:Ljava/lang/Object;

    check-cast p1, Lnwr;

    invoke-virtual {p1}, Lnwr;->a()Lnzm;

    move-result-object v1

    sget-object v2, Lnzm;->h:Lnzm;

    if-ne v1, v2, :cond_2

    check-cast p2, Lnwv;

    invoke-interface {p2}, Lnwv;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    invoke-virtual {v0, p1, p2}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic j()Lnws;
    .locals 1

    invoke-virtual {p0}, Lnwp;->aH()Lnwq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lnxy;
    .locals 1

    invoke-virtual {p0}, Lnwp;->aH()Lnwq;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 2

    invoke-super {p0}, Lnwn;->p()V

    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    iget-object v0, v0, Lnwq;->l:Lnwj;

    sget-object v1, Lnwj;->a:Lnwj;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnwp;->b:Lnws;

    check-cast v0, Lnwq;

    iget-object v1, v0, Lnwq;->l:Lnwj;

    invoke-virtual {v1}, Lnwj;->c()Lnwj;

    move-result-object v1

    iput-object v1, v0, Lnwq;->l:Lnwj;

    :cond_0
    return-void
.end method
