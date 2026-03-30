.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lrff;
.source "PG"


# instance fields
.field public a:I

.field private c:I

.field private d:Landroid/animation/ValueAnimator;

.field private e:Lrfa;

.field private f:Ljava/lang/ref/WeakReference;


# direct methods
.method private final 6aec192fd1960aa347b7ff349ced285cm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

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
    invoke-static {p1, v0}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ldwb;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p2, p1}, Lrez;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lrez;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 76e35777090367a7f17a5aa69c52ccb8m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    :goto_0
    int-to-float v1, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    new-instance v3, Lrmd;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

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

    :goto_4
    sget-object v3, Lrer;->e:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

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

    :goto_7
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v1

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

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrff;->af()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_11

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

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_12
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v1, 0x43160000    # 150.0f

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    filled-new-array {v1, p3}, [I

    move-result-object p2

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

    :goto_1a
    new-instance v2, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-direct {v3, p0, p1, p2, v4}, Lrmd;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    :goto_1f
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v1, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3c

    nop

    :goto_24
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_25
    if-gtz v1, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_37

    nop

    nop

    :goto_28
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

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

    nop

    nop

    :goto_2a
    if-eq v1, p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 p2, 0x258

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

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

    :goto_30
    cmpl-float v1, v2, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    div-float/2addr v0, v1

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

    :goto_32
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_33
    goto :goto_2c

    nop

    nop

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_37
    goto/32 :goto_12

    nop

    nop

    :goto_38
    mul-int/lit8 v0, v0, 0x3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_3a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lrff;->af()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v0, p3

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

    :goto_41
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_42
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_43
    int-to-long v2, p2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-direct {p0}, Lrff;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lrff;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
.end method

.method public static final al(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    const v1, 0x19

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
    if-lt v1, v0, :cond_1

    nop

    goto/32 :goto_d

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_2

    nop

    goto/32 :goto_18

    nop

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

    nop

    :goto_7
    check-cast v3, Ldsz;

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
    instance-of v3, v3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget-object v3, v3, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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

    :goto_12
    goto/32 :goto_f

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    const v0, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    return-object v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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
.end method

.method private static at(II)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    and-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop
.end method

.method private static final av(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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

    :goto_5
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    instance-of v3, v2, Landroid/widget/AbsListView;

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

    :goto_d
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const v1, 0x13

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v3, v2, Ldvj;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v1, v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v2

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v3, v2, Landroid/widget/ScrollView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method private static final aw(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 7

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v0

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

    :goto_1
    and-int/lit8 p3, v0, 0xc

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->m(Landroid/view/View;)Z

    move-result v3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->av(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_45

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :goto_b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->l(Z)Z

    move-result p2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    sub-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_13
    if-nez v1, :cond_5

    nop

    goto/32 :goto_27

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    :goto_17
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_18
    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    iget v0, v0, Lrfb;->a:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    neg-int p2, p2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of p3, p2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1d
    sub-int/2addr p3, v0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_21
    goto :goto_17

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    if-lt v3, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

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

    :goto_25
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_2e

    nop

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    :goto_29
    if-nez p0, :cond_9

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_57

    nop

    nop

    :goto_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v3, v2

    nop

    :goto_2e
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2f
    if-ge v0, v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_b
    goto/32 :goto_5f

    nop

    nop

    :goto_30
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p2, p2, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    if-nez p3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_c
    goto/32 :goto_6f

    nop

    nop

    :goto_34
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_36
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_37
    and-int/lit8 p3, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    if-le v0, v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v5, v4

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_28

    nop

    nop

    :goto_3f
    if-nez p3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_40
    and-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sub-int/2addr p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_45
    goto/32 :goto_3c

    nop

    nop

    :goto_46
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_48
    iget p0, p2, Lrfg;->d:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto :goto_3e

    nop

    :goto_4a
    goto/32 :goto_6a

    nop

    nop

    :goto_4b
    goto/32 :goto_46

    nop

    nop

    :goto_4c
    move v3, v2

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4e
    if-ge p2, p3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_50
    if-ge p2, p3, :cond_10

    nop

    goto/32 :goto_27

    nop

    :cond_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_52
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :goto_53
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_54
    sub-int/2addr p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_55
    if-gtz p3, :cond_11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    :goto_59
    goto/32 :goto_3b

    nop

    nop

    :goto_5a
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_60
    if-nez p0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_12
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_61
    check-cast v0, Lrfb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, p1}, Lts;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_63
    if-nez p0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_64
    if-nez p3, :cond_14

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_66
    if-lt v2, p0, :cond_15

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

    :cond_15
    goto/32 :goto_5

    nop

    nop

    :goto_67
    check-cast p2, Ldsz;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_68
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast p2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    nop

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

    :goto_6b
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-boolean p2, p1, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6e
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    neg-int p2, p2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop
.end method

.method private final b913e29f758ae67857efc0d7672e079fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 11

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gez v4, :cond_0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3
    if-nez v9, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget v9, v6, Lrfb;->topMargin:I

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v7, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->at(II)Z

    move-result v2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-static {v7, v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->at(II)Z

    move-result v10

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v4}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    add-int/2addr v8, v6

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lrff;->af()I

    move-result v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, v6, Lrfb;->topMargin:I

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

    :goto_15
    and-int/lit8 v8, v7, 0x11

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_16
    add-int/2addr v8, v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v7, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->at(II)Z

    move-result v10

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    :goto_1d
    div-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1e
    neg-int v8, v8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    if-eq v8, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    neg-int v9, v9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ge v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_4
    goto/32 :goto_3c

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

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v9, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->at(II)Z

    move-result v9

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

    :goto_28
    const/16 v5, 0x20

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v8, v4

    nop

    nop

    :goto_2a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v4, :cond_5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2c
    if-le v7, v6, :cond_6

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, v6, Lrfb;->bottomMargin:I

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

    nop

    nop

    :goto_2e
    add-int/2addr v8, v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    const v0, 0x11

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    if-nez v10, :cond_7

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v4

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

    :goto_32
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

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

    :goto_33
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_8
    goto/32 :goto_44

    nop

    :goto_34
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_35
    goto/16 :goto_63

    nop

    nop

    :goto_36
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v10, 0x5

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

    :goto_39
    if-lt v4, v2, :cond_a

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v2, v9, v8

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

    :goto_3b
    if-nez v10, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_b
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3c
    goto :goto_41

    nop

    :goto_3d
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getFitsSystemWindows()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_40
    move v8, v9

    nop

    nop

    :goto_41
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v1, v2, :cond_c

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_44
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ge v8, v6, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v9, v6, Lrfb;->a:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_48
    check-cast v6, Lrfb;

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

    :goto_49
    move v8, v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    neg-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4e
    move v9, v2

    nop

    :goto_4f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPaddingTop()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v6, Lrfb;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

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

    :goto_53
    add-int/2addr v9, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_54
    goto/16 :goto_18

    nop

    nop

    :goto_55
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v8, v0, v3}, Ldvu;->z(III)I

    move-result v0

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

    :goto_57
    iget v6, v6, Lrfb;->bottomMargin:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_58
    sub-int/2addr v9, v2

    nop

    nop

    :goto_59
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5b
    neg-int v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5c
    iget v7, v6, Lrfb;->a:I

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

    :goto_5d
    const/16 v9, 0x11

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

    :goto_5e
    add-int/2addr v2, v9

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->76e35777090367a7f17a5aa69c52ccb8m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :goto_60
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_61
    sub-int/2addr v1, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v4, v3

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_28

    nop

    nop

    :goto_64
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_65
    invoke-virtual {p2, v4}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_32

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic ad(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    neg-int p0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final synthetic ae(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final af()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrfi;->ap()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

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

    :goto_3
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a:I

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

.method public final bridge synthetic ag(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 17

    goto/32 :goto_a2

    nop

    nop

    :goto_0
    if-gtz v8, :cond_0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    const v16, 0x3e99999a    # 0.3f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v9, v9, Lrfb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    move/from16 v2, p4

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

    :goto_5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_6
    move/from16 v6, p5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_7
    move v5, v8

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_98

    nop

    :goto_9
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lrfi;->ap()I

    move-result v11

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

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_1
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v10, v10, Lrfb;->bottomMargin:I

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

    :goto_d
    add-int/lit8 v6, v6, 0x1

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

    :goto_e
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v15, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v12, v12, Landroid/graphics/Rect;->top:I

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

    :goto_11
    if-lt v6, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v9, v10}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_14
    sub-int v8, v4, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpl-float v12, v12, v13

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    and-int/2addr v9, v7

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7c

    nop

    nop

    :goto_1b
    goto/32 :goto_66

    nop

    nop

    :goto_1c
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1d
    mul-int/2addr v7, v8

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->a:Z

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1f
    check-cast v12, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_20
    check-cast v9, Lrfb;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_21
    if-le v6, v12, :cond_3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_86

    nop

    nop

    :goto_22
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_23
    sub-int v7, v2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

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

    :goto_25
    check-cast v13, Landroid/graphics/Rect;

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

    :goto_26
    iget-object v13, v10, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_27
    mul-float v15, v15, v16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    invoke-virtual {v9}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_29
    and-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2c
    move v8, v5

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v10, Landroid/graphics/Rect;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_32
    if-nez v6, :cond_4

    nop

    goto/32 :goto_9a

    nop

    :cond_4
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3, v6}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

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

    :goto_34
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v7, -0x1

    nop

    :goto_36
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

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

    :goto_38
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_39
    add-int/2addr v8, v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v5, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a:I

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v13, v10, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v7}, Lrfi;->aq(I)Z

    move-result v6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v13, v5, v15}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_40
    add-int/2addr v8, v10

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

    nop

    :goto_41
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2c

    nop

    nop

    :goto_43
    invoke-virtual/range {p0 .. p0}, Lrff;->af()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v10, v9, Lrfb;->c:Lqat;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_45
    check-cast v13, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_47
    check-cast v13, Landroid/graphics/Rect;

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

    nop

    :goto_48
    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_49
    check-cast v13, Landroid/graphics/Rect;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4a
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v7

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

    nop

    :goto_4b
    iput v7, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_4c
    div-float/2addr v6, v7

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v10, Lrfb;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4e
    iget v7, v10, Lrfb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

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

    :goto_50
    iget-object v12, v10, Lqat;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_51
    sub-float/2addr v12, v11

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_52
    int-to-float v15, v15

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

    :goto_53
    and-int/lit8 v8, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_54
    goto/16 :goto_8f

    nop

    :goto_55
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v15, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v13, v10, Lqat;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5b
    add-int/2addr v8, v12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v13, v11, v14}, Ldvu;->y(FFF)F

    move-result v13

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v3, v9, v12}, Lcom/google/android/material/appbar/AppBarLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    neg-float v15, v12

    nop

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

    :goto_5f
    if-ne v4, v2, :cond_6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v6, :cond_7

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_7
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_3b

    nop

    nop

    :goto_62
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_63
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_64
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_65
    div-float v13, v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_66
    move-object/from16 v0, p0

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

    :goto_67
    neg-int v13, v13

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    :goto_6b
    if-nez v10, :cond_9

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v13, v13

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_6d
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v11, v10, Lrfb;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6f
    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3, v6}, Lcom/google/android/material/appbar/AppBarLayout;->h(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-ge v6, v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_18

    nop

    nop

    :goto_72
    int-to-float v6, v6

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

    :goto_73
    const/4 v7, 0x1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_74
    if-ge v4, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-lt v2, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_76
    mul-float/2addr v7, v6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_77
    invoke-static {v1, v3, v2, v7, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->aw(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v8, :cond_d

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v11, 0x0

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_7a
    if-le v4, v6, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return v5

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_7d
    int-to-float v7, v8

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

    :goto_7e
    invoke-virtual {v9}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_7f
    sub-int/2addr v8, v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sub-float v13, v14, v13

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

    :goto_81
    iget-object v10, v10, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v12, v5, v13}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_b7

    nop

    nop

    :goto_83
    check-cast v12, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

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

    :goto_85
    invoke-virtual/range {p0 .. p0}, Lrfi;->ap()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_86
    if-nez v11, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_87
    sub-int/2addr v6, v7

    nop

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

    nop

    :goto_88
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_89
    invoke-interface {v11, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_8a
    mul-float/2addr v13, v13

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_8c
    sub-float v13, v14, v13

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v9, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v7, :cond_10

    nop

    goto/32 :goto_2d

    nop

    :cond_10
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_1b

    nop

    nop

    :goto_92
    move v7, v2

    nop

    :goto_93
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move v8, v5

    nop

    :goto_95
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v12, v10, Lrfb;->topMargin:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v9, v14}, Landroid/view/View;->setAlpha(F)V

    :goto_98
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    :goto_9a
    goto/32 :goto_85

    nop

    nop

    :goto_9b
    iget-object v13, v10, Lqat;->a:Ljava/lang/Object;

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

    :goto_9c
    neg-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_9d
    if-lt v8, v7, :cond_11

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_9e
    if-gez v12, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_12
    goto/32 :goto_a9

    nop

    nop

    :goto_9f
    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_a0
    goto :goto_a5

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const v0, 0x13

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_a3
    invoke-static/range {p3 .. p5}, Ldvu;->z(III)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v9, v14}, Landroid/view/View;->setAlpha(F)V

    :goto_a5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v3, v8}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_a7
    iget-object v15, v10, Lqat;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v7

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v9, v11}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v9, v10}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v13

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

    :goto_ac
    cmpg-float v13, v12, v11

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->6aec192fd1960aa347b7ff349ced285cm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ae
    if-nez v7, :cond_13

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_af
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b0
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v9, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v3, v6}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

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

    :goto_b3
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b4
    sub-float/2addr v12, v15

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    float-to-int v15, v15

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_b6
    int-to-float v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b7
    iget-object v12, v10, Lqat;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-lez v13, :cond_15

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_15
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v9, v12}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop
.end method

