.class public final Lnvf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Loyn;

.field public final b:Landroid/animation/ValueAnimator;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public d:Z

.field public e:Z

.field public f:Lgvn;

.field public g:Loze;

.field public h:I

.field private final i:Loyd;

.field private final j:Lhdd;

.field private final k:Lprb;

.field private final l:Loyn;

.field private final m:Loyn;

.field private final n:Lnvg;

.field private final o:Z

.field private final p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final q:F

.field private final r:F

.field private final s:Lhoh;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;
    .locals 9

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    iget-object v5, p0, Lnvf;->l:Loyn;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-boolean v5, p0, Lnvf;->o:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v5, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6c

    nop

    :goto_6
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lnvf;->l:Loyn;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_8
    move v1, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2, v5}, Lnvf;->c(FF)F

    move-result v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v5}, Lnvf;->1a36313b7ed15ba14e0acb4da569b8b7m(F)Z

    move-result p0

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
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e
    float-to-double v1, v5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_10
    sub-double v5, v1, v5

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_14
    const-string p2, "%d"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v6, 0x3f800000    # 1.0f

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

    nop

    nop

    :goto_16
    invoke-virtual {p0, p2, v5}, Lnvf;->c(FF)F

    move-result p0

    nop

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

    nop

    :goto_17
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_1c
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1d
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1f
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_20
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v5, :cond_2

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

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6f

    nop

    :goto_24
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v6, Loxv;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    const-string p0, "\u00d7"

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpg-float v6, v5, v6

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    :goto_2c
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_35

    nop

    :goto_2f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    div-float/2addr p2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_32
    invoke-virtual {p0, p2, v1}, Lnvf;->c(FF)F

    move-result v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v4, p2, p0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_34
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x1d

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_38
    float-to-double v6, p2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_24

    nop

    :goto_3a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmpg-double p0, v5, v7

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v6, v6, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3f
    new-array p0, p0, [C

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_40
    const-string v2, "%.01f"

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_26

    nop

    nop

    :goto_43
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v5, Ljava/lang/Float;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_46
    double-to-float p2, v6

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_47
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v4, 0x1

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

    nop

    nop

    :goto_4d
    const/high16 v5, 0x41200000    # 10.0f

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6b

    nop

    :goto_51
    if-ltz v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_52
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_53
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_54
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_7

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    :goto_56
    check-cast v1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_57
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_58
    if-ltz p0, :cond_8

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_5b
    invoke-static {p0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5c
    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

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

    :goto_60
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_61
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_63
    const/4 v3, 0x0

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

    :goto_64
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_28

    nop

    :goto_66
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_67
    iget-object v5, v5, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_68
    mul-float/2addr p2, v5

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_69
    mul-double/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v6, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6d
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6e
    move v1, v4

    nop

    nop

    :goto_6f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_71
    if-ne v4, p3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(F)Z
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    check-cast v3, Loxv;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v3}, Lnvf;->c(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lnvf;->b()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnvf;->l:Loyn;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v1, v2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    cmpl-float p0, p1, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lnvf;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v0, p1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Loxv;

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

    :goto_20
    if-ltz v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_22
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v3, Ljava/lang/Float;

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

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    if-ne p0, p2, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-ne p0, p2, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p0, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object p0

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

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean p0, p0, Lnvf;->e:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Lnxe;->ordinal()I

    move-result p0

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

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;FZ)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0, p3, p2, v0}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 v0, 0x1

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

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;
    .locals 9

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p1, Lprb;->h:Z

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v2}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0xf

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_6
    const/16 v5, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhni;->X:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_b
    sget-object v0, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v1}, Lnwy;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v5}, Lnvg;->a(I)Lryh;

    move-result-object p0

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

    nop

    :goto_13
    invoke-virtual {p0, v3}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lnwy;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    const/16 p1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lnne;->ordinal()I

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lnvf;->f:Lgvn;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget p1, p0, Lnvf;->h:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lnvf;->k:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    iget-object v0, p0, Lnvf;->n:Lnvg;

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

    nop

    :goto_24
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_67

    nop

    nop

    :goto_27
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lnwy;->a:Lnwy;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lnvf;->n:Lnvg;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x7

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_32
    if-ne p1, v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_34
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lnvf;->n:Lnvg;

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

    :goto_36
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float p1, p1, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_38
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v1, 0x3c

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_5

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    :goto_3b
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_8d

    nop

    nop

    :goto_40
    sget-object v1, Lnwy;->e:Lnwy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_41
    const/16 p1, 0x8

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

    :goto_42
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_44
    const/16 v7, 0x13

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_46
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-lez v0, :cond_6

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6f

    nop

    :goto_48
    iget-object v0, p0, Lnvf;->j:Lhdd;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_49
    if-eq p1, v1, :cond_7

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4a
    if-ne p1, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v4}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4f
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v2}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, v6}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p1, Lnwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_53
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_54
    iget p1, p1, Loze;->m:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_55
    if-gez p1, :cond_a

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    :goto_56
    return-object p0

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_14

    nop

    nop

    :goto_58
    sget-object v2, Lhmq;->ae:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    return-object p0

    nop

    :goto_5b
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 p1, 0xc

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

    :goto_5d
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5e
    sget-object v2, Lhnz;->c:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_61
    iget-object p1, p0, Lnvf;->g:Loze;

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

    :goto_62
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0, v7}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_64
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-ne p1, v6, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v4}, Lnvg;->a(I)Lryh;

    move-result-object v0

    nop

    nop

    :goto_67
    goto/32 :goto_1c

    nop

    nop

    :goto_68
    return-object p0

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v2}, Lnvg;->a(I)Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_c
    goto/32 :goto_e

    nop

    nop

    :goto_6d
    invoke-interface {v0}, Lhdd;->a()Lpog;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v6, 0xa

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eq p1, v1, :cond_d

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_77

    nop

    nop

    :goto_72
    invoke-virtual {p1, v1}, Lnwy;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-nez p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_60

    nop

    nop

    :goto_75
    iget-object p1, p0, Lnvf;->k:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v1}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_79
    sget-object v1, Lgvn;->c:Lgvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v5, Lhmq;->af:Lhmn;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1, v1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object v1, Lhly;->I:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_7d
    return-object p0

    nop

    :goto_7e
    goto/32 :goto_6b

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v8, 0x6

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

    :goto_81
    if-ne p1, v7, :cond_f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p1}, Lprb;->j()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_83
    if-nez p1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-ne p1, v5, :cond_11

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0, v8}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0, v5}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lnvf;->n:Lnvg;

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

    :goto_8e
    const/16 p1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8f
    if-nez p1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_90
    if-ne p1, v3, :cond_13

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_91
    iget-object p0, p0, Lnvf;->n:Lnvg;

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

    nop

    :goto_92
    return-object p0

    nop

    :goto_93
    goto/32 :goto_aa

    nop

    nop

    :goto_94
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_95
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_96
    const v1, 0x1b

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

    nop

    :goto_97
    const/4 p1, 0x7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sget-object v1, Lpog;->a:Lpog;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez p1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    return-object p0

    nop

    :goto_9b
    goto/32 :goto_9e

    nop

    nop

    :goto_9c
    if-nez v0, :cond_15

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object p1, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    return-object p0

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz p1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_16
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_1f

    nop

    nop

    :goto_a4
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a5
    const-string v0, "camera.lenstoggles_enable"

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_a6
    iget-object p1, p0, Lnvf;->s:Lhoh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a7
    iget-object p0, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0, p1}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_a9
    if-ne p1, v7, :cond_17

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_17
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    return-object v0

    nop

    :goto_ab
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_ac
    sget-object v1, Lgvn;->b:Lgvn;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_ad
    if-ne p1, v2, :cond_18

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

    :cond_18
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-ne p1, v4, :cond_19

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_af
    iget-boolean p1, p0, Lnvf;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_b0
    return-object p0

    nop

    :goto_b1
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast p1, Loxv;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_b3
    if-eq p1, v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object p1, p0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_b5
    return-object p0

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_b

    nop

    nop

    :goto_b7
    if-nez p1, :cond_1b

    nop

    goto/32 :goto_5

    nop

    :cond_1b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v0, v3}, Lnvg;->a(I)Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyd;Loyn;Loyn;Loyn;Lhdd;Lprb;Lhoh;Lnvg;)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    new-instance p2, Leac;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lhnz;->j:Lhmn;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnvf;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iput-object p5, p0, Lnvf;->j:Lhdd;

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

    :goto_5
    iput-boolean p1, p0, Lnvf;->o:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    sget-object p1, Lhnz;->e:Lhmn;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 p2, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b
    const/16 v1, 0xe

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Lngx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_11
    sget-object v2, Loze;->a:Loze;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lnvf;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    sget-object v2, Lnwy;->b:Lnwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iput p1, p0, Lnvf;->q:F

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

    :goto_15
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

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

    :goto_16
    iput-object p8, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    invoke-direct {p2}, Leac;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1a
    iput-object v2, p0, Lnvf;->g:Loze;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lngx;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p7, p1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v1, p0, Lnvf;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    iput-object p7, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    iput-object p3, p0, Lnvf;->l:Loyn;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    :goto_2b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lhnz;->f:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2d
    iput-object p4, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p7, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p1, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    iput-boolean v2, p0, Lnvf;->e:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    iput-object p6, p0, Lnvf;->k:Lprb;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p7, p1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_35
    iput-object p2, p0, Lnvf;->a:Loyn;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_36
    iput p1, p0, Lnvf;->r:F

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

    :goto_37
    iput v1, p0, Lnvf;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(Lnxe;F)Z
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnvf;->m:Loyn;

    nop

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

    :goto_1
    invoke-virtual {p0, p1, v0}, Lnvf;->c(FF)F

    move-result p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

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

    :goto_4
    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnvf;->i:Loyd;

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

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    if-ltz p0, :cond_1

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

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    check-cast v0, Lnne;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_11
    cmpg-float p0, p2, p0

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

    :goto_12
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

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

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Loxv;

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

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1, v0}, Lnvf;->c(FF)F

    move-result p1

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

    :goto_20
    return p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    cmpg-float p1, p2, p1

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

    :goto_24
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_28
    iget-object v0, p0, Lnvf;->l:Loyn;

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

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnvf;->l:Loyn;

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

    nop

    :goto_2b
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, v0}, Lnvf;->c(FF)F

    move-result p1

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

    :goto_5
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

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

    :goto_7
    iget-object p1, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Loxv;

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

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lnne;

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

    :goto_c
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnvf;->l:Loyn;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmpl-float p1, p2, p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    goto :goto_1e

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    cmpl-float p0, p2, p0

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

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    invoke-virtual {p0, p1, v0}, Lnvf;->c(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_2b
    check-cast v0, Ljava/lang/Float;

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

    :goto_2c
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Loxv;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(F)Z
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    goto/32 :goto_f

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
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v3}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, v0}, Lnvf;->c(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lnxe;->d:Lnxe;

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

    :goto_13
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

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

    nop

    :goto_14
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_18
    iget v0, p0, Lnvf;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    cmpg-float p0, p1, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_20
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v1}, Lnvf;->c(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

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

    :goto_28
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lnvf;->l:Loyn;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 5

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

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

    :goto_4
    check-cast v1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lnne;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Loxv;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_c
    check-cast v0, Lnne;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, 0x1

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

    :goto_e
    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_f
    if-ge p1, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    nop

    nop

    :goto_14
    cmpg-float v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    invoke-direct {p0, v2}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lnvf;->m:Loyn;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    :goto_25
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, v2, Lsbm;->c:I

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, v2, Lsbm;->c:I

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_2a
    iget-object v0, p0, Lnvf;->i:Loyd;

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

    :goto_2b
    return v0

    nop

    :goto_2c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-object p1, v1, p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget-object v1, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x2

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

    :goto_39
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3a
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_3c
    check-cast v0, Lnne;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_3d
    return p0

    nop

    nop

    :goto_3e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    nop

    :goto_40
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_42
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v0, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_46
    invoke-direct {p0, v2}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v2, Lsbm;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_27

    nop

    nop

    :goto_4a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4c
    if-lt p1, v1, :cond_3

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

    :cond_3
    goto/32 :goto_8d

    nop

    nop

    :goto_4d
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4f
    cmpl-float v0, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v2, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v1, Loxv;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_53
    aget-object v1, v1, p1

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

    :goto_54
    cmpg-float v0, v0, v1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_55
    check-cast v0, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_58
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_59
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    aget-object p1, v1, p1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {}, Lnxe;->values()[Lnxe;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_5e
    const v1, 0x2

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

    :goto_5f
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_67
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_6b
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_6c
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v1, p0, Lnvf;->m:Loyn;

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

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_70
    aget-object p1, v1, p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v2, Lnne;

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

    :goto_72
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_73
    check-cast v2, Lsbm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v2, Lnne;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_76
    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

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

    :goto_78
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_79
    goto/16 :goto_62

    nop

    nop

    :goto_7a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_4
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lnvf;->i:Loyd;

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

    nop

    :goto_7d
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_9

    nop

    nop

    :goto_7f
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_80
    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_81
    if-gez v0, :cond_5

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_82
    add-int/lit8 p1, p1, 0x1

    nop

    :goto_83
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_84
    aget-object v1, v1, p1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v0, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_86
    iget-object p0, p0, Lnvf;->l:Loyn;

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

    :goto_87
    const/4 v1, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_88
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_6
    goto/32 :goto_36

    nop

    :goto_8b
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast p1, Loxv;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_90
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_60

    nop

    nop

    :goto_93
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eq v2, v1, :cond_7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_96
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-eq v2, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_98
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 2

    goto/32 :goto_12

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnvf;->s:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

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

    :goto_b
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    check-cast p0, Loxv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v0, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lhmq;->af:Lhmn;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lnvf;->r:F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnvf;->m:Loyn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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
.end method

.method public final c(FF)F
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_2
    check-cast v0, Lnwy;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

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

    :goto_4
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    :goto_5
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-ltz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lnwy;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    const/high16 v0, 0x41200000    # 10.0f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_e
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0}, Lnvg;->a(I)Lryh;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_11
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_15
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    :goto_16
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p2}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object p2

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

    nop

    nop

    :goto_18
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpg-float p0, p1, v2

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

    :goto_1a
    invoke-virtual {p2, v0, v1}, Lryh;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    div-float/2addr p0, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_36

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_21
    iget-boolean p0, p0, Lnvf;->o:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    int-to-float p0, p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_31
    move p2, p1

    nop

    :goto_32
    goto/32 :goto_21

    nop

    nop

    :goto_33
    float-to-double p0, p2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    :goto_36
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_38
    goto :goto_32

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    div-float p2, p1, p2

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3b
    const v1, 0xc

    nop

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

    :goto_3c
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    cmpg-float v0, p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3e
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

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

    :goto_3f
    invoke-static {p2, v0, v1}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

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

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_42
    iget-object p2, p0, Lnvf;->n:Lnvg;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(F)Lnxe;
    .locals 4

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lnvf;->ccb4c19b7dbd16be9d2a43125797659dm(F)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    :goto_5
    iget-object v1, p0, Lnvf;->l:Loyn;

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

    :goto_6
    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lnxe;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_37

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_12
    sget-object v2, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    :goto_16
    check-cast v1, Loxv;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_5

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

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lnxe;->d:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v2, v3, :cond_6

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-direct {p0, v2, v1}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, v2, v1}, Lnvf;->a74c8a79bf0ef0e20983317119c87838m(Lnxe;F)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    if-nez v2, :cond_7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lryh;->s()Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v1}, Lnvf;->1a36313b7ed15ba14e0acb4da569b8b7m(F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_41

    nop

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v2, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_9
    :goto_29
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    goto :goto_2f

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_27

    nop

    nop

    :goto_2c
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Lnxe;->ordinal()I

    move-result v2

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

    :goto_31
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v2, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_35
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    sget-object p0, Lnxe;->c:Lnxe;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_37
    sget-object v2, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v2, v1}, Lnvf;->a74c8a79bf0ef0e20983317119c87838m(Lnxe;F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_3

    nop

    :goto_3b
    goto/32 :goto_18

    nop

    nop

    :goto_3c
    sget-object p0, Lnxe;->d:Lnxe;

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

    :goto_3d
    invoke-virtual {p0, p1, v1}, Lnvf;->c(FF)F

    move-result v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Lryh;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-object p0

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    :goto_42
    sget-object p0, Lnxe;->a:Lnxe;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, v2, v1}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v2

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

    nop

    nop

    :goto_46
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0, v2, v1}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V
    .locals 16

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_0
    cmpl-float v4, v4, v9

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v11

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v4, v6}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v3, v4, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_71

    nop

    nop

    :goto_8
    invoke-virtual {v1, v12, v15, v11, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v6}, Lryw;-><init>()V

    goto/32 :goto_64

    nop

    nop

    :goto_a
    check-cast v10, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    check-cast v4, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_8e

    nop

    :goto_f
    goto/32 :goto_108

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Lryh;->s()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_11
    if-ne v12, v5, :cond_0

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_0
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_42

    nop

    nop

    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v11

    nop

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

    :goto_14
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v12, v15, v11, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_75

    nop

    nop

    :goto_17
    invoke-direct {v0, v3, v9, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v12, 0x7f070ac6

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_19
    check-cast v9, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v3, v5

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_1d
    check-cast v9, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v14, v15, v13, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_a6

    nop

    nop

    :goto_1f
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_23
    const v15, 0x7f04018f

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

    nop

    :goto_24
    invoke-static {v1, v15}, Lrgw;->f(Landroid/view/View;I)I

    move-result v15

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v9, v0, Lnvf;->m:Loyn;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p2 .. p2}, Lnxe;->ordinal()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_29
    if-gtz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2a
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v4, Loxv;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v10, v5, :cond_2

    nop

    nop

    goto/32 :goto_a9

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v10, :cond_3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v4, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v6, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v10, v10, Loxv;->d:Ljava/lang/Object;

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

    :goto_34
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_35
    invoke-virtual {v1, v12, v15, v11, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne v10, v12, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c8

    nop

    nop

    :goto_37
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

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

    :goto_38
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0, v1, v4, v6}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

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

    :goto_3e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v11

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

    nop

    :goto_3f
    sget-object v9, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_40
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_73

    nop

    nop

    :goto_43
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_45
    invoke-virtual {v6, v5}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v4}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

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

    nop

    :goto_47
    invoke-virtual {v6}, Lryw;->g()Lryy;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_49
    if-eq v4, v10, :cond_5

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v8, p2

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_eb

    nop

    nop

    :goto_4d
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v11

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_4f
    check-cast v10, Loxv;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_50
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v13, 0x3

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v0, v3, v4, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v11

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_57
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_59
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v0, v3, v4, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_5b
    invoke-virtual {v11, v12, v13, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_55

    nop

    nop

    :goto_5d
    if-nez v12, :cond_6

    nop

    goto/32 :goto_b0

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const v15, 0x7f070ac4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v9, Lnxe;->d:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_8e

    nop

    nop

    :goto_62
    goto/32 :goto_89

    nop

    nop

    :goto_63
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v6, v5}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    :goto_66
    goto/32 :goto_cb

    nop

    nop

    :goto_67
    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :cond_7
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move v7, v5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6b
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v10, Lnxe;->a:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_6f
    invoke-virtual {v10, v11}, Lhoh;->p(Lhmn;)Z

    move-result v10

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_70
    if-nez v10, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_8
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    :goto_73
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v11

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_8e

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Lryh;->h()Lrxq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, v12, v15, v11, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_9b

    nop

    nop

    :goto_7a
    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-gtz v4, :cond_9

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_9
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v4, v0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7e
    invoke-direct {v0, v1, v10, v3}, Lnvf;->3fd9578e124c68aa49885b22b61b4ec8m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;FZ)V

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v4, v0, Lnvf;->m:Loyn;

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_80
    goto/16 :goto_59

    nop

    :goto_81
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_84
    invoke-direct {v0, v1, v9, v4}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lryb;)V

    goto/32 :goto_c5

    nop

    nop

    :goto_86
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_88
    rem-int v0, v0, v1

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v4, Lnxe;->c:Lnxe;

    nop

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

    :goto_8a
    new-instance v4, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_8b
    goto/16 :goto_fb

    nop

    nop

    :goto_8c
    goto/32 :goto_32

    nop

    nop

    :goto_8d
    invoke-direct {v0, v1, v10, v4}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    :goto_8e
    goto/32 :goto_dc

    nop

    nop

    :goto_8f
    iget-object v9, v9, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_90
    sget-object v9, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v11

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_93
    const/4 v12, 0x2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v12

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v9, Loxv;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_96
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eq v7, v8, :cond_b

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v9, v9, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-ne v12, v13, :cond_c

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    cmpl-float v4, v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_48

    nop

    nop

    :goto_a0
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v13

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

    :goto_a3
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_92

    nop

    nop

    :goto_a4
    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a5
    invoke-static {v1, v4}, Lrgw;->f(Landroid/view/View;I)I

    move-result v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a7
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_a8
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_8e

    nop

    nop

    :goto_ab
    goto/32 :goto_118

    nop

    nop

    :goto_ac
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v10

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_73

    nop

    :goto_b0
    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_b2
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_10c

    nop

    nop

    :goto_b4
    const-string v10, "google-sans-text-medium"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v11, 0x3

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_b6
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_ba
    check-cast v10, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_bc
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_bd
    sget-object v11, Lhnz;->g:Lhmn;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_be
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_db

    nop

    nop

    :goto_c0
    if-eqz v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v2, Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-direct {v4, v5}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_59

    nop

    :goto_c4
    goto/32 :goto_50

    nop

    nop

    :goto_c5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_c6
    if-ne v12, v13, :cond_e

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_c8
    if-ne v10, v11, :cond_f

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_f
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_c9
    iget-object v2, v0, Lnvf;->i:Loyd;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_cb
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-direct {v0, v3, v6, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_cd
    if-nez v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_10
    goto/32 :goto_e4

    nop

    nop

    :goto_ce
    if-eq v4, v9, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_11
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_d0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_d2
    check-cast v10, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const v13, 0x7f080167

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_d4
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_d5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v3

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-direct {v0, v3, v6, v7}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Landroid/widget/TextView;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_db
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    const/4 v4, 0x0

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_dd
    if-lez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :cond_12
    goto/32 :goto_b8

    nop

    :goto_de
    invoke-direct {v0, v2}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v2

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_df
    invoke-virtual {v1, v11, v4, v14, v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    new-instance v6, Lryw;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const v4, 0x7f040198

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v9, v0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e5
    if-eq v4, v9, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v9, v0, Lnvf;->m:Loyn;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_e7
    sget-object v6, Lnxe;->d:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e8
    goto/16 :goto_48

    nop

    :goto_e9
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move v7, v4

    nop

    nop

    :goto_eb
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_ec
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_2b

    nop

    :goto_ee
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_ef
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Landroid/widget/TextView;

    move-result-object v10

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_f2
    iget-object v10, v0, Lnvf;->s:Lhoh;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    check-cast v2, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_f4
    if-eq v3, v5, :cond_14

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    const/4 v13, 0x2

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v10, v0, Lnvf;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f9
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-direct {v0, v1, v6, v4}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_fd
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_ff
    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v4}, Lrxq;->v()Lryb;

    move-result-object v4

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_101
    invoke-static {v10, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_104
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_105
    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-direct {v0, v1, v6, v4}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_108
    sget-object v4, Lnxe;->d:Lnxe;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_109
    if-nez v6, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_10a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->v()Landroid/widget/TextView;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual/range {p2 .. p2}, Lnxe;->ordinal()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_10f
    check-cast v6, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-eq v4, v9, :cond_16

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_16
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_112
    new-instance v13, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_115
    const/4 v5, 0x1

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_116
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v13

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v9, v9, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop
.end method

.method final f()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvf;->b:Landroid/animation/ValueAnimator;

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

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

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
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnvf;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V
    .locals 7

    goto/32 :goto_20

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lnvf;->ccb4c19b7dbd16be9d2a43125797659dm(F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1
    check-cast v3, Loxv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v4, v5}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v4}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4
    sget-object v5, Lnxe;->d:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    nop

    :goto_6
    if-ne v5, v2, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v5, v3}, Lnvf;->a74c8a79bf0ef0e20983317119c87838m(Lnxe;F)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_50

    nop

    :goto_b
    invoke-direct {p0, v5, v3}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v4, v5}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    check-cast v4, Lnxe;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_44

    nop

    :goto_f
    goto/32 :goto_4f

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v4, Lnxe;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lnne;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1, v4}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v5}, Lnxe;->ordinal()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_16
    check-cast v4, Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v5, v3}, Lnvf;->a74c8a79bf0ef0e20983317119c87838m(Lnxe;F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    sget-object v5, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_44

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_53

    nop

    nop

    :goto_1f
    sget-object v4, Lnxe;->d:Lnxe;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_20
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v3}, Lnvf;->1a36313b7ed15ba14e0acb4da569b8b7m(F)Z

    move-result v5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    :goto_26
    goto/32 :goto_57

    nop

    nop

    :goto_27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1, v4}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v5, v3}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Lnxe;->c:Lnxe;

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

    nop

    nop

    :goto_2b
    if-ne v5, v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_44

    nop

    :goto_2d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v1, p2, v2}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2f
    sget-object v4, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lryh;->s()Lryy;

    move-result-object v0

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

    nop

    :goto_33
    invoke-virtual {p0, p2}, Lnvf;->d(F)Lnxe;

    move-result-object p2

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, p1, v4}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_36
    if-eqz v5, :cond_6

    nop

    goto/32 :goto_3b

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

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

    :goto_39
    sget-object v4, Lnxe;->a:Lnxe;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_8
    :goto_3b
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1, v4, v5}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_26

    nop

    nop

    :goto_3e
    goto/32 :goto_25

    nop

    nop

    :goto_3f
    invoke-direct {p0, v1, p2, v2}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, p2}, Lnvf;->h(F)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_9

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

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_10

    nop

    nop

    :goto_45
    invoke-direct {p0, v1, p2, v2}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_46
    if-nez v4, :cond_a

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    :goto_47
    const/4 v6, 0x2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p0, v5, v3}, Lnvf;->b1051a9d8893542362ad09051775f8f6m(Lnxe;F)Z

    move-result v5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_49
    if-eq v1, v2, :cond_b

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    nop

    :goto_4a
    sget-object v5, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v5, :cond_c

    nop

    goto/32 :goto_59

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    :goto_4c
    sget-object v5, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v5, Lnxe;->b:Lnxe;

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

    nop

    :goto_50
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p2, v3}, Lnvf;->c(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0, p1, p2, v1}, Lnvf;->3fd9578e124c68aa49885b22b61b4ec8m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;FZ)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_54
    check-cast v4, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ne v5, v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {p0, p1, v4, v5}, Lnvf;->33b3102b6558811a7b7629a1e8e59bd2m(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5d
    if-nez v5, :cond_e

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0, v1, p2, v2}, Lnvf;->1478a1c7833aac5e360e0ba4b0c0c568m(ZFZ)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_60
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_51

    nop

    nop

    :goto_62
    const/4 v2, 0x1

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

    :goto_63
    check-cast v0, Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    :goto_65
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

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

    :goto_67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p0, p1, p2}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v5, Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6a
    const/4 v6, 0x3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6b
    check-cast v4, Lnxe;

    nop

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
.end method

.method public final h(F)Z
    .locals 11

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    double-to-float v5, v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    int-to-double v3, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    div-double/2addr v9, v7

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    double-to-float p1, v5

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

    :goto_b
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-double v5, v3, v7

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

    :goto_f
    return v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v1, v2

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

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1, v1}, Lnvf;->c(FF)F

    move-result v1

    nop

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

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lryh;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    double-to-float v0, v5

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

    :goto_1c
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1d
    int-to-double v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    mul-float/2addr p1, v2

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

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    nop

    :goto_21
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_24
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    cmpl-float v0, v0, v5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v1, Ljava/lang/Float;

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

    :goto_27
    invoke-virtual {p0, v0, v9}, Lnvf;->c(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    :goto_29
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lryh;->s()Lryy;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2d
    check-cast v9, Loxv;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2e
    div-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v9, v9, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_32
    invoke-direct {p0, v0}, Lnvf;->51550bab6b6440a4fd45f825c221b363m(Lnne;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_35
    int-to-double v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_36
    iget-object v9, p0, Lnvf;->l:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lnvf;->i:Loyd;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_3b
    check-cast v9, Ljava/lang/Float;

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

    :goto_3c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3e
    return v1

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method
