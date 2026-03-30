.class final Lrli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
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

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1
    iget p1, p1, Lrln;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lrlo;->h:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_5
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_58

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_60

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrln;->isLaidOut()Z

    move-result p1

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

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x50

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

    :goto_c
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lrln;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v4, v3, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->g:Lscn;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    filled-new-array {v0, v2}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lrfp;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_17
    iget p1, p1, Landroid/os/Message;->arg1:I

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

    :goto_18
    iget-object p1, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_55

    nop

    nop

    :goto_1b
    iget-object v4, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    :goto_1d
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v2, p1, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget p0, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v3, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lrlo;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p0, v2}, Lrfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5a

    nop

    nop

    :goto_27
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    :goto_29
    invoke-virtual {p1}, Lrln;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

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

    :goto_2a
    int-to-long v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v0, p1, Lrln;->g:Z

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Lrlo;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_44

    nop

    nop

    :goto_2f
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_30
    iput-object v3, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lrlo;->g()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lrlo;

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

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq p1, v1, :cond_7

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_36
    iput-boolean v1, p1, Lrln;->g:Z

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

    :goto_37
    invoke-virtual {p0}, Lrlo;->h()V

    :goto_38
    goto/32 :goto_19

    nop

    nop

    :goto_39
    new-instance p1, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Lrln;->getVisibility()I

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v2}, Ldsz;->b(Ldsw;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lrlo;->j:Lrln;

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

    :goto_3e
    iget-object p1, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p1, Ldsz;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_41
    goto :goto_38

    nop

    :goto_42
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v0, p0, Lrlo;->e:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_45
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_22

    nop

    nop

    :goto_47
    int-to-long v2, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_49
    add-int v0, v0, v1

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

    :goto_4a
    const v0, 0x18

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

    :goto_4b
    const/4 p1, 0x2

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

    :goto_4c
    new-instance v0, Lrlf;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, p1}, Lrlo;->b([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0, p0}, Lrlf;-><init>(Lrlo;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_51
    iget-object v0, p0, Lrlo;->f:Landroid/animation/TimeInterpolator;

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

    :goto_52
    invoke-virtual {p1, v0}, Lrln;->setVisibility(I)V

    :goto_53
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_54
    iget v0, p0, Lrlo;->d:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_56
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

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

    :goto_57
    invoke-virtual {p0}, Lrlo;->e()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v0, Lrlh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lrlo;->j:Lrln;

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

    :goto_5a
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5b
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    fill-array-data p1, :array_0

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput v2, p1, Ldsz;->g:I

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0, p0}, Lrlh;-><init>(Lrlo;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-boolean v1, p0, Lrlo;->q:Z

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-ne p0, v1, :cond_8

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_65
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_66
    iget-object p1, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Lrlo;->f()V

    goto/32 :goto_66

    nop

    nop
.end method
