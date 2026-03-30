.class public final Lrfm;
.super Ldxx;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldxx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lrfm;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lrfm;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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
    iget-object p2, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iput p2, p0, Lrfm;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

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

.method public final c(I)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lrlo;

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

    :goto_4
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Lrlt;->f(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Lrlt;->e(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lrlt;->a()Lrlt;

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

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object p1

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

    :goto_11
    check-cast p0, Lrlo;

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
.end method

.method public final d(Landroid/view/View;FF)V
    .locals 6

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v4, v5, :cond_0

    nop

    nop

    goto/32 :goto_18

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

    nop

    :goto_5
    if-lt p2, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_30

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_9
    if-gez v0, :cond_2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p3, v0}, Ldxy;->i(II)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_b
    iget p2, p0, Lrfm;->b:I

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_39

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_13
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->o(Landroid/view/View;)V

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    if-eq v3, v2, :cond_4

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_39

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    cmpg-float p2, p2, p3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    :goto_1f
    iput p3, p0, Lrfm;->c:I

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

    :goto_20
    invoke-direct {p2, p0, p1, v2}, Lrfn;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gtz v0, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p2, Lrfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

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

    :goto_24
    if-gtz v0, :cond_6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v5, 0x2

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

    :goto_26
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_28
    iget v3, p0, Lrfm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    add-int/2addr p3, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmpl-float v0, p2, p3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    goto :goto_2b

    nop

    :goto_30
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_31
    if-nez p0, :cond_8

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    :goto_32
    if-ltz v0, :cond_9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_33
    if-gez p2, :cond_a

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_35
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

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

    :goto_36
    iget p3, p0, Lrfm;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_37
    const/4 p3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_38
    if-ge v0, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_b
    :goto_39
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

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

    :goto_3b
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/32 :goto_51

    nop

    nop

    :goto_3c
    if-eqz v4, :cond_c

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_39

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3f
    iget p3, p0, Lrfm;->b:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_41
    cmpg-float v0, p2, p3

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

    :goto_42
    const v0, 0x17

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

    :goto_43
    if-nez p2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v2, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_46
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_47
    iget-object p0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

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

    :goto_48
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

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

    :goto_49
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p2, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4b
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4e
    sub-int p3, p2, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_b

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v4, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_54
    cmpg-float v0, p2, p3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_55
    if-eq v3, v2, :cond_f

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_f
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/view/View;I)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    if-eq v0, p2, :cond_0

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

    :cond_0
    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, -0x1

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
    iget v0, p0, Lrfm;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ad(Landroid/view/View;)Z

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/view/View;I)I
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

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

    :goto_1
    sub-int/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

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

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    sub-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget v0, p0, Lrfm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v2, :cond_2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    goto :goto_1a

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_1a

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lrfm;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    :goto_17
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Lrfm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    add-int/2addr p0, p1

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lrfm;->b:I

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

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    iget p0, p0, Lrfm;->b:I

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

    :goto_20
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    iget-object v1, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    iget p0, p0, Lrfm;->b:I

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

    :goto_26
    rem-int v0, v0, v1

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

    :goto_27
    const/4 v2, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    add-int/2addr p0, v0

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

    :goto_29
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    iget v0, p0, Lrfm;->b:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    return p0

    nop

    nop

    :goto_2f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    iget v0, p0, Lrfm;->b:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/View;I)I
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

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
.end method

.method public final i(Landroid/view/View;II)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

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

    :goto_1
    goto/32 :goto_1b

    nop

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_23

    nop

    nop

    :goto_3
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    sub-float/2addr v0, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    iget p0, p0, Lrfm;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    cmpl-float p2, p0, v0

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

    :goto_b
    iget-object v1, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    sub-int/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    sub-float/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float p0, p0

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ae(F)F

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    cmpg-float p2, p0, p3

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

    :goto_19
    mul-float/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lrfm;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-float/2addr p0, p3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v0, v0

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

    :goto_1f
    int-to-float p3, p3

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

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_21
    if-lez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_27
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
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

    :goto_29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

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
.end method
