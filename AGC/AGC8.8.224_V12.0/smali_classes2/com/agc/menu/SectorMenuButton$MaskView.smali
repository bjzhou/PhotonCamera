.class Lcom/agc/menu/SectorMenuButton$MaskView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/menu/SectorMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaskView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;,
        Lcom/agc/menu/SectorMenuButton$MaskView$RippleState;
    }
.end annotation


# static fields
.field private static final IDLE:I = 0x0

.field private static final RIPPLED:I = 0x2

.field private static final RIPPLING:I = 0x1


# instance fields
.field private SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

.field private checker:Lcom/agc/menu/QuickClickChecker;

.field private clickIndex:I

.field private expandDesCoordinateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/agc/menu/ButtonData;",
            "Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field private initialSubButtonRectF:Landroid/graphics/RectF;

.field private matrixArray:[Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private rippleRadius:F

.field private rippleState:I

.field private touchRectF:Landroid/graphics/RectF;

.field private touchRippleAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/menu/SectorMenuButton;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    iput-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    new-instance v0, Lcom/agc/menu/QuickClickChecker;

    invoke-static {p2}, Lcom/agc/menu/SectorMenuButton;->access$1800(Lcom/agc/menu/SectorMenuButton;)I

    move-result p2

    invoke-direct {v0, p2}, Lcom/agc/menu/QuickClickChecker;-><init>(I)V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->checker:Lcom/agc/menu/QuickClickChecker;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p2}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->matrixArray:[Landroid/graphics/Matrix;

    :goto_0
    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->matrixArray:[Landroid/graphics/Matrix;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->initialSubButtonRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p2}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->expandDesCoordinateMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget p1, p1, Lcom/agc/menu/SectorMenuButton;->maskBackgroundColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRippleAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget p2, p2, Lcom/agc/menu/SectorMenuButton;->expandAnimDuration:I

    int-to-float p2, p2

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p2, v0

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/agc/menu/SectorMenuButton$MaskView$1;

    invoke-direct {p2, p0}, Lcom/agc/menu/SectorMenuButton$MaskView$1;-><init>(Lcom/agc/menu/SectorMenuButton$MaskView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/agc/menu/SectorMenuButton$MaskView$2;

    invoke-direct {p2, p0}, Lcom/agc/menu/SectorMenuButton$MaskView$2;-><init>(Lcom/agc/menu/SectorMenuButton$MaskView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic access$1200(Lcom/agc/menu/SectorMenuButton$MaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton$MaskView;->updateButtons()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/agc/menu/SectorMenuButton$MaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton$MaskView;->initButtonRect()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/agc/menu/SectorMenuButton$MaskView;)Lcom/agc/menu/SectorMenuButton;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/agc/menu/SectorMenuButton$MaskView;)F
    .locals 0

    iget p0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->rippleRadius:F

    return p0
.end method

.method public static synthetic access$2300(Lcom/agc/menu/SectorMenuButton$MaskView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton$MaskView;->setRippleState(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/agc/menu/SectorMenuButton$MaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton$MaskView;->reset()V

    return-void
.end method

.method private drawButtons(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->matrixArray:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/menu/ButtonData;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2, p1, p2, v1}, Lcom/agc/menu/SectorMenuButton;->access$3600(Lcom/agc/menu/SectorMenuButton;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRippleState()I
    .locals 1

    iget v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->rippleState:I

    return v0
.end method

.method private getTouchedButtonIndex()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/menu/ButtonData;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->expandDesCoordinateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$3100(Lcom/agc/menu/SectorMenuButton;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->initialSubButtonRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    iget v3, v2, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveX:F

    iget v2, v2, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveY:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_1
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$2400(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    invoke-static {v1, v2, v3}, Lcom/agc/menu/SectorMenuButton;->access$2800(Lcom/agc/menu/SectorMenuButton;Landroid/graphics/PointF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private initButtonRect()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/menu/ButtonData;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$3100(Lcom/agc/menu/SectorMenuButton;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v3}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v3}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v3}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v3}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v5, v4, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v2

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v6}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v2, v3

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$3200(Lcom/agc/menu/SectorMenuButton;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->initialSubButtonRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private onButtonPressed()V
    .locals 4

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$2900(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/ButtonEventListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$2900(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/ButtonEventListener;

    move-result-object v0

    iget v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/agc/menu/ButtonEventListener;->onButtonClicked(I)V

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget-boolean v2, v0, Lcom/agc/menu/SectorMenuButton;->isSelectionMode:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/menu/ButtonData;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$3000(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/ButtonData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/agc/menu/ButtonData;->isIconButton()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/agc/menu/ButtonData;->setIsIconButton(Z)V

    invoke-virtual {v0}, Lcom/agc/menu/ButtonData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/agc/menu/ButtonData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/agc/menu/ButtonData;->setIsIconButton(Z)V

    invoke-virtual {v0}, Lcom/agc/menu/ButtonData;->getTexts()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/agc/menu/ButtonData;->setTexts([Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/agc/menu/ButtonData;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/agc/menu/ButtonData;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-virtual {v0}, Lcom/agc/menu/SectorMenuButton;->collapse()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->setRippleState(I)V

    return-void
.end method

.method private setRippleState(I)V
    .locals 0

    iput p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->rippleState:I

    return-void
.end method

.method private updateButtons()V
    .locals 10

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v2, v1, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    div-int/lit8 v2, v2, 0x2

    iget v1, v1, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->matrixArray:[Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v5, v4, Lcom/agc/menu/SectorMenuButton;->mainButtonRotateDegree:I

    int-to-float v5, v5

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$3300(Lcom/agc/menu/SectorMenuButton;)F

    move-result v4

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v6}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v5, v4, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->matrixArray:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/menu/ButtonData;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v6}, Lcom/agc/menu/SectorMenuButton;->access$600(Lcom/agc/menu/SectorMenuButton;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->expandDesCoordinateMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v6}, Lcom/agc/menu/SectorMenuButton;->access$3400(Lcom/agc/menu/SectorMenuButton;)F

    move-result v6

    iget v7, v5, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveX:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v7}, Lcom/agc/menu/SectorMenuButton;->access$3400(Lcom/agc/menu/SectorMenuButton;)F

    move-result v7

    iget v5, v5, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveY:F

    neg-float v5, v5

    mul-float/2addr v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_0
    add-int v6, v2, v1

    iget-object v7, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v7, v7, Lcom/agc/menu/SectorMenuButton;->buttonGapPx:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->expandDesCoordinateMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v7}, Lcom/agc/menu/SectorMenuButton;->access$3500(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/AngleCalculator;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lcom/agc/menu/AngleCalculator;->getMoveX(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v8}, Lcom/agc/menu/SectorMenuButton;->access$3500(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/AngleCalculator;

    move-result-object v8

    invoke-virtual {v8, v6, v3}, Lcom/agc/menu/AngleCalculator;->getMoveY(II)I

    move-result v6

    int-to-float v6, v6

    new-instance v8, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;

    invoke-direct {v8, v7, v6}, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;-><init>(FF)V

    iget-object v9, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->expandDesCoordinateMap:Ljava/util/Map;

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v5, v7, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveX:F

    iget v6, v7, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveY:F

    move v7, v5

    :goto_1
    iget-object v5, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v5}, Lcom/agc/menu/SectorMenuButton;->access$3400(Lcom/agc/menu/SectorMenuButton;)F

    move-result v5

    mul-float/2addr v5, v7

    iget-object v7, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v7}, Lcom/agc/menu/SectorMenuButton;->access$3400(Lcom/agc/menu/SectorMenuButton;)F

    move-result v7

    neg-float v6, v6

    mul-float/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onClickMainButton()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->drawButtons(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$2400(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/agc/menu/SectorMenuButton;->access$2700(Lcom/agc/menu/SectorMenuButton;ILandroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$2400(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->touchRectF:Landroid/graphics/RectF;

    invoke-static {v0, v3, v4}, Lcom/agc/menu/SectorMenuButton;->access$2800(Lcom/agc/menu/SectorMenuButton;Landroid/graphics/PointF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_3

    iget p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-virtual {p1}, Lcom/agc/menu/SectorMenuButton;->collapse()V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v2, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    invoke-static {v0, v2, v1}, Lcom/agc/menu/SectorMenuButton;->access$2500(Lcom/agc/menu/SectorMenuButton;IZ)V

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton$MaskView;->onButtonPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->checker:Lcom/agc/menu/QuickClickChecker;

    invoke-virtual {p1}, Lcom/agc/menu/QuickClickChecker;->isQuick()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton$MaskView;->getTouchedButtonIndex()I

    move-result p1

    iput p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$600(Lcom/agc/menu/SectorMenuButton;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    iget v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->clickIndex:I

    invoke-static {p1, v0, v2}, Lcom/agc/menu/SectorMenuButton;->access$2500(Lcom/agc/menu/SectorMenuButton;IZ)V

    :cond_6
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1, v2}, Lcom/agc/menu/SectorMenuButton;->access$2602(Lcom/agc/menu/SectorMenuButton;Z)Z

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView;->SectorMenuButton:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$600(Lcom/agc/menu/SectorMenuButton;)Z

    move-result p1

    return p1
.end method
