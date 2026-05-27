.class public Landroid/support/wearable/view/drawer/PageIndicatorView;
.super Landroid/view/View;

# interfaces
.implements Laua;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:Landroid/graphics/Paint;

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/graphics/Paint;

.field private final u:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lny;->f:[I

    const v1, 0x7f1501e4

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->a:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    const/16 v3, 0x8

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:Landroid/graphics/Paint;

    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    iput p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    iput v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    :cond_0
    iget-boolean p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    if-eqz p2, :cond_1

    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->setAlpha(F)V

    :goto_0
    iget v6, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    iget v7, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    iget v8, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

    iget v9, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    invoke-static/range {v4 .. v9}, Landroid/support/wearable/view/drawer/PageIndicatorView;->d(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    iget v7, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    iget v8, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    iget v9, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    iget v10, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    move-object v5, p1

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Landroid/support/wearable/view/drawer/PageIndicatorView;->d(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    return-void
.end method

.method private final c(J)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static final d(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 8

    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x0

    filled-new-array {p5, p5, v0}, [I

    move-result-object v4

    const/4 p5, 0x3

    new-array v5, p5, [F

    const/4 p5, 0x0

    aput p5, v5, v0

    add-float v3, p2, p3

    const/4 p3, 0x1

    div-float/2addr p2, v3

    aput p2, v5, p3

    const/4 p2, 0x2

    const/high16 p3, 0x3f800000    # 1.0f

    aput p3, v5, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    iget-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->a:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->c(J)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lpc;

    invoke-direct {v0, p0}, Lpc;-><init>(Landroid/support/wearable/view/drawer/PageIndicatorView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final b(IF)V
    .locals 3

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->c(J)V

    :cond_1
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v3

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v3

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    mul-int v0, v0, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v2

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingTop()I

    move-result v2

    float-to-int v1, v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v1, p2, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method
