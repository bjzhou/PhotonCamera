.class public Lcom/agc/asv/ShadowRulerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static hightPer:I = 0xa


# instance fields
.field private mAlphaEnable:Z

.field private mHeight:I

.field private mInitIndex:I

.field private mInitValue:F

.field private mLastX:I

.field private mLineColor:I

.field private mLineMidHeight:F

.field private mLineMinHeight:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineSpaceWidth:F

.field private mLineWidth:F

.field private mListener:Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;

.field private mMaxOffset:I

.field private mMaxValue:F

.field private mMiddLineColor:I

.field private mMiddleLinePaint:Landroid/graphics/Paint;

.field private mMinValue:F

.field private mMinVelocity:I

.field private mMove:I

.field private mOffset:F

.field private mPerValue:F

.field private mPointPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectorValue:F

.field private mTotalLine:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I

.field private tempValue:F

.field vib:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/ShadowRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/asv/ShadowRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41f00000    # 30.0f

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mInitValue:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mInitIndex:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mMaxValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mLineMidHeight:F

    const/high16 p3, 0x41880000    # 17.0f

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mLineMinHeight:F

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/agc/asv/ShadowRulerView;->mAlphaEnable:Z

    const p3, -0x777778

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mLineColor:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mMiddLineColor:I

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->tempValue:F

    invoke-virtual {p0, p1, p2}, Lcom/agc/asv/ShadowRulerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private changeMoveAndValue()V
    .locals 5

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    iput v4, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->notifyValueChange()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private countMoveEnd()V
    .locals 5

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    mul-float/2addr v1, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->notifyValueChange()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private countVelocityTracker()V
    .locals 11

    const-string v0, "zkk---"

    const-string v1, "countVelocityTracker-"

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    float-to-int v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_0
    return-void
.end method

.method private getFontHeight(Landroid/graphics/Paint;)F
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    return v0
.end method

.method public static myfloat(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private notifyValueChange()V
    .locals 6

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mListener:Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    invoke-interface {v0, v1}, Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;->onValueChange(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPerValue/2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSelectorValue % mPerValue == 0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iget v3, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    div-float/2addr v3, v2

    rem-float/2addr v1, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->tempValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->tempValue:F

    invoke-virtual {p0}, Lcom/agc/asv/ShadowRulerView;->vibrate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    const-string v0, "zkk---"

    const-string v1, "computeScroll-"

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->countMoveEnd()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->changeMoveAndValue()V

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string p2, "zkk---"

    const-string v0, "init"

    invoke-static {p2, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/agc/asv/ShadowRulerView;->vib:Landroid/os/Vibrator;

    const/high16 p1, 0x41c80000    # 25.0f

    invoke-static {p1}, Lcom/agc/asv/ShadowRulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/agc/asv/ShadowRulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {p1}, Lcom/agc/asv/ShadowRulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mLineMidHeight:F

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {p1}, Lcom/agc/asv/ShadowRulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mLineMinHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mMinVelocity:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMiddLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mPointPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mPointPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMiddLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMaxValue:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/agc/asv/ShadowRulerView;->setValue(FFF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mLineMidHeight:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-float v5, v1

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mLineMinHeight:F

    iget v2, p0, Lcom/agc/asv/ShadowRulerView;->mLineMidHeight:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v5

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/agc/asv/ShadowRulerView;->mTotalLine:I

    if-ge v3, v4, :cond_4

    int-to-float v4, v0

    iget v6, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    add-float/2addr v4, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    mul-float/2addr v6, v7

    add-float v9, v4, v6

    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/agc/asv/ShadowRulerView;->mWidth:I

    int-to-float v4, v4

    cmpl-float v4, v9, v4

    if-lez v4, :cond_0

    goto :goto_2

    :cond_0
    iget v4, p0, Lcom/agc/asv/ShadowRulerView;->mInitIndex:I

    if-ne v4, v3, :cond_1

    iget v4, p0, Lcom/agc/asv/ShadowRulerView;->mLineWidth:F

    iget-object v6, p0, Lcom/agc/asv/ShadowRulerView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v4, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    sget v4, Lcom/agc/asv/ShadowRulerView;->hightPer:I

    rem-int v4, v3, v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/agc/asv/ShadowRulerView;->mMiddLineColor:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/agc/asv/ShadowRulerView;->mLineColor:I

    :goto_1
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    add-float v10, v1, v2

    iget-object v11, p0, Lcom/agc/asv/ShadowRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    move v8, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    int-to-float v6, v0

    iget v7, p0, Lcom/agc/asv/ShadowRulerView;->mLineMidHeight:F

    iget-object v8, p0, Lcom/agc/asv/ShadowRulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mWidth:I

    iput p2, p0, Lcom/agc/asv/ShadowRulerView;->mHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSizeChanged,mWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",mHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "zkk---"

    const-string v1, "onTouchEvent-"

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/agc/asv/ShadowRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/asv/ShadowRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v2, p0, Lcom/agc/asv/ShadowRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->changeMoveAndValue()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->countMoveEnd()V

    invoke-direct {p0}, Lcom/agc/asv/ShadowRulerView;->countVelocityTracker()V

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mMove:I

    :goto_0
    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mLastX:I

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

.method public setOnValueChangeListener(Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ShadowRulerView;->mListener:Lcom/agc/asv/ShadowRulerView$OnValueChangeListener;

    return-void
.end method

.method public setValue(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/asv/ShadowRulerView;->vibrate()V

    iget v0, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mMaxValue:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/agc/asv/ShadowRulerView;->setValue(FFF)V

    return-void
.end method

.method public setValue(FFF)V
    .locals 5

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, p3, v0

    mul-float v2, p2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    iput p3, p0, Lcom/agc/asv/ShadowRulerView;->mMaxValue:F

    iput p2, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    mul-float v3, v2, v0

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mTotalLine:I

    iget v1, p0, Lcom/agc/asv/ShadowRulerView;->mInitValue:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, v0

    iget v3, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/agc/asv/ShadowRulerView;->mInitIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectorValue="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",minValue="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",maxValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",per="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",mInitIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mInitIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget p1, p0, Lcom/agc/asv/ShadowRulerView;->mTotalLine:I

    add-int/lit8 p1, p1, -0x1

    neg-int p1, p1

    int-to-float p1, p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mLineSpaceWidth:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mMaxOffset:I

    iget p1, p0, Lcom/agc/asv/ShadowRulerView;->mMinValue:F

    iget p3, p0, Lcom/agc/asv/ShadowRulerView;->mSelectorValue:F

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/agc/asv/ShadowRulerView;->mPerValue:F

    div-float/2addr p1, p3

    mul-float/2addr p1, p2

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOffset--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "=====mMaxOffset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mMaxOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  mTotalLine  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/ShadowRulerView;->mTotalLine:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setValue(Lcom/agc/asv/ShadowModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/agc/asv/ShadowModel;->getInitProcess()F

    move-result v0

    iput v0, p0, Lcom/agc/asv/ShadowRulerView;->mInitValue:F

    invoke-virtual {p0}, Lcom/agc/asv/ShadowRulerView;->vibrate()V

    invoke-virtual {p1}, Lcom/agc/asv/ShadowModel;->getProcess()F

    move-result v0

    invoke-virtual {p1}, Lcom/agc/asv/ShadowModel;->getMinValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/agc/asv/ShadowModel;->getMaxValue()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/agc/asv/ShadowRulerView;->setValue(FFF)V

    return-void
.end method

.method public vibrate()V
    .locals 2

    const-string v0, "vibrate"

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/asv/ShadowRulerView;->vib:Landroid/os/Vibrator;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
