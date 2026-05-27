.class Lcom/agc/widget/recyclerview/SnapHelper$2;
.super Lcom/agc/widget/recyclerview/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/SnapHelper;->createSnapScroller(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/SnapHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/SnapHelper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$2;->this$0:Lcom/agc/widget/recyclerview/SnapHelper;

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public onTargetFound(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;)V
    .locals 2

    iget-object p2, p0, Lcom/agc/widget/recyclerview/SnapHelper$2;->this$0:Lcom/agc/widget/recyclerview/SnapHelper;

    iget-object v0, p2, Lcom/agc/widget/recyclerview/SnapHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/agc/widget/recyclerview/SnapHelper;->calculateDistanceToFinalSnap(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
