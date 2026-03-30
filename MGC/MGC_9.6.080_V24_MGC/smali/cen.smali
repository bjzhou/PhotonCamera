.class public final Lcen;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(J)F
    .locals 7

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float p0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    :goto_6
    invoke-static {v1, v2}, Lcga;->a(J)Ljava/lang/String;

    move-result-object v1

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

    :goto_7
    invoke-static {p0, p1}, Lcel;->d(J)F

    move-result v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lchi;

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
    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-double/2addr v1, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide v5, 0x3fb27bb2fec56d5dL    # 0.0722

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    mul-double/2addr v3, v5

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Lchi;->p:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lcel;->b(J)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    const-wide v3, 0x300000000L

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v1, v0, Lcgb;->b:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lcel;->c(J)F

    move-result v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move p0, p1

    nop

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

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

    :goto_17
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    mul-double/2addr p0, v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_19
    iget-wide v1, v0, Lcgb;->b:J

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

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    mul-double/2addr v1, v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

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

    :goto_1d
    cmpg-float v0, p0, p1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    return p1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, v2, v3, v4}, La;->q(JJ)Z

    move-result v1

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

    :goto_21
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    :goto_23
    cmpl-float v0, p0, p1

    nop

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

    :goto_24
    float-to-double p0, p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    float-to-double v3, v3

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

    :goto_26
    invoke-static {p0, p1}, Lcel;->f(J)Lcgb;

    move-result-object v0

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

    :goto_27
    if-gtz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_29
    const v0, 0xb

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2a
    invoke-interface {v0, p0, p1}, Lcgo;->a(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2b
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    float-to-double v1, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    add-double/2addr v1, v3

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

    :goto_31
    invoke-static {v1}, Lcex;->a(Ljava/lang/String;)V

    :goto_32
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0, v3, v4}, Lcgo;->a(D)D

    move-result-wide v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop
.end method

