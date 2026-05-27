.class public final Lmbo;
.super Llho;


# instance fields
.field public final d:Lotd;


# direct methods
.method public constructor <init>(Lotd;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llho;-><init>([C)V

    iput-object p1, p0, Lmbo;->d:Lotd;

    return-void
.end method


# virtual methods
.method public final X(Lodq;)V
    .locals 4

    iget-object v0, p0, Lmbo;->d:Lotd;

    new-instance v1, Lmdg;

    invoke-interface {p1}, Lodq;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lmdg;-><init>(J)V

    invoke-static {v0, v1}, Lolp;->N(Lotj;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lodq;Lods;)V
    .locals 5

    iget-object v0, p2, Lods;->a:Lodr;

    sget-object v1, Lmbm;->a:Lnbj;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnbf;

    invoke-interface {v1, p2}, Lnbf;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnbf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lodr;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lodq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lods;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s error from %s: %s"

    invoke-interface {v1, v4, v2, p1, v3}, Lnbf;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lmbo;->d:Lotd;

    new-instance v1, Lmdf;

    if-nez v0, :cond_1

    sget-object v0, Lodt;->B:Lodt;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lodr;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lojb;

    invoke-direct {p1}, Lojb;-><init>()V

    throw p1

    :pswitch_0
    sget-object v0, Lodt;->D:Lodt;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lodt;->B:Lodt;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lodt;->A:Lodt;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lodt;->C:Lodt;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lodt;->y:Lodt;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lodt;->z:Lodt;

    :goto_1
    invoke-direct {v1, v0, p2}, Lmdf;-><init>(Lodt;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lolp;->N(Lotj;Ljava/lang/Object;)V

    iget-object p1, p0, Lmbo;->d:Lotd;

    invoke-static {p1}, Lolp;->K(Lotj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
