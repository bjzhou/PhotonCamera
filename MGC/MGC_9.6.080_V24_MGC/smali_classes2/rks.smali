.class public final Lrks;
.super Lrkm;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lrkm;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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


# virtual methods
.method public final a(Lrlc;FF)V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    div-float p2, p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    :goto_3
    add-float/2addr p3, p3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p3, p0, p2}, Lrlc;->f(FFF)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    mul-float/2addr p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    double-to-float p0, v4

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

    :goto_9
    invoke-direct {v0, v1, v1, p3, p3}, Lrky;-><init>(FFFF)V

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

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

    :goto_b
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

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

    nop

    :goto_d
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float/2addr p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_10
    iput p0, p1, Lrlc;->b:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    iput p0, v0, Lrky;->e:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 p2, 0x42b40000    # 90.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lrky;

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

    :goto_14
    const-wide v2, 0x4070e00000000000L    # 270.0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p2, p0, v0}, Lrlc;->b(Lrlb;FF)V

    goto/32 :goto_14

    nop

    nop

    :goto_17
    new-instance p2, Lrlb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr p0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_1a
    invoke-direct {p2}, Lrlb;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p1, Lrlc;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    iput p2, v0, Lrky;->f:F

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

    :goto_1f
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    add-float/2addr p3, v1

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

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    :goto_23
    const/high16 p2, 0x40000000    # 2.0f

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

    :goto_24
    const/high16 p0, 0x43340000    # 180.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    double-to-float p0, v0

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

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_28
    iput p3, p1, Lrlc;->c:F

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

    :goto_29
    const/high16 v0, 0x43870000    # 270.0f

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

    :goto_2a
    mul-float/2addr p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr p2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method
