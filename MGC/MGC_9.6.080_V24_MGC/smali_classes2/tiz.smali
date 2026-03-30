.class final Ltiz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I = 0x0

.field private static volatile b:I = 0x64


# direct methods
.method static constructor <clinit>()V
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

    nop
.end method

.method static a([BI)D
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ltiz;->s([BI)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method static b([BI)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ltiz;->d([BI)I

    move-result p0

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

    :goto_2
    return p0

    nop

    nop
.end method

.method static c([BILtiy;)I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iput-object p0, p2, Ltiy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltjj;->b:Ltjj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p2, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    if-le v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1, p2}, Ltiz;->l([BILtiy;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ltky;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-static {p0, p1, v0}, Ltjj;->q([BII)Ltjj;

    move-result-object p0

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

    nop

    :goto_9
    if-gez v0, :cond_1

    nop

    goto/32 :goto_17

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

    :goto_a
    iput-object p0, p2, Ltiy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    add-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    array-length v1, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    :goto_1a
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

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

    :goto_1b
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ltky;

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

    :goto_20
    return p1

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop
.end method

.method static d([BI)I
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    aget-byte v2, p0, v2

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

    nop

    :goto_1
    and-int/lit16 v1, v1, 0xff

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    shl-int/lit8 v0, v2, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    add-int/lit8 p1, p1, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, p1, 0x1

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

    :goto_b
    aget-byte p0, p0, p1

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

    :goto_c
    aget-byte v1, p0, v1

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

    :goto_d
    or-int/2addr p0, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    shl-int/lit8 p0, p0, 0x18

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

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v2, p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    or-int/2addr p1, v0

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

    :goto_15
    aget-byte v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    or-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_18
    shl-int/lit8 p1, v1, 0x8

    nop

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

    :goto_19
    and-int/lit16 v2, v2, 0xff

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
    and-int/lit16 v0, v0, 0xff

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method static e(Ltmf;[BIIILtiy;)I
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v0 .. v6}, Ltiz;->p(Ljava/lang/Object;Ltmf;[BIIILtiy;)I

    move-result p1

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
    move-object v0, v7

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
    invoke-interface {p0, v7}, Ltmf;->g(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
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

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    move-object v6, p5

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

    :goto_7
    move v5, p4

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
    iput-object v7, p5, Ltiy;->c:Ljava/lang/Object;

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

    :goto_9
    invoke-interface {p0}, Ltmf;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_e

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    move-object v2, p1

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

    :goto_10
    move v3, p2

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    move-object v1, p0

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

    :goto_13
    move v4, p3

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

    :goto_14
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static f(Ltmf;[BIILtiy;)I
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    move-object v5, p4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v6}, Ltmf;->g(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iput-object v6, p4, Ltiy;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    :goto_7
    move v4, p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v3, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v0 .. v5}, Ltiz;->q(Ljava/lang/Object;Ltmf;[BIILtiy;)I

    move-result p1

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
    move-object v2, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    return p1

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ltmf;->e()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static g(Ltmf;I[BIILtkv;Ltiy;)I
    .locals 2

    goto/32 :goto_15

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    if-ne p1, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

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

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p3

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

    nop

    :goto_7
    iget-object v0, p6, Ltiy;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p5, v0}, Ltkv;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_b

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
    if-lt p3, p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iget-object v0, p6, Ltiy;->c:Ljava/lang/Object;

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

    :goto_d
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p2, v0, p4, p6}, Ltiz;->f(Ltmf;[BIILtiy;)I

    move-result p3

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

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p6, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-interface {p5, v0}, Ltkv;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_14
    invoke-static {p2, p3, p6}, Ltiz;->l([BILtiy;)I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p2, p3, p4, p6}, Ltiz;->f(Ltmf;[BIILtiy;)I

    move-result p3

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method static h([BILtkv;Ltiy;)I
    .locals 2

    goto/32 :goto_13

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

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget v1, p3, Ltiy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, p1

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    return p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ltky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-lt p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1, p3}, Ltiz;->l([BILtiy;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p3, Ltiy;->a:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

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

    nop

    :goto_14
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, v1}, Ltkh;->g(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1, p3}, Ltiz;->l([BILtiy;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

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

    :goto_18
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p2, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method static i([BILtiy;)I
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iput-object v1, p2, Ltiy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

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

    :goto_4
    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->PEkgIDRfRmq:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    sget-object v2, Ltkw;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p1

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
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iput-object p0, p2, Ltiy;->c:Ljava/lang/Object;

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

    :goto_f
    new-instance v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p2, Ltiy;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

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

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1, p2}, Ltiz;->l([BILtiy;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const/4 p1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1c
    const-string p0, ""

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method static j([BILtiy;)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p0, p2, Ltiy;->c:Ljava/lang/Object;

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
    return p1

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    add-int/2addr p1, v0

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
    invoke-static {p0, p1, p2}, Ltiz;->l([BILtiy;)I

    move-result p1

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

    :goto_5
    invoke-static {p0, p1, v0}, Ltcw;->o([BII)Ljava/lang/String;

    move-result-object p0

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

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    iput-object p0, p2, Ltiy;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p2, Ltiy;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ltky;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p1

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const-string p0, ""

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop
.end method

.method static k(I[BIILtmp;Ltiy;)I
    .locals 9

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide p2, p5, Ltiy;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2
    return p2

    nop

    :goto_3
    goto/32 :goto_40

    nop

    nop

    :goto_4
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_7
    return p2

    nop

    nop

    :goto_8
    goto/32 :goto_60

    nop

    nop

    :goto_9
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4, p0, p2}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    :goto_e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v3, :cond_1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    iput p1, p5, Ltiy;->e:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    :goto_15
    invoke-static {p1, p2}, Ltiz;->s([BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_18
    array-length p5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr p2, p3

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

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p4, p0, v0}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p4, p0, p1}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ltmp;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p1, Ltjj;->b:Ltjj;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    move p2, v4

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

    :goto_25
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_28
    invoke-virtual {p4, p0, p1}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_26

    nop

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v3, p5, Ltiy;->e:I

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

    :goto_2d
    return p2

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2f
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_30
    if-gez p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, "Protocol message contained an invalid tag (zero)."

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

    :goto_32
    new-instance p0, Ltky;

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

    :goto_33
    if-eq v2, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    :goto_34
    add-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static/range {v2 .. v7}, Ltiz;->k(I[BIILtmp;Ltiy;)I

    move-result v2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p4, p0, p1}, Ltmp;->e(ILjava/lang/Object;)V

    :goto_37
    goto/32 :goto_19

    nop

    nop

    :goto_38
    move v2, p2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_3c
    move v5, p3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3d
    move p2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_3e
    if-le p2, p3, :cond_7

    nop

    goto/32 :goto_8

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 p2, p2, 0x8

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-ne v0, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p0, Ltky;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_44
    and-int/lit8 v1, p0, -0x8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_45
    or-int/lit8 v1, v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Ltmp;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_47
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_48
    iput v3, p5, Ltiy;->e:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_49
    add-int/lit8 p2, p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4a
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4b
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_4c
    throw p0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4e
    iget p1, p5, Ltiy;->e:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p4, p0, p1}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-le p3, p5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_9
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_52
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p1, p2, p5}, Ltiz;->l([BILtiy;)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return p2

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_56
    throw p0

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v3}, Ltiz;->t(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_59
    const v1, 0x3

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

    :goto_5a
    move v8, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5b
    iget p3, p5, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5c
    invoke-static {p1, p2, p5}, Ltiz;->l([BILtiy;)I

    move-result p2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_1e

    nop

    nop

    :goto_5e
    goto/32 :goto_4e

    nop

    nop

    :goto_5f
    if-eq v0, p3, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_a
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eq p2, v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_62
    throw p0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_64
    sub-int/2addr p5, p2

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_65
    iget p2, p5, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {p0}, Ltmz;->a(I)I

    move-result v0

    nop

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

    :goto_67
    invoke-static {p1, p2, p3}, Ltjj;->q([BII)Ltjj;

    move-result-object p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p1, p2, p5}, Ltiz;->o([BILtiy;)I

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_69
    throw p0

    nop

    :goto_6a
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v7, p5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-string p1, "Failed to parse the message."

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {p0}, Ltmz;->b(I)I

    move-result v0

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

    :goto_6e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6f
    if-eqz p3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_70
    invoke-direct {p0, v1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {p1, p2}, Ltiz;->d([BI)I

    move-result p1

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

    nop

    :goto_72
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-lt p2, p3, :cond_d

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static l([BILtiy;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    aget-byte p1, p0, p1

    nop

    nop

    goto/32 :goto_3

    nop

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0, v0, p2}, Ltiz;->m(I[BILtiy;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p2, Ltiy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method static m(I[BILtiy;)I
    .locals 2

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    or-int/2addr p0, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, p2, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    and-int/lit8 v1, v1, 0x7f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    aget-byte v0, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    or-int/2addr p0, v1

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
    shl-int/lit8 v0, v0, 0x1c

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    aget-byte v0, p1, v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9
    return v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p0, p3, Ltiy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_e
    if-gez v0, :cond_0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    or-int/2addr p0, p1

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

    :goto_10
    return v0

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    add-int/lit8 v0, p2, 0x2

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
    or-int/2addr p0, p1

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

    :goto_14
    and-int/lit8 p0, p0, 0x7f

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    move p2, v0

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

    :goto_16
    and-int/lit8 v0, v0, 0x7f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    shl-int/lit8 p1, v1, 0xe

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_1b
    shl-int/lit8 p1, v0, 0x1c

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

    :goto_1c
    or-int/2addr p0, v0

    nop

    nop

    :goto_1d
    goto/32 :goto_3d

    nop

    nop

    :goto_1e
    aget-byte v1, p1, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    if-gez v1, :cond_2

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

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    shl-int/lit8 v0, v0, 0x7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    shl-int/lit8 v1, v1, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    shl-int/lit8 v0, v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    iput p0, p3, Ltiy;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput p0, p3, Ltiy;->a:I

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

    :goto_26
    if-gez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    iput p0, p3, Ltiy;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    shl-int/lit8 p1, v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    and-int/lit8 v0, v0, 0x7f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    or-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    return v1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 p2, p2, 0x4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    or-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_30
    if-gez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v1, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_32
    return p2

    nop

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_34
    and-int/lit8 v0, v0, 0x7f

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    iput p0, p3, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_38
    shl-int/lit8 p1, v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_39
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    :goto_3a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    aget-byte p2, p1, p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v0, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget-byte v0, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method static n(I[BIILtkv;Ltiy;)I
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p5, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p5, Ltiy;->a:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    invoke-virtual {p4, v0}, Ltkh;->g(I)V

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    return p2

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v0, 0x1d

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

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    check-cast p4, Ltkh;

    nop

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

    :goto_d
    invoke-static {p1, v0, p5}, Ltiz;->l([BILtiy;)I

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lt p2, p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, p2, p5}, Ltiz;->l([BILtiy;)I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p5, Ltiy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    goto/32 :goto_12

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p4, v0}, Ltkh;->g(I)V

    goto/32 :goto_2

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, p2, p5}, Ltiz;->l([BILtiy;)I

    move-result p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_14

    nop
.end method

.method static o([BILtiy;)I
    .locals 9

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    move v8, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p2, Ltiy;->b:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    shl-long/2addr v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    if-ltz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-long/2addr v0, v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    int-to-long v0, v0

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

    :goto_9
    add-int/2addr v3, v5

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

    :goto_a
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    return v3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v5, 0x7

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

    :goto_12
    or-long/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    move v2, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_22

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    return p1

    nop

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    and-long/2addr v0, v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-wide v0, p2, Ltiy;->b:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    shl-long/2addr v3, v5

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

    :goto_1b
    aget-byte p1, p0, p1

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

    :goto_1c
    and-int/lit8 v3, v2, 0x7f

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

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    int-to-long v6, v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_21
    move v3, v5

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    :goto_23
    const-wide/16 v4, 0x7f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    move p1, v8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    and-int/lit8 v4, p1, 0x7f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    aget-byte v0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    aget-byte v2, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static p(Ljava/lang/Object;Ltmf;[BIIILtiy;)I
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {v0 .. v6}, Ltlt;->c(Ljava/lang/Object;[BIIILtiy;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    move v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    move-object v6, p6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ltlt;

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

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    return p1

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget p1, p6, Ltiy;->e:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v4, p4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    iput p1, p6, Ltiy;->e:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    iput-object p0, p6, Ltiy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    iput p2, p6, Ltiy;->e:I

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

    :goto_17
    invoke-static {p1}, Ltiz;->t(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p2, p6, Ltiy;->e:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method static q(Ljava/lang/Object;Ltmf;[BIILtiy;)I
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p4}, Ltiz;->t(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-le p3, p4, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

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

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return p3

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    move v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    iput-object p0, p5, Ltiy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    add-int/2addr p3, v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr p4, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-interface/range {v0 .. v5}, Ltmf;->i(Ljava/lang/Object;[BIILtiy;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iget p1, p5, Ltiy;->e:I

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

    :goto_e
    iput p1, p5, Ltiy;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    :goto_12
    move-object v0, p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_14
    const v0, 0x6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget p4, p5, Ltiy;->e:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p3, p2, v0, p5}, Ltiz;->m(I[BILtiy;)I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    iget p3, p5, Ltiy;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, p0

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

    :goto_1f
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aget-byte p3, p2, p3

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

    :goto_21
    new-instance p0, Ltky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    if-ltz p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    move-object v5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    if-gez p3, :cond_3

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

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_27
    iput p4, p5, Ltiy;->e:I

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
.end method

.method static r(I[BIILtiy;)I
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    :goto_2
    goto :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    iget p1, p4, Ltiy;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p0, p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "Failed to parse the message."

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, p0, :cond_1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ltmz;->a(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_16
    if-ne v0, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    return p2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ltky;

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

    :goto_20
    const-string v1, "Protocol message contained an invalid tag (zero)."

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    return p2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    :goto_23
    if-le p2, p3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    :goto_25
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    or-int/lit8 p0, p0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, p2, p4}, Ltiz;->l([BILtiy;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2b
    invoke-static {p1, p2, p4}, Ltiz;->o([BILtiy;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, p1, p2, p3, p4}, Ltiz;->r(I[BIILtiy;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v0, v2, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt p2, p3, :cond_8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_30
    const v0, 0x12

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    invoke-static {p0}, Ltmz;->b(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_32
    iget v0, p4, Ltiy;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_33
    return p2

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 p2, p2, 0x4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne v0, v2, :cond_9

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_9
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    and-int/lit8 p0, p0, -0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_38
    add-int/lit8 p2, p2, 0x8

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_39
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

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

    :goto_3b
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, v1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p1, p2, p4}, Ltiz;->l([BILtiy;)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop
.end method

.method static s([BI)J
    .locals 18

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    int-to-long v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    add-int/lit8 v4, p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    const v1, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v2, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-byte v0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6
    or-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    aget-byte v6, p0, v6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget-byte v4, p0, v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a
    add-int/lit8 v12, p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_b
    const/16 v2, 0x28

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    and-long v4, v4, v16

    nop

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

    :goto_d
    goto/32 :goto_29

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    and-long v14, v14, v16

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

    :goto_12
    aget-byte v10, p0, v10

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    or-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    or-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_15
    const-wide/16 v16, 0xff

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    shl-long v2, v6, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    and-long v12, v12, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v8, p1, 0x4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    and-long v10, v10, v16

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v14, p1, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v2, 0x30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-byte v14, p0, v14

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

    :goto_1e
    int-to-long v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    shl-long v2, v8, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    and-long v8, v8, v16

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

    :goto_21
    int-to-long v14, v14

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    and-long v0, v0, v16

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v2, p1, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v16, 0x8

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    shl-long v2, v10, v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    shl-long v2, v14, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    or-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    return-wide v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    :goto_2a
    int-to-long v8, v8

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

    :goto_2b
    aget-byte v12, p0, v12

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

    :goto_2c
    const/16 v2, 0x38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2d
    shl-long v2, v2, v16

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v10, p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    aget-byte v2, p0, v2

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

    :goto_30
    shl-long v2, v4, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    int-to-long v10, v10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_32
    or-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    const/16 v2, 0x20

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v2, 0x18

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_35
    and-long v2, v2, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    shl-long v2, v12, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_37
    and-long v6, v6, v16

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_39
    aget-byte v8, p0, v8

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

    :goto_3a
    int-to-long v4, v4

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

    nop

    :goto_3b
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3d
    or-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v6, p1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static t(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v0, Ltiz;->b:I

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
    if-lt p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    new-instance p0, Ltky;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

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

    :goto_7
    invoke-direct {p0, v0}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
