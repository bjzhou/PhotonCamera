.class public final Lchm;
.super Lcgb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v3, v0, v1, v2}, Lcgb;-><init>(Ljava/lang/String;JI)V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const-string v3, "Generic XYZ"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const-wide v0, 0x300000001L

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const/16 v2, 0xe

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/high16 p0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 p0, -0x40000000    # -2.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(FFF)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, -0x40000000    # -2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ltz p1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    cmpl-float p1, p3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-gtz p1, :cond_1

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

    nop

    nop

    :goto_6
    move p3, p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return p3

    nop

    nop

    nop

    :goto_9
    cmpg-float p1, p3, p0

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

    :goto_a
    const/high16 p0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final d(FFF)J
    .locals 2

    goto/32 :goto_25

    nop

    nop

    :goto_0
    or-long/2addr p0, p2

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

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-ltz p3, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 p2, 0x20

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 p0, -0x40000000    # -2.0f

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_22

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    :goto_9
    cmpl-float v0, p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    cmpg-float p1, p2, p0

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

    :goto_10
    move p1, p3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    const/high16 p3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_15
    if-ltz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    move p2, p0

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    const-wide v0, 0xffffffffL

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    cmpl-float p0, p2, p3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    and-long/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    int-to-long v0, p1

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

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    move p1, p0

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    shl-long p2, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    move p3, p2

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    cmpg-float p3, p1, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    if-gtz p0, :cond_4

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop
.end method

.method public final e(FFFFLcgb;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-ltz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_1
    if-gtz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_2
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2, v0, p4, p5}, Lcen;->e(FFFFLcgb;)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v1, p1, v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    move p1, p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-float v0, p1, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    cmpg-float v1, p2, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-ltz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v1, p2, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    if-ltz v0, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz v1, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_13
    if-gtz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    cmpg-float v1, p3, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    cmpl-float p0, p3, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move p3, p0

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v0, p3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    move p2, p0

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-wide p0

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    move p2, v0

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    const/high16 p0, -0x40000000    # -2.0f

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

    :goto_25
    move p1, v0

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop
.end method
