.class public final Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;
.super Lix;


# instance fields
.field public final a:Ljava/util/Set;

.field public b:I

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:Lhwk;

.field private final h:Landroid/graphics/PointF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:Landroid/graphics/PointF;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070640

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    const p3, 0x7f07063f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    const v0, 0x7f07063e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->o:I

    const v0, 0x7f070641

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    const v1, 0x7f070643

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:I

    add-int/2addr p2, p2

    add-int/2addr p2, p3

    add-int/2addr v0, v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    return-void
.end method

.method private final j(D)D
    .locals 4

    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:D

    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private final k(Landroid/graphics/Canvas;FD)V
    .locals 6

    const-wide v0, 0x4053400000000000L    # 77.0

    mul-double p3, p3, v0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    double-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    int-to-float p3, p3

    iget-object p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    iget v4, p4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    add-float v3, p2, p3

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final l(Landroid/graphics/Canvas;FD)V
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p3, p3, v0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    double-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 4

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:I

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(D)D
    .locals 11

    const/4 v0, 0x0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v3, p1

    :goto_0
    iget v5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:I

    if-ge v0, v5, :cond_1

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    cmpg-double v9, v7, v1

    if-gez v9, :cond_0

    move-wide v3, v5

    move-wide v1, v7

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e(D)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    return-void
.end method

.method public final f(I)V
    .locals 4

    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:I

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final g(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setMax(I)V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:D

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    add-int/2addr v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:I

    return-void
.end method

.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    double-to-float v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    iget-wide v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l(Landroid/graphics/Canvas;FD)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v2, v2

    iget-wide v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    add-float/2addr v1, v2

    invoke-direct {p0, p1, v1, v6, v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k(Landroid/graphics/Canvas;FD)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l(Landroid/graphics/Canvas;FD)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k(Landroid/graphics/Canvas;FD)V

    :goto_0
    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:I

    add-int/lit8 v2, v2, -0x2

    if-ge v3, v2, :cond_2

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l(Landroid/graphics/Canvas;FD)V

    iget v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:I

    add-int/lit8 v6, v6, -0x3

    if-ge v3, v6, :cond_1

    iget v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    iget v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k(Landroid/graphics/Canvas;FD)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    if-eqz v6, :cond_3

    iget-wide v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k(Landroid/graphics/Canvas;FD)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l(Landroid/graphics/Canvas;FD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-direct {p0, p1, v0, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k(Landroid/graphics/Canvas;FD)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:I

    int-to-float v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l(Landroid/graphics/Canvas;FD)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected final onFinishInflate()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:D

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i()V

    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    invoke-static {p0}, Linb;->i(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->o:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    invoke-super {p0}, Lix;->onFinishInflate()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lix;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:I

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    div-float/2addr p2, p5

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v1

    int-to-double v3, v1

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:I

    int-to-double v5, v1

    iget-wide v7, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v5

    sub-double/2addr v7, v0

    invoke-direct {p0, v7, v8}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:Lhwk;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v0

    iget-object v4, v3, Lhwk;->d:Lhwp;

    iget-object v4, v4, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(D)V

    iget-object v0, v3, Lhwk;->d:Lhwp;

    iget-object v0, v0, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h()Z

    move-result v0

    iget-object v1, v3, Lhwk;->d:Lhwp;

    iget-object v1, v1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iget-wide v4, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    iget-wide v6, v3, Lhwk;->c:D

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    cmpg-double v1, v10, v8

    if-gez v1, :cond_1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpl-double v1, v6, v8

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v3, Lhwk;->b:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, v3, Lhwk;->d:Lhwp;

    invoke-virtual {v1}, Lhwp;->h()V

    :cond_2
    iput-wide v4, v3, Lhwk;->c:D

    iput-boolean v0, v3, Lhwk;->b:Z

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return v2

    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:Lhwk;

    if-eqz p1, :cond_6

    iget-object v3, p1, Lhwk;->d:Lhwp;

    iget-object v3, v3, Lhwp;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v4, v4, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v4, Lckk;

    invoke-virtual {v4}, Lckk;->s()V

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lhwk;->d:Lhwp;

    iget-object v4, v3, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object v3, v3, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(D)V

    iget-wide v3, p1, Lhwk;->a:D

    cmpl-double v5, v3, v0

    if-eqz v5, :cond_5

    iget-object v3, p1, Lhwk;->d:Lhwp;

    double-to-int v0, v0

    invoke-static {v0}, Lhwp;->u(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lhwp;->s(I)V

    :cond_5
    iget-boolean v0, p1, Lhwk;->b:Z

    if-nez v0, :cond_6

    iget-object p1, p1, Lhwk;->d:Lhwp;

    invoke-virtual {p1}, Lhwp;->h()V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    return v2

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:Lhwk;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lhwk;->d:Lhwp;

    iget-object v1, v1, Lhwp;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v3, Lckk;

    invoke-virtual {v3}, Lckk;->c()V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lhwk;->d:Lhwp;

    iget-object v1, v1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v3

    iput-wide v3, v0, Lhwk;->a:D

    iget-object v1, v0, Lhwk;->d:Lhwp;

    iget-object v1, v1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h()Z

    move-result v1

    iput-boolean v1, v0, Lhwk;->b:Z

    iget-object v1, v0, Lhwk;->d:Lhwp;

    iget-object v1, v1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iget-wide v3, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    iput-wide v3, v0, Lhwk;->c:D

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
