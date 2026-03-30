.class public final Liii;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>(FFF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Liii;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Liii;->c:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Liii;->b:F

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
.end method

.method public static a(Lhoh;Lnne;ZZ)Liii;
    .locals 7

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p2, Lhmu;->aG:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

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
    check-cast v3, Ljava/lang/Float;

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

    :goto_5
    invoke-virtual {p0, v5}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p3, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lhmu;->aH:Lhmn;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Ljava/lang/Float;

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

    :goto_b
    move v0, p2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v4}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Lhmu;->az:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_12
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_13
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_16
    move v1, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2e

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    sget-object p2, Lhmu;->aJ:Lhmn;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v6}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    :goto_22
    invoke-virtual {p0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v2

    nop

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

    :goto_23
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

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

    nop

    :goto_24
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p3, Lhmu;->aA:Lhmn;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    sget-object p2, Lhmu;->aI:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    return-object p1

    nop

    nop

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2c
    sget-object v1, Lhmu;->ay:Lhmn;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2d
    move v1, v5

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p1, Liii;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_30
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_32
    check-cast p2, Ljava/lang/Float;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_34
    invoke-virtual {p0, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lhmu;->ax:Lhmn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v4, Lhnw;->h:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v6, Lhmu;->aB:Lhmn;

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

    :goto_3d
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    :goto_3e
    goto/32 :goto_11

    nop

    nop

    :goto_3f
    invoke-direct {p1, v0, v1, p0}, Liii;-><init>(FFF)V

    goto/32 :goto_29

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_41
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_43
    if-ne p1, v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

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

    :goto_46
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_4a
    if-ne p1, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_4b
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4c
    sget-object v5, Lhnw;->i:Lhmn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4e
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_51
    const/16 p2, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_52
    invoke-virtual {p0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_54
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v6, 0x2

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_59
    invoke-virtual {p0, v1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5a
    sget-object v3, Lhnu;->t:Lhmn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5f
    if-ne p1, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p2, Ljava/lang/Float;

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

    :goto_62
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_63
    move v0, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_64
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p2

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

    :goto_67
    invoke-virtual {p0, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p2

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

    :goto_68
    sget-object v2, Lhnu;->s:Lhmn;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Lnne;->ordinal()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_6a
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6b
    move v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_6c
    check-cast v5, Ljava/lang/Float;

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v1, v3, :cond_0

    nop

    goto/32 :goto_22

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

    :goto_1
    return v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Liii;->c:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Liii;->b:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    instance-of v1, p1, Liii;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Liii;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Liii;->c:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v1, v3, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_15
    iget v3, p1, Liii;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Liii;->a:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

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

    :goto_18
    iget v3, p1, Liii;->b:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0xe

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

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

    :goto_21
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Liii;->b:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Liii;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const v1, 0x20

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

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    const v1, 0xf4243

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    mul-int/2addr v0, v1

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

    :goto_f
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v1

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

    :goto_12
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_15
    iget v0, p0, Liii;->a:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

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

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iget v2, p0, Liii;->b:F

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

    :goto_9
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const-string v1, "{"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Liii;->a:F

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_e
    const v1, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Liii;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    const-string v1, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
