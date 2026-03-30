.class public Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

.field public b:Landroid/animation/ValueAnimator;

.field public final c:Ljava/util/Map;

.field private d:Lnbe;

.field private e:Lnbh;

.field private f:Landroid/graphics/PointF;

.field private g:Lj$/util/Optional;

.field private h:Landroid/animation/ValueAnimator;

.field private i:F

.field private j:Z


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Landroid/widget/TextView;DF)V
    .locals 6

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr v2, p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmxy;->c:Lmya;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float p0, p4, v0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_47

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    iget p3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/TextView;

    move-result-object v4

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

    :goto_10
    sub-double/2addr v0, p2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_1f

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    move v5, p3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 p3, 0x8

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

    :goto_19
    sget-object p2, Lmya;->b:Lmya;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    const v4, 0x7f07038d

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lmxy;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v4, v5

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-float/2addr v2, v3

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

    :goto_21
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_22
    goto :goto_1f

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_26
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    if-eq p0, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p1, v4, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2c
    double-to-float p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr v2, p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_31
    add-float/2addr v2, p3

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

    :goto_32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    :goto_33
    if-eq p1, v4, :cond_2

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v4, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    if-gtz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-float/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_37
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_38
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_39
    const/4 v5, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_16

    nop

    :goto_3b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

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

    nop

    :goto_3f
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p2, Lmxy;

    nop

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

    :goto_41
    if-eq p1, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    :goto_42
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_43
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v4, p3

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

    nop

    nop

    :goto_45
    const/4 v4, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    :goto_47
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    div-float/2addr v3, p2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget p2, p2, Lmxy;->e:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m(Landroid/widget/TextView;)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmxy;->c:Lmya;

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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lmxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    sget-object p1, Lmya;->b:Lmya;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-ne p0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lnbh;->a:Lnbh;

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

    :goto_4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    sget-object p1, Lnbe;->b:Lnbe;

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

    :goto_b
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

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
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

