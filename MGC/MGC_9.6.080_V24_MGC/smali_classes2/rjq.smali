.class final Lrjq;
.super Landroid/util/Property;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "animationFraction"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

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

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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
    iget p0, p1, Lrjr;->e:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lrjr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sget p0, Lrjr;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_0
    const v5, 0x3eff9dbf

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

    :goto_1
    iget-object p2, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p1, Lrjr;->k:Ljava/util/List;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p2, Lrjk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    iget-object p0, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_9
    check-cast p0, Lrjk;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    iput v3, p2, Lrjk;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c
    goto/32 :goto_32

    nop

    nop

    :goto_d
    invoke-virtual {v4, p0}, Leac;->getInterpolation(F)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    iput p0, p2, Lrjk;->b:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p1, Lrjr;->d:Z

    nop

    :goto_13
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p2, p0, Lrjk;->b:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lrjk;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p2, p1, Lrjr;->k:Ljava/util/List;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_17
    check-cast v1, Lrjk;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_18
    iget p2, p2, Lrjk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    iget v1, p1, Lrjr;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    check-cast p2, Lrjk;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    aget p2, p2, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    iput p2, p0, Lrjk;->c:I

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

    nop

    :goto_1f
    iput p2, p0, Lrjk;->c:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v1, Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p1, Lrjr;->k:Ljava/util/List;

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

    :goto_22
    iput p0, p1, Lrjr;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    check-cast p0, Lrjk;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, v0, v4}, Lrjr;->f(III)F

    move-result p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    const p2, 0x43a68000    # 333.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p2, Lrjk;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p2, p1, Lrjr;->b:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2b
    iget-boolean p0, p1, Lrjr;->d:Z

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2d
    iget-object p2, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget p2, p2, Lrjk;->c:I

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

    nop

    :goto_2f
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_30
    check-cast p2, Lrjk;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lrjn;->invalidateSelf()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

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

    :goto_36
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_49

    nop

    nop

    :goto_37
    const/16 v4, 0x29b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, p1, Lrjr;->a:Leac;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_39
    check-cast p0, Lrjk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3a
    check-cast p2, Lrjk;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ltz p0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3e
    iget-object v4, p1, Lrjr;->a:Leac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3f
    check-cast p0, Lrjk;

    nop

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

    :goto_40
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_41
    invoke-virtual {v3, p0}, Leac;->getInterpolation(F)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    iget p0, p0, Lrjk;->b:F

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_45
    check-cast p1, Lrjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_47
    iget-object p0, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_48
    iget-object v1, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    iget-object p0, p1, Lrjr;->k:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4a
    iput v3, v1, Lrjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4b
    iput p0, v1, Lrjk;->a:F

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

    :goto_4c
    add-float/2addr p0, v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput v1, p2, Lrjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p2, p2, Lrir;->c:[I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_50
    float-to-int p0, p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput p2, p0, Lrjk;->c:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    :goto_53
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_54
    iget-object p0, p1, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_55
    cmpg-float p0, p0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_56
    mul-float/2addr p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_57
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_31

    nop

    :goto_58
    iget-object p0, p1, Lrjr;->j:Lrjn;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method
