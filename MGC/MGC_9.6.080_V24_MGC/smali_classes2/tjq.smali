.class public final Ltjq;
.super Ltjs;
.source "PG"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int v3, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    or-int v0, p2, p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltjq;->a:[B

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    array-length v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ltjs;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Ltjq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    add-int v1, p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    or-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    const-string p1, "buffer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    const v1, 0xf

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop
.end method


# virtual methods
.method public final A(II)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0x3c8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    aput-object v1, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    new-array v0, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Ltmz;->c(II)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final B(II)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2}, Ltjq;->C(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final C(I)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    ushr-int/lit8 p1, p1, 0x7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    goto :goto_6

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    goto/32 :goto_6

    nop

    :goto_11
    new-instance v0, Ltjr;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Ltjq;->a:[B

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    int-to-byte p1, p1

    nop

    nop

    nop

    aput-byte p1, v0, v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :goto_16
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    or-int/lit16 v2, p1, 0x80

    nop

    nop

    nop

    nop

    and-int/lit16 v2, v2, 0xff

    nop

    int-to-byte v2, v2

    nop

    aput-byte v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    and-int/lit8 v0, p1, -0x80

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    const-string v1, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final D(IJ)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2, p3}, Ltjq;->E(J)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final E(J)V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    :goto_0
    ushr-long/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit16 v6, v6, 0xff

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p2, Ltjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4
    ushr-long/2addr p1, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v4, -0x80

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0, v1, p0}, Ltmu;->l([BJB)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p2, p0, Ltjq;->c:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_e
    int-to-byte v6, v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v7, v8, v6}, Ltmu;->l([BJB)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    or-int/lit16 v6, v6, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    long-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    aput-byte p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    iget v6, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v7, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    long-to-int v7, p1

    nop

    nop

    or-int/lit16 v7, v7, 0x80

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v7, v7, 0xff

    nop

    nop

    nop

    nop

    int-to-byte v7, v7

    nop

    aput-byte v7, v0, v6

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-long v6, p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v8, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v0, p2, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    sget-boolean v0, Ltjs;->e:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Ltjq;->a:[B

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v7, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v6, 0xa

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    cmp-long v0, v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2c
    and-long v6, p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2e
    int-to-long v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_32
    int-to-long v0, p2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p2, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-byte p0, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_35
    cmp-long v0, v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ltjq;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    iput v8, p0, Ltjq;->c:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    long-to-int v6, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    if-ge v0, v6, :cond_4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    :goto_3c
    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final F([BI)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ltjq;->C(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p1, v0, p2}, Ltjq;->c([BII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final a([BII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ltjq;->c([BII)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    sub-int/2addr v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ltjq;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c([BII)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    iget v0, p0, Ltjq;->c:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_0
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ltjq;->c:I

    nop

    nop

    add-int/2addr p1, p3

    nop

    nop

    iput p1, p0, Ltjq;->c:I

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p2

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    new-instance p2, Ltjr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-direct {p2, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const-string p3, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final j(B)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, p0, Ltjq;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    move v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    iget v0, p0, Ltjq;->c:I

    nop

    :try_start_0
    iget-object v1, p0, Ltjq;->a:[B

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int/lit8 v2, v0, 0x1

    nop

    nop

    nop

    nop

    :try_start_1
    aput-byte p1, v1, v0

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    new-instance v1, Ltjr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final l(IZ)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Ltjq;->j(B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final m(ILtjj;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ltjq;->n(Ltjj;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final n(Ltjj;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Ltjj;->k(Ltjc;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ltjq;->C(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ltjq;->p(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final p(I)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v3, p1, 0xff

    nop

    nop

    int-to-byte v3, v3

    nop

    nop

    nop

    nop

    nop

    aput-byte v3, v0, v1

    nop

    nop

    nop

    add-int/lit8 v3, v1, 0x2

    nop

    nop

    nop

    nop

    iput v3, p0, Ltjq;->c:I

    nop

    shr-int/lit8 v4, p1, 0x8

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    nop

    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    aput-byte v4, v0, v2

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x3

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    shr-int/lit8 v4, p1, 0x10

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    nop

    aput-byte v4, v0, v3

    nop

    nop

    add-int/lit8 v1, v1, 0x4

    nop

    nop

    nop

    iput v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    shr-int/lit8 p1, p1, 0x18

    nop

    nop

    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    nop

    int-to-byte p1, p1

    nop

    aput-byte p1, v0, v2

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Ltjq;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ltjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const-string v1, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final q(IJ)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2, p3}, Ltjq;->r(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(J)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    :goto_0
    iget p0, p0, Ltjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    throw p2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p0, p1}, Ltjr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltjq;->c:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v0, p0, Ltjq;->a:[B

    nop

    nop

    iget v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    long-to-int v3, p1

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v3, v3, 0xff

    nop

    nop

    int-to-byte v3, v3

    nop

    nop

    nop

    aput-byte v3, v0, v1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v1, 0x2

    nop

    nop

    iput v3, p0, Ltjq;->c:I

    nop

    nop

    const/16 v4, 0x8

    nop

    shr-long v5, p1, v4

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    int-to-byte v5, v5

    nop

    aput-byte v5, v0, v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x3

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    const/16 v5, 0x10

    nop

    nop

    nop

    nop

    nop

    shr-long v5, p1, v5

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    nop

    int-to-byte v5, v5

    nop

    nop

    nop

    nop

    nop

    aput-byte v5, v0, v3

    nop

    nop

    nop

    add-int/lit8 v3, v1, 0x4

    nop

    nop

    nop

    nop

    iput v3, p0, Ltjq;->c:I

    nop

    const/16 v5, 0x18

    nop

    nop

    nop

    nop

    nop

    shr-long v5, p1, v5

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    int-to-byte v5, v5

    nop

    nop

    aput-byte v5, v0, v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v1, 0x5

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    const/16 v5, 0x20

    nop

    nop

    nop

    nop

    nop

    shr-long v5, p1, v5

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    int-to-byte v5, v5

    nop

    nop

    nop

    aput-byte v5, v0, v3

    nop

    add-int/lit8 v3, v1, 0x6

    nop

    nop

    nop

    nop

    iput v3, p0, Ltjq;->c:I

    nop

    nop

    nop

    const/16 v5, 0x28

    nop

    shr-long v5, p1, v5

    nop

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    nop

    int-to-byte v5, v5

    nop

    aput-byte v5, v0, v2

    nop

    add-int/lit8 v2, v1, 0x7

    nop

    nop

    nop

    iput v2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    const/16 v5, 0x30

    nop

    nop

    nop

    nop

    nop

    shr-long v5, p1, v5

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    nop

    int-to-byte v5, v5

    nop

    nop

    aput-byte v5, v0, v3

    nop

    nop

    nop

    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    iput v1, p0, Ltjq;->c:I

    nop

    const/16 v1, 0x38

    nop

    shr-long/2addr p1, v1

    nop

    nop

    nop

    nop

    long-to-int p1, p1

    nop

    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    nop

    nop

    int-to-byte p1, p1

    nop

    nop

    nop

    aput-byte p1, v0, v2

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    new-instance p2, Ltjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    const-string v0, "Pos: %d, limit: %d, len: %d"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final s(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ltjq;->t(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final t(I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    int-to-long v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltjq;->C(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, v1}, Ltjq;->E(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final u(ILtlq;Ltmf;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast p1, Ltis;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltjq;->f:Lqnt;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltjq;->C(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p3}, Ltis;->e(Ltmf;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p3, p2, p0}, Ltmf;->m(Ljava/lang/Object;Lqnt;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v(Ltlq;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Ltlq;->dd(Ltjs;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ltlq;->l()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ltjq;->C(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final w(ILtlq;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v2, p1}, Ltjq;->B(II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v1}, Ltjq;->A(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, p1}, Ltjq;->A(II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Ltjq;->v(Ltlq;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1, v2}, Ltjq;->A(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final x(ILtjj;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1, p2}, Ltjq;->m(ILtjj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Ltjq;->A(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2, p1}, Ltjq;->B(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, p1}, Ltjq;->A(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method

.method public final y(ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Ltjq;->z(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjq;->A(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final z(Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Ltjq;->c:I

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    mul-int/lit8 v1, v1, 0x3

    nop

    nop

    invoke-static {v1}, Ltjq;->ab(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ltjq;->ab(I)I

    move-result v2

    nop

    nop

    if-ne v2, v1, :cond_0

    nop

    nop

    nop

    nop

    add-int v1, v0, v2

    nop

    iput v1, p0, Ltjq;->c:I

    nop

    nop

    iget-object v3, p0, Ltjq;->a:[B

    nop

    nop

    invoke-virtual {p0}, Ltjq;->b()I

    move-result v4

    nop

    nop

    nop

    invoke-static {p1, v3, v1, v4}, Ltmw;->a(Ljava/lang/String;[BII)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    sub-int v3, v1, v0

    nop

    nop

    nop

    sub-int/2addr v3, v2

    nop

    invoke-virtual {p0, v3}, Ltjq;->C(I)V

    iput v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {p1}, Ltmw;->b(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Ltjq;->C(I)V

    iget-object v1, p0, Ltjq;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ltjq;->b()I

    move-result v3

    nop

    nop

    nop

    invoke-static {p1, v1, v2, v3}, Ltmw;->a(Ljava/lang/String;[BII)I

    move-result v1

    nop

    nop

    nop

    nop

    iput v1, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltmv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ltjr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput v0, p0, Ltjq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, v1}, Ltjs;->ai(Ljava/lang/String;Ltmv;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x16

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p0}, Ltjr;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_10
    goto/32 :goto_d

    nop
.end method
