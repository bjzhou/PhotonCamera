.class public final synthetic Lnsg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntByteArrayConsumer;


# instance fields
.field public final synthetic a:Ledz;


# direct methods
.method public synthetic constructor <init>(Ledz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsg;->a:Ledz;

    return-void
.end method


# virtual methods
.method public final accept(I[B)V
    .locals 7

    iget-object p1, p0, Lnsg;->a:Ledz;

    sget-object v0, Leea;->a:Lnak;

    iget-object v0, p1, Ledz;->c:Leea;

    iget v0, v0, Leea;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p1, Ledz;->c:Leea;

    const/4 v3, 0x2

    iput v3, v0, Leea;->s:I

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v4, Lnsw;->E:Lnsw;

    array-length v5, p2

    invoke-static {v4, p2, v1, v5, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p2

    invoke-static {p2}, Lnws;->ae(Lnws;)V

    check-cast p2, Lnsw;
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v0, Leea;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v4, "Error deserializing shot log data"

    const/16 v5, 0x532

    invoke-static {v0, v4, v5, p2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object p2, Lnsw;->E:Lnsw;

    :goto_1
    new-instance v0, Lebd;

    iget v4, p1, Ledz;->d:I

    invoke-direct {v0, p2, v4}, Lebd;-><init>(Lnsw;I)V

    iget-object v4, p1, Ledz;->a:Leec;

    invoke-virtual {v4}, Leec;->n()Lmqp;

    move-result-object v5

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Leec;->k()Lmqp;

    move-result-object v5

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Leec;->l()Lmqp;

    move-result-object v4

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    iget v4, p1, Ledz;->d:I

    if-eq v4, v3, :cond_4

    iget v5, p2, Lnsw;->n:I

    invoke-static {v5}, Lnsy;->c(I)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-eq v3, v4, :cond_4

    sget-object v3, Leea;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v4, "Hexagon"

    goto :goto_3

    :cond_3
    const-string v4, "Gxp"

    :goto_3
    const-string v5, "%s failed"

    const/16 v6, 0x530

    invoke-static {v3, v5, v4, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v3, p1, Ledz;->b:Ldin;

    sget-object v5, Ldin;->d:Ldin;

    if-eq v3, v5, :cond_4

    sget-object v3, Leea;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Ledz;->e:Ldne;

    const-string v3, " failed! Please immediately take and file a bug report."

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldne;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_4
    iget-object v2, p2, Lnsw;->d:Lnwx;

    invoke-interface {v2}, Lnwx;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p2, Lnsw;->d:Lnwx;

    invoke-interface {v2, v1}, Lnwx;->d(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    sget-object p2, Leea;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v1, "Black frame detected"

    const/16 v2, 0x531

    invoke-static {p2, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object p2, p1, Ledz;->b:Ldin;

    sget-object v1, Ldin;->d:Ldin;

    if-eq p2, v1, :cond_6

    iget-object p2, p1, Ledz;->e:Ldne;

    const-string v1, "Black frame detected! Please immediately take and file a bug report."

    invoke-virtual {p2, v1}, Ldne;->f(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p2, p1, Ledz;->f:Ligo;

    invoke-virtual {p2}, Ligo;->m()Lhjg;

    move-result-object p2

    iget-object v1, p1, Ledz;->a:Leec;

    invoke-virtual {v1}, Leec;->m()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p1, Ledz;->a:Leec;

    invoke-virtual {p1}, Leec;->m()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecw;

    invoke-interface {p1, p2, v0}, Lecw;->b(Lhjg;Lebd;)V

    :cond_7
    return-void
.end method
