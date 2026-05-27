.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;

# interfaces
.implements Liwa;


# instance fields
.field W:Lixt;

.field aa:Liwf;

.field public ab:Liwg;

.field public ac:Z

.field ad:Ljvq;

.field private final ae:Landroid/content/Context;

.field private final af:I

.field private final ag:I

.field private ah:Lixu;

.field private ai:Z

.field private aj:I

.field private ak:J

.field private al:J

.field private am:Landroid/view/animation/Interpolator;

.field private final an:Landroid/view/animation/Interpolator;

.field private ao:Z

.field private ap:Z

.field private aq:I

.field private ar:I

.field private as:F

.field private at:F

.field private au:Z

.field private av:Z

.field private aw:F

.field private ax:I

.field private final ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ai:Z

    const-wide/16 v0, 0x4b

    iput-wide v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:J

    const-wide/16 v0, 0xe1

    iput-wide v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->al:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->am:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->an:Landroid/view/animation/Interpolator;

    iput-boolean v11, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Z

    const/high16 v13, -0x80000000

    iput v13, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:I

    iput v13, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:I

    const/high16 v14, -0x31000000

    iput v14, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:F

    iput v14, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:F

    const/4 v15, 0x1

    iput-boolean v15, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:Z

    iput-boolean v11, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:Z

    new-instance v0, Livn;

    const/4 v9, 0x2

    invoke-direct {v0, v10, v9}, Livn;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;I)V

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object/from16 v8, p1

    iput-object v8, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:I

    iput v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aj:I

    new-instance v0, Liwg;

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v3, v10}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Liwg;-><init>(Landroid/view/ViewGroup;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B[B[B)V

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Livz;

    invoke-static {v0, v1}, Llho;->O(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Livz;

    invoke-interface {v0}, Livz;->a()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Livz;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lixu;

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ah:Lixu;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Liwc;->a:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v2, v1, v3, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ai:Z

    invoke-virtual {v1, v15, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ao:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aB()V

    goto :goto_1

    :cond_1
    iput-boolean v15, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Z

    goto :goto_1

    :cond_2
    iget v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:I

    if-eq v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingLeft()I

    move-result v0

    iget v2, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingRight()I

    move-result v3

    iget v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:I

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPadding(IIII)V

    :cond_3
    iput-boolean v11, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Z

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Z

    const/16 v0, 0x9

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:F

    invoke-virtual {v1, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:F

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v4, v0, v14

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingStart()I

    move-result v0

    goto :goto_2

    :cond_4
    iget v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    cmpl-float v4, v3, v14

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingEnd()I

    move-result v3

    goto :goto_3

    :cond_5
    iget v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v10, v0, v4, v3, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPaddingRelative(IIII)V

    iget-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:Z

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:Z

    if-eqz v0, :cond_6

    iget-object v3, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Ljvq;

    if-nez v3, :cond_6

    new-instance v3, Ljvq;

    invoke-direct {v3, v10}, Ljvq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Ljvq;

    :cond_6
    iget-object v3, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Ljvq;

    if-eqz v3, :cond_8

    iput-boolean v0, v3, Ljvq;->a:Z

    iget-object v4, v3, Ljvq;->b:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, v3, Ljvq;->c:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    check-cast v4, Lma;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Lma;->e(Landroid/support/v7/widget/RecyclerView;)V

    :cond_8
    iget-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:Z

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:Z

    if-eqz v0, :cond_9

    iget-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aa:Liwf;

    if-nez v0, :cond_9

    new-instance v0, Liwf;

    iget-object v3, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Landroid/content/Context;

    invoke-direct {v0, v3}, Liwf;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aa:Liwf;

    :cond_9
    filled-new-array {v15, v2}, [I

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v15, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const/4 v3, 0x1

    :goto_5
    if-eq v0, v15, :cond_b

    iget-object v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    if-nez v4, :cond_b

    new-instance v4, Lixt;

    iget-object v5, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Landroid/content/Context;

    invoke-direct {v4, v5, v10}, Lixt;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    :cond_b
    iget-object v4, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    if-eqz v4, :cond_d

    if-ne v0, v2, :cond_c

    const/4 v11, 0x1

    goto :goto_6

    :cond_c
    :goto_6
    iput-boolean v11, v4, Lixt;->b:Z

    xor-int/lit8 v0, v3, 0x1

    iput-boolean v0, v4, Lixt;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    new-instance v1, Livw;

    invoke-direct {v1, v0}, Livw;-><init>(Liwg;)V

    const-wide/16 v3, 0x1c2

    iput-wide v3, v1, Llv;->h:J

    iput-wide v3, v1, Llv;->i:J

    iput-wide v3, v1, Llv;->j:J

    iput-wide v3, v1, Llv;->k:J

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/RecyclerView;->Z(Llv;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getOverScrollMode()I

    move-result v0

    if-eq v0, v2, :cond_e

    new-instance v0, Livy;

    invoke-direct {v0, v10}, Livy;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->U:Lek;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->G()V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public final Q(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aa:Liwf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Liwf;->f:Les;

    invoke-virtual {v0, p1}, Les;->d(I)V

    :cond_0
    return-void
.end method

.method public final R(II)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    invoke-virtual {v0}, Liwg;->c()V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lixt;->k:Ljew;

    iget-boolean v2, v0, Lixt;->c:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lixt;->g:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, v0, Lixt;->b:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lixt;->h:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Ljew;->c(IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, p2, v2}, Ljew;->b(IIZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lixt;->i:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    iget v4, v0, Lixt;->j:I

    if-eq v4, v1, :cond_5

    :cond_4
    iput-wide v2, v0, Lixt;->i:J

    iput v1, v0, Lixt;->j:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lixt;->a(I)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aa:Liwf;

    if-eqz v0, :cond_6

    iget-object v0, v0, Liwf;->f:Les;

    invoke-virtual {v0, p0, p1, p2}, Les;->c(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_6
    return-void
.end method

.method public final a(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public final aA(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:F

    return-void
.end method

.method public final aB()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Livx;

    invoke-direct {v1, p0}, Livx;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V

    invoke-virtual {v0, v1}, Lls;->h(Lej;)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ao:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->a(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->az(II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final az(II)V
    .locals 5

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:F

    const/4 v1, 0x0

    const/high16 v2, -0x31000000

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Z

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    if-ne v3, v0, :cond_1

    move p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    mul-float p1, p1, v0

    sub-float/2addr p2, p1

    int-to-float p1, v4

    sub-float/2addr p2, p1

    float-to-int p1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:F

    cmpl-float v0, p2, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result p2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v0

    if-ne v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v0

    if-eq v0, p2, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPadding(IIII)V

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lly;->be(Landroid/view/View;)I

    move-result v1

    goto :goto_3

    :cond_5
    :goto_3
    invoke-virtual {p1, v1}, Lly;->S(I)V

    :cond_6
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ax:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ax:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:F

    mul-float v1, v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method public final invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    invoke-virtual {v0}, Liwg;->c()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ai:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aj:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v2, Livv;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Livv;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-wide v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->al:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->am:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-wide v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->an:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ah:Lixu;

    const/4 v1, 0x1

    const/high16 v2, 0x400000

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-ne v0, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ah:Lixu;

    invoke-interface {v0}, Lixu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Ljvq;

    if-eqz v5, :cond_2

    iget-boolean v6, v5, Ljvq;->a:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_2

    iget-object v6, v5, Ljvq;->c:Ljava/lang/Object;

    iget-object v7, v5, Ljvq;->d:Ljava/lang/Object;

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, v5, Ljvq;->c:Ljava/lang/Object;

    iget-object v5, v5, Ljvq;->d:Ljava/lang/Object;

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    const-wide/16 v7, 0x50

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    if-eqz v5, :cond_9

    iget-boolean v6, v5, Lixt;->b:Z

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    iput-boolean v1, v5, Lixt;->g:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0x1a

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iput-boolean v1, v5, Lixt;->h:Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {p1}, Ljew;->a(Landroid/view/MotionEvent;)I

    move-result v2

    iget-object v6, v5, Lixt;->k:Ljew;

    invoke-static {p1}, Ljew;->a(Landroid/view/MotionEvent;)I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v6, v4, v4, v4}, Ljew;->b(IIZ)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_6
    if-gez v7, :cond_7

    invoke-virtual {v6, v4, v4, v4}, Ljew;->c(IIZ)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    iget v4, v5, Lixt;->f:I

    if-eq v2, v4, :cond_8

    const/4 v4, 0x0

    iput v4, v5, Lixt;->e:F

    :cond_8
    iput v2, v5, Lixt;->f:I

    iget v2, v5, Lixt;->d:F

    mul-float v1, v1, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v5, Lixt;->e:F

    add-float/2addr v2, v1

    iput v2, v5, Lixt;->e:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, v5, Lixt;->e:F

    rem-float/2addr v1, v2

    iput v1, v5, Lixt;->e:F

    const/16 v1, 0x12

    invoke-virtual {v5, v1}, Lixt;->a(I)V

    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aa:Liwf;

    if-eqz v1, :cond_a

    iget-object v1, v1, Liwf;->e:Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    invoke-virtual {p1}, Liwg;->c()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->W:Lixt;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lixt;->g:Z

    :cond_0
    return p1
.end method
