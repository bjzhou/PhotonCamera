.class Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;
.implements Lcom/agc/widget/viewpager/AgcViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/viewpager/AgcPagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;


# direct methods
.method public constructor <init>(Lcom/agc/widget/viewpager/AgcPagerTitleStrip;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lcom/agc/widget/viewpager/AgcViewPager;Lcom/agc/widget/viewpager/AgcPagerAdapter;Lcom/agc/widget/viewpager/AgcPagerAdapter;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    invoke-virtual {p1, p2, p3}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateAdapter(Lcom/agc/widget/viewpager/AgcPagerAdapter;Lcom/agc/widget/viewpager/AgcPagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget-object v1, v0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v1}, Lcom/agc/widget/viewpager/AgcViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget-object v2, v2, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v2}, Lcom/agc/widget/viewpager/AgcViewPager;->getAdapter()Lcom/agc/widget/viewpager/AgcPagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateText(ILcom/agc/widget/viewpager/AgcPagerAdapter;)V

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget v1, v0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v2, v0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v2}, Lcom/agc/widget/viewpager/AgcViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object p3, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->mScrollState:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget-object v0, p1, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget-object v1, v1, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v1}, Lcom/agc/widget/viewpager/AgcViewPager;->getAdapter()Lcom/agc/widget/viewpager/AgcPagerAdapter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateText(ILcom/agc/widget/viewpager/AgcPagerAdapter;)V

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTitleStrip$PageListener;->this$0:Lcom/agc/widget/viewpager/AgcPagerTitleStrip;

    iget v0, p1, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v1, p1, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v1}, Lcom/agc/widget/viewpager/AgcViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_1
    return-void
.end method
