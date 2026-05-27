.class Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iput p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    return-void
.end method


# virtual methods
.method public appendToSpan(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method public cacheReferenceLineAndClear(ZI)V
    .locals 3

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    if-le v1, p1, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eq p2, v0, :cond_5

    add-int/2addr v1, p2

    :cond_5
    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method public calculateCachedEnd()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-boolean v0, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    return-void
.end method

.method public calculateCachedStart()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-boolean v0, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .locals 10

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p2, p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eq p1, p2, :cond_9

    iget-object v5, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v6, v6, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v7, v7, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz p5, :cond_1

    if-gt v6, v1, :cond_2

    goto :goto_1

    :cond_1
    if-ge v6, v1, :cond_2

    :goto_1
    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    if-eqz p5, :cond_3

    if-lt v7, v0, :cond_4

    goto :goto_3

    :cond_3
    if-le v7, v0, :cond_4

    :goto_3
    move v8, v3

    :cond_4
    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    if-lt v6, v0, :cond_8

    if-gt v7, v1, :cond_8

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {p1, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_6
    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    if-lt v6, v0, :cond_5

    if-le v7, v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/2addr p1, v4

    goto :goto_0

    :cond_9
    return v2
.end method

.method public findOnePartiallyVisibleChild(IIZ)I
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result p1

    return p1
.end method

.method public findOneVisibleChild(IIZ)I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result p1

    return p1
.end method

.method public getDeletedSize()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method public getEndLine(I)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return p1
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return-object p1
.end method

.method public getStartLine()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method public getStartLine(I)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return p1
.end method

.method public invalidateCache()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method public onOffset(I)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_1
    return-void
.end method

.method public popEnd()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_1
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_2
    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method public popStart()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    iput v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    iput v3, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method public prependToSpan(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method public setLine(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method
