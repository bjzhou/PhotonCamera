.class public final synthetic Llpx;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lfux;Lflq;Lmqp;Lfuz;I)V
    .locals 0

    iput p5, p0, Llpx;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpx;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpx;->a:Ljava/lang/Object;

    iput-object p3, p0, Llpx;->d:Ljava/lang/Object;

    iput-object p4, p0, Llpx;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Llpq;Llon;Llqi;I)V
    .locals 0

    iput p5, p0, Llpx;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpx;->d:Ljava/lang/Object;

    iput-object p2, p0, Llpx;->c:Ljava/lang/Object;

    iput-object p3, p0, Llpx;->a:Ljava/lang/Object;

    iput-object p4, p0, Llpx;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llon;Lnou;Llpq;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Llpx;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpx;->a:Ljava/lang/Object;

    iput-object p2, p0, Llpx;->b:Ljava/lang/Object;

    iput-object p3, p0, Llpx;->c:Ljava/lang/Object;

    iput-object p4, p0, Llpx;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 10

    iget v0, p0, Llpx;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llpx;->d:Ljava/lang/Object;

    iget-object v1, p0, Llpx;->c:Ljava/lang/Object;

    iget-object v2, p0, Llpx;->a:Ljava/lang/Object;

    iget-object v3, p0, Llpx;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lnor;->a:Lnou;

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Llpx;->c:Ljava/lang/Object;

    iget-object v1, p0, Llpx;->a:Ljava/lang/Object;

    iget-object v2, p0, Llpx;->d:Ljava/lang/Object;

    iget-object v3, p0, Llpx;->b:Ljava/lang/Object;

    check-cast p1, Ligx;

    check-cast v0, Lfux;

    iget-object v4, v0, Lfux;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lika;

    sget-object v5, Lika;->c:Lika;

    invoke-virtual {v5, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lika;->f:Lika;

    invoke-virtual {v5, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lika;->n:Lika;

    invoke-virtual {v5, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lika;->t:Lika;

    invoke-virtual {v5, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lflq;

    iget-object v0, v1, Lflq;->a:Lflg;

    iget-object v0, v0, Lflg;->d:Lihb;

    check-cast v3, Lklw;

    invoke-virtual {v3}, Lklw;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v2, Lmqp;

    invoke-virtual {p1, v0, v2, v1}, Ligx;->f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    iget-object v0, v0, Lfux;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to configure photo mode viewfinder while the mode is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    iget-object v0, p0, Llpx;->a:Ljava/lang/Object;

    iget-object v1, p0, Llpx;->b:Ljava/lang/Object;

    iget-object v2, p0, Llpx;->c:Ljava/lang/Object;

    iget-object v3, p0, Llpx;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Llqi;

    iget-object p1, v8, Llqi;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lnor;->a:Lnou;

    goto :goto_2

    :cond_2
    move-object v6, v2

    check-cast v6, Llpq;

    iget-object p1, v6, Llpq;->a:Ljava/lang/String;

    check-cast v0, Llon;

    invoke-static {v0}, Llpt;->b(Llon;)Llst;

    move-result-object v1

    invoke-virtual {v1}, Llst;->a()Lnou;

    move-result-object v1

    invoke-static {v1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v1

    new-instance v2, Llps;

    const/4 v4, 0x2

    invoke-direct {v2, p1, v4}, Llps;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p1

    new-instance v1, Llpx;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v9, 0x2

    move-object v4, v1

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Llpx;-><init>(Ljava/lang/String;Llpq;Llon;Llqi;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_3
    sget-object p1, Llpy;->c:Llpa;

    check-cast v1, Llpq;

    iget-object v1, v1, Llpq;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmuq;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lnor;->a:Lnou;

    goto :goto_3

    :cond_4
    check-cast v2, Llon;

    invoke-virtual {v2}, Llon;->e()Llhz;

    move-result-object p1

    check-cast v3, Llqi;

    iget-object v0, v3, Llqi;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llhz;->b(Ljava/lang/String;)Lnou;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
