.class public final Ldgx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:[J

.field public b:[J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldgx;->b:[J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    new-array v1, v0, [J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    new-array v0, v0, [J

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

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

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Ldgx;->a:[J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0xc0

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

    :goto_d
    const v0, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static synthetic a(Ldgx;IIIIII)V
    .locals 6

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    shl-long/2addr p5, p1

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

    :goto_1
    aget-wide p5, p0, p2

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

    :goto_2
    iget-object p0, p0, Ldgx;->a:[J

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3
    goto/16 :goto_22

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    and-int/2addr v0, p3

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
    and-int/lit16 p1, v1, 0x3ff

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    :goto_d
    and-long/2addr p3, p5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    add-int/2addr v3, v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_10
    add-int/lit8 p2, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    long-to-int v0, p5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    :goto_13
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-wide p2, p0, v1

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

    :goto_15
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    if-le v3, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p2, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    iget v1, p0, Ldgx;->c:I

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    and-long/2addr v2, v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    or-long/2addr p3, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-long p5, p1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide p3, -0x3ff0000000000001L    # -3.9999999999999996

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    shl-long/2addr p3, v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    add-int/lit8 v2, v1, 0x3

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

    :goto_20
    and-long/2addr p2, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    add-int/lit8 p1, v1, -0x3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    shl-long/2addr v2, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    int-to-long v4, p1

    nop

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

    :goto_27
    iput-object v0, p0, Ldgx;->a:[J

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    or-long/2addr p3, p5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aput-wide p3, p0, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-long v2, p5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    shl-long/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    iput v2, p0, Ldgx;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-long p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 p2, p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Ldgx;->b:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_32
    if-gtz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_12

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_36
    const p3, 0x3ffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Ldgx;->a:[J

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

    :goto_38
    const/16 p5, 0x1a

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_39
    if-ltz p6, :cond_4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    nop

    :goto_3a
    int-to-long v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3b
    const/16 v0, 0x20

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3c
    or-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v0, p0, Ldgx;->b:[J

    nop

    :goto_3e
    goto/32 :goto_2

    nop

    nop

    :goto_3f
    add-int/lit8 p1, p1, -0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_40
    or-long/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_41
    and-int p4, p6, p3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/16 p1, 0x34

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

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_44
    aput-wide p3, p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    aput-wide v2, p0, p2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_46
    int-to-long v2, p4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_4

    nop

    nop

    :goto_48
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    and-int/2addr p1, p3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4a
    int-to-long p3, p4

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4b
    const-wide v4, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
