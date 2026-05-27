.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;

# interfaces
.implements Laer;


# static fields
.field private static final W:[I

.field public static final a:Z

.field private static final aa:F

.field private static final ab:[Ljava/lang/Class;

.field public static final b:Z

.field public static final c:Z

.field public static final d:Landroid/view/animation/Interpolator;

.field static final e:Lmm;


# instance fields
.field A:Z

.field public B:Landroid/widget/EdgeEffect;

.field public C:Landroid/widget/EdgeEffect;

.field public D:Landroid/widget/EdgeEffect;

.field public E:Landroid/widget/EdgeEffect;

.field public F:Llv;

.field public G:I

.field public H:Lma;

.field public final I:I

.field public final J:Lmn;

.field public K:Lkt;

.field public L:Lkr;

.field public final M:Lml;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Lmq;

.field public final R:[I

.field final S:Ljava/util/List;

.field public T:Ljvb;

.field public U:Lek;

.field public final V:Laie;

.field private final aA:[I

.field private aB:Ljava/lang/Runnable;

.field private aC:Z

.field private aD:I

.field private aE:I

.field private aF:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final aG:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final ac:F

.field private final ad:Lmf;

.field private final ae:Landroid/graphics/Rect;

.field private af:I

.field private ag:Z

.field private ah:I

.field private final ai:Landroid/view/accessibility/AccessibilityManager;

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:Landroid/view/VelocityTracker;

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private final as:I

.field private at:F

.field private au:F

.field private av:Z

.field private aw:Ljava/util/List;

.field private final ax:[I

.field private ay:Laes;

.field private final az:[I

.field public final f:Lmd;

.field g:Lmh;

.field public h:Ljw;

.field i:Z

.field public final j:Ljava/lang/Runnable;

.field public final k:Landroid/graphics/Rect;

.field public final l:Landroid/graphics/RectF;

.field public m:Lls;

.field public n:Lly;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public r:Lmb;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/List;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010436

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->W:[I

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/support/v7/widget/RecyclerView;->aa:F

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->b:Z

    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v2, v0

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    sput-object v2, Landroid/support/v7/widget/RecyclerView;->ab:[Ljava/lang/Class;

    new-instance v1, Lahy;

    invoke-direct {v1, v0}, Lahy;-><init>(I)V

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Lmm;

    invoke-direct {v0}, Lmm;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->e:Lmm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040555

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lmf;

    invoke-direct {v0, v9}, Lmf;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ad:Lmf;

    new-instance v0, Lmd;

    invoke-direct {v0, v9}, Lmd;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    new-instance v0, Laie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laie;-><init>([B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    new-instance v0, Lbe;

    const/16 v2, 0x13

    invoke-direct {v0, v9, v2}, Lbe;-><init>(Landroid/support/v7/widget/RecyclerView;I)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->j:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->l:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->af:I

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->z:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->A:Z

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aj:I

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->ak:I

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->e:Lmm;

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    new-instance v0, Lkf;

    invoke-direct {v0}, Lkf;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->al:I

    const/4 v7, -0x1

    iput v7, v9, Landroid/support/v7/widget/RecyclerView;->am:I

    const/4 v0, 0x1

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->at:F

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->au:F

    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/support/v7/widget/RecyclerView;->av:Z

    new-instance v0, Lmn;

    invoke-direct {v0, v9}, Lmn;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkr;

    invoke-direct {v0}, Lkr;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->L:Lkr;

    new-instance v0, Lml;

    invoke-direct {v0}, Lml;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->N:Z

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->O:Z

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, v9}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->aF:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-boolean v13, v9, Landroid/support/v7/widget/RecyclerView;->P:Z

    const/4 v8, 0x2

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ax:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->az:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->aA:[I

    new-array v0, v8, [I

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->R:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    new-instance v0, Lbe;

    const/16 v2, 0x14

    invoke-direct {v0, v9, v2}, Lbe;-><init>(Landroid/support/v7/widget/RecyclerView;I)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->aB:Ljava/lang/Runnable;

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aD:I

    iput v13, v9, Landroid/support/v7/widget/RecyclerView;->aE:I

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, v9}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->aG:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    invoke-virtual {v9, v14}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->G:I

    invoke-static {v0}, Lafr;->a(Landroid/view/ViewConfiguration;)F

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->at:F

    invoke-static {v0}, Lafr;->b(Landroid/view/ViewConfiguration;)F

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->au:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/RecyclerView;->I:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->as:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v0, v2

    const v2, 0x43c10b3d

    mul-float v0, v0, v2

    const v2, 0x3f570a3d    # 0.84f

    mul-float v0, v0, v2

    iput v0, v9, Landroid/support/v7/widget/RecyclerView;->ac:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v0, v9, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView;->aF:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object v2, v0, Llv;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v0, Ljvb;

    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v2, v9}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2, v1, v1, v1}, Ljvb;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    new-instance v0, Ljw;

    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v2, v9}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v2, v1, v1, v1}, Ljw;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-static/range {p0 .. p0}, Lafk;->a(Landroid/view/View;)I

    move-result v0

    const/16 v15, 0x8

    if-nez v0, :cond_2

    invoke-static {v9, v15}, Lafk;->g(Landroid/view/View;I)V

    :cond_2
    invoke-static/range {p0 .. p0}, Lafb;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v9, v14}, Lafb;->o(Landroid/view/View;I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v9, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lmq;

    invoke-direct {v0, v9}, Lmq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->X(Lmq;)V

    sget-object v0, Lfu;->a:[I

    invoke-virtual {v10, v11, v0, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v2, Lfu;->a:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v13, v6

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lafn;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v7, :cond_4

    const/high16 v0, 0x40000

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_4
    invoke-virtual {v13, v14, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/support/v7/widget/RecyclerView;->i:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x7

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x5

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lkp;

    const v6, 0x7f07013c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f07013e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07013d

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lkp;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v9, v10, v15, v11, v12}, Landroid/support/v7/widget/RecyclerView;->aO(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->W:[I

    const/4 v0, 0x0

    invoke-virtual {v10, v11, v2, v12, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lafn;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0b01b0

    invoke-virtual {v9, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static F(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v1, v0, Llz;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Llz;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Llz;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Llz;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Llz;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private final a(IF)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    div-float/2addr p2, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v0, p1, v2}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, p2}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private final aA()Laes;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Laes;

    if-nez v0, :cond_0

    new-instance v0, Laes;

    invoke-direct {v0, p0}, Laes;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Laes;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:Laes;

    return-object v0
.end method

.method private final aB()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aJ()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    return-void
.end method

.method private final aC()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lml;->b(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->E(Lml;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lml;->i:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v0}, Laie;->e()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aG()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->av:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lmo;

    move-result-object v3

    :goto_1
    const/4 v0, -0x1

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aI()V

    goto :goto_5

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v5, v5, Lls;->b:Z

    if-eqz v5, :cond_4

    iget-wide v5, v3, Lmo;->e:J

    goto :goto_2

    :cond_4
    const-wide/16 v5, -0x1

    :goto_2
    iput-wide v5, v4, Lml;->m:J

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lmo;->u()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v3, Lmo;->d:I

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lmo;->a()I

    move-result v5

    :goto_3
    iput v5, v4, Lml;->l:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-object v3, v3, Lmo;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v0, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_4

    :cond_8
    iput v5, v4, Lml;->n:I

    :goto_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v4, v3, Lml;->j:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v3, Lml;->h:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    iget-boolean v1, v3, Lml;->k:Z

    iput-boolean v1, v3, Lml;->g:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v1}, Lls;->a()I

    move-result v1

    iput v1, v3, Lml;->e:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ax:[I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->aE([I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v1, Lml;->j:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->a()I

    move-result v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_c

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v4, v3}, Ljw;->e(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v4

    invoke-virtual {v4}, Lmo;->z()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lmo;->s()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v5, v5, Lls;->b:Z

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v4}, Llv;->o(Lmo;)V

    invoke-virtual {v4}, Lmo;->c()Ljava/util/List;

    invoke-static {v4}, Llv;->u(Lmo;)Laev;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v6, v4, v5}, Laie;->k(Lmo;Laev;)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v5, v5, Lml;->h:Z

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lmo;->x()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lmo;->u()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lmo;->z()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lmo;->s()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->d(Lmo;)J

    move-result-wide v5

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v7, v5, v6, v4}, Laie;->d(JLmo;)V

    :cond_b
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v1, Lml;->k:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->c()I

    move-result v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v5, v4}, Ljw;->f(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v5

    invoke-virtual {v5}, Lmo;->z()Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, v5, Lmo;->d:I

    if-ne v6, v0, :cond_d

    iget v6, v5, Lmo;->c:I

    iput v6, v5, Lmo;->d:I

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v0, Lml;->f:Z

    iput-boolean v2, v0, Lml;->f:Z

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v4, v5, v0}, Lly;->o(Lmd;Lml;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v1, v0, Lml;->f:Z

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->a()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1, v0}, Ljw;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v1

    invoke-virtual {v1}, Lmo;->z()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_c

    :cond_f
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    iget-object v4, v4, Laie;->b:Ljava/lang/Object;

    check-cast v4, Lxf;

    invoke-virtual {v4, v1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnv;

    if-eqz v4, :cond_10

    iget v4, v4, Lnv;->b:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_13

    :cond_10
    invoke-static {v1}, Llv;->o(Lmo;)V

    const/16 v4, 0x2000

    invoke-virtual {v1, v4}, Lmo;->p(I)Z

    move-result v4

    invoke-virtual {v1}, Lmo;->c()Ljava/util/List;

    invoke-static {v1}, Llv;->u(Lmo;)Laev;

    move-result-object v5

    if-eqz v4, :cond_11

    invoke-virtual {p0, v1, v5}, Landroid/support/v7/widget/RecyclerView;->ax(Lmo;Laev;)V

    goto :goto_c

    :cond_11
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    iget-object v6, v4, Laie;->b:Ljava/lang/Object;

    check-cast v6, Lxf;

    invoke-virtual {v6, v1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnv;

    if-nez v6, :cond_12

    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v6

    iget-object v4, v4, Laie;->b:Ljava/lang/Object;

    check-cast v4, Lxf;

    invoke-virtual {v4, v1, v6}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    :goto_b
    iget v1, v6, Lnv;->b:I

    or-int/2addr v1, v3

    iput v1, v6, Lnv;->b:I

    iput-object v5, v6, Lnv;->c:Laev;

    :cond_13
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    goto :goto_d

    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    :goto_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput v3, v0, Lml;->d:I

    return-void
.end method

.method private final aD()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lml;->b(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v1}, Lls;->a()I

    move-result v1

    iput v1, v0, Lml;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v1, 0x0

    iput v1, v0, Lml;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lmh;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget v2, v2, Lls;->c:I

    iget-object v0, v0, Lmh;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v2, v0}, Lly;->R(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lmh;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v1, v0, Lml;->g:Z

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v2, v3, v0}, Lly;->o(Lmd;Lml;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v1, v0, Lml;->f:Z

    iget-boolean v2, v0, Lml;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lml;->j:Z

    const/4 v2, 0x4

    iput v2, v0, Lml;->d:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    return-void
.end method

.method private final aE([I)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v6, v5}, Ljw;->e(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v6

    invoke-virtual {v6}, Lmo;->z()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lmo;->b()I

    move-result v6

    if-ge v6, v4, :cond_0

    move v4, v6

    :cond_0
    if-le v6, v3, :cond_1

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aput v4, p1, v2

    aput v3, p1, v1

    return-void

    :cond_3
    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    return-void
.end method

.method private final aF(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->aq:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ar:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    :cond_1
    return-void
.end method

.method private final aG()V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->k()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->w()V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->f()V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-boolean v5, v5, Lly;->s:Z

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v4, v4, Lls;->b:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v3, Lml;->j:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aM()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v3, Lml;->k:Z

    return-void
.end method

.method private final aH(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Llz;

    if-eqz v1, :cond_1

    check-cast v0, Llz;

    iget-boolean v1, v0, Llz;->e:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Llz;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lly;->aY(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private final aI()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lml;->m:J

    const/4 v1, -0x1

    iput v1, v0, Lml;->l:I

    iput v1, v0, Lml;->n:I

    return-void
.end method

.method private final aJ()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ag(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p0}, Lafb;->g(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private final aK()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {v0}, Lmn;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lly;->r:Lmk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmk;->f()V

    :cond_0
    return-void
.end method

.method private final aL(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb;

    invoke-interface {v4, p1}, Lmb;->y(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->r:Lmb;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private final aM()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final aN(Landroid/widget/EdgeEffect;II)Z
    .locals 7

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    int-to-float p3, p3

    mul-float p1, p1, p3

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroid/support/v7/widget/RecyclerView;->ac:F

    const v1, 0x3c75c28f    # 0.015f

    mul-float p3, p3, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float p2, p2, v2

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget v2, Landroid/support/v7/widget/RecyclerView;->aa:F

    float-to-double v2, v2

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->ac:F

    mul-float v4, v4, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    mul-double v2, v2, p2

    float-to-double p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v1

    double-to-float p2, p2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final aO(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_1
    invoke-static {p2, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lly;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->ab:[Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p3, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v5, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v5, p4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    new-array p4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x0

    :goto_2
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lly;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aa(Lly;)V

    return-void

    :catch_1
    move-exception p4

    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Error creating LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_3
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_4
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_5
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_6
    move-exception p1

    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_3
    return-void
.end method

.method public static synthetic ai(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static final ap(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    neg-int p2, p0

    int-to-float p2, p2

    mul-float p2, p2, v2

    int-to-float v1, p3

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    div-float/2addr p2, v1

    invoke-static {p1, p2, v0}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    sub-int/2addr p0, p2

    return p0

    :cond_1
    if-gez p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    int-to-float p1, p0

    mul-float p1, p1, v2

    int-to-float p3, p3

    div-float v1, p3, v2

    div-float/2addr p1, p3

    invoke-static {p2, p1, v0}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eq p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    sub-int/2addr p0, p1

    :cond_3
    return p0
.end method

.method public static final aq()J
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final az(IF)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    div-float/2addr p2, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    invoke-static {v0, p1, p2}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v0, p1, v2}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_2

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public static h(Landroid/view/View;)Lmo;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Llz;

    iget-object p0, p0, Llz;->c:Lmo;

    return-object p0
.end method

.method public static i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v7/widget/RecyclerView;

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

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static synthetic l(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic m(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic n(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public static r(Lmo;)V
    .locals 3

    iget-object v0, p0, Lmo;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmo;->a:Landroid/view/View;

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
    iput-object v1, p0, Lmo;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    invoke-virtual {v0, p0}, Lek;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final B()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    invoke-virtual {v0, p0}, Lek;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final C()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    invoke-virtual {v0, p0}, Lek;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    invoke-virtual {v0, p0}, Lek;->c(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method final E(Lml;)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    iget-object v0, v0, Lmn;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lml;->o:I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Lml;->p:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lml;->o:I

    iput v0, p1, Lml;->p:I

    return-void
.end method

.method public final G()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lly;->N(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->J()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final I(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p1}, Lly;->S(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public final J()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v4, v2}, Ljw;->f(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llz;

    iput-boolean v3, v4, Llz;->e:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v2, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    iget-object v4, v4, Lmo;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llz;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, Llz;->e:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final K(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v2, v1}, Ljw;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v2, v1}, Ljw;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final M(IIZ)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v3, v1}, Ljw;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lmo;->z()Z

    move-result v4

    if-nez v4, :cond_1

    add-int v4, p1, p2

    iget v5, v3, Lmo;->c:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_0

    neg-int v2, p2

    invoke-virtual {v3, v2, p3}, Lmo;->j(IZ)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v6, v2, Lml;->f:Z

    goto :goto_1

    :cond_0
    if-lt v5, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v2}, Lmo;->e(I)V

    invoke-virtual {v3, v5, p3}, Lmo;->j(IZ)V

    iput v4, v3, Lmo;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v6, v2, Lml;->f:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    add-int v1, p1, p2

    iget-object v3, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_5

    iget-object v4, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    if-eqz v4, :cond_4

    iget v5, v4, Lmo;->c:I

    if-lt v5, v1, :cond_3

    neg-int v5, p2

    invoke-virtual {v4, v5, p3}, Lmo;->j(IZ)V

    goto :goto_3

    :cond_3
    if-lt v5, p1, :cond_4

    invoke-virtual {v4, v2}, Lmo;->e(I)V

    invoke-virtual {v0, v3}, Lmd;->i(I)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final N()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    return-void
.end method

.method final O()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->P(Z)V

    return-void
.end method

.method public final P(Z)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, p1}, Lagq;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo;

    iget-object v2, v0, Lmo;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v0}, Lmo;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Lmo;->p:I

    if-eq v2, v1, :cond_2

    iget-object v3, v0, Lmo;->a:Landroid/view/View;

    invoke-static {v3, v2}, Lafb;->o(Landroid/view/View;I)V

    iput v1, v0, Lmo;->p:I

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public Q(I)V
    .locals 0

    return-void
.end method

.method public R(II)V
    .locals 0

    return-void
.end method

.method public final S()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aB:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lafb;->i(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    :cond_0
    return-void
.end method

.method public final T(Z)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {p1}, Ljw;->c()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v3, v1}, Ljw;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lmo;->z()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Lmo;->e(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->J()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v1, p1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lmo;->e(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmo;->d(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lls;->b:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lmd;->h()V

    return-void
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llv;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0, v1}, Lly;->aK(Lmd;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0, v1}, Lly;->aL(Lmd;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0}, Lmd;->d()V

    return-void
.end method

.method public final V(II[I)V
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    const-string v0, "RV Scroll"

    invoke-static {v0}, Ladq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->E(Lml;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v1, p1, v2, v3}, Lly;->d(ILmd;Lml;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v1, p2, v2, v3}, Lly;->e(ILmd;Lml;)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {}, Ladq;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v3, v2}, Ljw;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lmo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lmo;->i:Lmo;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lmo;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    if-eqz p3, :cond_5

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    :cond_5
    return-void
.end method

.method public final W(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ah()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lly;->S(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public final X(Lmq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->Q:Lmq;

    invoke-static {p0, p1}, Lafq;->g(Landroid/view/View;Laei;)V

    return-void
.end method

.method public Y(Lls;)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->ad:Lmf;

    invoke-virtual {v1, v2}, Lls;->i(Lej;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->U()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v1}, Ljvb;->k()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->ad:Lmf;

    invoke-virtual {p1, v2}, Lls;->h(Lej;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lly;->bk()V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {p1}, Lmd;->d()V

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lmd;->f(Lls;Z)V

    invoke-virtual {p1}, Lmd;->p()Liks;

    move-result-object v4

    if-eqz v1, :cond_3

    iget v1, v4, Liks;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v4, Liks;->a:I

    :cond_3
    iget v1, v4, Liks;->a:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v5, v4, Liks;->c:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, v4, Liks;->c:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmc;

    iget-object v6, v5, Lmc;->a:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmo;

    iget-object v9, v9, Lmo;->a:Landroid/view/View;

    invoke-static {v9}, Labn;->c(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, v5, Lmc;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget v1, v4, Liks;->a:I

    add-int/2addr v1, v3

    iput v1, v4, Liks;->a:I

    :cond_6
    invoke-virtual {p1}, Lmd;->e()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v3, p1, Lml;->f:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->T(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final Z(Llv;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llv;->c()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    const/4 v1, 0x0

    iput-object v1, v0, Llv;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aF:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object v0, p1, Llv;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    :cond_1
    return-void
.end method

.method public final aa(Lly;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ah()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llv;->c()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0, v1}, Lly;->aK(Lmd;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0, v1}, Lly;->aL(Lmd;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0}, Lmd;->d()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p0}, Lly;->bn(Landroid/support/v7/widget/RecyclerView;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lly;->aU(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v0}, Lmd;->d()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v1, v0, Ljw;->a:Ljv;

    invoke-virtual {v1}, Ljv;->d()V

    iget-object v1, v0, Ljw;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v3, v0, Ljw;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->l(Landroid/view/View;)V

    iget-object v2, v0, Ljw;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, v0, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->k(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {p1, p0}, Lly;->aU(Landroid/support/v7/widget/RecyclerView;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {p1, p0}, Lly;->aE(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {p1}, Lmd;->n()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ab(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aK()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lly;->aJ(I)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->Q(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Les;

    invoke-virtual {v1, p1}, Les;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ac(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->at(IIZ)V

    return-void
.end method

.method public final ad(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p0, p1}, Lly;->ah(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public final ae()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    :cond_0
    return-void
.end method

.method public final af(Z)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    :cond_1
    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    return-void
.end method

.method public final ag(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    invoke-virtual {v0, p1}, Laes;->b(I)V

    return-void
.end method

.method public final ah()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aK()V

    return-void
.end method

.method public final aj(II[I[II)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Laes;->e(II[I[II)Z

    move-result p1

    return p1
.end method

.method public ak(II)Z
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lly;->V()Z

    move-result v2

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ge v3, v4, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ge v3, v4, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_1
    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    const/4 v3, 0x0

    if-eqz p1, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    neg-int v5, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/widget/EdgeEffect;II)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p1, 0x0

    :cond_8
    move v4, p1

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-direct {p0, v4, p1, v5}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/widget/EdgeEffect;II)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p1, 0x0

    goto :goto_3

    :cond_a
    :goto_3
    move v4, p1

    const/4 p1, 0x0

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    if-eqz p2, :cond_f

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_d

    invoke-static {v5}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    neg-int v5, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/widget/EdgeEffect;II)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p2, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p2, 0x0

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_f

    invoke-static {v5}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, p2, v5}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/widget/EdgeEffect;II)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 p2, 0x0

    goto :goto_5

    :cond_e
    :goto_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_f
    move v3, p2

    const/4 p2, 0x0

    :goto_6
    if-nez v4, :cond_11

    if-eqz p2, :cond_10

    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    const/4 p2, 0x0

    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->as:I

    neg-int v6, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->as:I

    neg-int v6, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {v5, v4, p2}, Lmn;->a(II)V

    :goto_8
    const/4 v5, 0x1

    if-nez p1, :cond_15

    if-nez v3, :cond_14

    if-nez v4, :cond_13

    if-eqz p2, :cond_12

    goto :goto_9

    :cond_12
    return v1

    :cond_13
    :goto_9
    return v5

    :cond_14
    const/4 p1, 0x0

    :cond_15
    int-to-float p2, p1

    int-to-float v4, v3

    invoke-virtual {p0, p2, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v6

    if-nez v6, :cond_1c

    if-nez v2, :cond_17

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    goto :goto_a

    :cond_17
    const/4 v6, 0x1

    :goto_a
    invoke-virtual {p0, p2, v4, v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->H:Lma;

    if-eqz p2, :cond_1a

    iget-object v4, p2, Lma;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v4, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v7, :cond_18

    goto :goto_b

    :cond_18
    iget-object v8, v4, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v8, :cond_1a

    iget v4, v4, Landroid/support/v7/widget/RecyclerView;->I:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v4, :cond_19

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v4, :cond_1a

    :cond_19
    instance-of v4, v7, Lmj;

    if-eqz v4, :cond_1a

    invoke-virtual {p2, v7}, Lma;->d(Lly;)Lmk;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {p2, v7, p1, v3}, Lma;->a(Lly;II)I

    move-result p2

    const/4 v8, -0x1

    if-eq p2, v8, :cond_1a

    iput p2, v4, Lmk;->b:I

    invoke-virtual {v7, v4}, Lly;->aV(Lmk;)V

    return v5

    :cond_1a
    :goto_b
    if-eqz v6, :cond_1c

    if-eqz v0, :cond_1b

    or-int/lit8 v2, v2, 0x2

    goto :goto_c

    :cond_1b
    :goto_c
    invoke-virtual {p0, v2, v5}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    iget p2, p0, Landroid/support/v7/widget/RecyclerView;->as:I

    neg-int v0, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/RecyclerView;->as:I

    neg-int v0, p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    invoke-virtual {v0, p1, p2}, Lmn;->a(II)V

    return v5

    :cond_1c
    return v1
.end method

.method public final al()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final am()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final an()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final ao(IILandroid/view/MotionEvent;I)Z
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->R:[I

    aput v13, v0, v13

    aput v13, v0, v12

    invoke-virtual {v8, v9, v10, v0}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->R:[I

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
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_1
    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->R:[I

    aput v13, v7, v13

    aput v13, v7, v12

    iget-object v5, v8, Landroid/support/v7/widget/RecyclerView;->az:[I

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/RecyclerView;->y(IIII[II[I)V

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->R:[I

    aget v1, v0, v13

    sub-int v2, v16, v1

    aget v0, v0, v12

    sub-int v3, v17, v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->aq:I

    iget-object v4, v8, Landroid/support/v7/widget/RecyclerView;->az:[I

    aget v5, v4, v13

    sub-int/2addr v1, v5

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->aq:I

    iget v1, v8, Landroid/support/v7/widget/RecyclerView;->ar:I

    aget v4, v4, v12

    sub-int/2addr v1, v4

    iput v1, v8, Landroid/support/v7/widget/RecyclerView;->ar:I

    iget-object v1, v8, Landroid/support/v7/widget/RecyclerView;->aA:[I

    aget v6, v1, v13

    add-int/2addr v6, v5

    aput v6, v1, v13

    aget v5, v1, v12

    add-int/2addr v5, v4

    aput v5, v1, v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    if-eqz v11, :cond_9

    const/16 v1, 0x2002

    invoke-static {v11, v1}, Labi;->c(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    neg-float v11, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v4, v13

    sub-float v4, v5, v4

    div-float/2addr v11, v12

    invoke-static {v7, v11, v4}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    cmpl-float v7, v2, v6

    if-lez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    iget-object v7, v8, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v4, v12

    invoke-static {v7, v11, v4}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    cmpg-float v7, v3, v6

    if-gez v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    iget-object v2, v8, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    neg-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    div-float/2addr v3, v4

    invoke-static {v2, v3, v1}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_6
    cmpl-float v7, v3, v6

    if-lez v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    iget-object v2, v8, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v5, v1

    invoke-static {v2, v3, v5}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    cmpl-float v1, v2, v6

    if-nez v1, :cond_8

    cmpl-float v1, v3, v6

    if-eqz v1, :cond_9

    :cond_8
    :goto_3
    invoke-static/range {p0 .. p0}, Lafb;->g(Landroid/view/View;)V

    :cond_9
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->t(II)V

    :cond_a
    if-nez v15, :cond_c

    if-eqz v14, :cond_b

    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v8, v15, v14}, Landroid/support/v7/widget/RecyclerView;->z(II)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_d
    if-nez v0, :cond_f

    if-nez v15, :cond_f

    if-eqz v14, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_6
    const/4 v0, 0x1

    return v0
.end method

.method public final ar(Lmo;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lmo;->p:I

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p1, Lmo;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lafb;->o(Landroid/view/View;I)V

    return-void
.end method

.method public final as()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    return-void
.end method

.method public final at(IIZ)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lly;->V()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    if-eq v3, v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_8

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    or-int/lit8 v2, v2, 0x2

    :cond_7
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    :cond_8
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lmn;->c(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final au(II)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laes;->i(II)Z

    return-void
.end method

.method public final av(Ler;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lly;->N(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->J()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final aw(Les;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ax(Lmo;Laev;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lmo;->l(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v0, v0, Lml;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmo;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmo;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmo;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Lmo;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v2, v0, v1, p1}, Laie;->d(JLmo;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v0, p1, p2}, Laie;->k(Lmo;Laev;)V

    return-void
.end method

.method public final ay(Les;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lmo;)I
    .locals 6

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lmo;->p(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    iget p1, p1, Lmo;->c:I

    iget-object v2, v0, Ljvb;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Ljvb;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lih;

    iget v5, v4, Lih;->a:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v5, v4, Lih;->b:I

    if-gt v5, p1, :cond_2

    iget v4, v4, Lih;->d:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr p1, v4

    goto :goto_1

    :pswitch_1
    iget v5, v4, Lih;->b:I

    if-gt v5, p1, :cond_2

    iget v4, v4, Lih;->d:I

    add-int/2addr p1, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_2
    return v1

    :cond_4
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmo;->a()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Llz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    check-cast p1, Llz;

    invoke-virtual {v0, p1}, Lly;->s(Llz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->z(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->A(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->B(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->C(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->D(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lly;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, v1}, Lly;->E(Lml;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method final d(Lmo;)J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v0, v0, Lls;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lmo;->e:J

    goto :goto_0

    :cond_0
    iget p1, p1, Lmo;->c:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Laes;->c(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laes;->d(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Laes;->e(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Laes;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ler;

    invoke-virtual {v3, p1, p0}, Ler;->g(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v4

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    or-int/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    :goto_8
    or-int/2addr v3, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_e

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    invoke-virtual {p1}, Llv;->h()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_9

    :cond_d
    return-void

    :cond_e
    :goto_9
    invoke-static {p0}, Lafb;->g(Landroid/view/View;)V

    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final e(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llz;

    iget-boolean v1, v0, Llz;->e:Z

    if-nez v1, :cond_0

    iget-object p1, v0, Llz;->d:Landroid/graphics/Rect;

    return-object p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v1, Lml;->g:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Llz;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Llz;->c:Lmo;

    invoke-virtual {v1}, Lmo;->s()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Llz;->d:Landroid/graphics/Rect;

    return-object p1

    :cond_2
    :goto_0
    iget-object v1, v0, Llz;->d:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ler;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p1, p0}, Ler;->f(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Llz;->e:Z

    return-object v1
.end method

.method public final f(I)Lmo;
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->c()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v3, v2}, Ljw;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lmo;->u()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->b(Lmo;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v4, v3, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljw;->k(Landroid/view/View;)Z

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

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v5, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->V()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->am()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ne p2, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    xor-int/2addr v0, v5

    if-eq v1, v0, :cond_7

    const/16 v0, 0x11

    goto :goto_4

    :cond_7
    const/16 v0, 0x42

    :goto_4
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v4

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, p1, p2, v5, v6}, Lly;->j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    :cond_a
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v4

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0, p1, p2, v3, v5}, Lly;->j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    goto :goto_5

    :cond_d
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView;->aH(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_f
    if-eqz v0, :cond_1e

    if-eq v0, p0, :cond_1e

    if-ne v0, p1, :cond_10

    goto/16 :goto_c

    :cond_10
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    if-nez p1, :cond_11

    goto/16 :goto_b

    :cond_11
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v3}, Lly;->am()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v1, :cond_12

    const/4 v3, -0x1

    goto :goto_6

    :cond_12
    const/4 v3, 0x1

    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_13

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_14

    :cond_13
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_14

    const/4 v5, 0x1

    goto :goto_7

    :cond_14
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_15

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_16

    :cond_15
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_16

    const/4 v5, -0x1

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    :goto_7
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_17

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_18

    :cond_17
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_18

    const/4 v4, 0x1

    goto :goto_8

    :cond_18
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_19

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_1a

    :cond_19
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v4, 0x0

    :goto_8
    sparse-switch p2, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    if-lez v4, :cond_1e

    goto :goto_9

    :sswitch_1
    if-lez v5, :cond_1e

    goto :goto_9

    :sswitch_2
    if-gez v4, :cond_1e

    goto :goto_9

    :sswitch_3
    if-gez v5, :cond_1e

    :goto_9
    goto :goto_b

    :sswitch_4
    if-gtz v4, :cond_1c

    if-nez v4, :cond_1b

    mul-int v5, v5, v3

    if-lez v5, :cond_1e

    goto :goto_a

    :sswitch_5
    if-ltz v4, :cond_1c

    if-nez v4, :cond_1b

    mul-int v5, v5, v3

    if-gez v5, :cond_1e

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_a
    if-eqz v1, :cond_1e

    goto :goto_9

    :cond_1d
    :goto_b
    return-object v0

    :cond_1e
    :goto_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Landroid/view/View;)Lmo;
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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object p1

    return-object p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lly;->f()Llz;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lly;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Llz;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lly;->g(Landroid/view/ViewGroup$LayoutParams;)Llz;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.support.v7.widget.RecyclerView"

    return-object v0
.end method

.method public final getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    return v0
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laes;->h(I)Z

    move-result v0

    return v0
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    iget-boolean v0, v0, Laes;->a:Z

    return v0
.end method

.method public final j(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lmo;)V
    .locals 4

    iget-object v0, p1, Lmo;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lmo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmd;->m(Lmo;)V

    invoke-virtual {p1}, Lmo;->w()Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, Ljw;->h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    if-eq v1, p0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {p1, v0, v3, v2}, Ljw;->g(Landroid/view/View;IZ)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v1, p1, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->j(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p1, Ljw;->a:Ljv;

    invoke-virtual {v2, v1}, Ljv;->e(I)V

    invoke-virtual {p1, v0}, Ljw;->j(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v1}, Lmd;->e()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lly;->aE(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lkt;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    if-nez v0, :cond_4

    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    invoke-static {p0}, Lafc;->f(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lkt;->e:J

    sget-object v1, Lkt;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    iget-object v0, v0, Lkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llv;->c()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ah()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lly;->bn(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->aB:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object v1, Lnv;->a:Laed;

    invoke-interface {v1}, Laed;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v1, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo;

    iget-object v3, v3, Lmo;->a:Landroid/view/View;

    invoke-static {v3}, Labn;->c(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lmd;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v1, v2, v0}, Lmd;->f(Lls;Z)V

    new-instance v0, Loof;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Loof;-><init>(Landroid/view/ViewGroup;I)V

    invoke-interface {v0}, Looc;->a()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Labn;->d(Landroid/view/View;)Lbkb;

    move-result-object v1

    invoke-virtual {v1}, Lbkb;->m()V

    goto :goto_1

    :cond_4
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    :cond_5
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ler;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v3}, Lly;->V()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v0, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->V()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_14

    :cond_7
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->at:F

    mul-float v3, v3, v2

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->au:F

    mul-float v0, v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v2, :cond_8

    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_8
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v4, :cond_14

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->R:[I

    aput v1, v4, v1

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v2}, Lly;->V()Z

    move-result v4

    invoke-virtual {v2}, Lly;->W()Z

    move-result v2

    if-eqz v4, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    :goto_2
    if-eqz v2, :cond_a

    or-int/lit8 v6, v6, 0x2

    :cond_a
    const/high16 v7, 0x40000000    # 2.0f

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    :goto_3
    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    :goto_4
    float-to-int v0, v0

    float-to-int v3, v3

    invoke-direct {p0, v3, v8}, Landroid/support/v7/widget/RecyclerView;->a(IF)I

    move-result v7

    sub-int/2addr v3, v7

    invoke-direct {p0, v0, v9}, Landroid/support/v7/widget/RecyclerView;->az(IF)I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0, v6, v5}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    if-eq v5, v4, :cond_d

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    move v8, v3

    :goto_5
    if-eq v5, v2, :cond_e

    const/4 v9, 0x0

    goto :goto_6

    :cond_e
    move v9, v0

    :goto_6
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->R:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->az:[I

    const/4 v12, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->aj(II[I[II)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->R:[I

    aget v7, v6, v1

    sub-int/2addr v3, v7

    aget v6, v6, v5

    sub-int/2addr v0, v6

    goto :goto_7

    :cond_f
    :goto_7
    if-eq v5, v4, :cond_10

    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    move v4, v3

    :goto_8
    if-eq v5, v2, :cond_11

    const/4 v2, 0x0

    goto :goto_9

    :cond_11
    move v2, v0

    :goto_9
    invoke-virtual {p0, v4, v2, p1, v5}, Landroid/support/v7/widget/RecyclerView;->ao(IILandroid/view/MotionEvent;I)Z

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    if-eqz p1, :cond_13

    if-nez v3, :cond_12

    if-eqz v0, :cond_13

    const/4 v3, 0x0

    :cond_12
    invoke-virtual {p1, p0, v3, v0}, Lkt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_13
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->ag(I)V

    :cond_14
    :goto_a
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Lmb;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aL(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lly;->V()Z

    move-result v3

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aF(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ar:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    goto/16 :goto_5

    :pswitch_4
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    if-eq v4, v2, :cond_f

    float-to-int p1, p1

    float-to-int v4, v5

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    sub-int v6, p1, v6

    if-eqz v3, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-le v3, v5, :cond_5

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->aq:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-le v0, v4, :cond_6

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ar:I

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_f

    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->ag(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->ag:Z

    if-eqz v4, :cond_7

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->ag:Z

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->aq:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ar:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    invoke-static {v4}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v8, v5, v8

    invoke-static {v4, v7, v8}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_9

    invoke-static {v8}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_9

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v4, v7, v8}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    :cond_9
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_a

    invoke-static {v8}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_a

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v4, v7, v6}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    const/4 v4, 0x1

    :cond_a
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_b

    invoke-static {v6}, Lahi;->a(Landroid/widget/EdgeEffect;)F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_b

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p1, v6

    sub-float/2addr v5, p1

    invoke-static {v4, v7, v5}, Lahi;->b(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_b
    if-nez v4, :cond_c

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_d

    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->ag(I)V

    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->aA:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v0, :cond_e

    or-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_e
    :goto_4
    invoke-virtual {p0, v3, v1}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    :cond_f
    :goto_5
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    if-ne p1, v2, :cond_10

    return v2

    :cond_10
    return v1

    nop

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

.method protected onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    invoke-static {p1}, Ladq;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    invoke-static {}, Ladq;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->v(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lly;->X()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v4, p1, p2}, Lly;->bl(II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->aC:Z

    if-nez v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget v0, v0, Lml;->d:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aC()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p1, p2}, Lly;->aR(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v2, v0, Lml;->i:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aD()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p1, p2}, Lly;->aT(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->aa()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lly;->aR(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v2, v0, Lml;->i:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aD()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p1, p2}, Lly;->aT(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->aD:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->aE:I

    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1, p2}, Lly;->bl(II)V

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aG()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v1, v0, Lml;->k:Z

    if-eqz v1, :cond_8

    iput-boolean v2, v0, Lml;->g:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v3, v0, Lml;->g:Z

    :goto_2
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-boolean v0, v0, Lml;->k:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    :cond_a
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    iput v0, v1, Lml;->e:I

    goto :goto_4

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput v3, v0, Lml;->e:I

    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0, p1, p2}, Lly;->bl(II)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput-boolean v3, p1, Lml;->g:Z

    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lmh;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lmh;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->g:Lmh;

    iget-object p1, p1, Lahx;->d:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lmh;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmh;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Lmh;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lmh;->a:Landroid/os/Parcelable;

    iput-object v1, v0, Lmh;->a:Landroid/os/Parcelable;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lly;->K()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lmh;->a:Landroid/os/Parcelable;

    :goto_1
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->G()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->w:Z

    const/4 v8, 0x0

    if-nez v0, :cond_1e

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->ag:Z

    if-eqz v0, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->r:Lmb;

    const/4 v9, 0x1

    if-nez v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->aL(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_10

    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_3

    return v8

    :cond_3
    invoke-virtual {v0}, Lly;->V()Z

    move-result v10

    invoke-virtual {v0}, Lly;->W()Z

    move-result v11

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_5

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->aA:[I

    aput v8, v0, v9

    aput v8, v0, v8

    const/4 v0, 0x0

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->aA:[I

    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->aF(Landroid/view/MotionEvent;)V

    goto/16 :goto_e

    :pswitch_2
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->aq:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ar:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ap:I

    goto/16 :goto_e

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    goto/16 :goto_e

    :pswitch_4
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->aq:I

    float-to-int v13, v1

    sub-int/2addr v2, v13

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->ar:I

    float-to-int v14, v0

    sub-int/2addr v1, v14

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->al:I

    if-eq v0, v9, :cond_c

    if-eqz v10, :cond_9

    if-lez v2, :cond_7

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->G:I

    sub-int/2addr v2, v0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_7
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->G:I

    add-int/2addr v2, v0

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    move v2, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    move v2, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-eqz v11, :cond_b

    if-lez v1, :cond_a

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->G:I

    sub-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_a
    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->G:I

    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    goto :goto_4

    :cond_c
    :goto_4
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->al:I

    if-ne v0, v9, :cond_1a

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->R:[I

    aput v8, v0, v8

    aput v8, v0, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {v6, v2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IF)I

    move-result v0

    sub-int v15, v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {v6, v1, v0}, Landroid/support/v7/widget/RecyclerView;->az(IF)I

    move-result v0

    sub-int v16, v1, v0

    if-eq v9, v10, :cond_d

    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    move v1, v15

    :goto_5
    if-eq v9, v11, :cond_e

    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    move/from16 v2, v16

    :goto_6
    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->R:[I

    iget-object v4, v6, Landroid/support/v7/widget/RecyclerView;->az:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->aj(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->R:[I

    aget v1, v0, v8

    sub-int/2addr v15, v1

    aget v0, v0, v9

    sub-int v16, v16, v0

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->aA:[I

    aget v1, v0, v8

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->az:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move/from16 v0, v16

    goto :goto_7

    :cond_f
    move/from16 v0, v16

    :goto_7
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->az:[I

    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Landroid/support/v7/widget/RecyclerView;->aq:I

    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Landroid/support/v7/widget/RecyclerView;->ar:I

    if-eq v9, v10, :cond_10

    const/4 v1, 0x0

    goto :goto_8

    :cond_10
    move v1, v15

    :goto_8
    if-eq v9, v11, :cond_11

    const/4 v2, 0x0

    goto :goto_9

    :cond_11
    move v2, v0

    :goto_9
    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->ao(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->K:Lkt;

    if-eqz v1, :cond_1a

    if-nez v15, :cond_13

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_13
    move v8, v15

    :goto_a
    invoke-virtual {v1, v6, v8, v0}, Lkt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_e

    :pswitch_5
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->as:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_14

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    :goto_b
    if-eqz v11, :cond_15

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    :goto_c
    cmpl-float v3, v1, v0

    if-nez v3, :cond_16

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_17

    :cond_16
    float-to-int v0, v1

    float-to-int v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ak(II)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aJ()V

    goto :goto_f

    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->am:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->aq:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ar:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->ap:I

    if-eqz v11, :cond_19

    or-int/lit8 v10, v10, 0x2

    goto :goto_d

    :cond_19
    :goto_d
    invoke-virtual {v6, v10, v8}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    :cond_1a
    :goto_e
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->an:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_f
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_1b
    invoke-interface {v0, v7}, Lmb;->A(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    if-ne v0, v9, :cond_1d

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->r:Lmb;

    :cond_1d
    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aB()V

    return v9

    :cond_1e
    :goto_11
    return v8

    nop

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

.method public final p(Lmb;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmo;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmo;->i()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmo;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v0}, Lly;->aX()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->aH(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lly;->aY(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb;

    invoke-interface {v2}, Lmb;->z()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->af:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return-void
.end method

.method final s()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v3, v2}, Ljw;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    invoke-virtual {v3}, Lmo;->z()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lmo;->f()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v2, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lmd;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    invoke-virtual {v4}, Lmo;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lmd;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    invoke-virtual {v4}, Lmo;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lmd;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v3, v0, Lmd;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo;

    invoke-virtual {v3}, Lmo;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final scrollBy(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lly;->V()Z

    move-result v1

    invoke-virtual {v0}, Lly;->W()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v3, 0x0

    if-eq v2, v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-eq v2, v0, :cond_5

    const/4 p2, 0x0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->ao(IILandroid/view/MotionEvent;I)Z

    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->an()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lagq;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ah:I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->G()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    invoke-virtual {v0, p1}, Laes;->a(Z)V

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Laes;->i(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laes;->b(I)V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->q(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return-void

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

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ah()V

    :cond_2
    return-void
.end method

.method public final t(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v1, p1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p0}, Lafb;->g(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final u()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljvb;->l(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljvb;->l(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Ladq;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->h()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v0}, Ljw;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v2, v1}, Ljw;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lmo;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lmo;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->e()V

    :cond_5
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    invoke-static {}, Ladq;->b()V

    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ladq;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    invoke-static {}, Ladq;->b()V

    :cond_7
    return-void

    :cond_8
    :goto_3
    invoke-static {v1}, Ladq;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    invoke-static {}, Ladq;->b()V

    return-void
.end method

.method public final v(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lafb;->c(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lly;->ai(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lafb;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lly;->ai(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasr;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final x()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v1, :cond_1

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lml;->i:Z

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->aC:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->aD:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_3

    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->aE:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->aD:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->aE:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->aC:Z

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget v5, v5, Lml;->d:I

    if-ne v5, v4, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aC()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v1, v0}, Lly;->aQ(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aD()V

    goto :goto_2

    :cond_5
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    iget-object v6, v5, Ljvb;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v5, v5, Ljvb;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget v1, v1, Lly;->A:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget v1, v1, Lly;->B:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v1, v0}, Lly;->aQ(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    invoke-virtual {v1, v0}, Lly;->aQ(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aD()V

    :goto_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lml;->b(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ae()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iput v4, v1, Lml;->d:I

    iget-boolean v1, v1, Lml;->j:Z

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->a()I

    move-result v1

    add-int/2addr v1, v6

    :goto_3
    if-ltz v1, :cond_14

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v8, v1}, Ljw;->e(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v8

    invoke-virtual {v8}, Lmo;->z()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->d(Lmo;)J

    move-result-wide v9

    invoke-static {}, Llv;->t()Laev;

    move-result-object v11

    invoke-virtual {v11, v8}, Laev;->d(Lmo;)V

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    iget-object v12, v12, Laie;->a:Ljava/lang/Object;

    check-cast v12, Lxc;

    invoke-virtual {v12, v9, v10}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmo;

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lmo;->z()Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v13, v12}, Laie;->h(Lmo;)Z

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v14, v8}, Laie;->h(Lmo;)Z

    move-result v14

    if-eqz v13, :cond_9

    if-ne v12, v8, :cond_9

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v9, v8, v11}, Laie;->j(Lmo;Laev;)V

    goto/16 :goto_6

    :cond_9
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v15, v12, v5}, Laie;->i(Lmo;I)Laev;

    move-result-object v15

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v5, v8, v11}, Laie;->j(Lmo;Laev;)V

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    const/16 v11, 0x8

    invoke-virtual {v5, v8, v11}, Laie;->i(Lmo;I)Laev;

    move-result-object v5

    if-nez v15, :cond_e

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v5}, Ljw;->a()I

    move-result v5

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_d

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v13, v11}, Ljw;->e(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v13

    if-ne v13, v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->d(Lmo;)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-nez v16, :cond_c

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Lls;->b:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be found but it is necessary for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    invoke-virtual {v12, v3}, Lmo;->m(Z)V

    if-eqz v13, :cond_f

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->o(Lmo;)V

    :cond_f
    if-eq v12, v8, :cond_11

    if-eqz v14, :cond_10

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->o(Lmo;)V

    :cond_10
    iput-object v8, v12, Lmo;->h:Lmo;

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->o(Lmo;)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v9, v12}, Lmd;->m(Lmo;)V

    invoke-virtual {v8, v3}, Lmo;->m(Z)V

    iput-object v12, v8, Lmo;->i:Lmo;

    :cond_11
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    invoke-virtual {v9, v12, v8, v15, v5}, Llv;->q(Lmo;Lmo;Laev;Laev;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->S()V

    goto :goto_6

    :cond_12
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v5, v8, v11}, Laie;->j(Lmo;Laev;)V

    :cond_13
    :goto_6
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x4

    goto/16 :goto_3

    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->aG:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v5, v1, Laie;->b:Ljava/lang/Object;

    check-cast v5, Lxf;

    iget v5, v5, Lxf;->d:I

    add-int/2addr v5, v6

    :goto_7
    if-ltz v5, :cond_1d

    iget-object v8, v1, Laie;->b:Ljava/lang/Object;

    check-cast v8, Lxf;

    invoke-virtual {v8, v5}, Lxf;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmo;

    iget-object v9, v1, Laie;->b:Ljava/lang/Object;

    check-cast v9, Lxf;

    invoke-virtual {v9, v5}, Lxf;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnv;

    iget v10, v9, Lnv;->b:I

    and-int/lit8 v11, v10, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    invoke-virtual {v2, v8}, Landroidx/wear/ambient/AmbientMode$AmbientController;->n(Lmo;)V

    goto/16 :goto_8

    :cond_15
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_17

    iget-object v10, v9, Lnv;->c:Laev;

    if-nez v10, :cond_16

    invoke-virtual {v2, v8}, Landroidx/wear/ambient/AmbientMode$AmbientController;->n(Lmo;)V

    goto :goto_8

    :cond_16
    iget-object v11, v9, Lnv;->d:Laev;

    invoke-virtual {v2, v8, v10, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->p(Lmo;Laev;Laev;)V

    goto :goto_8

    :cond_17
    and-int/lit8 v11, v10, 0xe

    const/16 v12, 0xe

    if-ne v11, v12, :cond_18

    iget-object v10, v9, Lnv;->c:Laev;

    iget-object v11, v9, Lnv;->d:Laev;

    invoke-virtual {v2, v8, v10, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->o(Lmo;Laev;Laev;)V

    goto :goto_8

    :cond_18
    and-int/lit8 v11, v10, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_1a

    iget-object v10, v9, Lnv;->c:Laev;

    iget-object v11, v9, Lnv;->d:Laev;

    invoke-virtual {v8, v3}, Lmo;->m(Z)V

    iget-object v12, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v12, Landroid/support/v7/widget/RecyclerView;

    iget-boolean v13, v12, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v13, :cond_19

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    invoke-virtual {v12, v8, v8, v10, v11}, Llv;->q(Lmo;Lmo;Laev;Laev;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->S()V

    goto :goto_8

    :cond_19
    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    invoke-virtual {v12, v8, v10, v11}, Llv;->s(Lmo;Laev;Laev;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, v2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->S()V

    goto :goto_8

    :cond_1a
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_1b

    iget-object v10, v9, Lnv;->c:Laev;

    invoke-virtual {v2, v8, v10, v7}, Landroidx/wear/ambient/AmbientMode$AmbientController;->p(Lmo;Laev;Laev;)V

    goto :goto_8

    :cond_1b
    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_1c

    iget-object v10, v9, Lnv;->c:Laev;

    iget-object v11, v9, Lnv;->d:Laev;

    invoke-virtual {v2, v8, v10, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->o(Lmo;Laev;Laev;)V

    :cond_1c
    :goto_8
    invoke-static {v9}, Lnv;->b(Lnv;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_7

    :cond_1d
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v1, v2}, Lly;->aL(Lmd;)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget v2, v1, Lml;->e:I

    iput v2, v1, Lml;->b:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->z:Z

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->A:Z

    iput-boolean v3, v1, Lml;->j:Z

    iput-boolean v3, v1, Lml;->k:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iput-boolean v3, v1, Lly;->s:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v1, v1, Lmd;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-boolean v2, v1, Lly;->x:Z

    if-eqz v2, :cond_1f

    iput v3, v1, Lly;->w:I

    iput-boolean v3, v1, Lly;->x:Z

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v1}, Lmd;->n()V

    :cond_1f
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {v1, v2}, Lly;->p(Lml;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->O()V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->V:Laie;

    invoke-virtual {v1}, Laie;->e()V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ax:[I

    aget v2, v1, v3

    aget v5, v1, v4

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;->aE([I)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->ax:[I

    aget v8, v1, v3

    if-ne v8, v2, :cond_20

    aget v1, v1, v4

    if-eq v1, v5, :cond_21

    :cond_20
    invoke-virtual {v0, v3, v3}, Landroid/support/v7/widget/RecyclerView;->z(II)V

    :cond_21
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->av:Z

    if-eqz v1, :cond_33

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v1, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_33

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v2, v1}, Ljw;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_23
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget-wide v1, v1, Lml;->m:J

    const-wide/16 v4, -0x1

    cmp-long v8, v1, v4

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-boolean v9, v8, Lls;->b:Z

    if-eqz v9, :cond_26

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v8}, Ljw;->c()I

    move-result v8

    move-object v10, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_27

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v11, v9}, Ljw;->f(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v11

    if-eqz v11, :cond_25

    invoke-virtual {v11}, Lmo;->u()Z

    move-result v12

    if-nez v12, :cond_25

    iget-wide v12, v11, Lmo;->e:J

    cmp-long v14, v12, v1

    if-nez v14, :cond_25

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v12, v11, Lmo;->a:Landroid/view/View;

    invoke-virtual {v10, v12}, Ljw;->k(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_24

    move-object v10, v11

    goto :goto_a

    :cond_24
    move-object v10, v11

    goto :goto_b

    :cond_25
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_26
    move-object v10, v7

    :cond_27
    :goto_b
    if-eqz v10, :cond_29

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v2, v10, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljw;->k(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v10, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_c

    :cond_28
    iget-object v7, v10, Lmo;->a:Landroid/view/View;

    goto :goto_11

    :cond_29
    :goto_c
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    invoke-virtual {v1}, Ljw;->a()I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget v2, v1, Lml;->l:I

    if-ne v2, v6, :cond_2a

    goto :goto_d

    :cond_2a
    move v3, v2

    :goto_d
    invoke-virtual {v1}, Lml;->a()I

    move-result v1

    move v2, v3

    :goto_e
    if-ge v2, v1, :cond_2d

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->f(I)Lmo;

    move-result-object v8

    if-nez v8, :cond_2b

    goto :goto_f

    :cond_2b
    iget-object v9, v8, Lmo;->a:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v7, v8, Lmo;->a:Landroid/view/View;

    goto :goto_11

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2d
    :goto_f
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v6

    :goto_10
    if-ltz v1, :cond_30

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->f(I)Lmo;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_11

    :cond_2e
    iget-object v3, v2, Lmo;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v7, v2, Lmo;->a:Landroid/view/View;

    goto :goto_11

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_30
    goto :goto_11

    :cond_31
    :goto_11
    if-eqz v7, :cond_33

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    iget v1, v1, Lml;->n:I

    int-to-long v2, v1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object v7, v1

    :cond_32
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->aI()V

    return-void
.end method

.method public final y(IIII[II[I)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->aA()Laes;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Laes;->g(IIII[II[I)Z

    return-void
.end method

.method public final z(II)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    sub-int v1, v0, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v2

    sub-int v3, v2, p2

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->R(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->aw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Les;

    invoke-virtual {v1, p0, p1, p2}, Les;->c(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    return-void
.end method
