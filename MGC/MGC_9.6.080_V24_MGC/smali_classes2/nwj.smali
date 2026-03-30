.class public Lnwj;
.super Lnvw;
.source "PG"


# instance fields
.field private a:F

.field final synthetic b:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnvw;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnwj;->b:Lnwp;

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


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v5, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1
    iget v3, v0, Lnwp;->H:F

    nop

    nop

    :goto_2
    goto/32 :goto_34

    nop

    nop

    :goto_3
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v1, v1

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

    nop

    :goto_5
    float-to-int v1, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    aput v3, v6, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    move v0, v2

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    sub-float/2addr v3, v0

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

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

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

    :goto_10
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnwj;->b:Lnwp;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    goto/32 :goto_41

    nop

    nop

    :goto_14
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_15
    const-string v3, "max zoom value hasn\'t been initialized properly"

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

    nop

    :goto_16
    iget v2, v0, Lnwp;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    invoke-virtual {p0, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    aput v0, v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lnwp;->q:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnwj;->b:Lnwp;

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

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lnwp;->q:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_20
    const v0, 0xf

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

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Ljava/lang/Float;

    nop

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

    :goto_26
    iget v3, v0, Lnwp;->H:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    :goto_28
    iget-boolean v3, v0, Lnwp;->F:Z

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

    :goto_29
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnwj;->b:Lnwp;

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

    :goto_2b
    iget-object v0, p0, Lnwj;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    const v1, 0x17

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

    :goto_2e
    iput v0, p0, Lnwj;->a:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-array v6, v5, [F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v3, :cond_1

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_4a

    nop

    nop

    :goto_34
    iget-object v4, v0, Lnwp;->q:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

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

    nop

    :goto_37
    iget v0, v0, Lnwp;->G:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lnwj;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lnwj;->b:Lnwp;

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

    :goto_3a
    iget-object v0, p0, Lnwj;->b:Lnwp;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    :goto_3d
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    sub-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    :goto_41
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_43
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v1}, Lnwp;->L(I)V

    goto/32 :goto_39

    nop

    nop

    :goto_45
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_47
    const/high16 v2, 0x44fa0000    # 2000.0f

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Lnwj;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4a
    iget v3, v0, Lnwp;->G:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lnwj;->a:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    iget-object v1, p0, Lnwj;->b:Lnwp;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3, v0, v1}, Lnwp;->J(IFF)V

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnwj;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lnwp;->q:Landroid/animation/ValueAnimator;

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_12
    const/4 v3, 0x7

    nop

    goto/32 :goto_b

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v1, Lnwp;->l:Loyn;

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

    :goto_15
    iget-object v2, p0, Lnwj;->b:Lnwp;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public c()V
    .locals 1

    goto/32 :goto_2

    nop

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
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwj;->b:Lnwp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lnwp;->A(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public h()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnwp;->G()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwj;->b:Lnwp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
