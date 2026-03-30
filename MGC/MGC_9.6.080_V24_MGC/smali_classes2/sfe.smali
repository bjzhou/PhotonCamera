.class final Lsfe;
.super Lsfg;
.source "PG"


# instance fields
.field public final a:[I

.field public final b:I

.field private final c:Lsep;

.field private final d:Lsep;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Lsdr;[II)I
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_17

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

    goto/32 :goto_4

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-lt v0, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget v1, p2, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Lsdr;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    and-int/lit8 v1, v1, 0x1f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1}, Lsfe;->e(I)Lsdr;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const/4 p0, -0x1

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
.end method

.method public constructor <init>(Lsep;Lsep;)V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p2, 0x1c

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lsfe;->a:[I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    aget v3, p1, v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    aput v0, p1, p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    move p2, v0

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    move p2, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v3, p1, v2

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

    :goto_9
    iget-boolean v3, v4, Lsdr;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    move v3, v0

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmp-long v2, v5, v2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v5, v4, Lsdr;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_10
    array-length v4, p1

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

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Lsep;->b()I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    :goto_14
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p2, p0, Lsfe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_16
    move p2, v0

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

    nop

    :goto_18
    move p2, v2

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_17

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    :goto_1d
    goto/16 :goto_c

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v0, 0x4

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

    :goto_20
    move-wide v2, v5

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

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lsfe;->e(I)Lsdr;

    move-result-object v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_23
    new-array p1, p1, [I

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

    :goto_24
    const-string v2, "metadata size too large"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_25
    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    shl-int v4, v1, v4

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    :goto_28
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lt v0, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2f
    if-le p1, p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_30
    or-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lsfg;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v2, p2, 0x1

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

    :goto_34
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_37
    const v1, 0xf

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

    :goto_38
    invoke-static {p2, v2}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    :goto_39
    iput-object p1, p0, Lsfe;->c:Lsep;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3a
    iput-object p2, p0, Lsfe;->d:Lsep;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3b
    or-long/2addr v5, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, v4, p1, p2}, Lsfe;->19e596a3e324281407eb5c11093c0152m(Lsdr;[II)I

    move-result v2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lsfe;->b:I

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

.method public final b(Lsdr;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v0, 0x1b

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lsfe;->f(I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_5
    iget-object v0, p0, Lsfe;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    aget v0, v1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const-string v1, "key must be single valued"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_f
    invoke-virtual {p1, p0}, Lsdr;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object v1, p0, Lsfe;->a:[I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v1, 0x14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1, v0, v1}, Lsfe;->19e596a3e324281407eb5c11093c0152m(Lsdr;[II)I

    move-result v0

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

    :goto_17
    iget-boolean v0, p1, Lsdr;->b:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    iget v1, p0, Lsfe;->b:I

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
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lsfc;-><init>(Lsfe;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance v0, Lsfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop
.end method

.method public final d(Lsew;Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

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

    :goto_2
    new-instance v3, Lsfd;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lsfe;->a:[I

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

    :goto_c
    and-int/lit8 v2, v1, 0x1f

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

    :goto_d
    invoke-virtual {p1, v2, v1, p2}, Lsew;->a(Lsdr;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Lsdr;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iget-boolean v3, v2, Lsdr;->b:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v2}, Lsfe;->e(I)Lsdr;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v3, p0, v2, v1}, Lsfd;-><init>(Lsfe;Lsdr;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lsfe;->f(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget v1, p0, Lsfe;->b:I

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

    :goto_17
    invoke-virtual {p1, v2, v3, p2}, Lsew;->b(Lsdr;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_18
    goto/32 :goto_1

    nop

    nop

    :goto_19
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt v0, v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_1f
    aget v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final e(I)Lsdr;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez p1, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsfe;->c:Lsep;

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsfe;->d:Lsep;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lsep;->c(I)Lsdr;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsfe;->c:Lsep;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lsep;->e(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsfe;->d:Lsep;

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

    :goto_5
    goto :goto_1

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop
.end method
