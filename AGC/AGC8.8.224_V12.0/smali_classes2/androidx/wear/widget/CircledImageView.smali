.class public Landroidx/wear/widget/CircledImageView;
.super Landroid/view/View;


# instance fields
.field a:I

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lavc;

.field private final e:Lavh;

.field private final f:Landroid/graphics/drawable/Drawable$Callback;

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Landroid/graphics/Paint$Cap;

.field private p:F

.field private q:F

.field private r:Z

.field private s:F

.field private t:F

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    new-instance p3, Latd;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Latd;-><init>(Landroidx/wear/widget/CircledImageView;I)V

    iput-object p3, p0, Landroidx/wear/widget/CircledImageView;->f:Landroid/graphics/drawable/Drawable$Callback;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/wear/widget/CircledImageView;->q:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    iput v1, p0, Landroidx/wear/widget/CircledImageView;->s:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/wear/widget/CircledImageView;->t:F

    sget-object v3, Lavb;->a:Lavb;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lauv;->d:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v7, Lauv;->d:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, v3

    invoke-static/range {v5 .. v11}, Lafn;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p2, 0x4

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_1

    const/high16 p2, 0x1060000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->i:F

    const/4 p2, 0x7

    invoke-virtual {v3, p2, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->k:F

    const/high16 p1, -0x1000000

    invoke-virtual {v3, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->n:I

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->o:Landroid/graphics/Paint$Cap;

    const/4 p1, 0x3

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->p:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iget v0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    :cond_2
    const/16 p1, 0x19

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    :cond_3
    const/16 p1, 0x17

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->s:F

    const/16 p1, 0x18

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->t:F

    const/16 p1, 0x1a

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->u:Ljava/lang/Integer;

    :cond_4
    const/16 p1, 0x13

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->v:Ljava/lang/Integer;

    :cond_5
    const/4 p1, 0x6

    invoke-virtual {v3, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->j:F

    const/16 v0, 0x8

    invoke-virtual {v3, v0, p2, p2, p1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CircledImageView;->l:F

    const/16 p1, 0x9

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Lavc;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->p:F

    invoke-direct {p2, p1, v0, v1}, Lavc;-><init>(FFF)V

    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->d:Lavc;

    new-instance p1, Lavh;

    invoke-direct {p1}, Lavh;-><init>()V

    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->e:Lavh;

    invoke-virtual {p1, p3}, Lavh;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v2}, Landroidx/wear/widget/CircledImageView;->setWillNotDraw(Z)V

    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->d()V

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/wear/widget/CircledImageView;->a:I

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget v0, p0, Landroidx/wear/widget/CircledImageView;->i:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    iget v2, p0, Landroidx/wear/widget/CircledImageView;->j:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->j:F

    mul-float v0, v0, v1

    :cond_0
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->m:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final b()F
    .locals 3

    iget v0, p0, Landroidx/wear/widget/CircledImageView;->k:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    iget v2, p0, Landroidx/wear/widget/CircledImageView;->l:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->l:F

    mul-float v0, v0, v1

    :cond_0
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->m:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->e:Lavh;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lavh;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->d()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->b()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    iget v3, p0, Landroidx/wear/widget/CircledImageView;->p:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v2

    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v2

    iget-object v6, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    add-float/2addr v6, v2

    iget-object v7, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    add-float/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->n:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v5

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->p:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->o:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v6, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    iget v3, p0, Landroidx/wear/widget/CircledImageView;->q:F

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v8, v3, v4

    const/4 v9, 0x0

    iget-object v10, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v3

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->s:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v5

    if-gtz v7, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    int-to-float v0, v0

    cmpl-float v7, v0, v5

    if-eqz v7, :cond_1

    int-to-float v7, v2

    mul-float v7, v7, v4

    div-float/2addr v7, v0

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, v1

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    int-to-float v5, v3

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v0, v0, v4

    mul-float v4, v4, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Landroidx/wear/widget/CircledImageView;->t:F

    int-to-float v5, v0

    mul-float v4, v4, v5

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v0

    iget v1, p0, Landroidx/wear/widget/CircledImageView;->p:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->d:Lavc;

    iget v2, v1, Lavc;->a:F

    iget v1, v1, Lavc;->b:F

    const/4 v1, 0x0

    mul-float v2, v2, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-float/2addr v0, v2

    const/high16 v2, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v1, v4, :cond_1

    add-float v5, v0, v0

    if-ne v1, v2, :cond_0

    int-to-float p1, p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    float-to-int p1, v5

    :cond_1
    :goto_0
    if-eq v3, v4, :cond_3

    add-float/2addr v0, v0

    if-ne v3, v2, :cond_2

    int-to-float p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_1

    :cond_2
    float-to-int p2, v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move p2, p1

    goto :goto_2

    :pswitch_1
    move p1, p2

    :cond_4
    :goto_2
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/wear/widget/CircledImageView;->d:Lavc;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p3, p4, v0, p1, p2}, Lavc;->a(IIII)V

    return-void
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->c()V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->c()V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 3

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v0

    if-eq p4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->d:Lavc;

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Lavc;->a(IIII)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->d:Lavc;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->b()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result p1

    :goto_0
    iput p1, v0, Lavc;->c:F

    invoke-virtual {v0}, Lavc;->b()V

    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    return-void

    :cond_1
    return-void
.end method
