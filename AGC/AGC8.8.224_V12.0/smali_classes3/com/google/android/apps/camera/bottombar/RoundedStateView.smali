.class public Lcom/google/android/apps/camera/bottombar/RoundedStateView;
.super Landroid/widget/ImageButton;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INTER_CIRCLE_RING_ALPHA:F = 0.32f


# instance fields
.field private borderStrokePaint:Landroid/graphics/Paint;

.field private buttonCenterX:I

.field private buttonCenterY:I

.field private mainCircleButtonPaint:Landroid/graphics/Paint;

.field private rippleRingDiameterEnd:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_ripple_ring_diameter_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->rippleRingDiameterEnd:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->borderStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->borderStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Likp;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->borderStrokePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->mainCircleButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->mainCircleButtonPaint:Landroid/graphics/Paint;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_border_ring_diameter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/camera/bottombar/R$dimen;->bottom_inner_circle_diameter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->mainCircleButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->rippleRingDiameterEnd:F

    float-to-int p1, p1

    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterX:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->buttonCenterY:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    return-void
.end method
