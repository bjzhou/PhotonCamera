.class final Lriv;
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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "animationFraction"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrix;->a:[I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    check-cast p1, Lrix;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget p0, p1, Lrix;->g:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_0
    const/high16 v2, 0x44be0000    # 1520.0f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    const/high16 v2, -0x3e600000    # -20.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3
    move v1, v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-float/2addr v1, v4

    nop

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

    :goto_6
    rem-int/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput v3, p2, Lrjk;->a:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    aget v3, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p1, Lrix;->k:Ljava/util/List;

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

    :goto_d
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lrix;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    iget v1, p1, Lrix;->f:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v6, p1, Lrix;->d:Leac;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, p2}, Leac;->getInterpolation(F)F

    move-result p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float v1, p2, v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_13
    cmpg-float v1, p2, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    aget p2, p2, p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt p0, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_59

    nop

    nop

    :goto_16
    aget v3, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_17
    if-ltz v1, :cond_1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    invoke-static {p2, p0, v1}, Lres;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    nop

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

    :goto_19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_1a
    const v1, 0x17

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1b
    iget v1, p2, Lrjk;->b:F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1c
    iput p0, p2, Lrjk;->a:F

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1d
    iget p0, p2, Lrjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    aget v1, v1, v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lrjn;->invalidateSelf()V

    goto/32 :goto_8

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_2
    goto/32 :goto_68

    nop

    :goto_22
    const p2, 0x45a8c000    # 5400.0f

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_23
    iget-object v1, p1, Lrix;->e:Lrir;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-float/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    iget-object v2, p1, Lrix;->d:Leac;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    iget v3, p2, Lrjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0x14d

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_29
    iput p0, p1, Lrix;->g:F

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

    :goto_2a
    invoke-virtual {v6, v3}, Leac;->getInterpolation(F)F

    move-result v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v5, p2, Lrjk;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2, v3, v4}, Lrix;->f(III)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2d
    array-length v2, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p2, p1, Lrix;->k:Ljava/util/List;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_32
    iget v5, p1, Lrix;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    const/high16 v6, 0x437a0000    # 250.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_34
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_35
    check-cast p2, Lrjk;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    iget v1, p1, Lrix;->g:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_39
    iput v2, p2, Lrjk;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr p0, p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3b
    rem-int/2addr v3, v2

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

    :goto_3c
    add-float/2addr p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3d
    mul-float/2addr v2, v6

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_40
    float-to-int v2, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_41
    div-float/2addr p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    mul-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_43
    move p0, v0

    nop

    nop

    :goto_44
    goto/32 :goto_15

    nop

    nop

    :goto_45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_46
    iput p0, p2, Lrjk;->a:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v3, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2, p2, v1}, Lrix;->f(III)F

    move-result p2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4b
    sub-float v4, v1, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Lrjk;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    iget-object v4, p1, Lrix;->d:Leac;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_4e
    aget p0, v1, p0

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

    :goto_4f
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_1d

    nop

    nop

    :goto_51
    sget-object v3, Lrix;->b:[I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_44

    nop

    nop

    :goto_53
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v1, p2, Lrjk;->b:F

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

    :goto_55
    if-lt v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_3
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int v0, v0, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v0, 0x17

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget-object p2, Lrix;->c:[I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5a
    const/16 v4, 0x29b

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5b
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5c
    add-int/2addr p0, v1

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

    :goto_5d
    add-int/lit8 v3, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5e
    sget-object v3, Lrix;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5f
    if-gtz v1, :cond_4

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

    :cond_4
    goto/32 :goto_34

    nop

    nop

    :goto_60
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v2, v3, v4}, Lrix;->f(III)F

    move-result v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4, v2}, Leac;->getInterpolation(F)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_63
    iget-object v1, v1, Lrir;->c:[I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput p0, v0, Lrjk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v1, p2, Lrjk;->b:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_66
    iget v5, p2, Lrjk;->b:F

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_67
    iget-object p0, p1, Lrix;->j:Lrjn;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_e

    nop

    nop

    :goto_6a
    mul-float/2addr v3, v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method
