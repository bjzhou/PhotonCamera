.class public Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/view/animation/Interpolator;

.field public final c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public d:Landroid/animation/AnimatorSet;

.field public e:I

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/view/animation/Interpolator;

.field private final h:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

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

    nop

    :goto_2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->f:Landroid/graphics/RectF;

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

    :goto_6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->h:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    const p2, 0x10c000d

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const/high16 p2, -0x1000000

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b:Landroid/view/animation/Interpolator;

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

    :goto_e
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_f
    const p2, 0x10c000f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    new-instance p1, Lngx;

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

    :goto_11
    invoke-direct {p1, p0, p2}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    new-instance p1, Landroid/graphics/RectF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->g:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_1a
    return-void

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

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

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lnjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    new-instance v1, Landroid/animation/AnimatorSet;

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

    :goto_6
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, p1}, Lnjw;-><init>(Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

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

    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->h:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    const v0, 0x10

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

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

    :goto_18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    const-wide/16 v1, 0x85

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-wide/16 v1, 0xa7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->g:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_2c
    goto/32 :goto_10

    nop

    nop

    :goto_2d
    new-array v0, v0, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final layout(IIII)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->f:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_3

    nop

    nop
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->f:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->f:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

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

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    int-to-float p4, p5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float p3, p4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->f:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p2, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p1, p2

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
.end method
