.class public Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;
.super Landroid/view/View;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Landroid/animation/ValueAnimator;

.field public final c:Lhmc;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/view/animation/Interpolator;

.field public final g:Landroid/view/animation/Interpolator;

.field public final h:I

.field public i:I

.field public final j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field private final q:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.apps.camera.ui.views.FrontLensIndicatorOverlay"

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

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

    :goto_3
    iput v1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->h:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_6
    new-instance p2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lhmd;->a:Lhmo;

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

    nop

    :goto_8
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

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

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    check-cast v0, Lfwm;

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

    nop

    :goto_d
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

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

    :goto_f
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->g:Landroid/view/animation/Interpolator;

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

    :goto_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->f:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:Landroid/graphics/RectF;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x7f0706e6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v1}, Lhmd;->a(Lhoh;I)Lhmc;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Lfwm;->b()Lhoh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    invoke-static {p0}, Lnzk;->s(Landroid/view/View;)I

    move-result p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    iget p0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->j:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0xf

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

    :goto_31
    float-to-int p0, p0

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

    :goto_32
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_33
    const/high16 p1, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_35
    const v1, 0x10c000d

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

    nop

    :goto_36
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_37
    const/16 p2, 0x33

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->c:Lhmc;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3f
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_41
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_e

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iget-object v11, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:Landroid/graphics/RectF;

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

    :goto_6
    if-eq v3, v4, :cond_0

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

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v0, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

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

    :goto_c
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x6

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

    :goto_e
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    move-object v6, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    int-to-float v9, v0

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

    :goto_15
    if-ne v3, v4, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

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

    :goto_18
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    :goto_19
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    sub-float v4, v0, v2

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

    :goto_20
    iget v2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sub-float v5, v1, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    const/high16 v8, -0x3d3a0000    # -99.0f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    iget v4, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method
