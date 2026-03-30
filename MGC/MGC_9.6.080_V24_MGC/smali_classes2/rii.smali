.class public final Lrii;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/animation/TimeInterpolator;

.field public final b:Landroid/view/View;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Lms;

.field private final g:F

.field private final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1, v2}, Lqqy;->i(Landroid/content/Context;II)I

    move-result v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lrii;->e:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x96

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x64

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

    :goto_9
    invoke-static {v0, v1, v2}, Lqqy;->i(Landroid/content/Context;II)I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lrii;->a:Landroid/animation/TimeInterpolator;

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

    :goto_b
    const v1, 0x7f0404dc

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

    nop

    :goto_c
    const v3, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1, v2}, Lqqy;->i(Landroid/content/Context;II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const v0, 0x7f0703b2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

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

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

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

    nop

    nop

    :goto_17
    const v1, 0x7f0404dd

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Lrii;->h:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x3

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

    :goto_1b
    iput v0, p0, Lrii;->g:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iput v1, p0, Lrii;->d:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x12c

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

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    const v0, 0x7f0703b3

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

    :goto_22
    iput-object p1, p0, Lrii;->b:Landroid/view/View;

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

    :goto_23
    const v1, 0x7f0404d8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput v1, p0, Lrii;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/animation/Animator;
    .locals 9

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    move v1, v5

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

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

    :goto_6
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    new-array v4, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x2

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    invoke-static {v7, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

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

    :goto_e
    if-lt v1, v2, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    aput v6, v4, v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Leac;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v7, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

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

    :goto_15
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput-object v2, v1, v3

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

    :goto_19
    return-object v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_27

    nop

    nop

    :goto_1b
    goto/16 :goto_4

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    new-array v4, v3, [F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x2

    nop

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

    :goto_1f
    iget-object v7, p0, Lrii;->b:Landroid/view/View;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput-object v2, v1, v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Leac;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    aput-object v2, v4, v5

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

    :goto_25
    new-array v1, v1, [Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    new-array v8, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    instance-of v1, p0, Landroid/view/ViewGroup;

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

    :goto_29
    aput v6, v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lrii;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-array v4, v3, [Landroid/animation/Animator;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aput v6, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    iget-object v7, p0, Lrii;->b:Landroid/view/View;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(F)V
    .locals 6

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    sub-float p1, v4, p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrii;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v5, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrii;->b:Landroid/view/View;

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

    :goto_5
    sub-float v3, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    div-float v5, v3, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget v3, p0, Lrii;->g:F

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

    :goto_8
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    iget-object v0, p0, Lrii;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

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

    :goto_c
    iget-object v0, p0, Lrii;->b:Landroid/view/View;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    if-gtz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmpg-float v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    instance-of v0, p0, Landroid/view/ViewGroup;

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

    :goto_17
    cmpg-float v3, v1, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float v0, v0

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

    :goto_1a
    iget-object v0, p0, Lrii;->a:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    if-lt v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lrii;->b:Landroid/view/View;

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

    :goto_23
    rem-int v0, v0, v1

    nop

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

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    neg-int v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2a
    div-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2b
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v0, v0, 0x1

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

    :goto_2d
    int-to-float v5, v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    add-float/2addr p1, v2

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

    :goto_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_20

    nop

    :goto_33
    sget-object v4, Lrer;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v3, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lrii;->b:Landroid/view/View;

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

    :goto_36
    add-float/2addr v3, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-float/2addr v3, p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3a
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    :goto_3f
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_41
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_42
    add-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Lrii;->h:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

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
.end method
