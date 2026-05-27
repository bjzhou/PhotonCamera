.class public Lcom/agc/menu/SectorMenuButton;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/menu/SectorMenuButton$RippleInfo;,
        Lcom/agc/menu/SectorMenuButton$MaskView;,
        Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;
    }
.end annotation


# static fields
.field private static final BUTTON_SHADOW_ALPHA:I = 0x20

.field private static final BUTTON_SHADOW_COLOR:I = -0x1000000

.field private static final DEFAULT_BLUR_RADIUS:I = 0xa

.field private static final DEFAULT_BUTTON_ELEVATION_DP:I = 0x4

.field private static final DEFAULT_BUTTON_GAP_DP:I = 0x19

.field private static final DEFAULT_BUTTON_MAIN_SIZE_DP:I = 0x3c

.field private static final DEFAULT_BUTTON_SUB_SIZE_DP:I = 0x3c

.field private static final DEFAULT_BUTTON_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_BUTTON_TEXT_SIZE_SP:I = 0x14

.field private static final DEFAULT_END_ANGLE:I = 0x5a

.field private static final DEFAULT_EXPAND_ANIMATE_DURATION:I = 0xe1

.field private static final DEFAULT_MASK_BACKGROUND_COLOR:I = 0x0

.field private static final DEFAULT_ROTATE_ANIMATE_DURATION:I = 0x12c

.field private static final DEFAULT_START_ANGLE:I = 0x5a


# instance fields
.field private angleCalculator:Lcom/agc/menu/AngleCalculator;

.field private animating:Z

.field private anticipateInterpolator:Landroid/view/animation/Interpolator;

.field private blur:Lcom/agc/menu/Blur;

.field private blurAnimator:Landroid/animation/ObjectAnimator;

.field protected blurBackground:Z

.field private blurImageView:Landroid/widget/ImageView;

.field private blurListener:Landroid/animation/Animator$AnimatorListener;

.field protected blurRadius:F

.field private buttonDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/menu/ButtonData;",
            ">;"
        }
    .end annotation
.end field

.field protected buttonElevationPx:I

.field private buttonEventListener:Lcom/agc/menu/ButtonEventListener;

.field protected buttonGapPx:I

.field private buttonRects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/agc/menu/ButtonData;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private buttonSideMarginPx:I

.field private checkThreshold:I

.field private checker:Lcom/agc/menu/QuickClickChecker;

.field private collapseValueAnimator:Landroid/animation/ValueAnimator;

.field protected endAngle:F

.field protected expandAnimDuration:I

.field private expandProgress:F

.field private expandValueAnimator:Landroid/animation/ValueAnimator;

.field private expanded:Z

.field protected isSelectionMode:Z

.field protected mainButtonRotateDegree:I

.field protected mainButtonSizePx:I

.field protected mainButtonTextColor:I

.field protected mainButtonTextSize:I

.field private mainShadowBitmap:Landroid/graphics/Bitmap;

.field private maskAttached:Z

.field protected maskBackgroundColor:I

.field private maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

.field private overshootInterpolator:Landroid/view/animation/Interpolator;

.field private paint:Landroid/graphics/Paint;

.field private pressInButton:Z

.field private pressPointF:Landroid/graphics/PointF;

.field private pressTmpColor:I

.field private rawButtonRect:Landroid/graphics/Rect;

.field private rawButtonRectF:Landroid/graphics/RectF;

.field protected rippleColor:I

.field protected rippleEffect:Z

.field private rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

.field private ripplePath:Landroid/graphics/Path;

.field protected rotateAnimDuration:I

.field private rotateProgress:F

.field private rotateValueAnimator:Landroid/animation/ValueAnimator;

.field shadowMatrix:Landroid/graphics/Matrix;

.field protected startAngle:F

.field protected subButtonSizePx:I

.field protected subButtonTextColor:I

.field protected subButtonTextSize:I

.field private subShadowBitmap:Landroid/graphics/Bitmap;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/menu/SectorMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/agc/menu/SectorMenuButton;->expanded:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->rippleColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->mainShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->subShadowBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/agc/menu/SectorMenuButton;->animating:Z

    iput-boolean p3, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/agc/menu/SectorMenuButton;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/agc/menu/SectorMenuButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->detachMask()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/agc/menu/SectorMenuButton;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->blurImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/agc/menu/SectorMenuButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->blurAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/agc/menu/SectorMenuButton;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->blurAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/agc/menu/SectorMenuButton;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->blurListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/agc/menu/SectorMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/agc/menu/SectorMenuButton;)I
    .locals 0

    iget p0, p0, Lcom/agc/menu/SectorMenuButton;->checkThreshold:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/agc/menu/SectorMenuButton;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/SectorMenuButton$RippleInfo;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->pressPointF:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/agc/menu/SectorMenuButton;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->updatePressState(IZ)V

    return-void