.method final ah(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lrfa;
    .locals 6

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lrfa;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput v2, v0, Lrfa;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    add-int/2addr v5, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    if-lez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    :goto_c
    new-instance v0, Lrfa;

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

    :goto_d
    move p0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v2, v2, 0x1

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

    :goto_10
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    iput-boolean v5, v0, Lrfa;->b:Z

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

    nop

    :goto_15
    if-ge p0, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean p0, v0, Lrfa;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    neg-int p0, p0

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

    :goto_1b
    iput-boolean v1, v0, Lrfa;->g:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v2, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    add-int/2addr v4, p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

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

    nop

    :goto_21
    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_22
    const/4 v1, 0x0

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

    nop

    :goto_23
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_24
    move v1, p1

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    move p0, p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    sget-object p1, Ldxv;->c:Ldxv;

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

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

    :goto_2c
    if-eq v4, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x6

    nop

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

    :goto_2e
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    add-int/2addr p0, p2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_32
    iput p1, v0, Lrfa;->f:F

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

    :goto_33
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_34
    div-float/2addr p1, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_35
    move v5, p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v5, :cond_7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float p1, v4

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Lrfi;->ap()I

    move-result p0

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

    :goto_3c
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_13

    nop

    nop

    :goto_3f
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_40
    if-gez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic ai(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->b913e29f758ae67857efc0d7672e079fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->av(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p2, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

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

    :goto_5
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->l(Z)Z

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->m(Landroid/view/View;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method final aj(Lrfa;Z)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic ak(Landroid/view/View;)Z
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    move p1, v0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_7
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    if-nez v1, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p1

    nop

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
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

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

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    check-cast p0, Landroid/view/View;

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
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_0

    nop

    nop

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

    :goto_18
    goto :goto_e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

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

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop
.end method

.method public final am(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V
    .locals 8

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->b()I

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    move v5, p4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p4, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    move-object v4, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v7, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    neg-int v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    neg-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->m(Landroid/view/View;)Z

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    move v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x2

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->l(Z)Z

    :goto_f
    goto/32 :goto_16

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v2 .. v7}, Lrff;->an(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v6, v7, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_9

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    move-object v3, p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ltz p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_1e
    aput p0, p5, v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    iget-boolean p0, p2, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    :goto_24
    move-object v2, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final bridge synthetic c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p2, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->l(Z)Z

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->b913e29f758ae67857efc0d7672e079fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:I

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

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->m(Landroid/view/View;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p4, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    const/4 v0, 0x1

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

    :goto_f
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    neg-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrfi;->ap()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2
    add-int/2addr v0, p3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p3, v0, Lrfa;->a:Z

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

    :goto_7
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v3

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

    :goto_9
    goto/16 :goto_43

    nop

    nop

    :goto_a
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->76e35777090367a7f17a5aa69c52ccb8m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_12
    neg-int p3, p3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float p3, p3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_16
    neg-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_17
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->h(I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    neg-int p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    and-int/lit8 v0, p3, 0x4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2, v2}, Lrff;->ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    iget p3, p2, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    :goto_22
    goto/16 :goto_43

    nop

    :goto_23
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr p3, v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_28
    iput v2, p2, Lcom/google/android/material/appbar/AppBarLayout;->b:I

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

    nop

    :goto_29
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, p2, p3}, Lrff;->ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    invoke-static {p3, v0, v2}, Ldvu;->z(III)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lrfi;->ap()I

    move-result p3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2f
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-int/2addr p3, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v3, :cond_4

    nop

    goto/32 :goto_3e

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_33
    iget-boolean p3, v0, Lrfa;->b:Z

    nop

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

    :goto_34
    and-int/lit8 v3, p3, 0x2

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

    :goto_35
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1, p2, v0}, Lrff;->ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p3}, Landroid/view/View;->getMinimumHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_39
    invoke-static {p1, p2, p3, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->aw(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3a
    iget v3, v3, Lrfa;->f:F

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->6aec192fd1960aa347b7ff349ced285cm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->76e35777090367a7f17a5aa69c52ccb8m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3f
    iget-boolean v3, v3, Lrfa;->g:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_40
    iget p3, v0, Lrfa;->e:I

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-super {p0, p1, p2, p3}, Lrff;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1, p2, v2}, Lrff;->ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    :goto_43
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

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

    :goto_45
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

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

    nop

    :goto_46
    add-int v0, v0, v1

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

    :goto_47
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_48
    invoke-virtual {p0, p3}, Lrfi;->aq(I)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v3, :cond_5

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

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez p3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

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

    :goto_4c
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p3

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

    :goto_4d
    if-nez p3, :cond_7

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p3, :cond_8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lrfi;->ap()I

    move-result p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 p3, 0x0

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

    :goto_51
    invoke-virtual {p0, p1, p2, p3}, Lrff;->ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

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

    :goto_54
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_9
    goto/32 :goto_20

    nop

    :goto_55
    mul-float/2addr p3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_56
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    and-int/lit8 v3, p3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method public final bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;III)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 p5, -0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iget p0, p0, Ldsz;->height:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    check-cast p0, Ldsz;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return v0

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p0, p5, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public final bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V
    .locals 0

    goto/32 :goto_2

    nop

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
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->am(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

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

.method public final bridge synthetic n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    aput p3, p6, p4

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

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    move-object v1, p1

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

    :goto_a
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    move v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz p5, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    :goto_11
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

    :goto_12
    invoke-virtual/range {v0 .. v5}, Lrff;->an(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_14
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result p3

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

    :goto_15
    neg-int v4, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->6aec192fd1960aa347b7ff349ced285cm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic o(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

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

    :goto_2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->aj(Lrfa;Z)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of p1, p2, Lrfa;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Lrfa;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e:Lrfa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic p(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ah(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lrfa;

    move-result-object p0

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

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p4, :cond_0

    nop

    nop

    goto/32 :goto_23

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

    :goto_4
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    and-int/lit8 p4, p4, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    if-nez p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f:Ljava/lang/ref/WeakReference;

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

    :goto_10
    return v0

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v0, v1

    nop

    nop

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
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

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

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

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

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_20
    if-nez p4, :cond_5

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

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    if-le p1, p2, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_6
    :goto_23
    goto/32 :goto_13

    nop

    nop

    :goto_24
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop
.end method
