.class final Lnyc;
.super Ljava/lang/Object;

# interfaces
.implements Lnyo;


# instance fields
.field private final a:Lnxy;

.field private final b:Z

.field private final c:Lkwp;


# direct methods
.method private constructor <init>(Lkwp;Lnxy;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnyc;->c:Lkwp;

    instance-of p1, p2, Lnwq;

    iput-boolean p1, p0, Lnyc;->b:Z

    iput-object p2, p0, Lnyc;->a:Lnxy;

    return-void
.end method

.method static c(Lkwp;Lkwp;Lnxy;)Lnyc;
    .locals 6

    new-instance p1, Lnyc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnyc;-><init>(Lkwp;Lnxy;[B[B[B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8

    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    iget v1, v0, Lnza;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v4, v0, Lnza;->b:I

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lnza;->c:[I

    aget v4, v4, v2

    invoke-static {v4}, Lnzn;->a(I)I

    move-result v4

    iget-object v5, v0, Lnza;->d:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Lnvt;

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lnwd;->G(ILnvt;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6}, Lnwd;->Z(I)I

    move-result v6

    add-int/2addr v6, v6

    const/4 v7, 0x2

    invoke-static {v7, v4}, Lnwd;->aa(II)I

    move-result v4

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lnza;->e:I

    :cond_1
    iget-boolean v0, p0, Lnyc;->b:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v2}, Lnyw;->a()I

    move-result v2

    if-ge v3, v2, :cond_2

    iget-object v2, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v2, v3}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnwj;->b(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v2}, Lnyw;->c()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {p1, v3}, Lnwj;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lnyc;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lnwj;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnyc;->a:Lnxy;

    instance-of v1, v0, Lnws;

    if-eqz v1, :cond_0

    check-cast v0, Lnws;

    invoke-virtual {v0}, Lnws;->P()Lnws;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lnxy;->bo()Lnxx;

    move-result-object v0

    invoke-interface {v0}, Lnxx;->m()Lnxy;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lkwp;->Q(Ljava/lang/Object;)V

    invoke-static {p1}, Lkwp;->ab(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2}, Lnyp;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lnyc;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lnyp;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;Lnyk;Lnwh;)V
    .locals 10

    iget-object v0, p0, Lnyc;->c:Lkwp;

    invoke-static {p1}, Lkwp;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lkwp;->Z(Ljava/lang/Object;)Lnwj;

    move-result-object v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lnyk;->c()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    :goto_1
    check-cast v1, Lnza;

    invoke-static {p1, v1}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    return-void

    :cond_1
    :try_start_1
    move-object v3, p2

    check-cast v3, Lnvz;

    iget v3, v3, Lnvz;->b:I

    sget v5, Lnzn;->a:I

    if-eq v3, v5, :cond_4

    invoke-static {v3}, Lnzn;->b(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lnyc;->a:Lnxy;

    invoke-static {v3}, Lnzn;->a(I)I

    move-result v3

    invoke-virtual {p3, v4, v3}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p2, v3, p3, v2}, Lkwp;->aa(Lnyk;Ljava/lang/Object;Lnwh;Lnwj;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, p2}, Lkwp;->K(Ljava/lang/Object;Lnyk;)Z

    move-result v3

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lnyk;->P()Z

    move-result v3

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :cond_5
    :goto_3
    invoke-interface {p2}, Lnyk;->c()I

    move-result v8

    if-ne v8, v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, p2

    check-cast v8, Lnvz;

    iget v8, v8, Lnvz;->b:I

    sget v9, Lnzn;->c:I

    if-ne v8, v9, :cond_7

    invoke-interface {p2}, Lnyk;->i()I

    move-result v7

    iget-object v5, p0, Lnyc;->a:Lnxy;

    invoke-virtual {p3, v5, v7}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v5

    goto :goto_3

    :cond_7
    sget v9, Lnzn;->d:I

    if-ne v8, v9, :cond_9

    if-eqz v5, :cond_8

    invoke-static {p2, v5, p3, v2}, Lkwp;->aa(Lnyk;Ljava/lang/Object;Lnwh;Lnwj;)V

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Lnyk;->o()Lnvt;

    move-result-object v6

    goto :goto_3

    :cond_9
    invoke-interface {p2}, Lnyk;->P()Z

    move-result v8

    if-nez v8, :cond_5

    :goto_4
    move-object v4, p2

    check-cast v4, Lnvz;

    iget v4, v4, Lnvz;->b:I

    sget v8, Lnzn;->b:I

    if-ne v4, v8, :cond_b

    if-eqz v6, :cond_0

    if-eqz v5, :cond_a

    iget-object v4, v5, Llhj;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lnxy;->bo()Lnxx;

    move-result-object v4

    invoke-virtual {v6}, Lnvt;->l()Lnvy;

    move-result-object v6

    invoke-interface {v4, v6, p3}, Lnxx;->f(Lnvy;Lnwh;)V

    iget-object v5, v5, Llhj;->b:Ljava/lang/Object;

    invoke-interface {v4}, Lnxx;->m()Lnxy;

    move-result-object v4

    check-cast v5, Lnwr;

    invoke-virtual {v2, v5, v4}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    invoke-virtual {v6, v3}, Lnvy;->z(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v1, v7, v6}, Lkwp;->L(Ljava/lang/Object;ILnvt;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lnxd;->b()Lnxd;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    check-cast v1, Lnza;

    invoke-static {p1, v1}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public final i(Ljava/lang/Object;[BIILnvj;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Lnws;

    iget-object v1, v0, Lnws;->aJ:Lnza;

    sget-object v2, Lnza;->a:Lnza;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lnza;->b()Lnza;

    move-result-object v1

    iput-object v1, v0, Lnws;->aJ:Lnza;

    goto :goto_0

    :cond_0
    :goto_0
    check-cast p1, Lnwq;

    invoke-virtual {p1}, Lnwq;->c()Lnwj;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    if-ge p3, p4, :cond_8

    invoke-static {p2, p3, p5}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget p3, p5, Lnvj;->a:I

    sget v3, Lnzn;->a:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    invoke-static {p3}, Lnzn;->b(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p5, Lnvj;->d:Lnwh;

    iget-object v3, p0, Lnyc;->a:Lnxy;

    invoke-static {p3}, Lnzn;->a(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v8

    if-eqz v8, :cond_1

    sget-object p3, Lnyh;->a:Lnyh;

    iget-object v2, v8, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lkwp;->ai(Lnyo;[BIILnvj;)I

    move-result p3

    iget-object v2, v8, Llhj;->b:Ljava/lang/Object;

    iget-object v3, p5, Lnvj;->c:Ljava/lang/Object;

    check-cast v2, Lnwr;

    invoke-virtual {p1, v2, v3}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    move-object v2, v8

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lkwp;->an(I[BIILnza;Lnvj;)I

    move-result p3

    move-object v2, v8

    goto :goto_1

    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lkwp;->au(I[BIILnvj;)I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_6

    invoke-static {p2, v4, p5}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget v6, p5, Lnvj;->a:I

    invoke-static {v6}, Lnzn;->a(I)I

    move-result v7

    invoke-static {v6}, Lnzn;->b(I)I

    move-result v8

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz v2, :cond_4

    sget-object v6, Lnyh;->a:Lnyh;

    iget-object v7, v2, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lkwp;->ai(Lnyo;[BIILnvj;)I

    move-result v4

    iget-object v6, v2, Llhj;->b:Ljava/lang/Object;

    iget-object v7, p5, Lnvj;->c:Ljava/lang/Object;

    check-cast v6, Lnwr;

    invoke-virtual {p1, v6, v7}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ne v8, v5, :cond_5

    invoke-static {p2, v4, p5}, Lkwp;->af([BILnvj;)I

    move-result v4

    iget-object v3, p5, Lnvj;->c:Ljava/lang/Object;

    check-cast v3, Lnvt;

    goto :goto_2

    :pswitch_1
    if-nez v8, :cond_5

    invoke-static {p2, v4, p5}, Lkwp;->ao([BILnvj;)I

    move-result v4

    iget p3, p5, Lnvj;->a:I

    iget-object v2, p5, Lnvj;->d:Lnwh;

    iget-object v6, p0, Lnyc;->a:Lnxy;

    invoke-virtual {v2, v6, p3}, Lnwh;->c(Lnxy;I)Llhj;

    move-result-object v2

    goto :goto_2

    :cond_5
    :goto_3
    sget v7, Lnzn;->b:I

    if-eq v6, v7, :cond_6

    invoke-static {v6, p2, v4, p4, p5}, Lkwp;->au(I[BIILnvj;)I

    move-result v4

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p3, v5}, Lnzn;->c(II)I

    move-result p3

    invoke-virtual {v1, p3, v3}, Lnza;->f(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    :goto_4
    move p3, v4

    goto/16 :goto_1

    :cond_8
    if-ne p3, p4, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    invoke-static {p2}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lnyc;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    invoke-static {p2}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnwj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p1

    invoke-virtual {p1}, Lnwj;->i()Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/Object;Llzz;)V
    .locals 5

    invoke-static {p1}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object v0

    invoke-virtual {v0}, Lnwj;->d()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwr;

    invoke-virtual {v2}, Lnwr;->a()Lnzm;

    move-result-object v3

    sget-object v4, Lnzm;->i:Lnzm;

    if-ne v3, v4, :cond_1

    instance-of v3, v1, Lnxg;

    if-eqz v3, :cond_0

    iget v2, v2, Lnwr;->a:I

    check-cast v1, Lnxg;

    iget-object v1, v1, Lnxg;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnxi;

    invoke-virtual {v1}, Lnxj;->a()Lnvt;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Llzz;->r(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v2, v2, Lnwr;->a:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Llzz;->r(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lnza;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lnza;->c:[I

    aget v1, v1, v0

    invoke-static {v1}, Lnzn;->a(I)I

    move-result v1

    iget-object v2, p1, Lnza;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p2, v1, v2}, Llzz;->r(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
