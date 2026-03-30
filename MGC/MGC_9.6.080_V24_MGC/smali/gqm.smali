.class public final Lgqm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0xff

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput v0, p0, Lgqm;->a:I

    nop

    nop

    goto/32 :goto_4

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
    const/4 v0, 0x0

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

    :goto_5
    iput v0, p0, Lgqm;->b:I

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lgqm;->a:I

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0, v1}, Lhhg;->G(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lgqm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v0, v2}, Lhhg;->G(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const-string v0, "config_screenBrightnessSettingMaximumFloat"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    const-string v0, "config_screenBrightnessSettingMinimumFloat"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    const v0, 0x12

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

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lgqm;->a:I

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
    return p1

    nop

    nop

    nop

    :goto_3
    div-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(IFZ)I
    .locals 12

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr p2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1
    move p3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2
    int-to-double v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr v1, v2

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_7
    const v2, 0x477fff00    # 65535.0f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    float-to-double v8, p3

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9
    float-to-double v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    move-wide v6, v10

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

    :goto_b
    mul-float/2addr p2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_c
    add-float/2addr p2, p3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v1, p3, :cond_0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-ltz p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

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

    :goto_12
    const p3, -0x40f0a9b1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lgqm;->b:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v0, 0x41400000    # 12.0f

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_16
    sub-float/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_17
    const v1, -0x416e3fe0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_19
    if-ltz v1, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    :goto_1b
    int-to-float v2, p1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1c
    add-float/2addr p2, p3

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    add-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmpg-float p3, p2, v4

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v2, 0x3f0f564f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    const v0, 0x19

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return p1

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_61

    nop

    nop

    :goto_29
    const v3, 0x3e371ff0

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

    :goto_2a
    mul-float/2addr p0, p2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lgqm;->a:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_2c
    double-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    add-double/2addr v6, v10

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

    :goto_2e
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

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

    nop

    :goto_2f
    div-double/2addr v6, v8

    nop

    :goto_30
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_31
    sub-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_34
    const p3, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-float/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_37
    cmpg-double v1, v6, v10

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    mul-float/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_39
    float-to-double v1, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3b
    goto :goto_35

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    div-float/2addr p2, v3

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float p1, p1

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

    nop

    :goto_3f
    cmpg-float v1, v2, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    sub-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_45
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_46
    float-to-int p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    if-lez p3, :cond_5

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

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_48
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_49
    const p3, 0x3e91c020

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4b
    if-gtz v1, :cond_6

    nop

    goto/32 :goto_57

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    mul-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4d
    cmpl-double v1, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4e
    double-to-float v1, v1

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

    nop

    nop

    :goto_4f
    iget p0, p0, Lgqm;->a:I

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

    nop

    :goto_50
    int-to-float v1, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_51
    add-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_52
    add-float/2addr p1, p0

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

    :goto_53
    double-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_54
    const/4 v5, 0x0

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_55
    div-float/2addr p2, v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_30

    nop

    nop

    :goto_57
    goto/32 :goto_62

    nop

    nop

    :goto_58
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5b
    float-to-double p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmpg-double p3, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5d
    div-float/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5e
    div-float/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5f
    const-wide v8, 0x40efffe000000000L    # 65535.0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_60
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_61
    iget p1, p0, Lgqm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_62
    const-wide/16 v10, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    div-float/2addr p2, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_5

    nop

    :goto_65
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sub-float/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_67
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
