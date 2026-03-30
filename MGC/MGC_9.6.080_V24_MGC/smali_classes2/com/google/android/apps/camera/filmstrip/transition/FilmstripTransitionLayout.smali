.class public Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final a:Landroid/animation/ValueAnimator;

.field public final b:Landroid/animation/ValueAnimator;

.field public c:Z

.field public d:Z

.field public e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

.field public f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public g:Z

.field public h:Lhzt;

.field public i:Loyd;

.field public j:Lnpo;

.field public k:Lhzo;

.field public l:Lhoh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    nop

    goto/32 :goto_1d

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

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    const-wide/16 v1, 0xfa

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    new-array v0, p2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->d:Z

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

    :goto_7
    const/16 v0, 0xd

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-direct {v3, p0}, Lhzr;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x1

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
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v3, Ldwi;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

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

    :goto_14
    const/4 p2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, p0}, Lhzs;-><init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    new-array p2, p2, [F

    nop

    nop

    nop

    nop

    fill-array-data p2, :array_1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_19
    const/4 p2, 0x0

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
    const/4 p2, 0x4

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

    :goto_1b
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v3, Lhzr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x18

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

    :goto_22
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_19

    nop

    nop

    :goto_23
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lhzo;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p1, Lhzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p1, p0, v0}, Ldwi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, p0, v4}, Ldwi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2b

    nop

    nop

    :goto_29
    new-instance p1, Ldwi;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v4, 0xc

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    const p2, 0x10c000d

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b(F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lhzu;
    .locals 14

    goto/32 :goto_47

    nop

    nop

    :goto_0
    sub-float/2addr p0, v1

    nop

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

    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2
    int-to-float v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

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

    :goto_7
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_3f

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnzk;->U(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v4, v9, v11, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lnnr;->j(Landroid/view/View;)Z

    move-result v1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v8, v12

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_11
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    int-to-float v3, v3

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

    :goto_13
    new-instance v8, Landroid/graphics/RectF;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_15
    aget v1, v1, v7

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v4, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

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

    :goto_1b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4f

    nop

    :goto_1c
    iget v3, v8, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    new-instance v3, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget p0, v8, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lhzu;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    add-float/2addr v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v3, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget v8, v3, v7

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_29
    const v1, 0x14

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

    :goto_2a
    add-int/2addr v1, v9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v4, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    iget v3, v1, Landroid/graphics/Point;->x:I

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

    :goto_2e
    mul-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2f
    invoke-virtual {v8, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :goto_30
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_32
    if-eq v9, v10, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    new-instance v2, Landroid/util/SizeF;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_35
    iget v1, v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

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

    :goto_36
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_38
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    aget v3, v3, v10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3a
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3b
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v8, v9, v9, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/2addr v3, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3e
    move v1, v13

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v3, v0, Landroid/graphics/Point;->x:I

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

    :goto_41
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_42
    return-object v0

    nop

    :goto_43
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_45
    invoke-static {v1}, Lnnr;->m(Landroid/view/View;)[I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v11, v11

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_47
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_48
    iget v7, v0, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

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

    nop

    :goto_4a
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4b
    invoke-direct/range {v1 .. v6}, Lhzu;-><init>(Landroid/util/SizeF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a()Landroid/graphics/Bitmap;

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

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_43

    nop

    nop

    :goto_50
    goto/32 :goto_4a

    nop

    nop

    :goto_51
    aget v1, v1, v10

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_52
    int-to-float v7, v7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    aget v11, v3, v10

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sub-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_57
    invoke-static {v1}, Lnnr;->m(Landroid/view/View;)[I

    move-result-object v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_58
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_59
    new-instance v5, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5a
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5c
    iget v1, v3, Landroid/graphics/Point;->x:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->d()Z

    move-result p0

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

    :goto_5e
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v13, v7

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_60
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_63
    add-float/2addr v7, v1

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

    :goto_64
    invoke-static {v1}, Lnnr;->f(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

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

    :goto_65
    const/4 v9, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_66
    iget v6, v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_67
    iput p0, v8, Landroid/graphics/RectF;->bottom:F

    nop

    :goto_68
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v5, v3, v4, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    add-int/2addr v1, v9

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v9, v8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6e
    move v7, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6f
    if-nez v1, :cond_3

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_70
    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_71
    iget v3, v3, Landroid/graphics/Point;->y:I

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
.end method

.method public final b(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    float-to-int p1, p1

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setBackgroundColor(I)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final c(F)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Lhzt;->b(F)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

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

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lhzt;->d(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Lhzt;->a(F)F

    move-result v0

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

    :goto_15
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    goto/32 :goto_1b

    nop

    nop

    :goto_17
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

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b(F)V

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Lhzt;->c(F)Landroid/graphics/PointF;

    move-result-object v0

    nop

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

    :goto_1b
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lmyr;->b:I

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
    const v1, 0x3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Lnpo;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v0, v3, v5

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

    nop

    :goto_7
    new-array v3, v3, [Ljava/lang/Object;

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

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lmyr;

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
    goto/32 :goto_11

    nop

    :goto_b
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lhnh;->b:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p0, v0, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_16
    const/4 v5, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->i:Loyd;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v5, v2, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v5, 0x230

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    aput-object v2, v3, v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->i:Loyd;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v5, 0x231

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

    :goto_20
    if-nez v2, :cond_5

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_22
    iget-object v2, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Lnpo;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    return p0

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    :goto_27
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

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

    nop

    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->l:Lhoh;

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

    :goto_2c
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final onFinishInflate()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b04da

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

    :goto_1
    return-void

    nop

    :goto_2
    check-cast v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

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
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
