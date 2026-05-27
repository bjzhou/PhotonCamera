.class public Lcom/agc/widget/lut/indicator/ViewPagerIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;
.implements Lcom/agc/widget/lut/indicator/Indicator;


# instance fields
.field private mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

.field private mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

.field private mContext:Landroid/content/Context;

.field private mCureentItem:I

.field private mIsClick:Z

.field private mPageChangeListener:Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

.field private mVisibleTabCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mVisibleTabCount:I

    iput p3, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mCureentItem:I

    iput-boolean p3, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mIsClick:Z

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->initView()V

    invoke-direct {p0, p2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->initAttribute(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mVisibleTabCount:I

    return p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/ViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/IndicatorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private initAttribute(Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 2

    new-instance v0, Lcom/agc/widget/lut/indicator/ViewHelper;

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/agc/widget/lut/indicator/ViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v0}, Lcom/agc/widget/lut/indicator/ViewHelper;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private scrollToPosition(I)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/lut/indicator/ViewHelper;->scrollIndicator(I)V

    return-void
.end method

.method private setItemClickEvent(Landroid/view/View;I)V
    .locals 1

    new-instance v0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;

    invoke-direct {v0, p0, p2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;-><init>(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setItemParams()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mVisibleTabCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcViewPager;->getAdapter()Lcom/agc/widget/viewpager/AgcPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->getCount()I

    move-result v0

    new-instance v1, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;

    invoke-direct {v1, p0, v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;-><init>(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;I)V

    iput-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getVisibleTabCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mVisibleTabCount:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mIsClick:Z

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mPageChangeListener:Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->scroll(IF)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mPageChangeListener:Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    iget v2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mCureentItem:I

    invoke-virtual {v1, v2}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;->restoreTabView(Landroid/view/View;)V

    iput p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mCureentItem:I

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;->highLightTabView(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mPageChangeListener:Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public scroll(IF)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, p1

    add-float/2addr v2, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-boolean v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mIsClick:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/lut/indicator/ViewHelper;->scrollIndicator(IF)V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/agc/widget/viewpager/AgcViewPager;Lcom/agc/widget/lut/indicator/IndicatorAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/viewpager/AgcViewPager;",
            "Lcom/agc/widget/lut/indicator/IndicatorAdapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    iput-object p2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    invoke-virtual {p1}, Lcom/agc/widget/viewpager/AgcViewPager;->getAdapter()Lcom/agc/widget/viewpager/AgcPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->getCount()I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v0}, Lcom/agc/widget/lut/indicator/ViewHelper;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {p2, v0}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;->getTabView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/agc/widget/lut/indicator/ViewHelper;->addTabView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setItemParams()V

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mAdapter:Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    iget p2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mCureentItem:I

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mContanierGroup:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {v0, p2}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;->highLightTabView(ILandroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1, p0}, Lcom/agc/widget/viewpager/AgcViewPager;->setOnPageChangeListener(Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "adapter is null..."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "viewPager is null..."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdapter(Lcom/agc/widget/viewpager/AgcViewPager;Lcom/agc/widget/lut/indicator/IndicatorAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/viewpager/AgcViewPager;",
            "Lcom/agc/widget/lut/indicator/IndicatorAdapter<",
            "*>;I)V"
        }
    .end annotation

    iput p3, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mCureentItem:I

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setAdapter(Lcom/agc/widget/viewpager/AgcViewPager;Lcom/agc/widget/lut/indicator/IndicatorAdapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mIsClick:Z

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0, p1}, Lcom/agc/widget/viewpager/AgcViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setOnPageChangeListener(Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mPageChangeListener:Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;

    return-void
.end method

.method public setVisibleTabCount(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->mVisibleTabCount:I

    return-void
.end method
