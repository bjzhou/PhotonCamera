.class final Lixd;
.super Lixc;


# instance fields
.field private final a:Lixe;

.field private final n:Landroid/view/animation/Interpolator;

.field private final o:Lmqi;

.field private final p:Lmrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;FFLmqi;Lmrl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lixc;-><init>(Landroid/content/Context;F)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p1, p1

    new-instance p2, Lixe;

    invoke-direct {p2, p1}, Lixe;-><init>(F)V

    iput-object p2, p0, Lixd;->a:Lixe;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lixd;->n:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lixd;->o:Lmqi;

    iput-object p5, p0, Lixd;->p:Lmrl;

    return-void
.end method

.method private final p()Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lixd;->k:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    iget v0, p0, Lmk;->b:I

    invoke-virtual {p0, v0}, Lmk;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lixd;->o(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lixd;->k:Landroid/graphics/PointF;

    :cond_1
    iget-object v0, p0, Lixd;->k:Landroid/graphics/PointF;

    return-object v0
.end method


# virtual methods
.method protected final c(Landroid/view/View;Lmi;)V
    .locals 3

    invoke-direct {p0}, Lixd;->p()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lixd;->o:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmk;->j(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lixd;->n:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0, p1, v1, v2}, Lmi;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method protected final j(I)I
    .locals 6

    iget-object v0, p0, Lixd;->a:Lixe;

    iget v1, v0, Lixe;->a:F

    float-to-double v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, v0, Lixe;->b:F

    sub-float/2addr v4, v0

    const/high16 v0, -0x40800000    # -1.0f

    add-float/2addr v1, v0

    float-to-double v4, v4

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-float v0, v2

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected final m(Lmi;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lixd;->k:Landroid/graphics/PointF;

    invoke-direct {p0}, Lixd;->p()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lmk;->b:I

    iput v0, p1, Lmi;->a:I

    invoke-virtual {p0}, Lmk;->f()V

    return-void

    :cond_0
    iget-object v1, p0, Lixd;->p:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2710

    :cond_1
    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lixd;->l:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lixd;->m:I

    iget v0, p0, Lixd;->l:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lixd;->m:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmk;->b(I)I

    move-result v0

    iget v1, p0, Lixd;->l:I

    iget v2, p0, Lixd;->m:I

    iget-object v3, p0, Lixd;->a:Lixe;

    invoke-virtual {p1, v1, v2, v0, v3}, Lmi;->b(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
