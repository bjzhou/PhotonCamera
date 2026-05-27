.class public final Lnwj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnwj;


# instance fields
.field public final b:Lnyw;

.field public c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnwj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnwj;-><init>([B)V

    sput-object v0, Lnwj;->a:Lnwj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    invoke-static {v0}, Lnyw;->b(I)Lnyw;

    move-result-object v0

    iput-object v0, p0, Lnwj;->b:Lnyw;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lnyw;->b(I)Lnyw;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnwj;->b:Lnyw;

    invoke-virtual {p0}, Lnwj;->e()V

    invoke-virtual {p0}, Lnwj;->e()V

    return-void
.end method

.method public static a(Lnzl;ILjava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lnwd;->e:Z

    invoke-static {p1}, Lnwd;->Z(I)I

    move-result p1

    sget-object v0, Lnzl;->j:Lnzl;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnxy;

    invoke-static {v0}, Lnxb;->f(Lnxy;)V

    add-int/2addr p1, p1

    :cond_0
    sget-object v0, Lnzm;->a:Lnzm;

    invoke-virtual {p0}, Lnzl;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnwd;->W(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnwd;->U(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    :pswitch_4
    instance-of p0, p2, Lnwv;

    if-eqz p0, :cond_1

    check-cast p2, Lnwv;

    invoke-interface {p2}, Lnwv;->a()I

    move-result p0

    invoke-static {p0}, Lnwd;->L(I)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnwd;->L(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnwd;->ab(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_6
    instance-of p0, p2, Lnvt;

    if-eqz p0, :cond_2

    check-cast p2, Lnvt;

    invoke-static {p2}, Lnwd;->H(Lnvt;)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    check-cast p2, [B

    array-length p0, p2

    invoke-static {p0}, Lnwd;->P(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_7
    instance-of p0, p2, Lnxi;

    if-eqz p0, :cond_3

    check-cast p2, Lnxi;

    invoke-static {p2}, Lnwd;->O(Lnxj;)I

    move-result v0

    goto :goto_0

    :cond_3
    check-cast p2, Lnxy;

    invoke-static {p2}, Lnwd;->Q(Lnxy;)I

    move-result v0

    goto :goto_0

    :pswitch_8
    check-cast p2, Lnxy;

    invoke-interface {p2}, Lnxy;->N()I

    move-result v0

    goto :goto_0

    :pswitch_9
    instance-of p0, p2, Lnvt;

    if-eqz p0, :cond_4

    check-cast p2, Lnvt;

    invoke-static {p2}, Lnwd;->H(Lnvt;)I

    move-result v0

    goto :goto_0

    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lnwd;->Y(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnwd;->L(I)I

    move-result v0

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnwd;->ad(J)I

    move-result v0

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnwd;->ad(J)I

    move-result v0

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    const/16 v0, 0x8

    :goto_0
    add-int/2addr p1, v0

    return p1

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lnwd;Lnzl;ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lnzl;->j:Lnzl;

    if-eq p1, v0, :cond_3

    iget v0, p1, Lnzl;->t:I

    invoke-virtual {p0, p2, v0}, Lnwd;->A(II)V

    sget-object p2, Lnzm;->a:Lnzm;

    invoke-virtual {p1}, Lnzl;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->as(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->aq(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->r(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->p(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lnwv;

    if-eqz p1, :cond_0

    check-cast p3, Lnwv;

    invoke-interface {p3}, Lnwv;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->t(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->t(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->C(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lnvt;

    if-eqz p1, :cond_1

    check-cast p3, Lnvt;

    invoke-virtual {p0, p3}, Lnwd;->n(Lnvt;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p3, p1}, Lnwd;->F([BI)V

    return-void

    :pswitch_7
    check-cast p3, Lnxy;

    invoke-virtual {p0, p3}, Lnwd;->v(Lnxy;)V

    return-void

    :pswitch_8
    check-cast p3, Lnxy;

    invoke-virtual {p0, p3}, Lnwd;->ao(Lnxy;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lnvt;

    if-eqz p1, :cond_2

    check-cast p3, Lnvt;

    invoke-virtual {p0, p3}, Lnwd;->n(Lnvt;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lnwd;->z(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->j(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->p(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->r(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->t(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->E(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->E(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lnwd;->an(F)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnwd;->al(D)V

    return-void

    :cond_3
    check-cast p3, Lnxy;

    invoke-static {p3}, Lnxb;->f(Lnxy;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lnwd;->A(II)V

    invoke-virtual {p0, p3}, Lnwd;->ao(Lnxy;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lnwd;->A(II)V

    return-void

    nop

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lnwr;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lnwr;->b:Lnzl;

    iget p0, p0, Lnwr;->a:I

    invoke-static {v0, p0, p1}, Lnwj;->a(Lnzl;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lnyd;

    if-eqz v0, :cond_0

    check-cast p0, Lnyd;

    invoke-interface {p0}, Lnyd;->c()Lnyd;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static n(Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwr;

    invoke-virtual {v0}, Lnwr;->a()Lnzm;

    move-result-object v0

    sget-object v1, Lnzm;->i:Lnzm;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lnxz;

    if-eqz v0, :cond_0

    check-cast p0, Lnxz;

    invoke-interface {p0}, Lnxz;->cH()Z

    move-result v2

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lnxi;

    if-eqz p0, :cond_1

    :goto_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v2
.end method


# virtual methods
.method public final b(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwr;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lnwr;->a()Lnzm;

    move-result-object v2

    sget-object v3, Lnzm;->i:Lnzm;

    if-ne v2, v3, :cond_1

    instance-of v0, v1, Lnxi;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnwr;

    iget p1, p1, Lnwr;->a:I

    check-cast v1, Lnxi;

    invoke-static {v4, p1}, Lnwd;->aa(II)I

    move-result p1

    invoke-static {v3, v1}, Lnwd;->N(ILnxj;)I

    move-result v0

    invoke-static {v2}, Lnwd;->Z(I)I

    move-result v1

    add-int/2addr v1, v1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnwr;

    iget p1, p1, Lnwr;->a:I

    check-cast v1, Lnxy;

    invoke-static {v4, p1}, Lnwd;->aa(II)I

    move-result p1

    invoke-static {v1}, Lnwd;->Q(Lnxy;)I

    move-result v0

    invoke-static {v3}, Lnwd;->Z(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v2}, Lnwd;->Z(I)I

    move-result v0

    add-int/2addr v0, v0

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-static {v0, v1}, Lnwj;->j(Lnwr;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final c()Lnwj;
    .locals 4

    new-instance v0, Lnwj;

    invoke-direct {v0}, Lnwj;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2}, Lnyw;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2, v1}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwr;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v1}, Lnyw;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwr;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnwj;->d:Z

    iput-boolean v1, v0, Lnwj;->d:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnwj;->c()Lnwj;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Lnwj;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnxh;

    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v1}, Lnyw;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lnxh;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v0}, Lnyw;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 4

    iget-boolean v0, p0, Lnwj;->c:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2}, Lnyw;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2, v1}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnws;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnws;

    invoke-virtual {v2}, Lnws;->Y()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnwj;->b:Lnyw;

    iget-boolean v2, v1, Lnyw;->c:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1}, Lnyw;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwr;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lnyw;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwr;

    goto :goto_2

    :cond_3
    iget-boolean v0, v1, Lnyw;->c:Z

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-object v0, v1, Lnyw;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lnyw;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lnyw;->b:Ljava/util/Map;

    iget-object v0, v1, Lnyw;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lnyw;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_4
    iput-object v0, v1, Lnyw;->d:Ljava/util/Map;

    iput-boolean v2, v1, Lnyw;->c:Z

    :cond_6
    iput-boolean v2, p0, Lnwj;->c:Z

    return-void

    :cond_7
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lnwj;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lnwj;

    iget-object v0, p0, Lnwj;->b:Lnyw;

    iget-object p1, p1, Lnwj;->b:Lnyw;

    invoke-virtual {v0, p1}, Lnyw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwr;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lnxi;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwr;->a()Lnzm;

    move-result-object v1

    sget-object v2, Lnzm;->i:Lnzm;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-static {p1}, Lnwj;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lnyw;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v2, v1, Lnyd;

    if-nez v2, :cond_1

    check-cast v1, Lnxy;

    invoke-interface {v1}, Lnxy;->ct()Lnxx;

    move-result-object v1

    check-cast p1, Lnxy;

    check-cast p1, Lnws;

    move-object v2, v1

    check-cast v2, Lnwn;

    invoke-virtual {v2, p1}, Lnwn;->s(Lnws;)V

    invoke-interface {v1}, Lnxx;->l()Lnxy;

    move-result-object p1

    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v1, v0, p1}, Lnyw;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    check-cast v1, Lnyd;

    check-cast p1, Lnyd;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_2
    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-static {p1}, Lnwj;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lnyw;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    check-cast p1, Lnxi;

    const/4 p1, 0x0

    throw p1
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v0}, Lnyw;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v0}, Lnyw;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2}, Lnyw;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v2, v1}, Lnyw;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lnwj;->n(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v1}, Lnyw;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lnwj;->n(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lnwr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v0, p1}, Lnyw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lnxi;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lnxi;

    const/4 p1, 0x0

    throw p1
.end method

.method public final l(Lnwr;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p1, Lnwr;->b:Lnzl;

    invoke-static {p2}, Lnxb;->e(Ljava/lang/Object;)V

    sget-object v1, Lnzl;->a:Lnzl;

    sget-object v1, Lnzm;->a:Lnzm;

    iget-object v0, v0, Lnzl;->s:Lnzm;

    invoke-virtual {v0}, Lnzm;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p2, Lnxy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lnxi;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lnwv;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_2
    instance-of v0, p2, Lnvt;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    instance-of v0, p2, Lnxi;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lnwj;->d:Z

    :cond_1
    iget-object v0, p0, Lnwj;->b:Lnyw;

    invoke-virtual {v0, p1, p2}, Lnyw;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lnwr;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p1, p1, Lnwr;->b:Lnzl;

    iget-object p1, p1, Lnzl;->s:Lnzm;

    aput-object p1, v2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
