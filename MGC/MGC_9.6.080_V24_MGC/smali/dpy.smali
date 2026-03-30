.class public final Ldpy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(F[F[F)F
    .locals 8

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    aget p1, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    div-float/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    move v7, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    aget p1, p1, p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v4, v3, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget p0, p2, v2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    move v6, p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-float/2addr p0, p2

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    goto :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    :goto_13
    return v6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget p0, p2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    if-gez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_18
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_19
    const/4 v5, -0x1

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

    :goto_1a
    const v1, 0x13

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    cmpg-float v0, p1, v6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    array-length v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    if-eq v4, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aget p1, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-static {v6, p0, p2, p1, v0}, Ldqa;->a(FFFFF)F

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    aget p0, p2, v4

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

    :goto_22
    mul-float/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_23
    const/4 p0, 0x0

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

    :goto_24
    move p0, p2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    return p0

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    :goto_2a
    const/4 v6, 0x0

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
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    :goto_2c
    move p2, v6

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

    :goto_2d
    const v0, 0xe

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget p2, p2, v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget p2, p2, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_12

    nop

    nop

    :goto_32
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_33
    add-int/2addr v3, v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_34
    neg-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    move p2, v7

    nop

    :goto_36
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_37
    aget v6, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method
