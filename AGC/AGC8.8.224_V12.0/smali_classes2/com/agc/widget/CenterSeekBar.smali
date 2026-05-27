.class public Lcom/agc/widget/CenterSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final CLICK_ON_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CenterSeekBar"


# instance fields
.field private final EMPTY:D

.field private initProgress:D

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mFlag:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBarChangeListener:Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;

.field private mSeekBarHeight:I

.field private mSeekBarWidth:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbCenterPosition:D

.field private mThumbHeight:I

.field private mThumbTextHeight:I

.field private mThumbWidth:I

.field private maxProgress:I

.field private minProgress:I

.field private progress:D


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/CenterSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/CenterSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/agc/widget/CenterSeekBar;->EMPTY:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    const/16 v2, 0xc

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingLeft:I

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingRight:I

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingTop:I

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingBottom:I

    iput v2, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    iput-wide v0, p0, Lcom/agc/widget/CenterSeekBar;->initProgress:D

    sget-object v3, Lcom/agc/R$styleable;->CenterSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_thumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_progressDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/agc/R$drawable;->seekbar_progress:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_backgroundDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/agc/R$drawable;->seekbar_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-wide p2, p0, Lcom/agc/widget/CenterSeekBar;->initProgress:D

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_2

    iput-wide p2, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    goto :goto_0

    :cond_2
    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_seekBarProgress:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-double p2, p2

    iput-wide p2, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_min:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    sget p2, Lcom/agc/R$styleable;->CenterSeekBar_max:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    :goto_0
    iget-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    iget-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    iget-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbHeight:I

    iget-object p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    const/16 p2, 0x28

    iput p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbTextHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getMThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    return v0
.end method

.method public getProgress()D
    .locals 2

    iget-wide v0, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    return-wide v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    div-int/lit8 v4, v3, 0x2

    iget v5, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v6, v1

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    invoke-virtual {v0, v2, v4, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    iget v2, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    div-int/lit8 v5, v4, 0x2

    iget v6, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    double-to-int v0, v0

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    invoke-virtual {v3, v2, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_0
    div-int/lit8 v3, v2, 0x2

    int-to-double v3, v3

    cmpg-double v3, v0, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    double-to-int v0, v0

    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    div-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v5, v5, 0x2

    :goto_0
    add-int/2addr v1, v5

    invoke-virtual {v3, v0, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    double-to-int v0, v0

    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    div-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v5, v5, 0x2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-wide v1, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    double-to-int v1, v1

    iget v2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onMeasure(II)V
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/CenterSeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/agc/widget/CenterSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->mMinWidth:I

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    iget v5, p0, Lcom/agc/widget/CenterSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, v0

    :goto_1
    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingLeft:I

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingRight:I

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingTop:I

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mPaddingBottom:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-static {v3, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    iget-wide v1, p0, Lcom/agc/widget/CenterSeekBar;->initProgress:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    cmpl-double p1, v1, p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    int-to-double v3, p1

    iget p1, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    int-to-double v5, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/agc/widget/CenterSeekBar;->setProgress(DDD)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    :goto_2
    iget p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    iget p2, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->mFlag:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/2addr v3, v2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    iget v4, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    :goto_0
    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    iget v3, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    sub-int v4, v0, v3

    int-to-float v5, v4

    mul-float/2addr v5, p1

    float-to-double v5, v5

    iget p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    iget v7, p0, Lcom/agc/widget/CenterSeekBar;->mThumbWidth:I

    sub-int/2addr p1, v7

    int-to-double v8, p1

    mul-double/2addr v8, v5

    int-to-double v10, v4

    div-double/2addr v8, v10

    div-int/2addr v7, v2

    int-to-double v10, v7

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    int-to-double v2, v3

    add-double v7, v5, v2

    iput-wide v7, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    int-to-double v9, v0

    cmpl-double p1, v5, v9

    if-lez p1, :cond_3

    iput-wide v9, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    goto :goto_1

    :cond_3
    cmpg-double p1, v7, v2

    if-gez p1, :cond_4

    iput-wide v2, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarChangeListener:Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    iget-wide v2, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    invoke-interface {p1, p0, v2, v3, v1}, Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/agc/widget/CenterSeekBar;DZ)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    const/16 p1, 0xc

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarChangeListener:Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/agc/widget/CenterSeekBar;)V

    goto :goto_2

    :cond_7
    iput v1, p0, Lcom/agc/widget/CenterSeekBar;->mFlag:I

    const/16 p1, 0x28

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget-object p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarChangeListener:Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/agc/widget/CenterSeekBar;)V

    :cond_9
    :goto_2
    return v1
.end method

.method public setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    return-void
.end method

.method public setMinProgress(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarChangeListener:Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(DDD)V
    .locals 4

    iget v0, p0, Lcom/agc/widget/CenterSeekBar;->mSeekBarWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iput-wide p1, p0, Lcom/agc/widget/CenterSeekBar;->initProgress:D

    double-to-int p1, p3

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->maxProgress:I

    double-to-int p1, p5

    iput p1, p0, Lcom/agc/widget/CenterSeekBar;->minProgress:I

    return-void

    :cond_0
    cmpg-double v2, p1, p3

    if-gez v2, :cond_1

    cmpl-double v2, p1, p5

    if-lez v2, :cond_1

    iput-wide p1, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    goto :goto_0

    :cond_1
    iput-wide p5, p0, Lcom/agc/widget/CenterSeekBar;->progress:D

    :goto_0
    sub-double/2addr p1, p5

    mul-double/2addr p1, v0

    sub-double/2addr p3, p5

    div-double/2addr p1, p3

    iput-wide p1, p0, Lcom/agc/widget/CenterSeekBar;->mThumbCenterPosition:D

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
