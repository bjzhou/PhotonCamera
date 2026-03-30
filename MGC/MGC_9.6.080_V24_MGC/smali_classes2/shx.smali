.class final Lshx;
.super Lshj;
.source "PG"


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(IJ)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Lshy;->h(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lshx;->b:J

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

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    iget-wide p2, p0, Lshx;->b:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v2, v0

    nop

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

    nop

    :goto_5
    iget v2, p0, Lshx;->c:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Lshx;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    and-long/2addr p2, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput-wide p1, p0, Lshx;->b:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p2}, Lshy;->g(II)I

    move-result p2

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

    :goto_c
    mul-int/lit8 v0, p1, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p0, Lshx;->c:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int p2, p2

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

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    iget v0, p0, Lshx;->a:I

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

    :goto_14
    iput-wide p2, p0, Lshx;->b:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Lshx;->c:I

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    :goto_19
    iput v0, p0, Lshx;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    or-long/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    const/16 p1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 p1, p1, -0x20

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v2, 0xffffffffL

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    shl-long/2addr p2, v2

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

    :goto_1f
    ushr-long p1, p2, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ge v2, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_22
    iput v2, p0, Lshx;->c:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Lshx;->d:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lshx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lshx;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lshj;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lshx;->d:I

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(C)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2}, Lshx;->33f5b80483094659737b73d90f80a8a4m(IJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    int-to-long v1, p1

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

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
.end method

.method public final d([BI)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    move v1, v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-direct {p0, v0, v2, v3}, Lshx;->33f5b80483094659737b73d90f80a8a4m(IJ)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    add-int/lit8 v0, v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v1}, Lshy;->f([BI)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    int-to-long v1, v1

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

    :goto_d
    invoke-static {v1, p2, v0}, Lrrf;->w(III)V

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    int-to-long v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v3, v1, v2}, Lshx;->33f5b80483094659737b73d90f80a8a4m(IJ)V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x3

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

    :goto_13
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1b
    if-le v0, p2, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    aget-byte v0, p1, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    if-lt v1, p2, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final m()Lshn;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lshy;->i(II)Lshn;

    move-result-object p0

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

    :goto_1
    iput v0, p0, Lshx;->a:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    invoke-static {v1}, Lshy;->h(I)I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lshx;->e:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    long-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_15

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    xor-int/2addr v0, v1

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

    :goto_11
    iget v0, p0, Lshx;->a:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    iget p0, p0, Lshx;->d:I

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

    :goto_14
    iget-wide v1, p0, Lshx;->b:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Lshx;->e:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    const/4 v1, 0x1

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
.end method
