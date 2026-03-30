.class final Lrja;
.super Landroid/util/Property;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_1

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
    const-string v0, "animationFraction"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrjc;->a:[I

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

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lrjc;

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p1, Lrjc;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p1, Lrjc;->d:Lrir;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1
    sget-object v2, Lrjc;->a:[I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    aget p0, v1, p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3
    cmpg-float v1, p2, v4

    nop

    goto/32 :goto_2d

    nop

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

    goto/32 :goto_3e

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    :goto_6
    check-cast p2, Lrjk;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lrjc;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p0, p2, Lrjk;->b:F

    nop

    :goto_b
    goto/32 :goto_2f

    nop

    nop

    :goto_c
    add-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p1, Lrjc;->k:Ljava/util/List;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iput p0, p1, Lrjc;->f:F

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    const/16 v9, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v4, v7, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    :goto_12
    const/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v8, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v6, v7, v9}, Lrjc;->f(III)F

    move-result v6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p1, Lrjc;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_18
    array-length v1, p2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-interface {v2, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    cmpl-float v2, v1, v3

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2, p0, v1}, Lres;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_1c
    iput p0, v0, Lrjk;->c:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt p0, v7, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1f
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_69

    nop

    nop

    :goto_21
    iget-object v2, p1, Lrjc;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v8, p1, Lrjc;->c:Landroid/animation/TimeInterpolator;

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

    :goto_23
    aget v1, v1, v4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v5, v3

    nop

    :goto_25
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_26
    iput v1, p2, Lrjk;->g:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    goto/32 :goto_49

    nop

    :goto_28
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2a
    goto :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2c
    const/high16 v2, 0x44870000    # 1080.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2d
    if-lez v1, :cond_2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/2addr p0, v1

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

    :goto_2f
    move p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v4, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_32
    iget-object p0, p1, Lrjc;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    :goto_34
    invoke-interface {p0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_36
    iput v3, p2, Lrjk;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_37
    aget p2, p2, p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_38
    iget-object v2, p1, Lrjc;->c:Landroid/animation/TimeInterpolator;

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

    :goto_39
    mul-float/2addr p0, p2

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

    :goto_3a
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    invoke-static {v6, p2, v1}, Lrjc;->f(III)F

    move-result p2

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

    :goto_3c
    iget-object v1, v1, Lrir;->c:[I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3d
    float-to-int v6, p0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3e
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v3, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput p0, p2, Lrjk;->b:F

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v6, v0, v1}, Lrjc;->f(III)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v1, p1, Lrjc;->e:I

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

    nop

    nop

    :goto_45
    cmpl-float v1, p2, v3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_46
    array-length v2, v1

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

    :goto_47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget v2, v1, v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sub-float v1, v4, v1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v1, p1, Lrjc;->g:F

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

    :goto_4d
    const/high16 v7, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v7, 0x4

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

    :goto_4f
    invoke-virtual {p0}, Lrjn;->invalidateSelf()V

    goto/32 :goto_48

    nop

    nop

    :goto_50
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_54
    mul-float/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_55
    sget-object v1, Lrjc;->b:[F

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

    :goto_56
    if-gtz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    :goto_57
    sget-object p2, Lrjc;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_59
    mul-float/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const p2, 0x45bb8000    # 6000.0f

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget v1, v1, v3

    nop

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

    :goto_5d
    rem-int/2addr p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5e
    if-gez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2, v1, p0}, Lqqy;->o(FFF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_60
    const/16 v1, 0xbb8

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

    :goto_61
    check-cast v0, Lrjk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_62
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, p1, Lrjc;->j:Lrjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_64
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_65
    aget v7, v2, v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v6, v1, v1}, Lrjc;->f(III)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_67
    sub-float/2addr p0, v1

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

    nop

    :goto_68
    rem-int/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_69
    add-float/2addr v1, v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6a
    iget v1, p1, Lrjc;->f:F

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
.end method
