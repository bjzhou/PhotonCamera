.class Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:F

.field private final e:Landroid/graphics/RectF;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    div-float v3, v0, v3

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v6, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

    mul-float v4, v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->e:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->d:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    div-float/2addr v1, v3

    const/4 v2, 0x0

    move v9, v1

    const/4 v8, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->d:F

    int-to-float v3, v8

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->b:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v9

    move v5, v9

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getFillAmount()F
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setFillAmount(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->f:F

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->invalidateSelf()V

    return-void
.end method
