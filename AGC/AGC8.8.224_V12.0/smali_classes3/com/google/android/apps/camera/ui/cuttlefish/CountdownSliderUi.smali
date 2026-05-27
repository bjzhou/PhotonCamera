.class public Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

.field public b:Liko;

.field c:Landroid/animation/ValueAnimator;

.field d:Landroid/animation/ValueAnimator;

.field e:Landroid/animation/AnimatorSet;

.field public f:Landroid/animation/AnimatorSet;

.field g:F

.field public h:F

.field public final i:Ljava/util/Set;

.field private j:Lhyn;

.field private k:Landroid/graphics/PointF;

.field private l:Lj$/util/Optional;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lhyn;->b:Lhyn;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Lhyn;

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Liko;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    return-void
.end method

.method private static final A(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->x(Landroid/view/View;ZJJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final t(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private final u(Landroid/view/View;DF)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p2

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final v()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final w()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Lhyn;

    invoke-static {v0}, Ljji;->m(Lhyn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final x(Landroid/view/View;ZJJ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lafx;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lafx;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private static final y(FFLandroid/view/View;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final z(Landroid/widget/TextView;IILj$/util/Optional;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p3}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b031f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b0320

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method final d()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->y(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->y(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->y(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    return v3

    :cond_2
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    float-to-double v0, v1

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    float-to-double v6, v2

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v8, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_3

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    return v3

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0203

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0222

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;
    .locals 1

    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    return-object v0
.end method

.method public final h(Z)V
    .locals 13

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:F

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    aput v3, v1, v4

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:F

    :goto_2
    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lafx;

    const/16 v5, 0x12

    invoke-direct {v2, p0, v5}, Lafx;-><init>(Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x10c001a

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eq v3, p1, :cond_5

    const-wide/16 v5, 0x0

    move-wide v9, v5

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x64

    move-wide v9, v5

    :goto_3
    if-eq v3, p1, :cond_6

    const-wide/16 v5, 0x53

    move-wide v11, v5

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0xa7

    move-wide v11, v5

    :goto_4
    move-object v7, p0

    move v8, p1

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->x(Landroid/view/View;ZJJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lhwr;

    invoke-direct {v0, p0, p1}, Lhwr;-><init>(Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;Z)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-object v5, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final i(Lhyn;Liko;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Lhyn;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->p()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, p2}, Ljvd;->I(Landroid/view/View;Liko;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j()V

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setTranslationX(F)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:F

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setTranslationX(F)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final l(ZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-nez v2, :cond_3

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->A(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    if-eq v5, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-static {v1, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->A(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_5
    if-eq v5, p1, :cond_6

    goto :goto_2

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public final m(D)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    return-void
.end method

.method public final n(D)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    return-void
.end method

.method public final o(DF)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->u(Landroid/view/View;DF)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g()Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j:Lhyn;

    iget-object p2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Liko;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i(Lhyn;Liko;)V

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m:Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->g:F

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->p()V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(D)V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    const v4, 0x7f0802fb

    invoke-static {v0, v2, v2, v3, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->z(Landroid/widget/TextView;IILj$/util/Optional;I)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    const v4, 0x7f0802fa

    invoke-static {v1, v2, v2, v3, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->z(Landroid/widget/TextView;IILj$/util/Optional;I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f1402ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v3, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->z(Landroid/widget/TextView;IILj$/util/Optional;I)V

    const v3, 0x7f1402aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    invoke-static {v1, v4, v2, v3, v5}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->z(Landroid/widget/TextView;IILj$/util/Optional;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->w()Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    const v5, 0x7f070644

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f(I)V

    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Liko;

    invoke-virtual {v4}, Liko;->c()Liko;

    move-result-object v4

    iget v4, v4, Liko;->e:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setRotation(F)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setRotation(F)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    sub-float v3, v2, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    iget v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    return-void

    :cond_1
    iget v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    sub-float v4, v2, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x7f07027d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v0, v4}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    iget v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    add-float/2addr v2, v4

    const v4, 0x7f07027c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->t(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    const v6, 0x7f070643

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRotation(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setRotation(F)V

    iget v3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    sub-float v3, v2, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    iget v3, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->r(Landroid/view/View;I)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->t(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s(ZJ)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->q()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/ImageView;

    move-result-object v7

    xor-int/lit8 v2, p1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->x(Landroid/view/View;ZJJ)Landroid/animation/ValueAnimator;

    move-result-object v8

    move-object v1, v0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->x(Landroid/view/View;ZJJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance p2, Lhwq;

    invoke-direct {p2, p1, v0, v7}, Lhwq;-><init>(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-object v2, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e:Landroid/animation/AnimatorSet;

    return-void
.end method
