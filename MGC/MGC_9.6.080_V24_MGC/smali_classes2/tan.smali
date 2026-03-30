.class public final synthetic Ltan;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/Camera;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/ar/core/Camera;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Ltan;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltan;->a:Lcom/google/ar/core/Camera;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_4b

    nop

    nop

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

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

    :goto_1
    iget v3, p1, Ltsl;->b:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    move v5, v2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v4, Ltsi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v6, v5, v7, v8}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v8, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, p0, v1}, Ltsi;->b(Ltsi;Ltsi;Ltsi;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-float p0, p0, p1

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

    :goto_b
    sget-object v6, Ltsi;->a:[F

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

    :goto_c
    sget-object v6, Ltsi;->a:[F

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_e
    cmpl-float v3, p1, v0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v4, v6}, Ltsi;-><init>([F)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v6}, Ltsi;-><init>([F)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_13
    cmpg-float v3, p1, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Ltcw;->h([F)Ltsl;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lszx;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p1, Ltsl;->c:F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

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

    :goto_18
    goto/32 :goto_55

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Lszx;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1c
    aput p1, v4, v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Ltsm;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ltcw;->h([F)Ltsl;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p0}, Ltsi;->a(Ltsm;)Ltsl;

    move-result-object p0

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

    :goto_20
    invoke-direct {p0, v6}, Ltsi;-><init>([F)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, p1}, Ltsl;->d(Ltsl;Ltsl;)Ltsl;

    move-result-object p1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_23
    invoke-virtual {p0, v4, v5}, Lcom/google/ar/core/Camera;->getViewMatrix([FI)V

    goto/32 :goto_5

    nop

    nop

    :goto_24
    invoke-direct {v3, v4}, Ltsi;-><init>([F)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, p1, Lszx;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    new-instance v3, Ltsi;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_27
    iget p1, p0, Ltan;->b:F

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Ltan;->a:Lcom/google/ar/core/Camera;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ltsi;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-array v4, v4, [F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    invoke-static {v0}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2e
    iget-object v6, p0, Ltsi;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2f
    sget-object v6, Ltsi;->a:[F

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

    :goto_30
    iget v2, p1, Ltsl;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    aput v2, v4, v5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v7, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getYAxis()[F

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v2}, Ltsl;->d(Ltsl;Ltsl;)Ltsl;

    move-result-object v1

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

    :goto_36
    invoke-virtual {v2}, Ltsl;->e()Ltsl;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    invoke-direct {v1, v4, p1}, Lcom/google/ar/core/Pose;-><init>([F[F)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    if-lez v3, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    :goto_39
    new-instance v1, Ltsi;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2, p1}, Ltsl;->f(F)Ltsl;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v3}, Ltsl;->f(F)Ltsl;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v6, v5}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    goto/32 :goto_39

    nop

    nop

    :goto_3e
    if-ltz p0, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_3f
    aput v3, v4, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v4, v3, Ltsi;->b:[F

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

    :goto_42
    invoke-static {v3}, La;->au(Z)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0, v0, v0, v0}, Ltsm;-><init>(FFF)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p1, Lszx;->a:Lcom/google/ar/core/Anchor;

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

    :goto_45
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Ltsl;->e()Ltsl;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_47
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_49
    new-instance v1, Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getXAxis()[F

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0xa

    nop

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

    :goto_4c
    iget v0, p0, Ltsl;->a:F

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

    :goto_4d
    div-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4e
    sget-object v4, Ltsi;->a:[F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4f
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_50
    cmpg-float v0, v0, p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_51
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_52
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    :goto_53
    div-float/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_54
    return-object p0

    nop

    :goto_55
    goto/32 :goto_40

    nop

    nop

    :goto_56
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_57
    if-gtz v3, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_58
    iget p0, p0, Ltsl;->b:F

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

    :goto_59
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v4, v3, v1}, Ltsi;->b(Ltsi;Ltsi;Ltsi;)V

    goto/32 :goto_8

    nop

    nop

    :goto_5b
    iget-object v6, v4, Ltsi;->b:[F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5c
    move v3, v2

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
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

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
.end method
