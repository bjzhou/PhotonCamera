.class Lcom/agc/widget/recyclerview/FastScroller;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/FastScroller$AnimatorListener;,
        Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;,
        Lcom/agc/widget/recyclerview/FastScroller$AnimationState;,
        Lcom/agc/widget/recyclerview/FastScroller$DragState;,
        Lcom/agc/widget/recyclerview/FastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

.field private mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/agc/widget/recyclerview/FastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/agc/widget/recyclerview/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    new-instance v0, Lcom/agc/widget/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/FastScroller$1;-><init>(Lcom/agc/widget/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/agc/widget/recyclerview/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/FastScroller$2;-><init>(Lcom/agc/widget/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mOnScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackWidth:I

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackHeight:I

    iput p7, p0, Lcom/agc/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    iput p8, p0, Lcom/agc/widget/recyclerview/FastScroller;->mMargin:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Lcom/agc/widget/recyclerview/FastScroller$AnimatorListener;

    invoke-direct {p2, p0}, Lcom/agc/widget/recyclerview/FastScroller$AnimatorListener;-><init>(Lcom/agc/widget/recyclerview/FastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;

    invoke-direct {p2, p0}, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;-><init>(Lcom/agc/widget/recyclerview/FastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->attachToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeOnItemTouchListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mOnScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->cancelHide()V

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbCenterX:I

    iget v3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbCenterY:I

    iget v3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private getHorizontalRange()[I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/agc/widget/recyclerview/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v0, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resetHideDelay(I)V
    .locals 4

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->cancelHide()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method private setupCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addOnItemTouchListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mOnScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/agc/widget/recyclerview/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v7, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->destroyCallbacks()V

    :cond_1
    iput-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->setupCallbacks()V

    :cond_2
    return-void
.end method

.method public getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide(I)V
    .locals 5

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public isDragging()Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointInsideHorizontalThumb(FF)Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbCenterX:I

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .locals 2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbCenterY:I

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    iget p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/recyclerview/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/agc/widget/recyclerview/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    iput v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalDragY:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)V
    .locals 4

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/recyclerview/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/agc/widget/recyclerview/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iput v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalDragY:F

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalDragY:F

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/FastScroller;->show()V

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->horizontalScrollTo(F)V

    :cond_6
    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mDragState:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/FastScroller;->verticalScrollTo(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public requestRedraw()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/agc/widget/recyclerview/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/FastScroller;->cancelHide()V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/FastScroller;->requestRedraw()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/FastScroller;->show()V

    :goto_0
    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/agc/widget/recyclerview/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/16 v0, 0x4b0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    :goto_1
    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/FastScroller;->resetHideDelay(I)V

    :cond_3
    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    return-void
.end method

.method public show()V
    .locals 5

    iget v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mAnimationState:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public updateScrollPosition(II)V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p0, Lcom/agc/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Lcom/agc/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v7, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    :cond_2
    return-void

    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v7, :cond_4

    int-to-float p2, p2

    int-to-float v6, v1

    div-float v7, v6, v3

    add-float/2addr p2, v7

    mul-float/2addr v6, p2

    int-to-float p2, v0

    div-float/2addr v6, p2

    float-to-int p2, v6

    iput p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbCenterY:I

    mul-int p2, v1, v1

    div-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    :cond_4
    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_5

    int-to-float p1, p1

    int-to-float p2, v5

    div-float v0, p2, v3

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    :cond_5
    iget p1, p0, Lcom/agc/widget/recyclerview/FastScroller;->mState:I

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Lcom/agc/widget/recyclerview/FastScroller;->setState(I)V

    :cond_7
    return-void
.end method
