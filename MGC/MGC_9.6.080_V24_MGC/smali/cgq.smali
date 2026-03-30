.class public final Lcgq;
.super Lcgb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const-wide v0, 0x300000002L

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

    :goto_2
    invoke-direct {p0, v3, v0, v1, v2}, Lcgb;-><init>(Ljava/lang/String;JI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const-string v3, "Generic L*a*b*"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    goto/32 :goto_2

    nop

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p0, 0x43000000    # 128.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 p0, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    const/high16 p0, -0x3d000000    # -128.0f

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

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(FFF)F
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr p1, p3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lcgp;->e:[F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    add-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const p0, 0x3ba3d70a    # 0.005f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
    cmpg-float p2, p1, p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float p0, p1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float p2, p3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move p1, p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-ltz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-gtz p2, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    aget p1, p1, p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    if-gtz p2, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_10
    add-float/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    cmpl-float p2, p3, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lcgp;->a:Lchl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    move p3, p0

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p1, p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr p0, p1

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    div-float/2addr p1, p0

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

    :goto_1d
    const/high16 p0, 0x42e80000    # 116.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    mul-float/2addr p3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    const p0, 0x3e53dcb1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 p0, -0x3d000000    # -128.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    const/high16 p0, 0x41800000    # 16.0f

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

    :goto_25
    const p0, 0x3e038027

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    const p0, -0x41f2c235

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/high16 p0, 0x43000000    # 128.0f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-float p2, p1, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float p0, p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    if-ltz p2, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 p0, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final d(FFF)J
    .locals 2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    :goto_3
    const p0, 0x3b03126f    # 0.002f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr p1, p0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float p3, p2, p0

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

    :goto_7
    const v0, 0x3e038027

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move p1, p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ltz p3, :cond_0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget p2, p1, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    mul-float/2addr p3, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const/high16 p0, -0x3d000000    # -128.0f

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_12
    const/high16 p0, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    div-float/2addr p1, p0

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

    :goto_14
    if-ltz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Lcgp;->e:[F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    aget p1, p1, p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-gtz p3, :cond_2

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

    :cond_2
    goto/32 :goto_45

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    nop

    :goto_19
    cmpl-float p0, p1, p0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 p0, 0x43000000    # 128.0f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float p3, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1c
    mul-float p0, p1, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    :goto_1f
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    mul-float/2addr p2, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    move p1, p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_29
    const/16 p0, 0x20

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr p3, p2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    mul-float p0, p1, v0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    const p0, 0x3e53dcb1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2e
    int-to-long p1, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    cmpg-float p3, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x18

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_34
    or-long/2addr p0, p2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_35
    mul-float p3, p2, v0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-gtz p3, :cond_4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    shl-long p0, p1, p0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_39
    move p2, p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 p0, 0x41800000    # 16.0f

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

    nop

    nop

    :goto_3c
    const-wide p2, 0xffffffffL

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    and-long/2addr p2, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, -0x41f2c235

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

    :goto_3f
    sget-object p1, Lcgp;->a:Lchl;

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

    :goto_40
    const/high16 p0, 0x42e80000    # 116.0f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

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

    :goto_42
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_44
    cmpg-float p3, p2, p0

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

    :goto_45
    mul-float p3, p2, p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-gtz p0, :cond_5

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    cmpl-float p3, p2, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move p2, p0

    nop

    nop

    :goto_49
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz p3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(FFFFLcgb;)J
    .locals 5

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    const p0, 0x3c111aa7

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1
    move p0, p2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3
    invoke-static {p3, p1, v0, p4, p5}, Lcen;->e(FFFFLcgb;)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4
    float-to-double v3, p1

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

    :goto_5
    sub-float/2addr p2, p0

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lcgp;->e:[F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz p0, :cond_0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ltz v0, :cond_1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

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

    nop

    :goto_d
    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    double-to-float p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_10
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-float/2addr p2, v1

    nop

    nop

    :goto_13
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_14
    aget p0, p0, v0

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

    :goto_15
    mul-float/2addr p3, p2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_16
    div-float/2addr p3, p0

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

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_18
    const/high16 p0, -0x3d000000    # -128.0f

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_19
    move p1, v0

    nop

    nop

    :goto_1a
    goto/32 :goto_3b

    nop

    nop

    :goto_1b
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    div-float/2addr p1, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1e
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ltz v0, :cond_2

    nop

    nop

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

    :goto_21
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

    :goto_22
    float-to-double v0, p3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aget v0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr p1, v2

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

    :goto_26
    const/high16 p0, 0x43fa0000    # 500.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    :goto_28
    double-to-float p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

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

    :goto_2a
    cmpl-float v1, p1, v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    div-float/2addr p2, v0

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

    :goto_2c
    mul-float/2addr p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    cmpl-float v0, p2, p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2e
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_30
    cmpg-float v0, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_31
    const v1, 0x3e0d3dcb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    cmpl-float p2, p0, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    :goto_34
    if-gtz p2, :cond_6

    nop

    goto/32 :goto_1c

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0xe

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_36
    cmpg-float v1, p2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_37
    double-to-float p0, v0

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

    nop

    :goto_38
    if-gtz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmpl-float p0, p3, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3a
    float-to-double v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v1, 0x43480000    # 200.0f

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

    :goto_3c
    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3e
    sub-float/2addr p1, p2

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

    nop

    nop

    :goto_3f
    goto/16 :goto_2

    nop

    nop

    :goto_40
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v2, 0x40f92f68

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    move p1, p0

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_45
    if-ltz v1, :cond_9

    nop

    goto/32 :goto_40

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/high16 p0, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_47
    const v1, 0xe

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/high16 p3, 0x42e80000    # 116.0f

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

    :goto_49
    mul-float/2addr p2, v2

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

    :goto_4a
    const/high16 v0, 0x43000000    # 128.0f

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_50
    add-float/2addr p3, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_51
    move v0, p0

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-float p0, p3, v1

    nop

    nop

    :goto_54
    goto/32 :goto_48

    nop

    nop

    :goto_55
    sget-object p0, Lcgp;->a:Lchl;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    cmpg-float v0, p3, p0

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

    :goto_57
    aget v0, p0, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_58
    mul-float/2addr p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    cmpl-float v0, p3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5c
    const/high16 p0, -0x3e800000    # -16.0f

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5d
    mul-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5e
    cmpl-float v0, p1, p0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5f
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method