.method private final d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const-wide/16 v0, 0xc8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->p(Landroid/view/View;ZJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Lnbh;

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lnbh;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lnzk;->aQ(Lnbe;)Z

    move-result v0

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

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static final p(Landroid/view/View;ZJ)Landroid/animation/ValueAnimator;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljic;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->v(Landroid/view/View;ZJLjava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    new-instance v0, Ljic;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private static final u(Landroid/widget/TextView;Lj$/util/Optional;I)V
    .locals 0

    goto/32 :goto_a

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, ""

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static final v(Landroid/view/View;ZJLjava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array v3, v3, [F

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

    :goto_4
    const/4 v3, 0x2

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

    :goto_5
    invoke-direct {v1, p0, v2}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p2, Lmxx;

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

    :goto_9
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    const/4 v4, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v1, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lieq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x8

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

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    aput v2, v3, v1

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

    :goto_17
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    invoke-direct {p2, p1, p0, p4}, Lmxx;-><init>(ZLandroid/view/View;Ljava/lang/Runnable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1c
    const v1, 0x1a

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

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    aput v0, v3, v4

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

    :goto_20
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/ImageView;

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
    const v0, 0x7f0b03ef

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

.method public final b()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b0089

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

    :goto_3
    check-cast p0, Landroid/widget/TextView;

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

.method public final c()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b0090

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method final d()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7f0b00f1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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
    return-object p0

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

    nop

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

    :goto_1
    goto/32 :goto_21

    nop

    :goto_2
    cmpg-float v6, v1, v6

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

    :goto_3
    return v3

    nop

    nop

    :goto_4
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

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

    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v5, v8

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

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
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_b
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v7

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

    :goto_c
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/View;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    nop

    nop

    :goto_f
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_10
    add-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getX()F

    move-result v6

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

    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v4, v4

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

    :goto_15
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    :goto_18
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

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

    :goto_1c
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f:Landroid/graphics/PointF;

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

    :goto_1d
    cmpg-double v0, v0, v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    add-float/2addr v6, v7

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

    :goto_1f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    :goto_21
    goto/32 :goto_57

    nop

    nop

    :goto_22
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v3

    nop

    nop

    :goto_25
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_27
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    const v0, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    const v5, 0x7f0b0137

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2d
    return p0

    nop

    :goto_2e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_31
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-double/2addr v6, v8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v5, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;

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

    :goto_36
    iget v4, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v6, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

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

    :goto_3a
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-float/2addr v5, v8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3e
    if-gez v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Landroid/graphics/PointF;

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

    :goto_40
    float-to-double v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    float-to-double v6, v2

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

    :goto_42
    cmpl-float v6, v2, v5

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

    :goto_43
    check-cast v4, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-gez v9, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_47
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

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

    :goto_48
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

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

    :goto_49
    float-to-double v8, v2

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

    :goto_4a
    cmpg-float v5, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4b
    cmpl-float v9, v1, v6

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

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

    nop

    :goto_50
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_51
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sub-double/2addr v0, v4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_54
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_56
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_58
    invoke-virtual {v5}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getY()F

    move-result v5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto :goto_51

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eq v0, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_5f
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_58

    nop

    nop
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b02a6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0x7f0b02b4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/TextView;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b0138

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Z)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->p(Landroid/view/View;ZJ)Landroid/animation/ValueAnimator;

    move-result-object p1

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0xa7

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_10
    if-ne v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_12
    const-wide/16 v0, 0x53

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    goto :goto_b

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v1, 0x8

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

    :goto_17
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    const v1, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v0, v1, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getAlpha()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float v0, v0, v1

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

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop
.end method

.method public final i(Lnbe;Lnbh;)V
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Lnbh;

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
    const-wide/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v6, Lmcf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    move-object v3, p2

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
    invoke-static {p1, v0, v1, v2, v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->v(Landroid/view/View;ZJLjava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v2, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v5}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->o()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    move-object v1, p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    const v1, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    move-object v0, v6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_18
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    const/4 v5, 0x0

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

    :goto_1a
    const v0, 0xe

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, p2}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

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
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object v0

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

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Landroid/widget/TextView;Lmya;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, v0, Lmxy;->c:Lmya;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lmxy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result p2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lnzk;->z(Landroid/view/View;)I

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-static {p0}, Lnzk;->z(Landroid/view/View;)I

    move-result p2

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

    :goto_15
    sget-object v0, Lmya;->c:Lmya;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-eq p2, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_8

    nop

    nop
.end method

.method public final l(ZZ)V
    .locals 10

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v4, v5

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8
    move v2, v3

    nop

    nop

    :goto_9
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v4, 0x8

    nop

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

    :goto_b
    if-ne v6, p1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v0

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

    :goto_d
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_28

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_17
    goto/16 :goto_9

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v6, p1, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v7, Lmxy;->d:Landroid/animation/ValueAnimator;

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

    :goto_1d
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_24
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v7, Lmxy;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_27
    move v2, v3

    nop

    nop

    :goto_28
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_2f
    goto/32 :goto_41

    nop

    nop

    :goto_30
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_33
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_34
    if-ne v8, v9, :cond_6

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

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v6, p1, :cond_7

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

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v4, v5

    nop

    nop

    :goto_37
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v7, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:Landroid/animation/ValueAnimator;

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

    :goto_3e
    goto/16 :goto_6

    nop

    :goto_3f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v9, Lmya;->b:Lmya;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    :goto_46
    if-ne v6, p1, :cond_a

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

    :cond_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_48
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4a
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v8, v7, Lmxy;->c:Lmya;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4c
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop
.end method

.method public final m(D)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    const v0, 0x6

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

    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    :goto_5
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->132cd3b981019b59dc42653eea0b34b4m(Landroid/widget/TextView;DF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(DF)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->132cd3b981019b59dc42653eea0b34b4m(Landroid/widget/TextView;DF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e94656b6137dd01f26085f984afe853em()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1
    invoke-static {v5, v6, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/widget/TextView;Lj$/util/Optional;I)V

    :goto_2
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_5
    int-to-float v5, v5

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_72

    nop

    nop

    :goto_7
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_85

    nop

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

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v6, 0x40000000    # 2.0f

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    :goto_d
    const/16 v5, 0x11

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lmxy;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v5, 0x51

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    nop

    :goto_11
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_13
    const/16 v3, 0x8

    nop

    :goto_14
    goto/32 :goto_79

    nop

    nop

    :goto_15
    const v2, 0x7f0707ad

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v5, v0, Lmxy;->e:F

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1d
    check-cast v6, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_1f
    move v3, v4

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_21
    iget v6, v6, Lmxy;->b:I

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6e

    nop

    nop

    :goto_25
    goto/16 :goto_18

    nop

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5b

    nop

    :goto_29
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k(Landroid/widget/TextView;Lmya;)V

    goto/32 :goto_70

    nop

    nop

    :goto_2b
    iput v7, p0, Lmxy;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_2c
    move v0, v4

    nop

    nop

    :goto_2d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_30
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    div-float/2addr v3, v6

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e94656b6137dd01f26085f984afe853em()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_35
    check-cast v0, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    :goto_38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v6, v4

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3c
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v6}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v6

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/TextView;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_43
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v6, 0x7f07038d

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_45
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_48
    iput v7, v0, Lmxy;->e:F

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v6, v6, Lmxy;->c:Lmya;

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

    :goto_4c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4d
    div-int/lit8 v5, v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    div-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

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

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_56
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_5e
    iput v7, v0, Lmxy;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_5f
    if-nez v6, :cond_3

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_64
    const-string v5, "en"

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_65
    iput v5, v0, Lmxy;->e:F

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_66
    if-nez v1, :cond_4

    nop

    goto/32 :goto_bb

    nop

    :cond_4
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_68
    if-eq v5, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v1, :cond_6

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_70
    goto/16 :goto_24

    nop

    nop

    :goto_71
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v5, v7, v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/widget/TextView;Lj$/util/Optional;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_75
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_76
    check-cast v0, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v6, Lmxy;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_79
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget v2, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    :goto_7c
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v6, v6, Lmxy;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_7e
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getHeight()I

    move-result v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_7f
    iput v7, v0, Lmxy;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v0, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_82
    const v2, 0x7f0707ae

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_83
    check-cast p0, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_84
    check-cast v6, Lmxy;

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

    :goto_85
    goto/16 :goto_b5

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_87
    invoke-direct {p0, v3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->430f03c2ea70bd28108d593eca0c7c30m(Landroid/widget/TextView;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_88
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    :goto_89
    int-to-float v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_8a
    iput v7, p0, Lmxy;->e:F

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_c9

    nop

    nop

    :goto_8d
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_8
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_2

    nop

    :goto_90
    goto/32 :goto_69

    nop

    nop

    :goto_91
    if-eqz v2, :cond_9

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_92
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_93
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eq v5, v0, :cond_b

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_96
    int-to-float v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iput v7, v0, Lmxy;->e:F

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

    :goto_99
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->430f03c2ea70bd28108d593eca0c7c30m(Landroid/widget/TextView;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d1

    nop

    nop

    :goto_a0
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_a1
    iget v0, v0, Lnbh;->e:I

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_a2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_a3
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b2

    nop

    nop

    :goto_a6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_a7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez v2, :cond_c

    nop

    goto/32 :goto_90

    nop

    nop

    :cond_c
    goto/32 :goto_68

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Lnbh;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_ad
    iput v0, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v0, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_af
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_b1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_b2
    iput v7, v0, Lmxy;->e:F

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_b4
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v0, Lmxy;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_2d

    nop

    nop

    :goto_bb
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_bc
    iput v7, v0, Lmxy;->e:F

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast v0, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iput v6, v0, Lmxy;->e:F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez v0, :cond_e

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    :goto_c3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    neg-int v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Lnbh;->c()Lnbh;

    move-result-object v0

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e94656b6137dd01f26085f984afe853em()Z

    move-result v6

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_42

    nop

    :goto_c8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c9
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_ca
    const v6, 0x7f07038c

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_cb
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setRotation(F)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_cc
    sub-float/2addr v5, v2

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

    :goto_cd
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_ce
    goto/16 :goto_14

    nop

    :goto_cf
    goto/32 :goto_13

    nop

    nop

    :goto_d0
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e94656b6137dd01f26085f984afe853em()Z

    move-result v1

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

    :goto_d1
    iput v6, p0, Lmxy;->e:F

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

    nop

    :goto_d2
    check-cast v3, Landroid/widget/TextView;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_d6
    if-ne v3, v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_da
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v4, v2, v3}, Lmxy;-><init>(IILmya;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v4, 0x7f140380

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    const v2, 0x7f08039f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    new-instance v1, Lmxy;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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
    const v4, 0x7f1403ad

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

    :goto_d
    sget-object v3, Lmya;->a:Lmya;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v4, v2, v3}, Lmxy;-><init>(IILmya;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

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

    :goto_14
    new-instance v1, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g()Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    const v2, 0x7f08039e

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v4, v2, v3}, Lmxy;-><init>(IILmya;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

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

    :goto_1b
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v4, v2, v3}, Lmxy;-><init>(IILmya;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Lmxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v4, 0x7f1400a5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    const v1, 0x7f0e0059

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x7

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    const v2, 0x7f080155

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v3, Lmya;->a:Lmya;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    const v4, 0x7f140091

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    sget-object v3, Lmya;->a:Lmya;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2f
    sget-object v3, Lmya;->a:Lmya;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_30
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_8

    nop

    nop

    :goto_31
    const v2, 0x7f08039d

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->o()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_14

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
    iput p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Lnbe;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

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

    :goto_11
    double-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i(Lnbe;Lnbh;)V

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
