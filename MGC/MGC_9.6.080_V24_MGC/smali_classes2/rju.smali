.class final Lrju;
.super Landroid/util/Property;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "animationFraction"

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
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrjv;->a:[I

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
    check-cast p1, Lrjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget p0, p1, Lrjv;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

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

    :goto_4
    return-object p0

    nop

    nop
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Lrir;->c:[I

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

    :goto_1
    goto/32 :goto_30

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_21

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v5, Lrjv;->a:[I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p1, Lrjv;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p1, Lrjv;->c:[Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c
    sget-object v7, Lrjv;->a:[I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

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

    :goto_e
    invoke-virtual {p0}, Lrjn;->invalidateSelf()V

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    iget v2, p1, Lrjv;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    check-cast p1, Lrjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr p0, p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p1, Lrjv;->d:Lrir;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    nop

    :goto_16
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v3, v7}, Lrjv;->f(III)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    aget v5, v5, v4

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

    :goto_19
    sget-object v3, Lrjv;->b:[I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v5, v5, v4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    iget-object v5, p1, Lrjv;->c:[Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    aget v3, v3, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    iput v3, v2, Lrjk;->a:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v3, v5}, Lrjv;->f(III)F

    move-result v3

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

    :goto_1f
    iput v1, v0, Lrjk;->c:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_20
    move v0, p2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    nop

    :goto_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_25
    iput-boolean p2, p1, Lrjv;->f:Z

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    sget-object v3, Lrjv;->b:[I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v3, v5, v6}, Ldvu;->y(FFF)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    iput v1, v2, Lrjk;->b:F

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

    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    :goto_2c
    const v1, 0x1c

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget v1, v1, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4

    nop

    nop

    :goto_31
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget v3, v3, v4

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

    :goto_33
    float-to-int v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p1, Lrjv;->k:Ljava/util/List;

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

    :goto_35
    iget-object p0, p1, Lrjv;->j:Lrjn;

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

    nop

    :goto_36
    check-cast v2, Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_38
    iget-boolean p0, p1, Lrjv;->f:Z

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p2, Ljava/lang/Float;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Lrjk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3d
    invoke-static {v1, v5, v6}, Ldvu;->y(FFF)F

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3e
    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_41
    add-int v4, v0, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_42
    const/high16 p2, 0x44e10000    # 1800.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    aget v7, v7, v4

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

    :goto_45
    iput p0, p1, Lrjv;->g:F

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_46
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v4, v4, 0x1

    nop

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

    :goto_48
    iget-object v2, p1, Lrjv;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method
