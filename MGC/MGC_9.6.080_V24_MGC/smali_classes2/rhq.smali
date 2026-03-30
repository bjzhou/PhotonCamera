.class public final Lrhq;
.super Lrho;
.source "PG"


# instance fields
.field private E:Landroid/animation/StateListAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lrho;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;
    .locals 6

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    aput p2, v1, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v4, "elevation"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lrhq;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v1, 0x64

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

    :goto_1b
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    aput p1, v2, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x2

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

    :goto_1f
    iget-object p1, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getElevation()F

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrho;->o()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lrhq;->u:I

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

    :goto_9
    if-nez v0, :cond_1

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    sub-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1}, Lrho;->f(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->s()Z

    move-result v0

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

    nop

    :goto_12
    iget-object p0, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final g(FFF)V
    .locals 7

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1
    const-wide/16 v1, 0x64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lrhq;->a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lrhq;->E:Landroid/animation/StateListAnimator;

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

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Lrhq;->a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lrhq;->j:[I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array p1, v4, [Landroid/animation/Animator;

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

    :goto_a
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    new-array v3, v2, [F

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

    :goto_c
    invoke-virtual {p0}, Lrho;->k()V

    :goto_d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

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

    :goto_12
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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
    new-array v2, v2, [F

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

    :goto_16
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

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
    const v1, 0x2

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
    new-instance p3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_19
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

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

    :goto_1a
    const-string p1, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/animation/StateListAnimator;

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

    :goto_1c
    const/4 v4, 0x0

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

    :goto_1d
    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_1e
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput v3, v2, v4

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

    :goto_25
    aput p1, v3, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p1, [Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p2, p0, Lrhq;->E:Landroid/animation/StateListAnimator;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2c
    new-instance p2, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lrho;->m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_37
    sget-object p3, Lrhq;->h:[I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    sget-object v1, Lrhq;->f:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3a
    iput-object v0, p0, Lrhq;->E:Landroid/animation/StateListAnimator;

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

    nop

    :goto_3b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_44

    nop

    nop

    :goto_3d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_3e
    invoke-direct {p0, p1, p2}, Lrhq;->a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object p1, Lrhq;->k:[I

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

    :goto_40
    invoke-direct {p0, v3, v3}, Lrhq;->a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p3, Lrhq;->g:[I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_42
    sget-object p3, Lrhq;->i:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_43
    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_44
    iget-object v1, p0, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, p1, p3}, Lrhq;->a74c8a79bf0ef0e20983317119c87838m(FF)Landroid/animation/Animator;

    move-result-object p3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    sget-object p1, Lrhq;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final m()Z
    .locals 1

    goto/32 :goto_3

    nop

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

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrho;->o()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrhq;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->s()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
