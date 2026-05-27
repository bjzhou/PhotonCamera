.class public Lcom/agc/asv/RulerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/RulerView$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private mAlphaEnable:Z

.field private mHeight:I

.field private mLastX:I

.field private mLineColor:I

.field private mLineMidHeight:F

.field private mLineMinHeight:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineSpaceWidth:F

.field private mLineWidth:F

.field private mListener:Lcom/agc/asv/RulerView$OnValueChangeListener;

.field private mMaxOffset:I

.field private mMaxValue:F

.field private mMiddLineColor:I

.field private mMiddleLinePaint:Landroid/graphics/Paint;

.field private mMinValue:F

.field private mMinVelocity:I

.field private mMove:I

.field private mOffset:F

.field private mPerValue:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectorValue:F

.field private mTotalLine:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I

.field private tempValue:F

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/asv/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42480000    # 50.0f

    iput p3, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    const/high16 p3, 0x42c80000    # 100.0f

    iput p3, p0, Lcom/agc/asv/RulerView;->mMaxValue:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/agc/asv/RulerView;->mPerValue:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/agc/asv/RulerView;->mLineWidth:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/agc/asv/RulerView;->mLineMidHeight:F

    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/agc/asv/RulerView;->mLineMinHeight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/asv/RulerView;->mAlphaEnable:Z

    const v0, -0x777778

    iput v0, p0, Lcom/agc/asv/RulerView;->mLineColor:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/asv/RulerView;->mMiddLineColor:I

    iput p3, p0, Lcom/agc/asv/RulerView;->tempValue:F

    invoke-virtual {p0, p1, p2}, Lcom/agc/asv/RulerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private changeMoveAndValue()V
    .locals 5

    iget v0, p0, Lcom/agc/asv/RulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/RulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/agc/asv/RulerView;->mOffset:F

    iput v4, p0, Lcom/agc/asv/RulerView;->mMove:I

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/agc/asv/RulerView;->mPerValue:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private countMoveEnd()V
    .locals 4

    iget v0, p0, Lcom/agc/asv/RulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/RulerView;->mOffset:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/agc/asv/RulerView;->mOffset:F

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/asv/RulerView;->mLastX:I

    iput v0, p0, Lcom/agc/asv/RulerView;->mMove:I

    iget v0, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/agc/asv/RulerView;->mPerValue:F

    mul-float/2addr v1, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v0, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/agc/asv/RulerView;->mOffset:F

    invoke-direct {p0}, Lcom/agc/asv/RulerView;->notifyValueChange()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private countVelocityTracker()V
    .locals 11

    const-string v0, "zkk---"

    const-string v1, "countVelocityTracker-"

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/agc/asv/RulerView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

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
    .locals 3

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mListener:Lcom/agc/asv/RulerView$OnValueChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    invoke-interface {v0, v1}, Lcom/agc/asv/RulerView$OnValueChangeListener;->onValueChange(F)V

    iget v0, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/agc/asv/RulerView;->tempValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/agc/asv/RulerView;->tempValue:F

    invoke-virtual {p0}, Lcom/agc/asv/RulerView;->vibrate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    const-string v0, "zkk---"

    const-string v1, "computeScroll-"

    invoke-static {v0, v1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/agc/asv/RulerView;->countMoveEnd()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/agc/asv/RulerView;->mLastX:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/agc/asv/RulerView;->mMove:I

    invoke-direct {p0}, Lcom/agc/asv/RulerView;->changeMoveAndValue()V

    iput v0, p0, Lcom/agc/asv/RulerView;->mLastX:I

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string p2, "zkk---"

    const-string v0, "init"

    invoke-static {p2, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/agc/asv/RulerView;->vib:Landroid/os/Vibrator;

    const/high16 p1, 0x41c80000    # 25.0f

    invoke-static {p1}, Lcom/agc/asv/RulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/agc/asv/RulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/RulerView;->mLineWidth:F

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {p1}, Lcom/agc/asv/RulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/RulerView;->mLineMidHeight:F

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {p1}, Lcom/agc/asv/RulerView;->myfloat(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/RulerView;->mLineMinHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/agc/asv/RulerView;->mMinVelocity:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/agc/asv/RulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/RulerView;->mLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/RulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/agc/asv/RulerView;->mLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/agc/asv/RulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/RulerView;->mLineWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/RulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/RulerView;->mMiddLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    iget p2, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    iget v0, p0, Lcom/agc/asv/RulerView;->mMaxValue:F

    iget v1, p0, Lcom/agc/asv/RulerView;->mPerValue:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/agc/asv/RulerView;->setValue(FFFF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/agc/asv/RulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/agc/asv/RulerView;->mTotalLine:I

    if-ge v1, v2, :cond_5

    int-to-float v2, v0

    iget v3, p0, Lcom/agc/asv/RulerView;->mOffset:F

    add-float/2addr v3, v2

    int-to-float v4, v1

    iget v5, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    mul-float/2addr v4, v5

    add-float v8, v3, v4

    const/4 v3, 0x0

    cmpg-float v3, v8, v3

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/agc/asv/RulerView;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v8, v3

    if-lez v3, :cond_0

    goto :goto_2

    :cond_0
    rem-int/lit8 v3, v1, 0x5

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    iget v9, p0, Lcom/agc/asv/RulerView;->mLineMidHeight:F

    iget-boolean v3, p0, Lcom/agc/asv/RulerView;->mAlphaEnable:Z

    if-eqz v3, :cond_1

    sub-float v3, v8, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    float-to-int v2, v5

    iget-object v3, p0, Lcom/agc/asv/RulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v10, p0, Lcom/agc/asv/RulerView;->mMiddleLinePaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget v9, p0, Lcom/agc/asv/RulerView;->mLineMinHeight:F

    iget-boolean v3, p0, Lcom/agc/asv/RulerView;->mAlphaEnable:Z

    if-eqz v3, :cond_3

    sub-float v3, v8, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    float-to-int v2, v5

    iget-object v3, p0, Lcom/agc/asv/RulerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    iget-object v10, p0, Lcom/agc/asv/RulerView;->mLinePaint:Landroid/graphics/Paint;

    :goto_1
    const/4 v7, 0x0

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/agc/asv/RulerView;->mWidth:I

    iput p2, p0, Lcom/agc/asv/RulerView;->mHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSizeChanged,mWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/RulerView;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",mHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/RulerView;->mHeight:I

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

    iget-object v2, p0, Lcom/agc/asv/RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/asv/RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v2, p0, Lcom/agc/asv/RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p0, Lcom/agc/asv/RulerView;->mLastX:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/agc/asv/RulerView;->mMove:I

    invoke-direct {p0}, Lcom/agc/asv/RulerView;->changeMoveAndValue()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/agc/asv/RulerView;->countMoveEnd()V

    invoke-direct {p0}, Lcom/agc/asv/RulerView;->countVelocityTracker()V

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/agc/asv/RulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v1, p0, Lcom/agc/asv/RulerView;->mLastX:I

    iput p1, p0, Lcom/agc/asv/RulerView;->mMove:I

    :goto_0
    iput v1, p0, Lcom/agc/asv/RulerView;->mLastX:I

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

.method public setOnValueChangeListener(Lcom/agc/asv/RulerView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/RulerView;->mListener:Lcom/agc/asv/RulerView$OnValueChangeListener;

    return-void
.end method

.method public setValue(FFFF)V
    .locals 2

    iput p1, p0, Lcom/agc/asv/RulerView;->mSelectorValue:F

    iput p3, p0, Lcom/agc/asv/RulerView;->mMaxValue:F

    iput p2, p0, Lcom/agc/asv/RulerView;->mMinValue:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    int-to-float p4, p4

    iput p4, p0, Lcom/agc/asv/RulerView;->mPerValue:F

    mul-float/2addr p3, v0

    mul-float v1, p2, v0

    sub-float/2addr p3, v1

    div-float/2addr p3, p4

    float-to-int p3, p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/agc/asv/RulerView;->mTotalLine:I

    add-int/lit8 p3, p3, -0x1

    neg-int p3, p3

    int-to-float p3, p3

    iget v1, p0, Lcom/agc/asv/RulerView;->mLineSpaceWidth:F

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p0, Lcom/agc/asv/RulerView;->mMaxOffset:I

    sub-float/2addr p2, p1

    div-float/2addr p2, p4

    mul-float/2addr p2, v1

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/agc/asv/RulerView;->mOffset:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOffset--           "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/RulerView;->mOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "         =====mMaxOffset    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/RulerView;->mMaxOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  mTotalLine  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/agc/asv/RulerView;->mTotalLine:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zkk==="

    invoke-static {p2, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public vibrate()V
    .locals 3

    iget-object v0, p0, Lcom/agc/asv/RulerView;->vib:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
