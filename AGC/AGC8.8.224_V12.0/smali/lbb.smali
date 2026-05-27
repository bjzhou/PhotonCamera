.class final Llbb;
.super Lldc;


# instance fields
.field final synthetic a:Llcd;


# direct methods
.method public constructor <init>(Llbd;Lkzc;Llcd;)V
    .locals 0

    iput-object p3, p0, Llbb;->a:Llcd;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    return-void
.end method


# virtual methods
.method public final a()Lkzf;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnou;

    iget-object v1, p0, Llbb;->a:Llcd;

    invoke-virtual {v1}, Llbk;->a()Lkzf;

    move-result-object v1

    invoke-virtual {v1}, Lkzf;->e()Lnou;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Lldc;->a()Lkzf;

    move-result-object v1

    invoke-virtual {v1}, Lkzf;->e()Lnou;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lnsy;->y([Lnou;)Lnou;

    move-result-object v0

    new-instance v1, Lcej;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcej;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-static {v0}, Llpm;->d(Lnou;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method
