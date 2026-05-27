.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.2.0-alpha04"

.field private static sSharedValues:Laae;


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;

.field private mConstraintHelpers:Ljava/util/ArrayList;

.field protected mConstraintLayoutSpec:Lzr;

.field private mConstraintSet:Lzy;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Lyo;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Lzn;

.field private mMetrics:Lyd;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mModifiers:Ljava/util/ArrayList;

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Laae;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lyo;

    invoke-direct {p1}, Lyo;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v1, Lzn;

    invoke-direct {v1, p0, p0}, Lzn;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lyo;

    invoke-direct {p1}, Lyo;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Lzn;

    invoke-direct {v0, p0, p0}, Lzn;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lyo;

    invoke-direct {p1}, Lyo;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Lzn;

    invoke-direct {v0, p0, p0}, Lzn;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lyo;

    invoke-direct {p1}, Lyo;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Lzn;

    invoke-direct {v0, p0, p0}, Lzn;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Lyd;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    return p0
.end method

.method public static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    if-lez v2, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public static getSharedValues()Laae;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Laae;

    if-nez v0, :cond_0

    new-instance v0, Laae;

    invoke-direct {v0}, Laae;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Laae;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Laae;

    return-object v0
.end method

.method private getTargetWidget(I)Lyn;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_0
    if-ne v0, p0, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lzm;

    iget-object p1, p1, Lzm;->av:Lyn;

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iput-object p0, v0, Lyn;->ah:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput-object v1, v0, Lyo;->aI:Lzn;

    iget-object v0, v0, Lyo;->a:Lyy;

    iput-object v1, v0, Lyy;->g:Lzn;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Laad;->b:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    :cond_0
    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    :cond_2
    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x71

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x38

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    goto :goto_2

    :cond_5
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v3, Lzy;

    invoke-direct {v3}, Lzy;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lzy;->k(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, p2}, Lyo;->W(I)V

    return-void
.end method

.method private markHierarchyDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    return-void
.end method

