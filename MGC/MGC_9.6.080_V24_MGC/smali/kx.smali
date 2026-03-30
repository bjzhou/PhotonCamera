.class public Lkx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lkv;

.field public b:I

.field public c:Landroid/support/v7/widget/RecyclerView;

.field public d:Lkl;

.field public e:Z

.field public f:Z

.field public g:Landroid/view/View;

.field public h:Z

.field protected final i:Landroid/view/animation/LinearInterpolator;

.field protected final j:Landroid/view/animation/DecelerateInterpolator;

.field protected k:Landroid/graphics/PointF;

.field protected l:I

.field protected m:I

.field private final n:Landroid/util/DisplayMetrics;

.field private o:Z

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lkv;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object v0, p0, Lkx;->a:Lkv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lkv;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iput v0, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lkx;->i:Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lkx;->m:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lkx;->o:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    invoke-direct {v0}, Lkv;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lkx;->b:I

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

    nop

    :goto_9
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iput-object p1, p0, Lkx;->n:Landroid/util/DisplayMetrics;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/view/animation/LinearInterpolator;

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
    new-instance v0, Lkv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lkx;->a:Lkv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lkx;->l:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lkx;->j:Landroid/view/animation/DecelerateInterpolator;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final n(Landroid/view/View;)I
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object p0

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

    :goto_2
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x21a

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Ljava/lang/Integer;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static final o(Landroid/graphics/PointF;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    div-float/2addr v1, v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    double-to-float v0, v0

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

    nop

    :goto_11
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    iget v1, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, p0, Landroid/graphics/PointF;->y:F

    nop

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

    :goto_18
    iget v1, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    add-float/2addr v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private static p(II)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int p1, p0, p1

    nop

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

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/2addr p0, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    div-float/2addr p1, p0

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

    :goto_1
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x41c80000    # 25.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p1

    nop

    :goto_4
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected b(I)I
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lkx;->p:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    double-to-int p0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lkx;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lkx;->o:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    float-to-double p0, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lkx;->p:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkx;->n:Landroid/util/DisplayMetrics;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lkx;->o:Z

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected c(Landroid/view/View;Lkv;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    neg-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    double-to-int v1, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    neg-int v0, v0

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lkx;->l()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    mul-int v2, p1, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    int-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, v0}, Lkx;->h(Landroid/view/View;I)I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v1, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0, p1, v1, p0}, Lkv;->b(IIILandroid/view/animation/Interpolator;)V

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-int v1, v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lkx;->k()I

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_14
    invoke-virtual {p0, p1, v1}, Lkx;->i(Landroid/view/View;I)I

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lkx;->j:Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Lkx;->j(I)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Landroid/graphics/PointF;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

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

    :goto_3
    check-cast p0, Lkw;

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

    :goto_4
    instance-of v0, p0, Lkw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class p0, Lkw;

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

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkx;->d:Lkl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lkw;->K(I)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "RecyclerView"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method final e(II)V
    .locals 5

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_0
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3
    iget v1, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4
    const-string v1, "RecyclerView"

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Lkx;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Lkv;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1, v2}, Lkx;->c(Landroid/view/View;Lkv;)V

    goto/32 :goto_5a

    nop

    nop

    :goto_a
    cmpl-float v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 v2, -0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p2, p1, Lkv;->a:I

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

    :goto_d
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Lkx;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lkx;->m(Lkv;)V

    :goto_12
    goto/32 :goto_33

    nop

    nop

    :goto_13
    invoke-static {v2, p2}, Lkx;->p(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5f

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lkx;->d:Lkl;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Lkl;->am()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Lkv;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, p0, Lkx;->l:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, p1}, Lkx;->p(II)I

    move-result p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lkx;->f()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3f

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    :goto_23
    iget v3, p0, Lkx;->b:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_25
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Lkx;->n(Landroid/view/View;)I

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    if-nez p1, :cond_7

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lkx;->a:Lkv;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2a
    iget v3, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

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

    :goto_2c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lkx;->g:Landroid/view/View;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean p1, p0, Lkx;->f:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_30
    iget-object p0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lla;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, p0, Lkx;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_33
    iget-object p1, p0, Lkx;->a:Lkv;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lkx;->g:Landroid/view/View;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_38
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v1, v1, Landroid/graphics/PointF;->y:F

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

    :goto_3a
    invoke-virtual {p0}, Lla;->b()V

    :goto_3b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3d
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    iput-object v2, p0, Lkx;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput p1, p0, Lkx;->l:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_42
    iput-boolean p1, p0, Lkx;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_c
    :goto_44
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lkx;->f()V

    goto/32 :goto_21

    nop

    nop

    :goto_46
    iget-boolean v1, p0, Lkx;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_47
    if-eqz p2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Lkx;->a:Lkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_49
    invoke-virtual {p0, v1}, Lkx;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    :goto_4b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4c
    if-eq v1, v3, :cond_e

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_e
    goto/32 :goto_5d

    nop

    nop

    :goto_4d
    if-eqz v3, :cond_f

    nop

    goto/32 :goto_8

    nop

    :cond_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lkx;->f()V

    :goto_50
    goto/32 :goto_46

    nop

    nop

    :goto_51
    cmpl-float v3, v3, v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v2, p0, Lkx;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string v3, "Passed over target position while smooth scrolling."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_55
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_56
    iget-boolean v1, p0, Lkx;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    :goto_58
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lkx;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Lkx;->a:Lkv;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput p2, p0, Lkx;->m:I

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

    nop

    :goto_5d
    iget-object v1, p0, Lkx;->g:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v4, 0x0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_59

    nop

    nop
