.class final Lnvv;
.super Lnvy;


# instance fields
.field private final e:Ljava/lang/Iterable;

.field private final f:Ljava/util/Iterator;

.field private g:Ljava/nio/ByteBuffer;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;I)V
    .locals 1

    invoke-direct {p0}, Lnvy;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lnvv;->j:I

    iput p2, p0, Lnvv;->h:I

    iput-object p1, p0, Lnvv;->e:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnvv;->f:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput p1, p0, Lnvv;->l:I

    if-nez p2, :cond_0

    sget-object p1, Lnxb;->c:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lnvv;->g:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnvv;->m:J

    iput-wide p1, p0, Lnvv;->n:J

    iput-wide p1, p0, Lnvv;->o:J

    return-void

    :cond_0
    invoke-direct {p0}, Lnvv;->Q()V

    return-void
.end method

.method private final M()I
    .locals 4

    iget v0, p0, Lnvv;->h:I

    iget v1, p0, Lnvv;->l:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lnvv;->m:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnvv;->n:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final N()J
    .locals 4

    iget-wide v0, p0, Lnvv;->o:J

    iget-wide v2, p0, Lnvv;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final O()V
    .locals 1

    iget-object v0, p0, Lnvv;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnvv;->Q()V

    return-void

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method private final P()V
    .locals 2

    iget v0, p0, Lnvv;->h:I

    iget v1, p0, Lnvv;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lnvv;->h:I

    iget v1, p0, Lnvv;->j:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lnvv;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnvv;->h:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnvv;->i:I

    return-void
.end method

.method private final Q()V
    .locals 6

    iget-object v0, p0, Lnvv;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lnvv;->g:Ljava/nio/ByteBuffer;

    iget v1, p0, Lnvv;->l:I

    iget-wide v2, p0, Lnvv;->m:J

    iget-wide v4, p0, Lnvv;->n:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lnvv;->l:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnvv;->m:J

    iput-wide v0, p0, Lnvv;->n:J

    iget-object v0, p0, Lnvv;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnvv;->o:J

    iget-object v0, p0, Lnvv;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lnzi;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lnvv;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvv;->m:J

    iget-wide v2, p0, Lnvv;->n:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvv;->n:J

    iget-wide v2, p0, Lnvv;->o:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvv;->o:J

    return-void
.end method

