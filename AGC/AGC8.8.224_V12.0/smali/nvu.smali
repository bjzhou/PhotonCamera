.class final Lnvu;
.super Lnvy;


# instance fields
.field private final e:[B

.field private f:I

.field private g:I

.field private h:I

.field private final i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lnvy;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lnvu;->k:I

    iput-object p1, p0, Lnvu;->e:[B

    add-int/2addr p3, p2

    iput p3, p0, Lnvu;->f:I

    iput p2, p0, Lnvu;->h:I

    iput p2, p0, Lnvu;->i:I

    return-void
.end method

.method private final M()V
    .locals 3

    iget v0, p0, Lnvu;->f:I

    iget v1, p0, Lnvu;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lnvu;->f:I

    iget v1, p0, Lnvu;->i:I

    sub-int v1, v0, v1

    iget v2, p0, Lnvu;->k:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lnvu;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnvu;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnvu;->g:I

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lnvu;->k:I

    invoke-direct {p0}, Lnvu;->M()V

    return-void
.end method

.method public final B(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lnvu;->f:I

    iget v1, p0, Lnvu;->h:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    iput v1, p0, Lnvu;->h:I

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
    .locals 2

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 5

    invoke-virtual {p0}, Lnvu;->r()J

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
    .locals 5

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
    invoke-virtual {p0, v1}, Lnvu;->B(I)V

    return v3

    :pswitch_1
    return v2

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lnvu;->m()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnvu;->E(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1}, Lnzn;->a(I)I

    move-result p1

    invoke-static {p1, v1}, Lnzn;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lnvu;->z(I)V

    return v3

    :pswitch_3
    invoke-virtual {p0}, Lnvu;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Lnvu;->B(I)V

    return v3

    :pswitch_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lnvu;->B(I)V

    return v3

    :pswitch_5
    iget p1, p0, Lnvu;->f:I

    iget v0, p0, Lnvu;->h:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Lnvu;->e:[B

    iget v1, p0, Lnvu;->h:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lnvu;->h:I

    aget-byte p1, p1, v1

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

    invoke-virtual {p0}, Lnvu;->a()B

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
    .locals 3

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->f:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnvu;->e:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnvu;->h:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0
.end method

.method public final b()D
    .locals 2

    invoke-virtual {p0}, Lnvu;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()F
    .locals 1

    invoke-virtual {p0}, Lnvu;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(I)I
    .locals 1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lnvu;->d()I

    move-result v0

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget v0, p0, Lnvu;->k:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lnvu;->k:I

    invoke-direct {p0}, Lnvu;->M()V

    return v0

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p1

    throw p1
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lnvu;->i()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 5

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->f:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnvu;->e:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lnvu;->h:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

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
    .locals 5

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->f:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lnvu;->e:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lnvu;->h:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_7

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_6

    goto :goto_1

    :cond_5
    move v1, v3

    :cond_6
    :goto_0
    iput v1, p0, Lnvu;->h:I

    return v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lnvu;->s()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lnvu;->i()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    invoke-static {v0}, Lnvu;->F(I)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lnvu;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnvu;->j:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    iput v0, p0, Lnvu;->j:I

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

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    return v0
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, Lnvu;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lnvu;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()J
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lnvu;->h:I

    iget v2, v0, Lnvu;->f:I

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lnvu;->e:[B

    add-int/lit8 v4, v1, 0x8

    iput v4, v0, Lnvu;->h:I

    aget-byte v4, v2, v1

    int-to-long v4, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-long/2addr v4, v8

    shl-long/2addr v6, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    int-to-long v10, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v2, v3

    int-to-long v12, v3

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v2, v3

    int-to-long v14, v3

    add-int/lit8 v3, v1, 0x5

    aget-byte v3, v2, v3

    int-to-long v8, v3

    add-int/lit8 v3, v1, 0x6

    aget-byte v3, v2, v3

    move-wide/from16 v18, v8

    int-to-long v8, v3

    add-int/lit8 v1, v1, 0x7

    aget-byte v1, v2, v1

    int-to-long v1, v1

    const-wide/16 v16, 0xff

    and-long v10, v10, v16

    or-long/2addr v4, v6

    and-long v6, v12, v16

    const/16 v3, 0x10

    shl-long/2addr v10, v3

    or-long/2addr v4, v10

    and-long v10, v14, v16

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v18, v16

    const/16 v3, 0x20

    shl-long/2addr v10, v3

    or-long/2addr v4, v10

    and-long v8, v8, v16

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v1, v1, v16

    const/16 v3, 0x30

    shl-long v6, v8, v3

    or-long/2addr v4, v6

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    or-long/2addr v1, v4

    return-wide v1

    :cond_0
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v1

    throw v1
.end method

.method public final r()J
    .locals 11

    iget v0, p0, Lnvu;->h:I

    iget v1, p0, Lnvu;->f:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lnvu;->e:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lnvu;->h:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_a

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v4, v1

    int-to-long v0, v0

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x23

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_7

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x31

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_9

    add-int/lit8 v6, v3, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    cmp-long v7, v2, v4

    if-ltz v7, :cond_a

    move-wide v2, v0

    move v1, v6

    goto :goto_0

    :cond_9
    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    :goto_0
    iput v1, p0, Lnvu;->h:I

    return-wide v2

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lnvu;->s()J

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

    invoke-virtual {p0}, Lnvu;->a()B

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

    invoke-virtual {p0}, Lnvu;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lnvu;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnvu;->H(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lnvu;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Lnvt;
    .locals 3

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lnvu;->f:I

    iget v2, p0, Lnvu;->h:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnvu;->e:[B

    invoke-static {v1, v2, v0}, Lnvt;->v([BII)Lnvt;

    move-result-object v1

    iget v2, p0, Lnvu;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lnvu;->h:I

    return-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-lez v0, :cond_3

    iget v1, p0, Lnvu;->f:I

    iget v2, p0, Lnvu;->h:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lnvu;->h:I

    iget-object v1, p0, Lnvu;->e:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lnvt;->x([B)Lnvt;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    if-gtz v0, :cond_4

    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object v0

    throw v0

    :cond_5
    sget-object v0, Lnvt;->b:Lnvt;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lnvu;->f:I

    iget v2, p0, Lnvu;->h:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lnvu;->e:[B

    sget-object v4, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lnvu;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lnvu;->h:I

    return-object v1

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
    .locals 3

    invoke-virtual {p0}, Lnvu;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lnvu;->f:I

    iget v2, p0, Lnvu;->h:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnvu;->e:[B

    invoke-static {v1, v2, v0}, Lkwp;->A([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnvu;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lnvu;->h:I

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

    iget v0, p0, Lnvu;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnxd;->b()Lnxd;

    move-result-object p1

    throw p1
.end method
