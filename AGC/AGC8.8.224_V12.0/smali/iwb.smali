.class final Liwb;
.super Landroid/widget/EdgeEffect;


# instance fields
.field a:F

.field private final b:Landroid/view/animation/Interpolator;

.field private c:F

.field private final d:Landroid/graphics/Rect;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:J

.field private l:F

.field private final m:Liwa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Liwa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Liwb;->b:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Liwb;->d:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Liwb;->j:I

    iput-object p2, p0, Liwb;->m:Liwa;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)Z
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Liwb;->k:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Liwb;->l:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Liwb;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Liwb;->h:F

    iget v4, p0, Liwb;->i:F

    sub-float/2addr v4, v3

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Liwb;->g:F

    iget v3, p0, Liwb;->e:F

    iget v4, p0, Liwb;->f:F

    sub-float/2addr v4, v3

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Liwb;->a:F

    iget-object v2, p0, Liwb;->m:Liwa;

    invoke-interface {v2, v3}, Liwa;->aA(F)V

    iget-wide v2, p0, Liwb;->k:J

    sub-long v2, v0, v2

    iget v4, p0, Liwb;->l:F

    const v5, 0x3f7fbe77    # 0.999f

    mul-float v4, v4, v5

    long-to-float v2, v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Liwb;->j:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v3, p0, Liwb;->j:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Liwb;->j:I

    goto :goto_1

    :pswitch_2
    iput v3, p0, Liwb;->j:I

    iput-wide v0, p0, Liwb;->k:J

    const/high16 v0, 0x44160000    # 600.0f

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    iput v2, p0, Liwb;->j:I

    iput-wide v0, p0, Liwb;->k:J

    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    iput v0, p0, Liwb;->l:F

    iget v0, p0, Liwb;->g:F

    iput v0, p0, Liwb;->h:F

    iget v0, p0, Liwb;->a:F

    iput v0, p0, Liwb;->e:F

    iput v4, p0, Liwb;->i:F

    iput v4, p0, Liwb;->f:F

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFinished()Z
    .locals 1

    iget v0, p0, Liwb;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAbsorb(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v0, 0x2

    iput v0, p0, Liwb;->j:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x64

    const/16 v1, 0x2710

    invoke-static {p1, v0, v1}, Lkba;->n(III)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liwb;->k:J

    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v1, v1, v0

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v1, v2

    iput v1, p0, Liwb;->l:F

    const v1, 0x3db851ec    # 0.09f

    iput v1, p0, Liwb;->h:F

    iget v1, p0, Liwb;->a:F

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Liwb;->e:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    mul-float v0, v0, v1

    const v1, 0x391d4952    # 1.5E-4f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Liwb;->f:F

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    const v0, 0x3727c5ac    # 1.0E-5f

    mul-float p1, p1, v0

    iget v0, p0, Liwb;->h:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Liwb;->i:F

    return-void
.end method

.method public final onPull(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Liwb;->onPull(FF)V

    return-void
.end method

.method public final onPull(FF)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget p2, p0, Liwb;->j:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    iget-wide v5, p0, Liwb;->k:J

    sub-long v5, v0, v5

    iget p2, p0, Liwb;->l:F

    long-to-float v2, v5

    cmpg-float p2, v2, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq p2, v3, :cond_2

    :goto_0
    iget p2, p0, Liwb;->a:F

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Liwb;->a:F

    :cond_2
    iput v3, p0, Liwb;->j:I

    iput-wide v0, p0, Liwb;->k:J

    const/high16 p2, 0x43270000    # 167.0f

    iput p2, p0, Liwb;->l:F

    iget p2, p0, Liwb;->c:F

    add-float/2addr p2, p1

    iput p2, p0, Liwb;->c:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Liwb;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    const p1, 0x3e19999a    # 0.15f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Liwb;->g:F

    iput p1, p0, Liwb;->h:F

    iget p1, p0, Liwb;->c:F

    cmpl-float p2, p1, v4

    if-nez p2, :cond_3

    iput v4, p0, Liwb;->a:F

    iput v4, p0, Liwb;->e:F

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Liwb;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Liwb;->g:F

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    const-wide p1, 0x3fe6666666666666L    # 0.7

    sub-double v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double/2addr v0, p1

    double-to-float v4, v0

    iput v4, p0, Liwb;->a:F

    iput v4, p0, Liwb;->e:F

    :goto_1
    iget-object p1, p0, Liwb;->m:Liwa;

    invoke-interface {p1, v4}, Liwa;->aA(F)V

    iget p1, p0, Liwb;->g:F

    iput p1, p0, Liwb;->i:F

    iget p1, p0, Liwb;->a:F

    iput p1, p0, Liwb;->f:F

    return-void
.end method

.method public final onRelease()V
    .locals 2

    invoke-super {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget v0, p0, Liwb;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Liwb;->c:F

    const/4 v1, 0x3

    iput v1, p0, Liwb;->j:I

    iget v1, p0, Liwb;->g:F

    iput v1, p0, Liwb;->h:F

    iget v1, p0, Liwb;->a:F

    iput v1, p0, Liwb;->e:F

    iput v0, p0, Liwb;->i:F

    iput v0, p0, Liwb;->f:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liwb;->k:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Liwb;->l:F

    return-void
.end method

.method public final setSize(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Liwb;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Liwb;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
