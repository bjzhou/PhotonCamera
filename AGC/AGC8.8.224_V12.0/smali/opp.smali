.class public final Lopp;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lola;Lola;Z)Lola;
    .locals 3

    invoke-static {p0}, Lopp;->d(Lola;)Z

    move-result v0

    invoke-static {p1}, Lopp;->d(Lola;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lonk;

    invoke-direct {v0}, Lonk;-><init>()V

    iput-object p1, v0, Lonk;->a:Ljava/lang/Object;

    sget-object p1, Lolb;->a:Lolb;

    new-instance v2, Lopo;

    invoke-direct {v2, v0, p2}, Lopo;-><init>(Lonk;Z)V

    invoke-interface {p0, p1, v2}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lola;

    if-eqz v1, :cond_2

    iget-object p1, v0, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lola;

    sget-object p2, Lolb;->a:Lolb;

    sget-object v1, Lokz;->c:Lokz;

    invoke-interface {p1, p2, v1}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lonk;->a:Ljava/lang/Object;

    :cond_2
    iget-object p1, v0, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lola;

    invoke-interface {p0, p1}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lopu;Lola;)Lola;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lopu;->da()Lola;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lopp;->a(Lola;Lola;Z)Lola;

    move-result-object p0

    sget-boolean p1, Lopw;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lops;

    sget-object v0, Lopw;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lops;-><init>(J)V

    invoke-interface {p0, p1}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    sget-object v0, Loqf;->a:Lopq;

    if-eq p0, v0, :cond_1

    sget-object v0, Lokw;->a:Lokv;

    invoke-interface {p0, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Loqf;->a:Lopq;

    invoke-interface {p1, p0}, Lola;->plus(Lola;)Lola;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final c(Loku;Lola;Ljava/lang/Object;)Lorz;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Losa;->a:Losa;

    invoke-interface {p1, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :cond_0
    instance-of v0, p0, Loqc;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Loli;->g()Loli;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorz;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lorz;

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorz;->L(Lola;Ljava/lang/Object;)V

    :cond_3
    return-object v1

    :cond_4
    return-object v1
.end method

.method public static final d(Lola;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lokz;->d:Lokz;

    invoke-interface {p0, v0, v1}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
