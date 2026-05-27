.class public final Lnvz;
.super Ljava/lang/Object;

# interfaces
.implements Lnyk;


# instance fields
.field public final a:Lnvy;

.field public b:I

.field public c:I

.field private d:I


# direct methods
.method private constructor <init>(Lnvy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnvz;->c:I

    sget-object v0, Lnxb;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lnvz;->a:Lnvy;

    iput-object p0, p1, Lnvy;->c:Lnvz;

    return-void
.end method

.method private final Q(Ljava/lang/Object;Lnyo;Lnwh;)V
    .locals 3

    iget v0, p0, Lnvz;->d:I

    iget v1, p0, Lnvz;->b:I

    invoke-static {v1}, Lnzn;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lnzn;->c(II)I

    move-result v1

    iput v1, p0, Lnvz;->d:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    iget p1, p0, Lnvz;->b:I

    iget p2, p0, Lnvz;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lnvz;->d:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lnvz;->d:I

    throw p1
.end method

.method private final R(Ljava/lang/Object;Lnyo;Lnwh;)V
    .locals 4

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    iget v2, v1, Lnvy;->a:I

    iget v3, v1, Lnvy;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lnvy;->e(I)I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    iget v2, v1, Lnvy;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lnvy;->a:I

    invoke-interface {p2, p1, p0, p3}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    iget-object p1, p0, Lnvz;->a:Lnvy;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnvy;->z(I)V

    iget-object p1, p0, Lnvz;->a:Lnvy;

    iget p2, p1, Lnvy;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lnvy;->a:I

    invoke-virtual {p1, v0}, Lnvy;->A(I)V

    return-void

    :cond_0
    new-instance p1, Lnxd;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final S(I)V
    .locals 1

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    throw p1
.end method

.method private static final T(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p0

    throw p0
.end method

.method private static final U(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static p(Lnvy;)Lnvz;
    .locals 1

    iget-object v0, p0, Lnvy;->c:Lnvz;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnvz;

    invoke-direct {v0, p0}, Lnvz;-><init>(Lnvy;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final B(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_0
    :sswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_4
    :sswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_6

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final C(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnxp;

    if-eqz v0, :cond_3

    check-cast p1, Lnxp;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->o()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->o()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final D(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwl;

    if-eqz v0, :cond_3

    check-cast p1, Lnwl;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_0
    :sswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lnwl;->g(F)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lnwl;->g(F)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_4
    :sswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_6

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final E(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final F(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnxp;

    if-eqz v0, :cond_3

    check-cast p1, Lnxp;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->p()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->p()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final G(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_0
    :sswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :cond_4
    :sswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lnvz;->c:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->T(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_6

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final H(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnxp;

    if-eqz v0, :cond_3

    check-cast p1, Lnxp;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->t()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final I(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final J(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnxp;

    if-eqz v0, :cond_3

    check-cast p1, Lnxp;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->u()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->u()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final K(Ljava/util/List;Z)V
    .locals 2

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lnxl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lnxl;

    :cond_1
    invoke-virtual {p0}, Lnvz;->o()Lnvt;

    move-result-object p1

    invoke-interface {v0, p1}, Lnxl;->i(Lnvt;)V

    iget-object p1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {p1}, Lnvy;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {p1}, Lnvy;->m()I

    move-result p1

    iget p2, p0, Lnvz;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lnvz;->c:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lnvz;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnvz;->u()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_6
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final L(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnwt;

    if-eqz v0, :cond_3

    check-cast p1, Lnwt;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Lnwt;->g(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final M(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnxp;

    if-eqz v0, :cond_3

    check-cast p1, Lnxp;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->v()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnxp;->f(J)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final N(I)V
    .locals 1

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1
.end method

.method public final O()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->D()Z

    move-result v0

    return v0
.end method

.method public final P()Z
    .locals 2

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lnvz;->b:I

    iget v1, p0, Lnvz;->d:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1, v0}, Lnvy;->E(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->c()F

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lnvz;->c:I

    if-eqz v0, :cond_0

    iput v0, p0, Lnvz;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lnvz;->c:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iput v0, p0, Lnvz;->b:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lnvz;->d:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lnzn;->a(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->f()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->g()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->h()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->k()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->l()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    return v0
.end method

.method public final j()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()Lnvt;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->w()Lnvt;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lnzl;Ljava/lang/Class;Lnwh;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnzl;->a:Lnzl;

    invoke-virtual {p1}, Lnzl;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0}, Lnvz;->m()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lnvz;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lnvz;->l()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lnvz;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lnvz;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lnvz;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lnvz;->o()Lnvt;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lnvz;->t(Ljava/lang/Class;Lnwh;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lnvz;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lnvz;->O()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lnvz;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lnvz;->j()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lnvz;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lnvz;->n()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lnvz;->k()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lnvz;->b()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-virtual {p0}, Lnvz;->a()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r(Lnyo;Lnwh;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lnvz;->Q(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-interface {p1, v0}, Lnyo;->f(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final s(Lnyo;Lnwh;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lnvz;->R(Ljava/lang/Object;Lnyo;Lnwh;)V

    invoke-interface {p1, v0}, Lnyo;->f(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final t(Ljava/lang/Class;Lnwh;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    sget-object v0, Lnyh;->a:Lnyh;

    invoke-virtual {v0, p1}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnvz;->s(Lnyo;Lnwh;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Ljava/lang/Object;Lnyo;Lnwh;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    invoke-direct {p0, p1, p2, p3}, Lnvz;->Q(Ljava/lang/Object;Lnyo;Lnwh;)V

    return-void
.end method

.method public final x(Ljava/lang/Object;Lnyo;Lnwh;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnvz;->N(I)V

    invoke-direct {p0, p1, p2, p3}, Lnvz;->R(Ljava/lang/Object;Lnyo;Lnwh;)V

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Lnvl;

    if-eqz v0, :cond_3

    check-cast p1, Lnvl;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnvl;->f(Z)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_1
    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnvl;->f(Z)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-direct {p0, v1}, Lnvz;->S(I)V

    return-void

    :cond_5
    :pswitch_5
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final z(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lnwe;

    if-eqz v0, :cond_3

    check-cast p1, Lnwe;

    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->b()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnwe;->d(D)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->b()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnwe;->d(D)V

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lnvz;->c:I

    return-void

    :cond_3
    iget v0, p0, Lnvz;->b:I

    invoke-static {v0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->n()I

    move-result v0

    invoke-static {v0}, Lnvz;->U(I)V

    iget-object v1, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v1}, Lnvy;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->d()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lnvz;->a:Lnvy;

    invoke-virtual {v0}, Lnvy;->m()I

    move-result v0

    iget v1, p0, Lnvz;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lnvz;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
