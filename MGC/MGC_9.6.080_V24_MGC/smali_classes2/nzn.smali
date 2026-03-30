.class public final Lnzn;
.super Loac;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final s:Landroid/view/animation/Interpolator;


# instance fields
.field private final t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final u:Lnzu;


# direct methods
.method private final 21017490f1e4e968f513520349816008m(Llb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lnzn;->s:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const v3, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnzu;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, v1}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lnzn;->u:Lnzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Loac;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const/16 v1, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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

    :goto_d
    const v1, 0x2

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

    :goto_e
    new-instance v0, Lnvy;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method private static E(Landroid/view/View;Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b006d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final A(Llb;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    nop
.end method

.method protected final B(Llb;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lnzu;->b(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iget-object p1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lnzn;->E(Landroid/view/View;Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v1, 0x14

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

    :goto_e
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnzn;->u:Lnzu;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final a(Llb;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_4
    iget-object p1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

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

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    sget-object v0, Lnzn;->s:Landroid/view/animation/Interpolator;

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

    :goto_b
    invoke-virtual {v0, p1}, Lnzu;->c(Landroid/view/View;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p0, Lki;->h:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1, v1}, Lnzu;->d(Landroid/view/View;F)V

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    goto :goto_f

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    return-object p1

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lnzn;->u:Lnzu;

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

    :goto_18
    goto/32 :goto_2

    nop

    nop

    :goto_19
    iget-boolean v1, v0, Lnzu;->e:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Lnzu;->a(Landroid/view/View;)F

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p1}, Lnzu;->f(Landroid/view/View;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Llb;Llb;IIII)Z
    .locals 7

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_0
    move v3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    move-object v2, p2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    int-to-float v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    move v5, p6

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

    :goto_5
    invoke-super {p0, p2}, Loac;->D(Llb;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    neg-float v0, v2

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

    :goto_8
    int-to-float v6, p6

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
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_d
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p3, Loaa;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p2, Llb;->a:Landroid/view/View;

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

    :goto_13
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    :goto_16
    move v2, p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    iget-object v0, p1, Llb;->a:Landroid/view/View;

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

    :goto_18
    iget-object v1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-int v2, p5, p3

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

    :goto_1a
    invoke-virtual/range {v0 .. v5}, Loac;->f(Llb;IIII)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v5, p5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-super {p0, p1}, Loac;->D(Llb;)V

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-direct {p0, p2}, Lnzn;->21017490f1e4e968f513520349816008m(Llb;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1f
    move v4, p5

    nop

    goto/32 :goto_4

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

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p2, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_23
    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_39

    nop

    nop

    :goto_26
    const v1, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v0, p3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_28
    neg-float v0, v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2c
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    iget-object v1, p2, Llb;->a:Landroid/view/View;

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

    nop

    :goto_2e
    int-to-float v2, v2

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

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Loac;->f:Ljava/util/ArrayList;

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

    :goto_31
    iget-object v0, p2, Llb;->a:Landroid/view/View;

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

    :goto_32
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_28

    nop

    nop

    :goto_33
    sub-int v3, p6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_36
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_39
    iget-object v0, p1, Llb;->a:Landroid/view/View;

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

    :goto_3a
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    move-object v1, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sub-float/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    iget-object v4, p1, Llb;->a:Landroid/view/View;

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

    :goto_3e
    invoke-direct/range {v0 .. v6}, Loaa;-><init>(Llb;Llb;FFFF)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-float v3, v3

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

    nop

    :goto_40
    sub-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_42
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Llb;IIII)Z
    .locals 8

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loac;->e:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    neg-int p2, p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v4, p2, v0

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

    :goto_4
    invoke-virtual {p0, p1}, Lki;->k(Llb;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Llb;->a:Landroid/view/View;

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

    :goto_6
    iget-object v1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

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

    :goto_a
    invoke-super {p0, p1}, Loac;->D(Llb;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    neg-int p2, p3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    add-int v5, p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_c

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

    :goto_10
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    move v7, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_17
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    float-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int p3, p5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-direct/range {v2 .. v7}, Loab;-><init>(Llb;IIII)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p3, :cond_3

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

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    :goto_21
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    move v6, p4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    return p2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    new-instance p2, Loab;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

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

    :goto_2b
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Lnzn;->21017490f1e4e968f513520349816008m(Llb;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2f
    sub-int p2, p4, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop
.end method

.method public final i(Llb;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3dcccccd    # 0.1f

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

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_12

    nop

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
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const v0, 0x13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lnzn;->E(Landroid/view/View;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Loac;->d:Ljava/util/ArrayList;

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

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

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

    :goto_14
    invoke-super {p0, p1}, Loac;->D(Llb;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    div-float/2addr v1, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Lnzn;->21017490f1e4e968f513520349816008m(Llb;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop
.end method

.method public final j(Llb;)V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lnzn;->21017490f1e4e968f513520349816008m(Llb;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v0}, Lnzn;->E(Landroid/view/View;Z)V

    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Loac;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    div-float/2addr v0, v2

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

    :goto_11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

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

    :goto_12
    int-to-float v0, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lnzu;->b(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-super {p0, p1}, Loac;->D(Llb;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnzn;->u:Lnzu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const v1, 0x1b

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
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final t(Llb;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final u(Llb;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Llb;->a:Landroid/view/View;

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

    :goto_5
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_e

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    const v0, 0xa

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v1, 0x5

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

    :goto_b
    iget-object p0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

.method public final v(Llb;IIII)Landroid/view/ViewPropertyAnimator;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sub-int/2addr p4, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget-object p1, p1, Llb;->a:Landroid/view/View;

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

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    if-nez p5, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    sub-int/2addr p5, p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method protected final w(Llb;)Landroid/view/ViewPropertyAnimator;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x18

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

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lnzn;->s:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v1, 0x17

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

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-wide v1, p0, Lki;->i:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnzn;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop
.end method

.method protected final x(Llb;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lnzu;->b(Landroid/view/View;)V

    goto/32 :goto_6

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
    invoke-static {p0, p1}, Lnzn;->E(Landroid/view/View;Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p1, Llb;->a:Landroid/view/View;

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

    nop

    :goto_5
    iget-object p0, p0, Lnzn;->u:Lnzu;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final y(Llb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final z(Llb;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_3

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
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p1, Llb;->a:Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop
.end method
