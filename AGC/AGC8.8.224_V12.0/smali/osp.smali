.class public abstract Losp;
.super Ljava/lang/Object;

# interfaces
.implements Lotj;


# instance fields
.field public final a:Lown;

.field private final b:Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lown;

    invoke-direct {v0}, Lown;-><init>()V

    iput-object v0, p0, Losp;->a:Lown;

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Losp;->b:Loop;

    return-void
.end method

.method public static final B(Losy;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lowr;->m()Lowr;

    move-result-object v2

    instance-of v3, v2, Lote;

    if-eqz v3, :cond_0

    check-cast v2, Lote;

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    instance-of v0, v1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast v1, Lote;

    invoke-virtual {v1, p0}, Lote;->c(Losy;)V

    return-void

    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lote;

    invoke-virtual {v2, p0}, Lote;->c(Losy;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2}, Lowr;->cP()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lowr;->p()V

    goto :goto_0

    :cond_4
    invoke-static {v1, v2}, Lowl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static final a(Losy;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Losp;->B(Losy;)V

    invoke-virtual {p0}, Losy;->f()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static final cY(Loku;Losy;)V
    .locals 0

    invoke-static {p1}, Losp;->B(Losy;)V

    invoke-virtual {p1}, Losy;->f()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Lotg;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected o(Loti;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Losp;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Losp;->a:Lown;

    :cond_0
    invoke-virtual {v0}, Lowr;->m()Lowr;

    move-result-object v1

    instance-of v2, v1, Lotg;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lowr;->r(Lowr;Lowr;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Losp;->a:Lown;

    new-instance v1, Loso;

    invoke-direct {v1, p1, p0}, Loso;-><init>(Lowr;Losp;)V

    :goto_0
    invoke-virtual {v0}, Lowr;->m()Lowr;

    move-result-object v2

    instance-of v3, v2, Lotg;

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lowr;->j(Lowr;Lowr;Lowp;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Losn;->e:Loxb;

    return-object p1

    :goto_1
    :pswitch_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Losp;->d()Lotg;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Losn;->c:Loxb;

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Lotg;->d(Ljava/lang/Object;)Loxb;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lopw;->a:Z

    invoke-interface {v0, p1}, Lotg;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lotg;->cX()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Losp;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Losn;->b:Loxb;

    if-eq v0, v1, :cond_9

    invoke-static {p2}, Lolp;->g(Loku;)Loku;

    move-result-object p2

    invoke-static {p2}, Lonm;->n(Loku;)Lopa;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Losp;->a:Lown;

    invoke-virtual {v0}, Lowr;->l()Lowr;

    move-result-object v0

    instance-of v0, v0, Lotg;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Losp;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lotk;

    invoke-direct {v0, p1, p2}, Lotk;-><init>(Ljava/lang/Object;Looz;)V

    invoke-virtual {p0, v0}, Losp;->o(Loti;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Lorq;

    invoke-direct {p1, v0}, Lorq;-><init>(Lowr;)V

    invoke-interface {p2, p1}, Looz;->a(Lomk;)V

    goto :goto_1

    :cond_1
    instance-of v0, v1, Losy;

    if-eqz v0, :cond_2

    check-cast v1, Losy;

    invoke-static {p2, v1}, Losp;->cY(Loku;Losy;)V

    goto :goto_1

    :cond_2
    sget-object v0, Losn;->e:Loxb;

    if-eq v1, v0, :cond_4

    instance-of v0, v1, Lote;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enqueueSend returned "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Losp;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Losn;->b:Loxb;

    if-ne v0, v1, :cond_5

    sget-object p1, Lojk;->a:Lojk;

    invoke-interface {p2, p1}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v1, Losn;->c:Loxb;

    if-eq v0, v1, :cond_0

    instance-of p1, v0, Losy;

    if-eqz p1, :cond_8

    check-cast v0, Losy;

    invoke-static {p2, v0}, Losp;->cY(Loku;Losy;)V

    :goto_1
    invoke-virtual {p2}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-eq p1, p2, :cond_6

    sget-object p1, Lojk;->a:Lojk;

    :cond_6
    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offerInternal returned "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Losp;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Losn;->b:Loxb;

    if-ne p1, v0, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    goto :goto_0

    :cond_0
    sget-object v0, Losn;->c:Loxb;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Losw;->a:Losv;

    return-object p1

    :cond_1
    invoke-static {p1}, Losp;->a(Losy;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lolp;->O(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Losy;

    if-eqz v0, :cond_3

    check-cast p1, Losy;

    invoke-static {p1}, Losp;->a(Losy;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lolp;->O(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySend returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Losp;->a:Lown;

    invoke-virtual {v2}, Lowr;->l()Lowr;

    move-result-object v2

    iget-object v3, p0, Losp;->a:Lown;

    if-ne v2, v3, :cond_0

    const-string v2, "EmptyQueue"

    goto/16 :goto_2

    :cond_0
    instance-of v3, v2, Losy;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lowr;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lote;

    if-eqz v3, :cond_2

    const-string v3, "ReceiveQueued"

    goto :goto_0

    :cond_2
    instance-of v3, v2, Loti;

    if-eqz v3, :cond_3

    const-string v3, "SendQueued"

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNEXPECTED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Losp;->a:Lown;

    invoke-virtual {v4}, Lowr;->m()Lowr;

    move-result-object v4

    if-eq v4, v2, :cond_5

    iget-object v2, p0, Losp;->a:Lown;

    invoke-virtual {v2}, Lowr;->k()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lowr;

    const/4 v6, 0x0

    :goto_1
    invoke-static {v5, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Lowr;->l()Lowr;

    move-result-object v5

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",queueSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v4, Losy;

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",closedForSend="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Losp;->t()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final u()Losy;
    .locals 3

    iget-object v0, p0, Losp;->a:Lown;

    invoke-virtual {v0}, Lowr;->m()Lowr;

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

    return-object v0

    :cond_1
    return-object v2
.end method

.method protected final v()Loti;
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
    instance-of v3, v1, Loti;

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Loti;

    instance-of v2, v2, Losy;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lowr;->cQ()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lowr;->n()Lowr;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    check-cast v1, Loti;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lowr;->q()V

    goto :goto_0
.end method

.method public final w(Lomk;)V
    .locals 3

    iget-object v0, p0, Losp;->b:Loop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Losp;->b:Loop;

    iget-object p1, p1, Loop;->a:Ljava/lang/Object;

    sget-object v0, Losn;->f:Loxb;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another handler was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Losp;->b:Loop;

    sget-object v2, Losn;->f:Loxb;

    invoke-virtual {v1, p1, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Losy;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/Throwable;)Z
    .locals 5

    new-instance v0, Losy;

    invoke-direct {v0, p1}, Losy;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Losp;->a:Lown;

    :cond_0
    invoke-virtual {v1}, Lowr;->m()Lowr;

    move-result-object v2

    instance-of v3, v2, Losy;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2, v0, v1}, Lowr;->r(Lowr;Lowr;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, p0, Losp;->a:Lown;

    invoke-virtual {v0}, Lowr;->m()Lowr;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Losy;

    :cond_2
    invoke-static {v0}, Losp;->B(Losy;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Losp;->b:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v2, Losn;->f:Loxb;

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Losp;->b:Loop;

    invoke-virtual {v3, v0, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v4}, Lonm;->b(Ljava/lang/Object;I)V

    check-cast v0, Lomk;

    invoke-interface {v0, p1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method protected abstract y()Z
.end method

.method protected abstract z()Z
.end method
