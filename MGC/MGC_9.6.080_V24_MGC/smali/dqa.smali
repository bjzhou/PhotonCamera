.class public final Ldqa;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(FFFFF)F
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    cmpg-float v0, p2, p3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    mul-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr p4, p3

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

    :goto_6
    add-float/2addr p0, p1

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

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_19

    nop

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

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    sub-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    sub-float/2addr p4, p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
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

    :goto_12
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    sub-float/2addr p3, p2

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

    :goto_15
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    move p4, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
