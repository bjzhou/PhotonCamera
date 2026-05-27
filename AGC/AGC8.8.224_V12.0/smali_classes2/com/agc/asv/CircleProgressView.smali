.class public Lcom/agc/asv/CircleProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;
    }
.end annotation


# static fields
.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_CLIP:I = 0x1


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mDefaultWidth:I

.field private mDuration:I

.field private mEndAngle:I

.field private mListener:Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;

.field private mProgress:F

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressType:I

.field private mProgressWidth:I

.field private mRectf:Landroid/graphics/RectF;

.field private mShowAnimation:Z

.field private mStartAngle:I

.field private mTotalProgress:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/asv/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/asv/CircleProgressView;->mProgressType:I

    invoke-direct {p0}, Lcom/agc/asv/CircleProgressView;->initPaint()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mDefaultWidth:I

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    const-string p1, "#ffffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressColor:I

    const-string p1, "#4dffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundColor:I

    const/16 p1, -0x5a

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mStartAngle:I

    const/16 p1, 0x10e

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mEndAngle:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/asv/CircleProgressView;->mShowAnimation:Z

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mDuration:I

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mProgressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/asv/CircleProgressView;)F
    .locals 0

    iget p0, p0, Lcom/agc/asv/CircleProgressView;->mProgress:F

    return p0
.end method

.method public static synthetic access$002(Lcom/agc/asv/CircleProgressView;F)F
    .locals 0

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgress:F

    return p1
.end method

.method public static synthetic access$100(Lcom/agc/asv/CircleProgressView;)Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/CircleProgressView;->mListener:Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/asv/CircleProgressView;)F
    .locals 0

    iget p0, p0, Lcom/agc/asv/CircleProgressView;->mTotalProgress:F

    return p0
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/asv/DisplayHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    if-ge v0, p1, :cond_2

    move v0, p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/agc/asv/CircleProgressView;->mDefaultWidth:I

    mul-int/lit8 v0, p1, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method private measureWidth(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/asv/DisplayHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    if-ge v0, p1, :cond_2

    move v0, p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/agc/asv/CircleProgressView;->mDefaultWidth:I

    mul-int/lit8 v0, p1, 0x2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/agc/asv/CircleProgressView;->mViewWidth:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/agc/asv/CircleProgressView;->mRectf:Landroid/graphics/RectF;

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressType:I

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x43b40000    # 360.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v2, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v9, p0, Lcom/agc/asv/CircleProgressView;->mRectf:Landroid/graphics/RectF;

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mStartAngle:I

    int-to-float v10, v0

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mProgress:F

    mul-float/2addr v0, v7

    div-float v11, v0, v6

    iget-object v13, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/agc/asv/CircleProgressView;->mStartAngle:I

    int-to-float v2, v0

    iget v3, p0, Lcom/agc/asv/CircleProgressView;->mEndAngle:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v5, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0, p1}, Lcom/agc/asv/CircleProgressView;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/agc/asv/CircleProgressView;->measureHeight(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mViewWidth:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundCircleColor(I)V
    .locals 1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundColor:I

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mDuration:I

    return-void
.end method

.method public setEndAngle(I)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mEndAngle:I

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CircleProgressView;->mListener:Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(FZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/agc/asv/CircleProgressView;->mShowAnimation:Z

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mProgressType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p1, p0, Lcom/agc/asv/CircleProgressView;->mEndAngle:I

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mStartAngle:I

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mTotalProgress:F

    goto :goto_0

    :cond_0
    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/agc/asv/CircleProgressView;->mTotalProgress:F

    :goto_0
    iget-object p2, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean p2, p0, Lcom/agc/asv/CircleProgressView;->mShowAnimation:Z

    if-eqz p2, :cond_2

    new-array p2, v0, [F

    const/4 v0, 0x0

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/agc/asv/CircleProgressView;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/agc/asv/CircleProgressView$1;

    invoke-direct {p2, p0}, Lcom/agc/asv/CircleProgressView$1;-><init>(Lcom/agc/asv/CircleProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressColor:I

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setProgressType(I)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressType:I

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 1

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mProgressWidth:I

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/CircleProgressView;->mStartAngle:I

    return-void
.end method
