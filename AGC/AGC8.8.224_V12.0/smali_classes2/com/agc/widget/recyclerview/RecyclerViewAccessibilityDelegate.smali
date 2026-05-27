.class public Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;
    }
.end annotation


# instance fields
.field private final mItemDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

.field final mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-direct {p1, p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;-><init>(Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    :goto_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mItemDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mItemDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public shouldIgnore()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
