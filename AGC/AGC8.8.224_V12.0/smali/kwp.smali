.class public final Lkwp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lopq;Llyd;Llyl;Lkrn;Llzz;Llzx;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([BII)Ljava/lang/String;
    .locals 10

    array-length v0, p0

    sub-int v1, v0, p1

    or-int v2, p1, p2

    sub-int/2addr v1, p2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_8

    add-int v0, p1, p2

    new-array p2, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    aget-byte v3, p0, p1

    invoke-static {v3}, Lkwp;->H(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p2, v1}, Lkwp;->E(B[CI)V

    move v1, v4

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_7

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    invoke-static {p1}, Lkwp;->H(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, p2, v1}, Lkwp;->E(B[CI)V

    move p1, v3

    move v1, v4

    :goto_2
    if-ge p1, v0, :cond_0

    aget-byte v3, p0, p1

    invoke-static {v3}, Lkwp;->H(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p2, v1}, Lkwp;->E(B[CI)V

    move v1, v4

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lkwp;->J(B)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v5, v1, 0x1

    invoke-static {p1, v3, p2, v1}, Lkwp;->G(BB[CI)V

    move p1, v4

    move v1, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p1}, Lkwp;->I(B)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v6, v1, 0x1

    invoke-static {p1, v3, v4, p2, v1}, Lkwp;->F(BBB[CI)V

    move p1, v5

    move v1, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_5
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p0, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p0, v3

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lkwp;->D(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p1, v9

    goto :goto_1

    :cond_6
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static B(I[BII)I
    .locals 11

    const/16 v0, -0x13

    const/16 v1, -0x3e

    const/16 v2, -0x10

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/16 v6, -0x41

    const/4 v7, -0x1

    if-eqz p0, :cond_e

    if-lt p2, p3, :cond_0

    return p0

    :cond_0
    int-to-byte v8, p0

    if-ge v8, v5, :cond_2

    if-lt v8, v1, :cond_1

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-gt p2, v6, :cond_1

    move p2, p0

    goto/16 :goto_3

    :cond_1
    return v7

    :cond_2
    if-ge v8, v2, :cond_8

    shr-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v7

    int-to-byte p0, p0

    if-nez p0, :cond_4

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-ge p0, p3, :cond_3

    move v10, p2

    move p2, p0

    move p0, v10

    goto :goto_0

    :cond_3
    invoke-static {v8, p2}, Lnzk;->c(II)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    if-gt p0, v6, :cond_7

    if-ne v8, v5, :cond_5

    if-lt p0, v4, :cond_7

    :cond_5
    if-ne v8, v0, :cond_6

    if-ge p0, v4, :cond_7

    :cond_6
    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-gt p2, v6, :cond_7

    move p2, p0

    goto :goto_3

    :cond_7
    return v7

    :cond_8
    shr-int/lit8 v9, p0, 0x8

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    if-nez v9, :cond_a

    add-int/lit8 p0, p2, 0x1

    aget-byte v9, p1, p2

    if-ge p0, p3, :cond_9

    move p2, p0

    const/4 p0, 0x0

    goto :goto_1

    :cond_9
    invoke-static {v8, v9}, Lnzk;->c(II)I

    move-result p0

    return p0

    :cond_a
    shr-int/lit8 p0, p0, 0x10

    :goto_1
    if-nez p0, :cond_c

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-ge p0, p3, :cond_b

    move v10, p2

    move p2, p0

    move p0, v10

    goto :goto_2

    :cond_b
    invoke-static {v8, v9, p2}, Lnzk;->d(III)I

    move-result p0

    return p0

    :cond_c
    :goto_2
    if-gt v9, v6, :cond_d

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1e

    if-nez v8, :cond_d

    if-gt p0, v6, :cond_d

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-gt p2, v6, :cond_d

    move p2, p0

    goto :goto_3

    :cond_d
    return v7

    :cond_e
    :goto_3
    if-ge p2, p3, :cond_f

    aget-byte p0, p1, p2

    if-ltz p0, :cond_f

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    if-lt p2, p3, :cond_10

    :goto_4
    goto/16 :goto_6

    :cond_10
    :goto_5
    if-lt p2, p3, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_1c

    if-ge p2, v5, :cond_14

    if-lt p0, p3, :cond_12

    move v3, p2

    goto :goto_6

    :cond_12
    if-lt p2, v1, :cond_13

    add-int/lit8 p2, p0, 0x1

    aget-byte p0, p1, p0

    if-le p0, v6, :cond_10

    :cond_13
    const/4 v3, -0x1

    goto :goto_6

    :cond_14
    if-ge p2, v2, :cond_19

    add-int/lit8 v8, p3, -0x1

    if-lt p0, v8, :cond_15

    invoke-static {p1, p0, p3}, Lnzk;->e([BII)I

    move-result v3

    goto :goto_6

    :cond_15
    add-int/lit8 v8, p0, 0x1

    aget-byte p0, p1, p0

    if-gt p0, v6, :cond_18

    if-ne p2, v5, :cond_16

    if-lt p0, v4, :cond_18

    :cond_16
    if-ne p2, v0, :cond_17

    if-ge p0, v4, :cond_18

    :cond_17
    add-int/lit8 p2, v8, 0x1

    aget-byte p0, p1, v8

    if-le p0, v6, :cond_10

    :cond_18
    const/4 v3, -0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v8, p3, -0x2

    if-lt p0, v8, :cond_1a

    invoke-static {p1, p0, p3}, Lnzk;->e([BII)I

    move-result v3

    goto :goto_6

    :cond_1a
    add-int/lit8 v8, p0, 0x1

    aget-byte p0, p1, p0

    if-gt p0, v6, :cond_1b

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p2, p0

    shr-int/lit8 p0, p2, 0x1e

    if-nez p0, :cond_1b

    add-int/lit8 p0, v8, 0x1

    aget-byte p2, p1, v8

    if-gt p2, v6, :cond_1b

    add-int/lit8 p2, p0, 0x1

    aget-byte p0, p1, p0

    if-le p0, v6, :cond_10

    :cond_1b
    const/4 v3, -0x1

    :goto_6
    return v3

    :cond_1c
    move p2, p0

    goto :goto_5
.end method

.method public static final C([BII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lkwp;->B(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static D(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    invoke-static {p1}, Lkwp;->aB(B)I

    move-result p1

    invoke-static {p2}, Lkwp;->aB(B)I

    move-result p2

    invoke-static {p3}, Lkwp;->aB(B)I

    move-result p3

    shl-int/lit8 p0, p0, 0x12

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x6

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static E(B[CI)V
    .locals 0

    int-to-char p0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method public static F(BBB[CI)V
    .locals 2

    invoke-static {p1}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x60

    const/16 v1, -0x20

    if-ne p0, v1, :cond_0

    if-lt p1, v0, :cond_2

    const/16 p0, -0x20

    :cond_0
    const/16 v1, -0x13

    if-ne p0, v1, :cond_1

    if-ge p1, v0, :cond_2

    const/16 p0, -0x13

    :cond_1
    invoke-static {p2}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    invoke-static {p1}, Lkwp;->aB(B)I

    move-result p1

    invoke-static {p2}, Lkwp;->aB(B)I

    move-result p2

    shl-int/lit8 p0, p0, 0xc

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static G(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lkwp;->aC(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    invoke-static {p1}, Lkwp;->aB(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static H(B)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static I(B)Z
    .locals 1

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static J(B)Z
    .locals 1

    const/16 v0, -0x20

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic L(Ljava/lang/Object;ILnvt;)V
    .locals 1

    check-cast p0, Lnza;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lnzn;->c(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lnza;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic M(Ljava/lang/Object;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnzn;->c(II)I

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p0, Lnza;

    invoke-virtual {p0, p1, p2}, Lnza;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public static N(Ljava/lang/Object;)Lnza;
    .locals 0

    check-cast p0, Lnws;

    iget-object p0, p0, Lnws;->aJ:Lnza;

    return-object p0
.end method

.method public static O(Ljava/lang/Object;Lnza;)V
    .locals 0

    check-cast p0, Lnws;

    iput-object p1, p0, Lnws;->aJ:Lnza;

    return-void
.end method

.method public static final bridge synthetic P(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object v0

    sget-object v1, Lnza;->a:Lnza;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnza;->b()Lnza;

    move-result-object v0

    invoke-static {p0, v0}, Lkwp;->O(Ljava/lang/Object;Lnza;)V

    :cond_0
    return-object v0
.end method

.method public static final Q(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lkwp;->N(Ljava/lang/Object;)Lnza;

    move-result-object p0

    invoke-virtual {p0}, Lnza;->e()V

    return-void
.end method

.method public static R(Lnvt;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnvt;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnvt;->a(I)B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_0
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final S(Lnvt;Ljava/util/ArrayDeque;)V
    .locals 4

    invoke-virtual {p0}, Lnvt;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v0

    invoke-static {v0}, Lkwp;->aD(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lnyn;->c(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnvt;

    invoke-virtual {v2}, Lnvt;->d()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lnyn;->c(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnvt;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnvt;

    invoke-virtual {v2}, Lnvt;->d()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnvt;

    new-instance v3, Lnyn;

    invoke-direct {v3, v2, v1}, Lnyn;-><init>(Lnvt;Lnvt;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    new-instance v0, Lnyn;

    invoke-direct {v0, v1, p0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget p0, v0, Lnyn;->d:I

    invoke-static {p0}, Lkwp;->aD(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lnyn;->c(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnvt;

    invoke-virtual {v1}, Lnvt;->d()I

    move-result v1

    if-ge v1, p0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnvt;

    new-instance v1, Lnyn;

    invoke-direct {v1, p0, v0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_4
    instance-of v0, p0, Lnyn;

    if-eqz v0, :cond_5

    check-cast p0, Lnyn;

    sget-object v0, Lnyn;->a:[I

    iget-object v0, p0, Lnyn;->e:Lnvt;

    invoke-static {v0, p1}, Lkwp;->S(Lnvt;Ljava/util/ArrayDeque;)V

    iget-object p0, p0, Lnyn;->f:Lnvt;

    invoke-static {p0, p1}, Lkwp;->S(Lnvt;Ljava/util/ArrayDeque;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Has a new type of ByteString been created? Found "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static final T(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lnxt;

    check-cast p2, Llzz;

    invoke-virtual {p1}, Lnxt;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lnxt;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lnwd;->Z(I)I

    move-result v3

    iget-object v4, p2, Llzz;->a:Ljava/lang/Object;

    check-cast v4, Llhj;

    invoke-static {v4, v2, v0}, Llzz;->A(Llhj;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lnwd;->P(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static final U(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lnxt;

    iget-boolean p0, p0, Lnxt;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lnxt;

    check-cast p1, Lnxt;

    invoke-virtual {p1}, Lnxt;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnxt;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnxt;->a()Lnxt;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lnxt;->b()V

    invoke-virtual {p1}, Lnxt;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnxt;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public static final W()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnxt;->a:Lnxt;

    invoke-virtual {v0}, Lnxt;->a()Lnxt;

    move-result-object v0

    return-object v0
.end method

.method public static X(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnwr;

    iget p0, p0, Lnwr;->a:I

    return p0
.end method

.method public static Y(Ljava/lang/Object;)Lnwj;
    .locals 0

    check-cast p0, Lnwq;

    iget-object p0, p0, Lnwq;->l:Lnwj;

    return-object p0
.end method

.method public static Z(Ljava/lang/Object;)Lnwj;
    .locals 0

    check-cast p0, Lnwq;

    invoke-virtual {p0}, Lnwq;->c()Lnwj;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static aA(Llzz;Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwr;

    sget-object v1, Lnzl;->a:Lnzl;

    iget-object v1, v0, Lnwr;->b:Lnzl;

    invoke-virtual {v1}, Lnzl;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->v(IJ)V

    return-void

    :pswitch_1
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->u(II)V

    return-void

    :pswitch_2
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->t(IJ)V

    return-void

    :pswitch_3
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->s(II)V

    return-void

    :pswitch_4
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->o(II)V

    return-void

    :pswitch_5
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->x(II)V

    return-void

    :pswitch_6
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnvt;

    invoke-virtual {p0, v0, p1}, Llzz;->h(ILnvt;)V

    return-void

    :pswitch_7
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lnyh;->a:Lnyh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Llzz;->q(ILjava/lang/Object;Lnyo;)V

    return-void

    :pswitch_8
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lnyh;->a:Lnyh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Llzz;->n(ILjava/lang/Object;Lnyo;)V

    return-void

    :pswitch_9
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Llzz;->w(ILjava/lang/String;)V

    return-void

    :pswitch_a
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->g(IZ)V

    return-void

    :pswitch_b
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->k(II)V

    return-void

    :pswitch_c
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->l(IJ)V

    return-void

    :pswitch_d
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->o(II)V

    return-void

    :pswitch_e
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->y(IJ)V

    return-void

    :pswitch_f
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->p(IJ)V

    return-void

    :pswitch_10
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Llzz;->m(IF)V

    return-void

    :pswitch_11
    iget v0, v0, Lnwr;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Llzz;->i(ID)V

    return-void

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

.method private static aB(B)I
    .locals 0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method private static aC(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final aD(I)I
    .locals 1

    sget-object v0, Lnyn;->a:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method public static aa(Lnyk;Ljava/lang/Object;Lnwh;Lnwj;)V
    .locals 1

    check-cast p1, Llhj;

    iget-object v0, p1, Llhj;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lnyk;->t(Ljava/lang/Class;Lnwh;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Llhj;->b:Ljava/lang/Object;

    check-cast p1, Lnwr;

    invoke-virtual {p3, p1, p0}, Lnwj;->l(Lnwr;Ljava/lang/Object;)V

    return-void
.end method

.method public static final ab(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lkwp;->Y(Ljava/lang/Object;)Lnwj;

    move-result-object p0

    invoke-virtual {p0}, Lnwj;->e()V

    return-void
.end method

.method public static final ac(Lnwd;[B)Lnvt;
    .locals 0

    invoke-virtual {p0}, Lnwd;->ai()V

    new-instance p0, Lnvs;

    invoke-direct {p0, p1}, Lnvs;-><init>([B)V

    return-object p0
.end method

.method public static ad([BI)D
    .locals 0

    invoke-static {p0, p1}, Lkwp;->av([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static ae([BI)F
    .locals 0

    invoke-static {p0, p1}, Lkwp;->ag([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static af([BILnvj;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lkwp;->ao([BILnvj;)I

    move-result p1

    iget v0, p2, Lnvj;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lnvt;->b:Lnvt;

    iput-object p0, p2, Lnvj;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lnvt;->v([BII)Lnvt;

    move-result-object p0

    iput-object p0, p2, Lnvj;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static ag([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static ah(Lnyo;[BIIILnvj;)I
    .locals 8

    invoke-interface {p0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lkwp;->as(Ljava/lang/Object;Lnyo;[BIIILnvj;)I

    move-result p1

    invoke-interface {p0, v7}, Lnyo;->f(Ljava/lang/Object;)V

    iput-object v7, p5, Lnvj;->c:Ljava/lang/Object;

    return p1
.end method

.method public static ai(Lnyo;[BIILnvj;)I
    .locals 7

    invoke-interface {p0}, Lnyo;->e()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lkwp;->at(Ljava/lang/Object;Lnyo;[BIILnvj;)I

    move-result p1

    invoke-interface {p0, v6}, Lnyo;->f(Ljava/lang/Object;)V

    iput-object v6, p4, Lnvj;->c:Ljava/lang/Object;

    return p1
.end method

.method public static aj(Lnyo;I[BIILnxa;Lnvj;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lkwp;->ai(Lnyo;[BIILnvj;)I

    move-result p3

    iget-object v0, p6, Lnvj;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lnxa;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, p6, Lnvj;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lkwp;->ai(Lnyo;[BIILnvj;)I

    move-result p3

    iget-object v0, p6, Lnvj;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static ak([BILnxa;Lnvj;)I
    .locals 2

    check-cast p2, Lnwt;

    invoke-static {p0, p1, p3}, Lkwp;->ao([BILnvj;)I

    move-result p1

    iget v0, p3, Lnvj;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lkwp;->ao([BILnvj;)I

    move-result p1

    iget v1, p3, Lnvj;->a:I

    invoke-virtual {p2, v1}, Lnwt;->g(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static al([BILnvj;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lkwp;->ao([BILnvj;)I

    move-result p1

    iget v0, p2, Lnvj;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lnvj;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lnvj;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static am([BILnvj;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lkwp;->ao([BILnvj;)I

    move-result p1

    iget v0, p2, Lnvj;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lnvj;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lkwp;->A([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lnvj;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static an(I[BIILnza;Lnvj;)I
    .locals 9

    invoke-static {p0}, Lnzn;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->c()Lnxd;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-static {p1, p2}, Lkwp;->ag([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lnza;->f(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :pswitch_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lnza;->b()Lnza;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lkwp;->ao([BILnvj;)I

    move-result v3

    iget p2, p5, Lnvj;->a:I

    if-eq p2, v0, :cond_0

    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lkwp;->an(I[BIILnza;Lnvj;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_0
    move v1, p2

    move p2, v3

    :cond_1
    if-gt p2, p3, :cond_2

    if-ne v1, v0, :cond_2

    invoke-virtual {p4, p0, v7}, Lnza;->f(ILjava/lang/Object;)V

    return p2

    :cond_2
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p0

    throw p0

    :pswitch_3
    invoke-static {p1, p2, p5}, Lkwp;->ao([BILnvj;)I

    move-result p2

    iget p3, p5, Lnvj;->a:I

    if-ltz p3, :cond_5

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_4

    if-nez p3, :cond_3

    sget-object p1, Lnvt;->b:Lnvt;

    invoke-virtual {p4, p0, p1}, Lnza;->f(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, p3}, Lnvt;->v([BII)Lnvt;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lnza;->f(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr p2, p3

    return p2

    :cond_4
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {}, Lnxd;->f()Lnxd;

    move-result-object p0

    throw p0

    :pswitch_4
    invoke-static {p1, p2}, Lkwp;->av([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lnza;->f(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :pswitch_5
    invoke-static {p1, p2, p5}, Lkwp;->ar([BILnvj;)I

    move-result p1

    iget-wide p2, p5, Lnvj;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lnza;->f(ILjava/lang/Object;)V

    return p1

    :cond_6
    invoke-static {}, Lnxd;->c()Lnxd;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ao([BILnvj;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lnvj;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lkwp;->ap(I[BILnvj;)I

    move-result p0

    return p0
.end method

.method public static ap(I[BILnvj;)I
    .locals 1

    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_0

    shl-int/lit8 p1, v0, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lnvj;->a:I

    return p2

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_1

    shl-int/lit8 p1, p2, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lnvj;->a:I

    return v0

    :cond_1
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0xe

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    shl-int/lit8 p1, v0, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lnvj;->a:I

    return p2

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_3

    shl-int/lit8 p1, p2, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lnvj;->a:I

    return v0

    :cond_3
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x1c

    or-int/2addr p0, p2

    :goto_0
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-gez v0, :cond_4

    move v0, p2

    goto :goto_0

    :cond_4
    iput p0, p3, Lnvj;->a:I

    return p2
.end method

.method public static aq(I[BIILnxa;Lnvj;)I
    .locals 2

    check-cast p4, Lnwt;

    invoke-static {p1, p2, p5}, Lkwp;->ao([BILnvj;)I

    move-result p2

    iget v0, p5, Lnvj;->a:I

    invoke-virtual {p4, v0}, Lnwt;->g(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lkwp;->ao([BILnvj;)I

    move-result v0

    iget v1, p5, Lnvj;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lkwp;->ao([BILnvj;)I

    move-result p2

    iget v0, p5, Lnvj;->a:I

    invoke-virtual {p4, v0}, Lnwt;->g(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static ar([BILnvj;)I
    .locals 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    add-int/lit8 p1, p1, 0x1

    if-ltz v4, :cond_0

    iput-wide v0, p2, Lnvj;->b:J

    return p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit8 v3, p1, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const/4 v3, 0x7

    :goto_0
    if-gez p1, :cond_1

    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    add-int/2addr v3, v5

    and-int/lit8 v4, v2, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lnvj;->b:J

    return v2
.end method

.method public static as(Ljava/lang/Object;Lnyo;[BIIILnvj;)I
    .locals 7

    move-object v0, p1

    check-cast v0, Lnyb;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lnyb;->c(Ljava/lang/Object;[BIIILnvj;)I

    move-result p1

    iput-object p0, p6, Lnvj;->c:Ljava/lang/Object;

    return p1
.end method

.method public static at(Ljava/lang/Object;Lnyo;[BIILnvj;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lkwp;->ap(I[BILnvj;)I

    move-result v0

    iget p3, p5, Lnvj;->a:I

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnyo;->i(Ljava/lang/Object;[BIILnvj;)V

    iput-object p0, p5, Lnvj;->c:Ljava/lang/Object;

    return p3

    :cond_1
    invoke-static {}, Lnxd;->i()Lnxd;

    move-result-object p0

    throw p0
.end method

.method public static au(I[BIILnvj;)I
    .locals 1

    invoke-static {p0}, Lnzn;->a(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lnzn;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lnxd;->c()Lnxd;

    move-result-object p0

    throw p0

    :pswitch_1
    add-int/lit8 p2, p2, 0x4

    return p2

    :pswitch_2
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-static {p1, p2, p4}, Lkwp;->ao([BILnvj;)I

    move-result p2

    iget v0, p4, Lnvj;->a:I

    if-eq v0, p0, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, Lkwp;->au(I[BIILnvj;)I

    move-result p2

    goto :goto_0

    :cond_0
    if-gt p2, p3, :cond_1

    if-ne v0, p0, :cond_1

    return p2

    :cond_1
    invoke-static {}, Lnxd;->g()Lnxd;

    move-result-object p0

    throw p0

    :pswitch_3
    invoke-static {p1, p2, p4}, Lkwp;->ao([BILnvj;)I

    move-result p0

    iget p1, p4, Lnvj;->a:I

    add-int/2addr p0, p1

    return p0

    :pswitch_4
    add-int/lit8 p2, p2, 0x8

    return p2

    :pswitch_5
    invoke-static {p1, p2, p4}, Lkwp;->ar([BILnvj;)I

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lnxd;->c()Lnxd;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static av([BI)J
    .locals 18

    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static aw(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ax(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ay(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final az(Ljava/lang/Object;)Llhj;
    .locals 0

    check-cast p0, Llzz;

    iget-object p0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast p0, Llhj;

    return-object p0
.end method

.method public static b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->i()Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "3gpp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "dng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "text/plain"

    return-object p0

    :pswitch_1
    const-string p0, "video/3gpp"

    return-object p0

    :pswitch_2
    const-string p0, "video/mp4"

    return-object p0

    :pswitch_3
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :pswitch_4
    const-string p0, "image/png"

    return-object p0

    :pswitch_5
    const-string p0, "image/gif"

    return-object p0

    :pswitch_6
    const-string p0, "image/jpeg"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1851d -> :sswitch_7
        0x18fc4 -> :sswitch_6
        0x19be1 -> :sswitch_5
        0x1a6f1 -> :sswitch_4
        0x1b229 -> :sswitch_3
        0x1c270 -> :sswitch_2
        0x18bf94 -> :sswitch_1
        0x31e068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static k(II)I
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Lacp;->d(II)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lljr;->w(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object p0

    invoke-static {v0, p0}, Lkwp;->o(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;II)I
    .locals 0

    invoke-static {p0, p1}, Lljr;->v(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lkwp;->o(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static n(IIF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lacp;->d(II)I

    move-result p1

    invoke-static {p1, p0}, Lacp;->c(II)I

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/Context;Landroid/util/TypedValue;)I
    .locals 1

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Labu;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static p(I)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p0}, Lacp;->a(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    filled-new-array {v1, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public static r(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xe

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    const/16 p0, 0xc

    return p0

    :pswitch_3
    const/16 p0, 0xb

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_a
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static final s(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lluh;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lluh;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Landroid/net/Uri;

    invoke-direct {v1, v0, v2, v3, p0}, Lluh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final t(Ljava/util/List;)Lojd;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llyg;

    iget-object v2, v2, Llyg;->a:Llyf;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llyg;

    iget-object v2, v2, Llyg;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lljr;->an(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Lodl;Lodj;)Lodq;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lodm;

    invoke-direct {v0, p0, p1, p2, p3}, Lodm;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;Lodl;Lodj;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Http connection could not be created."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Url is malformed."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static w(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xdb

    return p0

    :pswitch_1
    const/16 p0, 0xda

    return p0

    :pswitch_2
    const/16 p0, 0xd9

    return p0

    :pswitch_3
    const/16 p0, 0xd8

    return p0

    :pswitch_4
    const/16 p0, 0xd7

    return p0

    :pswitch_5
    const/16 p0, 0xd6

    return p0

    :pswitch_6
    const/16 p0, 0xd5

    return p0

    :pswitch_7
    const/16 p0, 0xd4

    return p0

    :pswitch_8
    const/16 p0, 0xd3

    return p0

    :pswitch_9
    const/16 p0, 0xd2

    return p0

    :pswitch_a
    const/16 p0, 0xd1

    return p0

    :pswitch_b
    const/16 p0, 0xd0

    return p0

    :pswitch_c
    const/16 p0, 0xcf

    return p0

    :pswitch_d
    const/16 p0, 0xce

    return p0

    :pswitch_e
    const/16 p0, 0xcd

    return p0

    :pswitch_f
    const/16 p0, 0xcc

    return p0

    :pswitch_10
    const/16 p0, 0xcb

    return p0

    :pswitch_11
    const/16 p0, 0xca

    return p0

    :pswitch_12
    const/16 p0, 0xc9

    return p0

    :pswitch_13
    const/16 p0, 0xc8

    return p0

    :pswitch_14
    const/16 p0, 0xc7

    return p0

    :pswitch_15
    const/16 p0, 0xc6

    return p0

    :pswitch_16
    const/16 p0, 0xc5

    return p0

    :pswitch_17
    const/16 p0, 0xc4

    return p0

    :pswitch_18
    const/16 p0, 0xc3

    return p0

    :pswitch_19
    const/16 p0, 0xc2

    return p0

    :pswitch_1a
    const/16 p0, 0xc1

    return p0

    :pswitch_1b
    const/16 p0, 0xc0

    return p0

    :pswitch_1c
    const/16 p0, 0xbf

    return p0

    :pswitch_1d
    const/16 p0, 0xbe

    return p0

    :pswitch_1e
    const/16 p0, 0xbd

    return p0

    :pswitch_1f
    const/16 p0, 0xbc

    return p0

    :pswitch_20
    const/16 p0, 0xbb

    return p0

    :pswitch_21
    const/16 p0, 0xba

    return p0

    :pswitch_22
    const/16 p0, 0xb9

    return p0

    :pswitch_23
    const/16 p0, 0xb8

    return p0

    :pswitch_24
    const/16 p0, 0xb7

    return p0

    :pswitch_25
    const/16 p0, 0xb6

    return p0

    :pswitch_26
    const/16 p0, 0xb5

    return p0

    :pswitch_27
    const/16 p0, 0xb4

    return p0

    :pswitch_28
    const/16 p0, 0xb3

    return p0

    :pswitch_29
    const/16 p0, 0xb2

    return p0

    :pswitch_2a
    const/16 p0, 0xb1

    return p0

    :pswitch_2b
    const/16 p0, 0xb0

    return p0

    :pswitch_2c
    const/16 p0, 0xaf

    return p0

    :pswitch_2d
    const/16 p0, 0xae

    return p0

    :pswitch_2e
    const/16 p0, 0xad

    return p0

    :pswitch_2f
    const/16 p0, 0xac

    return p0

    :pswitch_30
    const/16 p0, 0xab

    return p0

    :pswitch_31
    const/16 p0, 0xaa

    return p0

    :pswitch_32
    const/16 p0, 0xa9

    return p0

    :pswitch_33
    const/16 p0, 0xa8

    return p0

    :pswitch_34
    const/16 p0, 0xa7

    return p0

    :pswitch_35
    const/16 p0, 0xa6

    return p0

    :pswitch_36
    const/16 p0, 0xa5

    return p0

    :pswitch_37
    const/16 p0, 0xa4

    return p0

    :pswitch_38
    const/16 p0, 0xa3

    return p0

    :pswitch_39
    const/16 p0, 0xa2

    return p0

    :pswitch_3a
    const/16 p0, 0xa1

    return p0

    :pswitch_3b
    const/16 p0, 0xa0

    return p0

    :pswitch_3c
    const/16 p0, 0x9f

    return p0

    :pswitch_3d
    const/16 p0, 0x9e

    return p0

    :pswitch_3e
    const/16 p0, 0x9d

    return p0

    :pswitch_3f
    const/16 p0, 0x9c

    return p0

    :pswitch_40
    const/16 p0, 0x9b

    return p0

    :pswitch_41
    const/16 p0, 0x9a

    return p0

    :pswitch_42
    const/16 p0, 0x99

    return p0

    :pswitch_43
    const/16 p0, 0x98

    return p0

    :pswitch_44
    const/16 p0, 0x97

    return p0

    :pswitch_45
    const/16 p0, 0x96

    return p0

    :pswitch_46
    const/16 p0, 0x95

    return p0

    :pswitch_47
    const/16 p0, 0x94

    return p0

    :pswitch_48
    const/16 p0, 0x93

    return p0

    :pswitch_49
    const/16 p0, 0x92

    return p0

    :pswitch_4a
    const/16 p0, 0x91

    return p0

    :pswitch_4b
    const/16 p0, 0x90

    return p0

    :pswitch_4c
    const/16 p0, 0x8f

    return p0

    :pswitch_4d
    const/16 p0, 0x8e

    return p0

    :pswitch_4e
    const/16 p0, 0x8d

    return p0

    :pswitch_4f
    const/16 p0, 0x8c

    return p0

    :pswitch_50
    const/16 p0, 0x8b

    return p0

    :pswitch_51
    const/16 p0, 0x8a

    return p0

    :pswitch_52
    const/16 p0, 0x89

    return p0

    :pswitch_53
    const/16 p0, 0x88

    return p0

    :pswitch_54
    const/16 p0, 0x87

    return p0

    :pswitch_55
    const/16 p0, 0x86

    return p0

    :pswitch_56
    const/16 p0, 0x85

    return p0

    :pswitch_57
    const/16 p0, 0x84

    return p0

    :pswitch_58
    const/16 p0, 0x83

    return p0

    :pswitch_59
    const/16 p0, 0x82

    return p0

    :pswitch_5a
    const/16 p0, 0x81

    return p0

    :pswitch_5b
    const/16 p0, 0x80

    return p0

    :pswitch_5c
    const/16 p0, 0x7f

    return p0

    :pswitch_5d
    const/16 p0, 0x7e

    return p0

    :pswitch_5e
    const/16 p0, 0x7d

    return p0

    :pswitch_5f
    const/16 p0, 0x7c

    return p0

    :pswitch_60
    const/16 p0, 0x7b

    return p0

    :pswitch_61
    const/16 p0, 0x7a

    return p0

    :pswitch_62
    const/16 p0, 0x79

    return p0

    :pswitch_63
    const/16 p0, 0x78

    return p0

    :pswitch_64
    const/16 p0, 0x77

    return p0

    :pswitch_65
    const/16 p0, 0x76

    return p0

    :pswitch_66
    const/16 p0, 0x75

    return p0

    :pswitch_67
    const/16 p0, 0x74

    return p0

    :pswitch_68
    const/16 p0, 0x73

    return p0

    :pswitch_69
    const/16 p0, 0x72

    return p0

    :pswitch_6a
    const/16 p0, 0x71

    return p0

    :pswitch_6b
    const/16 p0, 0x70

    return p0

    :pswitch_6c
    const/16 p0, 0x6f

    return p0

    :pswitch_6d
    const/16 p0, 0x6e

    return p0

    :pswitch_6e
    const/16 p0, 0x6d

    return p0

    :pswitch_6f
    const/16 p0, 0x6c

    return p0

    :pswitch_70
    const/16 p0, 0x6b

    return p0

    :pswitch_71
    const/16 p0, 0x6a

    return p0

    :pswitch_72
    const/16 p0, 0x69

    return p0

    :pswitch_73
    const/16 p0, 0x68

    return p0

    :pswitch_74
    const/16 p0, 0x67

    return p0

    :pswitch_75
    const/16 p0, 0x66

    return p0

    :pswitch_76
    const/16 p0, 0x65

    return p0

    :pswitch_77
    const/16 p0, 0x64

    return p0

    :pswitch_78
    const/16 p0, 0x63

    return p0

    :pswitch_79
    const/16 p0, 0x62

    return p0

    :pswitch_7a
    const/16 p0, 0x61

    return p0

    :pswitch_7b
    const/16 p0, 0x60

    return p0

    :pswitch_7c
    const/16 p0, 0x5f

    return p0

    :pswitch_7d
    const/16 p0, 0x5e

    return p0

    :pswitch_7e
    const/16 p0, 0x5d

    return p0

    :pswitch_7f
    const/16 p0, 0x5c

    return p0

    :pswitch_80
    const/16 p0, 0x5b

    return p0

    :pswitch_81
    const/16 p0, 0x5a

    return p0

    :pswitch_82
    const/16 p0, 0x59

    return p0

    :pswitch_83
    const/16 p0, 0x58

    return p0

    :pswitch_84
    const/16 p0, 0x57

    return p0

    :pswitch_85
    const/16 p0, 0x56

    return p0

    :pswitch_86
    const/16 p0, 0x55

    return p0

    :pswitch_87
    const/16 p0, 0x54

    return p0

    :pswitch_88
    const/16 p0, 0x53

    return p0

    :pswitch_89
    const/16 p0, 0x52

    return p0

    :pswitch_8a
    const/16 p0, 0x51

    return p0

    :pswitch_8b
    const/16 p0, 0x50

    return p0

    :pswitch_8c
    const/16 p0, 0x4f

    return p0

    :pswitch_8d
    const/16 p0, 0x4e

    return p0

    :pswitch_8e
    const/16 p0, 0x4d

    return p0

    :pswitch_8f
    const/16 p0, 0x4c

    return p0

    :pswitch_90
    const/16 p0, 0x4b

    return p0

    :pswitch_91
    const/16 p0, 0x4a

    return p0

    :pswitch_92
    const/16 p0, 0x49

    return p0

    :pswitch_93
    const/16 p0, 0x48

    return p0

    :pswitch_94
    const/16 p0, 0x47

    return p0

    :pswitch_95
    const/16 p0, 0x46

    return p0

    :pswitch_96
    const/16 p0, 0x45

    return p0

    :pswitch_97
    const/16 p0, 0x44

    return p0

    :pswitch_98
    const/16 p0, 0x43

    return p0

    :pswitch_99
    const/16 p0, 0x42

    return p0

    :pswitch_9a
    const/16 p0, 0x41

    return p0

    :pswitch_9b
    const/16 p0, 0x40

    return p0

    :pswitch_9c
    const/16 p0, 0x3f

    return p0

    :pswitch_9d
    const/16 p0, 0x3e

    return p0

    :pswitch_9e
    const/16 p0, 0x3d

    return p0

    :pswitch_9f
    const/16 p0, 0x3c

    return p0

    :pswitch_a0
    const/16 p0, 0x3b

    return p0

    :pswitch_a1
    const/16 p0, 0x3a

    return p0

    :pswitch_a2
    const/16 p0, 0x39

    return p0

    :pswitch_a3
    const/16 p0, 0x38

    return p0

    :pswitch_a4
    const/16 p0, 0x37

    return p0

    :pswitch_a5
    const/16 p0, 0x36

    return p0

    :pswitch_a6
    const/16 p0, 0x35

    return p0

    :pswitch_a7
    const/16 p0, 0x34

    return p0

    :pswitch_a8
    const/16 p0, 0x33

    return p0

    :pswitch_a9
    const/16 p0, 0x32

    return p0

    :pswitch_aa
    const/16 p0, 0x31

    return p0

    :pswitch_ab
    const/16 p0, 0x30

    return p0

    :pswitch_ac
    const/16 p0, 0x2f

    return p0

    :pswitch_ad
    const/16 p0, 0x2e

    return p0

    :pswitch_ae
    const/16 p0, 0x2d

    return p0

    :pswitch_af
    const/16 p0, 0x2c

    return p0

    :pswitch_b0
    const/16 p0, 0x2b

    return p0

    :pswitch_b1
    const/16 p0, 0x2a

    return p0

    :pswitch_b2
    const/16 p0, 0x29

    return p0

    :pswitch_b3
    const/16 p0, 0x28

    return p0

    :pswitch_b4
    const/16 p0, 0x27

    return p0

    :pswitch_b5
    const/16 p0, 0x26

    return p0

    :pswitch_b6
    const/16 p0, 0x25

    return p0

    :pswitch_b7
    const/16 p0, 0x24

    return p0

    :pswitch_b8
    const/16 p0, 0x23

    return p0

    :pswitch_b9
    const/16 p0, 0x22

    return p0

    :pswitch_ba
    const/16 p0, 0x21

    return p0

    :pswitch_bb
    const/16 p0, 0x20

    return p0

    :pswitch_bc
    const/16 p0, 0x1f

    return p0

    :pswitch_bd
    const/16 p0, 0x1e

    return p0

    :pswitch_be
    const/16 p0, 0x1d

    return p0

    :pswitch_bf
    const/16 p0, 0x1c

    return p0

    :pswitch_c0
    const/16 p0, 0x1b

    return p0

    :pswitch_c1
    const/16 p0, 0x1a

    return p0

    :pswitch_c2
    const/16 p0, 0x19

    return p0

    :pswitch_c3
    const/16 p0, 0x18

    return p0

    :pswitch_c4
    const/16 p0, 0x17

    return p0

    :pswitch_c5
    const/16 p0, 0x16

    return p0

    :pswitch_c6
    const/16 p0, 0x15

    return p0

    :pswitch_c7
    const/16 p0, 0x14

    return p0

    :pswitch_c8
    const/16 p0, 0x13

    return p0

    :pswitch_c9
    const/16 p0, 0x12

    return p0

    :pswitch_ca
    const/16 p0, 0x11

    return p0

    :pswitch_cb
    const/16 p0, 0x10

    return p0

    :pswitch_cc
    const/16 p0, 0xf

    return p0

    :pswitch_cd
    const/16 p0, 0xe

    return p0

    :pswitch_ce
    const/16 p0, 0xd

    return p0

    :pswitch_cf
    const/16 p0, 0xc

    return p0

    :pswitch_d0
    const/16 p0, 0xb

    return p0

    :pswitch_d1
    const/16 p0, 0xa

    return p0

    :pswitch_d2
    const/16 p0, 0x9

    return p0

    :pswitch_d3
    const/16 p0, 0x8

    return p0

    :pswitch_d4
    const/4 p0, 0x7

    return p0

    :pswitch_d5
    const/4 p0, 0x6

    return p0

    :pswitch_d6
    const/4 p0, 0x5

    return p0

    :pswitch_d7
    const/4 p0, 0x4

    return p0

    :pswitch_d8
    const/4 p0, 0x3

    return p0

    :pswitch_d9
    const/4 p0, 0x2

    return p0

    :pswitch_da
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public static x(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static final z(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, p1

    or-int v1, p1, p2

    sub-int/2addr v0, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    add-int v0, p1, p2

    new-array p2, p2, [C

    const/4 v2, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lkwp;->H(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p2, v2}, Lkwp;->E(B[CI)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v8, v2

    :cond_1
    :goto_1
    if-ge p1, v0, :cond_8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lkwp;->H(B)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v8, 0x1

    invoke-static {p1, p2, v8}, Lkwp;->E(B[CI)V

    move p1, v2

    move v8, v3

    :goto_2
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lkwp;->H(B)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v8, 0x1

    invoke-static {v2, p2, v8}, Lkwp;->E(B[CI)V

    move v8, v3

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkwp;->J(B)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v4, v8, 0x1

    invoke-static {p1, v2, p2, v8}, Lkwp;->G(BB[CI)V

    move p1, v3

    move v8, v4

    goto :goto_1

    :cond_3
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p1}, Lkwp;->I(B)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p1, v2, v3, p2, v8}, Lkwp;->F(BBB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_1

    :cond_5
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    move v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p2

    move v7, v8

    invoke-static/range {v2 .. v7}, Lkwp;->D(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    move p1, v9

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lnxd;->d()Lnxd;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final K(Ljava/lang/Object;Lnyk;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Lnvz;

    iget v1, v0, Lnvz;->b:I

    invoke-static {v1}, Lnzn;->a(I)I

    move-result v2

    invoke-static {v1}, Lnzn;->b(I)I

    move-result v1

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lnxd;->a()Lnxc;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-interface {p2}, Lnyk;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v2, v0}, Lnzn;->c(II)I

    move-result v0

    check-cast p1, Lnza;

    invoke-virtual {p1, v0, p2}, Lnza;->f(ILjava/lang/Object;)V

    return v3

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lnzn;->c(II)I

    move-result v1

    invoke-static {}, Lnza;->b()Lnza;

    move-result-object v4

    :cond_0
    invoke-interface {p2}, Lnyk;->c()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v4, p2}, Lkwp;->K(Ljava/lang/Object;Lnyk;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget p2, v0, Lnvz;->b:I

    if-ne v1, p2, :cond_2

    invoke-virtual {v4}, Lnza;->e()V

    const/4 p2, 0x3

    invoke-static {v2, p2}, Lnzn;->c(II)I

    move-result p2

    check-cast p1, Lnza;

    invoke-virtual {p1, p2, v4}, Lnza;->f(ILjava/lang/Object;)V

    return v3

    :cond_2
    invoke-static {}, Lnxd;->b()Lnxd;

    move-result-object p1

    throw p1

    :pswitch_3
    invoke-interface {p2}, Lnyk;->o()Lnvt;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lkwp;->L(Ljava/lang/Object;ILnvt;)V

    return v3

    :pswitch_4
    invoke-interface {p2}, Lnyk;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Lnzn;->c(II)I

    move-result v0

    check-cast p1, Lnza;

    invoke-virtual {p1, v0, p2}, Lnza;->f(ILjava/lang/Object;)V

    return v3

    :pswitch_5
    invoke-interface {p2}, Lnyk;->k()J

    move-result-wide v0

    invoke-static {p1, v2, v0, v1}, Lkwp;->M(Ljava/lang/Object;IJ)V

    return v3

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
