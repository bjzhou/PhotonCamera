.class public final Laeo;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method

.method static e(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    return-void
.end method

.method public static f(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static g(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method

.method static h(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p0

    return p0
.end method

.method public static final i(Lapt;Lomk;Loku;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lapw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lapw;-><init>(Lapt;Lomk;Loku;)V

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object p1

    sget-object v2, Laqb;->c:Lokv;

    invoke-interface {p1, v2}, Lola;->get(Loky;)Lokx;

    move-result-object p1

    check-cast p1, Laqb;

    if-eqz p1, :cond_0

    iget-object v1, p1, Laqb;->a:Lokw;

    goto :goto_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1, v0, p2}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Laeo;->j(Lapt;Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Lapt;Lola;Lomo;Loku;)Ljava/lang/Object;
    .locals 8

    new-instance v6, Lopa;

    invoke-static {p3}, Lolp;->g(Loku;)Loku;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {v6, p3, v0}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v6}, Lopa;->x()V

    :try_start_0
    invoke-virtual {p0}, Lapt;->i()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v7, Lapv;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lapv;-><init>(Lola;Looz;Lapt;Lomo;I)V

    invoke-interface {p3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to acquire a thread to perform the database transaction."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v6, p1}, Looz;->k(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v6}, Lopa;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    return-object p0
.end method
