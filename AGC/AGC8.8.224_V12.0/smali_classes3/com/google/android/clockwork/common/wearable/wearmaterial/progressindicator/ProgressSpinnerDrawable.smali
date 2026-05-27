.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final DEFAULT_PROGRESS_COLOR:I = -0x1

.field private static final DEFAULT_TRACK_COLOR:I = 0x1affffff

.field private static final DEFAULT_TRACK_WIDTH_DP:F = 3.0f

.field private static final DEGREES_PER_RADIAN:F = 57.295776f

.field private static final LEVEL_RANGE:I = 0x2710

.field private static final MAX_DEGREES:F = 360.0f

.field private static final START_OFFSET:F = 270.0f

.field private static final TINY_SWEEP_ANGLE_SIZE:F = 0.01f

.field private static final TRACK_ALPHA:I = 0x1a


# instance fields
.field private capRadiusInDegrees:F

.field private final destSquare:Landroid/graphics/Rect;

.field private direction:Lixo;

.field private gravity:I

.field private final paintProgress:Landroid/graphics/Paint;

.field private final paintTrack:Landroid/graphics/Paint;

.field private progressColor:Landroid/content/res/ColorStateList;

.field private rotation:F

.field private showEmptySweepAngle:Z

.field private startAngle:F

.field private sweepAngle:F

.field private final themeState:Lixp;

.field private trackColor:Landroid/content/res/ColorStateList;

.field private trackEndAngle:F

.field private trackStartAngle:F

.field private trackWidth:F

.field private final typedArrayHelper:Lixr;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lixp;

    invoke-direct {v0, p0}, Lixp;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;)V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lixp;

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    sget-object v0, Lixo;->a:Lixo;

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lixo;

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    new-instance v2, Lixr;

    sget-object v3, Lixq;->a:[I

    invoke-direct {v2, v3}, Lixr;-><init>([I)V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lixr;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private applyGravity(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    invoke-static {v1, v0, v0, p1, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;FF)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p1, v2, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    const/high16 v4, 0x43870000    # 270.0f

    add-float v8, v3, v4

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v9

    iget-object v11, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    sub-float/2addr v2, v1

    const/4 v10, 0x0

    move-object v3, p1

    move v4, v1

    move v5, v1

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v11, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    move v8, p2

    move v9, p3

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getArcRadius()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    sub-float/2addr v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private obtainAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->obtainThemedAttributes(Landroid/content/res/TypedArray;)V

    sget-object v0, Lixq;->a:[I

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackWidth(F)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackStartAngle(F)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setTrackEndAngle(F)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lixo;

    sget-object v1, Lixo;->a:Lixo;

    iget v0, v0, Lixo;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lixo;->b:Lixo;

    goto :goto_0

    :cond_0
    sget-object v0, Lixo;->a:Lixo;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setDirection(Lixo;)V

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle(Z)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setStartAngle(F)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setSweepAngle(F)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setLevel(I)Z

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setRotation(F)V

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->setGravity(I)V

    return-void
.end method

.method private obtainThemedAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    sget-object v0, Lixq;->a:[I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lixr;->a(Landroid/content/res/TypedArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lixp;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lixp;->a:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lixr;->a(Landroid/content/res/TypedArray;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lixp;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v1, Lixp;->b:Landroid/content/res/ColorStateList;

    :cond_1
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->applyGravity(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateCapRadius()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateProgressPaint()V

    return-void
.end method

.method private updateCapRadius()V
    .locals 2

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getArcRadius()F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x42652ee0

    mul-float v0, v0, v1

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->capRadiusInDegrees:F

    return-void
.end method

.method private updateColors([I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1a

    invoke-virtual {v0, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_2
    const v4, 0x1affffff

    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    return v3

    :cond_6
    :goto_2
    return v2
.end method

.method private updateProgressPaint()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getArcRadius()F

    move-result v2

    mul-float v0, v0, v2

    const v2, 0x42652ee0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateTrackCap()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lixr;

    iget-object v0, v0, Lixr;->b:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->obtainThemedAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lixp;

    invoke-virtual {p1}, Lixp;->a()V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lixr;

    iget-boolean v0, v0, Lixr;->c:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->capRadiusInDegrees:F

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    add-float/2addr v0, v1

    const v1, -0x445c28f6    # -0.005f

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    cmpg-float v3, v0, v1

    if-gtz v3, :cond_3

    goto :goto_0

    :cond_3
    sub-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    div-float v1, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lixo;

    sget-object v1, Lixo;->a:Lixo;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    add-float/2addr v0, v1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    :goto_1
    const/high16 v1, 0x43870000    # 270.0f

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->draw(Landroid/graphics/Canvas;FF)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSweepAngle()F
    .locals 2

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->destSquare:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lixr;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p1, p2, Lixr;->a:[I

    invoke-virtual {p4, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p4, p2, Lixr;->a:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    :goto_1
    const/16 p4, 0xc

    if-ge v0, p4, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x2

    if-ne p4, v1, :cond_2

    iget-object p4, p2, Lixr;->b:[I

    iget v1, p3, Landroid/util/TypedValue;->data:I

    aput v1, p4, v0

    const/4 p4, 0x1

    iput-boolean p4, p2, Lixr;->c:Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->obtainAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->typedArrayHelper:Lixr;

    iget-boolean p1, p1, Lixr;->c:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->themeState:Lixp;

    invoke-virtual {p1}, Lixp;->a()V

    :cond_4
    return-void
.end method

.method public isStateful()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x2710

    invoke-static {p1, v0, v1}, Laax;->d(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v2, v1

    int-to-float p1, p1

    mul-float v2, v2, p1

    :goto_0
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    iget-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateProgressPaint()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateColors([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDirection(Lixo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lixo;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->direction:Lixo;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->gravity:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->progressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateColors([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->rotation:F

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    rem-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->startAngle:F

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getMaximumSweepAngle()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->sweepAngle:F

    iget-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateProgressPaint()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateColors([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTrackEndAngle(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackEndAngle:F

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateTrackCap()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTrackStartAngle(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackStartAngle:F

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateTrackCap()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTrackWidth(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->trackWidth:F

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->paintTrack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateCapRadius()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateProgressPaint()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    return-void
.end method

.method public showEmptySweepAngle(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->showEmptySweepAngle:Z

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->updateProgressPaint()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/progressindicator/ProgressSpinnerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
