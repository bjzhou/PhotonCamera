.class public Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;
.super Landroid/view/View;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Landroid/animation/ValueAnimator;

.field public final c:Ldgy;

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

.field public p:Liko;

.field public q:I

.field private final r:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->r:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->n:F

    sget-object p2, Liko;->a:Liko;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:Liko;

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:I

    move-object v0, p1

    check-cast v0, Lcdd;

    invoke-interface {v0}, Lcdd;->a()Ldhi;

    move-result-object v0

    sget-object v1, Ldgz;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->h:I

    invoke-static {v0, v1}, Ldgz;->a(Ldhi;I)Ldgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->c:Ldgy;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->j:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p2, 0x7f040181

    invoke-static {p0, p2}, Lkwp;->l(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    iget p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->n:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "FrontLensIndicator:applyOrientation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:Liko;

    invoke-static {p0, v0}, Ljvd;->H(Landroid/view/View;Liko;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->k:F

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->l:F

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    iget v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    iget v4, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->r:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    sub-float v5, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->r:Landroid/graphics/RectF;

    const/high16 v8, -0x3d3a0000    # -99.0f

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

    int-to-float v9, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->a()V

    :cond_0
    return-void
.end method
