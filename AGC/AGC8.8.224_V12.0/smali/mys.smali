.class final Lmys;
.super Lmtx;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final d:Lmym;


# direct methods
.method public constructor <init>(Lmym;Lmuh;)V
    .locals 0

    invoke-direct {p0, p2}, Lmtx;-><init>(Lmuh;)V

    iput-object p1, p0, Lmys;->d:Lmym;

    return-void
.end method

.method public static T(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1}, Lmym;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final U(Lmym;)Lmtx;
    .locals 1

    iget-object v0, p0, Lmys;->d:Lmym;

    invoke-virtual {v0, p1}, Lmym;->n(Lmym;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmys;->d:Lmym;

    invoke-virtual {v0, p1}, Lmym;->h(Lmym;)Lmym;

    move-result-object p1

    iget-object v0, p0, Lmys;->a:Lmuh;

    invoke-static {p1, v0}, Lmtx;->a(Lmym;Lmuh;)Lmtx;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lmuj;

    iget-object v0, p0, Lmys;->a:Lmuh;

    invoke-direct {p1, v0}, Lmuj;-><init>(Lmuh;)V

    :goto_0
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final C()Lmvv;
    .locals 1

    iget-object v0, p0, Lmys;->a:Lmuh;

    iget-boolean v0, v0, Lmuh;->b:Z

    new-instance v0, Lmvh;

    invoke-direct {v0, p0}, Lmvh;-><init>(Lmys;)V

    return-object v0
.end method

.method public final R()Ljava/lang/Comparable;
    .locals 2

    iget-object v0, p0, Lmys;->d:Lmym;

    iget-object v0, v0, Lmym;->b:Lmuc;

    iget-object v1, p0, Lmys;->a:Lmuh;

    invoke-virtual {v0, v1}, Lmuc;->d(Lmuh;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final S()Ljava/lang/Comparable;
    .locals 2

    iget-object v0, p0, Lmys;->d:Lmym;

    iget-object v0, v0, Lmym;->c:Lmuc;

    iget-object v1, p0, Lmys;->a:Lmuh;

    invoke-virtual {v0, v1}, Lmuc;->c(Lmuh;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final cA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lmys;->d:Lmym;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Llkj;->r(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final cy()Lnac;
    .locals 2

    new-instance v0, Lmyq;

    invoke-virtual {p0}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmyq;-><init>(Lmys;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public final cz()Lnac;
    .locals 2

    new-instance v0, Lmyp;

    invoke-virtual {p0}, Lmys;->R()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmyp;-><init>(Lmys;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Comparable;Z)Lmtx;
    .locals 0

    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    invoke-static {p1}, Lmym;->d(Ljava/lang/Comparable;)Lmym;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    sget-object p2, Lmua;->a:Lmua;

    invoke-static {p1}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    invoke-static {p2, p1}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lmys;->U(Lmym;)Lmtx;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmys;->cy()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmys;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lmys;

    iget-object v2, p0, Lmys;->a:Lmuh;

    iget-object v3, v1, Lmys;->a:Lmuh;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lmys;->R()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lmys;->R()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1}, Lmtx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmys;->R()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;
    .locals 1

    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmuj;

    iget-object p2, p0, Lmys;->a:Lmuh;

    invoke-direct {p1, p2}, Lmuj;-><init>(Lmuh;)V

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lmuc;->j(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    :goto_1
    invoke-static {p4}, Llkj;->w(Z)I

    move-result p2

    if-ne p2, v0, :cond_3

    invoke-static {p3}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lmuc;->j(Ljava/lang/Comparable;)Lmuc;

    move-result-object p2

    :goto_2
    invoke-static {p1, p2}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p1

    invoke-direct {p0, p1}, Lmys;->U(Lmym;)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lmjy;->y(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmys;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/Comparable;Z)Lmtx;
    .locals 0

    invoke-static {p2}, Llkj;->w(Z)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    invoke-static {p1}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lmuc;->j(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    sget-object p2, Lmty;->a:Lmty;

    invoke-static {p1, p2}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lmys;->U(Lmym;)Lmtx;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n(Ljava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmys;->d(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmys;->g(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 5

    iget-object v0, p0, Lmys;->a:Lmuh;

    invoke-virtual {p0}, Lmys;->R()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmuh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final bridge synthetic t(Ljava/lang/Object;Z)Lmww;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lmys;->j(Ljava/lang/Comparable;Z)Lmtx;

    move-result-object p1

    return-object p1
.end method

.method public final u()Lmym;
    .locals 3

    iget-object v0, p0, Lmys;->d:Lmym;

    iget-object v0, v0, Lmym;->b:Lmuc;

    iget-object v1, p0, Lmys;->a:Lmuh;

    invoke-virtual {v0, v1}, Lmuc;->h(Lmuh;)Lmuc;

    move-result-object v0

    iget-object v1, p0, Lmys;->d:Lmym;

    iget-object v1, v1, Lmym;->c:Lmuc;

    iget-object v2, p0, Lmys;->a:Lmuh;

    invoke-virtual {v1, v2}, Lmuc;->i(Lmuh;)Lmuc;

    move-result-object v1

    invoke-static {v0, v1}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lmyr;

    iget-object v1, p0, Lmys;->d:Lmym;

    iget-object v2, p0, Lmys;->a:Lmuh;

    invoke-direct {v0, v1, v2}, Lmyr;-><init>(Lmym;Lmuh;)V

    return-object v0
.end method
