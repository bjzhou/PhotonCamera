.class public final Ltjp;
.super Ltjs;
.source "PG"


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method private final 2e93aa56b061ffac37dcfd2c79a0c8ccm()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    iget-object v2, p0, Ltjp;->a:[B

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Ltjp;->g:Ljava/io/OutputStream;

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

    :goto_6
    iput v3, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    const-string p1, "out"

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

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ltjs;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length p2, p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const-string p1, "bufferSize must be >= 0"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/NullPointerException;

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

    nop

    nop

    :goto_c
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

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

    nop

    :goto_d
    new-array p2, p2, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iput-object p1, p0, Ltjp;->g:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    if-gez p2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    iput p2, p0, Ltjp;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method private final adaea855441dbc84b995b0cb750b08c8m(I)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lt v0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

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

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ltjp;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget v0, p0, Ltjp;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop
.end method


# virtual methods
.method public final A(II)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput-object v1, v0, v3

    nop

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

    :goto_3
    const/16 v2, 0x264

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v1, 0x10

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p2}, Ltmz;->c(II)I

    move-result p1

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

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    const v0, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final B(II)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Ltjp;->g(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final C(I)V
    .locals 1

    goto/32 :goto_3

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

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltjp;->g(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final D(IJ)V
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/16 v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2, p3}, Ltjp;->h(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final E(J)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ltjp;->h(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final F([BI)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2}, Ltjp;->C(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Ltjp;->k([BII)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

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

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ltjp;->k([BII)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method final c(B)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget p1, p0, Ltjp;->d:I

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

    :goto_3
    aput-byte p1, v1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iput p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ltjp;->a:[B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method final d(I)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-byte p1, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    aput-byte v4, v3, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    int-to-byte v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    iput v0, p0, Ltjp;->c:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v0, 0x3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    shr-int/lit8 p1, p1, 0x18

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    add-int/lit8 p1, p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    aput-byte v4, v3, v1

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

    :goto_13
    and-int/lit16 v2, p1, 0xff

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    iput v2, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_18
    aput-byte p1, v3, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    aput-byte v2, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    iput p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-byte v4, v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    and-int/lit16 p1, p1, 0xff

    nop

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

    nop

    :goto_1f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, p0, Ltjp;->c:I

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

    :goto_21
    goto/32 :goto_4

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    shr-int/lit8 v4, p1, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v2, v0, 0x2

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

    nop

    :goto_25
    shr-int/lit8 v4, p1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method final e(J)V
    .locals 9

    goto/32 :goto_9

    nop

    nop

    :goto_0
    long-to-int p1, p1

    nop

    nop

    goto/32 :goto_e

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    shr-long v7, p1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    const/16 v6, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    long-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    and-long/2addr v2, v7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const/16 v3, 0x28

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    shr-long v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_c
    and-int/lit16 v3, v3, 0xff

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit16 p1, p1, 0xff

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr p1, v6

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

    :goto_12
    long-to-int v4, v4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    iput v1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v5, p0, Ltjp;->a:[B

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v2, 0xff

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v2, v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_19
    shr-long v7, p1, v7

    nop

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

    :goto_1a
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1c
    aput-byte v4, v5, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    long-to-int v7, v7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    shr-long v3, p1, v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_20
    long-to-int v2, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    shr-long/2addr p1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    and-int/lit16 v2, v2, 0xff

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    and-long/2addr v7, v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput-byte v7, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_26
    const/16 v0, 0x38

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    add-int/lit8 v4, v0, 0x2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    aput-byte v3, v5, v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    aput-byte v2, v5, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2b
    const/16 v7, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    add-int/lit8 v1, v0, 0x5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2d
    int-to-byte v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    iput v1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    const/16 v3, 0x30

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_30
    const/16 v7, 0x18

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    and-long/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    int-to-byte v4, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput-byte v3, v5, v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_36
    long-to-int v7, v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    and-int/lit16 v3, v3, 0xff

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    shr-long v3, p1, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aput-byte v2, v5, v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3a
    shr-long v2, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v1, v0, 0x1

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

    nop

    nop

    :goto_3c
    iget p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    iput v4, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3e
    aput-byte p1, v5, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-byte v3, v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_40
    add-int/lit8 v1, v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v4, v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_42
    int-to-byte v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_43
    iput v4, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_45
    iput v2, p0, Ltjp;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_47
    and-long v4, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_48
    long-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_49
    add-int/lit8 v1, v0, 0x7

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

    nop

    :goto_4a
    aput-byte v7, v5, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4b
    int-to-byte v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    const v1, 0x19

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4d
    add-int/2addr v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method final f(II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjp;->g(I)V

    goto/32 :goto_1

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

    nop

    :goto_2
    invoke-static {p1, p2}, Ltmz;->c(II)I

    move-result p1

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
.end method

.method final g(I)V
    .locals 6

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    int-to-long v3, v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ltjp;->d:I

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/16 :goto_40

    nop

    :goto_7
    goto/32 :goto_41

    nop

    nop

    :goto_8
    iget-object v2, p0, Ltjp;->a:[B

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v3, v4, p1}, Ltmu;->l([BJB)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Ltjp;->c:I

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_c
    or-int/lit16 v2, p1, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
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

    nop

    :goto_e
    int-to-byte p1, p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_10
    iput p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v2, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    long-to-int v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_16
    int-to-byte v5, v5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-boolean v0, Ltjs;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    ushr-int/lit8 p1, p1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-byte p1, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-byte v2, v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1e
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    or-int/lit16 v5, p1, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    iget p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    goto/32 :goto_3e

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    :goto_25
    iget v3, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_26
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    iput v4, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-long/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2a
    aput-byte p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v4, p0, Ltjp;->c:I

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

    :goto_2c
    and-int/lit8 v2, p1, -0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2f
    const v1, 0xe

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_30
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    iget v3, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_32
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2, v3, v4, v5}, Ltmu;->l([BJB)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    and-int/lit16 v5, v5, 0xff

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aput-byte v2, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    ushr-int/lit8 p1, p1, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v2, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-long v0, v0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2c

    nop

    nop

    :goto_41
    and-int/lit8 v0, p1, -0x80

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_42
    iget v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_44
    const v0, 0x1d

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_45
    iget p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop
.end method

.method final h(J)V
    .locals 11

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-long v6, p1, v4

    nop

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    :goto_2
    int-to-long v9, v9

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    and-long v8, p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_6
    const-wide/16 v4, -0x80

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    cmp-long v0, v6, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-byte v6, v6

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Ltjp;->d:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    iget v7, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f
    int-to-long v6, v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_12
    iget p2, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_13
    iget v9, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    and-int/lit16 v8, v8, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3f

    nop

    :goto_1a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Ltjp;->a:[B

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v10, v9, 0x1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1d
    long-to-int v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    iget-object p1, p0, Ltjp;->a:[B

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Ltjp;->c:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    ushr-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput-byte v0, p1, p2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    long-to-int v8, p1

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

    :goto_25
    int-to-byte v8, v8

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_26
    iget p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    :goto_29
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-long v0, p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2b
    sget-boolean v0, Ltjs;->e:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-byte v0, v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v0, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_30
    iput p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v0, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    or-int/lit16 v8, v8, 0x80

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget p2, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0xe

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_35
    cmp-long v0, v8, v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    ushr-long/2addr p1, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_39
    iput v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3a
    iput v8, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v9, v10, v8}, Ltmu;->l([BJB)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-byte p2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v8, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_0

    nop

    nop

    :goto_40
    int-to-long p1, p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_41
    iput v0, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p1, v0, v1, p2}, Ltmu;->l([BJB)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    or-int/lit16 v6, v6, 0x80

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aput-byte v6, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_48
    sub-long/2addr p1, v6

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

    :goto_49
    iput v10, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4b
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4c
    and-int/lit16 v6, v6, 0xff

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltjp;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final j(B)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v1, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Ltjp;->b:I

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

    :goto_3
    invoke-direct {p0}, Ltjp;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
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

    :goto_e
    invoke-virtual {p0, p1}, Ltjp;->c(B)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k([BII)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_1
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Ltjp;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Ltjp;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iput p3, p0, Ltjp;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iget v1, p0, Ltjp;->c:I

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

    :goto_e
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ge v0, p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr p1, p3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ltjp;->g:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-le p3, v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ltjp;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    goto/32 :goto_7

    nop

    nop

    :goto_18
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    add-int/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput p1, p0, Ltjp;->d:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x17

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr p1, p3

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

    :goto_1e
    iput v1, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr p2, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    iget p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_27
    iput p1, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

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

    :goto_2b
    iput p1, p0, Ltjp;->c:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    iget v1, p0, Ltjp;->d:I

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

    :goto_2d
    iget v0, p0, Ltjp;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2e
    iput v1, p0, Ltjp;->c:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Ltjp;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

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

    :goto_0
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Ltjp;->c(B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final m(ILtjj;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Ltjp;->A(II)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Ltjp;->n(Ltjj;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final n(Ltjj;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ltjp;->C(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p1, p0}, Ltjj;->k(Ltjc;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final o(II)V
    .locals 1

    goto/32 :goto_3

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

    nop

    :goto_1
    const/4 v0, 0x5

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
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Ltjp;->d(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final p(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjp;->d(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final q(IJ)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2, p3}, Ltjp;->e(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final r(J)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ltjp;->e(J)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(II)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Ltjp;->g(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ltjp;->h(J)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Ltjp;->f(II)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ltjp;->adaea855441dbc84b995b0cb750b08c8m(I)V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-gez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final t(I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjp;->C(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-long v0, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Ltjp;->E(J)V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    const v1, 0x9

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
.end method

.method public final u(ILtlq;Ltmf;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p3}, Ltis;->e(Ltmf;)I

    move-result p1

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
    iget-object p0, p0, Ltjp;->f:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3, p2, p0}, Ltmf;->m(Ljava/lang/Object;Lqnt;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    move-object p1, p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ltjp;->C(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ltis;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, v0}, Ltjp;->A(II)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final v(Ltlq;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Ltlq;->dd(Ltjs;)V

    goto/32 :goto_1

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
    invoke-virtual {p0, v0}, Ltjp;->C(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ltlq;->l()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final w(ILtlq;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    invoke-virtual {p0, v2, p1}, Ltjp;->B(II)V

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Ltjp;->A(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

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

    nop

    :goto_f
    invoke-virtual {p0, v1, v2}, Ltjp;->A(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, p1}, Ltjp;->A(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2}, Ltjp;->v(Ltlq;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final x(ILtjj;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1, p2}, Ltjp;->m(ILtjj;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2, p1}, Ltjp;->B(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Ltjp;->A(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, p1}, Ltjp;->A(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p1, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final y(ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

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

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Ltjp;->A(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p2}, Ltjp;->z(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final z(Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    mul-int/lit8 v0, v0, 0x3

    nop

    nop

    invoke-static {v0}, Ltjp;->ab(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    add-int v2, v1, v0

    nop

    nop

    nop

    iget v3, p0, Ltjp;->b:I

    nop

    if-le v2, v3, :cond_2

    nop

    nop

    nop

    nop

    new-array v1, v0, [B

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1, v2, v0}, Ltmw;->a(Ljava/lang/String;[BII)I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ltjp;->C(I)V

    invoke-virtual {p0, v1, v2, v0}, Ltjp;->k([BII)V

    return-void

    nop

    :cond_2
    iget v0, p0, Ltjp;->c:I

    nop

    nop

    sub-int/2addr v3, v0

    nop

    if-le v2, v3, :cond_3

    nop

    invoke-direct {p0}, Ltjp;->2e93aa56b061ffac37dcfd2c79a0c8ccm()V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    invoke-static {v0}, Ltjp;->ab(I)I

    move-result v0

    nop

    nop

    iget v2, p0, Ltjp;->c:I

    nop

    nop

    nop
    :try_end_0
    .catch Ltmv; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, v0}, Ltjs;->ai(Ljava/lang/String;Ltmv;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    add-int v1, v2, v0

    nop

    nop

    nop

    :try_start_1
    iput v1, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ltjp;->a:[B

    nop

    nop

    nop

    iget v4, p0, Ltjp;->b:I

    nop

    nop

    sub-int/2addr v4, v1

    nop

    invoke-static {p1, v3, v1, v4}, Ltmw;->a(Ljava/lang/String;[BII)I

    move-result v1

    nop

    nop

    nop

    nop

    iput v2, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    nop

    sub-int v3, v1, v2

    nop

    nop

    nop

    sub-int/2addr v3, v0

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Ltjp;->g(I)V

    iput v1, p0, Ltjp;->c:I

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ltmw;->b(Ljava/lang/String;)I

    move-result v3

    nop

    invoke-virtual {p0, v3}, Ltjp;->g(I)V

    iget-object v0, p0, Ltjp;->a:[B

    nop

    nop

    nop

    iget v1, p0, Ltjp;->c:I

    nop

    nop

    invoke-static {p1, v0, v1, v3}, Ltmw;->a(Ljava/lang/String;[BII)I

    move-result v0

    nop

    iput v0, p0, Ltjp;->c:I

    nop

    :goto_c
    iget v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    add-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Ltjp;->d:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ltmv; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    new-instance v1, Ltjr;

    nop

    invoke-direct {v1, v0}, Ltjr;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    iget v1, p0, Ltjp;->d:I

    nop

    nop

    iget v3, p0, Ltjp;->c:I

    nop

    nop

    nop

    sub-int/2addr v3, v2

    nop

    nop

    nop

    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Ltjp;->d:I

    nop

    nop

    nop

    iput v2, p0, Ltjp;->c:I

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ltmv; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

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

    :goto_f
    const v1, 0x1d

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
.end method
