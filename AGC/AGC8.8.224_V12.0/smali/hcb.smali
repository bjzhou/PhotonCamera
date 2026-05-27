.class final Lhcb;
.super Ljava/lang/Object;

# interfaces
.implements Lhbw;


# instance fields
.field final a:Lgnk;

.field final synthetic b:Loiw;

.field final synthetic c:Lken;

.field final synthetic d:Lgue;


# direct methods
.method public constructor <init>(Loiw;Lken;Lgue;[B)V
    .locals 0

    iput-object p1, p0, Lhcb;->b:Loiw;

    iput-object p2, p0, Lhcb;->c:Lken;

    iput-object p3, p0, Lhcb;->d:Lgue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnk;

    iput-object p1, p0, Lhcb;->a:Lgnk;

    return-void
.end method


# virtual methods
.method public final a(Lhda;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lhcb;->a:Lgnk;

    invoke-interface {v0}, Lgnk;->c()Lkeb;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lhcc;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Fetching high resolution image failed, frame is null. Submitting a new request."

    const/16 v3, 0xd88

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lhcb;->c:Lken;

    iget-object v2, p0, Lhcb;->a:Lgnk;

    invoke-interface {v2}, Lgnk;->n()Lkgq;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->q(Lkgq;)Lkeb;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lkfg;->y(Lkeb;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lhcs;

    invoke-direct {v0, v1, p1}, Lhcs;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lhcb;->d:Lgue;

    invoke-virtual {v4, v0}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v0

    invoke-virtual {v0}, Lgli;->e()Lkpb;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lgli;->a()Lkfj;

    move-result-object v0

    invoke-interface {v0}, Lkfj;->c()Lkll;

    move-result-object v0

    iget-object v3, p1, Lhda;->a:Lhdc;

    iget-object v5, p1, Lhda;->b:Lmqp;

    iget-object p1, p1, Lhda;->c:Lhdw;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgip;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v2, v6}, Lgip;->a(Lkll;Lkou;I)Lfsf;

    move-result-object v0

    new-instance v2, Ljfe;

    invoke-interface {v4}, Lkpb;->c()I

    move-result v5

    div-int/2addr v5, v1

    invoke-interface {v4}, Lkpb;->b()I

    move-result v6

    div-int/2addr v6, v1

    invoke-static {v5, v6}, Lkaf;->h(II)Lkaf;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Ljfe;-><init>(Lkaf;IIJ)V

    new-instance v1, Lhdb;

    invoke-direct {v1, v4, p1}, Lhdb;-><init>(Lkpb;Lhdw;)V

    iget-object p1, v3, Lhdc;->b:Lfse;

    invoke-interface {p1, v4, v0, v2, v1}, Lfse;->b(Lkpb;Lfsf;Ljfe;Lfsd;)V

    return-void

    :cond_1
    new-instance p1, Lhcs;

    const/4 v0, 0x4

    invoke-direct {p1, v0, v3}, Lhcs;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p1, Lhcs;

    const/4 v0, 0x3

    invoke-direct {p1, v0, v3}, Lhcs;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lhcs;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lhcs;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
