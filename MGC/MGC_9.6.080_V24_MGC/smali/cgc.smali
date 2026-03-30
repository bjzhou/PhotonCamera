.class public final Lcgc;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(DDDDDD)D
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sub-double/2addr p0, p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-double/2addr p6, p10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-double/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-gez p8, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-wide p0

    nop

    nop

    nop

    :goto_6
    mul-double/2addr p8, p6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-double p8, p0, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    div-double/2addr p0, p6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static final b(DDDDDD)D
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-gez p8, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-double/2addr p2, p4

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
    invoke-static {p2, p3, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

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

    :goto_3
    mul-double/2addr p2, p0

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
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-wide p0

    nop

    nop

    nop

    :goto_7
    cmpl-double p8, p0, p8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    mul-double/2addr p0, p6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final c(Lchl;Lchl;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lchl;->b:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Lchl;->b:F

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
    if-ltz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    cmpg-float p0, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v1, v1, v2

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    sub-float/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_e
    const v0, 0x2

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

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1f

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

    :goto_14
    const v2, 0x3a83126f    # 0.001f

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

    :goto_15
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    if-ne p0, p1, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

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

    :goto_18
    if-ltz p0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v2, p1, Lchl;->a:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-float/2addr v1, v2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, p0, Lchl;->a:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d([F[F[F)[F
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    aput v1, p1, v0

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

    nop

    :goto_1
    div-float/2addr p2, p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2, p0}, Lcgc;->f([F[F)[F

    move-result-object p0

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

    :goto_4
    invoke-static {p0}, Lcgc;->e([F)[F

    move-result-object p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    aget p1, p1, v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    aget v1, p2, v0

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

    :goto_8
    aput p2, p1, v4

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p0}, Lcgc;->g([F[F)[F

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    div-float/2addr v3, v4

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

    :goto_f
    aget v4, p1, v2

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p2}, Lcgc;->i([F[F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

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

    :goto_14
    aget v3, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    aget v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    aget p2, p2, v4

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

    :goto_1a
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    const v1, 0x20

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    invoke-static {p0, p1}, Lcgc;->i([F[F)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    aput v3, p1, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method public static final e([F)[F
    .locals 25

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    aput v21, v4, v7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2
    mul-float v24, v10, v14

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    aget v2, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float v18, v18, v20

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

    :goto_5
    aput v14, v4, v15

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput v0, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_7
    mul-float v16, v4, v12

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float v21, v21, v20

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
    div-float v0, v0, v20

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

    :goto_a
    aget v8, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_b
    div-float v14, v14, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    new-array v4, v4, [F

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
    mul-float v20, v2, v19

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-float v14, v14, v16

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

    :goto_f
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    sub-float v19, v19, v20

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
    mul-float v18, v18, v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    sub-float v0, v0, v22

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

    :goto_13
    aget v14, v0, v13

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-float v19, v19, v20

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
    div-float v2, v2, v20

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    sub-float/2addr v2, v4

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

    nop

    :goto_18
    mul-float/2addr v14, v4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_1a
    mul-float v19, v10, v18

    nop

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    mul-float v23, v8, v16

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

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput v23, v4, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v6, v8

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v11, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_22
    aput v16, v4, v5

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

    :goto_23
    div-float v23, v23, v20

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_24
    mul-float v24, v6, v23

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_25
    return-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    mul-float v22, v8, v18

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v4, 0x9

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

    :goto_29
    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    sub-float v21, v21, v22

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2b
    aget v16, v0, v15

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aput v6, v4, v11

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float v22, v6, v14

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-float v20, v20, v22

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    sub-float v16, v16, v22

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

    :goto_31
    aget v6, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    aget v10, v0, v9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_36
    sub-float v23, v23, v24

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_37
    aput v19, v4, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_38
    div-float v6, v6, v20

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

    nop

    :goto_39
    const/4 v15, 0x5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3a
    mul-float/2addr v4, v8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v17, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3c
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3d
    aget v12, v0, v11

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

    :goto_3e
    const/4 v13, 0x2

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

    :goto_3f
    mul-float/2addr v12, v2

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

    :goto_40
    aget v18, v0, v17

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aput v2, v4, v17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_42
    aget v4, v0, v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    mul-float v0, v6, v16

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v2, v10

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_45
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    mul-float v22, v6, v10

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_47
    sub-float/2addr v6, v12

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

    :goto_48
    mul-float v20, v12, v16

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float v22, v4, v21

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

    nop

    :goto_4a
    sub-float v18, v18, v22

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    mul-float v21, v12, v14

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

    :goto_4c
    mul-float v16, v16, v2

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

    :goto_4d
    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4e
    div-float v16, v16, v20

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4f
    add-float v20, v20, v24

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    mul-float v22, v4, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_51
    aput v18, v4, v9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static final f([F[F)[F
    .locals 29

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v9, v9, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    mul-float v15, v12, v14

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    mul-float v9, v9, v22

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget v22, v0, v21

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
    aget v26, v1, v21

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    const/4 v11, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_7
    add-float/2addr v5, v15

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_8
    mul-float v3, v3, v24

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float v28, v20, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_b
    const/16 v19, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    add-float v14, v14, v25

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

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_e
    mul-float v25, v7, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    aput v25, v0, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_10
    add-float v25, v25, v28

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_12
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_13
    move-object/from16 v1, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    const/4 v13, 0x2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_15
    mul-float v26, v26, v0

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

    :goto_16
    mul-float v14, v3, v9

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_17
    aget v0, v0, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_18
    aget v24, v1, v11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    mul-float v17, v17, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    mul-float v10, v7, v9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float v18, v17, v9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    aput v4, v0, v13

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput v5, v0, v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1e
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    mul-float v18, v18, v24

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aget v9, v1, v6

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

    :goto_21
    mul-float v15, v10, v4

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

    :goto_22
    add-float v10, v10, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    aget v26, v1, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v23, 0x8

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

    nop

    :goto_25
    aget v7, v0, v6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-float v10, v10, v17

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_27
    add-float v14, v14, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_28
    aget v20, v0, v19

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

    :goto_29
    mul-float v24, v24, v22

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

    :goto_2a
    mul-float v4, v4, v18

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v4, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2c
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float v20, v20, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-float/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2f
    mul-float v27, v12, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    add-float/2addr v5, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    aput v10, v0, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_32
    mul-float/2addr v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aget v4, v1, v2

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

    :goto_34
    aput v15, v0, v8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_35
    mul-float v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_36
    const/16 v16, 0x4

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5b

    nop

    nop

    :goto_39
    add-float v9, v9, v26

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3a
    add-float/2addr v4, v9

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

    :goto_3b
    const/16 v21, 0x5

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

    :goto_3c
    add-float v15, v15, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3d
    aput v9, v0, v21

    nop

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

    nop

    :goto_3e
    mul-float v21, v20, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    nop

    :goto_40
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_42
    array-length v2, v1

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

    :goto_43
    aput v3, v0, v11

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_44
    add-float v18, v18, v0

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

    :goto_45
    add-float/2addr v3, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_46
    mul-float v27, v17, v24

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_47
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_48
    mul-float v22, v22, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_49
    aget v3, v0, v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-float v15, v15, v21

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-float v9, v9, v24

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4d
    add-float v25, v25, v27

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

    :goto_4e
    aget v18, v0, v13

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4f
    aget v10, v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_50
    mul-float v10, v10, v24

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_51
    mul-float/2addr v14, v0

    nop

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

    :goto_52
    aget v17, v0, v16

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

    :goto_53
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

    :goto_54
    add-float v18, v18, v22

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    aget v14, v1, v13

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

    :goto_56
    aget v12, v0, v11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0x2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_58
    mul-float v7, v7, v26

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aget v9, v1, v8

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

    :goto_5a
    aget v24, v1, v16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5b
    move-object/from16 v0, p0

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

    :goto_5c
    mul-float v25, v10, v9

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5d
    aput v14, v0, v6

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

    :goto_5e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5f
    aput v18, v0, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_60
    aget v1, v1, v23

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop
.end method

.method public static final g([F[F)[F
    .locals 19

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput v8, v15, v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    aget v7, p0, v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v17, 0x8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/16 v16, 0x7

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

    :goto_6
    aput v10, v15, v9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput v1, v15, v0

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    mul-float v7, v7, v18

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    aget v10, p1, v9

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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

    :goto_c
    mul-float/2addr v14, v7

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

    :goto_d
    const v1, 0x13

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

    :goto_e
    aput v7, v15, v17

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

    :goto_f
    aput v4, v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    aget v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget v16, p1, v15

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

    nop

    :goto_12
    aget v17, p1, v16

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    aput v5, v15, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    const/4 v15, 0x6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v12, p1, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    mul-float v4, v4, v17

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    const/4 v11, 0x4

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

    nop

    :goto_1a
    aput v12, v15, v11

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    new-array v15, v15, [F

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

    :goto_1c
    const/16 v15, 0x9

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

    :goto_1d
    mul-float/2addr v10, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_1f
    const/4 v13, 0x5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v12, v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    const/4 v6, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    aget v2, p1, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    aput v2, v15, v0

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

    :goto_24
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
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

    nop

    nop

    :goto_27
    aget v8, p1, v6

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

    nop

    :goto_28
    aget v18, p1, v17

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    aget v5, p1, v3

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

    :goto_2c
    mul-float/2addr v8, v7

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

    :goto_2d
    mul-float/2addr v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    aget v14, p1, v13

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

    :goto_2f
    return-object v15

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_31
    aget v4, p0, v3

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    mul-float v1, v1, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    aput v14, v15, v13

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method

.method public static synthetic h(Lcgb;Lchl;)Lcgb;
    .locals 13

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_4
    iget-object v2, v0, Lchi;->d:Lchl;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v2 .. v12}, Lchi;-><init>(Ljava/lang/String;[FLchl;[FLcgo;Lcgo;FFLchk;I)V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v7, v0, Lchi;->k:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lcfz;->b:[F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lcfz;->a:Lcfz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iget v10, v0, Lchi;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    iget-object v8, v0, Lchi;->n:Lcgo;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v0, Lchi;->d:Lchl;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    :goto_f
    iget v9, v0, Lchi;->e:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

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

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    :goto_13
    invoke-static {p0, v1}, Lcgc;->f([F[F)[F

    move-result-object v6

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

    nop

    :goto_14
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2a

    nop

    nop

    :goto_16
    iget-object v3, v0, Lcgb;->a:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_17
    invoke-static {v2, p1}, Lcgc;->c(Lchl;Lchl;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    check-cast v0, Lchi;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    invoke-static {v1, v2, p0}, Lcgc;->d([F[F[F)[F

    move-result-object p0

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

    :goto_1b
    move-object v5, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    const/4 v12, -0x1

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

    :goto_1d
    iget-object v1, v0, Lchi;->i:[F

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

    :goto_1e
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    iget-wide v0, p0, Lcgb;->b:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_21
    invoke-static {v0, v1, v2, v3}, La;->q(JJ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, v0, Lchi;->h:[F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    const v0, 0x1d

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
    move-object v0, p0

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

    :goto_26
    const-wide v2, 0x300000000L

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lchl;->a()[F

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v11, v0, Lchi;->g:Lchk;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Lchi;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lchl;->a()[F

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final i([F[F)V
    .locals 9

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    aget v4, p1, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    aget v6, p1, v5

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

    :goto_4
    aput v7, p1, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    mul-float/2addr v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6
    aget v8, p0, v8

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const/4 v8, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    aget p0, p0, v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v1, v4

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
    aget v2, p1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    aput v0, p1, v5

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

    :goto_14
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_17
    const/16 v2, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget v7, p0, v7

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    aget v1, p0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    aget v7, p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-float/2addr v7, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    add-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    aget v1, p0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    add-float/2addr v0, v7

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

    :goto_22
    const v1, 0x2

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

    :goto_23
    aput v0, p1, v3

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

    :goto_24
    mul-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    aget v0, p0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float/2addr v1, v4

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

    :goto_2a
    aget v1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    aget v0, p0, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2c
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x5

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

    :goto_31
    array-length v0, p1

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

    nop

    :goto_32
    const/4 v7, 0x7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    mul-float/2addr p0, v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_34
    mul-float/2addr v7, v6

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
.end method

.method public static final j(Lcgb;Lcgb;)Lcgm;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, v2, v3}, La;->q(JJ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lchi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Lcgm;-><init>(Lcgb;Lcgb;I)V

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    move-object p1, v0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide v2, 0x300000000L

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    goto :goto_b

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Lcgk;-><init>(Lcgb;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1}, Lcgl;-><init>(Lchi;Lchi;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1, v2, v3}, La;->q(JJ)Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq p0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lchi;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    new-instance v0, Lcgl;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    :goto_1f
    new-instance v0, Lcgm;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v0, p1, Lcgb;->b:J

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p1, Lcgk;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v0, p0, Lcgb;->b:J

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
.end method
