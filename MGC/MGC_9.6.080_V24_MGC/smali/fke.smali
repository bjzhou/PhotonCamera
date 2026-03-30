.class public final Lfke;
.super Ljava/io/FilterInputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field private static final a:[B

.field private static final b:I


# instance fields
.field private final c:B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput v0, Lfke;->b:I

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
    new-array v0, v0, [B

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_4

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

    :array_0
    .array-data 1
        -0x1t
        -0x1ft
        0x0t
        0x1ct
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
        0x4dt
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x1t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :goto_3
    const/16 v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lfke;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ge p2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-byte p1, p0, Lfke;->c:B

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    if-le p2, p1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const-string p1, "Cannot add invalid orientation: "

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

    :goto_8
    invoke-static {p2, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    int-to-byte p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_3

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    nop
.end method


# virtual methods
.method public final mark(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_2

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
.end method

.method public final markSupported()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final read()I
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    aget-byte v0, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/16 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    sget v1, Lfke;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_a
    if-ge v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lfke;->d:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    if-gt v0, v1, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Lfke;->d:I

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lfke;->d:I

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

    :goto_15
    iget-byte v0, p0, Lfke;->c:B

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Lfke;->a:[B

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final read([BII)I
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    move p1, p3

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget-byte p3, p0, Lfke;->c:B

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_1

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
    iget p2, p0, Lfke;->d:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const/4 p1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lfke;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lfke;->a:[B

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    add-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    aput-byte p3, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_13
    if-lt v0, v2, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const v1, 0x6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v1, v1, -0x2

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

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    if-gtz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_1d
    iget v1, p0, Lfke;->d:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-super {p0, p1, p2, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    sget v1, Lfke;->b:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    iput p2, p0, Lfke;->d:I

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-gt v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    :goto_26
    return p1

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xb

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final reset()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final skip(J)J
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x0

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-long v0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmp-long v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return-wide p1

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
    const v0, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    long-to-int v0, v0

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

    :goto_f
    add-long/2addr v0, p1

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

    :goto_10
    iput v0, p0, Lfke;->d:I

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    iget v0, p0, Lfke;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
