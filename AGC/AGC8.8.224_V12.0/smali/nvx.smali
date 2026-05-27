.class final Lnvx;
.super Lnvy;


# instance fields
.field private final e:Ljava/nio/ByteBuffer;

.field private final f:J

.field private g:J

.field private h:J

.field private final i:J

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Lnvy;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lnvx;->l:I

    iput-object p1, p0, Lnvx;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lnzi;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lnvx;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvx;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnvx;->h:J

    iput-wide v0, p0, Lnvx;->i:J

    return-void
.end method

.method private final M()I
    .locals 4

    iget-wide v0, p0, Lnvx;->g:J

    iget-wide v2, p0, Lnvx;->h:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final N()V
    .locals 4

    iget-wide v0, p0, Lnvx;->g:J

    iget v2, p0, Lnvx;->j:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnvx;->g:J

    iget-wide v2, p0, Lnvx;->i:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lnvx;->l:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    iput v3, p0, Lnvx;->j:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnvx;->g:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnvx;->j:I

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lnvx;->l:I

    invoke-direct {p0}, Lnvx;->N()V

    return-void
.end method

.method public final B(I)V
    .locals 4

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lnvx;->M()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lnvx;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnvx;->h:J

    return-void

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    throw p1
.end method

.method public final C()Z
    .locals 5

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->g:J

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

    invoke-virtual {p0}, Lnvx;->r()J

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
    .locals 8

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
    invoke-virtual {p0, v1}, Lnvx;->B(I)V

    return v3

    :pswitch_1
    return v2

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lnvx;->m()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnvx;->E(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1}, Lnzn;->a(I)I

    move-result p1

    invoke-static {p1, v1}, Lnzn;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lnvx;->z(I)V

    return v3

    :pswitch_3
    invoke-virtual {p0}, Lnvx;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lnvx;->B(I)V

    return v3

    :pswitch_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lnvx;->B(I)V

    return v3

    :pswitch_5
    invoke-direct {p0}, Lnvx;->M()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    :goto_0
    if-ge v2, v0, :cond_3

    iget-wide v4, p0, Lnvx;->h:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lnvx;->h:J

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lnxd;->e()Lnxd;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0}, Lnvx;->a()B

    move-result p1

    if-gez p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v3

    :cond_6
    invoke-static {}, Lnxd;->e()Lnxd;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

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

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnvx;->h:J

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final b()D
    .locals 2

    invoke-virtual {p0}, Lnvx;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()F
    .locals 1

    invoke-virtual {p0}, Lnvx;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final e(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnvx;->d()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lnvx;->l:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lnvx;->l:I

    invoke-direct {p0}, Lnvx;->N()V

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

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lnvx;->i()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 7

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->g:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lnvx;->h:J

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lnzi;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lnzi;->a(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const-wide/16 v5, 0x3

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final j()I
    .locals 10

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->g:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lnvx;->h:J

    return v0

    :cond_1
    iget-wide v6, p0, Lnvx;->g:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

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
    iput-wide v6, p0, Lnvx;->h:J

    return v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lnvx;->s()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lnvx;->i()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    invoke-static {v0}, Lnvx;->F(I)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lnvx;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnvx;->k:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    iput v0, p0, Lnvx;->k:I

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

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    return v0
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, Lnvx;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lnvx;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()J
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Lnvx;->h:J

    iget-wide v3, v0, Lnvx;->g:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x8

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    add-long/2addr v5, v1

    iput-wide v5, v0, Lnvx;->h:J

    invoke-static {v1, v2}, Lnzi;->a(J)B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    invoke-static {v5, v6}, Lnzi;->a(J)B

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x2

    add-long/2addr v7, v1

    invoke-static {v7, v8}, Lnzi;->a(J)B

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3

    add-long/2addr v9, v1

    invoke-static {v9, v10}, Lnzi;->a(J)B

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x4

    add-long/2addr v11, v1

    invoke-static {v11, v12}, Lnzi;->a(J)B

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x5

    add-long/2addr v13, v1

    invoke-static {v13, v14}, Lnzi;->a(J)B

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x6

    add-long/2addr v15, v1

    invoke-static/range {v15 .. v16}, Lnzi;->a(J)B

    move-result v15

    move-wide/from16 v16, v13

    int-to-long v13, v15

    const-wide/16 v18, 0x7

    add-long v1, v1, v18

    invoke-static {v1, v2}, Lnzi;->a(J)B

    move-result v1

    int-to-long v1, v1

    const-wide/16 v18, 0xff

    and-long v5, v5, v18

    and-long v7, v7, v18

    and-long v3, v3, v18

    const/16 v15, 0x8

    shl-long/2addr v5, v15

    or-long/2addr v3, v5

    and-long v5, v9, v18

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    and-long v7, v11, v18

    const/16 v9, 0x18

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    and-long v5, v16, v18

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    and-long v7, v13, v18

    const/16 v9, 0x28

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    and-long v1, v1, v18

    const/16 v5, 0x30

    shl-long v5, v7, v5

    or-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1
.end method

.method public final r()J
    .locals 11

    iget-wide v0, p0, Lnvx;->h:J

    iget-wide v2, p0, Lnvx;->g:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lnzi;->a(J)B

    move-result v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lnvx;->h:J

    int-to-long v0, v0

    return-wide v0

    :cond_1
    iget-wide v6, p0, Lnvx;->g:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

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
    iput-wide v6, p0, Lnvx;->h:J

    return-wide v0

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lnvx;->s()J

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

    invoke-virtual {p0}, Lnvx;->a()B

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

    invoke-virtual {p0}, Lnvx;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lnvx;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnvx;->H(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lnvx;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Lnvt;
    .locals 11

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lnvx;->M()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    iget-wide v2, p0, Lnvx;->h:J

    int-to-long v9, v0

    const-wide/16 v5, 0x0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lnzi;->k(J[BJJ)V

    iget-wide v2, p0, Lnvx;->h:J

    add-long/2addr v2, v9

    iput-wide v2, p0, Lnvx;->h:J

    invoke-static {v1}, Lnvt;->x([B)Lnvt;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lnvt;->b:Lnvt;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lnvx;->M()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    iget-wide v2, p0, Lnvx;->h:J

    int-to-long v9, v0

    const-wide/16 v5, 0x0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lnzi;->k(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lnvx;->h:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lnvx;->h:J

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnvx;->j()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lnvx;->M()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lnvx;->h:J

    iget-wide v3, p0, Lnvx;->f:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lnvx;->e:Ljava/nio/ByteBuffer;

    long-to-int v2, v1

    invoke-static {v3, v2, v0}, Lnzk;->f(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnvx;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnvx;->h:J

    return-object v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final z(I)V
    .locals 1

    iget v0, p0, Lnvx;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->b()Lnxd;

    move-result-object p1

    throw p1
.end method
