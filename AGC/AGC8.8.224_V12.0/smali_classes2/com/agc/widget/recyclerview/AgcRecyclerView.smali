.class public Lcom/agc/widget/recyclerview/AgcRecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingChild3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$State;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObservable;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$SmoothScroller;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$SimpleOnItemTouchListener;,
        Lcom/agc/widget/recyclerview/AgcRecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "AgcRecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

.field mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

.field mIsAttached:Z

.field mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

.field mRecyclerListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;

.field final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;",
            ">;"
        }
    .end annotation
.end field

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field final mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    sput-boolean v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sput-boolean v2, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    const/16 v2, 0xf

    if-gt v1, v2, :cond_5

    move v4, v0

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    sput-boolean v4, Lcom/agc/widget/recyclerview/AgcRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-gt v1, v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    sput-boolean v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$3;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$3;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    new-instance v0, Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$1;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchItemsChangedEvent:Z

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    new-instance v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    invoke-direct {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;-><init>()V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    new-instance v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    invoke-direct {v1}, Lcom/agc/widget/recyclerview/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledHorizontalScrollFactor:F

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPreserveFocusAfterLayout:Z

    new-instance v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    sget-boolean v3, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPrefetchRegistry:Lcom/agc/widget/recyclerview/GapWorker$LayoutPrefetchRegistryImpl;

    new-instance v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-direct {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;-><init>()V

    iput-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsChanged:Z

    new-instance v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPostedAnimatorRunner:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinMaxLayoutPositions:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    new-instance v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$2;

    invoke-direct {v4, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$2;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    new-instance v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;

    invoke-direct {v4, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$4;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoProcessCallback:Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    invoke-static {v4, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledHorizontalScrollFactor:F

    invoke-static {v4, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledVerticalScrollFactor:F

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMaxFlingVelocity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->setListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->initAdapterManager()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->initChildrenHelper()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->initAutofill()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setAccessibilityDelegateCompat(Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    sget-object v3, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v6, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v4, Landroidx/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v4, Landroidx/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v1, :cond_3

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_3
    sget v1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_clipToPadding:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    sget v1, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEnableFastScroller:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    sget-object v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v6, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v1

    move v9, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/agc/widget/recyclerview/AgcRecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private addAnimatingView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    if-nez v1, :cond_2

    invoke-virtual {p1, v0, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addAnimatingView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    invoke-direct {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addAnimatingView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_1
    iput-object p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addAnimatingView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object p5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p5, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object p1, p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    :cond_2
    iget-object p5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private cancelScroll()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->resetScroll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    return-void
.end method

.method public static clearNestedRecyclerViewIfNotNested(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    sget-object v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p3, v6, v4

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-array p4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setLayoutManager(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception p4

    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v1, ": Error creating LayoutManager "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ": Class is not a LayoutManager "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_3
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ": Cannot access non-public constructor "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_4
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_5
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_6
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ": Unable to find LayoutManager "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget p1, v0, v3

    if-eq p1, p2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->fillRemainingScrollValues(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->clear()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->saveFocusInfo()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mItemCount:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v6

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;ILjava/util/List;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v4, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChangedHolderKey(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToOldChangeHolders(JLcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->saveOldPositions()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v3, v4, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->isInPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_5

    or-int/lit16 v3, v3, 0x1000

    :cond_5
    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;ILjava/util/List;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_6

    invoke-virtual {p0, v1, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->clearOldPositions()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mItemCount:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v2, v3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onLayoutChildren(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    iget-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    const/4 v2, 0x4

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mLayoutStep:I

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 11

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->assertLayoutStep(I)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mLayoutStep:I

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChangedHolderKey(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v4, v6, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Lcom/agc/widget/recyclerview/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v7, v6}, Lcom/agc/widget/recyclerview/ViewInfoStore;->isDisappearing(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v8

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v7, v5}, Lcom/agc/widget/recyclerview/ViewInfoStore;->isDisappearing(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_1

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v7, v6}, Lcom/agc/widget/recyclerview/ViewInfoStore;->popFromPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    iget-object v10, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToPostLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v4, v5}, Lcom/agc/widget/recyclerview/ViewInfoStore;->popFromPostLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_2

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->handleMissingPreInfoForChangeError(JLcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_2

    :cond_2
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->animateChange(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToPostLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoProcessCallback:Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/ViewInfoStore;->process(Lcom/agc/widget/recyclerview/ViewInfoStore$ProcessCallback;)V

    :cond_5
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mItemCount:I

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mPreviousLayoutItemCount:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchItemsChangedEvent:Z

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v3, :cond_7

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->updateViewCacheSize()V

    :cond_7
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchOnScrolled(II)V

    :cond_8
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->recoverFocusFromState()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    :cond_3
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method public static findNestedRecyclerView(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    return-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->getItemCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForAdapterPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForAdapterPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    iget-object v1, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method public static getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    return-object p0
.end method

.method public static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChangedHolderKey(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const-string p2, " \n View Holder 2:"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " cannot be found but it is necessary for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgcRecyclerView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initAutofill()V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/ChildHelper;

    new-instance v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$5;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/ChildHelper;-><init>(Lcom/agc/widget/recyclerview/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    if-eq p2, p0, :cond_1a

    if-ne p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v5, :cond_5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v5, :cond_6

    :cond_5
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_7

    if-lt v3, v7, :cond_8

    :cond_7
    if-le v3, v5, :cond_8

    move v3, p2

    goto :goto_1

    :cond_8
    move v3, v0

    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_9

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v6, :cond_a

    :cond_9
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_a

    move p2, v1

    goto :goto_2

    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_b

    if-lt v5, v4, :cond_c

    :cond_b
    if-le v5, v6, :cond_c

    goto :goto_2

    :cond_c
    move p2, v0

    :goto_2
    if-eq p3, v1, :cond_18

    const/4 v2, 0x2

    if-eq p3, v2, :cond_15

    const/16 p1, 0x11

    if-eq p3, p1, :cond_13

    const/16 p1, 0x21

    if-eq p3, p1, :cond_11

    const/16 p1, 0x42

    if-eq p3, p1, :cond_f

    const/16 p1, 0x82

    if-ne p3, p1, :cond_e

    if-lez p2, :cond_d

    move v0, v1

    :cond_d
    return v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-lez v3, :cond_10

    move v0, v1

    :cond_10
    return v0

    :cond_11
    if-gez p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    :cond_13
    if-gez v3, :cond_14

    move v0, v1

    :cond_14
    return v0

    :cond_15
    if-gtz p2, :cond_16

    if-nez p2, :cond_17

    mul-int/2addr v3, p1

    if-lez v3, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    return v0

    :cond_18
    if-ltz p2, :cond_19

    if-nez p2, :cond_1a

    mul-int/2addr v3, p1

    if-gez v3, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_3
    return v0
.end method

.method private nestedScrollByInternal(IILandroid/view/MotionEvent;I)V
    .locals 11

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "AgcRecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v4, v0, 0x2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {p0, v4, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startNestedScroll(II)Z

    if-eqz v0, :cond_3

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    if-eqz v1, :cond_4

    move v7, p2

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    iget-object v8, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    iget-object v9, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    move-object v5, p0

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr p1, v5

    aget v3, v4, v3

    sub-int/2addr p2, v3

    :cond_5
    if-eqz v0, :cond_6

    move v0, p1

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-eqz v1, :cond_7

    move v2, p2

    :cond_7
    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    if-eqz p3, :cond_9

    if-nez p1, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    invoke-virtual {p3, p0, p1, p2}, Lcom/agc/widget/recyclerview/GapWorker;->postFromTraversal(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    :cond_9
    invoke-virtual {p0, p4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 6

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->reset()V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onItemsChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->preProcess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    :goto_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-boolean v5, v5, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureLeftGlow()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    :goto_0
    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    move p3, v3

    goto :goto_1

    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureRightGlow()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureTopGlow()V

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p3, v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_2

    :cond_2
    cmpl-float v1, p4, v0

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureBottomGlow()V

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    invoke-static {p3, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_2

    :cond_3
    move v3, p3

    :goto_2
    if-nez v3, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_4

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Lcom/agc/widget/recyclerview/AgcRecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-wide v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-wide v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForItemId(J)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v5, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v0

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_3
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v8, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemId:J

    const/4 v1, -0x1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemPosition:I

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetScroll()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopNestedScroll(I)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->resetFocusInfo()V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemId:J

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedItemPosition:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mFocusedSubChildId:I

    :goto_4
    return-void
.end method

.method private setAdapterInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeAndRecycleViews()V

    :cond_2
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {p3}, Lcom/agc/widget/recyclerview/AdapterHelper;->reset()V

    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mObserver:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/agc/widget/recyclerview/AgcRecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_3
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    :cond_4
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->onAdapterChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Z)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method


# virtual methods
.method public absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureLeftGlow()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureRightGlow()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ensureBottomGlow()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onAddFocusables(Lcom/agc/widget/recyclerview/AgcRecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecyclerListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "\'listener\' arg cannot be null."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateAppearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->animateAppearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method public animateDisappearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->addAnimatingView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->animateDisappearance(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method unless AgcRecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while AgcRecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "AgcRecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theAgcRecyclerView data. Any method call that might change the structureof the AgcRecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public canReuseUpdatedViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->checkLayoutParams(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearOldPositions()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public considerReleasingGlowsOnScroll(II)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public consumePendingUpdateOperations()V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->preProcess()V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayout()V

    :goto_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayout()V

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method public defaultOnMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchLayout()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const-string v1, "AgcRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mIsMeasuring:Z

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mLayoutStep:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep1()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep2()V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :goto_2
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 8

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onScrollStateChanged(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchOnScrolled(II)V
    .locals 4

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onScrolled(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;->onScrolled(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;->onScrolled(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method public dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v4, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iput v3, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    :goto_7
    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    or-int/2addr v3, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_d

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v2, v3

    :goto_8
    if-eqz v2, :cond_e

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;->createEdgeEffect(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public exceptionLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fillRemainingScrollValues(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRemainingScrollHorizontal:I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRemainingScrollHorizontal:I

    iput v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRemainingScrollVertical:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 5

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapterPositionInRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findViewHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(IZ)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    iget v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    iget-object v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/agc/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "AgcRecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnFlingListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_b

    if-eqz v2, :cond_a

    or-int/lit8 v0, v0, 0x2

    :cond_a
    invoke-virtual {p0, v0, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startNestedScroll(II)Z

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_b
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-ne p2, v1, :cond_f

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v5, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    sget-boolean v7, Lcom/agc/widget/recyclerview/AgcRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    move v6, v2

    :cond_6
    :goto_3
    if-nez v6, :cond_c

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-ne p2, v5, :cond_8

    move v5, v1

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    xor-int/2addr v0, v5

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    goto :goto_6

    :cond_9
    const/16 v0, 0x11

    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    sget-boolean v5, Lcom/agc/widget/recyclerview/AgcRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v5, :cond_b

    move p2, v0

    :cond_b
    move v6, v1

    :cond_c
    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v4

    :cond_d
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    :cond_e
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :cond_f
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v4

    :cond_10
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    :cond_11
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-direct {p0, v0, v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_13
    invoke-direct {p0, p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgcRecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgcRecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgcRecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "com.agc.widget.recyclerview.AgcRecyclerView"

    return-object v0
.end method

.method public getAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    return-object v0
.end method

.method public getAdapterPositionInRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I
    .locals 1

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    iget p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getChangedHolderKey(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)J
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildDrawingOrderCallback:Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a direct child of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEdgeEffectFactory()Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    return-object v0
.end method

.method public getItemAnimator()Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    return-object v0
.end method

.method public getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    :cond_2
    iget-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getItemDecorationAt(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is an invalid index for size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnFlingListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->getRecycledViewPool()Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public initAdapterManager()V
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/AdapterHelper;

    new-instance v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;

    invoke-direct {v1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$6;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/AdapterHelper;-><init>(Lcom/agc/widget/recyclerview/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    return-void
.end method

.method public initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/recyclerview/FastScroller;

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_default_thickness:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_minimum_range:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/agc/widget/recyclerview/FastScroller;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isLayoutSuppressed()Z

    move-result v0

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method public markItemDecorInsetsDirty()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method public markKnownViewsInvalid()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->markItemDecorInsetsDirty()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public nestedScrollBy(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetPositionRecordsForInsert(II)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    invoke-virtual {v3, p2, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public offsetPositionRecordsForMove(II)V
    .locals 9

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v2, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v8, v7, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v3, :cond_3

    if-le v8, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v2, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_2
    iget-object v7, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v7, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_1
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v5, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mStructureChanged:Z

    goto :goto_2

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_1
    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPostedAnimatorRunner:Z

    sget-boolean v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/agc/widget/recyclerview/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/GapWorker;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    if-nez v1, :cond_3

    new-instance v1, Lcom/agc/widget/recyclerview/GapWorker;

    invoke-direct {v1}, Lcom/agc/widget/recyclerview/GapWorker;-><init>()V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    move v2, v1

    :cond_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-long v2, v3

    iput-wide v2, v1, Lcom/agc/widget/recyclerview/GapWorker;->mFrameIntervalNs:J

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/GapWorker;->add(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScroll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ViewInfoStore;->onDetach()V

    sget-boolean v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/GapWorker;->remove(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method public onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method public onExitLayoutOrScroll(Z)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchContentChangedIfNecessary()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v0, v3

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    move v3, v0

    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->cancelScroll()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->cancelScroll()V

    goto/16 :goto_1

    :pswitch_4
    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgcRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_a

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    iget v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    if-le v0, v4, :cond_5

    iput v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-eqz v3, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_6

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopNestedScroll(I)V

    goto :goto_1

    :pswitch_6
    iget-boolean v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_7

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iput v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopNestedScroll(I)V

    :cond_8
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_9

    or-int/lit8 v0, v0, 0x2

    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startNestedScroll(II)Z

    :cond_a
    :goto_1
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    if-ne p1, v2, :cond_b

    move v1, v2

    :cond_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayout()V

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v6, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onMeasure(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep1()V

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep2()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayoutStep2()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onMeasure(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v3, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_8

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterHelper:Lcom/agc/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    :goto_1
    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mItemCount:I

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput v2, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mItemCount:I

    :goto_3
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onMeasure(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;II)V

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iput-boolean v2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mInPreLayout:Z

    :goto_4
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingSavedState:Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;->copyFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_1
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_1a

    iget-boolean v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->cancelScroll()V

    return v9

    :cond_1
    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v8

    :cond_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_4

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    aput v8, v2, v9

    aput v8, v2, v8

    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    goto/16 :goto_9

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->cancelScroll()V

    goto/16 :goto_9

    :pswitch_4
    iget v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgcRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v13, v1

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v14, v0

    iget v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    sub-int/2addr v0, v13

    iget v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v14

    iget v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_a

    if-eqz v10, :cond_7

    iget v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    if-lez v0, :cond_6

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_6
    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    move v2, v9

    goto :goto_1

    :cond_7
    move v2, v8

    :goto_1
    if-eqz v11, :cond_9

    iget v3, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    if-lez v1, :cond_8

    sub-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_8
    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz v1, :cond_9

    move v2, v9

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v6, v9}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    :cond_a
    move v15, v0

    move/from16 v16, v1

    iget v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    if-ne v0, v9, :cond_18

    iget-object v3, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v8, v3, v8

    aput v8, v3, v9

    if-eqz v10, :cond_b

    move v1, v15

    goto :goto_3

    :cond_b
    move v1, v8

    :goto_3
    if-eqz v11, :cond_c

    move/from16 v2, v16

    goto :goto_4

    :cond_c
    move v2, v8

    :goto_4
    iget-object v4, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v1, v0, v8

    sub-int/2addr v15, v1

    aget v0, v0, v9

    sub-int v16, v16, v0

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    move/from16 v0, v16

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_e

    move v1, v15

    goto :goto_5

    :cond_e
    move v1, v8

    :goto_5
    if-eqz v11, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v8

    :goto_6
    invoke-virtual {v6, v1, v2, v7, v8}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mGapWorker:Lcom/agc/widget/recyclerview/GapWorker;

    if-eqz v1, :cond_18

    if-nez v15, :cond_11

    if-eqz v0, :cond_18

    :cond_11
    invoke-virtual {v1, v6, v15, v0}, Lcom/agc/widget/recyclerview/GapWorker;->postFromTraversal(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V

    goto :goto_9

    :pswitch_5
    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mMaxFlingVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_12

    iget-object v1, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_7

    :cond_12
    move v1, v0

    :goto_7
    if-eqz v11, :cond_13

    iget-object v2, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_8

    :cond_13
    move v2, v0

    :goto_8
    cmpl-float v3, v1, v0

    if-nez v3, :cond_14

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_15

    :cond_14
    float-to-int v0, v1

    float-to-int v1, v2

    invoke-virtual {v6, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-virtual {v6, v8}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->resetScroll()V

    move v8, v9

    goto :goto_9

    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iput v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInitialTouchY:I

    if-eqz v11, :cond_17

    or-int/lit8 v10, v10, 0x2

    :cond_17
    invoke-virtual {v6, v10, v8}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startNestedScroll(II)Z

    :cond_18
    :goto_9
    if-nez v8, :cond_19

    iget-object v0, v6, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_19
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_1a
    :goto_a
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public postAnimationRunner()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method public processDataSetCompletelyChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mDataSetHasChangedAfterLayout:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method public recordAnimationInfoIfBouncedHiddenView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setFlags(II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    iget-boolean v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChangedHolderKey(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToOldChangeHolders(JLcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewInfoStore:Lcom/agc/widget/recyclerview/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/ViewInfoStore;->addToPreLayout(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public removeAndRecycleViews()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clear()V

    return-void
.end method

.method public removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemDecorationAt(I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeItemDecoration(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is an invalid index for size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptingOnItemTouchListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRecyclerListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public repositionShadowingViews()V
    .locals 7

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method public saveOldPositions()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "AgcRecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    :cond_5
    return-void
.end method

.method public scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->consumePendingUpdateOperations()V

    iget-object v0, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    aput v13, v0, v12

    invoke-virtual {v8, v9, v10, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollStep(II[I)V

    iget-object v0, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    aget v0, v0, v12

    sub-int v2, v9, v1

    sub-int v3, v10, v0

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_0
    iget-object v0, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v7, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aput v13, v7, v13

    aput v13, v7, v12

    iget-object v5, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v0, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    sub-int v2, v16, v1

    aget v0, v0, v12

    sub-int v3, v17, v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v13

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v12

    :goto_2
    iget v1, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iget-object v4, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollOffset:[I

    aget v5, v4, v13

    sub-int/2addr v1, v5

    iput v1, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchX:I

    iget v1, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    aget v4, v4, v12

    sub-int/2addr v1, v4

    iput v1, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLastTouchY:I

    iget-object v1, v8, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mNestedOffsets:[I

    aget v6, v1, v13

    add-int/2addr v6, v5

    aput v6, v1, v13

    aget v5, v1, v12

    add-int/2addr v5, v4

    aput v5, v1, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-eqz v11, :cond_4

    const/16 v1, 0x2002

    invoke-static {v11, v1}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v3, v3

    invoke-direct {v8, v1, v2, v4, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->pullGlows(FFFF)V

    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_5
    if-nez v15, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    invoke-virtual {v8, v15, v14}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchOnScrolled(II)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_8
    if-nez v0, :cond_a

    if-nez v15, :cond_a

    if-eqz v14, :cond_9

    goto :goto_3

    :cond_9
    move v12, v13

    :cond_a
    :goto_3
    return v12
.end method

.method public scrollStep(II[I)V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->fillRemainingScrollValues(Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1, p1, v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v1, p2, v2, v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->repositionShadowingViews()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_2

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    :cond_2
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "AgcRecyclerView"

    const-string p2, "AgcRecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p1, "AgcRecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAccessibilityDelegate:Lcom/agc/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setAdapterInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;ZZ)V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildDrawingOrderCallback:Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildDrawingOrderCallback:Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setChildImportantForAccessibilityInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iget-object p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;)V
    .locals 0

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEdgeEffectFactory:Lcom/agc/widget/recyclerview/AgcRecyclerView$EdgeEffectFactory;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->invalidateGlows()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->setListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimatorListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->setListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->endAnimations()V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clear()V

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;)V

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->removeAllViewsUnfiltered()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_4

    invoke-virtual {p1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->setRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a AgcRecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->updateViewCacheSize()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->suppressLayout(Z)V

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->suppressLayout(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into AgcRecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this AgcRecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mOnFlingListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->setRecycledViewPool(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecyclerListener:Lcom/agc/widget/recyclerview/AgcRecyclerView$RecyclerListener;

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScrollersInternal()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; using default value"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AgcRecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mTouchSlop:I

    return-void
.end method

.method public setViewCacheExtension(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->setViewCacheExtension(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method public shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "AgcRecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_b

    :cond_4
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    if-lez p4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_a

    if-eqz p5, :cond_9

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz p2, :cond_8

    or-int/lit8 v1, v1, 0x2

    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->startNestedScroll(II)Z

    :cond_9
    iget-object p5, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mViewFlinger:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;

    invoke-virtual {p5, p1, p2, p4, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollBy(II)V

    :cond_b
    :goto_2
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p1, "AgcRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mState:Lcom/agc/widget/recyclerview/AgcRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;I)V

    return-void
.end method

.method public startInterceptRequestLayout()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopInterceptRequestLayout(Z)V
    .locals 3

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    :cond_1
    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->dispatchLayout()V

    :cond_2
    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    :cond_3
    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayout:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setAdapterInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;ZZ)V

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void
.end method

.method public viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mChildHelper:Lcom/agc/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/agc/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v4, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mRecycler:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {p3, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
