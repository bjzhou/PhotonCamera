.class final Loar;
.super Loaq;
.source "PG"


# instance fields
.field private final a:Loas;

.field private final n:Landroid/view/animation/Interpolator;

.field private final o:Lrsk;

.field private final p:Lrtm;


# direct methods
.method public constructor <init>(Landroid/content/Context;FFLrsk;Lrtm;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    new-instance p2, Loas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, p1}, Loas;-><init>(F)V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iput-object p1, p0, Loar;->n:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p4, p0, Loar;->o:Lrsk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Loar;->p:Lrtm;

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

    nop

    :goto_5
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2}, Loaq;-><init>(Landroid/content/Context;F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr p1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const/high16 p1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Loar;->a:Loas;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m()Landroid/graphics/PointF;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lkx;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Landroid/graphics/PointF;->x:F

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

    :goto_b
    iget v0, p0, Lkx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-static {v0}, Loar;->o(Landroid/graphics/PointF;)V

    goto/32 :goto_19

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    cmpl-float v1, v1, v2

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

    :goto_11
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget v1, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Loar;->k:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Loar;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Loar;->k:Landroid/graphics/PointF;

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop
.end method


# virtual methods
.method protected final c(Landroid/view/View;Lkv;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    aget v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Loar;->o:Lrsk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p1}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, v0, Landroid/graphics/PointF;->x:F

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

    :goto_8
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, [I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v0, p1, v1, p0}, Lkv;->b(IIILandroid/view/animation/Interpolator;)V

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    aget p1, p1, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object p0, p0, Loar;->n:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

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

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Loar;->a74c8a79bf0ef0e20983317119c87838m()Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1}, Lkx;->j(I)I

    move-result v1

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

    nop

    :goto_1d
    add-int v0, v0, v1

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

    nop

    :goto_1e
    if-gtz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

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

.method protected final j(I)I
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Loas;->b:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v1, v0

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

    :goto_4
    float-to-double v3, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/high16 v0, -0x40800000    # -1.0f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    mul-double/2addr v5, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

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

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    double-to-float p0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    add-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr p1, p0

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

    :goto_13
    const v0, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Loas;->a:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v5, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_19
    const v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    iget-object p0, p0, Loar;->a:Loas;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    float-to-int p0, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method protected final m(Lkv;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Loar;->m:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    iget v1, p0, Loar;->m:I

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

    :goto_4
    iget v0, p0, Lkx;->b:I

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Loar;->p:Lrtm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p1, Lkv;->a:I

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

    nop

    :goto_d
    iget v0, p0, Loar;->l:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lkx;->f()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Loar;->a74c8a79bf0ef0e20983317119c87838m()Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1, v2, v0, p0}, Lkv;->b(IIILandroid/view/animation/Interpolator;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

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

    :goto_16
    invoke-virtual {p0, v0}, Lkx;->b(I)I

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0x2710

    nop

    nop

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_1a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

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

    nop

    :goto_1c
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, v0, Landroid/graphics/PointF;->x:F

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

    nop

    :goto_22
    iput v2, p0, Loar;->l:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Loar;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    float-to-int v0, v1

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

    :goto_25
    iget-object p0, p0, Loar;->a:Loas;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, p0, Loar;->m:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, p0, Loar;->l:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop
.end method
