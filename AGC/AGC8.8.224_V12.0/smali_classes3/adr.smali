.class public final Ladr;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 7

    move-object v6, p6

    check-cast v6, Landroid/os/CancellationSignal;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lapt;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lapt;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lapt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-interface {p4}, Loku;->d()Lola;

    move-result-object v0

    sget-object v1, Laqb;->c:Lokv;

    invoke-interface {v0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Laqb;

    if-eqz v0, :cond_1

    iget-object p0, v0, Laqb;->a:Lokw;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lady;->d(Lapt;)Lopq;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lapt;->j:Ljava/util/Map;

    const-string v0, "QueryDispatcher"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lapt;->h()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Lopx;->m(Ljava/util/concurrent/Executor;)Lopq;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_0
    move-object p0, v1

    check-cast p0, Lopq;

    :goto_1
    new-instance p1, Lopa;

    invoke-static {p4}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lopa;-><init>(Loku;I)V

    invoke-virtual {p1}, Lopa;->x()V

    sget-object v0, Loqu;->a:Loqu;

    new-instance v1, Lapl;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p1, v2}, Lapl;-><init>(Ljava/util/concurrent/Callable;Looz;Loku;)V

    const/4 p3, 0x2

    invoke-static {v0, p0, v1, p3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    move-result-object p0

    new-instance p3, Lapk;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p0, v0}, Lapk;-><init>(Landroid/os/CancellationSignal;Lora;I)V

    invoke-interface {p1, p3}, Looz;->a(Lomk;)V

    invoke-virtual {p1}, Lopa;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static final c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lapt;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lapt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    sget-object v1, Laqb;->c:Lokv;

    invoke-interface {v0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Laqb;

    if-eqz v0, :cond_1

    iget-object p0, v0, Laqb;->a:Lokw;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lady;->d(Lapt;)Lopq;

    move-result-object p0

    :goto_0
    new-instance v0, Lapj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lapj;-><init>(Ljava/util/concurrent/Callable;Loku;)V

    invoke-static {p0, v0, p2}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
