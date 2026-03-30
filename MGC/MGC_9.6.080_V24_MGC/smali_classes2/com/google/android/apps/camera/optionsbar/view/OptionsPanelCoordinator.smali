.class public Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "PG"


# instance fields
.field public i:Lnbh;

.field private j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cD(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->cD(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

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

    :goto_1
    return p0

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

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

    :goto_8
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

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
.end method

.method public final k(Landroid/view/View;II)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_7
    move-object p1, v0

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    :goto_a
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const v1, 0x8

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

    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result p0

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
.end method

.method protected final onFinishInflate()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

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

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_2
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onFinishInflate()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7f0b0517

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, v3, Landroidx/viewpager/widget/ViewPager;->e:I

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

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lnbh;->c:Lnbh;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

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

    :goto_a
    goto :goto_d

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v3, v0, :cond_3

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

    nop

    :goto_f
    move v0, v1

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

    :goto_10
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_15
    goto/32 :goto_19

    nop

    nop

    :goto_16
    const/4 v1, 0x1

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

    nop

    :goto_17
    iget-boolean v0, v0, Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;->p:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Lnbh;->d()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

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

    :goto_21
    goto :goto_1a

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_24
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v0, v1, :cond_8

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

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_28
    if-gtz v0, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    return p0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v4}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_15

    nop

    :goto_2e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

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

    :goto_30
    iput v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->k:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_31
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x2

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_34
    if-nez v0, :cond_a

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v2, 0x0

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
    return p0

    nop

    nop

    :goto_37
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_39
    sub-float/2addr v0, v1

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

    :goto_3a
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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

    :goto_3b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

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

    nop

    :goto_3d
    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v2}, Lnbh;->equals(Ljava/lang/Object;)Z

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

    :goto_3f
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->i:Lnbh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelCoordinator;->j:Lcom/google/android/apps/camera/optionsbar/view/AutobahnViewPager;

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

    :goto_41
    sget-object v4, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_c

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

    :cond_c
    goto/32 :goto_25

    nop
.end method
