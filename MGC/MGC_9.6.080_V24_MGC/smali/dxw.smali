.class public final Ldxw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Ldxw;->a:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

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

    :goto_1
    iget p0, p0, Ldxw;->a:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    add-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    const v0, 0x17

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

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v2, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    mul-float p0, p1, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    add-float/2addr p1, v1

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

    nop

    :goto_11
    add-float/2addr p0, v0

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_13
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    goto :goto_a

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v1, -0x40800000    # -1.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p0, v2, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    :goto_1c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
