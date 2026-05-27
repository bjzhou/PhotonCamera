.class public Lcom/agc/widget/lut/indicator/ViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimatorView:Landroid/view/View;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mIndicatorView:Landroid/view/View;

.field private mLeftMagrin:F

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mTabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContainer:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mAnimatorView:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/lut/indicator/ViewHelper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/indicator/ViewHelper;->setLeftMagrin(F)V

    return-void
.end method

.method private initTabContainer()V
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setLeftMagrin(F)V
    .locals 1

    iput p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mLeftMagrin:F

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mLeftMagrin:F

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addTabView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/lut/indicator/ViewHelper;->initTabContainer()V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public scrollIndicator(I)V
    .locals 4

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mAnimatorView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mLeftMagrin:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/agc/widget/lut/indicator/ViewHelper$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/lut/indicator/ViewHelper$1;-><init>(Lcom/agc/widget/lut/indicator/ViewHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollIndicator(IF)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/indicator/ViewHelper;->setLeftMagrin(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndicatorView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTabWidth(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper;->mTabWidth:I

    return-void
.end method
