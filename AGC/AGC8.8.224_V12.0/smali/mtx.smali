.class public abstract Lmtx;
.super Lmww;


# instance fields
.field final a:Lmuh;


# direct methods
.method public constructor <init>(Lmuh;)V
    .locals 1

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-direct {p0, v0}, Lmww;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lmtx;->a:Lmuh;

    return-void
.end method

.method public static a(Lmym;Lmuh;)Lmtx;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lmym;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmuh;->c()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmym;->h(Lmym;)Lmym;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Lmym;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lmuh;->b()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Lmym;->d(Ljava/lang/Comparable;)Lmym;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmym;->h(Lmym;)Lmym;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v0}, Lmym;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmym;->b:Lmuc;

    invoke-virtual {v1, p1}, Lmuc;->d(Lmuh;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lmym;->c:Lmuc;

    invoke-virtual {p0, p1}, Lmuc;->c(Lmuh;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lmym;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-gtz p0, :cond_3

    new-instance p0, Lmys;

    invoke-direct {p0, v0, p1}, Lmys;-><init>(Lmym;Lmuh;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p0, Lmuj;

    invoke-direct {p0, p1}, Lmuj;-><init>(Lmuh;)V

    :goto_2
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final b(Ljava/lang/Comparable;)Lmtx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmtx;->d(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Comparable;Z)Lmtx;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lmtx;->d(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Ljava/lang/Comparable;Z)Lmtx;
.end method

.method public final e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtx;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmww;->b:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-virtual {p0, p1, v1, p2, v2}, Lmtx;->g(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmww;->b:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lmtx;->g(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;
.end method

.method public final h(Ljava/lang/Comparable;)Lmtx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmtx;->j(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->c(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lmtx;->b(Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/Comparable;Z)Lmtx;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lmtx;->j(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public abstract j(Ljava/lang/Comparable;Z)Lmtx;
.end method

.method public k()Lmww;
    .locals 1

    new-instance v0, Lmud;

    invoke-direct {v0, p0}, Lmud;-><init>(Lmww;)V

    return-object v0
.end method

.method public final bridge synthetic l(Ljava/lang/Object;)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lmtx;->b(Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic m(Ljava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->c(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Z)Lmww;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic p(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmtx;->f(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic r(Ljava/lang/Object;)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lmtx;->h(Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic s(Ljava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->i(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmtx;->f(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t(Ljava/lang/Object;Z)Lmww;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmtx;->i(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lmtx;->h(Ljava/lang/Comparable;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmtx;->u()Lmym;

    move-result-object v0

    invoke-virtual {v0}, Lmym;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u()Lmym;
.end method
