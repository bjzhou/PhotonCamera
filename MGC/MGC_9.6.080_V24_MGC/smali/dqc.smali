.class public final Ldqc;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(F)F
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    int-to-long v0, v0

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

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    mul-float v1, v0, v0

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

    :goto_5
    sub-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    long-to-int v0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-float v1, v0, v1

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

    :goto_8
    sub-float p0, v0, p0

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

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-float/2addr v0, v1

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

    :goto_e
    const v2, 0x3eaaaaab

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x2a510554

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    div-float v1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

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

    :goto_12
    mul-float/2addr p0, v2

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

    :goto_13
    mul-float v1, v0, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide v2, 0x1ffffffffL

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

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    and-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    div-long/2addr v0, v2

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

    :goto_1c
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    div-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v2, 0x3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public static final b(FFF)F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    mul-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v0, p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    add-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    mul-float/2addr v0, p0

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
    return v0

    nop

    nop

    nop

    nop
.end method