.method private setChildrenConstraints()V
    .locals 13

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v6

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lyn;->v()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Lyn;

    move-result-object v3

    iput-object v4, v3, Lyn;->aj:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_6

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v4, v5, :cond_5

    instance-of v4, v2, Lzz;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    check-cast v2, Lzz;

    throw v3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Lzy;->t(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v1, v1, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzk;

    invoke-virtual {v4}, Lzk;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lzk;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lzk;->e(Ljava/lang/String;)V

    :cond_8
    iget-object v5, v4, Lzk;->i:Lyr;

    if-nez v5, :cond_9

    goto :goto_9

    :cond_9
    iput v0, v5, Lyr;->at:I

    iget-object v5, v5, Lyr;->as:[Lyn;

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_6
    iget v8, v4, Lzk;->d:I

    if-ge v5, v8, :cond_e

    iget-object v8, v4, Lzk;->c:[I

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_a

    iget-object v10, v4, Lzk;->h:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, p0, v8}, Lzk;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_a

    iget-object v9, v4, Lzk;->c:[I

    aput v10, v9, v5

    iget-object v9, v4, Lzk;->h:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_7

    :cond_a
    :goto_7
    if-eqz v9, :cond_d

    iget-object v8, v4, Lzk;->i:Lyr;

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v9

    if-eq v9, v8, :cond_d

    if-nez v9, :cond_b

    goto :goto_8

    :cond_b
    iget v10, v8, Lyr;->at:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, v8, Lyr;->as:[Lyn;

    array-length v12, v11

    if-le v10, v12, :cond_c

    add-int/2addr v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lyn;

    iput-object v10, v8, Lyr;->as:[Lyn;

    :cond_c
    iget-object v10, v8, Lyr;->as:[Lyn;

    iget v11, v8, Lyr;->at:I

    aput-object v9, v10, v11

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Lyr;->at:I

    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    iget-object v4, v4, Lzk;->i:Lyr;

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_f
    const/4 v1, 0x0

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v7, :cond_12

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Laab;

    if-nez v4, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    check-cast v2, Laab;

    throw v3

    :cond_12
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v7, :cond_13

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_16

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v3

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lzm;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v1, v0, Lyu;->aK:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lyn;->V:Lyn;

    if-eqz v1, :cond_15

    check-cast v1, Lyu;

    invoke-virtual {v1, v3}, Lyu;->aa(Lyn;)V

    :cond_15
    iput-object v0, v3, Lyn;->V:Lyn;

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Lyn;Lzm;Landroid/util/SparseArray;)V

    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method private setWidgetBaseline(Lyn;Lzm;Landroid/util/SparseArray;ILyl;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyn;

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lzm;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Lzm;->ag:Z

    sget-object v1, Lyl;->f:Lyl;

    if-ne p5, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzm;

    iput-boolean p4, v0, Lzm;->ag:Z

    iget-object v0, v0, Lzm;->av:Lyn;

    iput-boolean p4, v0, Lyn;->G:Z

    :cond_0
    sget-object v0, Lyl;->f:Lyl;

    invoke-virtual {p1, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    invoke-virtual {p3, p5}, Lyn;->m(Lyl;)Lym;

    move-result-object p3

    iget p5, p2, Lzm;->D:I

    iget p2, p2, Lzm;->C:I

    invoke-virtual {v0, p3, p5, p2}, Lym;->j(Lym;II)V

    iput-boolean p4, p1, Lyn;->G:Z

    sget-object p2, Lyl;->c:Lyl;

    invoke-virtual {p1, p2}, Lyn;->m(Lyl;)Lym;

    move-result-object p2

    invoke-virtual {p2}, Lym;->d()V

    sget-object p2, Lyl;->e:Lyl;

    invoke-virtual {p1, p2}, Lyn;->m(Lyl;)Lym;

    move-result-object p1

    invoke-virtual {p1}, Lym;->d()V

    :cond_1
    return-void
.end method

.method private updateHierarchy()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    :cond_2
    return v1
.end method


# virtual methods
.method public addValueModifier(Lzo;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Lyn;Lzm;Landroid/util/SparseArray;)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Lzm;->a()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Lzm;->aw:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v6, Lyn;->ai:I

    iget-boolean v1, v7, Lzm;->aj:Z

    iput-object v0, v6, Lyn;->ah:Ljava/lang/Object;

    instance-of v1, v0, Lzk;

    if-eqz v1, :cond_0

    check-cast v0, Lzk;

    move-object/from16 v10, p0

    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-boolean v1, v1, Lyo;->c:Z

    invoke-virtual {v0, v6, v1}, Lzk;->b(Lyn;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p0

    :goto_0
    iget-boolean v0, v7, Lzm;->ah:Z

    const/4 v11, -0x1

    if-eqz v0, :cond_3

    move-object v0, v6

    check-cast v0, Lyq;

    iget v1, v7, Lzm;->as:I

    iget v2, v7, Lzm;->at:I

    iget v3, v7, Lzm;->au:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    cmpl-float v1, v3, v4

    if-lez v1, :cond_2c

    iput v3, v0, Lyq;->a:F

    iput v11, v0, Lyq;->b:I

    iput v11, v0, Lyq;->c:I

    return-void

    :cond_1
    if-eq v1, v11, :cond_2

    if-ltz v1, :cond_2c

    iput v4, v0, Lyq;->a:F

    iput v1, v0, Lyq;->b:I

    iput v11, v0, Lyq;->c:I

    return-void

    :cond_2
    if-eq v2, v11, :cond_2c

    if-ltz v2, :cond_2c

    iput v4, v0, Lyq;->a:F

    iput v11, v0, Lyq;->b:I

    iput v2, v0, Lyq;->c:I

    return-void

    :cond_3
    iget v0, v7, Lzm;->al:I

    iget v1, v7, Lzm;->am:I

    iget v12, v7, Lzm;->an:I

    iget v13, v7, Lzm;->ao:I

    iget v5, v7, Lzm;->ap:I

    iget v14, v7, Lzm;->aq:I

    iget v15, v7, Lzm;->ar:F

    iget v2, v7, Lzm;->p:I

    const/4 v4, 0x0

    if-eq v2, v11, :cond_5

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_4

    iget v8, v7, Lzm;->r:F

    iget v5, v7, Lzm;->q:I

    sget-object v1, Lyl;->g:Lyl;

    sget-object v3, Lyl;->g:Lyl;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    const/4 v13, 0x0

    move v4, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    iput v8, v6, Lyn;->F:F

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_4
    const/4 v13, 0x0

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_5
    if-eq v0, v11, :cond_7

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_6

    sget-object v1, Lyl;->b:Lyl;

    sget-object v3, Lyl;->b:Lyl;

    iget v0, v7, Lzm;->leftMargin:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    const/4 v9, 0x0

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    if-eq v1, v11, :cond_8

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_8

    sget-object v1, Lyl;->b:Lyl;

    sget-object v3, Lyl;->d:Lyl;

    iget v4, v7, Lzm;->leftMargin:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    :cond_8
    :goto_1
    if-eq v12, v11, :cond_9

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_a

    sget-object v1, Lyl;->d:Lyl;

    sget-object v3, Lyl;->b:Lyl;

    iget v4, v7, Lzm;->rightMargin:I

    move-object/from16 v0, p3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    goto :goto_2

    :cond_9
    if-eq v13, v11, :cond_a

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_a

    sget-object v1, Lyl;->d:Lyl;

    sget-object v3, Lyl;->d:Lyl;

    iget v4, v7, Lzm;->rightMargin:I

    move-object/from16 v0, p3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    :cond_a
    :goto_2
    iget v0, v7, Lzm;->i:I

    if-eq v0, v11, :cond_b

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_c

    sget-object v1, Lyl;->c:Lyl;

    sget-object v3, Lyl;->c:Lyl;

    iget v4, v7, Lzm;->topMargin:I

    iget v5, v7, Lzm;->x:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    goto :goto_3

    :cond_b
    iget v0, v7, Lzm;->j:I

    if-eq v0, v11, :cond_c

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_c

    sget-object v1, Lyl;->c:Lyl;

    sget-object v3, Lyl;->e:Lyl;

    iget v4, v7, Lzm;->topMargin:I

    iget v5, v7, Lzm;->x:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    :cond_c
    :goto_3
    iget v0, v7, Lzm;->k:I

    if-eq v0, v11, :cond_d

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_e

    sget-object v1, Lyl;->e:Lyl;

    sget-object v3, Lyl;->c:Lyl;

    iget v4, v7, Lzm;->bottomMargin:I

    iget v5, v7, Lzm;->z:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    goto :goto_4

    :cond_d
    iget v0, v7, Lzm;->l:I

    if-eq v0, v11, :cond_e

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyn;

    if-eqz v2, :cond_e

    sget-object v1, Lyl;->e:Lyl;

    sget-object v3, Lyl;->e:Lyl;

    iget v4, v7, Lzm;->bottomMargin:I

    iget v5, v7, Lzm;->z:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->u(Lyl;Lyn;Lyl;II)V

    :cond_e
    :goto_4
    iget v4, v7, Lzm;->m:I

    if-eq v4, v11, :cond_f

    sget-object v5, Lyl;->f:Lyl;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lyn;Lzm;Landroid/util/SparseArray;ILyl;)V

    goto :goto_5

    :cond_f
    iget v4, v7, Lzm;->n:I

    if-eq v4, v11, :cond_10

    sget-object v5, Lyl;->c:Lyl;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lyn;Lzm;Landroid/util/SparseArray;ILyl;)V

    goto :goto_5

    :cond_10
    iget v4, v7, Lzm;->o:I

    if-eq v4, v11, :cond_11

    sget-object v5, Lyl;->e:Lyl;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Lyn;Lzm;Landroid/util/SparseArray;ILyl;)V

    :cond_11
    :goto_5
    cmpl-float v0, v15, v9

    if-ltz v0, :cond_12

    iput v15, v6, Lyn;->af:F

    :cond_12
    iget v0, v7, Lzm;->H:F

    cmpl-float v1, v0, v9

    if-ltz v1, :cond_13

    iput v0, v6, Lyn;->ag:F

    :cond_13
    :goto_6
    if-eqz p1, :cond_15

    iget v0, v7, Lzm;->X:I

    if-ne v0, v11, :cond_14

    iget v0, v7, Lzm;->Y:I

    if-eq v0, v11, :cond_15

    const/4 v0, -0x1

    :cond_14
    iget v1, v7, Lzm;->Y:I

    iput v0, v6, Lyn;->aa:I

    iput v1, v6, Lyn;->ab:I

    :cond_15
    iget-boolean v0, v7, Lzm;->ae:Z

    const/4 v1, 0x4

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_18

    iget v0, v7, Lzm;->width:I

    if-ne v0, v11, :cond_17

    iget-boolean v0, v7, Lzm;->aa:Z

    if-eqz v0, :cond_16

    invoke-virtual {v6, v4}, Lyn;->Q(I)V

    goto :goto_7

    :cond_16
    invoke-virtual {v6, v1}, Lyn;->Q(I)V

    :goto_7
    sget-object v0, Lyl;->b:Lyl;

    invoke-virtual {v6, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    iget v8, v7, Lzm;->leftMargin:I

    iput v8, v0, Lym;->g:I

    sget-object v0, Lyl;->d:Lyl;

    invoke-virtual {v6, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    iget v8, v7, Lzm;->rightMargin:I

    iput v8, v0, Lym;->g:I

    goto :goto_8

    :cond_17
    invoke-virtual {v6, v4}, Lyn;->Q(I)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lyn;->F(I)V

    goto :goto_8

    :cond_18
    invoke-virtual {v6, v5}, Lyn;->Q(I)V

    iget v0, v7, Lzm;->width:I

    invoke-virtual {v6, v0}, Lyn;->F(I)V

    iget v0, v7, Lzm;->width:I

    if-ne v0, v2, :cond_19

    invoke-virtual {v6, v3}, Lyn;->Q(I)V

    :cond_19
    :goto_8
    iget-boolean v0, v7, Lzm;->af:Z

    if-nez v0, :cond_1c

    iget v0, v7, Lzm;->height:I

    if-ne v0, v11, :cond_1b

    iget-boolean v0, v7, Lzm;->ab:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v6, v4}, Lyn;->R(I)V

    goto :goto_9

    :cond_1a
    invoke-virtual {v6, v1}, Lyn;->R(I)V

    :goto_9
    sget-object v0, Lyl;->c:Lyl;

    invoke-virtual {v6, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    iget v1, v7, Lzm;->topMargin:I

    iput v1, v0, Lym;->g:I

    sget-object v0, Lyl;->e:Lyl;

    invoke-virtual {v6, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    iget v1, v7, Lzm;->bottomMargin:I

    iput v1, v0, Lym;->g:I

    goto :goto_a

    :cond_1b
    invoke-virtual {v6, v4}, Lyn;->R(I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lyn;->A(I)V

    goto :goto_a

    :cond_1c
    invoke-virtual {v6, v5}, Lyn;->R(I)V

    iget v0, v7, Lzm;->height:I

    invoke-virtual {v6, v0}, Lyn;->A(I)V

    iget v0, v7, Lzm;->height:I

    if-ne v0, v2, :cond_1d

    invoke-virtual {v6, v3}, Lyn;->R(I)V

    :cond_1d
    :goto_a
    iget-object v0, v7, Lzm;->I:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_e

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_21

    add-int/lit8 v8, v1, -0x1

    if-ge v2, v8, :cond_21

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v8, "W"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x0

    goto :goto_b

    :cond_1f
    const-string v8, "H"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x1

    goto :goto_b

    :cond_20
    const/4 v8, -0x1

    :goto_b
    add-int/2addr v2, v5

    move/from16 v17, v8

    move v8, v2

    move/from16 v2, v17

    goto :goto_c

    :cond_21
    const/4 v2, -0x1

    const/4 v8, 0x0

    :goto_c
    const/16 v12, 0x3a

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_24

    add-int/2addr v1, v11

    if-ge v12, v1, :cond_24

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v12, v5

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_23

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v8, v1, v9

    if-lez v8, :cond_23

    cmpl-float v8, v0, v9

    if-lez v8, :cond_23

    if-ne v2, v5, :cond_22

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_d

    :cond_22
    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :cond_23
    const/4 v0, 0x0

    goto :goto_d

    :cond_24
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d

    :cond_25
    const/4 v0, 0x0

    :goto_d
    cmpl-float v1, v0, v9

    if-lez v1, :cond_27

    iput v0, v6, Lyn;->Y:F

    iput v2, v6, Lyn;->Z:I

    goto :goto_f

    :cond_26
    :goto_e
    iput v9, v6, Lyn;->Y:F

    :cond_27
    :goto_f
    iget v0, v7, Lzm;->L:F

    iget-object v1, v6, Lyn;->am:[F

    const/4 v8, 0x0

    aput v0, v1, v8

    iget v0, v7, Lzm;->M:F

    aput v0, v1, v5

    iget v0, v7, Lzm;->N:I

    iput v0, v6, Lyn;->ak:I

    iget v0, v7, Lzm;->O:I

    iput v0, v6, Lyn;->al:I

    iget v0, v7, Lzm;->ad:I

    if-ltz v0, :cond_28

    if-gt v0, v4, :cond_28

    iput v0, v6, Lyn;->s:I

    :cond_28
    iget v0, v7, Lzm;->P:I

    iget v1, v7, Lzm;->R:I

    iget v2, v7, Lzm;->T:I

    iget v4, v7, Lzm;->V:F

    iput v0, v6, Lyn;->t:I

    iput v1, v6, Lyn;->w:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_29

    const/4 v2, 0x0

    :cond_29
    iput v2, v6, Lyn;->x:I

    iput v4, v6, Lyn;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v9

    if-lez v5, :cond_2a

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2a

    if-nez v0, :cond_2a

    iput v3, v6, Lyn;->t:I

    :cond_2a
    iget v0, v7, Lzm;->Q:I

    iget v4, v7, Lzm;->S:I

    iget v5, v7, Lzm;->U:I

    iget v7, v7, Lzm;->W:F

    iput v0, v6, Lyn;->u:I

    iput v4, v6, Lyn;->z:I

    if-ne v5, v1, :cond_2b

    const/4 v5, 0x0

    :cond_2b
    iput v5, v6, Lyn;->A:I

    iput v7, v6, Lyn;->B:F

    cmpl-float v1, v7, v9

    if-lez v1, :cond_2c

    cmpg-float v1, v7, v2

    if-gez v1, :cond_2c

    if-nez v0, :cond_2c

    iput v3, v6, Lyn;->u:I

    return-void

    :cond_2c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lzm;

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzk;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v1

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v3

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v3

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    float-to-int v8, v8

    float-to-int v7, v7

    float-to-int v9, v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    int-to-float v7, v7

    int-to-float v14, v8

    move-object/from16 v10, p1

    move v11, v7

    move v12, v14

    move v13, v9

    move/from16 v16, v14

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    float-to-int v6, v6

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v9

    move/from16 v12, v16

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v7

    move/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v12, v16

    move v13, v9

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method protected dynamicUpdateConstraints(II)Z
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzo;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v4, v4, Lyu;->aK:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v0, 0x1

    if-ge v6, v5, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyn;

    iget-object v7, v7, Lyn;->ah:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lzm;

    invoke-interface {v3}, Lzo;->a()Z

    move-result v7

    or-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    return v2
.end method

.method public fillMetrics(Lyd;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v0, p1}, Lyo;->c(Lyd;)V

    return-void
.end method

.method public forceLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Lzm;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lzm;
    .locals 2

    new-instance v0, Lzm;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lzm;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lzm;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lzm;

    invoke-direct {v0, p1}, Lzm;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lzm;
    .locals 2

    new-instance v0, Lzm;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lzm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget v0, v0, Lyo;->az:I

    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v1, v1, Lyo;->m:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iput-object v1, v3, Lyo;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    const-string v3, "parent"

    iput-object v3, v1, Lyo;->m:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v3, v1, Lyn;->aj:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lyo;->m:Ljava/lang/String;

    iput-object v3, v1, Lyn;->aj:Ljava/lang/String;

    iget-object v3, v1, Lyn;->aj:Ljava/lang/String;

    :cond_2
    iget-object v1, v1, Lyu;->aK:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyn;

    iget-object v6, v5, Lyn;->ah:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v7, v5, Lyn;->m:Ljava/lang/String;

    if-nez v7, :cond_3

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v2, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lyn;->m:Ljava/lang/String;

    :cond_3
    iget-object v6, v5, Lyn;->aj:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, v5, Lyn;->m:Ljava/lang/String;

    iput-object v6, v5, Lyn;->aj:Ljava/lang/String;

    iget-object v5, v5, Lyn;->aj:Ljava/lang/String;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v1, v0}, Lyn;->t(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Lyn;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lzm;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lzm;

    iget-object p1, p1, Lzm;->av:Lyn;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lzm;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lzm;

    iget-object p1, p1, Lzm;->av:Lyn;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isRtl()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadLayoutDescription(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lzr;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lzr;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    if-eqz p1, :cond_0

    iget p2, p1, Lyd;->D:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lyd;->D:I

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzm;

    iget-object v1, v0, Lzm;->av:Lyn;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lzm;->ah:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lzm;->ai:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lzm;->ak:Z

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, v0, Lzm;->aj:Z

    invoke-virtual {v1}, Lyn;->k()I

    move-result v0

    invoke-virtual {v1}, Lyn;->l()I

    move-result v2

    invoke-virtual {v1}, Lyn;->j()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lyn;->h()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v0, p5, Laab;

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    check-cast p5, Laab;

    const/4 p1, 0x0

    throw p1

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzk;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lyd;->G:J

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    iget-wide v3, v2, Lyd;->H:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lyd;->H:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->dynamicUpdateConstraints(II)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v4

    iput-boolean v4, v2, Lyo;->c:Z

    iget-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v3, v2, Lyo;->aJ:Lva;

    invoke-virtual {v3, v2}, Lva;->h(Lyo;)V

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    invoke-virtual {v2, v3}, Lyo;->c(Lyd;)V

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Lyo;III)V

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v2}, Lyn;->j()I

    move-result v6

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v2}, Lyn;->h()I

    move-result v7

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    iget-boolean v8, v2, Lyo;->aA:Z

    iget-boolean v9, v2, Lyo;->aB:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Lyd;

    if-eqz p1, :cond_4

    iget-wide v2, p1, Lyd;->F:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lyd;->F:J

    :cond_4
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lyq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzm;

    new-instance v1, Lyq;

    invoke-direct {v1}, Lyq;-><init>()V

    iput-object v1, v0, Lzm;->av:Lyn;

    iput-boolean v2, v0, Lzm;->ah:Z

    iget-object v1, v0, Lzm;->av:Lyn;

    check-cast v1, Lyq;

    iget v0, v0, Lzm;->Z:I

    invoke-virtual {v1, v0}, Lyq;->c(I)V

    :cond_0
    instance-of v0, p1, Lzk;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lzk;

    invoke-virtual {v0}, Lzk;->h()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzm;

    iput-boolean v2, v1, Lzm;->ai:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lyn;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v1, v0}, Lyu;->aa(Lyn;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 2

    new-instance v0, Lzr;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lzr;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    return-void
.end method

.method removeValueModifier(Lzo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iget v1, v0, Lzn;->e:I

    iget v0, v0, Lzn;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p1

    const p3, 0xffffff

    and-int/2addr p1, p3

    invoke-static {p4, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p2

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method protected resolveSystem(Lyo;III)V
    .locals 24

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, v11, v2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    move-object/from16 v12, p0

    iget-object v5, v12, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iput v11, v5, Lzn;->b:I

    iput v2, v5, Lzn;->c:I

    iput v4, v5, Lzn;->d:I

    iput v3, v5, Lzn;->e:I

    move/from16 v2, p3

    iput v2, v5, Lzn;->f:I

    move/from16 v2, p4

    iput v2, v5, Lzn;->g:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gtz v2, :cond_1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v5

    goto :goto_1

    :cond_2
    move v13, v2

    :goto_1
    sub-int v14, v0, v4

    sub-int v15, v1, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v14

    move v4, v9

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Lyo;IIII)V

    iput v13, v6, Lyo;->at:I

    iput v11, v6, Lyo;->au:I

    iget-object v0, v6, Lyo;->aJ:Lva;

    iget-object v1, v6, Lyo;->aI:Lzn;

    iget-object v2, v6, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    invoke-static {v7, v3}, Lys;->b(II)Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v5

    const/16 v11, 0x40

    if-nez v3, :cond_4

    invoke-static {v7, v11}, Lys;->b(II)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    :goto_2
    const/16 v16, 0x0

    if-eqz v7, :cond_c

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v2, :cond_c

    iget-object v10, v6, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyn;

    invoke-virtual {v10}, Lyn;->O()I

    move-result v11

    move/from16 v18, v7

    invoke-virtual {v10}, Lyn;->P()I

    move-result v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    if-ne v7, v12, :cond_5

    iget v7, v10, Lyn;->Y:F

    cmpl-float v7, v7, v16

    if-lez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v10}, Lyn;->K()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v10}, Lyn;->L()Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    instance-of v7, v10, Lyt;

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Lyn;->K()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v10}, Lyn;->L()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, p0

    move/from16 v7, v18

    const/4 v10, 0x0

    goto :goto_3

    :cond_b
    :goto_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    move/from16 v18, v7

    move/from16 v7, v18

    :goto_6
    const-wide/16 v10, 0x1

    if-eqz v7, :cond_d

    sget-object v12, Lyc;->b:Lyd;

    if-eqz v12, :cond_d

    move v13, v4

    move/from16 v18, v5

    iget-wide v4, v12, Lyd;->e:J

    add-long/2addr v4, v10

    iput-wide v4, v12, Lyd;->e:J

    goto :goto_7

    :cond_d
    move v13, v4

    move/from16 v18, v5

    :goto_7
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v8, v4, :cond_f

    if-eq v9, v4, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_9

    :cond_f
    :goto_8
    if-eqz v3, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    and-int/2addr v5, v7

    const/4 v7, 0x2

    if-eqz v5, :cond_31

    iget-object v12, v6, Lyn;->E:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v14, v6, Lyn;->E:[I

    const/16 v19, 0x1

    aget v14, v14, v19

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v8, v4, :cond_11

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    const/4 v15, 0x1

    :goto_a
    if-ne v8, v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v10

    if-eq v10, v12, :cond_12

    invoke-virtual {v6, v12}, Lyn;->F(I)V

    invoke-virtual/range {p1 .. p1}, Lyo;->U()V

    :cond_12
    if-ne v9, v4, :cond_13

    const/4 v10, 0x0

    goto :goto_b

    :cond_13
    const/4 v10, 0x1

    :goto_b
    if-ne v9, v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v11

    if-eq v11, v14, :cond_14

    invoke-virtual {v6, v14}, Lyn;->A(I)V

    invoke-virtual/range {p1 .. p1}, Lyo;->U()V

    :cond_14
    if-ne v8, v4, :cond_2c

    if-ne v9, v4, :cond_2c

    iget-object v4, v6, Lyo;->a:Lyy;

    iget-boolean v8, v4, Lyy;->b:Z

    if-nez v8, :cond_16

    iget-boolean v8, v4, Lyy;->c:Z

    if-eqz v8, :cond_15

    goto :goto_c

    :cond_15
    const/4 v9, 0x0

    goto :goto_e

    :cond_16
    :goto_c
    iget-object v8, v4, Lyy;->a:Lyo;

    iget-object v8, v8, Lyo;->aK:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v9, :cond_17

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyn;

    invoke-virtual {v12}, Lyn;->s()V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lyn;->e:Z

    iget-object v14, v12, Lyn;->h:Lze;

    invoke-virtual {v14}, Lze;->g()V

    iget-object v12, v12, Lyn;->i:Lzg;

    invoke-virtual {v12}, Lzg;->g()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_17
    iget-object v8, v4, Lyy;->a:Lyo;

    invoke-virtual {v8}, Lyn;->s()V

    iget-object v8, v4, Lyy;->a:Lyo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lyo;->e:Z

    iget-object v8, v8, Lyo;->h:Lze;

    invoke-virtual {v8}, Lze;->g()V

    iget-object v8, v4, Lyy;->a:Lyo;

    iget-object v8, v8, Lyo;->i:Lzg;

    invoke-virtual {v8}, Lzg;->g()V

    iput-boolean v9, v4, Lyy;->c:Z

    :goto_e
    iget-object v8, v4, Lyy;->d:Lyo;

    invoke-virtual {v4, v8}, Lyy;->d(Lyo;)V

    iget-object v8, v4, Lyy;->a:Lyo;

    iput v9, v8, Lyn;->aa:I

    iput v9, v8, Lyn;->ab:I

    invoke-virtual {v8, v9}, Lyn;->N(I)I

    move-result v8

    iget-object v9, v4, Lyy;->a:Lyo;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lyn;->N(I)I

    move-result v9

    iget-boolean v11, v4, Lyy;->b:Z

    if-eqz v11, :cond_18

    invoke-virtual {v4}, Lyy;->b()V

    :cond_18
    iget-object v11, v4, Lyy;->a:Lyo;

    invoke-virtual {v11}, Lyn;->k()I

    move-result v12

    invoke-virtual {v11}, Lyn;->l()I

    move-result v14

    iget-object v11, v11, Lyo;->h:Lze;

    iget-object v11, v11, Lze;->i:Lyz;

    invoke-virtual {v11, v12}, Lyz;->c(I)V

    iget-object v11, v4, Lyy;->a:Lyo;

    iget-object v11, v11, Lyo;->i:Lzg;

    iget-object v11, v11, Lzg;->i:Lyz;

    invoke-virtual {v11, v14}, Lyz;->c(I)V

    invoke-virtual {v4}, Lyy;->c()V

    if-eq v8, v7, :cond_1a

    if-ne v9, v7, :cond_19

    const/4 v9, 0x2

    goto :goto_f

    :cond_19
    goto :goto_11

    :cond_1a
    :goto_f
    if-eqz v3, :cond_19

    iget-object v3, v4, Lyy;->e:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v7, 0x0

    :cond_1b
    if-ge v7, v11, :cond_1c

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lzi;

    invoke-virtual/range {v21 .. v21}, Lzi;->e()Z

    move-result v21

    add-int/lit8 v7, v7, 0x1

    if-nez v21, :cond_1b

    goto :goto_11

    :cond_1c
    const/4 v3, 0x2

    if-ne v8, v3, :cond_1d

    iget-object v3, v4, Lyy;->a:Lyo;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lyn;->Q(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lyy;->a(Lyo;I)I

    move-result v8

    invoke-virtual {v3, v8}, Lyn;->F(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v7, v3, Lyo;->h:Lze;

    iget-object v7, v7, Lze;->f:Lza;

    invoke-virtual {v3}, Lyn;->j()I

    move-result v3

    invoke-virtual {v7, v3}, Lyz;->c(I)V

    const/4 v8, 0x2

    goto :goto_10

    :cond_1d
    :goto_10
    const/4 v3, 0x2

    if-ne v9, v3, :cond_1e

    iget-object v3, v4, Lyy;->a:Lyo;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lyn;->R(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    invoke-virtual {v4, v3, v7}, Lyy;->a(Lyo;I)I

    move-result v11

    invoke-virtual {v3, v11}, Lyn;->A(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v7, v3, Lyo;->i:Lzg;

    iget-object v7, v7, Lzg;->f:Lza;

    invoke-virtual {v3}, Lyn;->h()I

    move-result v3

    invoke-virtual {v7, v3}, Lyz;->c(I)V

    :cond_1e
    :goto_11
    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v7, v3, Lyo;->ar:[I

    const/4 v11, 0x0

    aget v7, v7, v11

    const/4 v11, 0x1

    if-eq v7, v11, :cond_20

    const/4 v11, 0x4

    if-ne v7, v11, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    goto :goto_13

    :cond_20
    :goto_12
    invoke-virtual {v3}, Lyn;->j()I

    move-result v7

    add-int/2addr v7, v12

    iget-object v3, v3, Lyo;->h:Lze;

    iget-object v3, v3, Lze;->j:Lyz;

    invoke-virtual {v3, v7}, Lyz;->c(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v3, v3, Lyo;->h:Lze;

    iget-object v3, v3, Lze;->f:Lza;

    sub-int/2addr v7, v12

    invoke-virtual {v3, v7}, Lyz;->c(I)V

    invoke-virtual {v4}, Lyy;->c()V

    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v7, v3, Lyo;->ar:[I

    const/4 v11, 0x1

    aget v7, v7, v11

    if-eq v7, v11, :cond_21

    const/4 v11, 0x4

    if-ne v7, v11, :cond_22

    :cond_21
    invoke-virtual {v3}, Lyn;->h()I

    move-result v7

    add-int/2addr v7, v14

    iget-object v3, v3, Lyo;->i:Lzg;

    iget-object v3, v3, Lzg;->j:Lyz;

    invoke-virtual {v3, v7}, Lyz;->c(I)V

    iget-object v3, v4, Lyy;->a:Lyo;

    iget-object v3, v3, Lyo;->i:Lzg;

    iget-object v3, v3, Lzg;->f:Lza;

    sub-int/2addr v7, v14

    invoke-virtual {v3, v7}, Lyz;->c(I)V

    :cond_22
    invoke-virtual {v4}, Lyy;->c()V

    const/4 v3, 0x1

    :goto_13
    iget-object v7, v4, Lyy;->e:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v11, :cond_25

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lzi;

    move-object/from16 v21, v7

    iget-object v7, v14, Lzi;->d:Lyn;

    move/from16 v22, v11

    iget-object v11, v4, Lyy;->a:Lyo;

    if-ne v7, v11, :cond_23

    iget-boolean v7, v14, Lzi;->h:Z

    if-eqz v7, :cond_24

    :cond_23
    invoke-virtual {v14}, Lzi;->c()V

    :cond_24
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v21

    move/from16 v11, v22

    goto :goto_14

    :cond_25
    iget-object v7, v4, Lyy;->e:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v11, :cond_2b

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lzi;

    if-nez v3, :cond_26

    move/from16 v21, v3

    iget-object v3, v14, Lzi;->d:Lyn;

    move-object/from16 v22, v7

    iget-object v7, v4, Lyy;->a:Lyo;

    if-ne v3, v7, :cond_27

    goto :goto_16

    :cond_26
    move/from16 v21, v3

    move-object/from16 v22, v7

    :cond_27
    iget-object v3, v14, Lzi;->i:Lyz;

    iget-boolean v3, v3, Lyz;->i:Z

    if-nez v3, :cond_28

    const/4 v3, 0x0

    goto :goto_17

    :cond_28
    iget-object v3, v14, Lzi;->j:Lyz;

    iget-boolean v3, v3, Lyz;->i:Z

    if-nez v3, :cond_29

    instance-of v3, v14, Lzc;

    if-nez v3, :cond_29

    const/4 v3, 0x0

    goto :goto_17

    :cond_29
    iget-object v3, v14, Lzi;->f:Lza;

    iget-boolean v3, v3, Lza;->i:Z

    if-nez v3, :cond_2a

    instance-of v3, v14, Lyw;

    if-nez v3, :cond_2a

    instance-of v3, v14, Lzc;

    if-nez v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_17

    :cond_2a
    :goto_16
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v21

    move-object/from16 v7, v22

    goto :goto_15

    :cond_2b
    const/4 v3, 0x1

    :goto_17
    iget-object v7, v4, Lyy;->a:Lyo;

    invoke-virtual {v7, v8}, Lyn;->Q(I)V

    iget-object v4, v4, Lyy;->a:Lyo;

    invoke-virtual {v4, v9}, Lyn;->R(I)V

    move/from16 v23, v13

    const/4 v4, 0x1

    const/4 v7, 0x2

    goto/16 :goto_1b

    :cond_2c
    iget-object v7, v6, Lyo;->a:Lyy;

    iget-boolean v11, v7, Lyy;->b:Z

    if-eqz v11, :cond_2e

    iget-object v11, v7, Lyy;->a:Lyo;

    iget-object v11, v11, Lyo;->aK:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_18
    if-ge v14, v12, :cond_2d

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Lyn;

    invoke-virtual {v4}, Lyn;->s()V

    move-object/from16 v21, v11

    const/4 v11, 0x0

    iput-boolean v11, v4, Lyn;->e:Z

    move/from16 v17, v12

    iget-object v12, v4, Lyn;->h:Lze;

    move/from16 v23, v13

    iget-object v13, v12, Lze;->f:Lza;

    iput-boolean v11, v13, Lza;->i:Z

    iput-boolean v11, v12, Lze;->h:Z

    invoke-virtual {v12}, Lze;->g()V

    iget-object v4, v4, Lyn;->i:Lzg;

    iget-object v12, v4, Lzg;->f:Lza;

    iput-boolean v11, v12, Lza;->i:Z

    iput-boolean v11, v4, Lzg;->h:Z

    invoke-virtual {v4}, Lzg;->g()V

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v17

    move-object/from16 v11, v21

    move/from16 v13, v23

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_18

    :cond_2d
    move/from16 v23, v13

    const/4 v11, 0x0

    iget-object v4, v7, Lyy;->a:Lyo;

    invoke-virtual {v4}, Lyn;->s()V

    iget-object v4, v7, Lyy;->a:Lyo;

    iput-boolean v11, v4, Lyo;->e:Z

    iget-object v4, v4, Lyo;->h:Lze;

    iget-object v12, v4, Lze;->f:Lza;

    iput-boolean v11, v12, Lza;->i:Z

    iput-boolean v11, v4, Lze;->h:Z

    invoke-virtual {v4}, Lze;->g()V

    iget-object v4, v7, Lyy;->a:Lyo;

    iget-object v4, v4, Lyo;->i:Lzg;

    iget-object v12, v4, Lzg;->f:Lza;

    iput-boolean v11, v12, Lza;->i:Z

    iput-boolean v11, v4, Lzg;->h:Z

    invoke-virtual {v4}, Lzg;->g()V

    invoke-virtual {v7}, Lyy;->b()V

    goto :goto_19

    :cond_2e
    move/from16 v23, v13

    :goto_19
    iget-object v4, v7, Lyy;->d:Lyo;

    invoke-virtual {v7, v4}, Lyy;->d(Lyo;)V

    iget-object v4, v7, Lyy;->a:Lyo;

    const/4 v11, 0x0

    iput v11, v4, Lyn;->aa:I

    iput v11, v4, Lyn;->ab:I

    iget-object v4, v4, Lyo;->h:Lze;

    iget-object v4, v4, Lze;->i:Lyz;

    invoke-virtual {v4, v11}, Lyz;->c(I)V

    iget-object v4, v7, Lyy;->a:Lyo;

    iget-object v4, v4, Lyo;->i:Lzg;

    iget-object v4, v4, Lzg;->i:Lyz;

    invoke-virtual {v4, v11}, Lyz;->c(I)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v8, v4, :cond_2f

    invoke-virtual {v6, v3, v11}, Lyo;->X(ZI)Z

    move-result v7

    move v8, v7

    const/4 v7, 0x1

    goto :goto_1a

    :cond_2f
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1a
    if-ne v9, v4, :cond_30

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Lyo;->X(ZI)Z

    move-result v3

    and-int/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_30
    const/4 v4, 0x1

    move v3, v8

    :goto_1b
    if-eqz v3, :cond_32

    xor-int/lit8 v8, v15, 0x1

    xor-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v8, v9}, Lyn;->G(ZZ)V

    goto :goto_1c

    :cond_31
    move/from16 v23, v13

    const/4 v3, 0x0

    const/4 v7, 0x0

    :cond_32
    :goto_1c
    if-eqz v3, :cond_33

    const/4 v3, 0x2

    if-eq v7, v3, :cond_61

    :cond_33
    iget v3, v6, Lyo;->az:I

    if-lez v2, :cond_46

    iget-object v4, v6, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lyo;->Y(I)Z

    move-result v7

    iget-object v8, v6, Lyo;->aI:Lzn;

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v4, :cond_43

    iget-object v10, v6, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyn;

    instance-of v11, v10, Lyq;

    if-eqz v11, :cond_34

    const/4 v14, 0x3

    goto/16 :goto_22

    :cond_34
    instance-of v11, v10, Lyj;

    if-nez v11, :cond_41

    iget-boolean v11, v10, Lyn;->H:Z

    if-eqz v7, :cond_36

    iget-object v11, v10, Lyn;->h:Lze;

    if-eqz v11, :cond_36

    iget-object v12, v10, Lyn;->i:Lzg;

    if-eqz v12, :cond_36

    iget-object v11, v11, Lze;->f:Lza;

    iget-boolean v11, v11, Lza;->i:Z

    if-eqz v11, :cond_36

    iget-object v11, v12, Lzg;->f:Lza;

    iget-boolean v11, v11, Lza;->i:Z

    if-nez v11, :cond_35

    goto :goto_1e

    :cond_35
    const/4 v14, 0x3

    goto/16 :goto_22

    :cond_36
    :goto_1e
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lyn;->N(I)I

    move-result v12

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lyn;->N(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v12, v14, :cond_39

    iget v12, v10, Lyn;->t:I

    if-eq v12, v11, :cond_38

    if-ne v13, v14, :cond_38

    iget v12, v10, Lyn;->u:I

    if-eq v12, v11, :cond_37

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x3

    goto :goto_1f

    :cond_37
    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x3

    goto :goto_1f

    :cond_38
    const/4 v11, 0x0

    const/4 v12, 0x3

    goto :goto_1f

    :cond_39
    const/4 v11, 0x0

    :goto_1f
    if-nez v11, :cond_40

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lyo;->Y(I)Z

    move-result v14

    if-eqz v14, :cond_3f

    instance-of v11, v10, Lyt;

    if-nez v11, :cond_3e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_3a

    iget v14, v10, Lyn;->t:I

    if-nez v14, :cond_3a

    if-eq v13, v11, :cond_3a

    invoke-virtual {v10}, Lyn;->K()Z

    move-result v11

    if-nez v11, :cond_3a

    const/4 v11, 0x1

    goto :goto_20

    :cond_3a
    const/4 v11, 0x0

    :goto_20
    const/4 v14, 0x3

    if-ne v13, v14, :cond_3b

    iget v15, v10, Lyn;->u:I

    if-nez v15, :cond_3b

    if-eq v12, v14, :cond_3b

    invoke-virtual {v10}, Lyn;->K()Z

    move-result v14

    if-nez v14, :cond_3b

    const/4 v11, 0x1

    :cond_3b
    const/4 v14, 0x3

    if-eq v12, v14, :cond_3c

    if-ne v13, v14, :cond_3d

    :cond_3c
    iget v12, v10, Lyn;->Y:F

    cmpl-float v12, v12, v16

    if-gtz v12, :cond_42

    :cond_3d
    if-nez v11, :cond_42

    goto :goto_21

    :cond_3e
    const/4 v14, 0x3

    goto :goto_21

    :cond_3f
    const/4 v14, 0x3

    :goto_21
    const/4 v11, 0x0

    invoke-virtual {v0, v8, v10, v11}, Lva;->j(Lzn;Lyn;I)Z

    iget-object v10, v6, Lyo;->d:Lyd;

    if-eqz v10, :cond_42

    iget-wide v11, v10, Lyd;->c:J

    const-wide/16 v19, 0x1

    add-long v11, v11, v19

    iput-wide v11, v10, Lyd;->c:J

    goto :goto_22

    :cond_40
    const/4 v14, 0x3

    goto :goto_22

    :cond_41
    const/4 v14, 0x3

    :cond_42
    :goto_22
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1d

    :cond_43
    iget-object v4, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v4, :cond_45

    iget-object v9, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Laab;

    if-nez v10, :cond_44

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_44
    check-cast v9, Laab;

    iget-object v0, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    throw v0

    :cond_45
    iget-object v4, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_46

    const/4 v7, 0x0

    :goto_24
    if-ge v7, v4, :cond_46

    iget-object v9, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzk;

    iget-object v9, v8, Lzn;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_46
    iget-object v4, v6, Lyo;->d:Lyd;

    if-eqz v4, :cond_47

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_47
    invoke-virtual {v0, v6}, Lva;->h(Lyo;)V

    iget-object v4, v0, Lva;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v2, :cond_48

    move/from16 v8, v18

    move/from16 v7, v23

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v7, v8}, Lva;->i(Lyo;III)V

    goto :goto_25

    :cond_48
    move/from16 v8, v18

    move/from16 v7, v23

    const/4 v2, 0x0

    :goto_25
    if-lez v4, :cond_5f

    invoke-virtual/range {p1 .. p1}, Lyn;->O()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lyn;->P()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v11

    iget-object v12, v0, Lva;->b:Ljava/lang/Object;

    check-cast v12, Lyn;

    iget v12, v12, Lyn;->ad:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v12

    iget-object v13, v0, Lva;->b:Ljava/lang/Object;

    check-cast v13, Lyn;

    iget v13, v13, Lyn;->ae:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_26
    if-ge v13, v4, :cond_4f

    iget-object v14, v0, Lva;->a:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyn;

    instance-of v15, v14, Lyt;

    if-eqz v15, :cond_4e

    invoke-virtual {v14}, Lyn;->j()I

    move-result v15

    invoke-virtual {v14}, Lyn;->h()I

    move-result v2

    move/from16 v18, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v14, v3}, Lva;->j(Lzn;Lyn;I)Z

    move-result v21

    or-int v3, v17, v21

    move/from16 p2, v3

    iget-object v3, v6, Lyo;->d:Lyd;

    if-eqz v3, :cond_49

    move/from16 v23, v7

    move/from16 v21, v8

    iget-wide v7, v3, Lyd;->d:J

    const-wide/16 v19, 0x1

    add-long v7, v7, v19

    iput-wide v7, v3, Lyd;->d:J

    goto :goto_27

    :cond_49
    move/from16 v23, v7

    move/from16 v21, v8

    :goto_27
    invoke-virtual {v14}, Lyn;->j()I

    move-result v3

    invoke-virtual {v14}, Lyn;->h()I

    move-result v7

    if-eq v3, v15, :cond_4b

    invoke-virtual {v14, v3}, Lyn;->F(I)V

    const/4 v3, 0x2

    if-ne v9, v3, :cond_4a

    invoke-virtual {v14}, Lyn;->i()I

    move-result v3

    if-le v3, v11, :cond_4a

    invoke-virtual {v14}, Lyn;->i()I

    move-result v3

    sget-object v8, Lyl;->d:Lyl;

    invoke-virtual {v14, v8}, Lyn;->m(Lyl;)Lym;

    move-result-object v8

    invoke-virtual {v8}, Lym;->b()I

    move-result v8

    add-int/2addr v3, v8

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v11, v3

    :cond_4a
    const/4 v3, 0x1

    goto :goto_28

    :cond_4b
    move/from16 v3, p2

    :goto_28
    if-eq v7, v2, :cond_4d

    invoke-virtual {v14, v7}, Lyn;->A(I)V

    const/4 v2, 0x2

    if-ne v10, v2, :cond_4c

    invoke-virtual {v14}, Lyn;->g()I

    move-result v2

    if-le v2, v12, :cond_4c

    invoke-virtual {v14}, Lyn;->g()I

    move-result v2

    sget-object v3, Lyl;->e:Lyl;

    invoke-virtual {v14, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v12, v2

    :cond_4c
    const/4 v3, 0x1

    :cond_4d
    check-cast v14, Lyt;

    move/from16 v17, v3

    goto :goto_29

    :cond_4e
    move/from16 v18, v3

    move/from16 v23, v7

    move/from16 v21, v8

    :goto_29
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v18

    move/from16 v8, v21

    move/from16 v7, v23

    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_4f
    move/from16 v18, v3

    move/from16 v23, v7

    move/from16 v21, v8

    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_60

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v4, :cond_5e

    iget-object v7, v0, Lva;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyn;

    instance-of v8, v7, Lyr;

    if-eqz v8, :cond_50

    instance-of v8, v7, Lyt;

    if-eqz v8, :cond_51

    :cond_50
    instance-of v8, v7, Lyq;

    if-eqz v8, :cond_52

    :cond_51
    move-object/from16 v22, v1

    move/from16 p3, v4

    move/from16 p2, v5

    const/4 v1, 0x2

    const-wide/16 v19, 0x1

    goto/16 :goto_30

    :cond_52
    iget v8, v7, Lyn;->ai:I

    const/16 v13, 0x8

    if-eq v8, v13, :cond_5d

    if-eqz v5, :cond_54

    iget-object v8, v7, Lyn;->h:Lze;

    iget-object v8, v8, Lze;->f:Lza;

    iget-boolean v8, v8, Lza;->i:Z

    if-eqz v8, :cond_54

    iget-object v8, v7, Lyn;->i:Lzg;

    iget-object v8, v8, Lzg;->f:Lza;

    iget-boolean v8, v8, Lza;->i:Z

    if-nez v8, :cond_53

    goto :goto_2c

    :cond_53
    move-object/from16 v22, v1

    move/from16 p3, v4

    move/from16 p2, v5

    const/4 v1, 0x2

    const-wide/16 v19, 0x1

    goto/16 :goto_30

    :cond_54
    :goto_2c
    instance-of v8, v7, Lyt;

    if-nez v8, :cond_5c

    invoke-virtual {v7}, Lyn;->j()I

    move-result v8

    invoke-virtual {v7}, Lyn;->h()I

    move-result v13

    iget v14, v7, Lyn;->ac:I

    const/4 v15, 0x1

    if-ne v2, v15, :cond_55

    const/4 v15, 0x2

    goto :goto_2d

    :cond_55
    :goto_2d
    invoke-virtual {v0, v1, v7, v15}, Lva;->j(Lzn;Lyn;I)Z

    move-result v15

    or-int v15, v17, v15

    move-object/from16 v22, v1

    iget-object v1, v6, Lyo;->d:Lyd;

    if-eqz v1, :cond_56

    move/from16 p3, v4

    move/from16 p2, v5

    iget-wide v4, v1, Lyd;->d:J

    const-wide/16 v19, 0x1

    add-long v4, v4, v19

    iput-wide v4, v1, Lyd;->d:J

    goto :goto_2e

    :cond_56
    move/from16 p3, v4

    move/from16 p2, v5

    const-wide/16 v19, 0x1

    :goto_2e
    invoke-virtual {v7}, Lyn;->j()I

    move-result v1

    invoke-virtual {v7}, Lyn;->h()I

    move-result v4

    if-eq v1, v8, :cond_58

    invoke-virtual {v7, v1}, Lyn;->F(I)V

    const/4 v1, 0x2

    if-ne v9, v1, :cond_57

    invoke-virtual {v7}, Lyn;->i()I

    move-result v1

    if-le v1, v11, :cond_57

    invoke-virtual {v7}, Lyn;->i()I

    move-result v1

    sget-object v5, Lyl;->d:Lyl;

    invoke-virtual {v7, v5}, Lyn;->m(Lyl;)Lym;

    move-result-object v5

    invoke-virtual {v5}, Lym;->b()I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_57
    const/4 v15, 0x1

    :cond_58
    if-eq v4, v13, :cond_5a

    invoke-virtual {v7, v4}, Lyn;->A(I)V

    const/4 v1, 0x2

    if-ne v10, v1, :cond_59

    invoke-virtual {v7}, Lyn;->g()I

    move-result v4

    if-le v4, v12, :cond_59

    invoke-virtual {v7}, Lyn;->g()I

    move-result v4

    sget-object v5, Lyl;->e:Lyl;

    invoke-virtual {v7, v5}, Lyn;->m(Lyl;)Lym;

    move-result-object v5

    invoke-virtual {v5}, Lym;->b()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v12, v4

    :cond_59
    const/4 v15, 0x1

    goto :goto_2f

    :cond_5a
    const/4 v1, 0x2

    :goto_2f
    iget-boolean v4, v7, Lyn;->G:Z

    if-eqz v4, :cond_5b

    iget v4, v7, Lyn;->ac:I

    if-eq v14, v4, :cond_5b

    const/16 v17, 0x1

    goto :goto_30

    :cond_5b
    move/from16 v17, v15

    goto :goto_30

    :cond_5c
    move-object/from16 v22, v1

    move/from16 p3, v4

    move/from16 p2, v5

    const/4 v1, 0x2

    const-wide/16 v19, 0x1

    goto :goto_30

    :cond_5d
    move-object/from16 v22, v1

    move/from16 p3, v4

    move/from16 p2, v5

    const/4 v1, 0x2

    const-wide/16 v19, 0x1

    :goto_30
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, p2

    move/from16 v4, p3

    move-object/from16 v1, v22

    goto/16 :goto_2b

    :cond_5e
    move-object/from16 v22, v1

    move/from16 p3, v4

    move/from16 p2, v5

    const/4 v1, 0x2

    const-wide/16 v19, 0x1

    if-eqz v17, :cond_60

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v21

    move/from16 v3, v23

    invoke-virtual {v0, v6, v2, v3, v4}, Lva;->i(Lyo;III)V

    move/from16 v5, p2

    move-object/from16 v1, v22

    const/16 v17, 0x0

    move/from16 v4, p3

    goto/16 :goto_2a

    :cond_5f
    move/from16 v18, v3

    :cond_60
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lyo;->W(I)V

    :cond_61
    iget-object v0, v6, Lyo;->d:Lyd;

    if-eqz v0, :cond_62

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_62
    return-void
.end method

.method public setConstraintSet(Lzy;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Lzy;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Laaa;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lzr;->e:Laaa;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lyo;

    invoke-virtual {v0, p1}, Lyo;->W(I)V

    return-void
.end method

.method protected setSelfDimensionBehaviour(Lyo;IIII)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Lzn;

    iget v1, v0, Lzn;->e:I

    iget v0, v0, Lzn;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch p2, :sswitch_data_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    goto :goto_0

    :sswitch_0
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p2, 0x1

    goto :goto_0

    :sswitch_1
    if-nez v2, :cond_0

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 p2, 0x2

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x0

    goto :goto_0

    :sswitch_2
    if-nez v2, :cond_1

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 p2, 0x2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    sparse-switch p4, :sswitch_data_1

    const/4 p5, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_4
    if-nez v2, :cond_2

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    goto :goto_1

    :sswitch_5
    if-nez v2, :cond_3

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lyn;->j()I

    move-result p4

    if-ne p3, p4, :cond_4

    invoke-virtual {p1}, Lyn;->h()I

    move-result p4

    if-eq p5, p4, :cond_5

    :cond_4
    iget-object p4, p1, Lyo;->a:Lyy;

    iput-boolean v3, p4, Lyy;->c:Z

    :cond_5
    iput v5, p1, Lyn;->aa:I

    iput v5, p1, Lyn;->ab:I

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p4, v0

    iget-object v2, p1, Lyn;->E:[I

    aput p4, v2, v5

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p4, v1

    aput p4, v2, v3

    invoke-virtual {p1, v5}, Lyn;->E(I)V

    invoke-virtual {p1, v5}, Lyn;->D(I)V

    invoke-virtual {p1, p2}, Lyn;->Q(I)V

    invoke-virtual {p1, p3}, Lyn;->F(I)V

    invoke-virtual {p1, v4}, Lyn;->R(I)V

    invoke-virtual {p1, p5}, Lyn;->A(I)V

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lyn;->E(I)V

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lyn;->D(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setState(III)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lzr;

    if-eqz v0, :cond_d

    int-to-float p2, p2

    int-to-float p3, p3

    iget v1, v0, Lzr;->b:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, p1, :cond_7

    if-ne p1, v3, :cond_0

    iget-object p1, v0, Lzr;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzp;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lzr;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzp;

    :goto_0
    iget v1, v0, Lzr;->c:I

    if-eq v1, v3, :cond_1

    iget-object v4, p1, Lzp;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzq;

    invoke-virtual {v1, p2, p3}, Lzq;->a(FF)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1
    invoke-virtual {p1, p2, p3}, Lzp;->a(FF)I

    move-result p2

    iget p3, v0, Lzr;->c:I

    if-ne p3, p2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne p2, v3, :cond_3

    move-object p3, v2

    goto :goto_1

    :cond_3
    iget-object p3, p1, Lzp;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzq;

    iget-object p3, p3, Lzq;->f:Lzy;

    :goto_1
    if-ne p2, v3, :cond_4

    iget p1, p1, Lzp;->b:I

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lzp;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzq;

    iget p1, p1, Lzq;->e:I

    :goto_2
    if-eqz p3, :cond_d

    iput p2, v0, Lzr;->c:I

    iget-object p1, v0, Lzr;->e:Laaa;

    if-nez p1, :cond_6

    iget-object p1, v0, Lzr;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p1, v0, Lzr;->e:Laaa;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    throw v2

    :cond_6
    throw v2

    :cond_7
    iput p1, v0, Lzr;->b:I

    iget-object v1, v0, Lzr;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzp;

    invoke-virtual {v1, p2, p3}, Lzp;->a(FF)I

    move-result v4

    if-ne v4, v3, :cond_8

    iget-object v5, v1, Lzp;->d:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object v5, v1, Lzp;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzq;

    iget-object v5, v5, Lzq;->f:Lzy;

    :goto_3
    if-ne v4, v3, :cond_9

    iget v1, v1, Lzp;->b:I

    goto :goto_4

    :cond_9
    iget-object v1, v1, Lzp;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzq;

    iget v1, v1, Lzq;->e:I

    :goto_4
    if-nez v5, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO Constraint set found ! id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    iput v4, v0, Lzr;->c:I

    iget-object p1, v0, Lzr;->e:Laaa;

    if-nez p1, :cond_c

    iget-object p1, v0, Lzr;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast v5, Lzy;

    invoke-virtual {v5, p1}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p1, v0, Lzr;->e:Laaa;

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    throw v2

    :cond_c
    throw v2

    :cond_d
    :goto_5
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
