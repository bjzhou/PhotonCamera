.class public final Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRequestedCacheMax:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    instance-of v1, v0, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;->saveOriginalDelegate(Landroid/view/View;)V

    :cond_2
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_3
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIJ)Z
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p4, p4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p4, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->bindViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getNanoTime()J

    move-result-wide p4

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p3, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addViewHolderToRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V
    .locals 4

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    instance-of v3, v1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate$ItemDelegate;->getAndRemoveOriginalDelegateForItem(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->dispatchViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_2
    iput-object v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iput-object v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->putRecycledView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 6

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/agc/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIJ)Z

    iget-object p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    :goto_0
    check-cast p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    iput-object p1, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistency detected. Invalid item position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "(offset:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ").state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method public clearOldPositions()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public clearScrap()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". State item count is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;->onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;->onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewRecycled(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_3
    return-void
.end method

.method public getChangedScrapViewForPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 9

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v5, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    if-lez p1, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    invoke-virtual {p1, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    return-object v0
.end method

.method public getScrapCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method public getScrapOrCachedViewForId(JIZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p2, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->unhide(Landroid/view/View;)V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {p2, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, p2}, Lcom/agc/widget/recyclerview/ChildHelper;->detachViewFromParent(I)V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_6

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScrapViewAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewForPosition(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public markItemDecorInsetsDirty()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public markKnownViewsInvalid()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_3
    return-void
.end method

.method public offsetPositionRecordsForInsert(II)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    invoke-virtual {v3, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public offsetPositionRecordsForMove(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v6, :cond_3

    iget v7, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v1, :cond_3

    if-le v7, v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Z)V

    return-void
.end method

.method public quickRecycleScrapView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public recycleAndClearCachedViews()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_1
    return-void
.end method

.method public recycleCachedViewAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimation(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_3
    return-void
.end method

.method public recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 6

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onFailedToRecycleView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_6

    :cond_3
    :goto_1
    iget v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheMax:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    sget-boolean v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    iget v5, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v5, v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    :cond_7
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_9

    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V

    goto :goto_5

    :cond_9
    move v2, v1

    :goto_5
    move v1, v3

    :goto_6
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->removeViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    :cond_a
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from AgcRecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrapView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->canReuseUpdatedViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setScrapContainer(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setScrapContainer(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->detach()V

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->attach()V

    :cond_1
    return-void
.end method

.method public setViewCacheExtension(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheExtension:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRequestedCacheMax:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->updateViewCacheSize()V

    return-void
.end method

.method public tryGetViewHolderForPositionByDeadline(IZJ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_18

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_18

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_10

    iget-object v5, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v5, v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v5, v3}, Lcom/agc/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v5

    if-ltz v5, :cond_f

    iget-object v9, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v5, v9, :cond_f

    iget-object v9, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v9, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    iget-object v10, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v10, v10, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    iput v5, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    move v4, v7

    :cond_7
    if-nez v1, :cond_a

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheExtension:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v6, v3, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->resetInternal()V

    sget-boolean v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v1, :cond_b

    invoke-direct {v6, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->invalidateDisplayListInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_b
    move-object v1, v0

    :cond_c
    if-nez v1, :cond_10

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_d

    iget-object v10, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v5

    if-nez v5, :cond_d

    return-object v2

    :cond_d
    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v5, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v5, v2, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    sget-boolean v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_e

    iget-object v5, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v5, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getNanoTime()J

    move-result-wide v10

    iget-object v5, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRecyclerPool:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move-object v9, v2

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, v1

    :goto_4
    move v10, v4

    if-eqz v10, :cond_11

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2000

    invoke-virtual {v9, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v9, v8, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setFlags(II)V

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_11

    invoke-static {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v1, v9, v0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;ILjava/util/List;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v9, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_11
    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    iput v3, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    :cond_12
    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    move v0, v8

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0, v3}, Lcom/agc/widget/recyclerview/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIJ)Z

    move-result v0

    :goto_7
    iget-object v1, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_8
    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v2, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_15
    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_8

    :cond_16
    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    :goto_9
    iput-object v9, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v10, :cond_17

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    move v7, v8

    :goto_a
    iput-boolean v7, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-object v9

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 1

    iget-boolean v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method public updateViewCacheSize()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheMax:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mViewCacheMax:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public validateViewHolderForOffsetPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result p1

    return p1

    :cond_0
    iget v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iget v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iget p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public viewRangeUpdate(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
