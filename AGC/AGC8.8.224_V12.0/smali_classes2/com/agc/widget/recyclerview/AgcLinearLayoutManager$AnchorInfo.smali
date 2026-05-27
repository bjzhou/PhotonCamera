.class Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method


# virtual methods
.method public assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method public assignFromView(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    return-void

    :cond_0
    iput p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_2

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v3, p1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_2
    :goto_0
    return-void
.end method

.method public isViewValidAsAnchor(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mValid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
