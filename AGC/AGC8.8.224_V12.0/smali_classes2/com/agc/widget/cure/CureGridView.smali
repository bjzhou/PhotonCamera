.class public Lcom/agc/widget/cure/CureGridView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/cure/CureGridView$OnCureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CureGridView"

.field static _circleOffset:I = 0x5

.field static _downloadPointF:Landroid/graphics/PointF;


# instance fields
.field private _OffsetHeight:I

.field private _barRectF:Landroid/graphics/RectF;

.field private _borderWidth:I

.field private _circleHeight:I

.field private _downX:F

.field private _downY:F

.field _itemWidth:F

.field private _maxY:F

.field private _touchIndex:I

.field context:Landroid/content/Context;

.field private curePerModel:Lcom/agc/widget/cure/CurePerModel;

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCureListener:Lcom/agc/widget/cure/CureGridView$OnCureListener;

.field private mCurePaint:Landroid/graphics/Paint;

.field private mPrePaint:Landroid/graphics/Paint;

.field mWidth:I

.field private points:[Landroid/graphics/PointF;

.field private saveCureValue:Ljava/lang/String;

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/cure/CureGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/cure/CureGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_maxY:F

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_downY:F

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_downX:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridView;->context:Landroid/content/Context;

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/agc/widget/cure/CureGridView;->_OffsetHeight:I

    invoke-static {p1, p2}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    const-string p3, "#44FFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    const-string v2, "#88FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {p1, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridView;->_initPoints()V

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridView;->_initWidth()V

    return-void
.end method

.method private _initPoints()V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->saveCureValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float v6, v2, v5

    const/high16 v7, 0x40700000    # 3.75f

    mul-float/2addr v2, v7

    invoke-direct {v1, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v2, v6

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    mul-float/2addr v7, v2

    mul-float/2addr v2, v5

    invoke-direct {v1, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    mul-float/2addr v2, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/cure/CureGridView;->setCureValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private _initWidth()V
    .locals 14

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    iget v1, p0, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/widget/cure/CureGridView;->_maxY:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    iget v5, p0, Lcom/agc/widget/cure/CureGridView;->_OffsetHeight:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-int/2addr v4, v2

    int-to-float v2, v4

    add-float/2addr v0, v5

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v11, -0x1000000

    const/4 v12, -0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridView;->shader:Landroid/graphics/Shader;

    return-void
.end method

.method private drawCircle(FILandroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public _updateCircleX(Landroid/view/MotionEvent;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/agc/widget/cure/CureGridView;->_downX:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    const/4 v4, 0x3

    if-ge p2, v4, :cond_0

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    add-int/lit8 v4, p2, 0x1

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float/2addr v1, v3

    :cond_0
    const/4 v4, 0x1

    if-le p2, v4, :cond_1

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    add-int/lit8 v4, p2, -0x1

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    :cond_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object p2, v1, p2

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/agc/widget/cure/CureGridView;->_downX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public _updateY(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->_downX:F

    iget v1, p0, Lcom/agc/widget/cure/CureGridView;->_itemWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    cmpg-float v3, v0, v2

    const/high16 v4, 0x40400000    # 3.0f

    if-gez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    mul-float v3, v2, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    mul-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v0, v1, v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_downY:F

    sub-float v2, p1, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_4

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->_maxY:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iput v1, v0, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/agc/widget/cure/CureGridView;->_downY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    return-void
.end method

.method public getCurePerModel()Lcom/agc/widget/cure/CurePerModel;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    return-object v0
.end method

.method public getCureValue()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ","

    if-lez v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%.2f"

    invoke-static {v3, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/agc/widget/cure/CureGridView;->_maxY:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCureValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v4, v10, [F

    const/high16 v5, 0x41200000    # 10.0f

    aput v5, v4, v8

    aput v5, v4, v9

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    int-to-float v5, v2

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    int-to-float v6, v2

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/agc/widget/cure/CureGridView;->context:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/lit8 v3, v2, 0x5

    int-to-float v12, v3

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/2addr v3, v10

    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v4

    move v4, v12

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v13, v12, v4

    iget v4, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v4, v2

    int-to-float v5, v4

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v13

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v14, v12, v4

    iget v4, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v4, v2

    int-to-float v5, v4

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v14

    move v6, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v15, v12, v4

    iget v4, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v4, v2

    int-to-float v5, v4

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v15

    move v6, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v4, v3

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v12

    move v5, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v4, v3

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v13

    move v5, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v4, v3

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v14

    move v5, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v4, v3

    iget v3, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    div-int/2addr v2, v10

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget-object v7, v1, Lcom/agc/widget/cure/CureGridView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v15

    move v5, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/agc/widget/cure/CureGridView;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v2, v2, v9

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const-string v3, "#262626"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/agc/widget/cure/CureGridView;->drawCircle(FILandroid/graphics/Canvas;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const-string v3, "#636363"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/agc/widget/cure/CureGridView;->drawCircle(FILandroid/graphics/Canvas;)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const-string v3, "#A3A3A3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/agc/widget/cure/CureGridView;->drawCircle(FILandroid/graphics/Canvas;)V

    iget v2, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v1, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    const/16 v3, 0x64

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v4, v1, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    iget-object v4, v4, Lcom/agc/widget/cure/CurePerModel;->array:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/PointF;

    iget-object v5, v1, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    iget-object v5, v5, Lcom/agc/widget/cure/CurePerModel;->array:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    iget v7, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    mul-int/2addr v7, v10

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move v7, v8

    :goto_0
    if-ge v7, v5, :cond_1

    iget-object v9, v1, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    iget-object v9, v9, Lcom/agc/widget/cure/CurePerModel;->array:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    add-int/lit8 v13, v5, -0x1

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v12, v6

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v13, v8, v13

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    float-to-double v13, v6

    mul-double/2addr v8, v13

    double-to-float v8, v8

    invoke-direct {v11, v12, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    float-to-int v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v6, v5}, Lcom/agc/widget/cure/CatmullRomSpline;->calculateCatmullRomSpline([Landroid/graphics/PointF;Landroid/graphics/Path;III)V

    iget-object v4, v1, Lcom/agc/widget/cure/CureGridView;->mPrePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v4, v1, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    iget v5, v1, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    iget v6, v1, Lcom/agc/widget/cure/CureGridView;->_borderWidth:I

    mul-int/2addr v6, v10

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v6, v5}, Lcom/agc/widget/cure/CatmullRomSpline;->calculateCatmullRomSpline([Landroid/graphics/PointF;Landroid/graphics/Path;III)V

    iget-object v3, v1, Lcom/agc/widget/cure/CureGridView;->mCurePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    :goto_0
    iput p1, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    goto :goto_1

    :cond_0
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    :goto_1
    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridView;->_initWidth()V

    iget p1, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    iget p2, p0, Lcom/agc/widget/cure/CureGridView;->_OffsetHeight:I

    add-int/2addr p2, p1

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridView;->_initPoints()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/agc/widget/cure/CureGridView;->_updateY(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/cure/CureGridView;->_updateCircleX(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/agc/widget/cure/CureGridView;->mCureListener:Lcom/agc/widget/cure/CureGridView$OnCureListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/cure/CureGridView;->getCureValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/agc/widget/cure/CureGridView$OnCureListener;->onDone(Ljava/lang/String;)V

    :cond_2
    iput v2, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/agc/widget/cure/CureGridView;->_downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/agc/widget/cure/CureGridView;->_downX:F

    iget v0, p0, Lcom/agc/widget/cure/CureGridView;->_downY:F

    iget v2, p0, Lcom/agc/widget/cure/CureGridView;->mWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v1, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    aget-object v1, v0, v3

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/agc/widget/cure/CureGridView;->_circleHeight:I

    int-to-float v4, v4

    add-float v5, v2, v4

    sget v6, Lcom/agc/widget/cure/CureGridView;->_circleOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p1, v5

    if-gez v5, :cond_4

    sub-float/2addr v2, v4

    sub-float/2addr v2, v6

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    iput v3, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    sput-object v1, Lcom/agc/widget/cure/CureGridView;->_downloadPointF:Landroid/graphics/PointF;

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget v5, v2, Landroid/graphics/PointF;->x:F

    add-float v7, v5, v4

    add-float/2addr v7, v6

    cmpg-float v7, p1, v7

    if-gez v7, :cond_5

    sub-float/2addr v5, v4

    sub-float/2addr v5, v6

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    iput v1, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    sput-object v2, Lcom/agc/widget/cure/CureGridView;->_downloadPointF:Landroid/graphics/PointF;

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float v5, v2, v4

    add-float/2addr v5, v6

    cmpg-float v5, p1, v5

    if-gez v5, :cond_6

    sub-float/2addr v2, v4

    sub-float/2addr v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    iput v1, p0, Lcom/agc/widget/cure/CureGridView;->_touchIndex:I

    sput-object v0, Lcom/agc/widget/cure/CureGridView;->_downloadPointF:Landroid/graphics/PointF;

    :cond_6
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridView;->saveCureValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridView;->_initPoints()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurePerModel(Lcom/agc/widget/cure/CurePerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridView;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCureValue(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/agc/widget/cure/CureGridView;->_barRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridView;->points:[Landroid/graphics/PointF;

    div-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    iget v3, p0, Lcom/agc/widget/cure/CureGridView;->_maxY:F

    float-to-double v3, v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    mul-double/2addr v3, v7

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/agc/widget/cure/CureGridView;->saveCureValue:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/agc/widget/cure/CureGridView;->reset()V

    :goto_1
    return-void
.end method

.method public setOnCureListener(Lcom/agc/widget/cure/CureGridView$OnCureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridView;->mCureListener:Lcom/agc/widget/cure/CureGridView$OnCureListener;

    return-void
.end method
