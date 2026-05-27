.class public abstract Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field private final mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgcRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public onAnimation(II)V
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->stop()V

    :cond_1
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_4
    const-string v1, "AgcRecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result p1

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;

    invoke-virtual {p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_6
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public abstract onSeekTargetStep(IILcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetFound(Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method public start(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V
    .locals 2

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->stop()V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgcRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mTargetPosition:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onStart()V

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->postOnAnimation()V

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mStarted:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRunning:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->onStop()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mTargetPosition:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mTargetPosition:I

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    return-void
.end method
