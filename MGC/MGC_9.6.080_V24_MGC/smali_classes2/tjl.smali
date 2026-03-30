.class final Ltjl;
.super Ltjn;
.source "PG"


# instance fields
.field private final d:Ljava/io/InputStream;

.field private final e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private final 3d137ff4afbdf0b6afbfa059c81ece9bm(I)[B
    .locals 6

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

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

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    :goto_2
    const v0, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    sget-object p0, Ltkw;->b:[B

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

    :goto_4
    if-le v1, v2, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    add-int/2addr v2, p1

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

    :goto_7
    invoke-static {v2, v1, v0, v3}, Ltjl;->G(Ljava/io/InputStream;[BII)I

    move-result v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Ltjl;->h:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ltky;

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

    nop

    :goto_b
    iget v2, p0, Ltjl;->j:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    :goto_e
    if-ge v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

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

    :goto_10
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Ltjl;->j:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Ltjl;->e:[B

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_49

    nop

    :goto_1e
    invoke-virtual {p0, v3}, Ltjl;->B(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    const v3, -0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Ltjl;->d:Ljava/io/InputStream;

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

    :goto_22
    sub-int v3, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v4}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v3, -0x1

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Ltjl;->j:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    iput v2, p0, Ltjl;->j:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    new-array v1, p1, [B

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_29
    invoke-direct {p0, v4}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2a
    add-int v2, v0, v1

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

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2e
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    iput v5, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_30
    return-object v1

    nop

    nop

    :goto_31
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/2addr v3, v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_33
    iput v3, p0, Ltjl;->j:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v2, 0x1000

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance p0, Ltky;

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

    nop

    :goto_36
    if-lez v3, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_37
    throw p0

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v3, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    add-int/2addr v3, v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3d
    if-lt v0, p1, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sub-int v1, p1, v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3f
    throw p0

    nop

    nop

    :goto_40
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_41
    iput v5, p0, Ltjl;->f:I

    nop

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    if-le v2, v3, :cond_7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    iget v3, p0, Ltjl;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_47
    const-string v4, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_2c

    nop

    nop

    :goto_49
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4a
    iget v3, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Ltky;->a()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4c
    goto :goto_42

    nop

    nop

    :goto_4d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 6d3821fac0840ee9e72137504d3d1e1em(I)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

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
    return-void

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    sub-int/2addr v0, v1

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

    :goto_8
    sub-int/2addr v0, p0

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

    nop

    :goto_9
    const v0, 0x7fffffff

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    if-gt p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_12
    iget v1, p0, Ltjl;->j:I

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

    :goto_13
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    :goto_19
    iget p0, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1}, Ltjl;->e64574a1d280db82707a389ccd89cbd5m(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltkw;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v0, 0x7fffffff

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ltjl;->j:I

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_4
    iput p1, p0, Ltjl;->h:I

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

    :goto_5
    invoke-direct {p0}, Ltjn;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Ltjl;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    new-array p1, p1, [B

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iput-object p1, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Ltjl;->e:[B

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const/16 p1, 0x1000

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iput p1, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private static G(Ljava/io/InputStream;[BII)I
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltky;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop
.end method

.method private final aaadf0a9c0da915f2782a301bde92c44m(I)Ljava/util/List;
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

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

    :goto_3
    new-array v2, v1, [B

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz p1, :cond_0

    nop

    goto/32 :goto_15

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

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    sub-int/2addr p1, v1

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

    nop

    :goto_9
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lt v3, v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    :goto_e
    const/16 v1, 0x1000

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x6

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

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_19

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
    return-object v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

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

    :goto_1b
    new-instance p0, Ltky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    if-ne v4, v5, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    iput v5, p0, Ltjl;->j:I

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

    :goto_1e
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    const/4 v5, -0x1

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

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_21
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Ltjl;->d:Ljava/io/InputStream;

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

    nop

    :goto_23
    goto/32 :goto_17

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    sub-int v5, v1, v3

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

    nop

    :goto_27
    iget v5, p0, Ltjl;->j:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private final be151ed735e22b140a0c39ad063416c4m(I)[B
    .locals 4

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_1
    iput v1, p0, Ltjl;->h:I

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
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    check-cast v0, [B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v1, p0, Ltjl;->f:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    sub-int v2, v1, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ltjl;->e:[B

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v1, 0x6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    sub-int v3, p1, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    return-object v0

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ltjl;->3d137ff4afbdf0b6afbfa059c81ece9bm(I)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    new-array p1, p1, [B

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

    :goto_1a
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v3}, Ltjl;->aaadf0a9c0da915f2782a301bde92c44m(I)Ljava/util/List;

    move-result-object v3

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

    nop

    :goto_1d
    iget v3, p0, Ltjl;->j:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    iput v3, p0, Ltjl;->j:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    return-object p1

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    add-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop
.end method

.method private final e64574a1d280db82707a389ccd89cbd5m(I)Z
    .locals 7

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltjl;->e64574a1d280db82707a389ccd89cbd5m(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_59

    nop

    nop

    :goto_6
    if-ge v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    const-string v0, "refillBuffer() called when "

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    invoke-static {v0, v4, v2, v1}, Ltjl;->G(Ljava/io/InputStream;[BII)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ltjl;->eea145e9133b6dc4d05865ac9c46590fm()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Ltjl;->j:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_12
    add-int v1, v0, p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

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

    :goto_16
    iget-object v0, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Ltjl;->f:I

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

    :goto_19
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    const-string v1, " bytes were already available in buffer"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v4, p1

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

    :goto_1c
    iput v1, p0, Ltjl;->j:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iget-object v4, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    sub-int/2addr v3, v2

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

    nop

    :goto_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4b

    nop

    :goto_21
    sub-int/2addr v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    const-string p0, "\nThe InputStream implementation is buggy."

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v1, v0

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

    :goto_24
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    return v5

    nop

    nop

    :goto_27
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_28
    sub-int/2addr v2, v0

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_29
    if-ge v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    :goto_2a
    iget v1, p0, Ltjl;->f:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_2c
    if-gt p1, v4, :cond_4

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v2, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2f
    if-gt v4, v6, :cond_5

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rsub-int v1, v2, 0x1000

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_33
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v1, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_36
    return v5

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-gtz v0, :cond_6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    iget v6, p0, Ltjl;->k:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    if-gt v2, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    invoke-static {p1, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    const v3, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_43
    const v0, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_45
    iget v1, p0, Ltjl;->j:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string p0, "#read(byte[]) returned invalid result: "

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

    :goto_48
    iput v5, p0, Ltjl;->h:I

    nop

    :goto_49
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_4d

    nop

    nop

    :goto_4b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    throw p0

    nop

    :goto_4d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    iget v0, p0, Ltjl;->h:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4f
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-le v0, v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_9
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_51
    return v5

    nop

    nop

    :goto_52
    goto/32 :goto_38

    nop

    nop

    :goto_53
    if-gt v1, v2, :cond_a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_54
    return p0

    nop

    nop

    :goto_55
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_56
    sub-int v4, v3, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_57
    add-int v4, v1, v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v0, p0, Ltjl;->f:I

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

    :goto_59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop
.end method

.method private final eea145e9133b6dc4d05865ac9c46590fm()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput v0, p0, Ltjl;->g:I

    nop

    goto/32 :goto_13

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

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ltjl;->g:I

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

    nop

    :goto_7
    iput v0, p0, Ltjl;->f:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Ltjl;->g:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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
    sub-int/2addr v0, v1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    iget v1, p0, Ltjl;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    if-gt v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v2, p0, Ltjl;->k:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltjl;->eea145e9133b6dc4d05865ac9c46590fm()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p1, p0, Ltjl;->k:I

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

.method public final B(I)V
    .locals 8

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Ltjl;->h:I

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

    :goto_3
    add-int v5, v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    iput v1, p0, Ltjl;->j:I

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v0, v1

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

    nop

    :goto_a
    invoke-direct {p0}, Ltjl;->eea145e9133b6dc4d05865ac9c46590fm()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Ltjl;->j:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_10
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    iget-object v1, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#skip returned invalid result: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    invoke-virtual {p1}, Ltky;->a()V

    throw p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    long-to-int v1, v4

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

    :goto_12
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_13
    add-int/2addr v1, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v4, p0, Ltjl;->k:I

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

    :goto_15
    if-lt v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-le v5, v4, :cond_1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_18
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ltky; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    sub-int v1, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    sub-int v2, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    throw p1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_41

    nop

    nop

    :goto_1d
    add-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    iput v3, p0, Ltjl;->h:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_35

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_24
    cmp-long v2, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sub-int/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    :goto_28
    iget v1, p0, Ltjl;->j:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v6, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    if-lt v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    iget-object v1, p0, Ltjl;->d:Ljava/io/InputStream;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_23

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Ltjl;->eea145e9133b6dc4d05865ac9c46590fm()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput v2, p0, Ltjl;->h:I

    nop

    :goto_30
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_31
    cmp-long v1, v4, v6

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v1, p0, Ltjl;->h:I

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

    :goto_33
    invoke-virtual {p0, v4}, Ltjl;->B(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_34
    throw p0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3d

    nop

    nop

    :goto_36
    iput v1, p0, Ltjl;->h:I

    nop

    nop

    :goto_37
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    new-instance p0, Ltky;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_39
    iput v3, p0, Ltjl;->j:I

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

    :goto_3a
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    if-ltz p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_21

    nop

    nop

    :goto_3e
    iget v2, p0, Ltjl;->j:I

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3f
    new-instance p0, Ltky;

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

    :goto_40
    if-lez v2, :cond_5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v1, p0, Ltjl;->j:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    if-gez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v1, 0x0

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

    :goto_44
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    :goto_45
    iget v0, p0, Ltjl;->f:I

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

    :goto_46
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_11

    nop

    nop

    :goto_48
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-gt v2, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-gez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-le p1, v0, :cond_a

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

    :cond_a
    goto/32 :goto_3c

    nop

    nop

    :goto_50
    invoke-direct {p0, v0}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    :goto_51
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_54
    add-int v3, v2, v1

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

    :goto_55
    sub-int v2, p1, v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget v3, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop
.end method

.method public final C()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

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

    nop

    :goto_4
    const/4 v0, 0x1

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

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
    return v0

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
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    :goto_e
    invoke-direct {p0, v0}, Ltjl;->e64574a1d280db82707a389ccd89cbd5m(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final D()Z
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_0

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    cmp-long p0, v0, v2

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ltjl;->r()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final E(I)Z
    .locals 6

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjl;->B(I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    invoke-virtual {p0, v4}, Ltjl;->B(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4e

    nop

    nop

    :goto_a
    if-lt v1, v3, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    add-int/lit8 v5, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    if-ltz p1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v5, p0, Ltjl;->h:I

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

    nop

    :goto_13
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    :goto_16
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Ltmz;->a(I)I

    move-result p1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1b
    aget-byte p1, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1e
    goto :goto_28

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_3

    nop

    :goto_21
    iget v4, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v3, 0xa

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1}, Ltjl;->B(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltjl;->j()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    const/4 v3, 0x2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    if-ne v0, v2, :cond_6

    nop

    goto/32 :goto_2f

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ge p1, v3, :cond_7

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_7
    :goto_28
    goto/32 :goto_18

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ltky;

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

    nop

    nop

    :goto_2b
    const/4 v3, 0x3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v0, p1, :cond_8

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    :goto_2d
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return v2

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_30
    throw p0

    nop

    :goto_31
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Ltjn;->N()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    :goto_35
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_36
    sub-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_37
    return v1

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p0, Ltkx;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return v2

    nop

    nop

    :goto_3b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0}, Ltkx;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_3d
    if-ne v0, v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p1}, Ltjl;->z(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0xa

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance p0, Ltky;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_41
    throw p0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p1}, Ltmz;->b(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Ltjl;->a()B

    move-result p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-gez p1, :cond_b

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_49
    const/16 p1, 0x8

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

    :goto_4a
    invoke-static {p1, v4}, Ltmz;->c(II)I

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v0, "CodedInputStream encountered a malformed varint."

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4c
    iget-object p1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final F()[B
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    new-instance p0, Ltky;

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

    :goto_1
    invoke-direct {p0, v0}, Ltjl;->be151ed735e22b140a0c39ad063416c4m(I)[B

    move-result-object p0

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
    iget-object v1, p0, Ltjl;->e:[B

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v3, v2, v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-le v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Ltjl;->h:I

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

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    iput v2, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ltjl;->j()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    iget v1, p0, Ltjl;->f:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    :goto_20
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final a()B
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    aget-byte p0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ltjl;->h:I

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

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v0, p0, Ltjl;->e:[B

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_a
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

    :goto_b
    invoke-direct {p0, v0}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iput v2, p0, Ltjl;->h:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    iget v0, p0, Ltjl;->h:I

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
.end method

.method public final b()D
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltjl;->q()J

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

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

    :goto_2
    invoke-virtual {p0}, Ltjl;->i()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltjl;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ltjl;->h:I

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

    :goto_2
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-le p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p1, v0

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
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ltjl;->eea145e9133b6dc4d05865ac9c46590fm()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ltky;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Ltjl;->k:I

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

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ltky;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_1b
    const-string p1, "Failed to parse the message."

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput p1, p0, Ltjl;->k:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Ltjl;->h:I

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

    :goto_1f
    iget v0, p0, Ltjl;->j:I

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

    :goto_20
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_22
    if-gez p1, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop
.end method

.method public final f()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltjl;->j()I

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final g()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Ltjl;->i()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltjl;->j()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final i()I
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    aget-byte v0, v1, v0

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

    :goto_5
    or-int/2addr p0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget v0, p0, Ltjl;->h:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    aget-byte p0, v1, v0

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

    :goto_9
    iget v1, p0, Ltjl;->f:I

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

    :goto_a
    and-int/lit16 p0, p0, 0xff

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

    nop

    :goto_b
    or-int/2addr p0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_d
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    add-int/lit8 v2, v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    add-int/lit8 v0, v0, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    add-int/lit8 v2, v0, 0x1

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

    :goto_13
    invoke-direct {p0, v2}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    shl-int/lit8 v1, v3, 0x10

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

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v3, v0, 0x2

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

    :goto_1c
    iput v2, p0, Ltjl;->h:I

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

    :goto_1d
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-byte v2, v1, v2

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

    :goto_20
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    shl-int/lit8 v1, v2, 0x8

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

    :goto_22
    or-int/2addr p0, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aget-byte v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    and-int/lit16 v3, v3, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final j()I
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/lit8 v0, v3, -0x80

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    long-to-int p0, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    xor-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v1, :cond_0

    nop

    goto/32 :goto_59

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, -0x1fc080

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    goto/16 :goto_5d

    nop

    :goto_7
    goto/32 :goto_43

    nop

    nop

    :goto_8
    if-gez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_33

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

    :goto_9
    iput v3, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a
    move v0, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_b
    aget-byte v4, v2, v4

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

    :goto_c
    goto/16 :goto_3e

    nop

    nop

    :goto_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget-byte v4, v2, v4

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz v3, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_12
    goto :goto_1e

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    aget-byte v4, v2, v0

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

    :goto_15
    add-int/lit8 v4, v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/2addr v1, v5

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    add-int/lit8 v3, v0, 0x6

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

    :goto_18
    shl-int/lit8 v4, v4, 0x15

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

    nop

    :goto_19
    aget-byte v3, v2, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x15

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v5, 0xfe03f80

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    xor-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    move v1, v0

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_21
    aget-byte v1, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    aget-byte v4, v2, v4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    shl-int/lit8 v1, v1, 0xe

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

    :goto_25
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ltz v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_28
    goto/32 :goto_26

    nop

    :goto_29
    goto/16 :goto_3e

    nop

    nop

    :goto_2a
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v0, v0, 0xa

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v1, v0, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    shl-int/lit8 v3, v3, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    aget-byte v3, v2, v3

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2f
    goto/16 :goto_5d

    nop

    :goto_30
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget-byte v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v4

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return p0

    nop

    :goto_35
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

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

    :goto_37
    aget-byte v3, v2, v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    xor-int/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    :goto_3a
    invoke-virtual {p0}, Ltjl;->s()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3b
    iget-object v2, p0, Ltjl;->e:[B

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v3, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    return v0

    nop

    nop

    :goto_3e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v4, v0, 0x5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-ltz v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    iput v1, p0, Ltjl;->h:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v4, v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_44
    if-ltz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_45
    if-gez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ltz v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ltz v4, :cond_a

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    :goto_48
    move v6, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_49
    move v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4a
    xor-int/lit16 v0, v1, 0x3f80

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-ge v1, v5, :cond_b

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    :goto_4d
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_5d

    nop

    :goto_4f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_50
    aget-byte v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_51
    add-int/lit8 v3, v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    shl-int/lit8 v5, v3, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_53
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_54
    xor-int/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_55
    if-ltz v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_c
    goto/32 :goto_c

    nop

    nop

    :goto_56
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v3, v0, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto :goto_5d

    nop

    :goto_59
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5a
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5b
    const/16 v5, 0x9

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_4b

    nop

    :goto_5d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltjl;->i()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final l()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ltjl;->H(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltjl;->j()I

    move-result p0

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
.end method

.method public final m()I
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ltjl;->j()I

    move-result v0

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

    :goto_6
    return v0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Protocol message contained an invalid tag (zero)."

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ltjl;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v3, 0x1c2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Ltjl;->i:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Ltjl;->i:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

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

    nop

    :goto_1b
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ltky;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
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

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    aput-object v2, v1, v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final n()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltjl;->j()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final o()J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ltjl;->q()J

    move-result-wide v0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final p()J
    .locals 2

    goto/32 :goto_3

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltjl;->r()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

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

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public final q()J
    .locals 18

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_0
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-byte v0, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2
    invoke-direct {v0, v3}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3
    aget-byte v0, v2, v0

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

    :goto_4
    move-object/from16 v0, p0

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

    :goto_5
    shl-long/2addr v10, v12

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    aget-byte v0, v2, v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    int-to-long v8, v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v4, v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    const-wide/16 v8, 0xff

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-byte v0, v2, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const/16 v12, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    and-long v6, v16, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v0, Ltjl;->e:[B

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

    :goto_16
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-wide v0

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    shl-long/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    or-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-long v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1c
    const/16 v12, 0x18

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    aget-byte v0, v2, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    and-long/2addr v4, v8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    or-long/2addr v4, v10

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, v0, Ltjl;->f:I

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

    :goto_21
    aget-byte v0, v2, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    int-to-long v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_23
    and-long v10, v14, v2

    nop

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

    :goto_24
    int-to-long v10, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    aget-byte v0, v2, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_27
    const/16 v2, 0x30

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    shl-long v2, v8, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    const v1, 0x15

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

    :goto_2a
    or-long/2addr v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v4, 0x38

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

    :goto_2c
    add-int/lit8 v0, v1, 0x5

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

    :goto_2d
    const/16 v12, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    shl-long/2addr v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    int-to-long v14, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    int-to-long v6, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v0, v1, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    int-to-long v12, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v0, v1, 0x4

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

    :goto_34
    move-wide/from16 v16, v8

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

    :goto_35
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_37
    shl-long/2addr v6, v12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    or-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    iget v1, v0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-long v0, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    and-long/2addr v6, v8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v2, 0xff

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3e
    shl-long/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v0, v1, 0x2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_40
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_41
    iput v4, v0, Ltjl;->h:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_42
    and-long/2addr v10, v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    and-long v6, v12, v2

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

    :goto_44
    add-int/lit8 v1, v1, 0x7

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

    nop

    :goto_45
    add-int/lit8 v0, v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_46
    and-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_47
    add-int/lit8 v0, v1, 0x1

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

    :goto_48
    and-long/2addr v8, v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_49
    const/16 v10, 0x28

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

    :goto_4a
    aget-byte v0, v2, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    shl-long/2addr v6, v3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()J
    .locals 13

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/lit8 v0, v3, -0x80

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v0, 0x2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, -0x1fc080

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v3, v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_7
    cmp-long v1, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_8
    shl-int/lit8 v3, v3, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz v1, :cond_0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    const-wide/32 v0, 0xfe03f80

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-byte v1, v2, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_f
    aget-byte v3, v2, v3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_4f

    nop

    :goto_11
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide v11, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    aget-byte v1, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iput v3, p0, Ltjl;->h:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    int-to-long v3, v3

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

    :goto_16
    iput v1, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-long/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v9, 0x23

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
    return-wide v2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1c
    shl-long/2addr v9, v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v1, 0x1c

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_1f
    move v1, v3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-wide v5, -0x7f01fc080L

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-long v0, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2b
    shl-long/2addr v3, v9

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1b

    nop

    :goto_2d
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    shl-long/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    shl-int/lit8 v1, v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    shl-int/lit8 v4, v4, 0x15

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_31
    int-to-long v0, v0

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

    nop

    :goto_32
    xor-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x13

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v1, v0, 0x6

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    shl-long/2addr v9, v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-gez v1, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    cmp-long v1, v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_39
    add-int/lit8 v5, v0, 0x9

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

    :goto_3a
    if-ltz v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_6

    nop

    nop

    :goto_3d
    cmp-long v0, v5, v7

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_3f
    aget-byte v4, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v1, v0, 0x8

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_41
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_42
    xor-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_43
    xor-int/lit16 v0, v1, 0x3f80

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_44
    move-wide v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aget-byte v0, v2, v5

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_46
    xor-long v2, v5, v0

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

    :goto_47
    xor-long v2, v3, v5

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_48
    aget-byte v5, v2, v5

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ltz v5, :cond_5

    nop

    goto/32 :goto_6c

    nop

    :cond_5
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4a
    xor-int/2addr v0, v1

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

    :goto_4b
    move-wide v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-long v9, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget-byte v1, v2, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-wide v2, v3

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

    :goto_51
    shl-long/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_52
    if-ltz v3, :cond_6

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v4, v0, 0x5

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

    :goto_54
    add-int/lit8 v1, v0, 0xa

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

    :goto_55
    xor-long/2addr v3, v9

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

    :goto_56
    return-wide v0

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v9, 0x31

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_59
    xor-long/2addr v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v4, v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    cmp-long v1, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_5c
    xor-long v2, v3, v0

    nop

    nop

    :goto_5d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5e
    cmp-long v5, v3, v7

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v0, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_60
    xor-int/2addr v1, v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_62
    if-ge v1, v5, :cond_7

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

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_63
    xor-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_64
    if-gez v1, :cond_8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    int-to-long v5, v3

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_66
    aget-byte v3, v2, v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_67
    const/16 v5, 0x9

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_68
    int-to-long v2, v0

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    aget-byte v3, v2, v3

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

    :goto_6a
    int-to-long v7, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/16 v1, 0x2a

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v1, 0x38

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6f
    xor-long/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Ltjl;->s()J

    move-result-wide v0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_71
    if-ltz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    int-to-long v5, v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_73
    const-wide v5, -0x1fc07f01fc080L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_74
    if-gez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-wide v0, 0x3f80fe03f80L

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_76
    int-to-long v5, v5

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_77
    xor-long/2addr v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    int-to-long v2, v0

    nop

    :goto_7b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    cmp-long v5, v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_7d
    goto/16 :goto_4f

    nop

    nop

    :goto_7e
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7f
    const-wide v9, 0xfe03f80fe03f80L

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_53

    nop

    nop

    :goto_82
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_83
    aget-byte v4, v2, v0

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_84
    iget-object v2, p0, Ltjl;->e:[B

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_85
    add-int/lit8 v5, v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_86
    if-eq v1, v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_87
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_28

    nop
.end method

.method final s()J
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const-string v0, "CodedInputStream encountered a malformed varint."

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit8 v4, v3, 0x7f

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    and-int/lit16 v3, v3, 0x80

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    shl-long/2addr v4, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    :goto_9
    if-lt v0, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-wide v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0x40

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ltky;

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

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    const v0, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    int-to-long v4, v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    :goto_17
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    or-long/2addr v1, v4

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

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_1b
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ltjl;->a()B

    move-result v3

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
.end method

.method public final t()J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

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

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-virtual {p0}, Ltjl;->q()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final u()J
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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ltjl;->J(J)J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    invoke-virtual {p0}, Ltjl;->r()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v()J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltjl;->r()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1b

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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w()Ltjj;
    .locals 5

    goto/32 :goto_26

    nop

    nop

    :goto_0
    sub-int v4, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v3, v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    iput v4, p0, Ltjl;->j:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v2, v0}, Ltjj;->q([BII)Ltjj;

    move-result-object v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltjl;->j()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    goto/32 :goto_17

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    iget v2, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    iget v1, p0, Ltjl;->f:I

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

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v1, [B

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, p0, Ltjl;->h:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3d

    nop

    nop

    :goto_15
    iput v2, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1d
    iget-object p0, p0, Ltjl;->e:[B

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    sub-int v3, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_21
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array v0, v0, [B

    nop

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

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, v4}, Ltjl;->aaadf0a9c0da915f2782a301bde92c44m(I)Ljava/util/List;

    move-result-object v4

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

    :goto_28
    if-lez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_29
    invoke-static {v1}, Ltjj;->p([B)Ltjj;

    move-result-object p0

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

    :goto_2a
    iget-object v1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Ltjj;->b:Ltjj;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ltji;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2d
    if-gez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_2f
    goto/32 :goto_11

    nop

    nop

    :goto_30
    goto :goto_3f

    nop

    nop

    :goto_31
    goto/32 :goto_2a

    nop

    nop

    :goto_32
    invoke-direct {p0, v0}, Ltjl;->3d137ff4afbdf0b6afbfa059c81ece9bm(I)[B

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_36
    invoke-direct {p0, v0}, Ltji;-><init>([B)V

    :goto_37
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_2f

    nop

    :goto_39
    goto/32 :goto_2c

    nop

    nop

    :goto_3a
    if-le v0, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3d
    iget v1, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3e
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_19

    nop

    nop

    :goto_40
    iput v2, p0, Ltjl;->h:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v4, p0, Ltjl;->j:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    array-length v4, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p0, Ltky;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final x()Ljava/lang/String;
    .locals 5

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_21

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Ljava/lang/String;

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

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    new-instance v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Ltkw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    invoke-direct {v3, v1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/32 :goto_18

    nop

    nop

    :goto_9
    iget-object v1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget v3, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ltjl;->j()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1f

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_10
    invoke-direct {p0, v0}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    goto/32 :goto_13

    nop

    nop

    :goto_11
    if-gt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_2e

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

    nop

    :goto_13
    iget-object v1, p0, Ltjl;->e:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    add-int/2addr v1, v0

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

    nop

    :goto_16
    sget-object v4, Ltkw;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v1, v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_18
    iget v1, p0, Ltjl;->h:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gez v0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v2

    nop

    nop

    :goto_1c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v3

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ltky;

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

    nop

    :goto_25
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    if-le v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    :goto_27
    sget-object v4, Ltkw;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    iget v2, p0, Ltjl;->h:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    const v0, 0x1e

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

    nop

    :goto_32
    new-instance v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_33
    invoke-direct {p0, v0}, Ltjl;->be151ed735e22b140a0c39ad063416c4m(I)[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_34
    iput v1, p0, Ltjl;->h:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_35
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    iput v3, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-le v0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-gez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget v2, p0, Ltjl;->f:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz v0, :cond_2

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

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-direct {p0, v0}, Ltjl;->be151ed735e22b140a0c39ad063416c4m(I)[B

    move-result-object v2

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    :goto_12
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    add-int v3, v1, v0

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

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    :goto_17
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    :goto_1a
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int v3, v2, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v1, v0}, Ltcw;->o([BII)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Ltjl;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ltjl;->j()I

    move-result v0

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

    :goto_20
    iget-object v2, p0, Ltjl;->e:[B

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Ltjl;->e:[B

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    iget v1, p0, Ltjl;->h:I

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

    :goto_23
    goto/32 :goto_16

    nop

    nop

    :goto_24
    if-le v0, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v0}, Ltjl;->6d3821fac0840ee9e72137504d3d1e1em(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    const v1, 0x3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final z(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Ltjl;->i:I

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
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    return-void

    nop

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
    new-instance p0, Ltky;

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

    :goto_5
    const-string p1, "Protocol message end-group tag did not match expected tag."

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop
.end method
