.class Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Landroid/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 2

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(II)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    int-to-float p1, p1

    int-to-float p2, v1

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private internalPostOnAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 12

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    :cond_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iget v6, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v4, v6

    iget v7, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v13, v5, v7

    iput v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingX:I

    iput v5, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v7, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v10, v7, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v2, v10, v2

    aput v2, v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr v6, v5

    aget v4, v4, v3

    sub-int/2addr v13, v4

    :cond_1
    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4, v6, v13}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_2
    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v7, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v7, :cond_5

    iget-object v7, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v2, v7, v2

    aput v2, v7, v3

    invoke-virtual {v4, v6, v13, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v7, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    aget v7, v7, v3

    sub-int/2addr v6, v8

    sub-int/2addr v13, v7

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_4

    sub-int/2addr v9, v3

    invoke-virtual {v4, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->setTargetPosition(I)V

    :cond_4
    invoke-virtual {v4, v8, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    :cond_5
    move v7, v2

    move v8, v7

    :cond_6
    :goto_0
    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v14, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v14, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    invoke-virtual/range {v14 .. v21}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v6, v10

    aget v9, v9, v3

    sub-int/2addr v13, v9

    if-nez v8, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {v4, v8, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchOnScrolled(II)V

    :cond_9
    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->access$200(Lcom/agc/widget/recyclerview/AgcRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_a
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v4, v9, :cond_b

    move v4, v3

    goto :goto_1

    :cond_b
    move v4, v2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_c

    move v9, v3

    goto :goto_2

    :cond_c
    move v9, v2

    :goto_2
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_f

    if-nez v4, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    if-nez v9, :cond_f

    if-eqz v13, :cond_e

    goto :goto_3

    :cond_e
    move v4, v2

    goto :goto_4

    :cond_f
    :goto_3
    move v4, v3

    :goto_4
    iget-object v9, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v9, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v9, v9, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_10

    move v9, v3

    goto :goto_5

    :cond_10
    move v9, v2

    :goto_5
    if-nez v9, :cond_16

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_15

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_11

    neg-int v4, v1

    goto :goto_6

    :cond_11
    if-lez v6, :cond_12

    move v4, v1

    goto :goto_6

    :cond_12
    move v4, v2

    :goto_6
    if-gez v13, :cond_13

    neg-int v1, v1

    goto :goto_7

    :cond_13
    if-lez v13, :cond_14

    goto :goto_7

    :cond_14
    move v1, v2

    :goto_7
    iget-object v5, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v5, v4, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->absorbGlows(II)V

    :cond_15
    sget-boolean v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->postOnAnimation()V

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    if-eqz v4, :cond_17

    invoke-virtual {v4, v1, v8, v7}, Lcom/agc/widget/recyclerview/GapWorker;->postFromTraversal(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    :cond_17
    :goto_8
    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mSmoothScroller:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1, v2, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onAnimation(II)V

    :cond_18
    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_9

    :cond_19
    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopNestedScroll(I)V

    :goto_9
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->computeScrollDuration(II)I

    move-result p3

    :cond_0
    move v5, p3

    if-nez p4, :cond_1

    sget-object p4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_2

    iput-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance p3, Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    :cond_2
    const/4 p3, 0x0

    iput p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingY:I

    iput p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_3
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
