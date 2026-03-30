.class public final synthetic Lndf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lndf;->a:I

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

    :goto_1
    iput-object p1, p0, Lndf;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    :goto_4
    iput p3, p0, Lndf;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lmxw;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    if-ltz v5, :cond_0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v4, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lmxw;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    long-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lndf;->b:Ljava/lang/Object;

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

    :goto_a
    const/16 v0, 0x1367

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    iget v0, p0, Lndf;->c:I

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

    :goto_c
    iget-object v0, v0, Lndi;->h:Lneb;

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

    :goto_d
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-interface {p1, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_15

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-double/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_13
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    move p0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v5, p0

    nop

    nop

    :try_start_0
    invoke-virtual {v2, v5}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v4, v2, 0x2

    nop

    nop

    nop

    nop

    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, p0

    nop

    nop

    nop

    div-int/lit8 v2, v2, 0x2

    nop

    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    int-to-float p0, v2

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr p0, p1

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    add-int/2addr v4, p0

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    iget-object v1, v0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    iget-object p1, p1, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_24
    iget p0, p0, Lndf;->a:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_29
    check-cast v0, Lndi;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2b
    const/4 p0, -0x1

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

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

    nop

    :goto_2e
    return-void

    nop

    :goto_2f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v4, v5, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(DF)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    :try_start_1
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    cmpg-float v3, p1, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    if-gtz v3, :cond_4

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    move v3, v4

    nop

    :goto_32
    invoke-static {v3}, La;->au(Z)V

    iget-object v3, v2, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lndy;->indexOfChild(Landroid/view/View;)I

    move-result v5

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "Working around b/110351942: %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    move-object p1, p0

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

    :goto_35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lndf;->b:Ljava/lang/Object;

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

    :goto_37
    iget-object v0, p1, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

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

    :goto_38
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v4

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

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_3a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    float-to-double v2, v0

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

    nop

    :goto_3d
    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3e
    sub-double/2addr v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_43
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_45
    if-ne p0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_48
    if-eq v0, v1, :cond_6

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

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Lndf;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
