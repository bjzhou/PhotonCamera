.class Lcom/agc/widget/recyclerview/OrientationHelper$1;
.super Lcom/agc/widget/recyclerview/OrientationHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/OrientationHelper;->createHorizontalHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/OrientationHelper;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Lcom/agc/widget/recyclerview/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getEnd()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public offsetChildren(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    return-void
.end method