.end method

.method public static synthetic access$2602(Lcom/agc/menu/SectorMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->pressInButton:Z

    return p1
.end method

.method public static synthetic access$2700(Lcom/agc/menu/SectorMenuButton;ILandroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->updatePressPosition(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/agc/menu/SectorMenuButton;Landroid/graphics/PointF;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->isPointInRectF(Landroid/graphics/PointF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/ButtonEventListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->buttonEventListener:Lcom/agc/menu/ButtonEventListener;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/ButtonData;
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->getMainButtonData()Lcom/agc/menu/ButtonData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/agc/menu/SectorMenuButton;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/agc/menu/SectorMenuButton;)I
    .locals 0

    iget p0, p0, Lcom/agc/menu/SectorMenuButton;->buttonSideMarginPx:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/agc/menu/SectorMenuButton;)F
    .locals 0

    iget p0, p0, Lcom/agc/menu/SectorMenuButton;->rotateProgress:F

    return p0
.end method

.method public static synthetic access$3400(Lcom/agc/menu/SectorMenuButton;)F
    .locals 0

    iget p0, p0, Lcom/agc/menu/SectorMenuButton;->expandProgress:F

    return p0
.end method

.method public static synthetic access$3500(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/AngleCalculator;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->angleCalculator:Lcom/agc/menu/AngleCalculator;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/agc/menu/SectorMenuButton;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/SectorMenuButton;->drawButton(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    return-void
.end method

.method public static synthetic access$402(Lcom/agc/menu/SectorMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->animating:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/agc/menu/SectorMenuButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->attachMask()V

    return-void
.end method

.method public static synthetic access$600(Lcom/agc/menu/SectorMenuButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/menu/SectorMenuButton;->expanded:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/agc/menu/SectorMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->expanded:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/agc/menu/SectorMenuButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->hideBlur()V

    return-void
.end method

.method public static synthetic access$800(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/SectorMenuButton$MaskView;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    return-object p0
.end method

.method private attachMask()V
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/agc/menu/SectorMenuButton$MaskView;-><init>(Landroid/content/Context;Lcom/agc/menu/SectorMenuButton;)V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    :cond_0
    iget-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->showBlur()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$900(Lcom/agc/menu/SectorMenuButton$MaskView;)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$1300(Lcom/agc/menu/SectorMenuButton$MaskView;)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->onClickMainButton()V

    :cond_1
    return-void
.end method

.method private checkBlurRadius()V
    .locals 2

    iget v0, p0, Lcom/agc/menu/SectorMenuButton;->blurRadius:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->blurRadius:F

    :cond_1
    return-void
.end method

.method private detachMask()V
    .locals 5

    iget-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    :goto_0
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/menu/ButtonData;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    :goto_1
    iget v3, p0, Lcom/agc/menu/SectorMenuButton;->buttonSideMarginPx:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->getMainButtonData()Lcom/agc/menu/ButtonData;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0}, Lcom/agc/menu/SectorMenuButton;->drawButton(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/SectorMenuButton;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/SectorMenuButton;->drawContent(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/SectorMenuButton;->drawRipple(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V
    .locals 6

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isIconButton()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getIconPaddingDp()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getIconPaddingDp()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getIconPaddingDp()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getIconPaddingDp()F

    move-result p3

    invoke-virtual {p0, v4, p3}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr v0, p3

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iconData is true, drawable cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getTexts()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->getTexts()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextSize:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextSize:I

    :goto_0
    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextColor:I

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextColor:I

    :goto_1
    invoke-direct {p0, v1, p3}, Lcom/agc/menu/SectorMenuButton;->getTextPaint(II)Landroid/graphics/Paint;

    move-result-object p3

    iput-object p3, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/agc/menu/SectorMenuButton;->drawTexts([Ljava/lang/String;Landroid/graphics/Canvas;FF)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iconData is false, text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private drawRipple(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/menu/SectorMenuButton;->rippleEffect:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

    iget v2, v1, Lcom/agc/menu/SectorMenuButton$RippleInfo;->buttonIndex:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/agc/menu/SectorMenuButton$RippleInfo;->rippleColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->ripplePath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->ripplePath:Landroid/graphics/Path;

    :cond_1
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->ripplePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->ripplePath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, p3, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p3, p0, Lcom/agc/menu/SectorMenuButton;->ripplePath:Landroid/graphics/Path;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p3, p0, Lcom/agc/menu/SectorMenuButton;->rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

    iget v0, p3, Lcom/agc/menu/SectorMenuButton$RippleInfo;->pressX:F

    iget v1, p3, Lcom/agc/menu/SectorMenuButton$RippleInfo;->pressY:F

    iget p3, p3, Lcom/agc/menu/SectorMenuButton$RippleInfo;->rippleRadius:F

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/agc/menu/ButtonData;)V
    .locals 9

    iget v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonElevationPx:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/agc/menu/SectorMenuButton;->getButtonShadowBitmap(Lcom/agc/menu/ButtonData;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->mainShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/agc/menu/SectorMenuButton;->getButtonShadowBitmap(Lcom/agc/menu/ButtonData;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->subShadowBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->buttonElevationPx:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/agc/menu/SectorMenuButton;->expandProgress:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    int-to-float v1, v8

    invoke-virtual {v5, v6, v6, v7, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonRotateDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/agc/menu/SectorMenuButton;->rotateProgress:F

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p3, v1, v3, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTexts([Ljava/lang/String;Landroid/graphics/Canvas;FF)V
    .locals 7

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    neg-float v1, v1

    add-float/2addr v1, v2

    mul-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v5, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v0

    add-float/2addr v4, v5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    sub-float/2addr v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sub-int v2, v3, v0

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    aget-object v5, p1, v0

    add-float/2addr v2, p4

    iget-object v6, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v5, p3, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getButtonShadowBitmap(Lcom/agc/menu/ButtonData;)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/agc/menu/SectorMenuButton;->mainShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/agc/menu/SectorMenuButton;->subShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    :goto_0
    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget v3, v0, Lcom/agc/menu/SectorMenuButton;->buttonElevationPx:I

    add-int/2addr v3, v1

    mul-int/lit8 v4, v3, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-array v11, v2, [I

    const/16 v7, 0x20

    const/high16 v8, -0x1000000

    invoke-static {v8, v7}, Lcom/agc/menu/SectorMenuButton;->setAlphaComponent(II)I

    move-result v7

    aput v7, v11, v6

    invoke-static {v8, v6}, Lcom/agc/menu/SectorMenuButton;->setAlphaComponent(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v11, v8

    new-array v12, v2, [F

    iget v2, v0, Lcom/agc/menu/SectorMenuButton;->buttonElevationPx:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v10, v3

    div-float/2addr v1, v10

    aput v1, v12, v6

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v12, v8

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v2

    move v8, v10

    move v9, v10

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v2

    move/from16 v17, v2

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v5, v0, Lcom/agc/menu/SectorMenuButton;->mainShadowBitmap:Landroid/graphics/Bitmap;

    return-object v5

    :cond_3
    iput-object v5, v0, Lcom/agc/menu/SectorMenuButton;->subShadowBitmap:Landroid/graphics/Bitmap;

    return-object v5
.end method

.method private getDarkerColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method private getLighterColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method private getMainButtonData()Lcom/agc/menu/ButtonData;
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/menu/ButtonData;

    return-object v0
.end method

.method private getPressedColor(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton;->getDarkerColor(I)I

    move-result p1

    return p1
.end method

.method private getTextPaint(II)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->textPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private hideBlur()V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->blurBackground:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->blurAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->blurListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/agc/menu/SectorMenuButton$6;

    invoke-direct {v1, p0, v0}, Lcom/agc/menu/SectorMenuButton$6;-><init>(Lcom/agc/menu/SectorMenuButton;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/agc/menu/SectorMenuButton;->blurListener:Landroid/animation/Animator$AnimatorListener;

    :cond_1
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->blurAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->blurListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->blurAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/agc/menu/SectorMenuButton;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/agc/menu/SectorMenuButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x42b40000    # 90.0f

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->startAngle:F

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->endAngle:F

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->buttonGapPx:I

    const/high16 p2, 0x42700000    # 60.0f

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->buttonElevationPx:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->buttonSideMarginPx:I

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->sp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextSize:I

    invoke-virtual {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->sp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextSize:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextColor:I

    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextColor:I

    const/16 p1, 0xe1

    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->expandAnimDuration:I

    const/16 p2, 0x12c

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->rotateAnimDuration:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/agc/menu/SectorMenuButton;->maskBackgroundColor:I

    iget v2, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonRotateDegree:I

    iput v2, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonRotateDegree:I

    iput-boolean v1, p0, Lcom/agc/menu/SectorMenuButton;->isSelectionMode:Z

    iput-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->rippleEffect:Z

    iget v0, p0, Lcom/agc/menu/SectorMenuButton;->rippleColor:I

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->rippleColor:I

    iput-boolean v1, p0, Lcom/agc/menu/SectorMenuButton;->blurBackground:Z

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->blurRadius:F

    if-eqz v2, :cond_0

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->checkThreshold:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->checkThreshold:I

    :goto_0
    new-instance p1, Lcom/agc/menu/QuickClickChecker;

    iget p2, p0, Lcom/agc/menu/SectorMenuButton;->checkThreshold:I

    invoke-direct {p1, p2}, Lcom/agc/menu/QuickClickChecker;-><init>(I)V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->checker:Lcom/agc/menu/QuickClickChecker;

    new-instance p1, Lcom/agc/menu/SectorMenuButton$RippleInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/agc/menu/SectorMenuButton$RippleInfo;-><init>(Lcom/agc/menu/SectorMenuButton$1;)V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->pressPointF:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->shadowMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->initViewTreeObserver()V

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->initAnimators()V

    return-void
.end method

.method private initAnimators()V
    .locals 4

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->overshootInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->anticipateInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/agc/menu/SectorMenuButton;->expandAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton;->overshootInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/agc/menu/SectorMenuButton$2;

    invoke-direct {v2, p0}, Lcom/agc/menu/SectorMenuButton$2;-><init>(Lcom/agc/menu/SectorMenuButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/agc/menu/SectorMenuButton;->expandAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton;->anticipateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/agc/menu/SectorMenuButton$3;

    invoke-direct {v2, p0}, Lcom/agc/menu/SectorMenuButton$3;-><init>(Lcom/agc/menu/SectorMenuButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonRotateDegree:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->rotateAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/agc/menu/SectorMenuButton$4;

    invoke-direct {v1, p0}, Lcom/agc/menu/SectorMenuButton$4;-><init>(Lcom/agc/menu/SectorMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initButtonInfo()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private initViewTreeObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/agc/menu/SectorMenuButton$1;

    invoke-direct {v1, p0}, Lcom/agc/menu/SectorMenuButton$1;-><init>(Lcom/agc/menu/SectorMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isPointInRectF(Landroid/graphics/PointF;Landroid/graphics/RectF;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetRippleInfo()V
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rippleInfo:Lcom/agc/menu/SectorMenuButton$RippleInfo;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/agc/menu/SectorMenuButton$RippleInfo;->buttonIndex:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/agc/menu/SectorMenuButton$RippleInfo;->pressX:F

    iput v1, v0, Lcom/agc/menu/SectorMenuButton$RippleInfo;->pressY:F

    iput v1, v0, Lcom/agc/menu/SectorMenuButton$RippleInfo;->rippleRadius:F

    return-void
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showBlur()Z
    .locals 6

    iget-boolean v0, p0, Lcom/agc/menu/SectorMenuButton;->blurBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->checkBlurRadius()V

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton;->blur:Lcom/agc/menu/Blur;

    new-instance v4, Lcom/agc/menu/SectorMenuButton$5;

    invoke-direct {v4, p0, v0}, Lcom/agc/menu/SectorMenuButton$5;-><init>(Lcom/agc/menu/SectorMenuButton;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/agc/menu/SectorMenuButton;->blurRadius:F

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/agc/menu/Blur;->setParams(Lcom/agc/menu/Blur$Callback;Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->blur:Lcom/agc/menu/Blur;

    invoke-virtual {v0}, Lcom/agc/menu/Blur;->execute()V

    return v1
.end method

.method private startRotateAnimator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->overshootInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->anticipateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updatePressPosition(ILandroid/graphics/RectF;)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->pressPointF:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lcom/agc/menu/SectorMenuButton;->isPointInRectF(Landroid/graphics/PointF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/agc/menu/SectorMenuButton;->pressInButton:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/agc/menu/SectorMenuButton;->pressInButton:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;->updatePressState(IZ)V

    iput-boolean p2, p0, Lcom/agc/menu/SectorMenuButton;->pressInButton:Z

    :cond_2
    return-void
.end method

.method private updatePressState(IZ)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/menu/ButtonData;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/agc/menu/ButtonData;->getBackgroundColor()I

    move-result p2

    iput p2, p0, Lcom/agc/menu/SectorMenuButton;->pressTmpColor:I

    invoke-direct {p0, p2}, Lcom/agc/menu/SectorMenuButton;->getPressedColor(I)I

    move-result p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/agc/menu/SectorMenuButton;->pressTmpColor:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/agc/menu/ButtonData;->setBackgroundColor(I)V

    iget-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->expanded:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/agc/menu/SectorMenuButton;->startRotateAnimator(Z)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonEventListener:Lcom/agc/menu/ButtonEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/agc/menu/ButtonEventListener;->onCollapse()V

    :cond_1
    return-void
.end method

.method public dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public expand()V
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/agc/menu/SectorMenuButton;->startRotateAnimator(Z)V

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonEventListener:Lcom/agc/menu/ButtonEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/agc/menu/ButtonEventListener;->onExpand()V

    :cond_1
    return-void
.end method

.method public getButtonDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/menu/ButtonData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->expandProgress:F

    :cond_1
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rotateValueAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/agc/menu/SectorMenuButton;->rotateProgress:F

    :cond_2
    iget-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->maskAttached:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$1200(Lcom/agc/menu/SectorMenuButton$MaskView;)V

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->maskView:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton;->drawButton(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    iget p2, p0, Lcom/agc/menu/SectorMenuButton;->buttonSideMarginPx:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/agc/menu/SectorMenuButton;->initButtonInfo()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->pressPointF:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/agc/menu/SectorMenuButton;->updatePressPosition(ILandroid/graphics/RectF;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->pressPointF:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->rawButtonRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->isPointInRectF(Landroid/graphics/PointF;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/agc/menu/SectorMenuButton;->updatePressState(IZ)V

    invoke-virtual {p0}, Lcom/agc/menu/SectorMenuButton;->expand()V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->checker:Lcom/agc/menu/QuickClickChecker;

    invoke-virtual {p1}, Lcom/agc/menu/QuickClickChecker;->isQuick()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iput-boolean v2, p0, Lcom/agc/menu/SectorMenuButton;->pressInButton:Z

    iget-boolean p1, p0, Lcom/agc/menu/SectorMenuButton;->animating:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/agc/menu/SectorMenuButton;->updatePressState(IZ)V

    :cond_6
    return p1
.end method

.method public setButtonDatas(Ljava/util/List;)Lcom/agc/menu/SectorMenuButton;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/menu/ButtonData;",
            ">;)",
            "Lcom/agc/menu/SectorMenuButton;"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    iget-boolean v1, p0, Lcom/agc/menu/SectorMenuButton;->isSelectionMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/menu/ButtonData;

    invoke-virtual {p1}, Lcom/agc/menu/ButtonData;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/menu/ButtonData;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v2

    :goto_1
    const/4 v1, 0x1

    if-ge v0, p1, :cond_4

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/menu/ButtonData;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/agc/menu/ButtonData;->setIsMainButton(Z)V

    invoke-virtual {v3}, Lcom/agc/menu/ButtonData;->isMainButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    :goto_3
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/agc/menu/SectorMenuButton;->buttonSideMarginPx:I

    int-to-float v6, v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v6, v6, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton;->buttonRects:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/agc/menu/AngleCalculator;

    iget v0, p0, Lcom/agc/menu/SectorMenuButton;->startAngle:F

    iget v2, p0, Lcom/agc/menu/SectorMenuButton;->endAngle:F

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton;->buttonDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {p1, v0, v2, v3}, Lcom/agc/menu/AngleCalculator;-><init>(FFI)V

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->angleCalculator:Lcom/agc/menu/AngleCalculator;

    :cond_5
    :goto_4
    return-object p0
.end method

.method public setButtonEventListener(Lcom/agc/menu/ButtonEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton;->buttonEventListener:Lcom/agc/menu/ButtonEventListener;

    return-void
.end method

.method public setCollapseAnimatorInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->collapseValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public setExpandAnimatorInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton;->expandValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public sp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method
