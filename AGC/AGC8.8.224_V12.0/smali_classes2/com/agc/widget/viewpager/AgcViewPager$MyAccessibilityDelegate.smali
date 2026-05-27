.class Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/viewpager/AgcViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/viewpager/AgcViewPager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/viewpager/AgcViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget-object v0, v0, Lcom/agc/widget/viewpager/AgcViewPager;->mAdapter:Lcom/agc/widget/viewpager/AgcPagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget-object p1, p1, Lcom/agc/widget/viewpager/AgcViewPager;->mAdapter:Lcom/agc/widget/viewpager/AgcPagerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget p1, p1, Lcom/agc/widget/viewpager/AgcViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget p1, p1, Lcom/agc/widget/viewpager/AgcViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class p1, Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/agc/widget/viewpager/AgcViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/agc/widget/viewpager/AgcViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/agc/widget/viewpager/AgcViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget p2, p1, Lcom/agc/widget/viewpager/AgcViewPager;->mCurItem:I

    sub-int/2addr p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lcom/agc/widget/viewpager/AgcViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1, p3}, Lcom/agc/widget/viewpager/AgcViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$MyAccessibilityDelegate;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    iget p2, p1, Lcom/agc/widget/viewpager/AgcViewPager;->mCurItem:I

    add-int/2addr p2, p3

    goto :goto_0

    :cond_4
    return v0
.end method