.end method

.method public final f()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput v0, p0, Lkx;->m:I

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

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lkx;->l:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Lkx;->d:Lkl;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lkx;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    if-eq v2, p0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    iput v3, v2, Lky;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lkx;->c:Landroid/support/v7/widget/RecyclerView;

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

    :goto_e
    iput-object v1, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    iget-object v0, p0, Lkx;->d:Lkl;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v3, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lkx;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Lkl;->t:Lkx;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lkl;->t:Lkx;

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    iput-boolean v0, p0, Lkx;->f:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    iput-object v1, p0, Lkx;->g:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Lkx;->e:Z

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public g(IIIII)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p5, p0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p3

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz p3, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-nez p5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_6
    sub-int/2addr p4, p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr p4, p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    return p4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    return p4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    sub-int/2addr p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    return p3

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    if-ltz p4, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop
.end method

.method public h(Landroid/view/View;I)I
    .locals 10

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sub-int v5, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lkl;->W()Z

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    move v9, p2

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

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, v0, Lkl;->C:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    iget v1, v1, Lkm;->rightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, v1, Lkm;->leftMargin:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    sub-int v8, p1, v0

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

    nop

    :goto_11
    invoke-static {p1}, Lkl;->bs(Landroid/view/View;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    check-cast v1, Lkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

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

    :goto_14
    move-object v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-static {p1}, Lkl;->bt(Landroid/view/View;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lkx;->d:Lkl;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    :goto_1c
    add-int v6, p1, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lkl;->au()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual/range {v4 .. v9}, Lkx;->g(IIIII)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lkl;->at()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public i(Landroid/view/View;I)I
    .locals 10

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lkl;->X()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget p1, v0, Lkl;->D:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v4 .. v9}, Lkx;->g(IIIII)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lkl;->br(Landroid/view/View;)I

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lkl;->bu(Landroid/view/View;)I

    move-result v2

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

    :goto_b
    add-int v6, p1, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    iget-object v0, p0, Lkx;->d:Lkl;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v4, p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_13
    goto/32 :goto_17

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-int v8, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lkl;->av()I

    move-result v7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v1, Lkm;->bottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    sub-int v5, v2, v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lkl;->as()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v9, p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    iget v3, v1, Lkm;->topMargin:I

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

    :goto_1f
    check-cast v1, Lkm;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop
.end method

.method protected j(I)I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-double p0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lkx;->b(I)I

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

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    nop

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

    :goto_5
    const v1, 0x12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    double-to-int p0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

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

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    const-wide v0, 0x3fd57a786c22680aL    # 0.3356

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    div-double/2addr p0, v0

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method protected k()I
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v0, v0, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget p0, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float p0, p0, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    if-lez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_19
    goto :goto_e

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

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

    :goto_1c
    iget-object p0, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected l()I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    cmpl-float p0, p0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    cmpl-float v0, v0, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, v0, Landroid/graphics/PointF;->y:F

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

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const/4 p0, 0x1

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

    :goto_e
    iget-object p0, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    if-lez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    :goto_12
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iget p0, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method protected m(Lkv;)V
    .locals 4

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int v2, v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkx;->i:Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1, v2, v0, p0}, Lkv;->b(IIILandroid/view/animation/Interpolator;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lkx;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lkx;->o(Landroid/graphics/PointF;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_9
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const v2, 0x461c4000    # 10000.0f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0x2710

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    const v3, 0x3f99999a    # 1.2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v1, v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lkx;->f()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    iget v1, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Lkx;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Lkx;->m:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_22
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v2, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    iput v0, p1, Lkv;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Lkx;->m:I

    nop

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

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    float-to-int v1, v1

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

    :goto_2a
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Lkx;->k:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    iget v1, p0, Lkx;->l:I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x12

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_34
    mul-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v0}, Lkx;->b(I)I

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method
