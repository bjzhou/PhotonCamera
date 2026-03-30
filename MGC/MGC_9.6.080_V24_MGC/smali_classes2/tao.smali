.class public final Ltao;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p7, p0, Ltao;->d:D

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

    :goto_2
    iput-wide p11, p0, Ltao;->f:D

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_4
    iput-wide p5, p0, Ltao;->c:D

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-wide p1, p0, Ltao;->a:D

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

    :goto_6
    iput-wide p3, p0, Ltao;->b:D

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

    :goto_7
    iput-wide p9, p0, Ltao;->e:D

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(DDDDD)Ltao;
    .locals 14

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-double v3, p0, p6

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-object v13

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    move-object v0, v13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    mul-double v9, v9, p8

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    mul-double v7, p4, p8

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    new-instance v13, Ltao;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v12}, Ltao;-><init>(DDDDDD)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    mul-double v1, p6, v0

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

    :goto_11
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-double v11, v11, p8

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
    const-wide v9, 0x3fe3333333333333L    # 0.6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    mul-double v5, p2, p6

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_30

    nop

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

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ltao;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v3, p0, Ltao;->b:D

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3
    iget-wide v3, p0, Ltao;->c:D

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    cmp-long v1, v3, v5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-wide v3, p0, Ltao;->e:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    const/4 v2, 0x0

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

    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

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

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v5, p1, Ltao;->a:D

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v5, p1, Ltao;->c:D

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    iget-wide v3, p0, Ltao;->d:D

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    cmp-long v1, v3, v5

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

    :goto_16
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

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

    :goto_17
    cmp-long v1, v3, v5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_19
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    iget-wide v3, p0, Ltao;->a:D

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

    :goto_1b
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide p0, p1, Ltao;->f:D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

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

    :goto_1e
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2e

    nop

    nop

    :goto_20
    iget-wide v5, p1, Ltao;->e:D

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    iget-wide v5, p1, Ltao;->d:D

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_23
    instance-of v1, p1, Ltao;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

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

    :goto_27
    iget-wide v5, p1, Ltao;->b:D

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v3, p0, Ltao;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2b
    cmp-long v1, v3, v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7

    nop

    :goto_2e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmp-long p0, v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_30
    const v0, 0x11

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    return v0

    nop

    :goto_32
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    cmp-long v1, v3, v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_37
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final hashCode()I
    .locals 15

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1
    long-to-int v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    ushr-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    mul-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    long-to-int p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5
    xor-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

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

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    ushr-long/2addr v9, v2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    ushr-long/2addr v7, v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    xor-long/2addr v5, v7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    mul-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_c
    long-to-int v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    ushr-long/2addr v5, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v5, p0, Ltao;->b:D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget-wide v3, p0, Ltao;->a:D

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

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

    nop

    :goto_16
    iget-wide v11, p0, Ltao;->e:D

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

    :goto_17
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    :goto_1a
    iget-wide v5, p0, Ltao;->c:D

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

    :goto_1b
    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v13

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

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    iget-wide v7, p0, Ltao;->c:D

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_20
    xor-int/2addr p0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    xor-long/2addr v7, v9

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

    nop

    :goto_22
    iget-wide v13, p0, Ltao;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    ushr-long/2addr v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    iget-wide v9, p0, Ltao;->e:D

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

    :goto_26
    xor-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    long-to-int v1, v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v11, p0, Ltao;->f:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    iget-wide v0, p0, Ltao;->a:D

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    iget-wide v9, p0, Ltao;->d:D

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    goto/32 :goto_3a

    nop

    nop

    :goto_2d
    goto/32 :goto_29

    nop

    nop

    :goto_2e
    mul-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    long-to-int v0, v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    xor-long/2addr v0, v3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    mul-int/2addr p0, v0

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

    :goto_32
    iget-wide v3, p0, Ltao;->b:D

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    xor-long/2addr v9, v11

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

    :goto_34
    xor-long/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    xor-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_36
    xor-long/2addr v3, v5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    long-to-int v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_39
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v7, p0, Ltao;->d:D

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0xf4243

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

    :goto_3d
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

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

    :goto_3e
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    mul-int/2addr p0, v0

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

    nop

    :goto_40
    ushr-long/2addr v3, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-wide v2, p0, Ltao;->e:D

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "{"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    const-string p0, "}"

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

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v1, p0, Ltao;->a:D

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_16
    iget-wide v2, p0, Ltao;->c:D

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_19
    const-string v1, ", "

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v2, p0, Ltao;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v1, p0, Ltao;->f:D

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iget-wide v2, p0, Ltao;->d:D

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop
.end method