.method private final R([BI)V
    .locals 11

    invoke-direct {p0}, Lnvv;->M()I

    move-result v0

    if-gt p2, v0, :cond_2

    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-direct {p0}, Lnvv;->O()V

    :cond_0
    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-wide v2, p0, Lnvv;->m:J

    sub-int v4, p2, v0

    int-to-long v9, v1

    int-to-long v5, v4

    move-object v4, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lnzi;->k(J[BJJ)V

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lnvv;->m:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lnvv;->m:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lnvv;->j:I

    invoke-direct {p0}, Lnvv;->P()V

    return-void
.end method

.method public final B(I)V
    .locals 5

    if-ltz p1, :cond_2

    iget v0, p0, Lnvv;->h:I

    iget v1, p0, Lnvv;->l:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lnvv;->m:J

    int-to-long v3, v0

    sub-long/2addr v3, v1

    iget-wide v0, p0, Lnvv;->n:J

    add-long/2addr v3, v0

    int-to-long v0, p1

    cmp-long v2, v0, v3

    if-gtz v2, :cond_2

    :goto_0
    if-lez p1, :cond_1

    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lnvv;->O()V

    :cond_0
    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lnvv;->m:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lnvv;->m:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gez p1, :cond_3

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final C()Z
    .locals 5

    iget v0, p0, Lnvv;->l:I

    int-to-long v0, v0

    iget-wide v2, p0, Lnvv;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnvv;->n:J

    sub-long/2addr v0, v2

    iget v2, p0, Lnvv;->h:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 5

    invoke-virtual {p0}, Lnvv;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E(I)Z
    .locals 4

    invoke-static {p1}, Lnzn;->b(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-virtual {p0, v1}, Lnvv;->B(I)V

    return v3

    :pswitch_1
    return v2

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lnvv;->m()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnvv;->E(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1}, Lnzn;->a(I)I

    move-result p1

    invoke-static {p1, v1}, Lnzn;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lnvv;->z(I)V

    return v3

    :pswitch_3
    invoke-virtual {p0}, Lnvv;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lnvv;->B(I)V

    return v3

    :pswitch_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lnvv;->B(I)V

    return v3

    :goto_0
    :pswitch_5
    const/16 p1, 0xa

    if-ge v2, p1, :cond_3

    invoke-virtual {p0}, Lnvv;->a()B

    move-result p1

    if-ltz p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lnxd;->e()Lnxd;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1

    nop

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

.method public final a()B
    .locals 5

    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lnvv;->O()V

    :cond_0
    iget-wide v0, p0, Lnvv;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvv;->m:J

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    return v0
.end method

.method public final b()D
    .locals 2

    invoke-virtual {p0}, Lnvv;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()F
    .locals 1

    invoke-virtual {p0}, Lnvv;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    iget v0, p0, Lnvv;->l:I

    int-to-long v0, v0

    iget-wide v2, p0, Lnvv;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnvv;->n:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final e(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnvv;->d()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lnvv;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lnvv;->j:I

    invoke-direct {p0}, Lnvv;->P()V

    return v0

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p1

    throw p1
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->i()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 7

    invoke-direct {p0}, Lnvv;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lnvv;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvv;->m:J

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lnzi;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    const-wide/16 v5, 0x3

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int v1, v2, v3

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lnvv;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lnvv;->a()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lnvv;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p0}, Lnvv;->a()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    return v0
.end method

.method public final j()I
    .locals 10

    iget-wide v0, p0, Lnvv;->m:J

    iget-wide v2, p0, Lnvv;->o:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    if-ltz v0, :cond_1

    iget-wide v4, p0, Lnvv;->m:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lnvv;->m:J

    return v0

    :cond_1
    iget-wide v6, p0, Lnvv;->o:J

    iget-wide v8, p0, Lnvv;->m:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_7

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    move-wide v6, v4

    goto :goto_0

    :cond_3
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    if-gez v1, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    if-gez v1, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    if-ltz v1, :cond_7

    :cond_5
    goto :goto_0

    :cond_6
    move-wide v6, v4

    :goto_0
    iput-wide v6, p0, Lnvv;->m:J

    return v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lnvv;->s()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->i()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    invoke-static {v0}, Lnvv;->F(I)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lnvv;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnvv;->k:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    iput v0, p0, Lnvv;->k:I

    invoke-static {v0}, Lnzn;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lnxd;->c()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    return v0
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, Lnvv;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lnvv;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()J
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lnvv;->N()J

    move-result-wide v1

    const/16 v5, 0x28

    const/16 v6, 0x20

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x8

    const-wide/16 v10, 0xff

    const-wide/16 v12, 0x8

    cmp-long v14, v1, v12

    if-ltz v14, :cond_0

    iget-wide v1, v0, Lnvv;->m:J

    add-long/2addr v12, v1

    iput-wide v12, v0, Lnvv;->m:J

    invoke-static {v1, v2}, Lnzi;->a(J)B

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v10

    const-wide/16 v14, 0x1

    add-long/2addr v14, v1

    invoke-static {v14, v15}, Lnzi;->a(J)B

    move-result v14

    int-to-long v14, v14

    and-long/2addr v14, v10

    shl-long/2addr v14, v9

    const-wide/16 v16, 0x2

    add-long v16, v1, v16

    invoke-static/range {v16 .. v17}, Lnzi;->a(J)B

    move-result v9

    int-to-long v3, v9

    and-long/2addr v3, v10

    shl-long/2addr v3, v8

    const-wide/16 v8, 0x3

    add-long/2addr v8, v1

    invoke-static {v8, v9}, Lnzi;->a(J)B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long v7, v8, v7

    const-wide/16 v18, 0x4

    add-long v18, v1, v18

    invoke-static/range {v18 .. v19}, Lnzi;->a(J)B

    move-result v9

    move-wide/from16 v18, v7

    int-to-long v7, v9

    and-long/2addr v7, v10

    shl-long v6, v7, v6

    const-wide/16 v8, 0x5

    add-long/2addr v8, v1

    invoke-static {v8, v9}, Lnzi;->a(J)B

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long/2addr v8, v5

    const-wide/16 v20, 0x6

    add-long v20, v1, v20

    invoke-static/range {v20 .. v21}, Lnzi;->a(J)B

    move-result v5

    move-wide/from16 v20, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    const/16 v5, 0x30

    shl-long/2addr v8, v5

    const-wide/16 v22, 0x7

    add-long v1, v1, v22

    invoke-static {v1, v2}, Lnzi;->a(J)B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v10

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    or-long v10, v12, v14

    or-long/2addr v3, v10

    or-long v3, v3, v18

    or-long/2addr v3, v6

    or-long v3, v3, v20

    or-long/2addr v3, v8

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v10

    shl-long/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v9

    int-to-long v12, v9

    and-long/2addr v12, v10

    shl-long v8, v12, v8

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v10

    shl-long/2addr v12, v7

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v7

    int-to-long v14, v7

    and-long/2addr v14, v10

    shl-long v6, v14, v6

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v14

    int-to-long v14, v14

    and-long/2addr v14, v10

    shl-long/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v5

    move-wide/from16 v18, v14

    int-to-long v14, v5

    and-long/2addr v14, v10

    const/16 v5, 0x30

    shl-long/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lnvv;->a()B

    move-result v5

    move-wide/from16 v20, v14

    int-to-long v14, v5

    and-long/2addr v10, v14

    const/16 v5, 0x38

    shl-long/2addr v10, v5

    or-long/2addr v1, v3

    or-long/2addr v1, v8

    or-long/2addr v1, v12

    or-long/2addr v1, v6

    or-long v1, v1, v18

    or-long v1, v1, v20

    or-long/2addr v1, v10

    return-wide v1
.end method

.method public final r()J
    .locals 11

    iget-wide v0, p0, Lnvv;->m:J

    iget-wide v2, p0, Lnvv;->o:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    if-ltz v0, :cond_1

    iget-wide v4, p0, Lnvv;->m:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lnvv;->m:J

    int-to-long v0, v0

    return-wide v0

    :cond_1
    iget-wide v6, p0, Lnvv;->o:J

    iget-wide v8, p0, Lnvv;->m:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_a

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_0

    :cond_2
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v6, v4

    goto/16 :goto_0

    :cond_3
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_0

    :cond_4
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lnzi;->a(J)B

    move-result v1

    int-to-long v6, v1

    int-to-long v0, v0

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_5

    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto/16 :goto_0

    :cond_5
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    const-wide v2, -0x7f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_0

    :cond_6
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lnzi;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto :goto_0

    :cond_7
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_0

    :cond_8
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lnzi;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_9

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_a

    move-wide v6, v2

    goto :goto_0

    :cond_9
    move-wide v6, v4

    :goto_0
    iput-wide v6, p0, Lnvv;->m:J

    return-wide v0

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lnvv;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method final s()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lnvv;->a()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lnxd;->e()Lnxd;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final t()J
    .locals 2

    invoke-virtual {p0}, Lnvv;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lnvv;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnvv;->H(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lnvv;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Lnvt;
    .locals 12

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lnvv;->o:J

    iget-wide v3, p0, Lnvv;->m:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lnzi;->k(J[BJJ)V

    iget-wide v1, p0, Lnvv;->m:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lnvv;->m:J

    invoke-static {v0}, Lnvt;->x([B)Lnvt;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-direct {p0}, Lnvv;->M()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-direct {p0, v1, v0}, Lnvv;->R([BI)V

    invoke-static {v1}, Lnvt;->x([B)Lnvt;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Lnvt;->b:Lnvt;

    return-object v0

    :cond_4
    if-gez v0, :cond_5

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lnvv;->o:J

    iget-wide v3, p0, Lnvv;->m:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lnzi;->k(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lnvv;->m:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lnvv;->m:J

    return-object v1

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-direct {p0}, Lnvv;->M()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-direct {p0, v1, v0}, Lnvv;->R([BI)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v0, ""

    return-object v0

    :cond_4
    if-gez v0, :cond_5

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lnvv;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lnvv;->o:J

    iget-wide v3, p0, Lnvv;->m:J

    sub-long/2addr v1, v3

    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lnvv;->n:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lnvv;->g:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    invoke-static {v1, v2, v0}, Lnzk;->f(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lnvv;->m:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lnvv;->m:J

    return-object v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_3

    invoke-direct {p0}, Lnvv;->M()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-direct {p0, v1, v0}, Lnvv;->R([BI)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lkwp;->A([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v0, ""

    return-object v0

    :cond_4
    if-gtz v0, :cond_5

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final z(I)V
    .locals 1

    iget v0, p0, Lnvv;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->b()Lnxd;

    move-result-object p1

    throw p1
.end method
