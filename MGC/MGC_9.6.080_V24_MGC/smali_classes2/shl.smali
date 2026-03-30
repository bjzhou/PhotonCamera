.class final Lshl;
.super Lshn;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

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

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lshn;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lshl;->a:[B

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

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

    :goto_1
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    or-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    shl-int/lit8 v1, v1, 0x8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

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

    :goto_8
    or-int/2addr p0, v0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    move v1, v3

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
    aget-byte v0, p0, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    const/4 v3, 0x3

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

    :goto_d
    move v1, v2

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

    :goto_e
    shl-int/lit8 p0, p0, 0x18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lshl;->a:[B

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget-byte v1, p0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1c
    invoke-static {v1, v4, v0}, Lrrf;->z(ZLjava/lang/String;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    aget-byte v2, p0, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    shl-int/lit8 v1, v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    aget-byte p0, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    const-string v4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    iget-object p0, p0, Lshl;->a:[B

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    :goto_26
    if-ge v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_27
    array-length v0, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    array-length p0, p0

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
    mul-int/lit8 p0, p0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lshl;->a:[B

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c()J
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    shl-long/2addr v4, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    array-length v0, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    aget-byte v4, v4, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lshl;->a:[B

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

    :goto_5
    int-to-long v0, v0

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    invoke-static {v4, v5, v0}, Lrrf;->z(ZLjava/lang/String;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v2, v4, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_c
    or-long/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    int-to-long v4, v4

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

    :goto_f
    goto/32 :goto_27

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

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

    :goto_12
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    if-ge v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

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
    iget-object v0, p0, Lshl;->a:[B

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    :goto_18
    iget-object v4, p0, Lshl;->a:[B

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    const-wide/16 v6, 0xff

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    mul-int/lit8 v6, v2, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    and-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    aget-byte v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    array-length v4, v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    const-string v5, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    move v4, v1

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

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

    :goto_23
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
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

    :goto_25
    iget-object v4, p0, Lshl;->a:[B

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

    :goto_26
    return-wide v0

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    :goto_28
    goto/16 :goto_6

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final d(Lshn;)Z
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    move v3, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

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

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    move v4, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    move v1, v2

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lshn;->f()[B

    move-result-object v5

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

    :goto_a
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    iget-object v4, p0, Lshl;->a:[B

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    move v4, v2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    and-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    if-lt v1, v5, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v1, v0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    array-length v5, v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    const v0, 0x15

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_d

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lshn;->f()[B

    move-result-object v0

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

    :goto_1c
    if-eq v4, v5, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lshl;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    return v3

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aget-byte v5, v5, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    aget-byte v4, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_7

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()[B
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lshl;->a:[B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p0, [B

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
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final f()[B
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lshl;->a:[B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
