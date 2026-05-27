.class public Lcom/google/android/apps/camera/zoomui/view/ZoomUi;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lhyi;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lnak;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Landroid/animation/ValueAnimator;

.field public e:Liko;

.field public f:Z

.field public g:F

.field public h:Landroid/animation/ObjectAnimator;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/AnimatorSet;

.field public k:Lgzm;

.field public l:I

.field private final m:Z

.field private final n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private o:Lhyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    const-string v0, "com/google/android/apps/camera/zoomui/view/ZoomUi"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    new-instance p2, Livv;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Livv;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object v1, Liko;->a:Liko;

    iput-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lakf;

    invoke-direct {p2}, Lakf;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    instance-of p2, p1, Lcdd;

    if-eqz p2, :cond_0

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p1

    invoke-static {p1}, Lkba;->s(Ldhi;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private final H()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v0

    new-instance v1, Licl;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Licl;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    new-instance v1, Licl;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Licl;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 2

    const-string v0, "alpha"

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [F

    fill-array-data p1, :array_1

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lakf;

    invoke-direct {p1}, Lakf;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final A(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v3, Litx;

    invoke-direct {v3, p0}, Litx;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final B(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final C(ZLandroid/animation/Animator$AnimatorListener;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    const/4 p1, 0x1

    return p1
.end method

.method public final D()Z
    .locals 4

    sget-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final E(I)I
    .locals 1

    sget-object v0, Litn;->a:Litn;

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708f8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(IZ)Landroid/animation/AnimatorSet;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0708e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget-object v5, Litn;->a:Litn;

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0708f6

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0708ef

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0708f8

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    div-int/lit8 v3, v3, 0x2

    float-to-int v2, v2

    filled-new-array {p1, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v2, Liid;

    const/16 v5, 0x11

    invoke-direct {v2, p0, v5}, Liid;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Liid;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Liid;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    filled-new-array {v4, v3}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Liid;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Liid;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lakf;

    invoke-direct {v3}, Lakf;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    return-object v2

    :cond_1
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(ZI)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/Space;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Space;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/Space;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/Space;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/Space;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Space;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l()Landroid/widget/Space;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Space;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->s()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->p()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    return-void
.end method

.method public final a(I)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x2

    goto :goto_2

    :pswitch_1
    if-ne v3, v5, :cond_0

    add-int v4, v0, v1

    goto :goto_2

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    goto :goto_2

    :pswitch_2
    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v0, v1

    neg-int p1, v0

    div-int/lit8 v4, p1, 0x2

    goto :goto_2

    :pswitch_3
    if-ne v3, v6, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v5, :cond_4

    add-int/2addr v0, v1

    neg-int v4, v0

    goto :goto_2

    :cond_4
    add-int/2addr v0, v1

    neg-int p1, v0

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 v4, p1, 0x2

    :goto_2
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0b0484

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final d()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0b0489

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageButton;
    .locals 1

    const v0, 0x7f0b047e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final f()Landroid/widget/ImageButton;
    .locals 1

    const v0, 0x7f0b047f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final g()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b031e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final h()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b03ae

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final i()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b03af

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final j()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b0321

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final k()Landroid/widget/SeekBar;
    .locals 1

    const v0, 0x7f0b0481

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method final l()Landroid/widget/Space;
    .locals 1

    const v0, 0x7f0b03a6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    return-object v0
.end method

.method final m()Landroid/widget/Space;
    .locals 1

    const v0, 0x7f0b03a4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    return-object v0
.end method

.method public final n()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final o()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final onFinishInflate()V
    .locals 10

    const-string v0, "zoomUi:inflate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0147

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const v4, 0x186a0

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_0

    const v5, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    iput v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    iget-object v6, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v7, 0x7f0708b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v6, v7

    iput-object v0, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    iget-object v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v8, 0x7f0708ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v9, 0x7f0708e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setElevation(F)V

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setGravity(I)V

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextAlignment(I)V

    invoke-virtual {v4, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextSize(F)V

    new-instance v6, Lito;

    invoke-direct {v6, v4}, Lito;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;)V

    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09000b

    invoke-static {v8, v9, v6}, Lacn;->a(Landroid/content/Context;ILacl;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

    sub-int/2addr v6, v8

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v7

    iput v6, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    iput v5, v4, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->g:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    neg-int v7, v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_2
    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    neg-int v7, v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h()V

    new-array v0, v5, [F

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v6

    const-string v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07089e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o:Lhyn;

    iget-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->onLayoutUpdated(Lhyn;Liko;)V

    :cond_0
    return-void
.end method

.method public final onLayoutUpdated(Lhyn;Liko;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    sget-object p2, Liko;->a:Liko;

    invoke-virtual {p1, p2}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->H()V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o:Lhyn;

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->H()V

    iget-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setTranslationY(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_2
    return-void
.end method

.method public final synthetic onLayoutUpdated(Liko;)V
    .locals 0

    return-void
.end method

.method public final p()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0483

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final q()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final r()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0486

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final s()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0487

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;
    .locals 1

    const v0, 0x7f0b047a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    return-object v0
.end method

.method public final u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;
    .locals 1

    const v0, 0x7f0b0480

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    return-object v0
.end method

.method public final v(Landroid/widget/TextView;IFLandroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final w(Z)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0708fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    mul-float v4, v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0708c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0708c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v2, v6, v2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v5, v5

    iget v8, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    mul-float v5, v5, v8

    float-to-int v5, v5

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x186a0

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    div-int/lit8 v2, v2, 0x2

    add-int v5, v3, v2

    sub-int/2addr v2, v3

    float-to-int v3, v4

    invoke-virtual {v1, v3, v5, v3, v2}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014b

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f040178

    invoke-static {v1, p1}, Lkwp;->l(Landroid/view/View;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v2, 0x7f0708e3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    iput v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v3, 0x7f080148

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c:I

    invoke-direct {p1, v2, v3}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v3, 0x7f060a88

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setTextColor(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->invalidate()V

    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    sget v1, Lcga;->f:I

    sget-object v1, Lnbk;->a:Lnbc;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    sget v2, Lcga;->f:I

    sget-object v2, Lnbk;->a:Lnbc;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcga;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcga;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->o()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
