.class public Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public hasJumpTarget()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method public runIfNecessary(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 5

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->validate()V

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "AgcRecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    return-void
.end method

.method public setDx(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDx:I

    return-void
.end method

.method public setDy(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDy:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