.method public static final b(J)I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Lcel;->e(JLcgb;)J

    move-result-wide p0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    long-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    ushr-long/2addr p0, v0

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

    :goto_5
    sget-object v0, Lcgj;->e:Lchi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcgj;->a:[F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final c(I)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
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

    nop

    :goto_2
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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0x20

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    sget-wide v0, Lcel;->a:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    shl-long/2addr v0, p0

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

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    int-to-long v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-wide v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d(J)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
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

    :goto_2
    shl-long/2addr p0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-wide v0, Lcel;->a:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static final e(FFFFLcgb;)J
    .locals 19

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_ff

    nop

    :goto_1
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_114

    nop

    :goto_7
    goto/32 :goto_113

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x20

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    ushr-int/lit8 v9, v7, 0x17

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    float-to-int v2, v3

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_d
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/32 v8, 0xffff

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5c

    nop

    :goto_13
    const/16 v15, 0x1f

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_14
    sget-wide v10, Lcel;->a:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    float-to-int v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_16
    cmpg-float v9, p2, v8

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_c5

    nop

    nop

    :goto_18
    goto/32 :goto_c4

    nop

    nop

    :goto_19
    and-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v13, 0x800000

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_1b
    shl-int/lit8 v9, v9, 0xa

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_1c
    if-ltz v5, :cond_1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    and-long/2addr v8, v10

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_20
    const/16 v2, 0x20

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_145

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v6, p0

    nop

    nop

    :goto_25
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v5}, Lcex;->a(Ljava/lang/String;)V

    :goto_27
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-float/2addr v0, v2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_29
    int-to-long v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    goto :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    :goto_2c
    or-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_2d
    cmpg-float v7, p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v6, 0x0

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_2f
    if-ge v9, v15, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :cond_2
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-short v6, v6

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_33
    add-int/2addr v7, v5

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-wide v5, v0, Lcgb;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    mul-float/2addr v5, v1

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ge v9, v14, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rsub-int/lit8 v5, v9, 0x1

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_38
    shr-int/lit8 v9, v6, 0xd

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_39
    if-ge v9, v14, :cond_4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_3a
    move v5, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_125

    nop

    nop

    :goto_3c
    goto/32 :goto_124

    nop

    nop

    nop

    :goto_3d
    shl-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_3e
    if-ltz v6, :cond_5

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_5
    goto/32 :goto_142

    nop

    nop

    nop

    :goto_3f
    const v10, 0x7fffff

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_40
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_42
    move/from16 v8, v16

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_43
    const/16 v6, 0x200

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_44
    const/16 v5, 0x200

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

    :goto_45
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_46
    shr-int/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_47
    if-lez v8, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_49
    cmpl-float v8, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_e1

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_e0

    nop

    nop

    :goto_4c
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    mul-float/2addr v6, v1

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_4e
    shl-int/lit8 v0, v5, 0xa

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    cmpl-float v9, v7, v8

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_3

    nop

    nop

    :goto_51
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move/from16 v8, p2

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_54
    shr-int/lit8 v11, v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0, v8}, Lcgb;->b(I)F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_56
    goto/16 :goto_a4

    nop

    :goto_57
    goto/32 :goto_a3

    nop

    nop

    :goto_58
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    cmpg-float v5, p3, v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_9

    nop

    nop

    :goto_5c
    goto/32 :goto_f4

    nop

    nop

    :goto_5d
    if-gtz v9, :cond_7

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_5e
    and-long/2addr v2, v10

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_5f
    or-long/2addr v4, v8

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    :goto_61
    ushr-int/lit8 v8, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_62
    cmpl-float v1, v0, v3

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_63
    if-gtz v7, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :cond_8
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_65
    if-gtz v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_66
    and-int/lit16 v6, v6, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_67
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_68
    shr-int/lit8 v0, v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_69
    add-int/lit8 v9, v9, -0x70

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6a
    if-gtz v9, :cond_a

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a6

    nop

    nop

    :goto_6b
    move v8, v7

    nop

    nop

    :goto_6c
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    or-int/2addr v6, v7

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v9}, Lcgb;->a(I)F

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_70
    cmpl-float v9, v8, v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v6, :cond_b

    nop

    goto/32 :goto_14d

    nop

    :cond_b
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_72
    cmpg-float v5, p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_11a

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_76
    int-to-short v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_77
    rsub-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_78
    cmpg-float v8, p0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_79
    move v8, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move v9, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_7b
    or-long/2addr v2, v4

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_7c
    or-int/2addr v0, v1

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_7d
    const-wide/16 v4, 0x3f

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    and-int/lit16 v11, v11, 0x3ff

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_7f
    and-long/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_80
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    mul-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_82
    add-int/lit16 v0, v0, 0x2000

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-ltz v9, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_13d

    nop

    nop

    :goto_85
    add-int/2addr v6, v5

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

    :goto_86
    goto/16 :goto_11a

    nop

    nop

    :goto_87
    goto/32 :goto_7e

    nop

    nop

    :goto_88
    move/from16 v17, v0

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

    :goto_89
    or-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    shl-long/2addr v8, v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8b
    move/from16 v0, p3

    nop

    :goto_8c
    goto/32 :goto_62

    nop

    nop

    :goto_8d
    shl-long/2addr v6, v2

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    int-to-short v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_8f
    cmpg-float v6, p1, v4

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

    :goto_90
    shl-int/lit8 v6, v8, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v14, -0xa

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_92
    move v7, v6

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_64

    nop

    nop

    :goto_94
    move v6, v9

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_96
    cmpl-float v5, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_97
    const/16 v12, 0xff

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_99
    if-ltz v9, :cond_e

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

    :cond_e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9a
    if-eq v9, v12, :cond_f

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    :cond_f
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    or-int/2addr v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v1, v0, Lcgb;->c:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_138

    nop

    nop

    :goto_9e
    goto/32 :goto_159

    nop

    nop

    :goto_9f
    goto/16 :goto_8c

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_11a

    nop

    :goto_a2
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_a3
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_a5
    cmpg-float v0, p3, v4

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_a6
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0, v5}, Lcgb;->a(I)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_a9
    shl-int/lit8 v8, v8, 0xa

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v8, 0x0

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_ab
    and-int/lit16 v5, v0, 0x1000

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    add-float/2addr v6, v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_165

    nop

    :goto_ae
    goto/32 :goto_164

    nop

    nop

    nop

    :goto_af
    shl-int/lit8 v1, v4, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_b0
    if-ge v8, v14, :cond_10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_10f

    nop

    nop

    :goto_b1
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_133

    nop

    :goto_b3
    goto/32 :goto_154

    nop

    nop

    nop

    :goto_b4
    float-to-int v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-ltz v8, :cond_11

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b6
    shr-int/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move v5, v3

    nop

    nop

    :goto_b8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    shl-int/lit8 v7, v9, 0xa

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_133

    nop

    :goto_bb
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b9

    nop

    nop

    :goto_bd
    move v5, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_be
    shl-int/lit8 v8, v8, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_bf
    move v0, v4

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    shr-int/lit8 v6, v6, 0xd

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

    :goto_c1
    if-nez v10, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_133

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_fd

    nop

    nop

    :goto_c4
    move/from16 v4, p2

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    or-int v0, v0, v17

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_c9
    if-ltz v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_14
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    add-int/lit16 v7, v7, 0x2000

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    shl-int/lit8 v0, v9, 0xa

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_cd
    and-int v18, v7, v10

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_ce
    const v4, 0x447fc000    # 1023.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_cf
    const/16 v16, 0x31

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_d0
    goto/16 :goto_93

    nop

    nop

    :goto_d1
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_d2
    cmpl-float v7, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_d3
    shl-long/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const/4 v5, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d5
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_d7
    or-int v7, v18, v13

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    shr-int/lit8 v11, v7, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-ltz v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    :cond_15
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_da
    add-int/lit8 v9, v9, -0x70

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_db
    or-int/2addr v6, v9

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    and-int/2addr v9, v12

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_dd
    cmpg-float v9, p1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_de
    if-lez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_16
    goto/32 :goto_5b

    nop

    :goto_df
    shl-int/lit8 v5, v5, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move/from16 v6, p1

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_e2
    and-int/2addr v8, v12

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    cmpl-float v7, v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_e4
    int-to-long v4, v6

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_e5
    invoke-virtual/range {p4 .. p4}, Lcgb;->f()Z

    move-result v1

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    and-int/lit16 v9, v7, 0x1000

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    if-gtz v1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_151

    nop

    nop

    nop

    :goto_e8
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_e9
    if-eq v1, v5, :cond_18

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_18
    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_ea
    and-int/2addr v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_eb
    move v6, v3

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_4d

    nop

    nop

    :goto_ed
    add-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_ee
    if-ge v9, v15, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_19
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const v1, 0x1c

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_f0
    if-nez v18, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_f1
    if-nez v11, :cond_1b

    nop

    goto/32 :goto_11f

    nop

    nop

    :cond_1b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    add-int/lit16 v6, v6, 0x2000

    nop

    nop

    :goto_f3
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move-object/from16 v0, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_f5
    goto/16 :goto_95

    nop

    :goto_f6
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_f7
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v0, v5}, Lcgb;->a(I)F

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_f9
    const-string v5, "Unknown color space, please use a color space in ColorSpaces"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_fa
    if-eq v9, v12, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-ge v8, v15, :cond_1d

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_1d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_fc
    const/16 v2, 0x30

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    if-lez v9, :cond_1e

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_1e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    move/from16 v5, p0

    nop

    nop

    :goto_ff
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_100
    add-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_101
    sget-wide v2, Lcel;->a:J

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    and-int/lit16 v7, v7, 0x1000

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_103
    shr-int/2addr v0, v5

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    add-int/lit8 v8, v8, -0x70

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_105
    int-to-long v6, v7

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

    :goto_106
    move/from16 v9, v16

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_107
    if-ltz v7, :cond_1f

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_c7

    nop

    :goto_109
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_10a
    and-int/2addr v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_10b
    const/4 v6, 0x6

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_10c
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10d
    and-long/2addr v4, v8

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

    :goto_10e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    or-int v6, v11, v13

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_110
    or-int/2addr v7, v8

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_112
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_113
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    rem-int v0, v0, v1

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    if-eq v8, v12, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    :cond_20
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_117
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_14f

    nop

    nop

    :goto_119
    move v7, v11

    nop

    nop

    nop

    :goto_11a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11b
    if-nez v0, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    :cond_21
    goto/32 :goto_cc

    nop

    nop

    :goto_11c
    goto/16 :goto_12c

    nop

    nop

    :goto_11d
    goto/32 :goto_12b

    nop

    nop

    :goto_11e
    goto/16 :goto_141

    nop

    :goto_11f
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_120
    if-gtz v7, :cond_22

    nop

    nop

    goto/32 :goto_ae

    nop

    :cond_22
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    ushr-int/lit8 v7, v6, 0x1f

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_122
    if-gtz v5, :cond_23

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

    :cond_23
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_123
    rsub-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    move/from16 v7, p1

    nop

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_127
    or-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_128
    or-int/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    ushr-int/lit8 v8, v7, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    move v0, v8

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    goto/16 :goto_111

    nop

    :goto_12e
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    cmpl-float v6, v5, v3

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v0, v5}, Lcgb;->b(I)F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_131
    and-int/lit16 v0, v0, 0x1000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_132
    move/from16 v17, v10

    nop

    :goto_133
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_134
    float-to-int v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_135
    or-int/2addr v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_136
    if-nez v8, :cond_24

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_137
    move/from16 v5, v16

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_139
    or-int/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {v0, v5}, Lcgb;->b(I)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_13b
    ushr-int/lit8 v9, v0, 0x17

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    move/from16 v17, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_13d
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    if-lez v9, :cond_25

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    const/4 v6, 0x0

    nop

    nop

    :goto_141
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    move v6, v4

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

    :goto_143
    or-int v0, v10, v13

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_144
    move v3, v4

    nop

    nop

    :goto_145
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    const/16 v7, 0x200

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_147
    or-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_148
    shl-int/lit8 v7, v7, 0xf

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

    :goto_149
    const-wide/16 v10, 0x3ff

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    int-to-long v2, v2

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_14b
    and-int v11, v6, v10

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_14c
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_14d
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_14e
    add-float/2addr v5, v2

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    and-int/lit16 v9, v9, 0x3ff

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_150
    ushr-int/lit8 v8, v6, 0x17

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_151
    move v0, v3

    nop

    nop

    nop

    :goto_152
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_153
    if-gtz v6, :cond_26

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    :cond_26
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_155
    shl-int/lit8 v8, v8, 0xf

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_156
    or-int/2addr v7, v11

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_157
    shl-long/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_158
    or-int/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_159
    and-int/lit16 v10, v11, 0x3ff

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_15a
    if-nez v9, :cond_27

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_27
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_15b
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    and-int/lit16 v8, v6, 0x1000

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_15e
    or-int/2addr v0, v8

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_15f
    or-int/2addr v8, v9

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_160
    add-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_161
    int-to-long v10, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_162
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_163
    shr-int/lit8 v7, v7, 0xd

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_164
    move v3, v4

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public static final f(JJ)J
    .locals 19

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    shl-int/lit8 v0, v7, 0xa

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v7, v7, -0x70

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_2
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_3
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    and-int/lit16 v7, v2, 0x1000

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    shl-int/lit8 v1, v1, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    shl-int/lit8 v2, v2, 0x18

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

    :goto_7
    const-wide/32 v7, 0xffff

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lcel;->b(J)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_9
    and-long/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_a
    shr-int/lit8 v0, v0, 0xd

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    float-to-int v2, v8

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move/from16 v2, v18

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_f
    and-long/2addr v2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_10
    or-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    or-int/2addr v3, v4

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-short v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit16 v0, v0, 0x2000

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    div-float/2addr v0, v8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v14, 0x800000

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    ushr-int/lit8 v7, v2, 0x17

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3e

    nop

    nop

    :goto_1d
    goto/32 :goto_116

    nop

    nop

    :goto_1e
    shl-int/lit8 v3, v3, 0xf

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

    :goto_1f
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_20
    and-long/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-float/2addr v4, v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_22
    shl-int/lit8 v3, v3, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v2, v10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_25
    goto :goto_24

    nop

    :goto_26
    goto/32 :goto_c3

    nop

    nop

    :goto_27
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_28
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v7, v7, -0x70

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_2b
    move/from16 v16, v18

    nop

    :goto_2c
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    or-int/2addr v2, v10

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

    nop

    :goto_2e
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move/from16 v17, v18

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    shr-int/lit8 v2, v2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    or-long/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_34
    add-float/2addr v3, v4

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static/range {p2 .. p3}, Lcel;->f(J)Lcgb;

    move-result-object v1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_37
    mul-float/2addr v11, v7

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_38
    invoke-static/range {p2 .. p3}, Lcel;->c(J)F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    or-int/2addr v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3a
    shl-int/lit8 v7, v7, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_3c
    const-wide/16 v4, 0x3f

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

    :goto_3d
    move/from16 v17, v7

    nop

    nop

    :goto_3e
    goto/32 :goto_b1

    nop

    nop

    :goto_3f
    iget v1, v1, Lcgb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_40
    if-ge v7, v15, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    :goto_41
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_42
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_43
    shl-int/lit8 v2, v7, 0xa

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v7, v3

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_46
    goto/16 :goto_63

    nop

    nop

    :goto_47
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_ad

    nop

    nop

    :goto_49
    goto/32 :goto_ac

    nop

    nop

    :goto_4a
    add-float/2addr v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4b
    and-int/lit16 v2, v2, 0x1000

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4c
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    and-int/2addr v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_4e
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_4f
    and-int/lit16 v3, v3, 0x1000

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_50
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_51
    or-int v0, v11, v14

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_52
    ushr-int/lit8 v4, v3, 0x1f

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_53
    and-int/2addr v11, v0

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-float/2addr v4, v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_56
    and-int/lit16 v10, v10, 0x3ff

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v13, 0xff

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_58
    float-to-int v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_59
    add-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/16 v18, 0x0

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_5b
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_5c
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5d
    shr-int/lit8 v10, v2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    cmpg-float v10, v8, v9

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    mul-float/2addr v4, v2

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    add-int/lit16 v2, v2, 0x2000

    nop

    :goto_61
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v3, v10

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_d8

    nop

    nop

    :goto_64
    move/from16 v18, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v7, v7, -0x70

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-wide v0

    nop

    :goto_67
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    shl-long/2addr v2, v9

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    int-to-long v0, v1

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-short v0, v0

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

    :goto_6d
    shl-int/lit8 v4, v4, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move/from16 v7, v18

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6f
    and-int/lit16 v10, v10, 0x3ff

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_70
    or-int/2addr v0, v4

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_71
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static/range {p2 .. p3}, Lcel;->d(J)F

    move-result v4

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1}, Lcgb;->f()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_75
    float-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_76
    move v7, v5

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_77
    move/from16 v3, v18

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    rsub-int/lit8 v5, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    or-int/2addr v3, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7a
    const/16 v9, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7b
    const/16 v16, 0x200

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7d
    mul-float/2addr v3, v1

    nop

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

    :goto_7e
    sub-float v7, v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v0, v1}, Lcel;->d(J)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_80
    add-int/lit16 v3, v3, 0x2000

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_103

    nop

    nop

    :goto_82
    if-eqz v10, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_83
    move/from16 v17, v18

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

    :goto_84
    shr-int/2addr v2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_85
    move v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_86
    move/from16 v18, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_87
    if-eqz v10, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_4
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_88
    mul-float/2addr v1, v7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_89
    if-nez v7, :cond_5

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const v11, 0x7fffff

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_90
    ushr-int/lit8 v4, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v9, 0x30

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_92
    const-wide/16 v11, 0x3ff

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_93
    shl-int/lit8 v3, v7, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_94
    shl-long/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    or-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_97
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v12, :cond_7

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static/range {p2 .. p3}, Lcel;->b(J)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    add-float/2addr v8, v2

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    ushr-int/lit8 v7, v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_9c
    invoke-static/range {p2 .. p3}, Lcel;->a(J)F

    move-result v5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9d
    move/from16 v3, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-ge v7, v5, :cond_8

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_8
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_9f
    and-int v12, v2, v11

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a2
    rsub-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move/from16 v17, v5

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_a4
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e8

    nop

    :goto_a5
    goto/16 :goto_f1

    nop

    :goto_a6
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v11, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_5f

    nop

    nop

    :goto_ab
    and-long/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_ac
    move/from16 v3, v18

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/16 v5, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_b1
    shl-int/lit8 v0, v17, 0xa

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_b2
    move/from16 v2, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    int-to-long v2, v3

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

    :goto_b4
    if-ge v7, v15, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_b5
    or-int/2addr v0, v4

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_b6
    move/from16 v18, v5

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

    :goto_b7
    invoke-static {v0, v1}, Lcel;->c(J)F

    move-result v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    div-float/2addr v4, v8

    nop

    :goto_b9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_ba
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    and-int/lit16 v5, v0, 0x1000

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_bc
    if-lez v7, :cond_c

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_bd
    mul-float v8, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_be
    shl-int/lit8 v4, v4, 0xf

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_bf
    if-ge v7, v5, :cond_d

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :cond_d
    goto/32 :goto_d4

    nop

    nop

    :goto_c0
    shr-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_c1
    int-to-long v5, v2

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    rsub-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_c3
    move/from16 v2, v18

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_c4
    mul-float/2addr v4, v7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-eq v7, v13, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :cond_e
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_2c

    nop

    nop

    :goto_c7
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c8
    move/from16 v3, v16

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-nez v2, :cond_f

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    shl-long v4, v9, v4

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v0, v1}, Lcel;->a(J)F

    move-result v2

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_cc
    shl-long/2addr v7, v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_cf
    goto/16 :goto_24

    nop

    nop

    :goto_d0
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    shr-int/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_d2
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    add-float/2addr v4, v11

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    move/from16 v7, v17

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    move v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_d6
    and-int/lit16 v0, v0, 0x1000

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_d7
    and-int/2addr v7, v13

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d8
    shl-int/lit8 v7, v7, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    and-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_dd
    if-lez v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_de
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_df
    const/16 v2, 0x20

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move-wide/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    div-float/2addr v3, v8

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_b7

    nop

    nop

    :goto_e3
    move v3, v9

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    or-int/2addr v2, v3

    nop

    :goto_e5
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_63

    nop

    :goto_e7
    goto/32 :goto_56

    nop

    nop

    :goto_e8
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_124

    nop

    nop

    nop

    :goto_ea
    shl-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_eb
    if-eq v7, v13, :cond_11

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_11
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    if-nez v3, :cond_12

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_63

    nop

    :goto_ee
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    move/from16 v7, v18

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    or-int v0, v0, v18

    nop

    :goto_f1
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-eq v7, v13, :cond_13

    nop

    goto/32 :goto_ee

    nop

    :cond_13
    goto/32 :goto_119

    nop

    nop

    nop

    :goto_f3
    shr-int/lit8 v10, v3, 0xd

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_f4
    or-int/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f5
    if-ge v7, v15, :cond_14

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_f6
    move/from16 v7, v17

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_f7
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_f9
    or-long/2addr v2, v5

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

    :goto_fa
    and-int/2addr v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    mul-float/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    ushr-int/lit8 v3, v2, 0x1f

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

    :goto_fd
    mul-float/2addr v11, v5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_fe
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    or-int/2addr v0, v5

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

    :goto_100
    move v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_101
    if-lez v7, :cond_15

    nop

    goto/32 :goto_e7

    nop

    nop

    :cond_15
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_102
    int-to-long v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_103
    shr-int/lit8 v3, v3, 0xd

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_104
    if-eqz v10, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {v1, v2, v0}, Lcel;->e(JLcgb;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_106
    and-int/lit16 v7, v3, 0x1000

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    add-float/2addr v8, v5

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_108
    ushr-int/lit8 v7, v3, 0x17

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_109
    int-to-short v2, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    if-ge v7, v5, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :cond_17
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    int-to-long v9, v4

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_10c
    mul-float/2addr v4, v1

    nop

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

    :goto_10d
    const/4 v9, 0x0

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_10e
    const/16 v17, 0x31

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_10f
    or-int v2, v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_e5

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_112
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_113
    if-nez v7, :cond_18

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    and-int/lit16 v5, v10, 0x3ff

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_117
    const v5, 0x447fc000    # 1023.0f

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_118
    or-long/2addr v2, v4

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

    :goto_119
    if-nez v12, :cond_19

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_11c
    shr-int/lit8 v10, v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_11d
    const/16 v15, -0xa

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_11e
    and-int v12, v3, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    add-float/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_120
    or-int/2addr v3, v4

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    or-int v3, v12, v14

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_122
    or-int/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_123
    move/from16 v2, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static/range {p2 .. p3}, Lcel;->f(J)Lcgb;

    move-result-object v0

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    mul-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic g(III)J
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    shl-int/lit8 p0, p0, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    or-int/2addr p0, v0

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

    :goto_2
    invoke-static {p0}, Lcen;->c(I)J

    move-result-wide p0

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

    :goto_3
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_4
    shl-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v0, -0x1000000

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    or-int/2addr p0, p1

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
    or-int/2addr p0, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
