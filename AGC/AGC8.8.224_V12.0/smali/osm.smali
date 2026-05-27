.class public abstract Losm;
.super Losp;

# interfaces
.implements Loss;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Losp;-><init>()V

    return-void
.end method

.method private final C(ILoku;)Ljava/lang/Object;
    .locals 2

    invoke-static {p2}, Lolp;->g(Loku;)Loku;

    move-result-object p2

    invoke-static {p2}, Lonm;->n(Loku;)Lopa;

    move-result-object p2

    new-instance v0, Losh;

    invoke-direct {v0, p2, p1}, Losh;-><init>(Looz;I)V

    :cond_0
    invoke-virtual {p0, v0}, Losm;->f(Lote;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2, v0}, Losm;->n(Looz;Lote;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Losm;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Losy;

    if-eqz v1, :cond_2

    check-cast p1, Losy;

    invoke-virtual {v0, p1}, Losh;->c(Losy;)V

    goto :goto_0

    :cond_2
    sget-object v1, Losn;->d:Loxb;

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Losh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Looz;->b(Ljava/lang/Object;Lomk;)V

    :goto_0
    invoke-virtual {p2}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    return-object p1
.end method

.method public static final n(Looz;Lote;)V
    .locals 1

    new-instance v0, Losj;

    invoke-direct {v0, p1}, Losj;-><init>(Lote;)V

    invoke-interface {p0, v0}, Looz;->a(Lomk;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Losp;->v()Loti;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Losn;->d:Loxb;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Loti;->i()Loxb;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lopw;->a:Z

    invoke-virtual {v0}, Loti;->g()V

    invoke-virtual {v0}, Loti;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Loku;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Losm;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Losn;->d:Loxb;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Losy;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Losm;->C(ILoku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Losl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Losl;

    iget v1, v0, Losl;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Losl;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Losl;

    invoke-direct {v0, p0, p1}, Losl;-><init>(Losm;Loku;)V

    :goto_0
    iget-object p1, v0, Losl;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Losl;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-virtual {p0}, Losm;->a()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Losn;->d:Loxb;

    if-eq p1, v2, :cond_2

    instance-of v0, p1, Losy;

    if-eqz v0, :cond_1

    check-cast p1, Losy;

    iget-object p1, p1, Losy;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lolp;->O(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x1

    iput p1, v0, Losl;->c:I

    invoke-direct {p0, p1, v0}, Losm;->C(ILoku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Losw;

    iget-object p1, p1, Losw;->b:Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final d()Lotg;
    .locals 4

    iget-object v0, p0, Losp;->a:Lown;

    :goto_0
    invoke-virtual {v0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lowr;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    instance-of v3, v1, Lotg;

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lotg;

    instance-of v2, v2, Losy;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lowr;->cQ()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lowr;->n()Lowr;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_1
    check-cast v1, Lotg;

    if-eqz v1, :cond_3

    instance-of v0, v1, Losy;

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {v2}, Lowr;->q()V

    goto :goto_0
.end method

.method protected e(Z)V
    .locals 3

    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lowr;->m()Lowr;

    move-result-object v1

    instance-of v2, v1, Lown;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    check-cast v0, Loti;

    invoke-virtual {v0, p1}, Loti;->h(Losy;)V

    return-void

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loti;

    invoke-virtual {v2, p1}, Loti;->h(Losy;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    sget-boolean v2, Lopw;->a:Z

    invoke-virtual {v1}, Lowr;->cP()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lowr;->p()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Loti;

    invoke-static {v0, v1}, Lowl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final f(Lote;)Z
    .locals 0

    invoke-virtual {p0, p1}, Losm;->g(Lote;)Z

    move-result p1

    return p1
.end method

.method protected g(Lote;)Z
    .locals 6

    invoke-virtual {p0}, Losm;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Losp;->a:Lown;

    :cond_0
    invoke-virtual {v0}, Lowr;->m()Lowr;

    move-result-object v3

    instance-of v4, v3, Loti;

    if-nez v4, :cond_1

    invoke-virtual {v3, p1, v0}, Lowr;->r(Lowr;Lowr;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Losp;->a:Lown;

    new-instance v3, Losk;

    invoke-direct {v3, p1, p0}, Losk;-><init>(Lowr;Losm;)V

    :goto_0
    invoke-virtual {v0}, Lowr;->m()Lowr;

    move-result-object v4

    instance-of v5, v4, Loti;

    if-nez v5, :cond_3

    invoke-virtual {v4, p1, v0, v3}, Lowr;->j(Lowr;Lowr;Lowp;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()Z
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Losp;->a:Lown;

    invoke-virtual {v0}, Lowr;->l()Lowr;

    move-result-object v0

    instance-of v1, v0, Losy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Losy;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Losp;->B(Losy;)V

    move-object v2, v0

    goto :goto_1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Losm;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Losm;->l()Z

    move-result v0

    return v0
.end method

.method protected final l()Z
    .locals 1

    iget-object v0, p0, Losp;->a:Lown;

    invoke-virtual {v0}, Lowr;->l()Lowr;

    move-result-object v0

    instance-of v0, v0, Loti;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Losm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Losg;
    .locals 1

    new-instance v0, Losg;

    invoke-direct {v0, p0}, Losg;-><init>(Losm;)V

    return-object v0
.end method

.method public final r(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Losm;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Losp;->x(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0, p1}, Losm;->e(Z)V

    return-void
.end method
