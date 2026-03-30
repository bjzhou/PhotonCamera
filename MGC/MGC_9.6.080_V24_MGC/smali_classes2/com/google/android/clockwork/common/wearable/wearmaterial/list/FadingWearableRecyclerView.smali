.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# instance fields
.field ac:Lobh;

.field ad:Lobg;

.field ae:Lobf;

.field public af:Lnzu;

.field public ag:Z

.field private final ah:Landroid/content/Context;

.field private final ai:I

.field private final aj:I

.field private ak:Z

.field private al:I

.field private am:J

.field private an:J

.field private ao:Landroid/view/animation/Interpolator;

.field private final ap:Landroid/view/animation/Interpolator;

.field private aq:Z

.field private ar:Z

.field private as:I

.field private at:I

.field private au:F

.field private av:F

.field private aw:Z

.field private ax:I

.field private final ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1
    const v6, 0x3f2b851f    # 0.67f

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_3
    iput-wide v0, p2, Lki;->i:J

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x1c2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v7, Lnzq;->a:[I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v1, 0xe1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ah:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aj:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v3, Lobh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_e
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Lobh;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_f
    iput-wide v0, p2, Lki;->h:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const/4 p3, 0x6

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:Z

    nop

    const/4 p3, 0x1

    nop

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    nop

    nop

    iput-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:Z

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-lez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aD()V

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:I

    nop

    nop

    nop

    nop

    if-eq v3, v1, :cond_3

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:I

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingRight()I

    move-result v7

    nop

    nop

    iget v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v3, v7, v8}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPadding(IIII)V

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:Z

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x7

    nop

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:Z

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    nop

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:F

    nop

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:F

    nop

    nop

    const/16 v1, 0x9

    nop

    nop

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    nop

    nop

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    cmpl-float v4, v1, v2

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingStart()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    :cond_4
    int-to-float v4, v6

    nop

    nop

    nop

    mul-float/2addr v4, v1

    nop

    nop

    nop

    float-to-double v7, v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    double-to-int v1, v7

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingEnd()I

    move-result v2

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_5
    int-to-float v2, v6

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v2, v3

    nop

    nop

    nop

    float-to-double v2, v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    nop

    double-to-int v2, v2

    nop

    nop

    nop

    nop

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v4

    nop

    nop

    nop

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPaddingRelative(IIII)V

    iget-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:Z

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:Z

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    new-instance v2, Lobg;

    nop

    nop

    nop

    invoke-direct {v2, p0}, Lobg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    nop

    nop

    :cond_6
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, v2, Lobg;->d:Z

    nop

    nop

    iget-object v3, v2, Lobg;->b:Ljq;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    iget-object v1, v2, Lobg;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3, v1}, Lkn;->e(Landroid/support/v7/widget/RecyclerView;)V

    :cond_8
    filled-new-array {p3, v5}, [I

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    nop

    nop

    aget v1, v1, v2

    nop

    nop

    nop

    if-eq v1, p3, :cond_9

    nop

    nop

    nop

    nop

    move v2, v0

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    move v2, p3

    nop

    nop

    :goto_15
    if-eq v1, p3, :cond_a

    nop

    nop

    nop

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    new-instance v3, Lobf;

    nop

    nop

    nop

    invoke-direct {v3, p1, p0}, Lobf;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    :cond_a
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_c

    nop

    nop

    if-ne v1, v5, :cond_b

    nop

    nop

    nop

    nop

    move v0, p3

    nop

    nop

    nop

    nop

    nop

    :cond_b
    iput-boolean v0, p1, Lobf;->a:Z

    nop

    nop

    nop

    xor-int/lit8 v0, v2, 0x1

    nop

    iput-boolean v0, p1, Lobf;->b:Z

    nop

    nop

    :cond_c
    const/4 p1, 0x5

    nop

    nop

    nop

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Lobh;

    nop

    nop

    nop

    nop

    iput-boolean p1, p3, Lobh;->a:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ao:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v5, 0x3ea8f5c3    # 0.33f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v3, p0, v5}, Lnze;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p2, Lki;->j:J

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:Z

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Landroid/view/animation/PathInterpolator;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x19

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->Z(Lki;)V

    goto/32 :goto_d

    nop

    nop

    :goto_27
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->al:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    goto/32 :goto_34

    nop

    nop

    :goto_2e
    goto/32 :goto_23

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_31
    iput-wide v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->an:J

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, p2, v7, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_33
    throw p0

    nop

    nop

    :goto_34
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    new-instance v3, Lnzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:F

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_39
    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v3, p1}, Lobh;-><init>(Landroid/content/Context;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3, p0, v7}, Lnzu;-><init>(Landroid/view/ViewGroup;Lnzs;)V

    goto/32 :goto_22

    nop

    nop

    :goto_3c
    const-wide/16 v1, 0x4b

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3d
    iput-wide v0, p2, Lki;->k:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ai:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v1, v5, v3, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v7, p0}, Lnzo;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_42
    new-instance v7, Lnzo;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p2, p1}, Lnzn;-><init>(Lnzu;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v0, 0x12

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/high16 v2, -0x31000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_46
    const v2, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v3, Lnze;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance p2, Lnzn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4a
    const/high16 v1, -0x80000000

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4c
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aw:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    iput-wide v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->am:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_33

    nop

    nop
.end method


# virtual methods
.method public final S(II)V
    .locals 8

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p2, v0, Lobf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    const/16 p1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    move v7, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    :goto_5
    cmp-long p2, v3, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 p1, 0x3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_27

    nop

    nop

    :goto_9
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lobg;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, v0, Lobf;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, v0, Lobf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v1, v0, Lobf;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p1, p2, v2}, Lpic;->A(IIZ)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    if-lez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_39

    nop

    :goto_15
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_18
    iget-object v1, v0, Lobf;->j:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean p1, p0, Lobg;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v5, 0x1f4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    move v2, p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    cmp-long p2, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Lobf;->a(I)V

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    iget-object p2, p0, Lobg;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lnzu;->e()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean v1, v0, Lobf;->f:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lobg;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_37
    const-wide/16 v0, 0x50

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move p1, v7

    nop

    nop

    :goto_39
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Lobg;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, p1, p2, v2}, Lpic;->B(IIZ)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3c
    if-nez p1, :cond_9

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v3, v0, Lobf;->h:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3f
    if-ne p2, p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_a
    :goto_40
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_24

    nop

    :goto_42
    if-nez v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_c
    goto/32 :goto_45

    nop

    nop

    :goto_43
    sub-long v3, v1, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_44
    iget-boolean v1, v0, Lobf;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-boolean v1, v0, Lobf;->g:Z

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_46
    if-nez v1, :cond_d

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_d
    :goto_47
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final a(I)I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final aC(II)V
    .locals 5

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3
    mul-float/2addr v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setPadding(IIII)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->au:F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v2, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aj:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v4, p1

    nop

    :goto_13
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    float-to-int p2, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    sub-float/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-int p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Lkl;->bh(Landroid/view/View;)I

    move-result v3

    nop

    nop

    :goto_18
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr p2, v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->at:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    const/high16 v1, -0x31000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_26
    move p1, p2

    nop

    :goto_27
    goto/32 :goto_21

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->av:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingRight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eq v2, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float p1, v4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getPaddingTop()I

    move-result v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_39
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v3}, Lkl;->T(I)V

    :goto_3b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:Z

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_13

    nop

    :goto_3e
    goto/32 :goto_12

    nop

    nop

    :goto_3f
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_40
    cmpl-float v2, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_20

    nop

    nop

    :goto_42
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aj:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_44
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->as:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    if-eq v0, p1, :cond_7

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x14

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    cmpl-float v0, p2, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v0, p2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_49
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4c
    sub-float/2addr p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final aD()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lke;->k(Lkg;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ar:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->a(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aC(II)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->a(I)I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    invoke-direct {v1, p0}, Lnzp;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lnzp;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aq:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_f

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_1e
    if-lt v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final computeVerticalScrollExtent()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    int-to-float p0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ax:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ax:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    mul-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x17

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidate()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnzu;->e()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    const-wide/16 v1, 0xe1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Lnvy;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->am:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    iget-wide v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->an:J

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_15

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->setTranslationY(F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v2, p0, v3}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0xc

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ao:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ap:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ak:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->am:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ay:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Lobf;->j:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v4, v4, v4}, Lpic;->A(IIZ)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lpic;->z(Landroid/view/MotionEvent;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lpic;->z(Landroid/view/MotionEvent;)I

    move-result v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6
    rem-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v5, v2, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v3, p0, Lobf;->g:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const/16 p1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v5, v0, Lobg;->d:Z

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_4e

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lobf;->a:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    move v5, v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lobf;->a(I)V

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v2, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iput-boolean v5, v0, Lobg;->e:Z

    nop

    :goto_19
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p0, Lobf;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1b
    and-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_14

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    if-gtz p1, :cond_5

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v3, p0, Lobf;->f:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    iget p1, p0, Lobf;->d:F

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_42

    nop

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    div-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    iput v2, p0, Lobf;->e:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_33
    if-ltz p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput p1, p0, Lobf;->d:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_35
    if-ne v2, p1, :cond_9

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_36
    iput p1, p0, Lobf;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_37
    iget v0, v0, Lobh;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p0, :cond_a

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget p1, p0, Lobf;->e:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq v0, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Lobh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_41
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_45
    iput p1, p0, Lobf;->d:F

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/high16 v1, 0x400000

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v3, v4, v4, v4}, Lpic;->B(IIZ)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4b
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_38

    nop

    :goto_4c
    if-gtz p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_55

    nop

    nop

    :goto_4f
    goto/32 :goto_39

    nop

    :goto_50
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_51
    if-nez v5, :cond_f

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_10
    :goto_54
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1f

    nop

    nop

    :goto_56
    const v1, 0x2

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_57
    add-float/2addr p1, v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_58
    goto :goto_4e

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5b
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/high16 v0, 0x42340000    # 45.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5d
    iget p1, p0, Lobf;->d:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v0, 0x13

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_60
    and-int/2addr v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v0

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnzu;->e()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ae:Lobf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    iput-boolean v1, v0, Lobf;->f:Z

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ad:Lobg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lobg;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Lobg;->e:Z

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lobg;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
