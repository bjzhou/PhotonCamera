.class public final Lio;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:J

.field b:Lio;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lio;

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
    iget-object v0, p0, Lio;->b:Lio;

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lio;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lio;->b:Lio;

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lio;->a:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method


# virtual methods
.method final a(I)I
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    shl-long p0, v3, p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Lio;->a(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    shl-long p0, v3, p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    add-long/2addr p0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_9
    iget-wide p0, p0, Lio;->a:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x40

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1e

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    const-wide/16 v1, -0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v5, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ge p1, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v0, p0, Lio;->a:J

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    add-long/2addr p0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lio;->b:Lio;

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

    :goto_18
    goto/32 :goto_21

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    iget-wide v5, p0, Lio;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    iget-wide v5, p0, Lio;->a:J

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

    nop

    :goto_20
    return p1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    and-long/2addr p0, v5

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

    :goto_23
    if-lt p1, v5, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_24
    add-int/2addr p1, p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    and-long/2addr p0, v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    const-wide/16 v3, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method final b(I)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lio;->b:Lio;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    and-long/2addr v0, v2

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

    :goto_2
    const-wide/16 v2, 0x1

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

    :goto_3
    iput-wide v0, p0, Lio;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    not-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-ge p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lio;->b(I)V

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_10
    const/16 v0, 0x40

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p1, p1, -0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    shl-long/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v0, p0, Lio;->a:J

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
.end method

.method final c(IZ)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio;->c(IZ)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-long/2addr v4, v6

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

    :goto_2
    cmp-long v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v6, -0x1

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

    :goto_6
    shl-long/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    not-long v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b
    move v2, v3

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/high16 v2, -0x8000000000000000L

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lio;->e(I)V

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lio;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    and-long v6, v0, v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lio;->b:Lio;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    or-long/2addr v0, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ge p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    if-nez p1, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Lio;->b(I)V

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    :goto_23
    const-wide/16 v4, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v0, 0x40

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0}, Lio;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lio;->b:Lio;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v3, v2}, Lio;->c(IZ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 p1, p1, -0x40

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

    :goto_2a
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    goto :goto_1e

    nop

    nop

    :goto_2c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v0, p0, Lio;->a:J

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

    :goto_2f
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-long/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    add-long/2addr v0, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_32
    and-long/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0}, Lio;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_37

    nop

    nop

    :goto_34
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x0

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

    nop

    :goto_37
    iget-object p0, p0, Lio;->b:Lio;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop
.end method

.method public final d()V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lio;->b:Lio;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_8

    nop

    :goto_3
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lio;->a:J

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

    :goto_f
    const/16 v4, 0xc5

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
    const-wide/16 v0, 0x0

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

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lio;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xb

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lio;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/16 v0, 0x40

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    or-long/2addr v0, v2

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

    nop

    :goto_9
    if-ge p1, v0, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lio;->e(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    add-int/lit8 p1, p1, -0x40

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

    :goto_f
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v0, p0, Lio;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    :goto_15
    shl-long/2addr v2, p1

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

    :goto_16
    iget-object p0, p0, Lio;->b:Lio;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final f(I)Z
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-long/2addr p0, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    shl-long p0, v2, p1

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

    :goto_5
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x0

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

    :goto_9
    add-int/lit8 p1, p1, -0x40

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    const v1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :goto_11
    if-ge p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lio;->b:Lio;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    cmp-long p0, p0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Lio;->f(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Lio;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_12

    nop

    nop

    :goto_18
    return p0

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v0, p0, Lio;->a:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method final g(I)Z
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x1

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

    nop

    :goto_1
    const v0, 0x20

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    iget-object p0, p0, Lio;->b:Lio;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x3f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5
    invoke-static {v6, v7, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lio;->g(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lio;->e(I)V

    :goto_b
    goto/32 :goto_28

    nop

    nop

    :goto_c
    iget-object v0, p0, Lio;->b:Lio;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, -0x40

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    return p1

    nop

    :goto_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lio;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lio;->a:J

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
    const/4 v4, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    if-ge p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    iput-wide v2, p0, Lio;->a:J

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_18
    not-long v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    add-long/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v5}, Lio;->g(I)Z

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    and-long/2addr v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    or-long/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    and-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    and-long/2addr v6, v2

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

    :goto_22
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    shl-long/2addr v0, p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    not-long v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    goto :goto_34

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lio;->b:Lio;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v5}, Lio;->f(I)Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    iget-wide v2, p0, Lio;->a:J

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long p1, v4, v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide/16 v6, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-long v4, v2, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_31
    goto/32 :goto_2e

    nop

    nop

    :goto_32
    move p1, v4

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_33
    move p1, v5

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lio;->b:Lio;

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

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    iget-wide v0, p0, Lio;->a:J

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v1, p0, Lio;->a:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_9
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lio;->b:Lio;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    :goto_13
    const v1, 0x18

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "xx"

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

    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lio;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
